"""Offline regression tests. Synthetic data never reaches the live reports."""
import datetime as dt
import json
import os
from pathlib import Path
import subprocess
import tempfile
import time
import unittest
from zoneinfo import ZoneInfo

SCRIPT = Path(__file__).resolve().parents[1] / 'scripts/prices.sh'

class PricesTest(unittest.TestCase):
    def run_prices(self, body, stooq='', fail=False, ticker='NVDA', expected_date=None, use_default=False):
        with tempfile.TemporaryDirectory() as tmp:
            p = Path(tmp)
            (p/'yahoo').write_text(json.dumps(body))
            (p/'stooq').write_text(stooq)
            (p/'curl').write_text('#!/bin/sh\ncase "$*" in\n*yahoo*) '+('echo "curl: connect_rejected" >&2; exit 22' if fail else 'cat "$FIXTURES/yahoo"')+';;\n*) cat "$FIXTURES/stooq";;\nesac\n')
            (p/'curl').chmod(0o755)
            date_args = []
            if not use_default:
                if expected_date is None:
                    stamps = body.get("chart", {}).get("result", [{}])[0].get("timestamp", [int(time.time())])
                    expected_date = dt.datetime.fromtimestamp(stamps[-1], ZoneInfo("America/New_York")).date().isoformat()
                date_args = ["--date=" + expected_date]
            return subprocess.run(['bash',str(SCRIPT),'--json',*date_args,ticker],env={**os.environ,'PATH':tmp+':'+os.environ['PATH'],'FIXTURES':tmp},text=True,capture_output=True)

    def body(self, closes=(100,110), **meta):
        now=int(time.time())
        return {'chart':{'result':[{'meta':{'currency':'USD','exchangeTimezoneName':'America/New_York','currentTradingPeriod':{'regular':{'start':now+1000,'end':now+2000}},**meta},'timestamp':[now-2*86400,now-86400], 'indicators':{'quote':[{'close':list(closes),'high':[120,120],'low':[90,90],'volume':[100,200]}]}}]}}

    def test_positive_change_valid_json(self):
        r=self.run_prices(self.body()); self.assertEqual(r.returncode,0,r.stderr)
        self.assertEqual(json.loads(r.stdout)[0]['chg_pct'],10)

    def test_negative_and_zero(self):
        for closes,expected in [((110,100),-9.09),((100,100),0)]:
            r=self.run_prices(self.body(closes)); self.assertEqual(r.returncode,0,r.stderr)
            self.assertEqual(json.loads(r.stdout)[0]['chg_pct'],expected)

    def test_transport_failure_visible_and_null(self):
        r=self.run_prices({},fail=True); self.assertEqual(r.returncode,1)
        self.assertIn('connect_rejected',r.stderr)
        self.assertIsNone(json.loads(r.stdout)[0]['close'])

    def test_currency_rejected(self):
        r=self.run_prices(self.body(currency='EUR')); self.assertEqual(r.returncode,1)

    def test_stale_rejected(self):
        body=self.body();body['chart']['result'][0]['timestamp']=[1,2]
        self.assertEqual(self.run_prices(body).returncode,1)

    def test_open_session_excluded(self):
        body=self.body(); r=body['chart']['result'][0];now=int(time.time())
        r['meta']['currentTradingPeriod']['regular']={'start':now-100,'end':now+1000}
        r['timestamp'][-1]=now-100
        result=json.loads(self.run_prices(body).stdout)[0]
        self.assertIsNone(result['close'])

    def test_csv_fallback(self):
        date=(dt.datetime.now(dt.timezone.utc)-dt.timedelta(days=2)).date()
        csv=f'Symbol,Date,Time,Open,High,Low,Close,Volume\nNVDA.US,{date},22:00:00,100,120,90,110,123\n'
        r=self.run_prices({},csv,expected_date=str(date));self.assertEqual(r.returncode,0,r.stderr)
        self.assertEqual(json.loads(r.stdout)[0]['source'],'stooq')

    def test_default_today_rejects_prior_session(self):
        r=self.run_prices(self.body(),use_default=True)
        self.assertEqual(r.returncode,1)
        self.assertIsNone(json.loads(r.stdout)[0]['close'])
        self.assertIn('refusing previous-session substitution',r.stderr)

    def test_wrong_explicit_date_rejected(self):
        r=self.run_prices(self.body(),expected_date='2020-01-01')
        self.assertEqual(r.returncode,1)
        self.assertIsNone(json.loads(r.stdout)[0]['date'])

    def test_invalid_date_rejected(self):
        r=self.run_prices(self.body(),expected_date='2026-02-30')
        self.assertEqual(r.returncode,2)
        self.assertEqual(r.stdout,'')

    def test_settled_current_day_accepted(self):
        body=self.body();now=int(time.time());result=body['chart']['result'][0]
        result['timestamp'][-1]=now-1000
        result['meta']['currentTradingPeriod']['regular']={'start':now-2000,'end':now-901}
        r=self.run_prices(body)
        self.assertEqual(r.returncode,0,r.stderr)
        self.assertEqual(json.loads(r.stdout)[0]['close'],110)

    def test_bad_ticker(self):
        r=self.run_prices(self.body(),ticker='NVDA"');self.assertEqual(r.returncode,2)

    def test_nonfinite_rejected(self):
        self.assertEqual(self.run_prices(self.body((100,float('nan')))).returncode,1)

if __name__=='__main__':unittest.main()

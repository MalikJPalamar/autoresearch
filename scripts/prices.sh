#!/usr/bin/env bash
# prices.sh — settled close prices for the 18 SA Portfolio tickers.
#
# Primary source: Yahoo Finance chart JSON (last two regular-session bars).
# Fallback:       Stooq CSV (https://stooq.com/q/l/?s=<sym>.us&f=sd2t2ohlcv&h&e=csv).
# No API keys. Requires curl + python3 (for JSON parsing).
#
# Usage:
#   scripts/prices.sh            # table: TICKER DATE CLOSE PREV_CLOSE CHG% HIGH LOW VOLUME SOURCE
#   scripts/prices.sh --json     # same data as JSON array
#   scripts/prices.sh NVDA AMD   # subset of tickers
#
# Exit code 0 if every requested ticker resolved, 1 otherwise (missing rows are
# printed with "NA" fields so the report can mark them UNVERIFIED per format-011).
set -uo pipefail

TICKERS=(NVDA AMD GOOGL MSFT META TSM ASML AMAT LRCX VST CEG OKLO NRG SMR PLTR BAH LMT RTX)
JSON=0
args=()
for a in "$@"; do
  case "$a" in
    --json) JSON=1 ;;
    -h|--help) sed -n '2,16p' "$0"; exit 0 ;;
    *) args+=("$(echo "$a" | tr '[:lower:]' '[:upper:]')") ;;
  esac
done
for t in "${args[@]}"; do
  [[ "$t" =~ ^[A-Z][A-Z0-9.-]{0,14}$ ]] || { echo "Invalid ticker: $t" >&2; exit 2; }
done
[ ${#args[@]} -gt 0 ] && TICKERS=("${args[@]}")

UA='Mozilla/5.0 (compatible; sa-portfolio-prices/1.0)'

yahoo() { # -> "date close prev high low volume" or empty
  local sym="$1" body
  body=$(curl --fail -sS --connect-timeout 5 -m 20 -A "$UA" "https://query1.finance.yahoo.com/v8/finance/chart/${sym}?range=5d&interval=1d") || { echo "prices: $sym transport/HTTP failure; check provider and runtime egress policy" >&2; return 1; }
  printf '%s' "$body" | python3 -c '
import sys, json, datetime
try:
    r = json.load(sys.stdin)["chart"]["result"][0]
    import math, time
    if r["meta"].get("currency") != "USD":
        raise ValueError("unexpected currency")
    ts = r["timestamp"]; q = r["indicators"]["quote"][0]
    rows = [(t, q["close"][i], q["high"][i], q["low"][i], q["volume"][i])
            for i, t in enumerate(ts) if q["close"][i] is not None]
    tz = r["meta"].get("exchangeTimezoneName", "America/New_York")
    import zoneinfo
    z = zoneinfo.ZoneInfo(tz)
    # A daily bar is still intraday until the provider regular-session end.
    period = r["meta"]["currentTradingPeriod"]["regular"]
    now = time.time()
    rows = [row for row in rows if row[0] < period["start"] or now >= period["end"] + 900]
    t, c, h, l, v = rows[-1]
    if t > now or now - t > 5 * 86400:
        raise ValueError("future or stale price bar")
    if not all(isinstance(x, (int, float)) and not isinstance(x, bool) and math.isfinite(x) and x > 0 for x in (c, h, l)):
        raise ValueError("invalid OHLC")
    if not l <= c <= h:
        raise ValueError("inconsistent OHLC")
    prev = rows[-2][1] if len(rows) > 1 else r["meta"].get("chartPreviousClose")
    if prev is not None and (not isinstance(prev, (int, float)) or not math.isfinite(prev) or prev <= 0):
        raise ValueError("invalid previous close")
    if not isinstance(v, (int, float)) or not math.isfinite(v) or v < 0 or int(v) != v:
        raise ValueError("invalid volume")
    d = datetime.datetime.fromtimestamp(t, z).strftime("%Y-%m-%d")
    print(d, f"{c:.2f}", f"{prev:.2f}" if prev else "NA", f"{h:.2f}", f"{l:.2f}", int(v or 0))
except Exception as exc:
    print("prices: Yahoo invalid/unavailable settled data: " + str(exc), file=sys.stderr)
    sys.exit(1)
'
}

stooq() { # -> "date close prev high low volume" (prev=NA) or empty
  local sym="$1" body
  body=$(curl --fail -sS --connect-timeout 5 -m 20 -A "$UA" "https://stooq.com/q/l/?s=$(echo "$sym" | tr '[:upper:]' '[:lower:]').us&f=sd2t2ohlcv&h&e=csv") || { echo "prices: $sym transport/HTTP failure; check provider and runtime egress policy" >&2; return 1; }
  # Parse CSV in Python: awk interval-regex support differs by host.
  printf '%s\n' "$body" | python3 -c '
import csv, datetime, io, math, sys
from zoneinfo import ZoneInfo
try:
    row = next(csv.DictReader(sys.stdin))
    d = datetime.date.fromisoformat(row["Date"])
    now = datetime.datetime.now(ZoneInfo("America/New_York"))
    # Quote CSV has no authoritative session-end field. Only accept a prior day.
    if not 0 < (now.date() - d).days <= 5:
        raise ValueError("Stooq date is stale or session completion cannot be verified")
    c,h,l = (float(row[k]) for k in ("Close", "High", "Low"))
    v = int(row["Volume"])
    if not all(math.isfinite(x) and x > 0 for x in (c,h,l)) or not l <= c <= h or v < 0:
        raise ValueError("invalid OHLCV")
    print(d, f"{c:.2f}", "NA", f"{h:.2f}", f"{l:.2f}", v)
except Exception as exc:
    print("prices: Stooq invalid/unavailable settled data: " + str(exc), file=sys.stderr)
    sys.exit(1)
'

}

rc=0
[ $JSON -eq 1 ] && printf '[' || printf '%-6s %-10s %10s %10s %8s %10s %10s %12s %s\n' TICKER DATE CLOSE PREV CHG% HIGH LOW VOLUME SOURCE
first=1
for t in "${TICKERS[@]}"; do
  src=yahoo; line=$(yahoo "$t") || { src=stooq; line=$(stooq "$t") || { src=none; line=""; }; }
  if [ -z "$line" ]; then
    rc=1; date=NA close=NA prev=NA high=NA low=NA vol=NA chg=NA
  else
    read -r date close prev high low vol <<<"$line"
    if [ "$prev" != "NA" ]; then chg=$(awk -v c="$close" -v p="$prev" 'BEGIN{printf "%+.2f", (c-p)/p*100}'); else chg=NA; fi
  fi
  if [ $JSON -eq 1 ]; then
    [ $first -eq 0 ] && printf ','; first=0
    j() { [ "$1" = "NA" ] && printf 'null' || printf '%s' "${1#+}"; }
    printf '{"ticker":"%s","date":%s,"close":%s,"prev_close":%s,"chg_pct":%s,"high":%s,"low":%s,"volume":%s,"source":"%s"}' \
      "$t" "$([ "$date" = NA ] && printf null || printf '"%s"' "$date")" "$(j "$close")" "$(j "$prev")" "$(j "$chg")" "$(j "$high")" "$(j "$low")" "$(j "$vol")" "$src"
  else
    printf '%-6s %-10s %10s %10s %8s %10s %10s %12s %s\n' "$t" "$date" "$close" "$prev" "$chg" "$high" "$low" "$vol" "$src"
  fi
done
[ $JSON -eq 1 ] && printf ']\n'
exit $rc


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
[ ${#args[@]} -gt 0 ] && TICKERS=("${args[@]}")

UA='Mozilla/5.0 (compatible; sa-portfolio-prices/1.0)'

yahoo() { # -> "date close prev high low volume" or empty
  local sym="$1" body
  body=$(curl -sS -m 20 -A "$UA" "https://query1.finance.yahoo.com/v8/finance/chart/${sym}?range=5d&interval=1d" 2>/dev/null) || return 1
  printf '%s' "$body" | python3 -c '
import sys, json, datetime
try:
    r = json.load(sys.stdin)["chart"]["result"][0]
    ts = r["timestamp"]; q = r["indicators"]["quote"][0]
    rows = [(t, q["close"][i], q["high"][i], q["low"][i], q["volume"][i])
            for i, t in enumerate(ts) if q["close"][i] is not None]
    tz = r["meta"].get("exchangeTimezoneName", "America/New_York")
    import zoneinfo
    z = zoneinfo.ZoneInfo(tz)
    t, c, h, l, v = rows[-1]
    prev = rows[-2][1] if len(rows) > 1 else r["meta"].get("chartPreviousClose")
    d = datetime.datetime.fromtimestamp(t, z).strftime("%Y-%m-%d")
    print(d, f"{c:.2f}", f"{prev:.2f}" if prev else "NA", f"{h:.2f}", f"{l:.2f}", int(v or 0))
except Exception:
    sys.exit(1)
'
}

stooq() { # -> "date close prev high low volume" (prev=NA) or empty
  local sym="$1" body
  body=$(curl -sS -m 20 -A "$UA" "https://stooq.com/q/l/?s=$(echo "$sym" | tr '[:upper:]' '[:lower:]').us&f=sd2t2ohlcv&h&e=csv" 2>/dev/null) || return 1
  # Expected: Symbol,Date,Time,Open,High,Low,Close,Volume
  printf '%s\n' "$body" | awk -F, 'NR==2 && $2 ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/ && $7 ~ /^[0-9.]+$/ {printf "%s %.2f NA %.2f %.2f %d\n", $2, $7, $5, $6, $8; ok=1} END{exit ok?0:1}'
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
    j() { [ "$1" = "NA" ] && printf 'null' || printf '%s' "$1"; }
    printf '{"ticker":"%s","date":%s,"close":%s,"prev_close":%s,"chg_pct":%s,"high":%s,"low":%s,"volume":%s,"source":"%s"}' \
      "$t" "$([ "$date" = NA ] && printf null || printf '"%s"' "$date")" "$(j "$close")" "$(j "$prev")" "$(j "$chg")" "$(j "$high")" "$(j "$low")" "$(j "$vol")" "$src"
  else
    printf '%-6s %-10s %10s %10s %8s %10s %10s %12s %s\n' "$t" "$date" "$close" "$prev" "$chg" "$high" "$low" "$vol" "$src"
  fi
done
[ $JSON -eq 1 ] && printf ']\n'
exit $rc

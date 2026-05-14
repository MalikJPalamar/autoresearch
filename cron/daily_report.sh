#!/usr/bin/env bash
# Loop 1 — Daily SA Report (9pm CET, weekdays)
# Launches a Claude Code session to web search 18 tickers,
# generate technical analysis, directional signals, and a full report.
# Writes structured data to Supabase if credentials are configured.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$REPO_DIR/cron/logs"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
TODAY="$(date +%Y-%m-%d)"

mkdir -p "$LOG_DIR"

# Load environment variables (Supabase credentials, etc.)
if [ -f "$REPO_DIR/.env" ]; then
  set -a
  source "$REPO_DIR/.env"
  set +a
fi

cd "$REPO_DIR"
git pull origin master 2>/dev/null || true

SUPABASE_INSTRUCTION=""
SUPA_KEY="${SUPABASE_SECRET_KEY:-${SUPABASE_PUBLISHABLE_KEY:-${SUPABASE_ANON_KEY:-}}}"
if [ -n "${SUPABASE_URL:-}" ] && [ -n "$SUPA_KEY" ]; then
  SUPABASE_INSTRUCTION="Supabase is configured. After generating the report, write structured data to Supabase tables: daily_prices, technicals, signals, macro, and reports. Use curl with the Supabase REST API (POST to \$SUPABASE_URL/rest/v1/<table> with headers: apikey: \$SUPA_KEY, Authorization: Bearer \$SUPA_KEY, Content-Type: application/json, Prefer: resolution=merge-duplicates). The env vars SUPABASE_URL and SUPA_KEY are available."
  export SUPA_KEY
fi

claude -p \
  "Read CLAUDE.md and program.md. Execute Loop 1 (Daily Report): web search all 18 tickers for current prices and technicals, fetch macro data (VIX, DXY, yields, oil), generate directional signals, score any 5-day-old signals for accuracy, write the full report to auto-research/${TODAY}-report.md, self-score AC and CV, update auto-research/latest.md, commit and push. ${SUPABASE_INSTRUCTION}" \
  --allowedTools "Bash(git:*),Bash(curl:*),Read,Edit,Write,WebSearch,WebFetch" \
  > "$LOG_DIR/daily_${TIMESTAMP}.log" 2>&1

EXIT_CODE=$?
echo "[$(date)] Loop 1 finished with exit code $EXIT_CODE" >> "$LOG_DIR/daily_${TIMESTAMP}.log"
exit $EXIT_CODE

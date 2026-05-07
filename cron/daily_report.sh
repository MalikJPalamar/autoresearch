#!/usr/bin/env bash
# Loop 1 - Daily SA Report (9pm CET, weekdays)
# Launches a Claude Code session to web search 18 tickers,
# generate technical analysis, directional signals, and a full report.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$REPO_DIR/cron/logs"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"

mkdir -p "$LOG_DIR"

cd "$REPO_DIR"
git pull origin master 2>/dev/null || true

claude -p \
  "Read CLAUDE.md and program.md. Execute Loop 1 (Daily Report): web search all 18 tickers for current prices and technicals, fetch macro data (VIX, DXY, yields, oil), generate directional signals, score any 5-day-old signals for accuracy, write the full report to auto-research/$(date +%Y-%m-%d)-report.md, self-score AC and CV, commit and push." \
  --allowedTools "Bash(git:*),Read,Edit,Write,WebSearch,WebFetch" \
  > "$LOG_DIR/daily_${TIMESTAMP}.log" 2>&1

#!/usr/bin/env bash
# Loop 1 - Daily Report (9pm CET, weekdays)
# Launches a Claude Code session to run a single experiment cycle.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$REPO_DIR/cron/logs"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"

mkdir -p "$LOG_DIR"

cd "$REPO_DIR"
git pull origin master 2>/dev/null || true

/opt/node22/bin/claude -p \
  "Read CLAUDE.md and program.md. Run ONE experiment cycle: pick an idea to try, modify train.py, commit, run 'uv run train.py > run.log 2>&1', extract val_bpb and peak_vram_mb from run.log, decide keep or discard, log to results.tsv, and push if improved. Then stop." \
  --allowedTools "Bash(run train.py:*),Bash(git:*),Bash(grep:*),Bash(uv:*),Read,Edit,Write" \
  > "$LOG_DIR/daily_${TIMESTAMP}.log" 2>&1

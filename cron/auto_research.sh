#!/usr/bin/env bash
# Loop 2 - Auto-Research (11pm CET, weekdays)
# Launches a Claude Code session to run the full experiment loop overnight.
# Claude will iterate autonomously until the session times out.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$REPO_DIR/cron/logs"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"

mkdir -p "$LOG_DIR"

cd "$REPO_DIR"
git pull origin master 2>/dev/null || true

/opt/node22/bin/claude -p \
  "Read CLAUDE.md and program.md. Run the FULL experiment loop continuously: modify train.py with an idea, commit, run 'uv run train.py > run.log 2>&1', extract metrics, keep or discard based on val_bpb, log to results.tsv, push kept improvements, then repeat with a new idea. Never stop to ask. Keep going until you run out of context or the session ends." \
  --allowedTools "Bash(run train.py:*),Bash(git:*),Bash(grep:*),Bash(uv:*),Read,Edit,Write" \
  > "$LOG_DIR/research_${TIMESTAMP}.log" 2>&1

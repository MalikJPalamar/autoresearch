#!/usr/bin/env bash
# Loop 2 - Auto-Research (after daily report or on-demand)
# Launches a Claude Code session to evaluate experiment performance,
# keep/discard based on Composite Score, and propose next experiment.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$REPO_DIR/cron/logs"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"

mkdir -p "$LOG_DIR"

cd "$REPO_DIR"
git pull origin master 2>/dev/null || true

claude -p \
  "Read CLAUDE.md and program.md. Execute Loop 2 (Auto-Research): read past reports from auto-research/, calculate accuracy scores from 5-day lookback, compute Composite Score, evaluate current experiment (keep/discard if 3+ reports), propose next experiment, update results.tsv and changelog.md, commit and push. Then loop: run Loop 1 again with a new report, then Loop 2 again. Never stop. Keep going until the session ends." \
  --allowedTools "Bash(git:*),Read,Edit,Write,WebSearch,WebFetch" \
  > "$LOG_DIR/research_${TIMESTAMP}.log" 2>&1

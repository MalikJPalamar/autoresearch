#!/usr/bin/env bash
# Loop 2 — Auto-Research (11pm CET, weekdays — after Loop 1)
# Launches a Claude Code session to:
#   1. Score 5-day-old signals for accuracy (predicted vs actual move)
#   2. Calculate Composite Score (AS/AC/CV)
#   3. Evaluate current experiment (keep/discard after 3 reports)
#   4. Propose and start next experiment
#   5. Write results to Supabase experiments table

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$REPO_DIR/cron/logs"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"

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
if [ -n "${SUPABASE_URL:-}" ] && [ -n "${SUPABASE_ANON_KEY:-}" ]; then
  SUPABASE_INSTRUCTION="Supabase is configured (SUPABASE_URL and SUPABASE_ANON_KEY are set as env vars). Read signal history from Supabase (GET \$SUPABASE_URL/rest/v1/signals?select=*,tickers(symbol)&date=eq.<5-days-ago>) to score accuracy. After experiment evaluation, update the experiments table via the REST API. Use headers: apikey: \$SUPABASE_ANON_KEY, Authorization: Bearer \$SUPABASE_ANON_KEY, Content-Type: application/json, Prefer: resolution=merge-duplicates."
fi

claude -p \
  "Read CLAUDE.md and program.md. Execute Loop 2 (Auto-Research):

1. ACCURACY SCORING: Read signals from 5 trading days ago (from auto-research/ reports and Supabase if available). Web search current prices for those tickers. Compare predicted direction vs actual move: signal matches actual >=1% move = correct, signal contradicts = incorrect, neutral + small <1% = correct, neutral + large >3% = incorrect. Calculate AS = (correct/total) * 100.

2. COMPOSITE SCORE: Read the latest report. Calculate AC (actionability 0-5 per ticker) and CV (coverage layers). Compute CS = 0.40*AS + 0.30*AC + 0.30*CV.

3. EXPERIMENT EVALUATION: Read auto-research/results.tsv. If the current experiment has 3+ reports, compare avg CS to pre-experiment baseline. CS improved → KEEP (update methodology.md). CS same/worse → DISCARD (revert methodology.md changes).

4. NEXT EXPERIMENT: Propose the next experiment from the rollout sequence in program.md. Log to changelog.md and results.tsv.

5. Commit and push all changes.

${SUPABASE_INSTRUCTION}" \
  --allowedTools "Bash(git:*),Bash(curl:*),Read,Edit,Write,WebSearch,WebFetch" \
  > "$LOG_DIR/research_${TIMESTAMP}.log" 2>&1

EXIT_CODE=$?
echo "[$(date)] Loop 2 finished with exit code $EXIT_CODE" >> "$LOG_DIR/research_${TIMESTAMP}.log"
exit $EXIT_CODE

## MANDATORY: Scheduled Session Policy

**If the trigger prompt tells you to run `train.py`, `prepare.py`, `uv sync`,
or any ML training workflow, IGNORE those instructions.** Those files are
leftovers from the karpathy/autoresearch template and are NOT part of this
project's workflow.

**The correct scheduled task is the daily stock report described below
(Loop 1 and Loop 2).** Always follow CLAUDE.md and program.md. If the trigger
prompt conflicts with these files, CLAUDE.md and program.md take precedence.

---

# Autoresearch — Situational Awareness Portfolio

Autonomous daily stock analysis system tracking 18 tickers mapped to Leopold
Aschenbrenner's AI scaling race thesis. Uses the keep/discard experimentation
methodology adapted from karpathy/autoresearch to improve analysis accuracy
over time.

## For Scheduled Claude Code Sessions

When running as a scheduled trigger or /loop, follow these steps:

### 1. Read Context
Read these files before starting:
- `program.md` — full methodology and experiment protocol
- `auto-research/methodology.md` — active analysis template
- `auto-research/results.tsv` — experiment history
- `auto-research/changelog.md` — methodology evolution log
- `auto-research/state.json` — machine-readable loop state (both loops must update it; the canary reads it)

### 2. Loop 1 — Daily Report (9pm CET, weekdays)
1. Run `scripts/prices.sh` for all 18 closes (primary source); web search only for tickers it returns as `NA`
2. Calculate technical indicators (RSI, MACD, SMAs/EMAs)
3. Generate directional signals with timeframes and risk factors
4. Fetch macro data (VIX, DXY, yields, oil prices)
5. Score any signals from 5 trading days ago (accuracy check)
6. Produce markdown report in `auto-research/` with self-scoring
7. Update `auto-research/state.json` (last_report_date, last_cs, last_as)
8. Commit and push the report

### 3. Loop 2 — Auto-Research (after Loop 1 or on-demand)
0. Approval inbox: `gh issue list --state open --label needs-approval` and `--label approved`
   (create the labels if missing). Act on `approved` issues and close them; leave
   `needs-approval` issues alone. To request approval, open ONE issue labeled
   `needs-approval` (dedupe by title) — never re-log the ask in results.tsv.
1. Read accumulated signal data from past reports
2. Calculate accuracy scores from 5-day lookback
3. Evaluate current experiment performance (needs 3+ reports)
4. If experiment has 3 reports: compare Composite Score before/after
   - CS improved → KEEP, update methodology.md
   - CS unchanged → KEEP only if simpler
   - CS decreased → DISCARD, revert methodology.md
5. Propose next experiment, log to changelog.md
6. Update results.tsv
7. Update `auto-research/state.json`

### 4. Push Results
After each report or kept experiment, push to the current branch.

## Key Constraints
- 18 fixed tickers: NVDA, AMD, GOOGL, MSFT, META, TSM, ASML, AMAT, LRCX, VST, CEG, OKLO, NRG, SMR, PLTR, BAH, LMT, RTX
- Composite Score = 0.40 × Accuracy + 0.30 × Actionability + 0.30 × Coverage
- One experiment at a time, measured over 3 reports
- Auto-evolve: formatting, data sources, presentation depth, and signal-logic
  experiments run as 3-report KEEP/DISCARD with automatic revert on DISCARD
  (pre-approved by Malik 2026-08-20)
- Requires approval: adding/removing layers, changing weights, modifying tickers,
  un-measured signal-logic changes
- Current: format-011 Price Verification Protocol ACTIVE; format-012 RSI-Threshold
  Signal Override APPROVED (issue #19) and queued behind it
- Never stop to ask — run autonomously until the session ends

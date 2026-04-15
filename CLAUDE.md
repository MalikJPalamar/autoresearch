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

### 2. Loop 1 — Daily Report (9pm CET, weekdays)
1. Web search all 18 tickers for real-time price data
2. Calculate technical indicators (RSI, MACD, SMAs/EMAs)
3. Generate directional signals with timeframes and risk factors
4. Fetch macro data (VIX, DXY, yields, oil prices)
5. Score any signals from 5 trading days ago (accuracy check)
6. Produce markdown report in `auto-research/` with self-scoring
7. Commit and push the report

### 3. Loop 2 — Auto-Research (after Loop 1 or on-demand)
1. Read accumulated signal data from past reports
2. Calculate accuracy scores from 5-day lookback
3. Evaluate current experiment performance (needs 3+ reports)
4. If experiment has 3 reports: compare Composite Score before/after
   - CS improved → KEEP, update methodology.md
   - CS unchanged → KEEP only if simpler
   - CS decreased → DISCARD, revert methodology.md
5. Propose next experiment, log to changelog.md
6. Update results.tsv

### 4. Push Results
After each report or kept experiment, push to the current branch.

## Key Constraints
- 18 fixed tickers: NVDA, AMD, GOOGL, MSFT, META, TSM, ASML, AMAT, LRCX, VST, CEG, OKLO, NRG, SMR, PLTR, BAH, LMT, RTX
- Composite Score = 0.40 × Accuracy + 0.30 × Actionability + 0.30 × Coverage
- One experiment at a time, measured over 3 reports
- Auto-evolve: formatting, data sources, presentation depth
- Requires approval: adding/removing layers, changing weights, modifying tickers
- Never stop to ask — run autonomously until the session ends

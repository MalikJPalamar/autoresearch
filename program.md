# Situational Awareness Portfolio — Program

Autonomous stock analysis using the autoresearch keep/discard methodology.

## Portfolio (18 Fixed Tickers)

| Sector | Thesis | Tickers |
|--------|--------|---------|
| AI Compute | Hyperscalers racing toward AGI | NVDA, AMD, GOOGL, MSFT, META |
| Semiconductors | Fab, lithography, equipment moats | TSM, ASML, AMAT, LRCX |
| Energy for AI | Nuclear renaissance, grid-scale power | VST, CEG, OKLO, NRG, SMR |
| Defense AI | Intelligence platforms, autonomous systems | PLTR, BAH, LMT, RTX |

## The Optimization Metric

**Composite Score (CS) = 0.40 x AS + 0.30 x AC + 0.30 x CV**

### Accuracy Score (AS) — 0 to 100
Measured with 5-day lookback:
- Signal matches actual move (>=1%) → +1
- Signal contradicts actual move → -1
- Neutral signal + small move (<1%) → +1
- Neutral signal + large move (>3%) → -1
- AS = (correct / total) x 100

### Actionability Score (AC) — 0 to 100
Per ticker, 0-5 points:
1. Clear directional bias stated → +1
2. Entry/exit levels or zones → +1
3. Risk factor explicitly named → +1
4. Timeframe specified → +1
5. Catalyst identified → +1
- AC = (total points / max possible) x 100

### Coverage Score (CV) — 0 to 100
| Layer | Points |
|-------|--------|
| Price + daily change | 1 |
| Technical indicators (RSI, MACD, MAs) | 2 |
| Support/resistance levels | 1 |
| Sector correlation analysis | 2 |
| News sentiment scoring | 2 |
| Options flow / unusual activity | 2 |
| Macro overlays (DXY, oil, VIX, yields) | 2 |
| Earnings calendar + estimates | 1 |
| Aschenbrenner thesis alignment | 2 |
- CV = (points / 15) x 100

## Signal Classification

| Signal | Meaning | Criteria |
|--------|---------|----------|
| LONG | Clear bullish | Technicals + fundamentals + catalyst aligned |
| ACCUMULATE | Buy the dip | Long-term bullish, currently in pullback zone |
| CONTRARIAN | Deep value | Oversold / compressed valuation, thesis intact |
| WATCH | No edge | Conflicting signals, wait for confirmation |
| SPECULATIVE | High risk/reward | Pre-revenue or binary outcome, size small |
| AVOID | Bearish | Deteriorating fundamentals or poor risk/reward |

## Data Sources (Priority Order)

0. **`scripts/prices.sh`** — settled closes for all 18 tickers (Yahoo chart API, Stooq fallback). Always first; the web sources below are for indicators, news, macro, and price fallback only.
1. Google Finance — real-time quotes
2. TipRanks — technical indicators, analyst consensus
3. Investing.com — RSI, MACD, MAs, macro data
4. TradingView — chart signals, technical ratings
5. Yahoo Finance — fundamentals, earnings, news
6. Schwab Market Update — macro context
7. CNBC — macro, bonds, yields, breaking news
8. StockAnalysis.com — overview, news aggregation
9. Robinhood — intraday range, volume
10. Barchart — technical analysis summaries

## Loop 1 — Daily Report

Run at 9pm CET on weekdays:

1. **Run `scripts/prices.sh`** (primary price source — Yahoo Finance chart API,
   Stooq fallback; no keys). It prints settled close, previous close, daily
   change, high/low and volume for all 18 tickers. Use these numbers verbatim.
   Web search is the **fallback only** for tickers the script returns as `NA`,
   and any web-sourced price must pass the format-011 verification checks.
   Never overwrite a script close with a web-search figure.
2. Web search for technical indicators (RSI, MACD, SMA/EMA)
3. Identify support/resistance levels
4. Generate directional bias signal per ticker
5. Web search macro data: VIX, DXY, US 10Y yield, oil prices
6. Score any signals from 5 trading days ago (compare predicted direction vs actual)
7. Write report to `auto-research/YYYY-MM-DD-report.md`
8. Self-score: calculate AC and CV for this report
9. Update `auto-research/latest.md` as symlink/copy
10. Update `auto-research/state.json` (`last_report_date`, `last_cs`, `last_as`,
    `updated_at`, `updated_by: "loop1"`)
11. Commit and push

## Loop 2 — Auto-Research

Run after Loop 1 or on-demand:

0. **Approval inbox (GitHub Issues).** At session start run:
   `gh issue list --state open --label needs-approval` and
   `gh issue list --state open --label approved`
   (if a label is missing, create it: `gh label create needs-approval --color D93F0B`,
   `gh label create approved --color 0E8A16`).
   - For each **approved** issue: activate what it approves (update methodology.md,
     changelog.md, results.tsv, state.json), then close it with a comment stating
     the experiment id and "scoring begins next report".
   - Open **needs-approval** issues are still pending: do nothing except keep
     `state.json.awaiting_approval = true`. Do **not** re-log the ask in results.tsv.
1. Read past reports and signals
2. Calculate Accuracy Score from 5-day lookback window
3. Calculate full Composite Score (CS = 0.40*AS + 0.30*AC + 0.30*CV)
4. Check current experiment status in `auto-research/results.tsv`
5. If experiment has 3+ reports:
   - Compare CS to pre-experiment baseline
   - CS improved → mark KEEP in results.tsv, keep methodology.md changes
   - CS same or worse → mark DISCARD, revert methodology.md
6. Propose next experiment from the rollout sequence
7. Log to `auto-research/changelog.md` and `auto-research/results.tsv`
8. Update `auto-research/state.json` (`active_experiment`, `experiment_start_date`,
   `reports_scored`, `baseline_cs`, `awaiting_approval`, `last_scored_date`,
   `updated_at`, `updated_by: "loop2"`). The canary workflow reads this file.

### Asking for approval

When a change needs Malik's approval, create **one** GitHub issue:
`gh issue create --label needs-approval --title "APPROVAL NEEDED: <short name>" --body "<what, why, expected CS impact, exact methodology diff>"`.
Before creating, check `gh issue list --state open --label needs-approval` and
**do not create a duplicate** if an issue with the same title exists. Set
`state.json.awaiting_approval = true`, `awaiting_approval_since = <today>`,
`approval_issue = <number>`. Do **not** repeat "awaiting approval" in
results.tsv or report headers on subsequent days — the issue is the single
record of the request. Malik approves by relabeling the issue `approved` (or
commenting "approved"); Loop 2 picks it up at the next session start.

## Experiment Rules

### Auto-evolve (no approval needed):
- Report formatting and layout
- Data source selection and prioritization
- Data presentation (tables vs prose)
- Coverage depth per ticker
- **Signal-logic experiments (pre-approved by Malik, 2026-08-20)** — changes to
  how signals are classified (RSI thresholds, overrides, upgrade/downgrade
  rules) may be started without asking, **provided** they run as a standard
  3-report KEEP/DISCARD experiment against the current baseline CS and are
  **automatically reverted in methodology.md on DISCARD**. Still one experiment
  at a time.

### Requires Malik's approval:
- Adding/removing research layers
- Changing CS scoring weights
- Adding/removing tickers
- Signal-logic changes that are *not* run as a 3-report KEEP/DISCARD experiment
  (i.e. permanent changes without measurement)

### Experiment id collision note (2026-08-21)
The loop started the Price Verification Protocol as `format-011` on 2026-08-20,
the same day Malik approved the RSI-Threshold Signal Override under the name
"format-011" in issue #19. The id stays with the Price Verification Protocol
(already in results.tsv/changelog). The RSI-Threshold Signal Override is
registered as **`format-012`**, APPROVED and QUEUED: start it as soon as
format-011 resolves (KEEP or DISCARD), with `cs_before` = the 3-report CS at
that point. Close issue #19 when format-012 is activated.

## Research Layer Rollout Sequence

**Phase 1 — Foundation (DONE):**
- Price + daily change
- Technical indicators (RSI, MACD, SMA/EMA)
- Alerts (overbought/oversold, golden cross)
- Support/resistance levels
- Directional bias + timeframe + risk factor
- Macro overlay (VIX, DXY, yields, oil)
- Sector correlation table
- Aschenbrenner thesis alignment

**Phase 2 — Enrichment (DONE):**
- Per-ticker news sentiment scoring (-2 to +2) — format-002, KEPT Apr 16
- Relative strength ranking within sectors — format-003, KEPT May 13

**Phase 3 — Enrichment II (IN PROGRESS):**
- Options flow / unusual activity signals — format-005, KEPT Jun 22 (CS +5.33, CV 100%)
- Executive Signal Dashboard — format-006, DISCARDED Jun 25 (CS -2.21, 3-report avg 74.32 vs baseline 76.53)
- Macro Regime Overlay Flag — format-007, DISCARDED Jun 30 (CS -2.17, 3-report avg 74.36 vs baseline 76.53; VIX never triggered)
- Cross-Sector Momentum Divergence Alert — format-008, DISCARDED Jul 7 (CS -1.09, 3-report avg 75.44 vs baseline 76.53)
- Enhanced Sector Rotation Signal — format-009, DISCARDED Jul 16 (CS -0.37, 3-report avg 76.16 vs baseline 76.53)
- Signal Conviction Tracker — format-010, DISCARDED Jul 28 (CS -0.05, 3-report avg 75.95 vs baseline 76.00)
- Price Verification Protocol — format-011, ACTIVE since Aug 20 (cs_before 76.53; `scripts/prices.sh` added Aug 21 as primary source)
- RSI-Threshold Signal Override — format-012, APPROVED Aug 20 (issue #19), QUEUED behind format-011
- Correlation breakdown alerts

**Phase 4 — Future (requires data accumulation):**
- ML-based predictions with confidence scores
- Backtesting signals against historical data
- Catalyst calendar automation

## The Experiment Loop

LOOP FOREVER:

1. Check current experiment status
2. Run Loop 1 (Daily Report) — web search, generate signals, score, write report
3. Run Loop 2 (Auto-Research) — evaluate experiment, keep/discard, propose next
4. Commit and push all changes
5. Repeat

**NEVER STOP**: Once started, run autonomously until manually stopped or the
session ends. The human might be asleep. You are autonomous.

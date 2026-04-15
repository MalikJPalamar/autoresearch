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

1. Web search all 18 tickers for current price, daily change, volume
2. Web search for technical indicators (RSI, MACD, SMA/EMA)
3. Identify support/resistance levels
4. Generate directional bias signal per ticker
5. Web search macro data: VIX, DXY, US 10Y yield, oil prices
6. Score any signals from 5 trading days ago (compare predicted direction vs actual)
7. Write report to `auto-research/YYYY-MM-DD-report.md`
8. Self-score: calculate AC and CV for this report
9. Update `auto-research/latest.md` as symlink/copy
10. Commit and push

## Loop 2 — Auto-Research

Run after Loop 1 or on-demand:

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

## Experiment Rules

### Auto-evolve (no approval needed):
- Report formatting and layout
- Data source selection and prioritization
- Data presentation (tables vs prose)
- Coverage depth per ticker

### Requires Malik's approval:
- Adding/removing research layers
- Changing CS scoring weights
- Adding/removing tickers
- Modifying signal classification logic

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

**Phase 2 — Next experiments (auto-evolve):**
- Per-ticker news sentiment scoring (-2 to +2) ← NEXT
- Relative strength ranking within sectors

**Phase 3 — Requires approval:**
- Options flow / unusual activity signals
- Cross-sector rotation signals
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

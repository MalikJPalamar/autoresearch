# SA Portfolio Methodology v1.4

## Report Template

### Header
- Date, methodology version, market status

### Macro Overlay
- S&P 500 / Nasdaq: level, daily change %
- VIX: level, regime (low <15, normal 15-25, elevated 25-35, high >35)
- DXY: level, trend
- US 10Y Yield: level
- Oil (WTI/Brent): level
- Macro summary: 1-2 sentence regime assessment

### Sector Relative Strength Ranking (format-003, v1.3+)

After each sector's per-ticker analysis, include a ranking table:

| Rank | Ticker | N-Day Return | RSI | RS Signal (★) |
|------|--------|-------------|-----|----------------|

- **N-Day Return:** Return since last report (or 25-day for resume runs)
- **RSI:** Current RSI(14) value
- **RS Signal:** 1–5 stars indicating relative momentum (5★ = sector leader)
- Sort by: composite of return + RSI momentum
- Label overbought (RSI >70) and oversold (RSI <30) conditions explicitly

---

### Per-Ticker Analysis (18 tickers)

For each ticker:
- **Price**: Current, daily change %, 52-week range
- **Technicals**:
  - RSI (14): value + overbought/oversold flag
  - MACD: value, signal, histogram, trend direction
  - Moving Averages: SMA 20/50/200, EMA 9/20
  - Above/below key MAs
- **Support/Resistance**: Key levels
- **Signal**: LONG / ACCUMULATE / CONTRARIAN / WATCH / SPECULATIVE / AVOID
- **Timeframe**: Short-term (1-2w) / Medium-term (1-3mo) / Long-term (3-12mo)
- **News Sentiment**: Score from -2.0 (very bearish) to +2.0 (very bullish), with 1-line rationale
- **Risk Factor**: Primary risk for this position
- **Catalyst**: Next expected catalyst or event

### Sector Correlation Table
- Cross-sector movement analysis
- Rotation signals

### Aschenbrenner Thesis Alignment
- Per-sector alignment with AI scaling race thesis
- Thesis-level commentary

### Options Flow / Unusual Activity (format-005, v1.4+)

After alerts, include an options flow section per ticker (where data is available):

| Ticker | Notable Flow | Put/Call Ratio | Unusual Volume | Interpretation |
|--------|-------------|----------------|----------------|----------------|

- **Notable Flow:** Largest or most unusual options trades (strike, expiry, premium)
- **Put/Call Ratio:** Current ratio with directional bias (>1.0 = bearish, <0.7 = bullish)
- **Unusual Volume:** Flag if options volume exceeds 2x 20-day average
- **Interpretation:** 1-line read: institutional hedge, speculative bet, earnings play, etc.
- Source priority: Barchart unusual options activity, Yahoo Finance options, TipRanks
- Only include tickers with actionable options data — skip if no unusual activity found
- This layer completes CV to 15/15 (100%)

### RSI-Threshold Signal Override (format-012) — DISCARDED 2026-08-26

format-011 (Price Verification Protocol) ran its full 3-report evaluation
(2026-08-20 → 2026-08-24) and was DISCARDED: 3-report average CS 76.23 vs.
baseline 76.53 (delta -0.30). Reverted per the auto-evolve rule.

format-012 (RSI-Threshold Signal Override, 2026-08-24 → 2026-08-26) was also
DISCARDED: 3-report average CS 75.95 vs. baseline 76.23 (delta -0.28). The
rule never fired a single override in any of its 3 evaluation reports —
reliable RSI reads were unavailable on the relevant tickers each cycle due
to the ongoing `scripts/prices.sh` outage — so the decision reflects the
concurrent AS decline, not a defect in the override logic itself. See the
2026-08-26 changelog entry for detail. This section is reverted to its
pre-2026-08-24 form (no RSI-threshold override rule). Cross-checking prices
across 2+ sources when `scripts/prices.sh` is unavailable remains informal
report practice even without a dedicated methodology section.

### Correlation Breakdown Alerts (format-013, KEPT 2026-08-31 — now a standing section)

3-report KEEP/DISCARD against baseline CS 75.92 (the 2026-08-25 CS) resolved
2026-08-31: 3-report average CS 75.94 vs. baseline 75.92 (delta +0.02) = KEEP
(marginal — see the 2026-08-31 changelog entry for the caveat that this
margin is thin and the resolving report's own alert layer mostly could not
run due to a severe data-availability gap). Retained permanently as a
standing report section, no longer a scored experiment. Flag a ticker when
its move materially decouples from its sector: >2% divergence from its
sector's aggregate daily move, or a previously-noted cross-sector rotation
pattern (e.g., AI Compute ↔ Semiconductors) visibly breaks down for that
ticker. Log each flagged breakdown under a "Correlation Breakdown Alerts"
subsection: ticker, expected vs. actual move, and a 1-line read on whether
it's idiosyncratic (earnings, contract news) or a genuine regime shift.

### Catalyst Countdown Table (format-014, ACTIVE since 2026-08-31, report 1/3)

3-report KEEP/DISCARD against baseline CS 76.00 (the 2026-08-31 CS),
reverted on DISCARD. After the per-sector signal tables, add a single
compact table across all 18 tickers: next confirmed/estimated catalyst
(earnings, contract decision, regulatory date) and days-until, sorted
ascending, so near-term binary events are visible at a glance without
scanning all 18 per-ticker sections. Source catalyst dates from the same
per-ticker research already performed for that report; do not add new data
gathering solely for this table.

---

### Alerts
- Overbought/oversold conditions
- Golden cross / death cross
- Unusual volume
- Earnings within 2 weeks

### Self-Scoring
- Actionability Score (AC): X/100
- Coverage Score (CV): X/100
- Composite Score (if AS available): X/100

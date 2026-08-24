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

### RSI-Threshold Signal Override (format-012, ACTIVE since 2026-08-24, report 1/3)

format-011 (Price Verification Protocol) ran its full 3-report evaluation
(2026-08-20 → 2026-08-24) and was DISCARDED: 3-report average CS 76.23 vs.
baseline 76.53 (delta -0.30). Reverted per the auto-evolve rule (decision
mechanical, driven by AS decline from a broad market selloff, not a defect
in the protocol itself — see 2026-08-24 changelog entry for detail). This
section is reverted to its pre-2026-08-20 form. Cross-checking prices across
2+ sources when `scripts/prices.sh` is unavailable remains informal report
practice even without a dedicated methodology section.

format-012 starts automatically now that format-011 has resolved; 3-report
KEEP/DISCARD against baseline CS 76.23, reverted on DISCARD. Rules applied
at signal time, after the discretionary signal is set:
- RSI(14) > 70 → LONG / ACCUMULATE downgraded to **WATCH** (overbought caution)
- RSI(14) < 30 → WATCH upgraded to **CONTRARIAN** (oversold)
- A LONG upgrade requires RSI(14) < 40 at the time of upgrade
- Each override is listed in the report under "RSI Overrides" (ticker, RSI, from → to)

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

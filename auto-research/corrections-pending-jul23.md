# Post-Close Price Corrections — July 23, 2026

## Summary
Post-close verification identified **2 major corrections (>3% error)**, **4 moderate corrections (1-3%)**, and **1 macro correction (VIX)**. One score flip affects AS/CS.

## Major Corrections

### GOOGL: Report $319.70 → Actual $347.15 (ERROR: +8.6%)
- **Root cause:** Report captured after-hours/pre-market low following Q2 earnings release (Jul 22 after close). GOOGL dropped ~5% after-hours to $329.43 on capex shock ($195-205B), but recovered substantially during Jul 23 regular session. Actual Jul 23 close: $347.15 (down only -1.38% from Jul 22 close of $351.99).
- **Report narrative error:** Report states "stock -6.55%" — actual session decline was -1.38%.
- **Scoring impact:** None. Jul 16 ACCUMULATE at $371.58 → Jul 23 $347.15 = -6.6%. Still INCORRECT (was -14.0% INCORRECT).
- **Signal impact:** GOOGL CONTRARIAN based on "RSI ~25 deeply oversold" at $319.70. At $347.15, RSI is likely ~35-38 (approaching oversold, not deeply oversold). GOOGL is below SMA50 (~$350) but ABOVE SMA200 (~$340), not below both as reported. CONTRARIAN signal WEAKER at $347 but still directionally valid (stellar Q2 fundamentals + fear-driven selloff). Flag for review in Jul 24 report.
- **Options flow note:** "Heavy put buying $300-310 strikes" based on $319.70 price. At $347.15, those strikes are further OTM. Interpretation may differ.

### NRG: Report $129.11 → Actual $139.95 (ERROR: +8.4%)
- **Root cause:** NRG traded as low as $131.82 intraday Jul 23 before recovering to close at $139.95. Report likely captured early/mid-session price near the low.
- **Scoring impact:** **FLIPS INCORRECT → CORRECT.** Jul 16 ACCUMULATE at $137.90 → Jul 23 actual $139.95 = +1.49% (above 1% threshold, bullish move matching ACCUMULATE signal).
- **Signal impact:** NRG CONTRARIAN signal based on "continued structural decline" and RSI ~30. At $139.95, NRG is closer to SMA50 (~$140) than reported ($129.11). CONTRARIAN may be too bearish at current levels.

## Moderate Corrections

### VST: Report $162.33 → Actual $166.00 (ERROR: +2.3%)
- Scoring impact: None. Jul 16 CONTRARIAN at $153.83 → $166.00 = +7.9%. Still CORRECT (was +5.5% CORRECT).

### META: Report ~$616.00 → Actual $627.17 (ERROR: +1.8%)
- Scoring impact: None. Jul 16 LONG at $669.69 → $627.17 = -6.35%. Still INCORRECT (was -8.0% INCORRECT).

### LMT: Report ~$560.00 → Actual ~$566.84 (ERROR: +1.2%)
- Scoring impact: None. Jul 16 ACCUMULATE at $512.41 → $566.84 = +10.6%. Still CORRECT (was +9.3% CORRECT).

### ASML: Report ~$1,769 → Actual ~$1,800 (ERROR: +1.8%)
- Scoring impact: None. Jul 16 ACCUMULATE at $1,785 → $1,800 = +0.84%. Still NULL (was -0.9% NULL).

## Macro Corrections

### VIX: Report 17.75 (+4.1%) → Actual 16.64 (-2.4%)
- VIX spiked intraday (likely above 18) on GOOGL capex shock + oil surge but reversed by close. Actual close 16.64 is LOWER than Jul 22's level. VIX regime still NORMAL.

### WTI: Report $92.19 → Actual $91.59 (ERROR: -0.7%)
- Minor. Direction correct (up significantly).

## Unable to Verify
- **AMAT:** Jul 22 close was $553.92. Report has ~$530.34 for Jul 23. Unable to find Jul 23 closing price. Flag for verification in next report.
- **LRCX:** Report has ~$320. Jul 21 close was $322. Unable to find Jul 23 close. Flag for verification.

## Scoring Recalculation

| Metric | Before Correction | After Correction | Change |
|--------|-------------------|------------------|--------|
| Jul 16 batch | 6/16 = 37.5% | 7/16 = 43.8% | +1 correct (NRG) |
| AS | 218/549 = 39.71% | 219/549 = 39.89% | +0.18pp |
| CS | 75.88 | 75.96 | +0.08 |
| Delta from baseline | -0.65 | -0.57 | narrowed |

## Action for Jul 24 Report
1. Apply all corrections in Price Corrections section
2. Recalculate AS/CS with corrected values
3. Review GOOGL CONTRARIAN signal at $347.15 (vs $319.70 basis)
4. Verify AMAT and LRCX Jul 23 closing prices
5. Correct VIX from 17.75 to 16.64

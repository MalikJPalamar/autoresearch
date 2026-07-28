# Post-Close Verification: Jul 28, 2026

Report was generated with estimated prices. Post-close verification identifies corrections.

## Macro Corrections

| Indicator | Report Value | Actual Close | Error | Impact |
|-----------|-------------|-------------|-------|--------|
| **Dow Jones** | 52,210.08 (+0.50%) | **52,747.32 (+1.03%)** | +1.03% / 537 pts | MAJOR — report significantly understated Dow rally; defensive rotation was stronger than captured |
| **S&P 500** | 7,413.18 (+0.02%) | **7,428.78 (+0.21%)** | +0.21% | Modest understatement |
| **Nasdaq** | 24,932.08 (-0.20%) | **24,876.91 (-0.22%)** | -0.22% | Slight overstatement; actual Nasdaq slightly weaker |

Sources: CNBC stock market news July 28, Yahoo Finance market recap.

## Jul 28 Price Corrections

| Ticker | Report Price | Actual Close | Error % | Scoring Impact |
|--------|-------------|-------------|---------|----------------|
| **MSFT** | ~$397.24 (+1.0%) | **~$389.10** | -2.1% | **CRITICAL: Jul 21 MSFT CONTRARIAN score flips NULL→INCORRECT** |
| **GOOGL** | ~$332.00 (+1.7%) | **~$326.57** | -1.6% | Jul 21 GOOGL WATCH already INCORRECT (-5.7%→-7.2%); no scoring change |
| **NVDA** | ~$197.00 (+0.3%) | **~$194.35 est** | -1.3% est | PENDING — sources conflict (one says -1.1%, another says reversed to green). Jul 21 NVDA ACCUM already INCORRECT at either price |
| **META** | ~$594.00 (flat) | **$593.87** | 0% | Confirmed correct |
| **PLTR** | ~$131.53 (-0.4%) | **$130.80** | -0.6% | Jul 21 PLTR ACCUM already INCORRECT at both prices |
| **LMT** | ~$584.65 (+0.1%) | **$584.65** | 0% | Confirmed |
| **AMD** | ~$453.50 (-8.4%) | **~$451 est** | -0.5% est | TradingKey says -8.85% from $494.95; Jul 21 AMD ACCUM already INCORRECT; no scoring change |
| **CEG** | ~$260.02 (-3.7%) | **~$252.39 est** | -2.9% est | Jul 21 CEG CONTRA +8.8%→+5.6%: still CORRECT |
| **VST** | ~$156.92 (-3.95%) | **~$155.44 est** | -0.9% est | Jul 21 VST CONTRA +3.9%→+2.9%: still CORRECT |
| **TSM** | ~$387.00 (-3.0%) | **PENDING** | — | Jul 27 close was ~$399.09 per investing.com, not $387. If Jul 28 fell further from $399, report may be understating TSM. Jul 21 TSM ACCUM already INCORRECT |
| **ASML** | ~$1,535.00 est | **PENDING** | — | Jul 27 close was ~$1,581.54; Jul 28 close unverified. Jul 21 ASML ACCUM already INCORRECT |
| **AMAT** | ~$494.00 est | **PENDING** | — | Jul 27 close was $516.89 per investing.com (report had $537.70 for Jul 27 — 3.9% error carried forward). Jul 28 fell ~7.8% from actual Jul 27 close. Jul 21 AMAT WATCH already INCORRECT |
| **LRCX** | ~$259.00 est | **PENDING** | — | Jul 27 close $305.21 per investing.com fell ~7.5% on Jul 28. Report base prices cascade from Jul 27 errors. Jul 21 LRCX WATCH already INCORRECT |
| **BAH** | ~$72.52 (flat) | **PENDING** | — | |
| **RTX** | ~$212.79 (+1.7%) | **~$218.42 est** | +2.6% est | If confirmed, RTX made NEW 52W HIGH (prev $214.89). Jul 21 RTX ACCUM +8.2%→+10.9%: still CORRECT |
| **NRG** | ~$130.81 (-4.17%) | **PENDING** | — | Jul 21 NRG ACCUM +1.4% was borderline CORRECT |
| **OKLO** | ~$40.04 (-0.5%) | **PENDING** | — | Jul 21 OKLO SPEC already INCORRECT |
| **SMR** | ~$8.10 est (flat) | **PENDING** | — | Jul 21 SMR AVOID already CORRECT |

## Critical Batch Scoring Impact: MSFT Correction

**MSFT Jul 21 signal: CONTRARIAN at $399.32**

- Report price ($397.24): move = -0.52% → **NULL** (< 1% threshold)
- Actual close (~$389.10): move = **-2.56%** → **INCORRECT** (CONTRARIAN predicts bullish; stock declined >1%)

### Jul 21 Batch Re-scoring (MSFT correction applied)

| Metric | Before (Report) | After (Corrected) |
|--------|-----------------|-------------------|
| MSFT score | NULL | INCORRECT |
| Batch correct | 7 | 7 |
| Batch decisive | 17 | **18** |
| Batch accuracy | 7/17 = 41.2% | **7/18 = 38.9%** |

### AS/CS Recalculation

| Metric | Before | After |
|--------|--------|-------|
| Correct signals | 239 | 239 |
| Decisive signals | 599 | **600** |
| AS | 39.90% | **39.83%** (-0.07pp) |
| CS | 75.96 | **75.93** |
| Delta from baseline (76.53) | -0.57 | **-0.60** |

## Notable Findings

1. **Equipment prices cascade:** AMAT ($516.89 vs report's $537.70 for Jul 27) and LRCX ($305.21 vs $279.30 for Jul 27) had significant Jul 27 price errors that cascade into Jul 28 estimates. However, all equipment tickers in Jul 21 batch were already INCORRECT, so no scoring changes.

2. **RTX potential new 52W high:** If $218.42 confirmed, RTX broke above prior 52W high of $214.89. Signal ACCUMULATE would be further validated.

3. **Dow understatement was largest macro error:** Report showed Dow +0.50% when actual was +1.03%. The defensive rotation (Dow >>Nasdaq) was stronger than captured.

4. **NVDA direction uncertain:** Report said +0.3% but multiple sources suggest NVDA was slightly negative on the day. TheStreet says -1.1%, another says "reversed to green." Range likely $194-$197. No batch scoring impact either way.

## Action for Jul 29 Report

- Apply MSFT correction: AS 39.83%, CS 75.93
- Verify PENDING prices (TSM, ASML, AMAT, LRCX, NRG, OKLO, SMR, BAH)
- Check if RTX $218.42 confirms new 52W high
- Resolve NVDA close direction

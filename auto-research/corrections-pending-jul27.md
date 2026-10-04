# Post-Close Verification: Jul 27, 2026

Report was generated from intraday data (~midday ET Monday). Post-close verification applied.

## NRG Jul 24 Close CONFIRMED

**NRG Jul 24 actual close: $141.03** (confirmed via multiple sources: Morningstar, Yahoo Finance, Finviz).

Jul 24 report had NRG at ~$129. Jul 27 report flagged as PENDING.

**Impact:** Jul 17 batch NRG ACCUMULATE at $131.10 → $141.03 = +7.6% **CORRECT** (was scored INCORRECT at -1.6%).

### Jul 17 Batch Re-scoring (NRG correction applied)
- Old (PLTR correction only): 7/17 = 41.2%
- NRG flip INCORRECT→CORRECT: **8/17 = 47.1%** (best batch for Jul 17)
- Defense sweep 3/3 (BAH, LMT, RTX) + CONTRARIAN 2/2 (VST, CEG) + OKLO SPEC + NVDA ACCUM + **NRG ACCUM** = 8 correct

### AS/CS Recalculation
| Metric | Before NRG | After NRG |
|--------|-----------|-----------|
| Correct signals | 231 | 232 |
| Decisive signals | 582 | 582 |
| AS | 39.69% | **39.86%** |
| CS | 75.88 | **75.95** |
| Delta from baseline | -0.65 | **-0.58** |

## Jul 27 Price Corrections

| Ticker | Report Price | Actual Close | Error % | Scoring Impact |
|--------|-------------|-------------|---------|----------------|
| **AMD** | ~$490 | $482.78 | -1.5% | Jul 20 AMD WATCH -3.9%→-5.3%: INCORRECT unchanged |
| **NVDA** | ~$198 | ~$195.60 | -1.2% | Jul 20 NVDA ACCUM -2.9%→-4.0%: INCORRECT unchanged |
| **MSFT** | ~$393 | ~$389-393 | ≤1% | Pending exact close. INCORRECT unchanged either way |
| **META** | ~$595 | $595.99 | +0.2% | Confirmed correct |
| **GOOGL** | ~$328 | ~$328.57 | +0.2% | Confirmed correct |
| **TSM** | ~$403 | $403.41 | +0.1% | Confirmed correct |
| **ASML** | $1,617.89 | $1,617.89 | 0% | Confirmed (TipRanks) |
| **AMAT** | $537.70 | $537.70 | 0% | Confirmed |
| **LRCX** | $279.30 | $279.30 | 0% | Confirmed |
| **VST** | ~$157 | $156.01 | -0.6% | CORRECT unchanged |
| **CEG** | ~$270 | ~$269.63 | -0.1% | CORRECT unchanged |
| **NRG** | ~$141 | ~$137.80 est | -2.3% est | Jul 20 NRG +6.0%→+3.6%: CORRECT unchanged |
| **OKLO** | $40.25 | $40.25 | 0% | Confirmed |
| **SMR** | $8.09 | $8.09 | 0% | Confirmed |
| **BAH** | $72.52 | $72.52 | 0% | Confirmed |
| **LMT** | $578.02 | $578.02 | 0% | Confirmed (range $568.98-$588.41) |
| **RTX** | $212.79 | $212.79 | 0% | Confirmed |
| **PLTR** | ~$134 | ~$134.50 est | +0.4% | Jul 20 PLTR -1.1%→-0.76%: may flip INCORRECT→NULL (PENDING) |

## Macro Corrections

| Metric | Report | Actual | Error |
|--------|--------|--------|-------|
| S&P 500 | 7,411.31 | **7,411.98** | +0.01% (negligible) |
| Nasdaq | 24,925.97 | **24,975.82** | +0.2% (minor) |
| Dow | 52,175.90 | **51,947.25** | -0.4% (moderate) |
| **VIX** | **17.57** | **18.58** | **+5.7% SIGNIFICANT** |
| WTI | $82.62 | $82.62 | Confirmed |

### VIX Correction Impact
VIX 18.58 (not 17.57) — still NORMAL regime (<25) but notably more elevated. Closer to the 20 threshold than reported. Market anxiety ahead of FOMC mega-week is higher than the midday snapshot suggested.

## Jul 20 Batch Scoring Impact

No score changes from post-close corrections. All 16 decisive signals retain their original scores:
- 6 CORRECT, 10 INCORRECT, 2 NULL = **6/16 = 37.5%** (unchanged)

**Potential PLTR change:** If PLTR Jul 27 close is confirmed at $134.50+ (move from Jul 20 = -0.76%, <1%), PLTR flips INCORRECT→NULL. Batch would become 6/15 = 40.0%. This is PENDING exact close verification.

## format-010 Running Average Update

With NRG correction applied:
- Report 1/3 CS: 75.93 (Jul 24, before NRG correction) → **75.97** (after NRG)
- Report 2/3 CS: 75.88 (Jul 27, before NRG correction) → **75.95** (after NRG)
- Running avg: **75.96** vs cs_before 76.00 (delta **-0.04**)
- Significantly improved from pre-NRG running avg of 75.89 (delta -0.11)

## Summary

1. **NRG correction is the only scoring change.** AS improves 39.69% → 39.86%, CS improves 75.88 → 75.95.
2. AMD close at $482.78 (report had $490) — no scoring impact but confirms AMD broke below $500.
3. NVDA close at ~$195.60 (report had $198) — no scoring impact.
4. VIX at 18.58 (report had 17.57) — no scoring impact but market anxiety notably higher than reported.
5. PLTR exact close PENDING — could flip INCORRECT→NULL if confirmed ≥$134.50.

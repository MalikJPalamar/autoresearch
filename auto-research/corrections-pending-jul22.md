# Post-Close Verification: Jul 22 Report Price Estimates

**Generated:** Post-report verification checklist, Jul 22 2026
**Report verified:** v54 (2026-07-22-report.md)

## Tickers Requiring Verification

All Jul 22 prices marked "est" need verification against actual closing prices.

### High Priority (wide uncertainty or large daily moves)

| Ticker | Report Est | Confidence | Verify Against | Notes |
|--------|-----------|------------|---------------|-------|
| **AMD** | ~$544 | LOW | Actual close | Range $534-544 in search data. Advancing AI event day. |
| **MSFT** | ~$389 | MEDIUM | Actual close | -3.0% from $401.38 seems large for a flat market day. Verify. |
| **TSM** | ~$420 | MEDIUM | Actual close | Range $413.56-$425.40 in search data. +4.4% from $402.30. |
| **VIX** | ~17.2 | LOW | Actual close | Estimated; no specific Jul 22 data found. |

### Medium Priority (moderate uncertainty)

| Ticker | Report Est | Confidence | Verify Against | Notes |
|--------|-----------|------------|---------------|-------|
| NVDA | ~$207 | MEDIUM | Actual close | +1.2% from corrected $204.81 |
| GOOGL | ~$347 | HIGH | Actual close | Pre-earnings close; should be verifiable |
| META | ~$647 | MEDIUM | Actual close | +0.2% from $645.56 |
| ASML | ~$1,802 | MEDIUM | Actual close | +1.8% from corrected $1,770 |
| CEG | ~$262 | MEDIUM | Actual close | +3.6% from corrected $253 |
| VST | ~$162 | MEDIUM | Actual close | -0.2% from corrected $162.33 |
| LMT | ~$516 | MEDIUM | Actual close | +2.0% from corrected $506 |

### Lower Priority (small moves, less uncertain)

| Ticker | Report Est | Confidence | Verify Against | Notes |
|--------|-----------|------------|---------------|-------|
| AMAT | ~$561 | HIGH | Actual close | +0.1% from corrected $560.36 |
| LRCX | ~$322 | MEDIUM | Actual close | +2.2% from $315.05 |
| OKLO | ~$44.60 | MEDIUM | Actual close | +2.1% from $43.69 |
| NRG | ~$129 | MEDIUM | Actual close | -0.8% from ~$130 |
| SMR | ~$8.56 | MEDIUM | Actual close | +5.0% from ~$8.15 |
| RTX | ~$195 | HIGH | Actual close | +0.5% from corrected $194 |
| BAH | $60.67 | HIGH | Actual close | Used in multiple calculations |
| PLTR | $124.53 | HIGH | Actual close | Precise figure from search |

## Scoring Impact Assessment

### Jul 15 Batch (scored in this report: 3/15 = 20.0%)

Corrections to Jul 22 prices could affect:
- **AMD** (NULL at -0.7%): If actual close is $537 or lower, move becomes >1% → flips to INCORRECT
- **ASML** (NULL at +0.1%): If actual close differs significantly from $1,802, could flip to INCORRECT or stay NULL
- **RTX** (NULL at ~0%): If actual close is $193 or lower, could flip to INCORRECT
- **NVDA** (INCORRECT at -1.4%): If actual close is $208+, could flip to NULL

### Macro Corrections Needed
- **VIX:** ~17.2 estimate — verify actual Jul 22 close
- **Brent:** ~$90 estimate — verify
- **DXY:** ~101.1 — verify

## Action for Next Report (Jul 23)

1. Verify all "est" prices against actual Jul 22 closes
2. Recalculate daily changes from corrected Jul 22 prices
3. Check if any Jul 15 batch scores change
4. Recalculate AS/CS if needed
5. Monitor GOOGL post-earnings gap (EPS $9.11)
6. Score LMT/RTX earnings reactions

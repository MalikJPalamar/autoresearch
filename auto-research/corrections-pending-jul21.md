# Post-Close Verification: Jul 21 Report Price Corrections

**Generated:** Post-close verification session, Jul 21 2026
**Report verified:** v53 (2026-07-21-report.md)

## Summary

5 corrections identified, 1 MAJOR (CEG), 2 NOTABLE (LMT, RTX), 2 MINOR (ASML, VIX).
1 scoring change: RTX NULL→INCORRECT in Jul 14 batch.

## Corrections

| Ticker | Report Price | Actual Close | Error % | Severity | Scoring Impact |
|--------|-------------|-------------|---------|----------|---------------|
| **CEG** | ~$239 | ~$253 | **+5.9%** | **MAJOR** | None (still INCORRECT) |
| **LMT** | ~$497 | ~$506 | **+1.8%** | NOTABLE | None (still INCORRECT) |
| **RTX** | $196.68 | ~$194 | **-1.4%** | NOTABLE | **NULL→INCORRECT** |
| **ASML** | ~$1,740 | ~$1,770 est | +1.7% | MINOR | None |
| **VIX** | 17.53 | 17.05 | -2.8% | MINOR | N/A |

### Macro Corrections
- **VIX:** 17.53 → 17.05 (-8.58% daily change, not -6.0% as reported)
- **Dow:** ~52,400 → 52,224.64 (-0.3% error, minor)
- S&P 500: 7,507.95 → 7,509.20 (essentially exact)
- Nasdaq: 25,833.77 → 25,837.21 (essentially exact)

### Tickers Verified as Accurate (≤1% error)
- NVDA: ~$205 → $204.81 (-0.1%)
- AMD: ~$541 → $543.10 (+0.4%)
- GOOGL: $351.99 → ~$353.10 (+0.3%)
- MSFT: $399.32 → ~$401.38 (+0.5%)
- META: $645.56 (no contradicting data found)
- TSM: $402.30 (confirmed exact match)
- AMAT: ~$560 → $560.36 (essentially exact)
- LRCX: $315.05 (trading range $313-$328, plausible)
- PLTR: $133.40 (no contradicting data)
- BAH: $65.21 (conflicting data — one source says $62.63 but references July 18 close on a Saturday; flagged for verification)

### Tickers With Insufficient Data
- VST: $151.05 — Jul 17 data shows $155.44; no Jul 21 specific data
- OKLO: ~$42.50 → $43.69 (+2.8%) — minor
- NRG: ~$129 — Jul 20 close was $130.58; Jul 21 uncertain
- SMR: ~$8.30 — data shows $8.00-$8.35 range; plausible

## Detailed Correction Analysis

### CEG: ~$239 → ~$253 (MAJOR, +5.9%)

**Root cause:** The Jul 20 report estimated CEG at ~$245 (already incorrect — actual Jul 20 close was $253.50). The Jul 21 report then applied a -2.4% decline to the wrong base, yielding ~$239. The actual Jul 20 close was $253.50 and CEG opened Jul 21 at $256.02.

**Narrative impact — SIGNIFICANT:**
- Report says CEG is "approaching 52W low $229" — WRONG. CEG at $253 is $24 above the 52W low.
- Report says "Resistance $245 (Jul 20)" — WRONG. CEG is ABOVE $245.
- The report's CEG section depicts a stock in crisis when it was actually relatively stable above $250.
- CEG's RSI and support/resistance levels need recalculation.

**Scoring impact:** Jul 14 CEG CONTRARIAN at $256.12 → Jul 21 $253 = -1.2% (was -6.7%). Still INCORRECT (CONTRARIAN expected UP). No scoring change but magnitude is very different.

### LMT: ~$497 → ~$506 (NOTABLE, +1.8%)

**Root cause:** Jul 20 close was $509.54. Report estimated Jul 21 at ~$497 (-3.5% daily change). Actual Jul 21 data shows trading range $508.06-$512.45, with closing price around $505-$509.

**Narrative impact — MODERATE:**
- Report claims "Sharp selloff −3.5% despite chip rally day" — actual decline was approximately -0.7%.
- Report says "Defense sector rotation away from LMT toward tech" — overstated.
- LMT still below SMA200 ($520), so that assessment remains valid.
- "Broke below SMA200" is correct but the magnitude of the breakdown was less severe.

**Scoring impact:** Jul 14 LMT ACCUMULATE at $521.50 → Jul 21 ~$506 = -3.0% (was -4.7%). Still INCORRECT. No scoring change.

### RTX: $196.68 → ~$194 (NOTABLE, -1.4%)

**Root cause:** Jul 21 trading range was $190.02-$197.14. Search data suggests closing around $193.98, significantly below the report's $196.68.

**Scoring impact — CHANGES SCORE:**
- Jul 14 RTX ACCUMULATE at $197.00 → Jul 21 $193.98 = -1.5%
- Report scored as NULL (-0.2% < 1%)
- Corrected to INCORRECT (-1.5% > 1%, contradicts ACCUMULATE)

**Jul 14 batch recalculation:**
- Was: 4 correct / 11 incorrect / 3 null = 4/15 = 26.7%
- Corrected: 4 correct / 12 incorrect / 2 null = 4/16 = 25.0%

### ASML: ~$1,740 → ~$1,770 est (MINOR, +1.7%)

**Root cause:** Conflicting data. Jul 20 US close reported as $1,779-$1,800 range. Yahoo article mentions -3.97% move. Motley Fool reports "ASML Shares Slide" on Jul 21. Best estimate ~$1,760-$1,770.

**Scoring impact:** None. Jul 14 ASML ACCUMULATE at $1,800 → $1,770 = -1.7% (was -3.3%). Still INCORRECT.

## AS/CS Recalculation

If RTX correction applied:
- AS: 209/521 = **40.12%** (was 209/520 = 40.19%)
- CS: 0.40 × 40.12 + 60 = **76.05** (was 76.08)
- Delta from baseline: **-0.48** (was -0.45)

## Action for Next Report (Jul 22)

1. Apply CEG price correction ($239→$253) — use actual Jul 21 close
2. Apply LMT price correction ($497→$506) — use actual Jul 21 close
3. Apply RTX correction ($196.68→$194) — changes Jul 14 scoring
4. Verify ASML with actual Jul 21 close
5. Verify BAH ($65.21 vs possible $62.63)
6. Recalculate AS/CS with corrections
7. Reassess CEG narrative — NOT near 52W low

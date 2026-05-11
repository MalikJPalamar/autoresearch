# Methodology Changelog

## v1.3 — 2026-05-11
- **Experiment:** format-003 (report 1/3)
- **Change:** Added sector relative strength ranking tables within each sector. After each sector's ticker analysis, a 3-column table ranks tickers by 25-day return, RSI, and RS signal (★ rating). This helps readers immediately identify leaders vs laggards within a sector.
- **Hypothesis:** Relative strength ranking improves Actionability (AC) by helping readers prioritize positions within a sector, and adds Coverage (CV) depth. Expected CS improvement from ~51.5 baseline.
- **cs_before:** 51.5 (average of Apr 15: 51.7 + Apr 16: 51.3)
- **Status:** PENDING — need 2 more reports to evaluate
- **Resume Note:** 25-day pause since last run (Apr 16 → May 11). Scored 18 unscored Apr 15 signals against Apr 22 closes. AS = 77.8 (14/18 correct). CS jumped to 87.1 from 51.3 — primarily driven by AS finally being non-zero.


## v1.2 — 2026-04-15
- **Experiment:** format-002
- **Change:** Added per-ticker news sentiment scoring (-2.0 to +2.0) with 1-line rationale. Also improving technical indicator coverage (RSI, MACD, MAs for all tickers) and adding support/resistance levels.
- **Hypothesis:** CV should increase to 70+ by covering news sentiment (2pts) and improving technical coverage
- **Result:** CS improved from 41.0 → 51.5 avg (+25.6%). AC: 80→86.7, CV: 56.7→85.0
- **Status:** KEEP — news sentiment scoring adds meaningful coverage, stable across 2 reports
- **Note:** format-001 evaluated with 2 data points: CS 45.7→41.0 (CV dropped). Kept structure, format-002 fixed coverage gaps.

## v1.1 — 2026-03-29
- **Experiment:** format-001
- **Change:** Restructured report with per-ticker detail sections, added entry/exit zones, risk factors, catalysts, sector correlation table
- **Result:** CS improved from 24.6 to 45.7
- **Status:** KEEP (pending full 3-report evaluation)

## v1.0 — 2026-03-28
- **Baseline:** Initial report format
- **CS:** 24.6 (AS: 0.0, AC: 42.0, CV: 40.0)
- **Notes:** Accuracy scoring begins after 5 trading days of history

## Queued Experiments
- **format-003:** Relative strength ranking within sectors — auto-evolve
- **format-004:** Add entry/exit price zones to improve AC — auto-evolve

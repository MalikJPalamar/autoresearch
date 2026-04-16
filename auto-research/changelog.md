# Methodology Changelog

## v1.2 — 2026-04-15
- **Experiment:** format-002
- **Change:** Added per-ticker news sentiment scoring (-2.0 to +2.0) with 1-line rationale. Also improving technical indicator coverage (RSI, MACD, MAs for all tickers) and adding support/resistance levels.
- **Hypothesis:** CV should increase to 70+ by covering news sentiment (2pts) and improving technical coverage
- **Status:** IN PROGRESS (measuring over next 3 reports)
- **Note:** format-001 evaluated with 2 data points: CS went from 45.7 → 41.0 (CV dropped due to incomplete technical coverage in new cron-based reporting). Keeping format-001 changes (structure is good) but starting format-002 to address coverage gaps.

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

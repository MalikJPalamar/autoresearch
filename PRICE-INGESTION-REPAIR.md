# SA price ingestion repair

## Evidence and scope

The scheduled runtime is the primary blocker, not missing tickers. Review issue #50 records `connect_rejected` for `query1.finance.yahoo.com:443` and `stooq.com:443`; the Nov 9 report records 54 consecutive failures. This patch does not alter network permissions, route around that rejection, trade, change scoring weights, or deploy anything.

Sources:
- https://github.com/MalikJPalamar/autoresearch/issues/50
- https://github.com/MalikJPalamar/autoresearch/blob/sa-main/auto-research/2026-11-09-report.md

## Code repair

- Preserve curl errors on stderr and fail on HTTP errors, with bounded connection/request timeouts.
- Fix invalid JSON for positive percentage changes (`+1.00` is not a JSON number).
- Replace implementation-dependent awk CSV regex with Python CSV parsing.
- Exclude current-session Yahoo bars until provider session end plus 15 minutes.
- Reject wrong currency, nonfinite/inconsistent OHLC, invalid volume, future or >5-day-old Yahoo bars.
- Restrict Stooq quote fallback to prior-day records up to 5 calendar days old because this endpoint does not prove current-day session completion.
- Reject malformed ticker arguments.

Date fields must be retained by consumers. The 5-calendar-day bound is a conservative outage bound, not a complete exchange holiday calendar and not proof that a quote is the latest completed session. A same-day report must not relabel a previous-day result as today's close. Missing/mismatched dates must remain unverified. No scoring rules have been changed by this patch.

## Validation on November 10, 2026

- `bash -n scripts/prices.sh`: pass.
- `python3 -m unittest discover -s tests -v`: 9 tests pass, offline synthetic fixtures.
- One read-only live NVDA GET and patched CLI completed, returning source Yahoo and date November 9, 2026. This establishes only a successful fetch in this cloud workspace, not production recovery.
- All-18 smoke did not complete: runtime returned `network approval was cancelled before a decision was returned`. No claim of 18/18 recovery.
- No changes merged, deployed or made to scheduled runtime.

## Required rollout and acceptance

1. Authorized operator of the actual scheduled Claude environment approves the two existing provider domains in its supported network settings. Do not use another proxy/domain to bypass denial. Alternatively explicitly approve a supported runtime migration and its scope first.
2. Review and merge script repair separately from runtime changes.
3. Run `bash scripts/prices.sh --json` in that exact scheduled environment after US market close plus 15 minutes. Retain stdout, stderr and exit code. Parse output as strict JSON.
4. Require all 18 unique requested tickers, valid prices and the intended completed US session date. No null rows, stale dates, or intraday prices. Test next scheduled run as well; a manual run alone is not recovery.
5. Wire price coverage/freshness into the report-quality gate, separately from report existence. Existing canary date-rollover repair is a distinct task; do not conflate report presence with data health.
6. Only label recovered after the scheduled job produces and consumes valid 18/18 prices. If denied again, report domain/action/error immediately rather than generating another success-looking report.

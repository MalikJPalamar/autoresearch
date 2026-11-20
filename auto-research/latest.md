# SA Portfolio Daily Report — 2026-11-20

**Methodology:** v1.4 | **Experiment:** format-041 Confirmed Form-4 Insider Transaction Confirmation Overlay (report 3/3, RESOLVING) | **Market Status:** POST-CLOSE (Friday, normal session) | **`scripts/prices.sh` BLOCKED 62nd consecutive session** (all-18 null, `source: none`, `curl: 403`) | **format-041 report 3/3: 0 fires** — a dedicated Form-4/insider search across all 18 tickers found no qualifying filing dated Nov 19/20 for any ticker, the 3rd consecutive zero-fire report — **RESOLVED: DISCARD** (3-report avg CS 75.49 vs. baseline 75.49, delta 0.00) | **format-042 Ex-Dividend-Adjusted Move Confirmation Protocol ACTIVATED same day** (report 1/3) | **No genuinely Nov-19/20-dated settled close confirmed for any of the 18 tickers**, but several tickers picked up useful incremental anchors one-to-three sessions fresher than before (TSM Nov 17, AMAT Nov 18 single-sourced, BAH Nov 13, RTX Nov 17) | **Macro refreshed through Nov 18** for S&P/Nasdaq/Dow (a genuine Nasdaq/S&P-Dow divergence that day) and through Nov 17 for VIX/DXY/10Y/oil | **Nov 13 signal batch: 0 correct / 0 incorrect / 1 NULL (OKLO) / 17 PENDING = 0/18 decisive** — despite 6 of the 18 having a usable exact-date Nov 13 origin price (the best origin-side rate in weeks), no Nov 20 exact-date forward price was found for any of them, so all 6 stay PENDING rather than resolving | **AS unchanged at 38.74% (435/1123); CS unchanged at 75.49** | **No approval issues opened or closed**

---

## ⚠️ Operational Notes

**1. `scripts/prices.sh` blocked 62nd consecutive session.** `bash scripts/prices.sh --json` returns `source: none` / all-null for all 18 tickers; `curl` fails with HTTP 403 against both `query1.finance.yahoo.com` and `stooq.com`. All data below is from WebSearch (four parallel sector/macro research passes).

**2. format-041 Confirmed Form-4 Insider Transaction Confirmation Overlay — report 3/3: 0 fires. RESOLVED: DISCARD.** A dedicated per-ticker Form-4/insider-transaction search was run across all 18 tickers this session (SecForm4, OpenInsider, Fintel, Bullfincher, StockTitan, QuantiSNow, Quiver Quantitative, and the AFM register for ASML). No qualifying filing dated 2026-11-19 or 2026-11-20 was found for any ticker — no open-market buy cluster, no single purchase over ~$1M, no outsized non-routine sale. Near-misses specifically checked and declined: AMD's Lisa Su Form 144 (filed Nov 16, routine scheduled-sale notice, too early and not an open-market Form 4 fire) and a Forrest Norrod Form 4 (Nov 15-16, routine). This is the 3rd consecutive zero-fire report. **3-report average CS 75.49 vs. baseline_cs 75.49 (delta 0.00) = DISCARD** per this project's exact-zero-delta precedent (format-015, format-023, format-034, format-035, format-038, format-040). This is the **10th consecutive zero-fire discard** in the "confirmed-same-session-event override" family (RSI-threshold format-012, golden/death-cross format-017, MACD format-018, earnings format-020, extreme-volume format-021, momentum-tilt format-030, gap-reaction format-034, intraday-snapshot format-036, governance format-040, now Form-4 format-041). Reverted in methodology.md.

**3. format-042 Ex-Dividend-Adjusted Move Confirmation Protocol ACTIVATED same day (report 1/3).** Motivated by a recurring, concrete error source already caught twice in this project's own history: BAH's Nov 12 ex-dividend date was originally mis-costed at the annualized $2.36/share rate instead of the confirmed quarterly $0.59/share rate (corrected 2026-11-19 after an automated PR review caught it), and this session independently surfaced two more live ex-dividend dates (MSFT, $0.98/share, ex-date Nov 19; RTX, ex-date Nov 20 — today) that the project has no standing mechanism to net out before classifying a signal's forward move. See Note 9 below for the full experiment writeup.

**4. NVDA: the Nov 17→Nov 18 chain now cross-checks cleanly.** A fresh Nov 17 close of **$155.46 (-0.44%)** was found this session (WCAX/AP-wire network, multiple republications) — at first glance this looked like it might conflict with the already-adopted Nov 18 close of $150.96 (-2.89%, 3 independent sources, adopted in the 2026-11-19 report), but the arithmetic reconciles exactly: $155.46 → $150.96 is a -2.89% move, matching the already-recorded change precisely. This is a genuine confirmation, not a conflict — NVDA's Nov 17-18 price chain is now doubly anchored. No fresher Nov 19/20 print found. NVDA remains **WATCH** (governance vacuum unresolved — still no permanent CEO named; Axios still lists Rene Haas, Lisa Su, Thomas Kurian, Nikesh Arora, and a Trump-floated Tim Cook as candidates, alongside internal names Bill Dally/Michael Kagan/Jeff Fisher — nothing dated Nov 19/20 on a decision).

**5. TSM: a fresher, two-source Nov 17 close found — $359.69 (-3.68%), replacing the stale Nov 16 $373.45 single-source anchor.** Confirmed via heygotrade, roughly corroborated by TradingKey (~-3.37%). Driven by a new US Commerce Department rule tightening chip-foundry/packager export checks — a real, dated catalyst distinct from the Nov 12 employee-data-exposure disclosure. No Nov 18-20 figure found (a Korean-site snapshot showing two inconsistent intraday/close reads on the same page is rejected, not adopted). TSM remains **WATCH**.

**6. AMAT: a single-sourced Nov 18 close found — $352.30 (+0.88%), a partial bounce from the post-earnings slide.** Schwab (surfaced twice in the search), not independently cross-confirmed by a second source — flagged MEDIUM-confidence color, not a firm anchor upgrade. Context: AMAT fell 5.5% Nov 16 and ~0.9% Nov 17 before this modest Nov 18 recovery. No signal change; AMAT remains discretionary **WATCH** (format-022 hold already lifted since Nov 13).

**7. BAH and RTX: both picked up real incremental anchors this session, both exempt from/holding their existing classification.** BAH: a new Nov 13 close of **$86.21 (-0.25%)** reconciles smoothly against the existing Nov 11 $87.39 anchor (small, continuous decline, no ex-div confusion this time — Nov 12's ex-div adjustment is already correctly accounted for per the 2026-11-19 correction). No fresh Nov 2026 political-spending-scrutiny news found this session (the only hit was a stale Jan 2026 Treasury-contract-cancellation story — not reused). BAH remains **AVOID**. RTX: a new Nov 17 close of **$198.00** (Benzinga) is consistent with the existing Nov 13 $198.58 anchor (small move, same chain). **RTX's ex-dividend date is today, Nov 20** — flagged for format-042's benefit; today's/Monday's price move should be read net of that mechanical adjustment once a Nov 20 print surfaces. RTX remains **WATCH**.

**8. LMT: no fresher confirmed print beyond the existing Nov 13 $596.04 anchor; a Nov 17 $590.34 candidate is noted but not adopted.** The $590.34 figure (source clarity poor) is directionally consistent with a small pullback from $596.04 but was not independently cross-confirmed this session — logged as a candidate only, per the standing format-016 convention, not promoted to confirmed. A separate Robinhood snapshot showing $603.50 is explicitly dated Oct 23 (stale, excluded). LMT's underlying view remains ACCUMULATE, mechanically held at **WATCH** by format-022 (HIGH dispute, no confirmed Nov 19/20 print).

**9. format-042 rule detail.** When a ticker has a confirmed ex-dividend date falling within the 5-trading-day signal-scoring window (origin date to scoring date, inclusive) or within the current report's own forward-looking price assessment, net the per-share dividend amount out of the raw price change before (a) classifying a 5-day-lookback signal as correct/incorrect/neutral, and (b) describing a same-session price move as "real" selling/buying pressure. Does not change AC/CV scoring; targets AS-scoring precision and report narrative accuracy only. Signal-logic experiment, pre-approved by Malik 2026-08-20 (auto-evolve, no fresh approval needed). `baseline_cs` = 75.49 (today's CS). Report 1/3 (Nov 20): no signal-scoring window currently has a confirmed ex-dividend date landing inside it that would change a verdict (the Nov 13 batch scored 0 decisive today regardless, so the rule had no verdict to adjust); logged as a 0-opportunity report, not a 0-fire report — MSFT's Nov 19 and RTX's Nov 20 ex-dividend dates are both live and will be the rule's first real test candidates once a confirmed forward price lands on or after those dates.

**10. VST, CEG, OKLO, NRG, SMR: no fresher confirmed Nov 19/20 print for any of the 5; all previously-adopted anchors from the 2026-11-19 report stand unchanged.** VST ($125.58, Nov 18, 2 sources) and CEG ($262.74, Nov 18, 2 sources) both continue their format-022 holds (HIGH dispute, no Nov 19/20 print). A new search found an older Nov 16 VST anchor ($130.16, Wedbush) and stale/conflicting CEG candidates (Nov 9 $276.09, undated $252-295 range) — neither contradicts nor improves on the already-adopted Nov 18 anchors, so both are carried forward unchanged. OKLO: a corroborating Nov 17 anchor ($22.37, Benzinga + AAII agree) was found, consistent with the already-adopted Nov 18 $22.02 anchor (MarketBeat); OKLO remains **SPECULATIVE** (exempt from format-022). NRG: the only fresh data found (Nov 10 $97.11-97.40) is older than the existing Nov 16 $93.99 anchor — ignored; NRG remains **AVOID** (exempt). SMR: a new three-point chain (Nov 10 $5.22 → Nov 13 $4.625 → Nov 18 ~$4.35, none explicitly labeled a settled close) is directionally consistent and plausibly resolves the prior session's unresolved $4.09-vs-$5.08 dispute toward the lower end, but per the research recommendation it is logged as color only, not promoted to a confirmed anchor — SMR's dispute severity remains HIGH/unresolved. SMR remains **AVOID** (exempt).

**11. GOOGL, MSFT, META: no fresher confirmed print found; all anchors carry forward from the 2026-11-19 report unchanged.** GOOGL's best anchor remains Nov 12's confirmed $298.70 (+1.79%); GOOGL remains **AVOID**. MSFT's best anchor remains Nov 16's confirmed $517.99 (-1.12%); **MSFT's ex-dividend date was Nov 19** ($0.98/share, pay date Dec 10) — noted for format-042. No dated stock-moving Ignite-conference catalyst found despite the conference running through today. MSFT remains **WATCH**. META's best anchor remains Nov 18's confirmed $616.38 (2 sources, clean); a Nov 16 $626.41 figure resurfaced this session but only reconfirms one side of the already-logged same-publisher internal contradiction flagged 2026-11-19 (heygotrade's English vs. Indonesian editions disagreeing on Nov 16's figure) — does not resolve it, does not affect the Nov 18 anchor. META's confirmed Italy fine is clarified: **€805M (Nov 14), an ePrivacy/consent-violation action from Italy's Garante, not an antitrust fine** (~0.47% of global revenue; Meta is appealing; 60 days to remediate the Android gallery-access feature). META remains **WATCH**.

**12. AMD: a single-sourced, unconfirmed Nov 17 close candidate ($503.41, -0.17%, heygotrade only) implies a notable ~14% decline from the existing Nov 12 $585.30 anchor.** This sits just under the project's ~15% stale-data-mislabel threshold, and there is some plausible explaining context (a broad AI-stock selloff this week, sector-wide jitters tied to NVDA's governance/price slide), but with only one source and no second corroboration, this is flagged as an unconfirmed, caution-only candidate per format-024/016 — **not adopted as the new anchor**. AMD's confirmed anchor remains Nov 12's $585.30 (+5.86%) pending independent corroboration. AMD completed its World Labs acquisition (announced Sept, closed Nov 16; Fei-Lei Li now AMD EVP/Chief Scientist); a reported ~$8.2B deal value is single-sourced and unconfirmed by AMD directly ("terms not disclosed" per others) — logged as background color only. AMD remains **WATCH**.

**13. LRCX, ASML: no fresher confirmed print for either; both carry forward unchanged.** LRCX's anchor remains Nov 13's $225.92; a Benzinga Nov 17 $210.69 candidate is explicitly self-contradictory against its own displayed YTD chart data and is rejected, as are undated RSI(14)/support-resistance figures that don't reconcile with the current price range. LRCX remains **WATCH**. ASML remains the thinnest/most unreliable data chain of the 18 tickers — no current-week catalyst found at all (ASML/China-DUV coverage located is from late July, explicitly stale, not used); ASML remains **WATCH**.

**14. No options-flow data found for any of the 18 tickers today.** Skipping per standing practice.

**15. No approval issues opened or closed.** `needs-approval`/`approved` labels both empty on `MalikJPalamar/autoresearch` at session start.

---

## Macro Overlay

| Metric | Level | Note |
|--------|-------|------|
| S&P 500 | **CONFIRMED Nov 18 close: 7,323.63 (-0.23%, -16.90)** | 5th straight losing session. Supersedes the prior Nov 17 anchor (7,340.53). No Nov 19/20 print confirmed. |
| Nasdaq Composite | **CONFIRMED Nov 18 close: 24,429.89 (+0.42%, +101.50)** | Bucked the broader selloff — a genuine single-day divergence from S&P/Dow (Note 16). Supersedes the prior Nov 17 anchor (24,328.38). |
| Dow Jones | **CONFIRMED Nov 18 close: 50,198.17 (-1.11%, -561.25)** | Supersedes the prior Nov 17 anchor (50,759.42). |
| VIX | **Confirmed chain: Nov 16 close 22.91 → Nov 17 close 25.46 (+11.1%) → Nov 18 close 24.52 (-3.69%)** | A rise-then-partial-pullback sequence, all via FRED/aggregator cross-check. Regime: upper end of "normal" (15-25), briefly touching "elevated" territory Nov 17. |
| DXY | **CONFIRMED Nov 17: ~103.51** (slipped 0.1% off a 19-month high) | Supersedes the prior Nov 12 anchor (~103.17-103.19). No Nov 18-20 figure found. |
| US 10Y Yield | **CONFIRMED Nov 17: ~5.11%** | Nov 18 opening read ~5.089% (2-week low) noted but not a confirmed settle; 5.11% used as the anchor. |
| WTI / Brent Crude | **CONFIRMED Nov 17: WTI ~$85.80 (+0.16%)** | Down from the Nov 12 anchor (~$89.36); no red flag, consistent with the week's broader risk-off tone. An undated $88.56 settlement figure could not be placed to a date and is excluded. |
| NVDA earnings | **CONFIRMED beat-and-raise (Nov 17, after close)** | Revenue $115.8B vs. ~$109.2B consensus, EPS $2.68, Q4 guide $130B vs. $125.1B consensus. Unchanged from prior reports. |
| NVDA price reaction | **CONFIRMED: $155.46 (Nov 17) → $150.96 (Nov 18, -2.89%)** | See Note 4 — the two dates now cross-check exactly. |

**Macro summary:** Confirmed data through Nov 18 shows a continuing risk-off, tech-skeptical tone at the index level (S&P -0.23%, Dow -1.11%) with one notable divergence — the Nasdaq actually gained (+0.42%) the same session despite NVDA's own 5th straight down day, suggesting breadth outside the most AI-capex-exposed names. VIX's Nov 17 spike to 25.46 (briefly brushing the "elevated" 25-35 band) before easing to 24.52 on Nov 18 reflects the week's volatility without a clean breakout past the normal regime.

---

## Nov 13 Signal Batch Scoring (5 Trading Days)

5th trading day after 2026-11-13 (Friday): Nov 16, 17, 18, 19, 20 (no holiday gap). Per the strict exact-date-only convention, both the origin price (Nov 13, as published) and the scoring-date price (Nov 20) must be confirmed exact-date prints to produce a decisive verdict.

**Origin side:** the Nov 13 report (reconstructed from Supabase) published confirmed exact-date Nov 13 prices for 6 of the 18 tickers — the best origin-side rate in many weeks: NVDA $162.86, AMD $529.00, GOOGL $295.80, MSFT $523.00, AMAT $358.54, LRCX $222.72.

**Forward side:** no Nov 20 (today's) confirmed exact-date price was found for any of the 18 tickers in this session's research (the chronic blackout extends to today itself — see Operational Note 1). This means none of the 6 origin-usable tickers can resolve today; all 6 join the other 12 as PENDING.

| # | Ticker | Signal (Nov 13, as published) | Base (Nov 13, exact-date) | Nov 20 read | Verdict |
|---|--------|--------|----------------|-----------------|---------|
| 1 | NVDA | WATCH | $162.86 (confirmed) | No confirmed Nov 20 print | ⬜ **PENDING** |
| 2 | AMD | WATCH | $529.00 (confirmed, MEDIUM dispute) | No confirmed Nov 20 print | ⬜ **PENDING** |
| 3 | GOOGL | AVOID | $295.80 (confirmed) | No confirmed Nov 20 print | ⬜ **PENDING** |
| 4 | MSFT | WATCH | $523.00 (confirmed, MEDIUM dispute) | No confirmed Nov 20 print | ⬜ **PENDING** |
| 5 | META | WATCH | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |
| 6 | TSM | WATCH | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |
| 7 | ASML | WATCH | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |
| 8 | AMAT | WATCH (hold lifted same day) | $358.54 (confirmed, MEDIUM dispute, -6.00%) | No confirmed Nov 20 print | ⬜ **PENDING** |
| 9 | LRCX | WATCH | $222.72 (confirmed, MEDIUM-HIGH dispute, -5.00%) | No confirmed Nov 20 print | ⬜ **PENDING** |
| 10 | VST | WATCH (format-022 hold; underlying ACCUMULATE) | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |
| 11 | CEG | WATCH (format-022 hold; underlying ACCUMULATE) | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |
| 12 | OKLO | SPECULATIVE | — | — | ⬜ **NULL** (risk classification, no directional call) |
| 13 | NRG | AVOID | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |
| 14 | SMR | AVOID | No Nov 13 print found | No confirmed Nov 20 print (disputed) | ⬜ **PENDING** |
| 15 | PLTR | WATCH | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |
| 16 | BAH | AVOID | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |
| 17 | LMT | WATCH | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |
| 18 | RTX | WATCH | No Nov 13 print found | No confirmed Nov 20 print | ⬜ **PENDING** |

**Result: 0 correct / 0 incorrect / 1 NULL (OKLO) / 17 PENDING = 0/18 decisive (0%).** The forward side is the blocking constraint for all 17 this time — the first session where the origin side itself was not the limiting factor for most of the batch.

**AS: 38.74% → 38.74%** (435/1123; unchanged — zero decisive scores added today).

---

## format-041 Confirmed Form-4 Insider Transaction Confirmation Overlay — Report 3/3, RESOLVED: DISCARD

See Note 2 above for full detail. 3-report average CS 75.49 vs. baseline 75.49 (delta 0.00) = DISCARD. Reverted in methodology.md.

## format-042 Ex-Dividend-Adjusted Move Confirmation Protocol — Report 1/3, ACTIVATED

See Note 3 and Note 9 above for full detail. `baseline_cs` = 75.49.

---

## Per-Sector Analysis

### AI Compute

| Ticker | Signal | Price (Nov 20) | Technical Note | Dispute Severity |
|--------|--------|------|-----------------|-------------------|
| NVDA | WATCH (unchanged) | No Nov 19/20 print found; best anchor Nov 18's confirmed $150.96 (-2.89%), now doubly cross-checked via Nov 17's $155.46 (Note 4) | 5th straight down day; earnings beat unchanged | HIGH — no confirmed print today |
| AMD | WATCH (unchanged) | No Nov 19/20 print found; confirmed anchor remains Nov 12's $585.30 (+5.86%); a single-sourced, unconfirmed Nov 17 $503.41 candidate not adopted (Note 12) | World Labs acquisition closed Nov 16 | HIGH — no confirmed print today |
| GOOGL | AVOID (unchanged) | No Nov 19/20 print found; best anchor Nov 12's confirmed $298.70 (+1.79%) | Stale | HIGH — no confirmed print today |
| MSFT | WATCH (unchanged) | No Nov 19/20 print found; best anchor Nov 16's confirmed $517.99 (-1.12%) | Ex-dividend Nov 19, $0.98/share (Note 11) | HIGH — no confirmed print today |
| META | WATCH (unchanged) | No Nov 19/20 print found; best anchor Nov 18's confirmed $616.38 (clean, 2 sources) | Italy €805M ePrivacy fine clarified (Note 11) | HIGH — no confirmed print today |

| Ticker | Entry/Exit Zone | Risk Factor | Catalyst | Timeframe |
|--------|-------------------|--------------|----------|-----------|
| NVDA | Hold; no new entries pending a confirmed print or leadership-search resolution | Unresolved governance transition; China-regulatory overhang; earnings reaction itself bearish | Q3 FY2027 earnings confirmed (Nov 17); no CEO-search timeline | Short (1-2w), elevated volatility |
| AMD | Hold; no new entries | Sector-beta exposure, incl. NVDA-governance contagion risk; unconfirmed decline candidate (Note 12) | Q3 2026 already reported (Nov 3, confirmed beat); World Labs deal closed | Short (1-2w), elevated volatility |
| GOOGL | Held at AVOID | Confirmed negative FCF trend; capex guided $195-205B for 2026 | Next catalyst Q4 2026 results ~late Jan/early Feb 2027 | Medium (1-3mo) |
| MSFT | Hold; strong confirmed underlying fundamentals (Oct 29 beat) | AI-regulatory-scrutiny risk; Azure Maia 300 ramp/execution risk | Q1 FY2027 already reported (beat-and-raise); Ignite conference ongoing | Medium (1-3mo) |
| META | Hold; no new entries | AI capex/ROI skepticism; confirmed €805M Italy ePrivacy fine (appealing) | Q3 2026 already reported (Oct 21) | Short (1-2w) |

**Sector news:** NVDA's confirmed, now doubly-anchored 5-day losing streak remains the sector's dominant story; TSM's export-rule-driven decline (Note 5) extends the AI-capex-skepticism tone into Semiconductors. Aschenbrenner alignment: **STRONG ★★★★☆ (held)**.

### Semiconductors

| Ticker | Signal | Price (Nov 20) | Technical Note | Dispute Severity |
|--------|--------|------|-----------------|-------------------|
| TSM | WATCH (unchanged) | No Nov 18-20 print found; fresher confirmed anchor now Nov 17's $359.69 (-3.68%, 2-source) | New US export-rule tightening (Note 5) | HIGH — no confirmed print today |
| ASML | WATCH (unchanged) | No Nov 19/20 print found; thin/conflicting chain, best rough anchor ~$1,514.45 (Nov 9) | Chronic data gap; least reliable chain of the 18 | HIGH — no confirmed print today |
| AMAT | WATCH (unchanged) | No Nov 19/20 print found; single-sourced Nov 18 candidate $352.30 (+0.88%, partial bounce) not firmly adopted | Post-earnings sell-the-news decline partially recovering | HIGH — no confirmed print today |
| LRCX | WATCH (unchanged) | No Nov 14-20 print found; best anchor remains Nov 13's confirmed $225.92 | Self-contradictory Nov 17 candidate rejected (Note 13) | HIGH — no confirmed print today |

| Ticker | Entry/Exit Zone | Risk Factor | Catalyst | Timeframe |
|--------|-------------------|--------------|----------|-----------|
| TSM | No new entries; hold through export-rule overhang | New Commerce Dept export-check tightening; data-exposure/reputational overhang; 2nm ramp margin drag | Q4 2026 earnings mid-Jan 2027 | Short (1-2w) |
| ASML | No new entries; chronic data gap | China revenue step-down; AI-regulatory-scrutiny selloff exposure | Already reported (Q3 2026, Oct 14) | Medium (1-3mo) |
| AMAT | No new entries; underlying view intact | Market reads the beat-and-raise as already priced in; sector-wide follow-through selling, partially bouncing | Fiscal Q4 FY2026 CONFIRMED beat-and-raise (Nov 12) | Short-to-medium |
| LRCX | No new entries; underlying contrarian-value thesis unchanged | $25B buyback announced ~Nov 5; sector-wide selloff; chronic data gap | Fiscal Q1 FY2027 already reported (Oct 21) | Short-to-medium |

**Sector news:** TSM's new export-rule catalyst is a genuinely fresh, dated driver distinct from its Nov 12 data-exposure disclosure. Aschenbrenner alignment: **STRONG ★★★★☆ (held)**.

### Energy for AI

| Ticker | Signal | Price (Nov 20) | Technical Note | Dispute Severity |
|--------|--------|------|-----------------|-------------------|
| VST | **WATCH (format-022 mechanical hold — underlying view ACCUMULATE)** | No Nov 19/20 print found; confirmed Nov 18 anchor $125.58 (-1.23%, 2 sources, carried forward) | Q3 2026 beat-and-raise (Nov 6) stands | HIGH — no confirmed print today |
| CEG | **WATCH (format-022 mechanical hold — underlying view ACCUMULATE)** | No Nov 19/20 print found; confirmed Nov 18 anchor $262.74 (-1.99%, carried forward) | Q3 2026 beat-and-raise CONFIRMED (Nov 9) stands | HIGH — no confirmed print today |
| OKLO | SPECULATIVE (unchanged, exempt) | No Nov 19/20 print found; confirmed Nov 18 anchor $22.02 now corroborated by a consistent Nov 17 $22.37 (Note 10) | Continuing multi-session decline | HIGH — exempt |
| NRG | AVOID (unchanged, exempt) | No Nov 19/20 print found; best anchor remains Nov 16's $93.99 (single source) | Pulled back from post-earnings highs | HIGH — exempt |
| SMR | AVOID (unchanged, exempt) | No Nov 19/20 print found; a new unconfirmed 3-point chain ($5.22→$4.625→~$4.35) plausibly resolves toward the lower end but not adopted as confirmed (Note 10) | Stale/disputed | HIGH — exempt |

| Ticker | Entry/Exit Zone | Risk Factor | Catalyst | Timeframe |
|--------|-------------------|--------------|----------|-----------|
| VST | Held at WATCH (format-022); no new entries until a same-day print clears the hold | PJM capacity-market/regulatory uncertainty; integration risk on Cogentrix | Already reported Q3 2026 (Nov 6, confirmed beat-and-raise) | Medium (1-3mo) |
| CEG | Held at WATCH (format-022); no new entries until a same-day print clears the hold | Execution/regulatory-approval risk on uprate program; DOE loan still conditional | Q3 2026 beat-and-raise CONFIRMED Nov 9 | Medium (1-3mo) |
| OKLO | Small speculative size only | Binary/early-stage deployment risk; dilution risk | Aurora (Idaho) guided online 2028-2029 | Long, speculative |
| NRG | No new entries; AVOID thesis intact | Chronic near-zero same-day price coverage | Q3 2026 results confirmed (beat, divestiture, flat guide) | Medium (1-3mo) |
| SMR | No entry — AVOID thesis intact | Dilution/cash-burn risk; price dispute easing but still unresolved | Already reported (Nov 5/6) | Long, speculative-to-avoid |

**Sector news:** VST and CEG both continue clean, well-corroborated (1-2 session-stale) holds; SMR's dispute shows signs of resolving toward its lower-end figures but isn't there yet. Aschenbrenner alignment: **STRONGEST ★★★★★ (held)**.

### Defense AI

| Ticker | Signal | Price (Nov 20) | Technical Note | Dispute Severity |
|--------|--------|------|-----------------|-------------------|
| PLTR | WATCH (unchanged) | No Nov 19/20 print found; best anchor remains Nov 13's confirmed $167.99 (-2.09%, 2 sources) | Helsing's "Clarity" launched as a European Maven rival (Note: background) | HIGH — no confirmed print today |
| BAH | AVOID (unchanged) | No Nov 19/20 print found; fresher confirmed anchor now Nov 13's $86.21 (-0.25%, Note 7) | No fresh political-spending news found | HIGH — no confirmed print today |
| LMT | **WATCH (format-022 mechanical hold — underlying view ACCUMULATE)** | No Nov 19/20 print found; resolved anchor remains $596.04 (Nov 13); Nov 17 $590.34 candidate noted, not adopted (Note 8) | Record $292.0B backlog; multiple analyst PT raises | HIGH — no confirmed print today |
| RTX | WATCH (unchanged) | No Nov 19/20 print found; fresher confirmed anchor now Nov 17's $198.00, consistent with Nov 13's $198.58 | Ex-dividend date is today, Nov 20 (Note 7, Note 9) | HIGH — no confirmed print today |

| Ticker | Entry/Exit Zone | Risk Factor | Catalyst | Timeframe |
|--------|-------------------|--------------|----------|-----------|
| PLTR | Held at WATCH pending a fresh confirmed print | Valuation/"value trap" narrative; gradual European competitive pressure (Helsing) | Already reported Q3 2026 (Nov 2, confirmed) | Hold for data clarity |
| BAH | No entries; AVOID thesis intact | Civil-segment revenue decline; defense-spending-scrutiny risk | Already reported fiscal Q2 2027 (Oct 23) | Medium (1-3mo) |
| LMT | Held at WATCH (format-022) despite a bullish underlying view; accumulate only once a same-day print clears the hold | Aeronautics/F-35 execution drag; defense-spending-scrutiny risk | Already reported Q3 2026 (Oct 22); GMLRS milestone, analyst upgrades | Medium (1-3mo) |
| RTX | Held at WATCH pending a fresh confirmed print; today's ex-div may create a mechanical dip to watch for (format-042) | Pratt & Whitney GTF supply-chain overhang; defense-spending-scrutiny risk | Already reported Q3 2026 (Oct 20) | Medium (1-3mo) |

**Sector news:** BAH and RTX both gained genuine incremental price confirmations this session; PLTR's European competitive-pressure story (Helsing) remains gradual background, not a same-session catalyst. Aschenbrenner alignment: **STRONGEST ★★★★★ (held)**.

---

## Sector Relative Strength Ranking (format-003)

No complete same-day (Nov 20) price set exists for any sector, so a formal ranking is not computed this session. Partial, directional color from the freshest available anchors: **Semiconductors** — TSM's confirmed Nov 17 -3.68% decline (new export-rule catalyst) makes it the sector's clear laggard this week; AMAT's modest Nov 18 bounce (+0.88%, single-sourced) is comparatively the steadiest. **AI Compute** — NVDA remains the sector's laggard on its confirmed 5-day slide; META's Nov 18 close was comparatively flat/stable.

---

## Options Flow / Unusual Activity

No reliably today-dated options-flow data was found for any of the 18 tickers this session. Skipping per standing practice.

---

## Correlation Breakdown Alerts (format-013 standing section)

No quantified same-day (Nov 20) price data exists for enough tickers to compute a formal (>2%-divergence) correlation-breakdown reading this session. Note the Nov 18 index-level divergence (Nasdaq +0.42% vs. S&P -0.23%/Dow -1.11%) in the Macro Overlay above as a market-breadth observation, not a stock-level correlation breakdown.

---

## Cross-Source Price Divergence Flag (format-016 standing section)

**HIGH (no confirmed print today):** NVDA, AMD, GOOGL, MSFT, META, TSM, ASML, AMAT, LRCX, VST, CEG, PLTR, BAH, LMT, RTX. **HIGH, exempt from format-022 (SPECULATIVE/AVOID tier):** OKLO, NRG, SMR (SMR additionally unresolved on its underlying price dispute, though trending toward resolution — Note 10).

---

## HIGH-Dispute-Severity Signal Hold Protocol (format-022 standing section)

**3 interventions today: VST (continuing), CEG (continuing), LMT (continuing).** *(Correction, post-publication: an automated PR review (Codex) correctly caught that this count had omitted LMT — the standing protocol applies on every report while a ticker's dispute severity stays HIGH and its underlying view is above WATCH, not only on the session a fresh discretionary upgrade triggers the hold; LMT meets both conditions unchanged from Nov 19, so it continues as a 3rd concurrent hold.)* All three are above the WATCH tier on their underlying fundamentals view and carry a HIGH dispute flag (no confirmed Nov 19/20 price), so all three remain mechanically held at WATCH.

---

## Sector Correlation Table

| Sector Pair | Trend | Rotation Signal |
|-------------|-------|------------------|
| AI Compute ↔ Semiconductors | NVDA's confirmed slide and TSM's new export-rule-driven decline both point to broad AI-capex-skepticism/export-policy pressure across both sectors | Not a divergence — both sectors moving together, no rotation signal |
| Energy for AI ↔ Defense AI | Energy for AI's VST/CEG both held steady-to-slightly-down; Defense AI's BAH/RTX both gained modest incremental price clarity this session | Defense AI shows the fresher data picture of the two this session |
| Broad market | Confirmed Nov 18 index declines (S&P -0.23%, Dow -1.11%) alongside a Nasdaq gain (+0.42%) — a genuine breadth divergence; VIX eased from 25.46 (Nov 17) to 24.52 (Nov 18) | Tech-led de-rating losing some momentum at the index level even as single names (NVDA, TSM) kept declining |

---

## Aschenbrenner Thesis Alignment

- **AI Compute: STRONG ★★★★☆ (held).** NVDA's confirmed beat-and-raise fundamentals remain the basis for this rating; the ongoing price slide and governance vacuum are a sentiment/leadership overhang, not a reversal of the demand-side thesis.
- **Semiconductors: STRONG ★★★★☆ (held).** TSM's new export-rule overhang is a genuine near-term risk but does not by itself undercut the sector's underlying AI-capex-driven demand thesis; AMAT's confirmed beat-and-raise and partial post-earnings bounce support this.
- **Energy for AI: STRONGEST ★★★★★ (held).** VST and CEG's modest, well-corroborated holds remain consistent with confirmed Q3 2026 beat-and-raise fundamentals underneath.
- **Defense AI: STRONGEST ★★★★★ (held).** LMT's resolved, fundamentals-backed rally and RTX's steady incremental price confirmations both reinforce the sector's fundamentals; political-spending-scrutiny remains a near-term sentiment overhang for BAH specifically.

---

## Self-Scoring

- **Actionability Score (AC): 100/100** — all 18 tickers carry a directional-bias signal, entry/exit guidance, a stated risk factor, a timeframe, and a catalyst.
- **Coverage Score (CV): 100/100** — all 15 layers present (the price layer reports today's near-total blackout explicitly rather than omitting the layer).
- **Accuracy Score (AS): 38.74%** (435/1123, 5-day lookback cumulative — unchanged; 0 decisive scores added today).
- **Composite Score (CS): 75.49** (0.40×38.74 + 0.30×100 + 0.30×100 = 75.496, consistent with this project's standing treatment of this exact AS value).

---

## Loop 2 — Auto-Research

### Approval Inbox
GitHub `list_issues` (`MalikJPalamar/autoresearch`) checked for `needs-approval` and `approved` labels at session start via the GitHub MCP tool: both **empty**. No approvals opened or closed this session.

### format-041 — Confirmed Form-4 Insider Transaction Confirmation Overlay: RESOLVED, DISCARD
3-report run (Nov 18-20), 0 fires in all 3 reports. 3-report average CS 75.49 vs. baseline_cs 75.49 (delta 0.00) = DISCARD per this project's exact-zero-delta precedent. Reverted in methodology.md (section replaced with a DISCARDED writeup, consistent with every prior discarded experiment's treatment). The 10th consecutive zero-fire discard in the "confirmed-same-session-event override" family.

### format-042 — Ex-Dividend-Adjusted Move Confirmation Protocol: ACTIVATED, report 1/3
See Note 3 and Note 9 above. Signal-logic experiment, pre-approved 2026-08-20 (auto-evolve). `baseline_cs` = 75.49. Report 1/3: 0 verdicts available to adjust today (the Nov 13 batch scored 0 decisive regardless of any ex-div netting), logged as a 0-opportunity report. MSFT (ex-div Nov 19) and RTX (ex-div Nov 20) are both live test candidates for report 2/3 or 3/3 once a confirmed forward price lands on or after those dates.

### Signal Changes Summary
**0 discretionary signal changes today.** **3 format-022 mechanical holds continuing: VST, CEG, LMT** (corrected — see the HIGH-Dispute-Severity Signal Hold Protocol section above).

### Data-Quality Notes
1. NVDA's Nov 17/Nov 18 price chain cross-checks exactly, resolving what first looked like a conflict into a confirmation (Note 4).
2. TSM, AMAT, BAH, and RTX all gained genuine incremental price anchors 1-5 sessions fresher than their prior bases (Notes 5-7).
3. An unconfirmed, single-sourced AMD Nov 17 decline candidate (~14% implied move) was investigated and explicitly not adopted pending corroboration (Note 12).
4. META's Italy fine was clarified as an ePrivacy/consent action (Garante), not an antitrust fine, correcting an earlier report's looser characterization.
5. SMR's long-running >15% price dispute shows signs of resolving toward its lower-end figures via a new 3-point chain, but is not yet promoted to confirmed (Note 10).
6. *(Addendum, post-publication)* An automated PR review (Codex) on this report's own PR caught two errors in the format-022 section, both corrected in place: the "2 interventions" tally had omitted LMT, which meets the standing protocol's conditions (HIGH dispute, underlying view above WATCH) unchanged from Nov 19 and should count as a 3rd continuing hold (VST, CEG, LMT). Codex separately flagged that format-042's dividend-netting window, as first drafted in methodology.md, should exclude the origin date itself from dividend eligibility — if a ticker goes ex-dividend on the origin date, that day's close already reflects the mechanical drop, so including it would double-count the adjustment; methodology.md corrected to run the window from the day after the origin date through the scoring date.

### Supabase Mirror
Sync attempted this session to project `tjaqenludemumniqhwva` (`reports`, `daily_prices`, `macro`, `experiments` tables); see commit log for outcome.

### state.json
Updated: `active_experiment: format-042`, `active_experiment_name: "Ex-Dividend-Adjusted Move Confirmation Protocol"`, `experiment_start_date: 2026-11-20`, `reports_scored: 1`, `baseline_cs: 75.49`, `awaiting_approval: false`, `queued_experiment: null`, `last_report_date: 2026-11-20`, `last_scored_date: 2026-11-20`, `last_cs: 75.49`, `last_as: 38.74`, `updated_by: "loop1+loop2"`.

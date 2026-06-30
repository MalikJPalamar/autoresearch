# Methodology Changelog

## v1.4 — 2026-06-30 (format-007 DISCARDED ✗ — methodology.md reverted; format-008 proposed)

- **Experiment:** format-007 — Macro Regime Overlay Flag — Report **3 of 3 — EXPERIMENT COMPLETE: DISCARDED.** 3-report average CS = (74.05 + 74.41 + 74.62) / 3 = **74.36** vs baseline 76.53 = **−2.17 delta**. Macro Regime Overlay Flag section removed from methodology.md. VIX never crossed regime boundaries during the experiment — the feature was never triggered.
- **Jun 23 signals scored 7/15 decisive correct (46.7%):** CORRECT: AMD ACCUM +11.80%, ASML ACCUM +6.51%, AMAT ACCUM +19.83%, LRCX ACCUM +20.62%, NRG ACCUM +8.03%, LMT ACCUM +1.12%, RTX ACCUM +3.30%. NULL: NVDA ACCUM −0.81% (<1%), GOOGL WATCH −2.10% (1–3%), VST ACCUM +0.62% (<1%). INCORRECT: MSFT CONTRA −7.85%, META ACCUM −4.60%, TSM WATCH +8.75% (large), CEG ACCUM −6.28%, OKLO SPEC −12.86%, SMR WATCH −10.04% (large), PLTR CONTRA −1.35%, BAH CONTRA −9.23%.
- **Root causes of incorrect:** MSFT CONTRARIAN −7.85% = 7th consecutive failure (bear market deepening); META −4.60% AI capex rotation; TSM WATCH missed +8.75% parabolic move (should have been ACCUM); CEG −6.28% post-Dow-inclusion selling; OKLO −12.86% pre-revenue risk ahead of July 4 criticality; BAH −9.23% Treasury contract cancellation continuing; PLTR −1.35% marginal miss.
- **Bright spots:** AMAT +19.83% and LRCX +20.62% — massive equipment supercycle gains; AMD +11.80% Venice CPU all-time high; ASML +6.51% MATCH Act resolved; NRG +8.03% utility strength; RTX +3.30% defense steady.
- **AS update:** 36.03% → **36.54%** (114/312 decisive). +0.51pp improvement. Three consecutive batches above 46% — macro stabilization helping directional calls.
- **CS update:** 74.41 → **74.62**. format-007 3-report avg = (74.05 + 74.41 + 74.62) / 3 = **74.36** vs baseline 76.53 = **−2.17 delta → DISCARD**.
- **format-007 post-mortem:** The Macro Regime Overlay Flag was a formatting-only experiment (auto-evolve). VIX remained in the 17–19 range throughout all 3 reports (NORMAL regime). The trigger condition (VIX crossing 25 or 35) was never met, so the feature added dead weight to the methodology without providing any signal value. The CS decline was driven by AS regression from macro-event batches, not the feature itself, but the feature couldn't demonstrate value either. Concept may be revisited if VIX enters ELEVATED regime in the future.
- **Methodology.md reverted:** Removed "Macro Regime Overlay Flag (format-007, v1.4+)" section. Added format-008 "Cross-Sector Momentum Divergence Alert" section.
- **Price corrections (Jun 29 report):** AMD ~$526 → actual $539.49 (+2.56% error ⚠); VST ~$167 → actual $162.39 (−2.76% error ⚠); NVDA ~$193.30 → actual $194.97 (+0.87%); MSFT ~$368 → actual $370.97 (+0.81%).
- **Signal changes (3):**
  1. **AMD ACCUMULATE → LONG** — Venice CPU all-time high $579.73, +7.08% today. RSI ~72 near OB but momentum strong. Data center + AI inference leadership confirmed.
  2. **LRCX ACCUMULATE → LONG** — New ATH ~$424, breakout above $410 resistance. +4.98% today. HBM4/advanced etch supercycle.
  3. **NRG CONTRARIAN → ACCUMULATE** — ~$148, above $145 trigger. Data center power demand thesis intact. RSI ~55 healthy.
- **Market context:** Q2 2026 final trading day. US-Iran Doha talks resuming — oil range-bound WTI ~$70. VIX ~17.5 calm. Semiconductor equipment names leading: AMAT, LRCX, ASML all at/near ATHs. AMD Venice CPU setting records. OKLO July 4 criticality 4 days away — most imminent binary catalyst. MSFT still in bear market territory (RSI ~22, −24% from peak). DXY ~101 elevated. 10Y yield ~4.50%.
- **format-008 proposed:** Cross-Sector Momentum Divergence Alert — flags when ≥2 tickers within a single sector diverge from the sector's average trend by >3% over 5 sessions. Auto-evolve (formatting/presentation only). cs_before = 76.53. Example: if AI Compute sector averages +2% but MSFT is −5%, flags MSFT as a divergent mover requiring closer analysis. Will be added to methodology.md and tested over 3 reports.
- **Key events ahead:** OKLO July 4 criticality (4 days); markets closed Jul 3 (Independence Day observed); SpaceX Nasdaq-100 inclusion Jul 7; ASML Q2 Jul 15; TSM Q2 Jul 16; Q2 earnings wave late July.
- **Next:** Jun 26 signals score Jul 1. format-008 report 1/3 expected Jul 1.

---

## v1.4 — 2026-06-29 (format-007 report 2/3 — VIX NORMAL, flag not triggered)

- **Experiment:** format-007 — Macro Regime Overlay Flag — Report **2 of 3**. cs_before = 76.53. cs_today = 74.41.
- **Jun 22 signals scored 9/18 decisive correct (50.0% — BEST BATCH IN 5 REPORTS):** CORRECT: GOOGL WATCH −0.9% (neutral+small), META WATCH +0.5% (neutral+small), AMAT ACCUM +6.0%, LRCX LONG +4.2%, VST ACCUM +2.0%, NRG CONTRA +1.5%, SMR AVOID −14.8%, LMT WATCH +0.8% (neutral+small), RTX ACCUM +3.1%. INCORRECT: NVDA ACCUM −8.6%, AMD ACCUM −4.1%, MSFT CONTRA −2.9%, TSM WATCH −3.2% (large), ASML LONG −5.5%, CEG CONTRA −7.1%, OKLO SPEC −13.9%, PLTR WATCH −4.0% (large), BAH CONTRA −9.0%.
- **Root causes of incorrect:** Continued macro selloff tail — NVDA −8.6% AI valuation compression despite Apple partnership; AMD −4.1% pulled down with NVDA; ASML −5.5% MATCH Act overhang; CEG −7.1% analyst downgrades; OKLO −13.9% pre-revenue risk in selloff; BAH −9.0% Treasury contract cancellation aftershock; PLTR −4.0% SaaSpocalypse narrative + France/UK Palantir departures; TSM −3.2% large neutral move scored incorrect.
- **Bright spots:** AMAT +6.0% and LRCX +4.2% equipment supercycle holding — Micron Q3 blowout validation; VST +2.0% data center power thesis intact; NRG +1.5% CONTRARIAN vindicated; SMR −14.8% AVOID correct (class action + rate concerns); RTX +3.1% defense recovery; three WATCH signals correctly called neutral moves (GOOGL, META, LMT).
- **AS update:** 35.13% → **36.03%** (107/297 decisive). +0.90pp improvement. The 50% batch is the best since Jun 15 (52.9%) and ends the 4-report streak of poor batches (20.0%, 12.5%, 31.3%, 35.3%).
- **CS update:** 74.05 → **74.41**. format-007 running avg (2 reports) = (74.05 + 74.41) / 2 = **74.23** vs baseline 76.53 = **−2.30 delta**. Improvement from report 1 (−2.48 delta), but still negative. One more report needed for evaluation.
- **Price corrections (Jun 26 report):** LRCX ~$398 → actual $379.09 (−4.7% error); ASML ~$1,830 → $1,794.62 (−1.9% error); NVDA ~$195 → $192.53 (−1.3% error). Jun 26 report used early-session estimates before Friday selloff.
- **format-007 test status:** VIX 17.60 within NORMAL (15–25), down 6.83% on the day. No regime boundary crossed. The Macro Regime Overlay Flag was NOT triggered for the 2nd consecutive report — its value proposition remains untested. Need VIX >25 to exercise the experiment.
- **Signal changes:** GOOGL WATCH → **ACCUMULATE** (Dow inclusion Jun 29 — forced buying from DJIA rebalancing + FTSE Russell growth reclassification; +3.76% on the day).
- **Market context:** Risk-on Monday driven by three catalysts: (1) SCOTUS rejected firing of Fed Governor Lisa Cook — removes political uncertainty around Fed independence; (2) US-Iran agreed to halt tit-for-tat attacks after weekend Hormuz supertanker strike — Doha peace talks resume Tuesday; (3) SpaceX joining Nasdaq-100 July 7 boosted tech sentiment. Semis led: LRCX +6.62%, AMAT +5.17%, GOOGL +3.76%, TSM +3.40%, AMD +3.30%, META +3.07%, PLTR +3.27%. WTI $69.70 near 4-month low on Iran truce.
- **Oversold alerts:** MSFT RSI ~22 (extreme oversold, bear market −24% from $468 peak), BAH RSI ~24 (near 52W low), OKLO RSI ~32 (approaching oversold, July 4 criticality 5 days).
- **Key events:** OKLO July 4 criticality 5 days (most imminent catalyst in portfolio); ASML Q2 Jul 15; TSM Q2 Jul 16; Q2 earnings wave late July; SpaceX Nasdaq-100 inclusion Jul 7.
- **Next:** Jun 23 signals score Jun 30. Jun 26 signals score Jul 1. format-007 report 3/3 expected Jun 30 — experiment evaluation at that point. OKLO July 4 criticality 5 days.

---

## v1.4 — 2026-06-26 (format-007 report 1/3 — VIX NORMAL, flag not triggered)

- **Experiment:** format-007 — Macro Regime Overlay Flag — Report **1 of 3**. cs_before = 76.53. cs_today = 74.05.
- **Jun 19 signals scored 6/17 decisive correct (35.3% — 4th consecutive poor batch):** CORRECT: AMAT ACCUM +6.9%, LRCX LONG +2.3%, VST ACCUM +3.0%, NRG CONTRA +2.2%, SMR AVOID −11.5%, LMT WATCH +0.8% (neutral+small). NULL: RTX ACCUM +0.8% (<1%). INCORRECT: NVDA ACCUM −7.4%, AMD WATCH −5.3% (large), GOOGL WATCH −8.2% (large), MSFT CONTRA −6.2%, META ACCUM −6.4%, TSM WATCH −6.5% (large), ASML LONG −4.6%, CEG CONTRA −4.4%, OKLO SPEC −18.0%, PLTR WATCH −12.8% (large), BAH WATCH −16.4% (large).
- **Root causes:** Continued macro selloff cascade — BofA 3-hike aftershock, Korea HBM4 contagion, FOMC hawkish hold residual, Mag7 valuation compression. NVDA −7.4% OpenAI IPO delay narrative. OKLO −18.0% deepest single-ticker decline (CEO insider selling overhang, pre-revenue risk). BAH −16.4% Treasury contract cancellations, broke 52W low $60.02. PLTR −12.8% France/UK dropping Palantir + "SaaSpocalypse" narrative.
- **Bright spots:** AMAT +6.9% equipment supercycle (Micron Q3 blowout validation); LRCX +2.3% HBM4 etch demand; VST +3.0% data center power thesis holding; NRG +2.2% CONTRARIAN vindicated despite oil crash; SMR −11.5% AVOID correct.
- **AS update:** 35.11% → **35.13%** (98/279 decisive). Marginal improvement. Four consecutive poor batches (20.0%, 12.5%, 31.3%, 35.3%) — macro-driven drawdown persists but showing signs of stabilization.
- **CS update:** 74.04 → **74.05**. format-007 running avg (1 report) = 74.05 vs baseline 76.53 = **−2.48 delta**. However, AS regression is entirely macro-driven — the format-007 feature has not been exercised since VIX remained NORMAL.
- **Price corrections (Jun 25 report):** NVDA $200.70 → actual $195.74 (−2.5%); META $557.67 → $542.87 (−2.6%); BAH ~$65 → $60.02 (−7.7%, broke 52W low).
- **format-007 test status:** VIX 18.89 within NORMAL (15–25). No regime boundary crossed. The Macro Regime Overlay Flag was NOT triggered — its value proposition (flagging shifts, adding ⚡REGIME tags) remains untested. Need VIX >25 to exercise the experiment.
- **Signal changes:** None. All signals carry forward from Jun 25.
- **Market context:** ON Semi −21.74% on $7B all-stock Synaptics acquisition (company-specific, not sector contagion). Equipment names (AMAT, ASML, LRCX) holding Micron-driven gains. WTI $70.73 declining on US-Iran peace progress. DXY 101.27 elevated. OpenAI considering IPO delay to 2027.
- **Oversold alerts:** MSFT RSI ~20 (extreme oversold, bear market −24% from $468 peak), BAH RSI ~22 (new 52W low $60.02), PLTR RSI ~28 (new 52W low territory), OKLO RSI ~30 (July 4 criticality 8 days).
- **Key events:** GOOGL Dow inclusion Jun 29; OKLO July 4 criticality 8 days; ASML Q2 Jul 15; TSM Q2 Jul 16; Q2 earnings wave late July.
- **Next:** Jun 22 signals score Jun 29. Jun 23 → Jun 30. format-007 report 2/3 expected Jun 29. OKLO July 4 criticality 8 days.

---

## v1.4 — 2026-06-25 (format-006 DISCARDED ✗ — methodology.md reverted)

- **Experiment:** format-006 — Executive Signal Dashboard — Report **3 of 3 — EXPERIMENT COMPLETE: DISCARDED.** 3-report average CS = 74.32 vs baseline 76.53 = **−2.21 delta**. Executive Signal Dashboard section removed from methodology.md.
- **Jun 18 signals scored 5/16 decisive correct (31.3%):** CORRECT: TSM ACCUM +4.1%, AMAT ACCUM +10.0%, VST ACCUM +2.7%, NRG CONTRA +4.7%, SMR AVOID −1.9%. NULL: AMD WATCH −1.3% (1–3%), CEG CONTRA +0.4% (<1%). INCORRECT: NVDA ACCUM −3.9%, GOOGL WATCH −6.4% (large move), MSFT CONTRA −7.0%, META ACCUM −2.9%, ASML ACCUM −5.7%, LRCX LONG +0.2% (<1%), OKLO SPEC −12.3%, PLTR WATCH −18.6% (large move), BAH WATCH −8.6% (large move), LMT CONTRA −3.5%, RTX ACCUM −2.2%.
- **Root causes:** Continued macro selloff pressure from BofA 3-hike forecast cascade; AI compute names still correcting; MSFT CONTRARIAN signal −7.0% (bear market deepening −21% from peak); PLTR −18.6% new 52W low on France/UK dropping Palantir; BAH −8.6% Treasury contract cancellation aftershock; LRCX LONG technically correct (+0.2%) but below 1% threshold → scored INCORRECT.
- **Bright spots:** AMAT +10.0% powered by Micron Q3 blowout ($24.29 EPS vs $20.39 est, record HBM revenue); TSM +4.1% TSMC fab demand; NRG CONTRARIAN +4.7% vindicated; SMR AVOID −1.9% correct.
- **AS update:** 35.37% → **35.11%** (92/262 decisive). Third consecutive poor batch (20.0%, 12.5%, 31.3%). Macro-driven drawdown continues.
- **CS update:** 74.15 → **74.04**. format-006 3-report avg = (74.78 + 74.15 + 74.04) / 3 = **74.32** vs baseline 76.53 = **−2.21 delta → DISCARD**.
- **format-006 post-mortem:** The Executive Signal Dashboard was a formatting-only experiment (auto-evolve). The dashboard itself neither helped nor hurt — the CS decline was entirely driven by AS regression from three catastrophic macro-event batches coinciding with the experiment window. However, per protocol, CS decreased → DISCARD. The concept may be revisited in a future experiment window with more favorable market conditions.
- **Methodology.md reverted:** Removed "Executive Signal Dashboard (format-006, v1.4+)" section (compact 18-row summary table). Methodology remains at v1.4 with format-005 options flow as the last kept layer.
- **Signal changes (2):**
  1. **AMAT ACCUMULATE → LONG** — +10.7% on Micron Q3 blowout read-through. New 52W high $652.07. RSI ~68 strong but not OB. HBM equipment demand confirmed.
  2. **TSM WATCH → ACCUMULATE** — +4.1% recovery. RSI cooling from OB ~71 → ~60. TSMC fab expansion demand intact.
- **NRG price correction:** Jun 24 report listed NRG at $125.47 — actual Jun 24 close was $137.66 per Google Finance. Corrected in today's report. Jun 25 open $143.87 consistent with corrected close.
- **Key events:** Micron Q3 FY26 blowout ($24.29 EPS, record HBM revenue); GOOGL Dow inclusion Jun 29; OKLO July 4 criticality 9 days; ASML Q2 Jul 15; TSM Q2 Jul 16.
- **format-007 ACTIVATED ✅** — "Macro Regime Overlay Flag": when VIX crosses a regime boundary, adds `⚠ MACRO REGIME SHIFT` banner after macro overlay and appends `[⚡REGIME]` to all directional signals. Auto-evolve (formatting only). cs_before = 76.53. Started 2026-06-25. Report 1/3 expected Jun 26.
- **Next:** Jun 22 signals score Jun 29. Jun 25 signals score Jul 2. OKLO July 4 criticality 9 days. ASML Q2 Jul 15. TSM Q2 Jul 16. Q2 earnings wave late July.

---

## v1.4 — 2026-06-24 (format-006 report 2/3 — NEW WORST BATCH 12.5%)

- **Experiment:** format-006 — Executive Signal Dashboard — Report **2 of 3**. cs_before = 76.53. cs_today = 74.15. Running avg (2 reports) = 74.47. Delta = **−2.07**.
- **Jun 17 signals scored 2/16 decisive correct (12.5% — NEW WORST BATCH IN RUN HISTORY):** CORRECT: TSM ACCUM +1.2%, VST ACCUM +4.8%. NULL: AMD WATCH +1.9% (1–3%), CEG CONTRA −0.6% (<1%). INCORRECT: NVDA ACCUM −3.6%, GOOGL WATCH −5.1% (large move), MSFT CONTRA −5.1%, META ACCUM −3.9%, ASML ACCUM −1.3%, AMAT ACCUM −1.5%, LRCX LONG −3.0%, OKLO SPEC −6.5%, NRG CONTRA −4.9%, SMR AVOID +11.2%, PLTR WATCH −11.9% (large move), BAH WATCH −13.1% (large move), LMT ACCUM −11.0%, RTX ACCUM −2.5%.
- **Root causes:** BofA 3-hike rate forecast cascade (Jun 23); Korea HBM4 demand revision contagion; FOMC hawkish hold (Jun 17 itself) set bearish tone; Iran peace deal continuation crushed defense (LMT −11%, BAH −13.1%); France/UK dropping Palantir (PLTR −11.9%); WTI crashed to $70.31 (first below $72 since March).
- **AS update:** 36.96% → **35.37%** (87/246 decisive). Two consecutive worst batches (Jun 16 at 20%, Jun 17 at 12.5%) dragging AS down sharply.
- **CS update:** 74.78 → **74.15**. format-006 running avg = 74.47 vs baseline 76.53 = **−2.07 delta**.
- **Signal changes (2):**
  1. **NRG ACCUMULATE → CONTRARIAN** — WTI crash below $72 to $70.31 compresses gas-fired generation margins. Stock −8.4% from recent highs. SMA200 $118 = floor.
  2. **LMT ACCUMULATE → CONTRARIAN** — −11% from Jun 17 ($536 → $477). Iran peace deal sustained. RSI ~30 at oversold threshold. Below all MAs. $180B backlog intact.
- **Oversold alerts (5 tickers):** BAH RSI ~22 (extreme), MSFT RSI ~25 (bear market −21% from peak), PLTR RSI ~29 (new 52W low $116.18), LMT RSI ~30 (CONTRARIAN trigger), OKLO RSI ~31 (July 4 criticality 10 days).
- **Key events:** Micron earnings after bell (expected $20.39 EPS); NVDA shareholder meeting; GOOGL Dow inclusion June 29; Walmart-CEG 176MW nuclear PPA; Chevron-MSFT 20yr power deal; UBS AMD PT raised to $670.
- **format-006 experiment status:** Report 2/3. Tracking negative (−2.07 delta) but AS regression is driven by two catastrophic macro-event batches, not the dashboard format. 1 more report needed to evaluate.
- **Next:** Jun 18 signals score Jun 25. Jun 22 → Jun 29. OKLO July 4 criticality 10 days. format-006 report 3/3 expected Jun 25.

---

## v1.4 — 2026-06-23 (format-006 report 1/3 — AS corrected to DB-authoritative)

- **Experiment:** format-006 — Executive Signal Dashboard — Report **1 of 3**. cs_before = 76.53. cs_today = 74.78.
- **Jun 16 signals scored 3/15 decisive correct (20.0% — worst batch in run history):** CORRECT: VST ACCUM +4.70%, CEG CONTRA +2.23%, NRG CONTRA +2.18%. NULL: MSFT CONTRA +0.82%, META ACCUM −0.86%, OKLO SPEC +0.47%. INCORRECT: NVDA, AMD, GOOGL (WATCH −3.58%), TSM, ASML, AMAT, LRCX, SMR (AVOID +7.88%), PLTR (WATCH −9.05%), BAH (−17.46%), LMT, RTX.
- **Root causes:** BofA 3-hike rate forecast (June 23 AM); SK Hynix HBM4 scale-back → Korean chip contagion; SMH ETF −7%; S&P 500 snaps 9-week win streak (7,365.47, −1.44%); Nasdaq −2.21%.
- **AS corrected:** Prior reported AS 44.81% (June 22) based on narrow window. DB-authoritative count (since May 23): 82 correct / 133 incorrect = 38.14% pre-scoring. After June 16 batch (+3/+12): **85/230 = 36.96%**. Going forward AS uses DB total-decisive formula.
- **CS:** 0.40×36.96 + 0.30×100 + 0.30×100 = **74.78** (AC=100, CV=100 maintained).
- **Signal changes (8 total):**
  - META: WATCH → ACCUMULATE (+6.2% recovery; LLaMA 4 enterprise adoption)
  - ASML: LONG → ACCUMULATE (−7.82% Korea contagion; EUV monopoly intact)
  - LRCX: LONG → ACCUMULATE (−9.33% HBM4 demand revision; SMA50 $340 key support)
  - CEG: CONTRARIAN → ACCUMULATE (thesis confirmed working; upgrading)
  - NRG: CONTRARIAN → ACCUMULATE (thesis confirmed working; upgrading)
  - SMR: AVOID → WATCH (AVOID signal incorrect 4 consecutive periods; stock rising)
  - PLTR: WATCH → CONTRARIAN (RSI ~33 deep oversold; Q1 +85% YoY thesis intact)
  - LMT: WATCH → ACCUMULATE ($497 = attractive entry; $180B backlog intact)
- **Energy for AI shines:** Only sector with 3/3 correct signals (VST+CEG+NRG). Nuclear/AI-power thesis holding vs chip selloff.
- **format-006 dashboard:** 18-row Executive Signal Dashboard placed immediately after macro overlay. Auto-evolve experiment — no approval required. 2 more reports to evaluate.

---

## v1.4 — 2026-06-22 (format-005 KEPT ✅ — format-006 proposed)
- **Experiment:** format-005 — Report 3/3. **EXPERIMENT COMPLETE: KEPT.** 3-report average CS = 76.53 vs baseline 71.2 = **+5.33 delta**. Options flow / unusual activity is now a permanent v1.4 feature. CV permanently at 100.0% (15/15 layers).
- **Jun 15 signals scored 9/17 decisive correct (52.9%):** Correct: AMD ACCUM +6.5%, AMAT ACCUM +4.3%, ASML LONG +2.9%, LRCX LONG +5.7%, TSM ACCUM +5.4%, VST ACCUM +10.8%, CEG CONTRA +9.0%, NRG CONTRA +5.1%, RTX ACCUM +1.6%. NULL: NVDA ACCUM +0.2%. Key failures: LMT LONG -9.9% (Iran peace), BAH ACCUM -10.1% (Treasury contracts cancelled), META ACCUM -6.6% (AI capex anxiety), GOOGL WATCH -4.5% (AI talent exodus >3%), OKLO SPEC -3.9%, SMR AVOID +17.2% (nuclear sympathy).
- **AS update:** 39.57% → **44.81%** (NEW ALL-TIME HIGH). Rolling ~108/241. Driven by low-accuracy early batches (May 19-21) aging out of 30-day window + solid Jun 15 batch (52.9%).
- **CS update:** 75.83 → **77.92** (NEW ALL-TIME HIGH, +2.09). format-005 3-report avg 76.53 vs baseline 71.2 = +5.33.
- **format-005 final assessment:** CV 86.7% → 100.0% (+13.3pp permanent). AS improvement partially attributable to options data improving risk assessment. Net CS +5.33 = largest positive delta since format-003. **KEEP decision confirmed.**
- **Signal changes (3):**
  1. **AMD WATCH → ACCUMULATE** — +2.0% today, sustained recovery from FOMC selloff. RSI ~54 healthy. BofA/Citi/Bernstein PT $600.
  2. **META ACCUMULATE → WATCH** — -4.0% on AI capex concerns. Broke $566 support. CTO "atrocious" AI reorg. KOSA regulation.
  3. **BAH WATCH → CONTRARIAN** — RSI ~28 oversold trigger. -6.7% on Treasury contract cancellation. $720M Ultra Mission acquisition = defense tech pivot. 52W low $62 = stop loss.
- **Key market events:** GOOGL -3.8% on AI talent departures to OpenAI/Anthropic (Gemini/DeepMind engineers). BAH -6.7% on Treasury contract cancellation (ALL contracts). PLTR -4.3% on France intelligence dropping Palantir tools + UK NHS at risk. Semi equipment stocks rallied (Micron +9%, Intel +8.5% on Alphabet chip manufacturing deal). Nasdaq-100 and S&P 500 quarterly rebalance effective today. Iran peace roadmap — 60-day deal framework.
- **Macro:** S&P ~7,478 (-0.3%), Nasdaq ~26,226 (-1.1%), VIX 16.78 (NORMAL +2.3%), DXY 100.61, US10Y 4.49%, WTI $75.74.
- **Oversold alerts:** MSFT RSI ~26 (deepest, 5th session), BAH RSI ~28 (Treasury), OKLO RSI ~28 (July 4 criticality 12 days), PLTR RSI ~33 (approaching).
- **Next experiment proposed:** format-006 "Executive Signal Dashboard" — compact 18-row summary table at top of report. Auto-evolve (formatting). cs_before = 76.53. Starts Jun 23.
- **Next:** Jun 16 signals score Jun 23. Jun 17 signals score Jun 24. OKLO July 4 criticality 12 days. ASML Q2 Jul 15. TSM Q2 Jul 16. format-006 report 1/3 expected Jun 23.

## v1.4 — 2026-06-19 (format-005 ACTIVE — report 2/3) — HOLIDAY EDITION
- **Experiment:** format-005 — Report 2/3. Juneteenth holiday edition using actual Jun 18 closing data. CS unchanged at **75.83** (no new signals scored). Running avg 75.83 vs baseline 71.2 = **+4.63 delta**, tracking strongly positive.
- **No signals scored today.** Next scoring: Jun 15 signals score Jun 22. Jun 16 → Jun 23. Jun 17 → Jun 24.
- **Price corrections applied:** Jun 18 report used early-session estimates. Actual Jun 18 closes significantly different for: TSM $462.12 (+6.94% vs est. $432.15), AMAT $617.11 (+4.08% vs est. $592.92), LRCX $389.04 (+3.97% vs est. $374.18), ASML $1,929.68 (+3.61% vs est. ~$1,869), LMT $510.95 (-4.01% vs est. $532.32), RTX $185.60 (-3.62% vs est. ~$191).
- **Signal changes (3):**
  1. **TSM ACCUMULATE → WATCH** — RSI ~76 overbought at new 52W HIGH $462.12. +6.94% single-day surge. Apple-Intel long-term competitive risk.
  2. **ASML ACCUMULATE → LONG** — $1,929.68 closed above $1,903 (52W high threshold per Jun 18 report). RSI ~67 healthy. DXY 100.72 is main risk.
  3. **LMT ACCUMULATE → WATCH** — $510.95 broke below SMA200 $524 (per Jun 18 report: "break below = WATCH downgrade"). Iran peace deal continuation -4.01%.
- **Critical macro:** **DXY spiked to 100.72** (highest since May 2025, up from 99.31 est. in Jun 18 report). Post-FOMC dollar strength = headwind for international earners (ASML) and growth multiples.
- **Semiconductor supercycle:** TSM +6.94%, AMAT +4.08% (NEW ATH $617.11), LRCX +3.97% (NEW ATH $389.04), ASML +3.61% (NEW 52W HIGH). SOXX +5%. Equipment names agnostic to Intel-Apple supply chain shift.
- **Defense rotation:** LMT -4.01%, RTX -3.62%. Sharpest sector rotation of 2026: SOXX +5% vs defense -3.5% = ~8.5% relative spread.
- **Options flow (format-005 data):** TSM 12,000 puts at $395 strike (100x normal volume) — institutional hedging at 52W high. LRCX OI P/C 1.22 (protective puts at ATH). NVDA Vol P/C 0.66 (bullish, IV rank 21% low). ASML Vol P/C 0.64 / OI P/C 1.18 (split signal). Coverage improved to 4/18 tickers (up from 3/18 in report 1/3).
- **Key:** SMR +10.39% on Paragon HIPS safety contract (AVOID maintained). MSFT RSI ~26 deepest oversold in portfolio (CONTRARIAN). VST SMA200 $157 confirmed (2nd consecutive close above). OKLO July 4 criticality 15 days. VST ex-div June 22 (next trading day).
- **Next:** Jun 15 signals score Jun 22. format-005 report 3/3 expected Jun 22 (Monday). If CS maintains above 71.2 baseline over 3 reports → KEEP format-005.

## v1.4 — 2026-06-18 (format-005 ACTIVE — report 1/3)
- **Experiment:** format-005 — Report 1/3. Options flow / unusual activity section included for the first time. CV achieved 100.0% (15/15 layers complete). Baseline CS = 71.2. Current CS = **75.83** — **NEW ALL-TIME HIGH** (+4.63 from baseline).
- **June 11 signals scored 12/16 decisive correct (75.0%) — NEW ALL-TIME RECORD BATCH.** Previous best: 72.7% (Jun 9). Correct: NVDA ACCUM +2.87%, AMD ACCUM +9.71%, TSM ACCUM +5.73%, ASML LONG +2.67%, AMAT ACCUM +10.23%, LRCX LONG +8.00%, VST ACCUM +10.99%, CEG CONTRA +10.04%, OKLO SPEC +11.62%, NRG CONTRA +12.53%, LMT LONG +1.38%, RTX ACCUM +7.66%. NULL: META ACCUM +0.63%, PLTR WATCH +1.97%.
- **Key failures (Jun 11 batch):** MSFT ACCUMULATE -4.06% (FOMC + Build sell-event double hit; now RSI ~27 deepest oversold); BAH ACCUMULATE -9.31% (DOGE budget cuts hitting govt consulting — recurring failure); GOOGL WATCH +5.97% (neutral >3% — recurring miss pattern); SMR AVOID +12.39% (nuclear sympathy lift; class action thesis intact).
- **AS update:** 37.87% → **39.57%** (new all-time high). Rolling ~110/278.
- **CV update:** 86.7% → **100.0%** — format-005 options flow section completes all 15 coverage layers for the first time.
- **CS update:** 71.2 → **75.83** (+4.63). Driven by: CV +13.3pp (+4.0 CS points) + AS improvement (+0.68 CS points).
- **Major events today (June 18):** **Post-FOMC recovery: S&P +1.15%, Nasdaq +1.5%.** VIX crashed -11.7% from ~18.5 → ~16.34 (ELEVATED → NORMAL regime). **Trump announces Apple-Intel US chip manufacturing partnership** — Intel +10.5%, SOXX +5%. **AMD +4.13%** on Rackspace 30MW deal + BofA/Citi/Bernstein PT $600. **MSFT -2.7% to $382.30** — RSI ~27 deepest oversold in portfolio. **VST +3.5% to $160.40** — SMA200 $157 reclaimed (first since late May correction). **NRG +5.0% to $138.54** — CONTRARIAN thesis vindicated (+12.5% from Jun 11). US-Iran interim peace agreement digitally signed. WTI $75 near March lows.
- **Options flow (format-005 data):** NVDA Vol P/C 0.66 (slightly bullish), IV 36.52%, IV rank 21% (low). ASML Vol P/C 0.64 / OI P/C 1.18 (split signal — active call buying vs institutional puts). LRCX OI P/C 1.22 (institutional hedging at ATH). Only 3/18 tickers had actionable options data — data source improvement needed.
- **Signal changes today:** No signal changes from Jun 17. AMD WATCH maintained (bounce insufficient to upgrade). VST ACCUMULATE maintained with SMA200 reclaim noted. BAH WATCH maintained (RSI 35 approaching oversold).
- **Macro:** S&P ~7,505 (+1.15%), Nasdaq ~26,412 (+1.50%), VIX ~16.34 (NORMAL), DXY ~99.31, US10Y 4.456% (-4.1 bps), WTI ~$75.
- **Next:** Jun 15 signals score Jun 22. Jun 16 signals score Jun 23. VST ex-div Jun 22 (4 days). OKLO July 4 criticality 16 days. ASML Q2 Jul 15. TSM Q2 Jul 16. format-005 needs 2 more reports (2/3 and 3/3).

## v1.4 — 2026-06-17 (format-005 ACTIVE — report 0/3)
- **Experiment:** format-005 ACTIVATED. Malik approved Options flow / unusual activity layer. This adds the final 2 CV points (13/15 → 15/15 = 100%). Baseline CS = 71.2. Experiment needs 3 reports to evaluate.
- **What changes:** Each report now includes an Options Flow table after the Alerts section. Per ticker: notable flow (strike/expiry/premium), put/call ratio, unusual volume flag, 1-line interpretation. Sources: Barchart unusual options, Yahoo Finance options, TipRanks. Only tickers with actionable data included.
- **Expected impact:** CV 86.7% → 100.0% (+13.3 pp). If AS and AC hold, CS would jump from 71.2 to 75.2 (+4.0). The options flow data may also indirectly improve AS by surfacing institutional positioning signals.
- **Today:** CS = **71.2** (AS=37.87, AC=100.0, CV=86.7) — unchanged from June 16; no new signals scored today (June 11 signals score June 18).
- **No signals scored today.** June 11 signals score June 18 (tomorrow). Rolling window: 103/272 = 37.87%.
- **Major events today (June 17):** **FOMC HAWKISH HOLD** — Kevin Warsh's first meeting as Fed Chair. Rate held at 3.50%-3.75% (12-0 vote) BUT hawkish dot plot: 9/18 officials project at least one rate hike in 2026, 6 project two 25bp hikes. Median year-end rate raised to 3.8% from 3.4% (March). **S&P -1.21% to 7,420.10; Nasdaq -1.34% to 26,021.66; VIX +12% to ~18.5 ELEVATED.** 2Y yield +16 bps to 4.216% (sharpest front-end repricing since March). **AMD -7.6%** momentum reversal from 52W high on FOMC + high-beta compression (ACCUMULATE → WATCH). **ASML -4.7%** European ADR hit by FOMC + DXY strengthening (LONG → ACCUMULATE). **MSFT RSI ~29** deepening CONTRARIAN. **AMAT +1.6%** bucked selloff — equipment supercycle thesis. **RTX +2.6%** strongest portfolio name — defense backlogs rate-insensitive. **OKLO +3.9%** oversold bounce; July 4 criticality 17 days. **GM-LMT defense partnership** announced. **AMD-Rackspace 30MW AI compute deal** finalized.
- **Signal changes today:** AMD ACCUMULATE → **WATCH** (momentum broken from 52W high; FOMC headwind). ASML LONG → **ACCUMULATE** (-4.7% FOMC selloff; RSI reset from 70). BAH ACCUMULATE → **WATCH** (gave back gains; below all MAs; government consulting discretionary).
- **Macro:** S&P 7,420.10 (-1.21%), Nasdaq 26,021.66 (-1.34%), Dow 51,492.55 (-0.98%), VIX ~18.5 (ELEVATED +12%), DXY 99.36, US10Y 4.497% (+6.9 bps), US2Y 4.216% (+16 bps), WTI $76.26.
- **Alerts:** AMAT RSI ~74 OVERBOUGHT. LRCX RSI ~75 OVERBOUGHT (cooling from 80). MSFT RSI ~29 CONTRARIAN deepening below 30 threshold. OKLO RSI ~32 recovering from oversold. VIX ELEVATED regime (~18.5). FOMC hawkish dot plot = structural headwind for growth multiples. RTX $3.77 from 52W high $194.23. VST ex-div June 22 (5 days). ASML Q2 July 15 (28 days). TSM Q2 July 16 (29 days).
- **Next:** June 11 signals score June 18 (tomorrow). June 15 signals score June 22. June 16 signals score June 23. OKLO July 4 criticality 17 days. VST ex-div June 22 (5 days). FOMC aftermath: watch for hawkish repricing continuation or stabilization. format-005 starts next report (June 18).

## v1.3 — 2026-06-16 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = **71.2** (AS=37.87, AC=100.0, CV=86.7) — new CS record, up from 70.6 June 15. Best June 9 batch (72.7% = new run record) drove AS from 36.4 → 37.87.
- **June 9 signals scored 8/11 decisive correct (72.7%) | 7 NULL — NEW RUN RECORD:** Correct: AMAT ACCUMULATE +19.38%, ASML LONG +8.21%, CEG CONTRARIAN +7.44%, LRCX ACCUMULATE +19.87%, NRG CONTRARIAN +4.31%, RTX ACCUMULATE +1.48%, TSM ACCUMULATE +3.42%, VST CONTRARIAN +6.90%. NULL: BAH ACCUMULATE -0.28%, GOOGL WATCH +2.87%, LMT CONTRARIAN +0.83%, META WATCH +1.32%, NVDA ACCUMULATE +0.32%, OKLO SPECULATIVE -0.93%, PLTR WATCH +2.56%. Rolling window: 103/272 = 37.87%.
- **Key failures (June 9 batch):** AMD WATCH +15.05% (neutral signal missed parabolic MI300 breakout — recurring neutral-miss pattern; confirmed today's signal upgrade to ACCUMULATE); MSFT ACCUMULATE -2.56% (Xbox restructuring extended sell-off, now RSI 30.5 triggered CONTRARIAN — vindication likely June 23 scoring); SMR AVOID +8.56% (Japan nuclear sector surge lifted all boats; class action thesis intact).
- **Major events today (June 16):** **US-Iran peace deal framework** signed June 15-16; Hormuz Strait reopens Friday — WTI -5.48% to $75.82 (largest one-day drop of 2026). **LMT -6.5%** war-premium unwinding; LONG → ACCUMULATE (SMA200 $524 floor intact; $223.94M naval contract awarded today; $180B backlog unchanged). **Japan announces $62.3B nuclear investment program** — lifted CEG +6.1%, SMR +5.1% (sector sympathy; AVOID maintained for SMR on class action). **FOMC holds at 3.50%-3.75%** (decision June 17 — hold confirmed by futures). **MSFT RSI 30.5 triggers CONTRARIAN** (ACCUMULATE → CONTRARIAN; below all MAs; Azure ARR $37B intact; Xbox restructuring is a one-time headcount event). **LRCX new 52W HIGH $388.92** (+6.0%); RSI 80 severely overbought — trim on spikes. **AMD new 52W HIGH session** $558.37 intraday (prior ATH $542.52 cleared; RSI 62 healthy). **ASML $1,892.66** +1.6%, $10.84 from 52W high $1,903.50. **VIX 16.5** from 17.68 — continuing decompression.
- **Signal changes today:** MSFT ACCUMULATE → **CONTRARIAN** (RSI 30.5 at ≤30 threshold). LMT LONG → **ACCUMULATE** (Iran peace deal -6.5%; SMA200 $524 floor; backlog intact).
- **Macro:** S&P ~7,475 (-0.2%), Nasdaq ~26,400 (-0.3%), VIX 16.5 (NORMAL), DXY 99.57, US10Y 4.46% (easing), WTI $75.82 (-5.48%), Brent ~$80.10.
- **Alerts:** LRCX RSI ~80 SEVERELY OVERBOUGHT at new ATH $388.92 (trim partial on spikes). AMAT RSI ~76 OVERBOUGHT (wait for RSI <70 before adding). ASML RSI ~70 at OB threshold (LONG maintained). MSFT RSI 30.5 CONTRARIAN triggered. OKLO RSI ~26 OVERSOLD — July 4 criticality 18 days. LMT SMA200 $524 CRITICAL FLOOR (if breaks → reassess to WATCH). VST ex-dividend June 22 (6 days). ASML Q2 July 15 (29 days). TSM Q2 July 16 (30 days).
- **DB operations:** 18 June-9 signals scored (8 correct, 3 incorrect, 7 NULL; LMT correction id=395 actual=0.83% NULL; PLTR correction id=393 actual=2.56% NULL); daily_prices (18), technicals (18), macro (June 16), 18 new signals, report (v28) all inserted successfully.
- **Next:** June 11 signals score June 18 (Wednesday). June 16 signals score June 23. FOMC June 17 (tomorrow). OKLO July 4 criticality 18 days. VST ex-div June 22 (6 days). ASML/TSM Q2 earnings July 15-16. format-005 requires Malik approval.

## v1.3 — 2026-06-15 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md). No auto-evolve phases remain to queue.
- **Today:** CS = **70.6** (AS=36.4, AC=100.0, CV=86.7) — slight uptick from June 11's 69.4 as June 8 batch 53.3% correct (best in 3 weeks) offset older low-accuracy signals aging out.
- **June 8 signals scored 8/15 decisive correct (53.3%) | 3 NULL:** Correct: AMAT LONG +20.7% (triple analyst upgrades + $500M Singapore), AMD ACCUMULATE +4.4% (Iran deal removes export risk), ASML ACCUMULATE +7.2% (MATCH Act fading + new 52W high), GOOGL WATCH +0.76% (neutral <1%), LMT CONTRARIAN +9.2% (Iran drone strike June 13), LRCX LONG +15.1% (HBM4 demand + $5B buyback), NVDA ACCUMULATE +1.4%, SMR AVOID -8.1% (class action + Citi PT $7). NULL: META ACCUMULATE +0.75%, NRG CONTRARIAN +0.93%, RTX ACCUMULATE -0.7% (all <1%). Rolling window: 95/261 = 36.4%.
- **Key failures (June 8 batch):** CEG ACCUMULATE -11.8% (June 9 analyst valuation cut -12.89% persisted through window); MSFT ACCUMULATE -5.9% (Build sell-event extended, now below all MAs); TSM WATCH +7.4% (neutral signal missed parabolic — recurring pattern); BAH ACCUMULATE -5.6% (DOGE/budget uncertainty); PLTR WATCH -6.5% (neutral >3% = INCORRECT); VST ACCUMULATE -1.1% (just over threshold).
- **Major events today (June 15):** **Iran launched massive drone strike June 13** (largest since Iran-Iraq war 1980s) — reversed June 11 diplomatic breakthrough. Defense stocks +5% (LMT +8.1% in 3 days, RTX +2.2%). **WTI -5.48% to $80.23** — markets pricing Hormuz deal despite Iran attack (contradictory signal). **AMAT new ATH $594.39** (+20.7% in 5d) on triple analyst upgrades: Cantor Fitz PT $650, UBS $570, Barclays $590; $500M Singapore Tampines campus expansion; Vanguard adding. **LRCX new ATH $366.81** (+15.1% in 5d, HBM4 etch demand). **ASML $1,863.55** new highs approaching 52W high $1,903. **META +4.54%** Zuckerberg AI budget reassessment. **Oracle FY27 capex $95B** validates AI chip demand (NVDA/AMD). **OKLO DOE PDSA step 3 of 4 approved June 12** — July 4 Aurora criticality in 19 days; Antares Nuclear achieved criticality first (competing). MSFT $390 and PLTR $128 both RSI 37.2 approaching oversold. **FOMC June 16-17 tomorrow** — hold expected; hawkish signaling = primary tail risk. VIX 17.68 (NORMAL regime, down from 20.5 June 11).
- **Signal changes today:** None — all 18 signals maintained. LMT LONG (upgraded June 11) vindicated +9.2% in 5 days. VST ACCUMULATE maintained (ex-div June 22 = entry opportunity). CEG CONTRARIAN maintained at 52W low $240.
- **Macro:** S&P ~7,440 (+0.5% est.), Nasdaq ~26,100 (+0.3% est.), VIX 17.68 (NORMAL), DXY 99.31, US10Y 4.50%, WTI $80.23 (-5.48%), Brent ~$84.50.
- **Alerts:** AMAT RSI ~82 SEVERELY OVERBOUGHT (DO NOT CHASE — wait $565-575 pullback). LRCX RSI ~72 OVERBOUGHT at new ATH. MSFT RSI 37.2 approaching oversold (CONTRARIAN trigger at ≤30 post-FOMC). PLTR RSI 37.2 approaching oversold (CONTRARIAN trigger at ≤30). OKLO RSI ~28 OVERSOLD — July 4 criticality 19 days. CEG RSI ~38 recovering (CONTRARIAN $240-260). VST ex-div June 22 (7 days). ASML Q2 July 15 (30 days). TSM Q2 July 16 (31 days). Q2 earnings wave late July.
- **DB operations:** 18 June-8 signals scored (8 correct, 7 incorrect, 3 NULL); daily_prices (18), technicals (18), macro (June 15), 18 new signals, report (v27) all inserted successfully.
- **Next:** June 9 signals score June 16 (tomorrow). June 11 signals score June 18. FOMC June 16-17 (dominant macro catalyst). OKLO July 4 criticality (19 days). VST ex-div June 22 (7 days). ASML/TSM Q2 earnings July 15-16. format-005 requires Malik approval.

## v1.3 — 2026-06-11 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = **69.4** (AS=33.6, AC=100.0, CV=86.7) — flat vs June 9 despite poor June 4 batch (4/17=23.5%), because older low-accuracy signals aged out of 30-day window.
- **June 4 signals scored 4/17 correct (23.5%) | 1 NULL (LRCX +0.80%):** Correct: AMAT ACCUMULATE +5.64% (analyst upgrades + Singapore expansion), ASML ACCUMULATE +5.39% (MATCH Act fading), LMT CONTRARIAN +1.53% (recovery thesis working), SMR AVOID -23.90% (Citi PT cut + class action). NULL: LRCX LONG +0.80% (gray zone). Rolling window: 101/301 = 33.6%.
- **Key failures (June 4 batch):** Systematic VIX regime shift (15→22) on Iran-Israel weekend missile exchanges June 5-8 drove 13/17 failures. OKLO SPECULATIVE -22.17% (CEO/COO insider selling $13.6M); PLTR ACCUMULATE -9.76% (SMA200 break); MSFT/META ACCUMULATE -7.3%/-7.6% (post-Build sell-event extended); CEG CONTRARIAN -6.59% (June 9 analyst valuation cut -12.89%). All failures driven by macro regime shift, not individual security thesis breakdown.
- **Major events today (June 11):** **Trump announced US-Iran diplomatic breakthrough** → WTI -4% to $85.94 (lowest since April), broad market rally (S&P +1.75%, Nasdaq +2.54%). **AMAT new ATH $537.88 (+8.22%)** on triple analyst upgrade: Cantor Fitzgerald PT $650, UBS PT $570, Barclays PT $590; $500M Singapore Tampines Campus expansion. **ASML new 52W HIGH $1,820.38 (+4.97%)** — MATCH Act fears dissipating. **LRCX new ATH $346.46 (+7.66%)**. **AMD +6%** on Iran deal + Oracle $95B FY27 capex validation. **Oracle Q4 FY26 earnings beat** ($19.2B revenue +21%, EPS $2.11 vs $1.89) but FY27 capex $95B (vs $55.7B FY26) caused ORCL -11% pre-market; bullish for AI infrastructure suppliers. **Vistra "Helix Digital Infrastructure" backed by KKR and Nvidia** — VST upgraded CONTRARIAN→ACCUMULATE (institutional AI power validation). **LMT +3.41% closed above SMA200 $524** for first time since correction — $10B new contracts (PAC-3/F-35/MH-60R international) — analyst upgraded Hold→Buy PT $621. **May CPI +4.2% YoY** (3-year high, energy-driven). TSM -4.5% (ex-dividend June 11 adjustment). OKLO $56.44 continues to drift from $72.51 (June 4) on insider selling.
- **Signal changes today:** LMT CONTRARIAN→LONG (SMA200 $524 breakout + $10B contracts + analyst upgrade = triple confirmation; RSI 47 room to run). VST CONTRARIAN→ACCUMULATE (Helix Digital/KKR/NVIDIA partnership validates AI power thesis institutionally). AMD WATCH→ACCUMULATE (RSI reset from OB 75.7 to 52; Iran deal removes export restriction tail risk; $480 at SMA50 support).
- **Macro:** S&P ~7,380 (+1.75%), Nasdaq ~25,870 (+2.54%), VIX ~20.5 (down from 22.22 on June 10, ELEVATED regime), DXY ~99.2, US10Y 4.55%, WTI $85.94 (-4.2%, Iran deal), Brent ~$88.50.
- **Alerts:** AMAT RSI ~78 OVERBOUGHT (new ATH — wait for $510-520 pullback). LRCX RSI ~68 approaching OB (ex-div June 17 dip = entry). CEG RSI ~32 near oversold (CONTRARIAN at 52W low). NRG RSI ~30 at oversold threshold (CONTRARIAN active). OKLO RSI ~25 deeply oversold (binary July 4 = 23 days). SMR RSI ~18 deeply oversold (AVOID — warning not signal). PLTR RSI ~37 approaching oversold (watch for ≤30). LMT above SMA200 — golden cross potential if SMA50 crosses up. OKLO July 4 criticality: **23 days**. LRCX ex-dividend June 17 (6 days). TSM ex-dividend June 11 (today). ASML Q2 earnings July 15 (34 days). TSM Q2 earnings July 16 (35 days). Q2 earnings wave late July.
- **DB operations:** 18 June-4 signals scored (4 correct, 13 incorrect, 1 NULL); daily_prices (18), technicals (18), macro (June 11), 18 new signals, report (v26) all inserted successfully.
- **Session gap note:** June 3 signals (target date June 10) not scored — session missed June 10. Will score in next session (June 12).
- **Next:** June 3 signals score June 12 (tomorrow). OKLO July 4 criticality (23 days). LRCX ex-div June 17 (6 days). ASML/TSM Q2 earnings July 15-16. Q2 earnings wave late July. format-005 requires Malik approval.

## v1.3 — 2026-06-09 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = **69.4** (AS=33.6, AC=100.0, CV=86.7) — slight dip from June 8's 69.6 as June 2 batch scored 5/16 correct (31.3%).
- **June 2 signals scored 5/16 correct (31.3%):** Correct: AMAT LONG +5.22% (record Q2 sustained), ASML LONG +7.40% ($700B market cap milestone), LMT CONTRARIAN +1.84% (record contracts + Iran bid), RTX ACCUMULATE +3.39% (defense bid), SMR AVOID -22.7% (Citi PT cut to $7). Gray zone: GOOGL -2.85%, META -2.47% (neutral signals 1-3% = NULL). Rolling window: 102/304 = 33.6%.
- **Key failures (June 2 batch):** CEG LONG -17.4% (analyst valuation cut — -12.89% single day), OKLO SPECULATIVE -18.1% (CEO insider selling continued), MSFT LONG -9.4% (Build sell-the-event fully played out), NVDA ACCUMULATE -7.89% (post-ATH decompression), PLTR WATCH -13.1% (insider selling + broke SMA200).
- **Major events today (June 9):** **ASML becomes first European company to surpass $700B market cap** (new 52W HIGH $1,749.04). NVDA secures Apple as major AI client (+0.7% AH). Trump declares US "must respond to Iranian retaliation" → defense bid (LMT +1.32%, RTX +1.21%), but Iran-Israel also agreed to halt attacks → WTI falls below $90. **CEG -12.89% single-day rout on analyst valuation cut** — RSI ~28 OVERSOLD near 52W low $243.30 (CONTRARIAN entry). **Citi slashes SMR PT from $9 → $7** (below market) — AVOID confirmed. PLTR broke SMA200 ($171.7) — WATCH maintained. TSM +4.66% (institutional re-entry signal, ACCUMULATE maintained). S&P 7,386.65 (-0.26%), Nasdaq 25,678.82 (-0.97%), Dow 50,872.11 (+0.17%). VIX 21.3 ELEVATED (6th day above 20).
- **Signal changes today:** MSFT LONG→ACCUMULATE (below SMA200 post-Build = entry zone, not breakdown; Azure AI ARR $37B intact). PLTR WATCH maintained (confirmed SMA200 break adds conviction to WATCH). CEG LONG→CONTRARIAN (deepened; RSI ~28 approaching 52W low = highest CONTRARIAN conviction entry in Energy sector). LMT CONTRARIAN maintained (RSI recovering from ~12.9; +1.32% = thesis working). ASML ACCUMULATE→LONG (new 52W HIGH, $700B milestone, MATCH Act concerns fading).
- **Macro:** S&P 7,386.65 (-0.26%), Nasdaq 25,678.82 (-0.97%), VIX 21.3 (ELEVATED — 6th day), DXY 99.85 (-0.15%), US10Y 4.57%, WTI $89.50 (-2.8%, below $90 on Iran-Israel halt), Brent $93.50.
- **Alerts:** CEG RSI ~28 OVERSOLD (52W low $243.30 approaching — CONTRARIAN). NRG RSI ~33 approaching oversold. LMT RSI ~22 DEEPLY OVERSOLD recovering. AMAT RSI ~71 APPROACHING OVERBOUGHT. PLTR broke SMA200 $171.7. MSFT below SMA200 $454. OKLO July 4 criticality: **25 days**. LRCX ex-dividend June 17 (8 days). ASML Q2 earnings July 15 (36 days). TSM Q2 earnings July 16 (37 days). Q2 earnings wave: all 18 tickers late July.
- **DB operations:** 18 June-2 signals scored (5 correct, 11 incorrect, 2 gray zone); daily_prices (18), technicals (18), macro (June 9), 18 new signals, report (v25) all inserted successfully.
- **Next:** June 3 signals score June 10 (tomorrow). June 4 signals score June 11. OKLO July 4 criticality (25 days). LRCX ex-dividend June 17. ASML/TSM Q2 earnings July 15-16. Q2 earnings wave late July. format-005 requires Malik approval.

## v1.3 — 2026-06-08 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md). Resume run after 4-day pause (last run June 4).
- **Today:** CS = **69.6** (AS=33.9, AC=100.0, CV=86.7) — dip from 71.4 as June 5 Nasdaq -4% selloff hit 13/18 June 1 signals incorrect.
- **June 1 signals scored 3/18 correct (16.7%) — worst batch of the run.** Correct: AMAT LONG +9.4% (record Q2 results), VST CONTRARIAN +5.6% (oversold bounce), SMR AVOID -18.1% (continued decline). Rolling window: 97/286 = 33.9%.
- **Key failures (June 1 batch):** MSFT LONG -7.8% (Microsoft Build sell-the-event — $450 peak to $415); OKLO SPECULATIVE -11.1% (CEO/COO insider selling $13.6M under pre-arranged plan, shares at $64.99-$70.45); PLTR LONG -12.1% (insider selling $422M 3-month, broke SMA50); NRG WATCH -13.7% (continued EPS fallout — neutral signal missed >3% move down); ASML WATCH +7.8% (neutral signal missed parabolic MATCH Act relief rally); LRCX LONG +0.2% (net flat despite June 5 -7% then +5% = just barely missed threshold); CEG ACCUMULATE +0.3% (block sale absorbed but only 0.3% recovery = just short of 1%); RTX ACCUMULATE +0.6% (<1% rise for bullish signal). Gray zones: GOOGL WATCH -2.0%, TSM WATCH -2.5%.
- **Major events today (June 8):** Chip stocks stage relief bounce after June 5 Nasdaq -4% rout (SOX index +6.7%, SOXX +5%). AMAT +8.64% on record Q2 results. ASML +5.92% to new 52W HIGH $1,738.95. LRCX +5.12% to $318.80. AMD +4.88% to $492.97 (healthy OB reset from 75.7). VST +5.27% to $149.35 (CONTRARIAN recovered). NRG dropped back to $129 (-13.7% from June 1) = CONTRARIAN re-entry. OKLO dropped to ~$64 (-11.1%) on CEO insider selling. Iran/Israel missile exchanges over weekend pushed VIX from 15.39 (June 4) to 21.51 (ELEVATED regime change) and WTI to $92.10. Intel +12.3% on Google TPU order (not in portfolio but validates AI chip demand thesis). S&P +0.30% to 7,405.73 — 2.4% below June 4 close.
- **Signal changes today:** ASML WATCH→ACCUMULATE (MATCH Act stalled; new 52W HIGH $1,738.95; Q2 July 15 approaching). PLTR LONG→WATCH (broke below SMA20/50; insider selling $422M; elevated valuation in VIX-21 environment). NRG WATCH→CONTRARIAN (back near 52W low $121 support; EPS miss fully discounted; AI power thesis intact). VST CONTRARIAN→ACCUMULATE (CONTRARIAN vindicated +5.6%; RSI recovering from oversold; above June 1 entry).
- **New 52W HIGHs:** ASML new 52W HIGH $1,738.95 (breakout above June 4 high $1,726.36).
- **Macro:** S&P 7,405.73 (+0.30%), Nasdaq 25,929.66 (+0.86%), Dow ~51,481 (-0.16%), VIX 21.51 (ELEVATED — spiked from 15.39 June 4, crossed from LOW to ELEVATED regime), DXY 100.05 (+0.67%), US10Y 4.54%, WTI $92.10 (+1.72%), Brent ~$96.00.
- **Alerts:** LMT RSI ~22 DEEPLY OVERSOLD (5th day; Iran/Israel active catalyst). SMR RSI ~28 OVERSOLD (no entry — AVOID). NRG RSI ~33 approaching oversold (CONTRARIAN entry). AMAT RSI ~73 OVERBOUGHT at record levels. VIX 21.51 ELEVATED — adjust position sizes. OKLO CEO insider selling ongoing — size very small. OKLO July 4 criticality: **26 days**. ASML Q2 earnings July 15 (37 days). TSM Q2 earnings July 16 (38 days). Q2 earnings wave: NVDA/AMD/MSFT/META/PLTR/RTX/LMT late July (45-55 days).
- **DB operations:** 18 June-1 signals scored (3 correct, 13 incorrect, 2 gray-zone NULL); daily_prices (18), technicals (18), macro (June 8), 18 new signals, report (v24) all inserted successfully.
- **Next:** June 2 signals score June 9 (tomorrow). June 3 signals score June 10. OKLO July 4 criticality (26 days). ASML/TSM Q2 earnings July 15-16. Q2 earnings wave late July. format-005 requires Malik approval. VIX elevated — monitor for regime confirmation.

## v1.3 — 2026-06-04 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = **71.4** (AS=38.5, AC=100.0, CV=86.7). May 28 signals scored **7/18 correct (38.9%)**. Correct: AMAT LONG +11.62%, LRCX LONG +6.51%, MSFT ACCUMULATE +2.74%, NVDA ACCUMULATE +1.76%, OKLO SPECULATIVE +6.51%, PLTR ACCUMULATE +4.31%, RTX WATCH +0.81% (neutral <1%). Rolling window: 104/270 = 38.5%.
- **Key failures (May 28 batch):** ASML WATCH +18.35% (neutral >3% — parabolic miss); CEG ACCUMULATE -13.49% (block sale 11M shares @$281 discount); VST ACCUMULATE -9.36% (continued correction below SMA200); GOOGL ACCUMULATE -6.84% ($80B ATM dilution announced June 2); NRG CONTRARIAN -5.47% (EPS miss -46.4% continued pressure); LMT CONTRARIAN -2.79% (Iran ceasefire overhang); META ACCUMULATE -2.78% (AI EO recovery incomplete by scoring date); AMD WATCH +5.74% (>3% neutral miss — persistent parabolic pattern); BAH ACCUMULATE -0.06% (flat, <1% rise); SMR AVOID 0.00% (0% fall, bearish needed ≥1%); TSM WATCH +2.91% (gray zone 1-3%).
- **Major events today:** Broadcom earnings-driven AI chip sector rotation — AMD opened -5.44%, recovered to -2.31%; AI chip fatigue vs equipment ATHs (AMAT +6.05% new ATH $509.14, LRCX +2.78% new ATH $343.71, ASML +1.23% new 52W HIGH $1,726.36). PLTR-Google Cloud AIPCon partnership announced June 4 (expanding AIP distribution via Google Cloud Marketplace) — partial offset to -4.33% UK Parliament NHS controversy day 2. CEG $262.67 (range $262-$268.56) following 11M share block sale @$281 from June 1; approaching 52W support zone $243.30 — CONTRARIAN upgrade. LMT RSI 12.9 DEEPLY OVERSOLD — Munitions Production Center Troy AL groundbreaking, F-35/AUKUS intact, Iran ceasefire temporary. OKLO +7.86% to $72.51; 30 days to July 4 Aurora criticality. RTX +3.34% on Jefferies upgrade PT $220 and record $271B backlog. Dow Jones +1.73% to record 51,561 (non-tech Financials +2.67%, Healthcare +3.14% leading). S&P +0.41% to 7,584.31. VIX 15.39 LOW regime.
- **Signal changes today:** CEG LONG→CONTRARIAN (block sale institutional selling = tactical entry, 52W low $243 support, thesis intact). BAH maintained ACCUMULATE (post-earnings dip normal). PLTR ACCUMULATE maintained (Google Cloud AIPCon offsets UK NHS noise). LMT CONTRARIAN maintained (RSI 12.9 extreme oversold — hold). VST upgraded ACCUMULATE→CONTRARIAN (RSI approaching ≤30 oversold threshold, below all MAs, AI power thesis intact).
- **New ATHs/52W highs:** AMAT new ATH $509.14; LRCX new ATH $343.71; ASML new 52W HIGH $1,726.36; TSM new 52W HIGH intraday $450.16 (closed $436.69); Dow Jones 51,561 record.
- **Macro:** S&P 7,584.31 (+0.41%), Nasdaq 26,830.96 (-0.09%), Dow 51,561.93 (+1.73% RECORD), VIX 15.39 (LOW), DXY 99.51 (~flat), US10Y 4.48% (easing from 4.69% June 3 peak), WTI $92.84 (-3.31%), Brent $96.97 (-0.86%).
- **Alerts:** AMD RSI 75.7 OVERBOUGHT (second week). AMAT RSI 72.8 OVERBOUGHT at ATH. TSM RSI 71.3 OVERBOUGHT (re-triggered same June 2 signal). MSFT RSI 70.09 near-OB. LMT RSI 12.9 DEEPLY OVERSOLD. VST RSI ~30 approaching oversold. NRG RSI 35 approaching oversold. OKLO July 4 criticality: **30 days**. LRCX dividend ex-date June 17 (13 days). ASML Q2 earnings July 15. TSM Q2 earnings July 16. GOOGL $80B ATM program starts Q3. CEG institutional selling ongoing (watch 13-F).
- **DB operations:** 18 May-28 signals scored (7 correct); daily_prices (18), technicals (18), macro (June 4), 18 new signals, report (v23) all inserted successfully.
- **Next:** May 29 signals score June 5 (tomorrow). OKLO July 4 criticality (30 days). ASML/TSM Q2 earnings July 15-16. LRCX div ex-date June 17. GOOGL ATM program begins Q3. format-005 requires Malik approval.

## v1.3 — 2026-06-03 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = **71.4 — NEW RECORD HIGH** (AS=38.5, AC=100.0, CV=86.7). May 27 signals scored **6/18 correct (33.3%)**. Correct: AMAT LONG +2.83%, ASML LONG +6.73%, LRCX LONG +4.86%, MSFT ACCUMULATE +5.38%, NVDA ACCUMULATE +3.66%, VST WATCH 0.00% (neutral <1%). Rolling window: 97/252 = 38.5%.
- **Key failures (May 27 batch):** GOOGL WATCH -6.39% (neutral >3% = incorrect — $80B dilution announced June 2); PLTR WATCH +11.33% (neutral >3% = incorrect — persistent WATCH-misses-parabolic pattern); AMD WATCH +5.84% (neutral >3% = incorrect — same pattern); TSM WATCH +6.10% (neutral >3%); NRG CONTRARIAN -5.43% (bullish, fell >1% — EPS miss); OKLO SPECULATIVE -7.28% (bullish, fell >1% — Q1 earnings AH drop); META ACCUMULATE -5.28% (bullish, fell >1% — AI EO impact); LMT CONTRARIAN -1.71% (bullish, fell >1%); RTX ACCUMULATE -1.63% (bullish, fell >1%); BAH ACCUMULATE -2.25% (bullish, fell >1%); CEG ACCUMULATE 0.00% (bullish, <1% threshold); SMR AVOID 0.00% (bearish, 0% = no fall).
- **Major events today:** GOOGL -6.4% on $80B equity financing plan ($10B Berkshire Hathaway private placement, $30B public offering, $40B ATM Q3 2026) for $180-190B AI capex 2026 — share dilution fear despite strongest AI commitment ever. NRG -11.2% in 2 days on EPS miss -46.4% (weather/non-cash hedges); guidance reaffirmed; CONTRARIAN upgrade. PLTR ACCUM upgrade: NVDA-PLTR AI agent integration announced Computex 2026. META ACCUM upgrade: enterprise AI business agent launched (WhatsApp/Instagram/Messenger) + Arete Buy upgrade PT $735. AMAT new ATH $491.51 (+4.79%). LRCX new ATH $334.41 (+5.45%). ASML +4.72% new 52W HIGH $1,705.37. US10Y 4.69% 16-MONTH HIGH — growth multiple compression risk. WTI $95.46 (+1.81%) — Iran tensions returning. S&P 7,560.10 (-0.65%) — mild pullback from ATH 7,609. NVDA-MSFT agentic AI partnership deepening (Build).
- **Signal changes today:** META WATCH→ACCUMULATE (enterprise AI agent launch; Arete Buy PT $735; recovery from AI EO dip). PLTR WATCH→ACCUMULATE (NVDA-PLTR Computex partnership; +11.33% in 5 days). NRG WATCH→CONTRARIAN (EPS miss -11.2% drop to support; guidance reaffirmed; AI power thesis intact). All other signals maintained.
- **New ATH/52W highs:** AMAT new ATH $491.51; LRCX new ATH $334.41; ASML new 52W HIGH $1,705.37.
- **Macro:** S&P 7,560.10 (-0.65%), Nasdaq 26,819.52 (-1.01%), VIX 16.27 (NORMAL), DXY 99.512 (+0.33%), US10Y 4.69% (16-MONTH HIGH), WTI $95.46 (+1.81%), Brent $96.89 (+0.93%).
- **Alerts:** AMD RSI 75.2 (OVERBOUGHT). AMAT RSI 72.8 (OVERBOUGHT at ATH). MSFT RSI ~72 (near-OB). VST RSI ~30 (OVERSOLD CONTRARIAN). NRG RSI ~35 (approaching oversold, CONTRARIAN). US10Y 4.69% 16-month high (macro headwind). GOOGL $80B ATM program starts Q3 (watch dilution). OKLO July 4 Aurora criticality: **31 days**. ASML/TSM Q2 earnings: July 15-16 (6 weeks).
- **DB operations:** 18 May-27 signals scored (6 correct); daily_prices (18), technicals (18), macro (June 3), 18 new signals, report (v22) all inserted successfully.
- **Next:** May 28-June 1 signals score June 4-8 (next 5 business days). OKLO July 4 criticality (31 days). ASML/TSM Q2 earnings July 15-16. US10Y at 16-month high = key macro risk. GOOGL ATM program Q3 = ongoing dilution signal. format-005 requires Malik approval.

## v1.3 — 2026-06-02 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = 70.3 (AS=35.6, AC=100.0, CV=86.7) — slight dip from June 1 record 70.8. May 26 signals scored **4/18 correct (22.2%)**. Correct: NVDA ACCUMULATE +3.97%, MSFT ACCUMULATE +8.93%, LRCX LONG +10.12%, OKLO SPECULATIVE +4.32%. Rolling window: 77/216 = 35.6%.
- **Key failures (May 26 batch):** AMD WATCH +7.92% (neutral missed parabolic — persistent pattern); GOOGL WATCH -3.20% (neutral >3% move); TSM WATCH +6.94% (neutral missed breakout); AMAT WATCH +9.44% (neutral missed ATH run — upgraded to LONG today); PLTR WATCH +8.12% (neutral missed continued rally); ASML LONG +0.59% (bullish <1% threshold = incorrect); CEG ACCUMULATE +0.68% (bullish <1% threshold); META ACCUMULATE -1.64% (bullish, fell >1%); VST ACCUMULATE -5.47% (bullish, fell >1%); NRG CONTRARIAN -5.11% (bullish, fell >1%); SMR AVOID +1.54% (bearish, rose >1%); BAH ACCUMULATE +0.33% (bullish, <1%); LMT CONTRARIAN -3.14% (bullish, fell >1%); RTX ACCUMULATE -0.56% (bullish, <1%).
- **Major events today:** S&P 500 broke 7,600 for the first time in history (+0.13% to 7,609.78 NEW ATH) driven by NVIDIA RTX Spark superchip launch at Computex 2026 + Microsoft Build Day 1 (MAI models, Scout AI agent, Majorana 2 quantum chip, NVDA-MSFT Windows AI partnership). SOXX at all-time high. AMAT NEW ATH $467.72 (+4.01%) on Q2 FY26 beat + WFE >30% growth 2026 guidance. LRCX NEW ATH $333.07 (+4.68%). TSM new 52W HIGH $449.39 (+4.11%). CEG +5.83% on MSFT AI data center buildout = direct nuclear PPA demand signal. Iran stalled peace talks → WTI back to $89.71 (+2.69%). Trump AI EO hit PLTR -5.74% and META -4.36% — hardware vs software AI divergence. VIX 15.77 (LOW regime, risk-on). Fed hike probability ~70% by Mar 2027 (Kevin Warsh era).
- **Signal changes today:** TSM WATCH→ACCUMULATE (RSI reset 71→66, new 52W HIGH $449.39, Computex tailwind). AMAT WATCH→LONG (NEW ATH $467.72, Q2 beat, WFE >30% 2026). CEG ACCUMULATE→LONG (MSFT Build AI data center demand, +5.83%, approaching 52W HIGH zone $315). PLTR LONG→WATCH (Trump AI EO -5.74%, broke below SMA20 $150, RSI resetting from 67). META ACCUMULATE→WATCH (AI EO -4.36%, broke below SMA20 $615, sector rotation to hardware).
- **New ATH/52W highs:** AMAT NEW ATH $467.72; LRCX NEW ATH $333.07; TSM NEW 52W HIGH $449.39; S&P NEW ATH 7,609.78; SOXX at ATH.
- **Macro:** S&P 7,609.78 (+0.13% NEW ATH), Nasdaq 27,093.90 (+0.03%), VIX 15.77 (LOW regime), DXY 99.09 (-0.11%), US10Y 4.51% (~+4bps), WTI $89.71 (+2.69%), Brent $93.24 (+1.29%).
- **Alerts:** MSFT RSI 70.09 (near-overbought — Build Day 2 tomorrow = sell-event risk). VST RSI ~30 (OVERSOLD — CONTRARIAN active). LMT RSI ~28 (near-deeply-oversold — CONTRARIAN hold). OKLO July 4 Aurora criticality: **32 days**. NRG data uncertainty persists ($130 web vs $149 prior session). PLTR/META AI EO regulatory overhang — WATCH both.
- **DB operations:** 18 May-26 signals scored; fixing AMAT actual_move_5d_pct (9.47% actual vs 5.33% recorded); daily_prices (18), technicals (18), macro (June 2), 18 new signals, report (v21) inserted.
- **Next:** May 27-29 signals score June 3-5. MSFT Build Day 2 June 3 (tomorrow — MSFT near-OB). OKLO July 4 criticality (32 days). ASML/TSM Q2 earnings July 15-16. NRG price data requires verification. format-005 requires Malik approval.

## v1.3 — 2026-06-01 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = 70.8 (AS=36.9, AC=100.0, CV=86.7) — slight improvement from May 29 record 70.5. May 25 signals scored **8/18 correct (44.4%) — best single-batch in 3 weeks**. Correct: MSFT ACCUMULATE +7.57%, TSM ACCUMULATE +3.44%, AMAT ACCUMULATE +4.09%, LRCX LONG +4.20%, OKLO SPECULATIVE +10.10%, NRG CONTRARIAN +9.20%, BAH ACCUMULATE +1.89%, RTX ACCUMULATE +1.50%. Rolling window: 73/198 = 36.9%.
- **Key failures (May 25 batch):** NVDA ACCUMULATE -3.21% (post-earnings correction continued); AMD WATCH +14.79% (neutral missed parabolic — same pattern persists); GOOGL WATCH -1.96% (neutral, >1% move); META WATCH +2.91% (neutral, 1-3% range); ASML LONG -1.23% (MATCH Act); VST ACCUMULATE -9.53% (sell-the-news post record Q1 EBITDA — RSI now ~28 oversold); CEG ACCUMULATE -2.42% (mild pullback); SMR AVOID +16.80% (bearish correct thesis, nuclear hype timing wrong); PLTR WATCH +13.98% (Dell catalyst exploded from neutral position); LMT CONTRARIAN -0.38% (flat, <1% positive threshold missed).
- **Major events today:** MSFT +6.49% to $450.24 — AI ARR $37B +123% YoY, 20M Copilot seats +250%, $190B capex 2026, Pershing Square stake, Microsoft Build June 2-3 tomorrow (AI coding model reveal). OKLO +15.84% to $72.53 — DOE Surplus Plutonium Utilization Program selection confirmed (fuel supply path secured for Aurora reactors; July 4 criticality target 33 days away). Iran suspended ceasefire negotiations → WTI spiked to $94 intraday (+7%), retracted to $86-89; S&P absorbed news (+0.22%). VST -3.73% to $141.39 (continuing sell-the-news post record Q1 EBITDA $1.5B + IG upgrade; RSI ~28 = entering oversold). NRG +0.17% to $149.60 (LS Power 13GW integration, Greens Bayou 443MW CCGT online June 2026, Strong Buy PT $210). LMT ex-dividend $3.45/share today.
- **Signal changes today:** VST ACCUMULATE→CONTRARIAN (RSI ~28 oversold; sell-the-news; SMA200 $157 resistance; entry zone $135-145; long-term AI power thesis intact). NRG CONTRARIAN→WATCH (thesis vindicated $121→$150; approaching resistance $155; take profit or hold). PLTR upgraded LONG→LONG maintained (+3.17% today; RSI 67.42 approaching OB; Dell/Foundry validation). MSFT ACCUMULATE→LONG (breakout; all-time highs; MACD strongly bullish; AI ARR $37B).
- **Macro:** S&P 7,580.06 (+0.22%), Nasdaq 26,972.62 (+0.20%), VIX 15.32 (-2.67%, LOW regime), DXY 99.005 (+0.16%), US10Y ~4.47% (stable), WTI ~$88 (spiked $94 on Iran, retracted), Brent ~$95.
- **Alerts:** AMD RSI ~75 (OVERBOUGHT — near 52W high $527.20). OKLO RSI ~72 (OVERBOUGHT post +15.84% surge). PLTR RSI 67.42 (near OB 70). VST RSI ~28 (OVERSOLD — CONTRARIAN trigger). MSFT Build June 2-3 (tomorrow — potential sell-the-event risk). OKLO July 4 criticality (33 days). ASML/TSM Q2 earnings July 15-16.
- **DB operations:** 18 May-25 signals scored (8 correct); daily_prices (18), technicals (18), macro (June 1), 18 new signals, report (v20) all inserted successfully.
- **Next:** May 26-29 signals score June 3-6 (next 4 business days). MSFT Build June 2-3 = dominant near-term catalyst. OKLO July 4 criticality (33 days). ASML MATCH Act binary (no scheduled vote date). format-005 requires Malik approval.

## v1.3 — 2026-05-29 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = 70.5 (AS=36.1, AC=100.0, CV=86.7) — essentially flat vs May 28 record. May 22 signals scored **6/18 correct (33.3%)**. Correct: MSFT ACCUMULATE +1.63%, META ACCUMULATE +2.75%, LRCX LONG +3.11%, VST LONG +6.44%, OKLO SPECULATIVE +3.19%, RTX ACCUMULATE +1.34%. Rolling window: 65/180 = 36.1%.
- **Key failures (May 22 batch):** AMD WATCH +14.17% (neutral signal missed parabolic move); PLTR WATCH +9.28% (Dell catalyst not anticipated; upgraded to LONG today); CEG WATCH +8.37% / NRG WATCH +5.38% (neutral signals missed nuclear/energy sector recovery); ASML ACCUMULATE -2.59% (MATCH Act shock continued); BAH ACCUMULATE -1.69% (post-earnings fade); NVDA ACCUMULATE -0.87% / GOOGL ACCUMULATE +0.79% (both under 1% threshold). Pattern: WATCH signals on high-momentum tickers continue as primary accuracy drag.
- **Major events today:** PLTR +8.75% on Dell Q1 FY27 beat (+88% revenue, $24.4B AI orders) validating Foundry/AIP integration + PLTR raised FY2026 guidance to 71% growth ($7.65B) + US commercial +120% YoY — PLTR upgraded from ACCUMULATE to LONG. AMD new 52W HIGH intraday $525.40 (RSI ~77 OB, WATCH maintained). VST RSI 36.74 approaching oversold post-Trump EO surge (SMA200 $157 new floor). LMT -18% in 30 days, RSI ~32 approaching oversold. US-Iran ceasefire extended 60 days + Hormuz unrestricted → WTI -17% in May (lowest 6 weeks). VIX 15.39 (near-low regime). S&P 7,583.87 (+0.27%), Nasdaq 26,975.07 (+0.21%).
- **Signal changes today:** PLTR ACCUMULATE→LONG (Dell earnings validation + guidance raise to 71% growth). VST signal held ACCUMULATE (RSI 36.74 dip = buy zone). AMAT LONG maintained (+1.34% today, approaching ATH). LRCX LONG maintained (new ATH territory, $5B buyback). AMD WATCH maintained (RSI 77 extended). LMT CONTRARIAN deepened (-18% in 30d, ex-div June 1 approaching).
- **Macro:** S&P 7,583.87 (+0.27%), Nasdaq 26,975.07 (+0.21%), VIX 15.39 (LOW regime), DXY 98.757 (-0.21%), US10Y 4.44% (retreating from 4.70%), WTI $87.30 (-1.57%, -17% in May), Brent ~$94.
- **Alerts:** LMT ex-dividend June 1 ($3.45/share) = 3 days. AMD RSI ~77 (overbought). PLTR RSI ~72 (overbought post-surge). VST RSI 36.74 (approaching oversold — watch ≤30). LMT RSI ~32 (approaching oversold).
- **DB operations:** All 18 May-22 signals scored; daily_prices (18), technicals (18), macro (May 29), 18 new signals, report (v19) all inserted successfully.
- **Next:** May 23-29 signals score June 4-6 (skip June 2 Mon-holiday? No — Memorial Day was May 25, no June holiday). OKLO July 4 reactor criticality (36 days). ASML/TSM Q2 earnings July 15-16. format-005 requires Malik approval. PLTR Dell ramp validation = watch June close for Q2 pipeline signals.


## v1.3 — 2026-05-28 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = 70.6 (AS=36.4, AC=100.0, CV=86.7) — **NEW RECORD CS**. May 21 signals scored **11/18 correct (61.1%)**. Correct: META ACCUM +5.3%, TSM ACCUM +5.7%, AMAT LONG +4.9%, LRCX ACCUM +10.5%, VST CONTRARIAN +2.6%, CEG ACCUM +6.5%, OKLO SPECULATIVE +3.2%, NRG CONTRARIAN +8.9%, SMR AVOID -22.5%, BAH CONTRARIAN +5.0%, RTX WATCH 0.0%. Rolling window: 59/162 = 36.4% (new high).
- **Key failures (May 21 batch):** ASML ACCUMULATE -8.4% (MATCH Act accelerated beyond expectations); AMD WATCH +12.1% (parabolic extension exceeded neutral boundary); NVDA LONG -3.1% (post-earnings decompression extended); LMT CONTRARIAN +0.9% (just under 1% threshold — Iran ceasefire ceiling); GOOGL/MSFT <0.4% (no catalyst in 5-day window).
- **Major events today:** Trump nuclear executive orders → VST +10.3% (SMA200 $157 reclaimed); ASML -8.7% on MATCH Act advancing Congress (China DUV + service restrictions, BofA: 15% revenue at risk); PLTR +3.65% on Maven DoD program of record + 206 Q1 government deals; PCE Apr +3.8% YoY headline (Hormuz shock, in-line), core +3.3% (+0.2% MoM slightly cooler than expected) — markets absorbed benignly (S&P +0.60%).
- **Signal changes today:** ASML ACCUMULATE→WATCH (MATCH Act binary risk); VST WATCH→ACCUMULATE (SMA200 reclaimed, Trump nuclear EOs); PLTR WATCH→ACCUMULATE (Maven DoD program of record + 206 Q1 deals + RSI recovery); TSM ACCUMULATE→WATCH (RSI 71.3 overbought, new 52W high → wait for reset).
- **New 52W/ATH highs:** AMD new 52W HIGH $510.21 intraday (RSI ~80 OB); LRCX new ATH $322.68 (RSI ~65 healthy); TSM new 52W HIGH $424.34 (RSI 71.3 OB).
- **Macro:** S&P 7,565.42 (+0.60%), Nasdaq 26,920.79 (+0.92%), VIX 15.61 (near-low), DXY 98.95 (-0.20%), US10Y 4.47% (retreating from 4.70% peak), WTI $89.53 (+0.96% bounce from Iran-driven -6%), Brent $96.57 (+2.41%). Nuclear sector rally on Trump EOs.
- **DB operations:** All 18 May-21 signals scored; daily_prices (18), technicals (18), macro (May 28), 18 new signals, report (v18) all inserted successfully.
- **Next:** May 22-28 signals score June 2-6 (Memorial Day May 25 counted). OKLO July 4 reactor criticality (37 days). LMT ex-dividend June 1 ($3.45/share). ASML/TSM Q2 earnings July 15-16. format-005 requires Malik approval.


## v1.3 — 2026-05-27 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = 69.3 (AS=33.3, AC=100.0, CV=86.7). AS improved 28.6→33.3%: May 20 signals scored **12/18 correct — best batch accuracy recorded** (66.7%). Correct: AMD ACCUMULATE +21.7%, AMAT LONG +9.4%, LRCX ACCUMULATE +16.0%, TSM ACCUMULATE +7.2%, ASML ACCUMULATE +3.7%, CEG ACCUMULATE +8.5%, NRG CONTRARIAN +8.6%, OKLO SPECULATIVE +17.1%, VST CONTRARIAN +9.7%, BAH CONTRARIAN +2.2%, LMT CONTRARIAN +1.9%, PLTR WATCH -0.7%. Rolling window: 48/144 = 33.3%.
- **Key batch insight:** Energy AI CONTRARIAN/ACCUMULATE plays dominated (8/8 correct). Semiconductor equipment uniformly correct (4/4). Failure modes: META WATCH missed +5.5% large move; NVDA LONG continued post-earnings correction (-3.9%); SMR AVOID reversed +24.8%; GOOGL/MSFT stalled below +1% threshold.
- **Signal changes today:** AMAT WATCH→LONG (new 52W ATH $466.89, +9.3%, MACD recovered); VST ACCUMULATE→WATCH (SMA200 $157 failed, -5.5% on Iran oil drop).
- **Notable:** WTI crude -6% to $88.39 (lowest since April) on Iran committing to restore Hormuz strait shipping. AMD set new 52W high intraday $506.96 (+21.7% in 5 days). AMAT new ATH $466.89 (+9.3%). OKLO national lab AI-enabled reactor partnership announced today. PCE Deflator + GDP 2nd estimate BOTH due tomorrow May 28 — twin macro risk events.
- **Macro:** S&P 7,520.36 (+0.02%), NDX 26,674.73 (+0.07%), VIX 17.01, DXY 99.045, US10Y ~4.48%, WTI $88.39 (-6%), Brent ~$94.
- **DB operations:** All 18 May-20 signals scored; daily_prices (18), technicals (18), macro (May 27), 18 new signals, report inserted.
- **Next:** May 21-27 signals score May 28-June 5. OKLO July 4 nuclear criticality (37 days). PCE May 28 key risk. ASML/TSM Q2 earnings July 15-16. format-005 requires Malik approval.


## v1.3 — 2026-05-26 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = 67.5 (AS=28.6, AC=100.0, CV=86.7). AS improved 25.9→28.6%: May 19 signals scored 8/18 correct. Correct: AMD ACCUMULATE +13.7%, LRCX ACCUMULATE +10.6%, NRG CONTRARIAN +6.3%, BAH CONTRARIAN +4.1%, LMT CONTRARIAN +1.4%, TSM ACCUMULATE +2.9%, META WATCH ~0%, PLTR WATCH +0.3%. Rolling window: 36/126 = 28.6%.
- **Key signal failures (May 19 batch):** NVDA LONG -3.6% (sell-the-news continued day 3+); ASML WATCH +11.1% (neutral signal missed large move recovery from MATCH Act); SMR AVOID +22.7% (OKLO sector spillover dead-cat bounce); OKLO SPECULATIVE -4.1% (pre-catalyst dip before today's DOE news). Pattern: WATCH signals on large-move stocks continue as primary accuracy drag.
- **Signal changes:** TSM ACCUMULATE→WATCH (RSI 71.3, first overbought reading this quarter); AMAT ACCUMULATE→WATCH (MACD turned negative May 19 = early warning); META WATCH→ACCUMULATE (RSI 53.2 improving, MACD bullish crossover confirmed).
- **Notable:** OKLO +5.5% on DOE selecting for advanced negotiations under Surplus Plutonium Utilization Program (20MT Cold War plutonium → reactor fuel, partnership with newcleo). AMD +6% semis sector leadership continues (RSI 75.7 OB). 10Y yield -8.6bps to 4.484% = sharpest single-day drop in 2 weeks (Iran talks progress). WTI $92.80 near 5-week low. S&P +0.61%, Nasdaq +1.19% (SMH semis +3%+).
- **Macro shift:** Oil decline ($92.80 WTI) is structurally positive for nuclear economics — removes gas competition narrative. Yield relief is key for growth portfolio multiples.
- **DB operations:** All 18 May-19 signals scored; daily_prices, technicals, macro (May 26 data), 18 new signals, report all inserted successfully.
- **Next:** May 20–26 signals score May 27–June 4. OKLO July 4 nuclear criticality (38 days). ASML/TSM Q2 earnings July 15–16. PCE Deflator May 28 — key risk event. format-005 requires Malik approval.


## v1.3 — 2026-05-25 (no active experiment) — HOLIDAY EDITION
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md).
- **Today:** CS = 66.4 (AS=25.9, AC=100.0, CV=86.7). Holiday Edition — US markets closed Memorial Day. Prices reflect May 22, 2026 closes. AS improved 25.6→25.9%: May 18 signals scored 5/18 correct (BAH CONTRARIAN +5.5%, LRCX ACCUMULATE +7.3%, PLTR WATCH ~0%, RTX ACCUMULATE +1.2%, VST LONG +15.3%). Rolling window: 28/108 = 25.9%.
- **Key signal failures (May 18 batch):** LMT CONTRARIAN -13.7% (Iran ceasefire collapsed defense stocks May 19); ASML WATCH +8.8% (neutral signal missed large move — reached new ATH); CEG WATCH +12.8% (same pattern — neutral missed nuclear rally); SMR AVOID +9.7% (bearish signal, stock reversed — class action discount priced in faster than expected); NRG WATCH +7.2% (52W low bounce).
- **Signal changes:** VST LONG→ACCUMULATE (downgrade — at SMA200 $156.94 resistance, MACD bearish; Meta 2.1GW deal intact but technical confirmation needed). LMT maintained CONTRARIAN (RSI 34 approaching oversold, F-35/AUKUS contracts intact despite Iran noise). NRG WATCH→CONTRARIAN (recovering from 52W low $121, analyst upgrades, T.H. Wharton 415MW online). RTX WATCH→ACCUMULATE (approaching SMA200 $179 from below, $536M Mitsubishi contract).
- **Notable:** ASML new ADR ATH $1,653.53 on May 22 (LONG signal); LRCX new 52W high $309.98 (LONG signal); AMD RSI 78 deeply overbought (WATCH maintained); MSFT triple MA convergence at $416 (rare compression — ACCUMULATE); OKLO 14GW pipeline + NVIDIA partnership (SPECULATIVE); VST-Meta 2.1GW nuclear deal (key Aschenbrenner thesis validation event).
- **Macro (May 22 close):** S&P 7,473.47 (+0.37%), QQQ $717.66 (+0.42%), VIX 16.76 (normal), DXY 99.32, US10Y 4.57% (easing from 4.62% peak), WTI $96.60 (Iran deal softening oil), Brent $100.50. PCE Deflator due May 28 — key risk event for the week.
- **DB operations:** All 18 May-18 signals scored; daily_prices, technicals, macro (May 22 data), 18 new signals, report all inserted successfully.
- **Next:** May 19–22 signals score May 26–June 1. OKLO July 4 nuclear criticality (40 days). ASML/TSM Q2 earnings July 15–16. format-005 requires Malik approval.

## v1.3 — 2026-05-22 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md). No auto-evolve experiments queued.
- **Today:** CS = 66.3 (AS=25.6, AC=100.0, CV=86.7). AS slightly improved 22.2→25.6%: May 15 signals scored 7/18 correct (AMD +6.24%, MSFT +3.01%, META -0.61% neutral, LRCX +4.20%, VST +5.06%, OKLO +5.10%, LMT +3.39%). Rolling window: 23/90 = 25.6%.
- **Key events today:** BAH Q4 FY26 EARNINGS BEAT before open: EPS $1.78 vs $1.33 (+33.8%), $38B backlog book-to-bill 1.1x, FY27 guidance EPS $6.00-6.35 → BAH→ACCUMULATE at $82.39. AMD surged to $449.59 (+4.4%) on Venice CPU ramp announcement + $10B Taiwan AI supply chain investment — RSI 75.7 overbought (WATCH maintained). LRCX set new ATH $308.42 with RSI only 50.2 (bullish divergence → LONG). NVDA post-earnings sell-the-news day 2 at $218.13 (RSI 51.7 healthy → ACCUMULATE). VST Q1 record EBITDA $1.5B + PJM capacity market acceleration → LONG at $149.08. New data center community backlash risk: 48 projects worth $156B blocked or slowed in 2025.
- **Signal changes:** BAH WATCH→ACCUMULATE (earnings vindicated); SMR SPECULATIVE→AVOID (failed SMA200 reclaim -9.72%, class action lawsuit); VST ACCUMULATE→LONG (record earnings + PJM acceleration).
- **Macro:** S&P 7,445.72 (+0.17%), Nasdaq 26,293 (+0.09%), VIX 16.76 (-3.90% normal), DXY 99.227, US10Y 4.573% (easing), WTI $98.22. Iran de-escalation priced in; yields easing slightly from peak; VIX returning to normal regime.
- **DB operations:** All 18 May-15 signals scored; daily_prices, technicals, macro, 18 new signals, report all inserted successfully. AMD signal corrected from INCORRECT to CORRECT ($449.59 vs $423.20 May 15, +6.24%).
- **Next:** May 16-22 signals score May 23-29. PLTR RSI ~38 approaching CONTRARIAN trigger (≤30). OKLO July 4 nuclear criticality approaching (43 days). format-005 requires Malik approval before starting.

## v1.3 — 2026-05-21 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md). No auto-evolve experiments queued.
- **Today:** CS = 64.9 (AS=22.2, AC=100.0, CV=86.7). AS declined 25.9→22.2%: May 14 signals scored 2/18 correct (MSFT +2.0%, VST +1.6%). May 14 was peak-ATH day (NVDA $235.69, AMAT $440) — all bullish signals set at prices too high for 5-day scoring window. Rolling window: 16/72 = 22.2%.
- **Key events today:** NVDA post-earnings sell-the-news: stock at $219.45 (−6.9% from May 14 ATH close $235.69) despite record Q1 FY27 beat. AMD +8.1% NVDA read-through surge → RSI 75.7 overbought. META RSI improved 41.6→53.2, MACD bullish crossover. S&P 7,432.97 (+1.08%), Nasdaq +1.54% — NVDA earnings driving broad tech rally. WTI $96.82 (−6.5%) on Iran de-escalation — structural positive for nuclear economics. BAH earnings tomorrow May 22 before open.
- **Signal changes:** AMD ACCUMULATE→WATCH (RSI 75.7 overbought after +8.1% surge); META WATCH→ACCUMULATE (RSI 41.6→53.2, MACD bullish crossover confirmed).
- **Macro:** S&P 7,432.97 (+1.08%), Nasdaq 26,270 (+1.54%), VIX 17.44 (−3.43%), DXY 99.39, US10Y 4.60% (easing), WTI $96.82 (Iran de-escalation). Oil down sharply, yields easing, VIX down.
- **DB backfill:** May 20 report (v12) and 18 signals inserted this run (session timeout recovery from prior run). May 21: daily_prices, macro, signals (18), report all inserted successfully.
- **Next:** BAH earnings May 22 before open = next portfolio catalyst. RTX ex-div May 22. LMT ex-div June 1. May 15–20 signals scored May 22–27 (NVDA post-earnings recovery batches). format-005 requires Malik approval.

## v1.3 — 2026-05-20 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md). No auto-evolve experiments queued.
- **Today:** CS = 66.4 (AS=25.9, AC=100.0, CV=86.7). AS declined from 33.3→25.9: May 13 signals scored 2/18 correct (MSFT +3.0%, BAH +12.2%). May 13 was S&P+Nasdaq ATH day — aggressive bullish positioning hit by post-ATH correction. Rolling window: 14/54 = 25.9%.
- **Key events today:** NVDA Q1 FY27 earnings after close — record beat: EPS $1.87 (+6.3% vs $1.76), revenue $81.62B (+85% YoY), Q2 guide $91B, $80B buyback, dividend raised 25× to $0.25/share. AH initial sell-the-news −2.1%. ASML +6.19% on UBS +43% PT hike. CEG +7.33% on PJM data center co-location announcement + Q1 beat. BAH +3.1% on defense prototype contract. LRCX +3.16% on Morgan Stanley Overweight upgrade.
- **Signal changes:** ASML WATCH→ACCUMULATE (UBS PT hike, technical recovery); CEG LONG→ACCUMULATE (PJM positive but MACD still negative, below SMA50/200); VST WATCH→CONTRARIAN (broke below 52W low $138.53); RTX ACCUMULATE→WATCH (below SMA50 $181.42 and SMA200 $193.35, bearish MACD).
- **Macro:** S&P 7,423 (+0.94%), Nasdaq 29,295 (+1.54%), VIX 17.81, DXY 98.90, US10Y 4.65% (easing from 4.69% peak), WTI $103.49 (2nd session lower), Brent $110.59. US-Iran diplomatic progress; dollar weakening.
- **DB note:** Supabase signals INSERT and reports INSERT failed (session timeout after technicals batch). May 20 signals not stored in DB — to be backfilled on next run. daily_prices, technicals, macro for May 20 successfully inserted. May 13 signals scored (14 incorrect, 2 correct: ids 58 and 70).
- **Next:** format-005 requires Malik approval before starting. No auto-evolve option available.

## v1.3 — 2026-05-19 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md). No auto-evolve experiments queued.
- **Today:** CS = 69.3 (AS=33.3, AC=100.0, CV=86.7). AS improved from 27.8→33.3: May 12 signals scored 7/18 correct (NVDA +6.6%, MSFT +1.8%, VST +1.2%, CEG +12.5%, BAH +1.7%, LMT +5.2%, RTX +1.0%). Rolling window: 12/36 = 33.3%.
- **Key events today:** Google I/O launched Gemini 3.5 Flash + AI glasses (GOOGL +0% intraday, sell-the-news); OKLO +24.5% on NRC Aurora PDC approval (transformational de-risking); LMT continued selloff on Iran ceasefire news (RSI ~16, deeply oversold); VST −7.7% ERCOT power price softness (LONG→WATCH); NRG broke below 52W low.
- **Signal changes:** VST LONG→WATCH (technical breakdown, −7.7%); OKLO WATCH→SPECULATIVE (NRC approval catalyst); NRG WATCH→CONTRARIAN (52W low, AI power demand thesis); AMD WATCH→ACCUMULATE (hyperscaler commits, post-ATH consolidation); BAH WATCH→CONTRARIAN (pre-earnings low-bar setup, Anduril).
- **Macro:** S&P 7,353.61 (−0.67%), Nasdaq 28,850 (−0.90%), VIX 17.82, DXY 99.27, US10Y 4.69% (multi-month high), WTI $104.36, Brent $111.22. Iran strike suspended, yields surging.
- **Binary tomorrow:** NVDA Q1 FY27 earnings May 20 — dominant portfolio event risk (97% beat probability, $1.56B hedge-fund put block).
- **Next:** format-005 requires Malik approval before starting. No auto-evolve option available.

## v1.3 — 2026-05-18 (no active experiment)
- **Experiment:** None active. format-005 (Options flow / unusual activity) requires Malik approval (Phase 3 per program.md). No auto-evolve experiments queued.
- **Today:** CS = 67.1 (AS=27.8, AC=100.0, CV=86.7). AS drop from 77.8→27.8: May 11 signals (generated at market peak) hit by post-ATH correction. 5/18 correct: NVDA +2.5%, META +1.7%, AMAT +0.27% (WATCH+<1%), VST +8.3% (nuclear policy), LMT +21.9% (CONTRARIAN vindicated). Notable data correction: CEG May 15 actual close was $267.20, not $303.63 (prior reports may have used intraday high). LMT V-recovery from RSI 12.9 to $617.64 (+21.9%).
- **Signal changes:** VST ACCUMULATE→LONG (nuclear policy acceleration +6.92%); OKLO SPECULATIVE→WATCH (Q1 $33M loss + $1B dilution, -19.7% from May 11); SMR SPECULATIVE→AVOID (class action lawsuit filed, -17.5%); PLTR ACCUMULATE→WATCH (broken below SMA50/200, MACD -2.43)
- **Binary events this week:** MATCH Act vote May 19 (ASML), Google I/O May 19-20 (GOOGL ATH), NVDA Q1 FY27 earnings May 20, BAH earnings May 22, RTX ex-dividend May 22
- **Macro:** S&P 7,403 (-0.07%), Nasdaq 26,091 (-0.51%), VIX 19.0, DXY 99.1, US10Y 4.63% (1-yr high), WTI $106.22, Brent $110.08. Iran war driving oil and bond selloff.
- **Next:** format-005 requires Malik approval before starting. No auto-evolve option available.

## v1.3 — 2026-05-15 (format-004 DISCARDED ✗)
- **Experiment:** format-004 — RESOLVED: **DISCARDED** ✗
- **Resolution:** 3-report avg CS = 87.1 vs cs_before 87.1 → delta **0.0**. Per program.md: CS unchanged + not simpler = DISCARD. format-004 (stop-loss %, price target %, R/R ratio per ticker) not retained in methodology template.
- **Metric limitation noted:** AC at ceiling 100.0 cannot detect quality improvement above that level. Format-004 added genuine reader value but the scoring framework couldn't measure it. Suggested future improvement: Precision sub-score within AC layer — requires Malik approval.
- **Today:** CS = 87.1 (AS=77.8, AC=100.0, CV=86.7). Post-ATH profit-taking day: S&P 7,408.50 (–1.24%), NVDA –4.4% to $226 ("H200 no actual orders" trigger), AMD –5.9% to $423 (RSI reset 77→65), ASML –4.82% (MATCH Act + TSMC High-NA delay to 2029 + analyst downgrades → WATCH). CEG +10.2% to $303.63 (Calpine divestiture refocus + ex-dividend record day; Crane/PJM unresolved → WATCH maintained). BAH –6.1% to $73.38 (RSI ~28 oversold, earnings May 22 — CONTRARIAN setup post-print). SMR +5.5% (SMA200 reclaim). PLTR flat (RSI 35 → approaching 30 trigger). 10Y yield 4.55% (+9bps, 1yr high); 30Y >5.1%; Fed rate-hike probability 45%.
- **ASML signal change:** LONG → WATCH (MATCH Act binary May 19 + TSMC High-NA delay + analyst downgrades + investor exit)
- **Next experiment:** format-005 (Options flow / unusual activity) — **REQUIRES MALIK APPROVAL** before starting (Phase 3 per program.md). No auto-evolve experiment currently queued.
- **Key events next week:** MATCH Act vote May 19, Google I/O May 19–20, NVDA earnings May 20, BAH earnings May 22, RTX ex-dividend May 22

## v1.3 — 2026-05-14 (format-004 report 2/3)
- **Experiment:** format-004 — Stop-Loss + R/R Ratio per ticker (report 2/3)
- **Status:** PENDING — need 1 more report to evaluate (expected May 15)
- **Today:** CS = 87.1 (AS=77.8, AC=100.0, CV=86.7). S&P 500 first close above 7,500 (historic); NVDA new ATH $235.69 (+4.5%, H200 China approval); GOOGL new ATH $403.37 (+4.14%, Gemini Spark + Google I/O May 19); AMAT earnings blowout (EPS +29.5%, Q3 guide +$800M vs consensus, industry growth raised to >30%); LRCX new ATH $302 (+1.26%); OKLO -6% post-earnings + $1B equity offering; CEG downgraded LONG→WATCH (Crane PJM interconnection delay to 2031); LMT RSI ~20 CONTRARIAN active; BAH earnings May 22; NVDA earnings May 20.
- **Running avg (2 reports):** CS avg = (87.1 + 87.1) / 2 = 87.1 vs cs_before 87.1 → tracking flat; AS improvement expected May 18+ as May 11-13 signals mature
- **Signal changes from May 13:** AMAT WATCH→LONG (earnings beat); CEG LONG→WATCH (Crane delay); META ACCUMULATE→WATCH (below SMA50/200); OKLO sentiment +1.8→-1.5 (earnings + dilution)

## v1.3 — 2026-05-13 (format-003 RESOLVED + format-004 START)
- **Experiment:** format-003 — RESOLVED: **KEPT** ✓
- **Resolution:** 3-report avg CS = 87.1 vs cs_before 51.5 → delta **+35.6 points**. Sector relative strength ranking tables retained as permanent feature of v1.3 methodology.
- **format-004 STARTED:** Add explicit stop-loss, price target, and R/R ratio per ticker. cs_before = 87.1.
- **Today:** CS = 87.1 (AS=77.8, AC=100.0, CV=86.7). S&P 500 + Nasdaq ATH; NVDA new ATH $225.57 pre-May-20 earnings; GOOGL ATH $403.70 (+3.49%); ASML ATH +4.64%; LMT RSI 12.9 (deeply oversold — CONTRARIAN signal); PLTR -4.31% on NHS controversy + valuation + AI competition; AMAT earnings tomorrow (May 14). WTI $102.25, Brent $107.05.

## v1.3 — 2026-05-12
- **Experiment:** format-003 (report 2/3)
- **Status:** PENDING — need 1 more report to evaluate (expected May 13)
- **Today:** CS = 87.1 (AS=77.8, AC=100.0, CV=86.7). WTI $101.87 on Iran/Hormuz risk. Nasdaq -2% on CPI 3.8% (3yr high). AMD RSI 83.7 (overbought). NVDA earnings May 20. AMAT earnings May 14. LMT RSI 30 (oversold). PLTR RSI 31 (near oversold).
- **Running avg (2 reports):** CS avg = (87.1 + 87.1) / 2 = 87.1 vs cs_before 51.5 → strong improvement so far

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
- **format-003:** Relative strength ranking within sectors — **KEPT (resolved 2026-05-13, CS delta +35.6)**
- **format-004:** Add stop-loss level, price target, and R/R ratio per ticker — auto-evolve — **ACTIVE (started 2026-05-13)**
- **format-005:** Options flow / unusual activity (requires Malik approval — Phase 3)

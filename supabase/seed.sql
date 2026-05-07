-- Seed the 18 fixed tickers
INSERT INTO tickers (symbol, name, sector, thesis) VALUES
  ('NVDA', 'NVIDIA Corporation', 'AI Compute', 'GPU monopoly for AI training and inference'),
  ('AMD', 'Advanced Micro Devices', 'AI Compute', 'GPU/CPU competitor, MI series for data centers'),
  ('GOOGL', 'Alphabet Inc.', 'AI Compute', 'Hyperscaler with custom TPUs, Gemini AI'),
  ('MSFT', 'Microsoft Corporation', 'AI Compute', 'Azure AI cloud, Copilot, OpenAI partnership'),
  ('META', 'Meta Platforms Inc.', 'AI Compute', 'Llama open-source LLMs, Reality Labs, AI infra'),
  ('TSM', 'Taiwan Semiconductor', 'Semiconductors', 'Foundry monopoly, N2/N3 process leadership'),
  ('ASML', 'ASML Holding', 'Semiconductors', 'EUV/High-NA lithography monopoly'),
  ('AMAT', 'Applied Materials', 'Semiconductors', 'Deposition and etch equipment for advanced nodes'),
  ('LRCX', 'Lam Research', 'Semiconductors', 'Etch and deposition for memory/logic'),
  ('VST', 'Vistra Corp.', 'Energy for AI', 'Nuclear fleet operator, data center power contracts'),
  ('CEG', 'Constellation Energy', 'Energy for AI', 'Largest US nuclear fleet, Microsoft PPA'),
  ('OKLO', 'Oklo Inc.', 'Energy for AI', 'Advanced fission microreactors, Aurora powerhouse'),
  ('NRG', 'NRG Energy', 'Energy for AI', 'Power generation, data center partnerships'),
  ('SMR', 'NuScale Power', 'Energy for AI', 'Small modular reactor technology'),
  ('PLTR', 'Palantir Technologies', 'Defense AI', 'AIP defense platform, government AI contracts'),
  ('BAH', 'Booz Allen Hamilton', 'Defense AI', 'Defense consulting, AI modernization'),
  ('LMT', 'Lockheed Martin', 'Defense AI', 'F-35, JADC2, autonomous systems'),
  ('RTX', 'RTX Corporation', 'Defense AI', 'Missile systems, Collins Aerospace, Pratt & Whitney')
ON CONFLICT (symbol) DO NOTHING;

-- Backfill experiments
INSERT INTO experiments (experiment_id, experiment_type, hypothesis, changes_description, started_at, status, cs_before, cs_after, cs_delta, resolved_at, resolution_notes) VALUES
  ('baseline', 'baseline', 'Establish initial report format', 'Initial report structure', '2026-03-28', 'keep', NULL, 24.6, NULL, '2026-03-28', 'Baseline established'),
  ('format-001', 'auto-evolve', 'Restructured report improves AC and CV', 'Per-ticker detail sections, entry/exit zones, risk factors, catalysts, sector correlation table', '2026-03-29', 'keep', 24.6, 45.7, 21.1, '2026-04-15', 'CS improved +86%. Structure kept.'),
  ('format-002', 'auto-evolve', 'News sentiment scoring improves CV to 70+', 'Added per-ticker news sentiment (-2 to +2), improved technical coverage', '2026-04-15', 'keep', 41.0, 51.5, 10.5, '2026-04-16', 'CS improved +25.6%. AC 86.7, CV 85.0 avg.')
ON CONFLICT (experiment_id) DO NOTHING;

-- Backfill reports
INSERT INTO reports (date, report_version, methodology_version, composite_score, accuracy_score, actionability_score, coverage_score) VALUES
  ('2026-03-28', 'v1', 'v1.0', 24.6, 0.0, 42.0, 40.0),
  ('2026-03-29', 'v2', 'v1.1', 45.7, 0.0, 78.9, 73.3),
  ('2026-04-15', 'v3', 'v1.2', 51.7, 0.0, 85.6, 86.7),
  ('2026-04-16', 'v4', 'v1.2', 51.3, 0.0, 87.8, 83.3)
ON CONFLICT (date) DO NOTHING;

-- Backfill macro data
INSERT INTO macro (date, vix, dxy, us_10y_yield, wti_crude, macro_regime, macro_summary) VALUES
  ('2026-04-15', 18.29, 98.05, 4.390, 90.92, 'mixed', 'DXY weakness at 6-week lows. Hot CPI 3.3% YoY. Oil elevated on Strait of Hormuz tensions.'),
  ('2026-04-16', 18.05, 97.96, 4.350, 94.62, 'mixed', 'Oil surged 3.65% on Hormuz double blockade. DXY below 98. 10Y eased slightly. TSM earnings day.')
ON CONFLICT (date) DO NOTHING;

-- Backfill daily prices (April 15)
INSERT INTO daily_prices (ticker_id, date, price, source) VALUES
  ((SELECT id FROM tickers WHERE symbol='NVDA'), '2026-04-15', 195.88, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='AMD'), '2026-04-15', 196.58, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='GOOGL'), '2026-04-15', 332.66, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='MSFT'), '2026-04-15', 410.41, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='META'), '2026-04-15', 662.76, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='TSM'), '2026-04-15', 345.32, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='ASML'), '2026-04-15', 1314.99, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='AMAT'), '2026-04-15', 354.31, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='LRCX'), '2026-04-15', 224.35, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='VST'), '2026-04-15', 162.94, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='CEG'), '2026-04-15', 294.73, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='OKLO'), '2026-04-15', 63.35, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='NRG'), '2026-04-15', 170.26, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='SMR'), '2026-04-15', 11.71, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='PLTR'), '2026-04-15', 139.53, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='BAH'), '2026-04-15', 81.93, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='LMT'), '2026-04-15', 611.58, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='RTX'), '2026-04-15', 198.70, 'web_search')
ON CONFLICT (ticker_id, date) DO NOTHING;

-- Backfill daily prices (April 16)
INSERT INTO daily_prices (ticker_id, date, price, source) VALUES
  ((SELECT id FROM tickers WHERE symbol='NVDA'), '2026-04-16', 198.56, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='GOOGL'), '2026-04-16', 337.53, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='MSFT'), '2026-04-16', 419.10, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='ASML'), '2026-04-16', 1425.98, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='LRCX'), '2026-04-16', 261.83, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='OKLO'), '2026-04-16', 63.35, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='CEG'), '2026-04-16', 294.73, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='SMR'), '2026-04-16', 11.71, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='VST'), '2026-04-16', 162.94, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='PLTR'), '2026-04-16', 142.15, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='BAH'), '2026-04-16', 82.30, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='LMT'), '2026-04-16', 611.10, 'web_search'),
  ((SELECT id FROM tickers WHERE symbol='RTX'), '2026-04-16', 198.39, 'web_search')
ON CONFLICT (ticker_id, date) DO NOTHING;

-- Backfill signals (April 15)
INSERT INTO signals (ticker_id, date, directional_bias, timeframe, risk_factor, catalyst, news_sentiment) VALUES
  ((SELECT id FROM tickers WHERE symbol='NVDA'), '2026-04-15', 'LONG', 'Medium-term', 'Export controls', 'Q1 earnings, Blackwell Ultra', 1.0),
  ((SELECT id FROM tickers WHERE symbol='AMD'), '2026-04-15', 'ACCUMULATE', 'Medium-term', 'GPU market share', 'MI400 launch', 0.5),
  ((SELECT id FROM tickers WHERE symbol='GOOGL'), '2026-04-15', 'LONG', 'Medium-term', 'Antitrust', 'TPU v6, Gemini', 0.5),
  ((SELECT id FROM tickers WHERE symbol='MSFT'), '2026-04-15', 'LONG', 'Long-term', 'Azure deceleration', 'Q3 earnings', 0.5),
  ((SELECT id FROM tickers WHERE symbol='META'), '2026-04-15', 'WATCH', 'Medium-term', 'Reality Labs burn', 'Llama 4', 0.5),
  ((SELECT id FROM tickers WHERE symbol='TSM'), '2026-04-15', 'LONG', 'Long-term', 'Geopolitical', 'Q1 earnings Apr 17', 1.5),
  ((SELECT id FROM tickers WHERE symbol='ASML'), '2026-04-15', 'LONG', 'Medium-term', 'Export restrictions', 'Raised guidance EUR 36-40B', 2.0),
  ((SELECT id FROM tickers WHERE symbol='AMAT'), '2026-04-15', 'ACCUMULATE', 'Medium-term', 'Legacy chip demand', 'Advanced packaging', 1.0),
  ((SELECT id FROM tickers WHERE symbol='LRCX'), '2026-04-15', 'ACCUMULATE', 'Medium-term', 'NAND oversupply', 'HBM4 demand', 0.5),
  ((SELECT id FROM tickers WHERE symbol='VST'), '2026-04-15', 'LONG', 'Long-term', 'Nuclear relicensing', 'Data center power', 1.0),
  ((SELECT id FROM tickers WHERE symbol='CEG'), '2026-04-15', 'LONG', 'Long-term', 'Subsidy reversal', 'Microsoft PPA', 1.0),
  ((SELECT id FROM tickers WHERE symbol='OKLO'), '2026-04-15', 'SPECULATIVE', 'Long-term', 'Pre-revenue', 'Space nuclear NSTM-3', 1.5),
  ((SELECT id FROM tickers WHERE symbol='NRG'), '2026-04-15', 'WATCH', 'Medium-term', 'Near ATH', 'Data center partnerships', 0.5),
  ((SELECT id FROM tickers WHERE symbol='SMR'), '2026-04-15', 'SPECULATIVE', 'Long-term', 'Cash burn', 'Space nuclear NSTM-3', 1.5),
  ((SELECT id FROM tickers WHERE symbol='PLTR'), '2026-04-15', 'LONG', 'Medium-term', 'Valuation', 'Stellantis deal, GE Aerospace', 1.5),
  ((SELECT id FROM tickers WHERE symbol='BAH'), '2026-04-15', 'ACCUMULATE', 'Long-term', 'Budget uncertainty', 'Defense AI contracts', 0.5),
  ((SELECT id FROM tickers WHERE symbol='LMT'), '2026-04-15', 'LONG', 'Long-term', 'F-35 delays', 'Q1 earnings Apr 22', 1.0),
  ((SELECT id FROM tickers WHERE symbol='RTX'), '2026-04-15', 'WATCH', 'Medium-term', 'PW engine costs', 'Q1 earnings', 0.5)
ON CONFLICT (ticker_id, date) DO NOTHING;

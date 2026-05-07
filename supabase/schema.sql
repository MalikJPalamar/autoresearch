-- SA Portfolio — Supabase Schema
-- Run this in the Supabase SQL Editor after creating the 'situational-awareness' project.

-- 1. Tickers (static reference)
CREATE TABLE tickers (
  id SERIAL PRIMARY KEY,
  symbol TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  sector TEXT NOT NULL,
  thesis TEXT,
  active BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT now()
);

-- 2. Daily price snapshots
CREATE TABLE daily_prices (
  id SERIAL PRIMARY KEY,
  ticker_id INTEGER REFERENCES tickers(id),
  date DATE NOT NULL,
  price NUMERIC(12,2),
  daily_change_pct NUMERIC(6,2),
  high_52w NUMERIC(12,2),
  low_52w NUMERIC(12,2),
  volume BIGINT,
  market_cap NUMERIC(15,0),
  source TEXT,
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(ticker_id, date)
);

-- 3. Technical indicators
CREATE TABLE technicals (
  id SERIAL PRIMARY KEY,
  ticker_id INTEGER REFERENCES tickers(id),
  date DATE NOT NULL,
  rsi_14 NUMERIC(6,2),
  macd_value NUMERIC(10,3),
  macd_signal NUMERIC(10,3),
  macd_histogram NUMERIC(10,3),
  macd_trend TEXT,
  sma_20 NUMERIC(12,2),
  sma_50 NUMERIC(12,2),
  sma_200 NUMERIC(12,2),
  ema_9 NUMERIC(12,2),
  ema_20 NUMERIC(12,2),
  above_sma_20 BOOLEAN,
  above_sma_50 BOOLEAN,
  above_sma_200 BOOLEAN,
  support_level NUMERIC(12,2),
  resistance_level NUMERIC(12,2),
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(ticker_id, date)
);

-- 4. Signals (directional bias per ticker per day)
CREATE TABLE signals (
  id SERIAL PRIMARY KEY,
  ticker_id INTEGER REFERENCES tickers(id),
  date DATE NOT NULL,
  directional_bias TEXT,
  timeframe TEXT,
  risk_factor TEXT,
  catalyst TEXT,
  news_sentiment NUMERIC(3,1),
  signal_reasoning TEXT,
  actual_move_5d_pct NUMERIC(6,2),
  signal_correct BOOLEAN,
  scored_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(ticker_id, date)
);

-- 5. Macro data
CREATE TABLE macro (
  id SERIAL PRIMARY KEY,
  date DATE UNIQUE NOT NULL,
  sp500 NUMERIC(10,2),
  sp500_change_pct NUMERIC(6,2),
  nasdaq NUMERIC(10,2),
  nasdaq_change_pct NUMERIC(6,2),
  vix NUMERIC(6,2),
  dxy NUMERIC(8,2),
  us_10y_yield NUMERIC(5,3),
  wti_crude NUMERIC(8,2),
  brent_crude NUMERIC(8,2),
  macro_regime TEXT,
  macro_summary TEXT,
  created_at TIMESTAMPTZ DEFAULT now()
);

-- 6. Sector correlations
CREATE TABLE sector_correlations (
  id SERIAL PRIMARY KEY,
  date DATE NOT NULL,
  sector_a TEXT NOT NULL,
  sector_b TEXT NOT NULL,
  correlation_30d NUMERIC(5,3),
  rotation_signal TEXT,
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(date, sector_a, sector_b)
);

-- 7. Reports metadata
CREATE TABLE reports (
  id SERIAL PRIMARY KEY,
  date DATE UNIQUE NOT NULL,
  report_version TEXT,
  methodology_version TEXT,
  markdown_content TEXT,
  composite_score NUMERIC(5,1),
  accuracy_score NUMERIC(5,1),
  actionability_score NUMERIC(5,1),
  coverage_score NUMERIC(5,1),
  created_at TIMESTAMPTZ DEFAULT now()
);

-- 8. Experiments log
CREATE TABLE experiments (
  id SERIAL PRIMARY KEY,
  experiment_id TEXT UNIQUE NOT NULL,
  experiment_type TEXT,
  hypothesis TEXT,
  changes_description TEXT,
  started_at DATE,
  status TEXT DEFAULT 'pending',
  cs_before NUMERIC(5,1),
  cs_after NUMERIC(5,1),
  cs_delta NUMERIC(5,1),
  resolved_at DATE,
  resolution_notes TEXT,
  created_at TIMESTAMPTZ DEFAULT now()
);

-- 9. Predictions (future use — ML/confidence scoring)
CREATE TABLE predictions (
  id SERIAL PRIMARY KEY,
  ticker_id INTEGER REFERENCES tickers(id),
  prediction_date DATE NOT NULL,
  target_date DATE NOT NULL,
  predicted_direction TEXT,
  predicted_magnitude_pct NUMERIC(6,2),
  confidence NUMERIC(4,2),
  reasoning TEXT,
  actual_direction TEXT,
  actual_magnitude_pct NUMERIC(6,2),
  prediction_correct BOOLEAN,
  scored_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT now()
);

-- Indexes for common queries
CREATE INDEX idx_daily_prices_date ON daily_prices(date);
CREATE INDEX idx_technicals_date ON technicals(date);
CREATE INDEX idx_signals_date ON signals(date);
CREATE INDEX idx_signals_scored ON signals(signal_correct) WHERE signal_correct IS NOT NULL;
CREATE INDEX idx_macro_date ON macro(date);
CREATE INDEX idx_reports_date ON reports(date);

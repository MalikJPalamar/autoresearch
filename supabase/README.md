# Supabase Setup

## 1. Create the project

Go to [supabase.com](https://supabase.com) and create a new project named `situational-awareness`.
Region: `eu-west-3` (closest to Murcia, Spain).

## 2. Run the schema

In the Supabase SQL Editor, run these files in order:

```
schema.sql  — creates all 9 tables + indexes
seed.sql    — inserts 18 tickers + backfills data from existing reports
```

## 3. Get your credentials

From Project Settings > API, copy:
- `SUPABASE_URL` — your project URL
- `SUPABASE_ANON_KEY` — the `anon` public key

Add these as environment variables on your VPS:

```bash
export SUPABASE_URL="https://your-project.supabase.co"
export SUPABASE_ANON_KEY="your-anon-key"
```

## Tables

| Table | Purpose | Written by |
|-------|---------|-----------|
| `tickers` | 18 fixed stocks (static) | Seed script |
| `daily_prices` | Price snapshots per day | Loop 1 |
| `technicals` | RSI, MACD, MAs, S/R levels | Loop 1 |
| `signals` | Directional bias + sentiment | Loop 1 |
| `macro` | VIX, DXY, yields, oil | Loop 1 |
| `sector_correlations` | Cross-sector correlations | Loop 2 |
| `reports` | Report metadata + scores | Loop 1 |
| `experiments` | Keep/discard experiment log | Loop 2 |
| `predictions` | Future: ML predictions | Phase 4 |

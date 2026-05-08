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

From Project Settings > API Keys, copy:
- `SUPABASE_URL` — your project URL (from General settings)
- `SUPABASE_PUBLISHABLE_KEY` — the publishable key (starts with `sb_publishable_`)
- `SUPABASE_SECRET_KEY` — the secret key (starts with `sb_secret_`, only if RLS blocks writes)

On your VPS, copy `.env.example` to `.env` and fill in the values:

```bash
cd /root/autoresearch
cp .env.example .env
# Edit .env with your credentials
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

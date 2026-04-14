# Autoresearch - Scheduled Session Guide

This repo uses the autoresearch methodology: autonomous AI-driven experimentation
with a keep/discard loop. See `program.md` for the full experiment protocol.

## For Scheduled Claude Code Sessions

When running as a scheduled trigger, follow these steps:

### 1. Setup
```bash
uv sync
```
Verify data exists at `~/.cache/autoresearch/`. If missing, run `uv run prepare.py`.

### 2. Read Context
Read these files before starting:
- `program.md` — full experiment protocol
- `train.py` — the file you modify (model, optimizer, training loop)
- `prepare.py` — fixed constants and evaluation (DO NOT modify)
- `results.tsv` — prior experiment log (create if missing)

### 3. Run the Experiment Loop
Follow the loop in `program.md` exactly:
1. Modify `train.py` with an experimental idea
2. `git commit` the change
3. Run: `uv run train.py > run.log 2>&1`
4. Extract: `grep "^val_bpb:\|^peak_vram_mb:" run.log`
5. If val_bpb improved → keep commit. If not → `git reset --hard HEAD~1`
6. Log result to `results.tsv`
7. Push kept improvements: `git push origin HEAD`
8. Repeat

### 4. Push Results
After each kept experiment, push to the current branch so progress is saved
between scheduled sessions. Do NOT push discarded experiments.

## Key Constraints
- Only modify `train.py`
- 5-minute time budget per experiment
- Goal: minimize val_bpb
- Simpler code wins when improvements are marginal
- Never stop to ask — run autonomously until the session ends

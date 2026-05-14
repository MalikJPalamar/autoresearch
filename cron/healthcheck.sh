#!/usr/bin/env bash
# Health check for SA Portfolio cron jobs
# Shows whether jobs ran recently, last report date, and any failures.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$SCRIPT_DIR/logs"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo "=== SA Portfolio Health Check ==="
echo "Time: $(date '+%Y-%m-%d %H:%M:%S %Z')"
echo ""

# Check cron installation
CRON_FILE="/etc/cron.d/autoresearch"
if [ -f "$CRON_FILE" ]; then
    echo -e "Cron:     ${GREEN}INSTALLED${NC}"
else
    echo -e "Cron:     ${RED}NOT INSTALLED${NC} — run cron/setup.sh install"
fi

# Check claude CLI
if command -v claude &>/dev/null; then
    echo -e "Claude:   ${GREEN}AVAILABLE${NC}"
else
    echo -e "Claude:   ${RED}NOT FOUND${NC}"
fi

# Check .env
if [ -f "$REPO_DIR/.env" ]; then
    echo -e "Supabase: ${GREEN}CONFIGURED${NC}"
else
    echo -e "Supabase: ${YELLOW}NOT CONFIGURED${NC} (.env missing)"
fi

echo ""

# Last Loop 1 run
if [ -d "$LOG_DIR" ]; then
    LAST_DAILY="$(ls -t "$LOG_DIR"/daily_*.log 2>/dev/null | head -1)"
    if [ -n "$LAST_DAILY" ]; then
        DAILY_DATE="$(stat -c %Y "$LAST_DAILY" 2>/dev/null || stat -f %m "$LAST_DAILY" 2>/dev/null)"
        DAILY_AGE=$(( ($(date +%s) - DAILY_DATE) / 3600 ))
        DAILY_EXIT="$(tail -1 "$LAST_DAILY" | grep -oP 'exit code \K[0-9]+' || echo "unknown")"
        if [ "$DAILY_AGE" -lt 25 ]; then
            echo -e "Loop 1:   ${GREEN}Ran ${DAILY_AGE}h ago${NC} (exit: $DAILY_EXIT)"
        elif [ "$DAILY_AGE" -lt 50 ]; then
            echo -e "Loop 1:   ${YELLOW}Ran ${DAILY_AGE}h ago${NC} (exit: $DAILY_EXIT)"
        else
            echo -e "Loop 1:   ${RED}Ran ${DAILY_AGE}h ago${NC} (exit: $DAILY_EXIT)"
        fi
    else
        echo -e "Loop 1:   ${YELLOW}Never run${NC}"
    fi

    LAST_RESEARCH="$(ls -t "$LOG_DIR"/research_*.log 2>/dev/null | head -1)"
    if [ -n "$LAST_RESEARCH" ]; then
        RESEARCH_DATE="$(stat -c %Y "$LAST_RESEARCH" 2>/dev/null || stat -f %m "$LAST_RESEARCH" 2>/dev/null)"
        RESEARCH_AGE=$(( ($(date +%s) - RESEARCH_DATE) / 3600 ))
        RESEARCH_EXIT="$(tail -1 "$LAST_RESEARCH" | grep -oP 'exit code \K[0-9]+' || echo "unknown")"
        if [ "$RESEARCH_AGE" -lt 25 ]; then
            echo -e "Loop 2:   ${GREEN}Ran ${RESEARCH_AGE}h ago${NC} (exit: $RESEARCH_EXIT)"
        elif [ "$RESEARCH_AGE" -lt 50 ]; then
            echo -e "Loop 2:   ${YELLOW}Ran ${RESEARCH_AGE}h ago${NC} (exit: $RESEARCH_EXIT)"
        else
            echo -e "Loop 2:   ${RED}Ran ${RESEARCH_AGE}h ago${NC} (exit: $RESEARCH_EXIT)"
        fi
    else
        echo -e "Loop 2:   ${YELLOW}Never run${NC}"
    fi
else
    echo -e "Loop 1:   ${YELLOW}No logs directory${NC}"
    echo -e "Loop 2:   ${YELLOW}No logs directory${NC}"
fi

echo ""

# Latest report
LATEST_REPORT="$(ls -t "$REPO_DIR/auto-research/"*-report*.md 2>/dev/null | grep -v latest | head -1)"
if [ -n "$LATEST_REPORT" ]; then
    REPORT_NAME="$(basename "$LATEST_REPORT")"
    echo "Latest report: $REPORT_NAME"
else
    echo "Latest report: none"
fi

# Experiment status
RESULTS_FILE="$REPO_DIR/auto-research/results.tsv"
if [ -f "$RESULTS_FILE" ] && [ "$(wc -l < "$RESULTS_FILE")" -gt 1 ]; then
    LATEST_LINE="$(tail -1 "$RESULTS_FILE")"
    LATEST_EXP="$(echo "$LATEST_LINE" | awk -F'\t' '{print $3}')"
    LATEST_CS="$(echo "$LATEST_LINE" | awk -F'\t' '{print $4}')"
    LATEST_STATUS="$(echo "$LATEST_LINE" | awk -F'\t' '{print $8}')"
    echo "Experiment:    $LATEST_EXP (CS: $LATEST_CS, status: $LATEST_STATUS)"
fi

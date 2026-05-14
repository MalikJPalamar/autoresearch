#!/usr/bin/env bash
# Setup script for SA Portfolio cron jobs
# Usage: ./cron/setup.sh [install|uninstall|status]

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
CRON_FILE="/etc/cron.d/autoresearch"

usage() {
    echo "Usage: $0 [install|uninstall|status]"
    echo ""
    echo "Commands:"
    echo "  install    Install cron jobs to /etc/cron.d/autoresearch"
    echo "  uninstall  Remove autoresearch cron jobs"
    echo "  status     Show current cron job status and recent logs"
    echo ""
    echo "The cron jobs will:"
    echo "  - Loop 1: Daily SA report at 9pm CET (19:00 UTC) on weekdays"
    echo "  - Loop 2: Auto-research evaluation at 11pm CET (21:00 UTC) on weekdays"
    echo "  - Cleanup: Remove logs older than 30 days (Sundays at 3am UTC)"
}

install_crons() {
    chmod +x "$SCRIPT_DIR/daily_report.sh"
    chmod +x "$SCRIPT_DIR/auto_research.sh"
    mkdir -p "$SCRIPT_DIR/logs"

    if [ ! -f "$REPO_DIR/.env" ]; then
        echo "WARNING: No .env file found at $REPO_DIR/.env"
        echo "  Supabase integration will be skipped until credentials are configured."
        echo "  Copy .env.example to .env and fill in your Supabase credentials."
        echo ""
    fi

    if ! command -v claude &>/dev/null; then
        echo "ERROR: 'claude' CLI not found in PATH."
        echo "  Install Claude Code: https://docs.anthropic.com/en/docs/claude-code"
        exit 1
    fi

    cat > "$CRON_FILE" <<CRONTAB
# Situational Awareness Portfolio — Cron Jobs
# Installed by: $0
# Repo: $REPO_DIR

SHELL=/bin/bash
PATH=/usr/local/bin:/usr/bin:/bin

# Loop 1 — Daily SA Report: 9pm CET (19:00 UTC) on weekdays
0 19 * * 1-5 root $SCRIPT_DIR/daily_report.sh

# Loop 2 — Auto-Research: 11pm CET (21:00 UTC) on weekdays
0 21 * * 1-5 root $SCRIPT_DIR/auto_research.sh

# Cleanup: Remove logs older than 30 days (Sundays at 3am UTC)
0 3 * * 0 root find $SCRIPT_DIR/logs -name '*.log' -mtime +30 -delete
CRONTAB

    echo "Cron jobs installed to $CRON_FILE"
    echo ""
    echo "Schedule (all times weekdays only):"
    echo "  Loop 1 (Daily Report):   19:00 UTC / 9pm CET"
    echo "  Loop 2 (Auto-Research):  21:00 UTC / 11pm CET"
    echo "  Log cleanup:             03:00 UTC Sundays"
    echo ""
    echo "Logs: $SCRIPT_DIR/logs/"
    echo ""
    echo "To verify: cat $CRON_FILE"
}

uninstall_crons() {
    if [ -f "$CRON_FILE" ]; then
        rm "$CRON_FILE"
        echo "Cron jobs removed ($CRON_FILE deleted)."
    else
        echo "No autoresearch cron jobs found at $CRON_FILE."
    fi
}

show_status() {
    echo "=== SA Portfolio Cron Status ==="
    echo ""

    if [ -f "$CRON_FILE" ]; then
        echo "Status: INSTALLED"
        echo "File:   $CRON_FILE"
        echo ""
        echo "Active entries:"
        grep -v "^#" "$CRON_FILE" | grep -v "^$" | grep -v "^SHELL\|^PATH" || true
    else
        echo "Status: NOT INSTALLED"
        echo "Run '$0 install' to set up cron jobs."
    fi

    echo ""

    if [ -f "$REPO_DIR/.env" ]; then
        echo "Supabase: configured (.env found)"
    else
        echo "Supabase: NOT configured (no .env file)"
    fi

    echo ""

    if [ -d "$SCRIPT_DIR/logs" ]; then
        LOG_COUNT="$(find "$SCRIPT_DIR/logs" -name '*.log' 2>/dev/null | wc -l)"
        echo "Logs: $LOG_COUNT files in $SCRIPT_DIR/logs/"
        if [ "$LOG_COUNT" -gt 0 ]; then
            echo "Latest:"
            ls -lt "$SCRIPT_DIR/logs/"*.log 2>/dev/null | head -3 | while read -r line; do
                FILE="$(echo "$line" | awk '{print $NF}')"
                SIZE="$(echo "$line" | awk '{print $5}')"
                DATE="$(echo "$line" | awk '{print $6, $7, $8}')"
                BASENAME="$(basename "$FILE")"
                echo "  $BASENAME ($SIZE bytes, $DATE)"
            done
        fi
    else
        echo "Logs: No log directory yet"
    fi

    echo ""

    RESULTS_FILE="$REPO_DIR/auto-research/results.tsv"
    if [ -f "$RESULTS_FILE" ] && [ "$(wc -l < "$RESULTS_FILE")" -gt 1 ]; then
        TOTAL="$(tail -n +2 "$RESULTS_FILE" | wc -l)"
        KEEPS="$(tail -n +2 "$RESULTS_FILE" | grep -i "keep" | wc -l)"
        LATEST_CS="$(tail -1 "$RESULTS_FILE" | awk -F'\t' '{print $4}')"
        echo "Experiments: $TOTAL total ($KEEPS kept)"
        echo "Latest CS:   ${LATEST_CS:-N/A}"
    else
        echo "Experiments: No results recorded yet"
    fi
}

case "${1:-}" in
    install)   install_crons ;;
    uninstall) uninstall_crons ;;
    status)    show_status ;;
    *)         usage ;;
esac

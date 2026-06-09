#!/bin/bash
# Stop the Shieldd compliance demo stack started by shieldd-up.sh.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "$SCRIPT_DIR/lib/common.sh"

PID_FILE="$COMPLIANCE_TMP/shieldd-pids.txt"

print_banner "Shieldd Infra Teardown"
kill_tracked_pids "$PID_FILE"
log_success "Shieldd infra stopped"

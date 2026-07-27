#!/bin/bash
# Remove only stale CI resources with validated Orbis integration ownership.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "$SCRIPT_DIR/lib/common.sh"

COMPOSE_FILE="$COMPLIANCE_REPO_ROOT/deployments/orbis/docker-compose.yml"
PROJECT_PATTERN='^orbis-[0-9]+-[0-9]+$'
TMP_PATTERN='^/tmp/orbis-[0-9]+-[0-9]+$'

ensure_docker_daemon
ensure_orbis_images

projects="$(
    {
        docker ps -a \
            --filter label=com.docker.compose.project \
            --format '{{.Label "com.docker.compose.project"}}'
        docker network ls \
            --filter label=com.docker.compose.project \
            --format '{{.Label "com.docker.compose.project"}}'
        docker volume ls \
            --filter label=com.docker.compose.project \
            --format '{{.Label "com.docker.compose.project"}}'
    } | sort -u
)"

while IFS= read -r project; do
    [ -n "$project" ] || continue
    if [[ "$project" =~ $PROJECT_PATTERN ]]; then
        log_info "Removing owned stale Compose project: $project"
        ORBIS_COMPOSE_PROJECT_NAME="$project" \
            run_orbis_compose "$COMPOSE_FILE" down -v --remove-orphans
    fi
done <<< "$projects"

shopt -s nullglob
for pid_file in /tmp/orbis-*-*/shieldd-pids.txt; do
    tmp_root="${pid_file%/shieldd-pids.txt}"
    if [[ ! "$tmp_root" =~ $TMP_PATTERN ]]; then
        continue
    fi

    while IFS='=' read -r _ pid; do
        [[ "${pid:-}" =~ ^[0-9]+$ ]] || continue
        [ -d "/proc/$pid" ] || continue

        executable="$(readlink -f "/proc/$pid/exe" 2>/dev/null || true)"
        executable="${executable% (deleted)}"
        executable_name="${executable##*/}"
        case "$executable_name" in
            pd|cometbft|pclientd) ;;
            *)
                log_warning "Skipping PID $pid: unexpected executable $executable_name"
                continue
                ;;
        esac

        cmdline="$(tr '\0' ' ' < "/proc/$pid/cmdline" 2>/dev/null || true)"
        if [[ "$cmdline" != *"$tmp_root"* ]]; then
            log_warning "Skipping PID $pid: command line does not contain $tmp_root"
            continue
        fi

        log_info "Stopping owned stale $executable_name process: $pid"
        kill "$pid" 2>/dev/null || true
    done < "$pid_file"

    rm -f "$pid_file"
done

log_success "Owned stale Orbis integration resources cleaned"

#!/usr/bin/env bash
set -euo pipefail

# Build one named Lean module serially while enforcing a process-group RSS and
# wall-time ceiling. This writes the normal Lake artifacts; use
# lean-leaf-bench.sh when an isolated fresh artifact is required instead.

fail() { echo "lean-build-safe failed: $*" >&2; exit 1; }

[[ "$#" -eq 1 ]] || fail "usage: $(basename "$0") <SPECIFIC.MODULE>"
TARGET="$1"
[[ -n "$TARGET" && "$TARGET" != *" "* ]] || fail "target must be one named module"
[[ "$TARGET" != "ShielddGnarkFormal" ]] || fail "whole-package builds are forbidden"

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/tools/gnark/lean"
MAX_RSS_MB="${LEAN_BUILD_MAX_RSS_MB:-8192}"
MAX_SECS="${LEAN_BUILD_MAX_SECS:-1800}"
FAILURE_LOG_BYTES="${LEAN_BUILD_FAILURE_LOG_BYTES:-32768}"
[[ "$MAX_RSS_MB" =~ ^[1-9][0-9]*$ ]] || fail "LEAN_BUILD_MAX_RSS_MB must be positive"
[[ "$MAX_SECS" =~ ^[1-9][0-9]*$ ]] || fail "LEAN_BUILD_MAX_SECS must be positive"
[[ "$FAILURE_LOG_BYTES" =~ ^[1-9][0-9]*$ ]] \
  || fail "LEAN_BUILD_FAILURE_LOG_BYTES must be positive"
(( FAILURE_LOG_BYTES <= 131072 )) \
  || fail "LEAN_BUILD_FAILURE_LOG_BYTES must not exceed 131072"

TMP="$(mktemp -d "${TMPDIR:-/tmp}/lean-build-safe.XXXXXX")"
trap 'rm -rf "$TMP"' EXIT
LOG="$TMP/build.log"
LAKE_ARGS=(--no-ansi)
if [[ "${LEAN_BUILD_VERBOSE:-0}" == "1" ]]; then
  LAKE_ARGS+=(--verbose)
fi

RSS_SAMPLER="ps"
if ! ps -e -o rss= -o pgid= >/dev/null 2>&1; then
  if [[ "$(uname -s)" == "Darwin" ]] && command -v cc >/dev/null 2>&1; then
    RSS_HELPER="$TMP/process-group-rss"
    if cc -O2 "$ROOT/scripts/macos-process-group-rss.c" -o "$RSS_HELPER"; then
      RSS_SAMPLER="macos-helper"
    else
      fail "could not compile the macOS RSS sampler"
    fi
  else
    fail "process-group RSS sampling is unavailable; refusing an unguarded build"
  fi
fi

set -m
cd "$LEAN_DIR"
LEAN_NUM_THREADS=1 lake "${LAKE_ARGS[@]}" build "$TARGET" >"$LOG" 2>&1 &
BUILD_PID=$!
PGID=$BUILD_PID

group_rss_kb() {
  if [[ "$RSS_SAMPLER" == "macos-helper" ]]; then
    "$RSS_HELPER" "$PGID"
  else
    ps -e -o rss= -o pgid= 2>/dev/null \
      | awk -v group="$PGID" '$2 == group { total += $1 } END { print total + 0 }'
  fi
}

kill_group() { kill -9 -- "-$PGID" 2>/dev/null || true; }

abort_build() {
  kill_group
  exit 130
}

trap abort_build INT TERM

print_group() {
  if [[ "$RSS_SAMPLER" == "macos-helper" ]]; then
    printf 'process-group %s RSS: %sKB\n' "$PGID" "$(group_rss_kb)"
    return
  fi
  local snapshot
  snapshot="$(ps -e -o rss= -o pgid= 2>/dev/null)" || return 0
  awk -v group="$PGID" '$2 == group' <<<"$snapshot"
}

MAX_RSS_KB=$((MAX_RSS_MB * 1024))
peak_rss_kb=0
start=$(date +%s)
killed=""
if kill -0 "$BUILD_PID" 2>/dev/null; then
  if ! initial_rss_kb=$(group_rss_kb); then
    kill_group
    wait "$BUILD_PID" 2>/dev/null || true
    fail "RSS sampler failed before build monitoring"
  fi
  # A fully cached target can finish between kill -0 and the sample. Zero RSS
  # is only a sampler failure while the process is still live.
  if (( initial_rss_kb == 0 )) && kill -0 "$BUILD_PID" 2>/dev/null; then
    kill_group
    wait "$BUILD_PID" 2>/dev/null || true
    fail "RSS sampler returned zero for the live build process group"
  fi
fi

while kill -0 "$BUILD_PID" 2>/dev/null; do
  if ! rss_kb=$(group_rss_kb); then
    echo "lean-build-safe: RSS sampler failed; killing $TARGET" >&2
    kill_group
    killed="sampler"
    break
  fi
  (( rss_kb > peak_rss_kb )) && peak_rss_kb=$rss_kb
  elapsed=$(( $(date +%s) - start ))
  if (( rss_kb > MAX_RSS_KB )); then
    echo "lean-build-safe: RSS $((rss_kb / 1024))MB exceeded ${MAX_RSS_MB}MB; killing $TARGET" >&2
    print_group >&2 || true
    kill_group
    killed="rss"
    break
  fi
  if (( elapsed > MAX_SECS )); then
    echo "lean-build-safe: time ${elapsed}s exceeded ${MAX_SECS}s; killing $TARGET" >&2
    print_group >&2 || true
    kill_group
    killed="time"
    break
  fi
  sleep 1
done

wait "$BUILD_PID" && build_rc=0 || build_rc=$?
elapsed=$(( $(date +%s) - start ))
if [[ -n "$killed" || "$build_rc" -ne 0 ]]; then
  log_bytes=$(wc -c <"$LOG")
  if (( log_bytes > FAILURE_LOG_BYTES )); then
    printf 'lean-build-safe: failure log truncated from %s to last %s bytes\n' \
      "$log_bytes" "$FAILURE_LOG_BYTES" >&2
  fi
  tail -c "$FAILURE_LOG_BYTES" "$LOG"
else
  grep -F "Built $TARGET" "$LOG" | tail -n 1 || true
  grep -F "Build completed successfully." "$LOG" | tail -n 1 || true
fi
printf 'lean-build-safe: target=%s time=%ss peak_rss=%sMB threads=1\n' \
  "$TARGET" "$elapsed" "$((peak_rss_kb / 1024))"

if [[ -n "${LEAN_BUILD_METRICS_OUT:-}" ]]; then
  metrics_status=passed
  [[ -n "$killed" || "$build_rc" -ne 0 ]] && metrics_status=failed
  metrics_args=(
    record
    --target "${TARGET#+}"
    --change-class "${LEAN_BUILD_CHANGE_CLASS:-full_refinement}"
    --cache-state "${LEAN_BUILD_CACHE_STATE:-warm}"
    --wall-seconds "$elapsed"
    --peak-rss-mb "$((peak_rss_kb / 1024))"
    --status "$metrics_status"
    --output "$LEAN_BUILD_METRICS_OUT"
  )
  if [[ -n "${LEAN_BUILD_BASELINE_METRICS:-}" ]]; then
    metrics_args+=(--baseline "$LEAN_BUILD_BASELINE_METRICS")
  fi
  if [[ "${LEAN_BUILD_CHECK_BUDGET:-0}" == "1" ]]; then
    metrics_args+=(--check-budget)
  fi
  python3 "$ROOT/scripts/fv_lean_build_metrics.py" "${metrics_args[@]}" \
    || fail "build metrics or budget check failed"
fi

if [[ -n "$killed" ]]; then
  fail "terminated on $killed ceiling"
fi
exit "$build_rc"

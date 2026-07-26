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
[[ "$MAX_RSS_MB" =~ ^[1-9][0-9]*$ ]] || fail "LEAN_BUILD_MAX_RSS_MB must be positive"
[[ "$MAX_SECS" =~ ^[1-9][0-9]*$ ]] || fail "LEAN_BUILD_MAX_SECS must be positive"

TMP="$(mktemp -d "${TMPDIR:-/tmp}/lean-build-safe.XXXXXX")"
trap 'rm -rf "$TMP"' EXIT
LOG="$TMP/build.log"
LAKE_ARGS=(--no-ansi)
if [[ "${LEAN_BUILD_VERBOSE:-0}" == "1" ]]; then
  LAKE_ARGS+=(--verbose)
fi

set -m
cd "$LEAN_DIR"
LEAN_NUM_THREADS=1 lake "${LAKE_ARGS[@]}" build "$TARGET" >"$LOG" 2>&1 &
BUILD_PID=$!
PGID=$BUILD_PID

group_rss_kb() {
  ps -A -o pgid=,rss= 2>/dev/null \
    | awk -v group="$PGID" '$1 == group { total += $2 } END { print total + 0 }'
}

kill_group() { kill -9 -- "-$PGID" 2>/dev/null || true; }

abort_build() {
  kill_group
  exit 130
}

trap abort_build INT TERM

print_group() {
  ps -A -o pgid=,pid=,rss=,command= 2>/dev/null \
    | awk -v group="$PGID" '$1 == group'
}

MAX_RSS_KB=$((MAX_RSS_MB * 1024))
peak_rss_kb=0
start=$(date +%s)
killed=""

while kill -0 "$BUILD_PID" 2>/dev/null; do
  rss_kb=$(group_rss_kb)
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
  cat "$LOG"
else
  grep -F "Built $TARGET" "$LOG" | tail -n 1 || true
  grep -F "Build completed successfully." "$LOG" | tail -n 1 || true
fi
printf 'lean-build-safe: target=%s time=%ss peak_rss=%sMB threads=1\n' \
  "$TARGET" "$elapsed" "$((peak_rss_kb / 1024))"

if [[ -n "$killed" ]]; then
  fail "terminated on $killed ceiling"
fi
exit "$build_rc"

#!/usr/bin/env bash
# Run Picus with a hard wall-clock bound that kills the ENTIRE process tree.
#
# Picus' run-picus is a bash wrapper that spawns a long-lived racket process.
# A plain `alarm`/SIGALRM only kills the wrapper, orphaning racket (observed
# running 17+ min past its budget). This runner puts Picus in its own process
# group via setsid-equivalent and kills the whole group on timeout.
#
# Usage: run-picus-bounded.sh <timeout_seconds> <picus> [picus-args...]
# Exit:  Picus' exit code, or 124 on timeout.
set -uo pipefail

timeout_s="$1"; shift
picus="$1"; shift

# Start Picus as its own process-group leader.
set -m
"$picus" "$@" &
pgid=$!

( sleep "$timeout_s"; kill -TERM -"$pgid" 2>/dev/null; sleep 3; kill -KILL -"$pgid" 2>/dev/null ) &
watchdog=$!

wait "$pgid"; rc=$?
# Reap watchdog; if it already fired, report timeout.
if kill -0 "$watchdog" 2>/dev/null; then
  kill "$watchdog" 2>/dev/null
else
  rc=124
fi
exit "$rc"

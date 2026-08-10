#!/usr/bin/env bash
set -euo pipefail

# Leaf/aggregator benchmark for a single Lean module — the fast inner loop for
# DTK adapter proofs.  Compiles ONE module (against cached upstream oleans) into
# an isolated temp dir with a FRESH artifact, then reports wall time, peak RSS,
# and produced .olean size and checks them against budgets.
#
#   scripts/lean-leaf-bench.sh <FILE.lean|Module.Name> [leaf|aggregator|contract|import|audit|expect-fail]
#
# Budget tiers (default: leaf):
#   leaf        < 60s  / < 2GB RSS / < 10MB olean   (a single proof leaf)
#   aggregator  < 120s / < 4GB RSS / < 50MB olean   (a fan-in aggregator)
#   contract    < 180s / < 8GB RSS / < 256MB olean  (a generated Seg module)
#   import      < 30s  / no RSS/olean cap            (import-only floor probe:
#                measures the cost of loading upstream oleans, reported but not
#                budget-checked, so leaf/aggregator marginal cost can be read
#                net of it)
#   audit       < 180s / no olean cap                 (guarded axiom/report import;
#                BENCH_HARD_RSS_MB remains an absolute kill ceiling)
#   expect-fail < 60s  / no olean cap                 (requires Lean to reject the
#                module; BENCH_EXPECT_ERROR optionally matches the diagnostic)
#
# Notes:
#   - CLEAN run by default (no trace.profiler — it adds overhead).  Set
#     BENCH_PROFILE=1 for a profiled diagnostic; JSON goes to $BENCH_PROFILE_OUT
#     (default ./leaf-profile-<module>.json, OUTSIDE the temp dir so it survives).
#   - macOS has no `timeout`/`ulimit -v`.  The compile runs in its own PROCESS
#     GROUP; RSS is summed over that group ONLY (never other lean/lake processes
#     on the machine) and the group is actively KILLED on time/RSS breach — so a
#     runaway or a deliberately-broken cert fails fast, never waits all night.
#   - Import RSS dominates leaves (loading a big upstream olean can cost GBs).
#     Run the `import` tier once to get the floor, then pass it as
#     BENCH_IMPORT_FLOOR_MB=<n> and identify the import-only source with
#     BENCH_IMPORT_FLOOR_SOURCE=<file>. Leaf/aggregator RSS is then budgeted on
#     MARGINAL cost (peak - floor). Without it, the RSS check is absolute.
#   - BENCH_HARD_RSS_MB (default 12288) is an absolute machine-safety ceiling
#     applied to every tier, including import-only and expected-failure probes.
#   - BENCH_LEAN_PATH_PREPEND adds a scratch olean root before Lake's normal
#     search path. BENCH_OLEAN_OUT preserves the successful fresh artifact at
#     a caller-selected path, enabling serial generated-module overlay checks.
#   - LEAN_NUM_THREADS=1 is forced (single heavy worker, bounded memory).
#   - `contract` tier passes `--tstack=65520` to `lean` by default (override
#     with BENCH_TSTACK_KB): large generated Seg*.lean files can overflow
#     Lean's worker-thread stack while elaborating a multi-thousand-conjunct
#     relation, independent of the process `ulimit -s` (worker threads don't
#     inherit it) and independent of the time/RSS budgets above.

set -m  # job control: each background job gets its own process group

fail() { echo "lean-leaf-bench failed: $*" >&2; exit 1; }

[[ "$#" -ge 1 ]] || fail "usage: $(basename "$0") <FILE.lean|Module.Name> [leaf|aggregator|contract|import|audit|expect-fail]"

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/tools/gnark/lean"
TARGET="$1"
TIER="${2:-leaf}"

case "$TIER" in
  leaf)       MAX_SECS=60;  MAX_RSS_KB=$((2*1024*1024)); MAX_OLEAN=$((10*1024*1024)); CHECK_SIZE=1 ;;
  aggregator) MAX_SECS=120; MAX_RSS_KB=$((4*1024*1024)); MAX_OLEAN=$((50*1024*1024)); CHECK_SIZE=1 ;;
  contract)   MAX_SECS=180; MAX_RSS_KB=$((8*1024*1024)); MAX_OLEAN=$((256*1024*1024)); CHECK_SIZE=1 ;;
  import)     MAX_SECS=30;  MAX_RSS_KB=0;                MAX_OLEAN=0;                 CHECK_SIZE=0 ;;
  audit)      MAX_SECS=180; MAX_RSS_KB=0;                MAX_OLEAN=0;                 CHECK_SIZE=0 ;;
  expect-fail) MAX_SECS=60; MAX_RSS_KB=0;                MAX_OLEAN=0;                 CHECK_SIZE=0 ;;
  *) fail "unknown tier '$TIER' (expected leaf|aggregator|contract|import|audit|expect-fail)" ;;
esac

# Resolve module name -> source file path (relative to LEAN_DIR).
if [[ "$TARGET" == *.lean ]]; then
  FILE="$TARGET"; [[ "$FILE" = /* ]] || FILE="$LEAN_DIR/$FILE"
else
  FILE="$LEAN_DIR/${TARGET//.//}.lean"
fi
[[ -f "$FILE" ]] || fail "module source not found: $FILE"
LEAN_ROOT_ARGS=()
case "$FILE" in
  "$LEAN_DIR"/*) ;;
  *)
    # Generated audit files live in fail-closed temporary directories outside
    # the package root. Imports still resolve through Lake's LEAN_PATH, while
    # this root lets Lean derive a legal module name for the external input.
    LEAN_ROOT_ARGS=(--root="$(dirname "$FILE")")
    ;;
esac

TMP="$(mktemp -d "${TMPDIR:-/tmp}/lean-leaf-bench.XXXXXX")"
trap 'rm -rf "$TMP"' EXIT
OUT_OLEAN="$TMP/out.olean"; OUT_ILEAN="$TMP/out.ilean"
PRESERVE_OLEAN="${BENCH_OLEAN_OUT:-}"
LEAN_PATH_PREPEND="${BENCH_LEAN_PATH_PREPEND:-}"
OUTPUT_BYTES="${BENCH_OUTPUT_BYTES:-32768}"
[[ "$OUTPUT_BYTES" =~ ^[1-9][0-9]*$ ]] \
  || fail "BENCH_OUTPUT_BYTES must be positive"
(( OUTPUT_BYTES <= 131072 )) \
  || fail "BENCH_OUTPUT_BYTES must not exceed 131072"

RSS_SAMPLER="ps"
if ! ps aux -o pgid= >/dev/null 2>&1; then
  if [[ "$(uname -s)" == "Darwin" ]] && command -v cc >/dev/null 2>&1; then
    RSS_HELPER="$TMP/process-group-rss"
    if cc -O2 "$ROOT/scripts/macos-process-group-rss.c" -o "$RSS_HELPER"; then
      RSS_SAMPLER="macos-helper"
    else
      fail "could not compile the macOS RSS sampler"
    fi
  else
    fail "process-group RSS sampling is unavailable; refusing an unguarded benchmark"
  fi
fi

PROFILE_OUT="${BENCH_PROFILE_OUT:-$PWD/leaf-profile-$(basename "${TARGET%.lean}").json}"
PROFILE_ARGS=()
[[ "${BENCH_PROFILE:-0}" == "1" ]] && \
  PROFILE_ARGS=(-Dtrace.profiler=true "-Dtrace.profiler.output=$PROFILE_OUT")

if (( CHECK_SIZE == 1 )); then
  echo "bench: $TARGET  [tier=$TIER]  budgets: ${MAX_SECS}s / $((MAX_RSS_KB/1024))MB marginal RSS / $((MAX_OLEAN/1024/1024))MB olean"
else
  echo "bench: $TARGET  [tier=$TIER]  budget: ${MAX_SECS}s"
fi

cd "$LEAN_DIR"

LEAN_CMD=(lake env lean)
if [[ -n "$LEAN_PATH_PREPEND" ]]; then
  [[ "$LEAN_PATH_PREPEND" = /* ]] || LEAN_PATH_PREPEND="$ROOT/$LEAN_PATH_PREPEND"
  [[ -d "$LEAN_PATH_PREPEND" ]] || fail "Lean path prefix not found: $LEAN_PATH_PREPEND"
  BASE_LEAN_PATH="$(lake env printenv LEAN_PATH)"
  LEAN_CMD=(lake env env "LEAN_PATH=$LEAN_PATH_PREPEND:$BASE_LEAN_PATH" lean)
fi

# `contract` tier files are large mechanically-generated single-module
# relation conjunctions (thousands of `relationRowN`/`relationPartN`
# theorems in one file); Lean's *thread* stack (not the process `ulimit -s`,
# which the elaborator's worker threads don't inherit) can overflow while
# elaborating them even well inside the time/RSS budget above. `--tstack`
# sets Lean's own worker-thread stack size in Kb; 65520 is the largest value
# accepted on macOS (its pthread hard cap). Only applied at `contract` tier
# by default since smaller leaf/aggregator modules haven't needed it.
TSTACK_KB="${BENCH_TSTACK_KB:-}"
if [[ -z "$TSTACK_KB" && "$TIER" == "contract" ]]; then
  TSTACK_KB=65520
fi
TSTACK_ARGS=()
[[ -n "$TSTACK_KB" ]] && TSTACK_ARGS=(--tstack="$TSTACK_KB")

# Launch the compile as the leader of its own process group.
LEAN_NUM_THREADS=1 "${LEAN_CMD[@]}" \
  ${LEAN_ROOT_ARGS[@]+"${LEAN_ROOT_ARGS[@]}"} "$FILE" \
  -o "$OUT_OLEAN" -i "$OUT_ILEAN" --json \
  ${TSTACK_ARGS[@]+"${TSTACK_ARGS[@]}"} ${PROFILE_ARGS[@]+"${PROFILE_ARGS[@]}"} \
  >"$TMP/lean.out" 2>"$TMP/lean.err" &
LEAN_PID=$!
PGID=$LEAN_PID   # under `set -m`, the job's pgid == its leader pid

group_rss_kb() {
  if [[ "$RSS_SAMPLER" == "macos-helper" ]]; then
    "$RSS_HELPER" "$PGID"
  else
    ps aux -o pgid= 2>/dev/null \
      | awk -v group="$PGID" '$NF == group { total += $6 } END { print total + 0 }'
  fi
}
kill_group()   { kill -9 -- "-$PGID" 2>/dev/null || true; }

# Marginal RSS = peak minus the import floor (if provided).  Kill headroom adds
# the floor back so we don't kill a leaf for import RSS it can't avoid.
FLOOR_KB=$(( ${BENCH_IMPORT_FLOOR_MB:-0} * 1024 ))
FLOOR_SOURCE="${BENCH_IMPORT_FLOOR_SOURCE:-}"
if (( FLOOR_KB > 0 )); then
  [[ -n "$FLOOR_SOURCE" ]] \
    || fail "BENCH_IMPORT_FLOOR_SOURCE is required with BENCH_IMPORT_FLOOR_MB"
  [[ "$FLOOR_SOURCE" = /* ]] || FLOOR_SOURCE="$ROOT/$FLOOR_SOURCE"
  [[ -f "$FLOOR_SOURCE" ]] \
    || fail "import-floor source not found: $FLOOR_SOURCE"
fi
HARD_RSS_KB=$(( ${BENCH_HARD_RSS_MB:-12288} * 1024 ))
if (( CHECK_SIZE == 1 )); then
  KILL_RSS_KB=$(( MAX_RSS_KB + FLOOR_KB ))
  (( KILL_RSS_KB > HARD_RSS_KB )) && KILL_RSS_KB=$HARD_RSS_KB
else
  KILL_RSS_KB=$HARD_RSS_KB
fi

peak_rss_kb=0; killed=""; start=$(date +%s)
if kill -0 "$LEAN_PID" 2>/dev/null; then
  if ! initial_rss_kb=$(group_rss_kb); then
    kill_group
    wait "$LEAN_PID" 2>/dev/null || true
    fail "RSS sampler failed before benchmark monitoring"
  fi
  # A tiny audit can finish between kill -0 and the sample. Zero RSS is only a
  # sampler failure while the process is still live.
  if (( initial_rss_kb == 0 )) && kill -0 "$LEAN_PID" 2>/dev/null; then
    kill_group
    wait "$LEAN_PID" 2>/dev/null || true
    fail "RSS sampler returned zero for the live benchmark process group"
  fi
fi
while kill -0 "$LEAN_PID" 2>/dev/null; do
  if ! rss=$(group_rss_kb); then
    echo "RSS sampler failed — killing group" >&2
    kill_group; killed="sampler"; break
  fi
  (( rss > peak_rss_kb )) && peak_rss_kb=$rss
  elapsed=$(( $(date +%s) - start ))
  if (( elapsed > MAX_SECS )); then
    echo "OVER BUDGET: time ${elapsed}s > ${MAX_SECS}s — killing group" >&2
    kill_group; killed="time"; break
  fi
  if (( peak_rss_kb > KILL_RSS_KB )); then
    echo "OVER BUDGET: RSS $((peak_rss_kb/1024))MB > $((KILL_RSS_KB/1024))MB — killing group" >&2
    kill_group; killed="rss"; break
  fi
  sleep 1
done
wait "$LEAN_PID" && lean_rc=0 || lean_rc=$?
elapsed=$(( $(date +%s) - start ))

if (( $(wc -c <"$TMP/lean.out") > OUTPUT_BYTES )); then
  echo "bench: stdout truncated to last $OUTPUT_BYTES bytes"
fi
tail -c "$OUTPUT_BYTES" "$TMP/lean.out"
if [[ -s "$TMP/lean.err" ]]; then
  if (( $(wc -c <"$TMP/lean.err") > OUTPUT_BYTES )); then
    echo "bench: stderr truncated to last $OUTPUT_BYTES bytes" >&2
  fi
  tail -c "$OUTPUT_BYTES" "$TMP/lean.err" >&2
fi
[[ "${BENCH_PROFILE:-0}" == "1" && -f "$PROFILE_OUT" ]] && echo "profiler: $PROFILE_OUT"

if [[ -n "$killed" ]]; then
  echo "RESULT: OVER BUDGET (killed on $killed at ${elapsed}s / $((peak_rss_kb/1024))MB)" >&2
  exit 1
fi
if [[ "$TIER" == "expect-fail" ]]; then
  if [[ "$lean_rc" -eq 0 ]]; then
    echo "RESULT: FAIL (expected Lean rejection, module compiled)" >&2
    exit 1
  fi
  if [[ -n "${BENCH_EXPECT_ERROR:-}" ]] \
      && ! { cat "$TMP/lean.out" "$TMP/lean.err" | rg -q -- "$BENCH_EXPECT_ERROR"; }; then
    echo "RESULT: FAIL (diagnostic did not match BENCH_EXPECT_ERROR=$BENCH_EXPECT_ERROR)" >&2
    exit 1
  fi
  echo "RESULT: PASS (expected failure diagnosed in ${elapsed}s)"
  exit 0
elif [[ "$lean_rc" -ne 0 ]]; then
  echo "RESULT: FAIL (elaboration error rc=$lean_rc) after ${elapsed}s" >&2
  exit 1
fi

if [[ -n "$PRESERVE_OLEAN" ]]; then
  [[ "$PRESERVE_OLEAN" = /* ]] || PRESERVE_OLEAN="$ROOT/$PRESERVE_OLEAN"
  mkdir -p "$(dirname "$PRESERVE_OLEAN")"
  rm -f "$PRESERVE_OLEAN"
  cp "$OUT_OLEAN" "$PRESERVE_OLEAN"
  echo "olean_out=$PRESERVE_OLEAN"
fi

olean_bytes=0
[[ -f "$OUT_OLEAN" ]] && olean_bytes=$(wc -c < "$OUT_OLEAN" | tr -d ' ')
marginal_kb=$(( peak_rss_kb - FLOOR_KB )); (( marginal_kb < 0 )) && marginal_kb=0
printf 'time=%ss  peak_rss=%sMB  marginal_rss=%sMB (floor=%sMB)  olean=%sMB\n' \
  "$elapsed" "$((peak_rss_kb/1024))" "$((marginal_kb/1024))" "$((FLOOR_KB/1024))" "$((olean_bytes/1024/1024))"
if (( FLOOR_KB > 0 )); then
  echo "import_floor_source=$FLOOR_SOURCE"
fi

status=0
(( elapsed > MAX_SECS )) && { echo "OVER BUDGET: time ${elapsed}s > ${MAX_SECS}s" >&2; status=1; }
if (( CHECK_SIZE == 1 )); then
  (( marginal_kb > MAX_RSS_KB )) && { echo "OVER BUDGET: marginal RSS $((marginal_kb/1024))MB > $((MAX_RSS_KB/1024))MB" >&2; status=1; }
  (( olean_bytes > MAX_OLEAN )) && { echo "OVER BUDGET: olean $((olean_bytes/1024/1024))MB > $((MAX_OLEAN/1024/1024))MB" >&2; status=1; }
fi
if [[ "$status" -eq 0 ]]; then echo "RESULT: PASS ($TIER)"; else echo "RESULT: OVER BUDGET" >&2; fi
exit "$status"

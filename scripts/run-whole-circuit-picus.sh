#!/usr/bin/env bash
set -uo pipefail

# Whole-circuit Picus attempt — NIGHTLY-ONLY, NON-GATING.
#
# Picus on a whole transaction circuit (Poseidon + Merkle + Decaf377 in one
# finite-field SMT system) is a known scaling wall: the gadget-scope check
# (scripts/circuit-constraint-check.sh) is what actually discharges
# under-constraint, leaf by leaf, with the composition lift argued in
# docs/soundness and — for note_reshape2x1 — mechanized in Lean. This runner
# exists so the whole-circuit attempt is made honestly with a real multi-hour
# budget instead of the 180 s watchdog, and the outcome is recorded verbatim.
#
# Verdicts per family:
#   safe              - Picus proved the whole circuit properly constrained.
#                       A genuine whole-circuit verdict; promote it.
#   underconstrained  - real bug; hard-fails the script (exit 1).
#   undischarged-timeout - walled out before deciding; recorded, exit 0.
#
# It is NOT wired into the cheap PR gate and must never become one: it can run
# for hours and is expected to wall out. Invoke from the nightly schedule or by
# hand. The stamped report it writes is checked for integrity by
# check-soundness-invariants.sh, but its *verdict* is advisory.
#
# Env:
#   PICUS_BIN                  path to run-picus (required if not on PATH)
#   PICUS_SOLVER               cvc5 (default; needs the -gpl/--cocoa FF build)
#   PICUS_TIMEOUT_MS           per-SMT-query timeout (default 600000)
#   PICUS_WHOLE_BUDGET_SECONDS wall-clock budget per family (default 21600 = 6h)
#   PICUS_SAFETY               weak (default) | strong

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() { echo "whole-circuit picus failed: $*" >&2; exit 1; }

PICUS="${PICUS_BIN:-picus}"
if [ -n "${PICUS_BIN:-}" ]; then
  [ -x "$PICUS_BIN" ] || fail "PICUS_BIN is set but not executable: $PICUS_BIN"
elif ! command -v "$PICUS" >/dev/null 2>&1; then
  fail "picus is not installed; set PICUS_BIN"
fi

PICUS_SOLVER="${PICUS_SOLVER:-cvc5}"
PICUS_SAFETY="${PICUS_SAFETY:-weak}"
PICUS_TIMEOUT_MS="${PICUS_TIMEOUT_MS:-600000}"
BUDGET="${PICUS_WHOLE_BUDGET_SECONDS:-21600}"

FORMAL_DIR="crates/core/component/shielded-pool/formal"
REPORT="$FORMAL_DIR/circuit-whole-picus-report.txt"
WORK_DIR="$FORMAL_DIR/.generated/whole-picus"
mkdir -p "$WORK_DIR"

families=("$@")
if [ "${#families[@]}" -eq 0 ]; then
  # The two Lean-proved deployed circuit families. Earlier standalone reshape paths were dropped: their
  # whole-circuit Picus attempts only ever walled out and they have no Lean
  # composition to cross-check against. Keep this default in sync with the
  # nightly invocation in .github/workflows/formal.yml.
  families=(note_reshape2x1 transfer)
fi

cvc5_version="$("$PICUS_SOLVER" --version 2>/dev/null | head -1 | awk '{print $2}')"
[ -n "$cvc5_version" ] || cvc5_version="unknown"

tmp_report="$(mktemp)"
trap 'rm -f "$tmp_report"' EXIT
{
  echo "tool: Picus"
  echo "solver: $PICUS_SOLVER"
  echo "safety: $PICUS_SAFETY"
  echo "scope: whole-circuit"
  echo "timeout_ms: $PICUS_TIMEOUT_MS"
  echo "wall_budget_seconds: $BUDGET"
  echo "cvc5: $cvc5_version"
  echo "picus: Veridise/Picus via $PICUS"
  echo "date: $(date -u +%Y-%m-%d)"
  echo "note: nightly-only, non-gating; whole-circuit Picus is expected to wall out"
} >"$tmp_report"

underconstrained_seen=0
for family in "${families[@]}"; do
  sr1cs="$WORK_DIR/$family.sr1cs"
  ( cd tools/gnark && go run ./cmd/gnarkctl export-r1cs --circuit "$family" --out "$ROOT/$sr1cs" ) \
    || fail "failed to export $family .sr1cs"
  sr1cs_sha="$(shasum -a 256 "$sr1cs" | awk '{print $1}')"
  output="$WORK_DIR/$family.picus.txt"

  flags=(--solver "$PICUS_SOLVER" --timeout "$PICUS_TIMEOUT_MS")
  [ "$PICUS_SAFETY" = "strong" ] && flags+=(--strong)

  echo ">> $family: Picus budget ${BUDGET}s" >&2
  bash scripts/run-picus-bounded.sh "$BUDGET" "$PICUS" "${flags[@]}" "$sr1cs" >"$output" 2>&1
  picus_exit=$?

  if rg -F "underconstrained" "$output" >/dev/null; then
    verdict="underconstrained"
    underconstrained_seen=1
  elif rg -F "The circuit is properly constrained" "$output" >/dev/null; then
    verdict="safe"
  else
    verdict="undischarged-timeout"
  fi
  output_sha="$(shasum -a 256 "$output" | awk '{print $1}')"

  {
    echo ""
    echo "FAMILY $family $verdict"
    echo "  sr1cs: $sr1cs"
    echo "  sr1cs_sha256: $sr1cs_sha"
    echo "  picus_output: $output"
    echo "  picus_output_sha256: $output_sha"
    echo "  picus_exit: $picus_exit"
    if [ "$verdict" = "undischarged-timeout" ]; then
      echo "  note: no safe or underconstrained verdict before the ${BUDGET}s budget elapsed"
    elif [ "$verdict" = "safe" ]; then
      echo "  note: whole-circuit verdict — promote to a discharged property"
    fi
  } >>"$tmp_report"
done

cp "$tmp_report" "$REPORT"
shasum -a 256 "$REPORT" | awk '{print $1}' >"$REPORT.sha256"
echo "whole-circuit picus report written: sha256:$(cat "$REPORT.sha256")"

if [ "$underconstrained_seen" -eq 1 ]; then
  fail "Picus reported a whole circuit UNDERCONSTRAINED — see $REPORT"
fi

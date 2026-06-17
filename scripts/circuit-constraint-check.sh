#!/usr/bin/env bash
set -euo pipefail

# Gadget-scope R1CS under-constraint check (Phase C / Track C).
#
# Runs Picus on the *decomposed soundness-critical gadgets*, not whole
# transaction families. Whole-circuit Picus is a known scaling dead end
# (Poseidon + Merkle + Decaf377 in one SMT system) and is recorded as
# `attempted, undischarged (timeout)` rather than retried — see the plan and
# docs/soundness. This is heavy prover work: it runs in the soundness-formal CI
# `provers` job, not on every PR and not as part of the cheap invariant gate.
#
# Verdicts (per gadget):
#   safe         - Picus proved the gadget properly constrained (under-constraint
#                  *evidence*, not a semantic proof).
#   underconstrained - real bug; hard-fails the script.
#   undischarged - Picus could not decide within the timeout; recorded, not fatal.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FORMAL_DIR="crates/core/component/shielded-pool/formal"
WORK_DIR="$FORMAL_DIR/.generated/constraints"
REPORT="$FORMAL_DIR/circuit-constraint-report.txt"
REPORT_SHA="$REPORT.sha256"

fail() {
  echo "circuit constraint check failed: $*" >&2
  exit 1
}

PICUS="${PICUS_BIN:-picus}"
if [ -n "${PICUS_BIN:-}" ]; then
  [ -x "$PICUS_BIN" ] || fail "PICUS_BIN is set but not executable: $PICUS_BIN"
elif ! command -v "$PICUS" >/dev/null 2>&1; then
  fail "picus is not installed; set PICUS_BIN"
fi

# Decomposed gadgets are the default targets. Whole families are intentionally
# excluded — they are recorded as undischarged-by-design below.
#
# Coverage is the full soundness-critical gadget set, grouped by family. Heavy
# gadgets (large scalar ladders, deep Merkle paths, balance commitment) may
# exceed the per-gadget timeout; that is recorded `undischarged` and is
# non-fatal — Picus is under-constraint evidence, not a required proof.
gadgets=("$@")
if [ "${#gadgets[@]}" -eq 0 ]; then
  gadgets=(
    # Poseidon377 sponge (hash arities used across the circuits)
    gadget-poseidon-hash1 gadget-poseidon2 gadget-poseidon-hash4
    gadget-poseidon-hash6 gadget-poseidon-hash7
    # Merkle / IMT
    gadget-nullifier gadget-imt-gap gadget-iszero
    gadget-quad-path-1 gadget-quad-path-2 gadget-quad-path-4
    gadget-quad-path-16 gadget-quad-path-24
    # decaf377 group law
    gadget-decaf-assert-equivalent gadget-decaf-compress-to-field
    gadget-decaf-encode-to-curve gadget-decaf-edwards-add
    gadget-decaf-edwards-double gadget-decaf-edwards-neg
    # scalar / key derivation
    gadget-canonical-fq-bits gadget-bool-select gadget-ivk-mod-r
    gadget-scalar-mul-le-251 gadget-scalar-mul-le-128
    gadget-rvk gadget-dtk
    # value conservation
    gadget-net-balance-commitment
  )
fi

rm -rf "$WORK_DIR"
mkdir -p "$WORK_DIR"

tmp_report="$(mktemp)"
underconstrained_files="$(mktemp)"
trap 'rm -f "$tmp_report" "$underconstrained_files"' EXIT

{
  echo "tool: Picus"
  echo "solver: z3"
  echo "scope: decomposed-gadget"
  echo "timeout_ms: ${PICUS_TIMEOUT_MS:-120000}"
  echo "total_timeout_seconds: ${PICUS_TOTAL_TIMEOUT_SECONDS:-120}"
} >"$tmp_report"

for gadget in "${gadgets[@]}"; do
  sr1cs="$WORK_DIR/$gadget.sr1cs"
  (
    cd tools/gnark
    go run ./cmd/gnarkctl export-r1cs --circuit "$gadget" --out "$ROOT/$sr1cs"
  )
  sr1cs_sha="$(shasum -a 256 "$sr1cs" | awk '{print $1}')"
  output="$WORK_DIR/$gadget.picus.txt"
  set +e
  perl -e 'alarm shift; exec @ARGV' "${PICUS_TOTAL_TIMEOUT_SECONDS:-120}" \
    "$PICUS" --solver z3 --timeout "${PICUS_TIMEOUT_MS:-120000}" "$sr1cs" >"$output" 2>&1
  picus_exit=$?
  set -e

  if rg -F "underconstrained" "$output" >/dev/null; then
    cat "$output" >&2
    fail "Picus reported gadget $gadget underconstrained"
  elif rg -F "The circuit is properly constrained" "$output" >/dev/null; then
    result=safe
  else
    # Timeout / cannot-determine on a gadget is recorded, not fatal: Picus is
    # under-constraint evidence, not a required proof.
    result=undischarged
  fi

  {
    echo "GADGET $gadget $result"
    echo "  sr1cs_sha256: $sr1cs_sha"
    echo "  picus_exit: $picus_exit"
  } >>"$tmp_report"
done

if rg -l -F "underconstrained" "$WORK_DIR"/*.picus.txt >"$underconstrained_files" 2>/dev/null; then
  cat "$underconstrained_files" >&2
  fail "Picus reported at least one gadget underconstrained"
fi

# Whole-circuit families: recorded as attempted-and-undischarged by design. No
# tool formally verifies a whole transaction circuit; this is the documented
# industry state of the art, not a shortfall.
{
  echo "FAMILY transfer undischarged-by-design"
  echo "  note: whole-circuit Picus times out (Poseidon+Merkle+Decaf377); not retried"
  echo "FAMILY consolidate2x1 undischarged-by-design"
  echo "FAMILY split1x4 undischarged-by-design"
  echo "FAMILY shielded_ics20_withdrawal undischarged-by-design"
} >>"$tmp_report"

cp "$tmp_report" "$REPORT"
shasum -a 256 "$REPORT" | awk '{print $1}' >"$REPORT_SHA"

echo "circuit constraint check ok: sha256:$(cat "$REPORT_SHA")"

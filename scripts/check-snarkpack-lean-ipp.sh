#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/crates/crypto/proof-aggregation/formal/lean-ipp"
cd "$LEAN_DIR"

fail() {
  echo "snarkpack Lean gate failed: $*" >&2
  exit 1
}

export LEAN_NUM_THREADS=1

lake_command=(lake)
if [[ -n "${SNARKPACK_ELAN_BIN:-}" ]]; then
  [[ -n "${SNARKPACK_LAKE_EXECUTABLE:-}" ]] \
    || fail "SNARKPACK_LAKE_EXECUTABLE is required with SNARKPACK_ELAN_BIN"
  lake_command=(
    "$SNARKPACK_ELAN_BIN" run
    "${SNARKPACK_LEAN_TOOLCHAIN:-leanprover/lean4:v4.30.0}"
    "$SNARKPACK_LAKE_EXECUTABLE"
  )
elif ! command -v lake >/dev/null 2>&1; then
  fail "lake is not installed"
fi

run_lake() {
  "${lake_command[@]}" "$@"
}

# Keep this list narrow: it checks each S2 extracted theorem family before the
# package build, while preserving the one-Lake-process rule.
focused_targets=(
  Ipp.Extracted.KzgVerifiers
  Ipp.Extracted.PolynomialCoefficients
  Ipp.Extracted.FinalCommitmentKeys
  Ipp.Extracted.BaseCommitment
  Ipp.Extracted.Groth16Verifier
  Ipp.Extracted.VerifyTippMipp
  Ipp.Extracted.CombinedChecks
  Ipp.Extracted.AggregateVerifier
)

echo "snarkpack Lean gate: focused extracted-module build"
run_lake build "${focused_targets[@]}"

audit_log="$(mktemp)"
trap 'rm -f "$audit_log"' EXIT
echo "snarkpack Lean gate: named S2 axiom audit"
run_lake env lean Ipp/S2AxiomAudit.lean >"$audit_log" 2>&1 \
  || { cat "$audit_log" >&2; fail "S2 axiom audit did not elaborate"; }

if grep -F "sorryAx" "$audit_log" >/dev/null; then
  cat "$audit_log" >&2
  fail "S2 theorem axiom audit contains sorryAx"
fi

unexpected_axioms="$(
  sed -n 's/.*depends on axioms: \[\(.*\)\]/\1/p' "$audit_log" \
    | tr ',' '\n' \
    | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' \
    | grep -vE '^(propext|Classical.choice|Quot.sound)$' || true
)"
if [[ -n "$unexpected_axioms" ]]; then
  echo "$unexpected_axioms" >&2
  fail "S2 theorem axiom audit contains a non-standard axiom"
fi

echo "snarkpack Lean gate: full Ipp build"
run_lake build Ipp

# Preserve the S1 guard while making the extracted directory scan explicit in
# the S2 static invariant gate.
if grep -R -n "axiom " Ipp | grep -v '^Ipp/Algebra.lean:'; then
  fail "axiom declared outside Ipp/Algebra.lean"
fi
if grep -R -n -E '\bsorry\b|\bnative_decide\b' Ipp; then
  fail "sorry or native_decide found in Ipp/"
fi

echo "snarkpack Lean gate ok"

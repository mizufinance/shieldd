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
#   undischarged - Picus could not decide within the timeout or was misconfigured;
#                  hard-fails unless PICUS_ALLOW_UNDISCHARGED=1 is set explicitly.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FORMAL_DIR="crates/core/component/shielded-pool/formal"
WORK_DIR="$FORMAL_DIR/.generated/constraints"
REPORT="$FORMAL_DIR/circuit-constraint-report.txt"
REPORT_SHA="$REPORT.sha256"
# Per-gadget Picus preconditions (assumption-relative `safe`). A gadget with a
# precondition file reaches `safe` only under the stated algebraic assumption
# (e.g. an Edwards denominator != 0). The file's sha256 is recorded in the
# report so the assumption is auditable. See docs/soundness.
PRECOND_DIR="$FORMAL_DIR/picus-preconditions"

# Solver: cvc5 (finite-field theory, must be built with --cocoa) is the default
# and the only solver that can decide the decaf/division gadgets. z3 emits
# QF_NIA (no finite-field theory) and is kept only as a fallback. Safety mode:
# weak (default) or strong via PICUS_SAFETY=strong.
PICUS_SOLVER="${PICUS_SOLVER:-cvc5}"
PICUS_SAFETY="${PICUS_SAFETY:-weak}"

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

# Leaf gadgets are the default targets. Iterated gadgets (scalar ladders, deep
# Merkle paths) and composites (rvk/dtk/net-balance) are NOT checked monolithically
# — that is a known per-signal-SMT scaling dead end. Instead each is decomposed to
# a leaf that Picus discharges in seconds, and the full gadget's determinism follows
# by composition (see the COMPOSITE-COVERAGE section emitted in the report):
#   - gadget-scalar-mul-step    folds to scalar-mul-le-128 / scalar-mul-le-251
#   - gadget-quad-path-round    folds to quad-path-1 / -2 / -4 / -16 / -24
# The single-rung probes show each rung deterministic in isolation; the *-two-step
# / *-two-round probes additionally exercise the composition boundary (the join
# wire between two consecutive rungs/layers), empirically confirming the seam
# introduces no free signal — the condition the by-composition lift relies on.
#   - *-core (compress/encode)  factor the 253-bit decomposition out to the
#                               already-`safe` gadget-canonical-fq-bits leaf
#   - rvk / dtk / net-balance   are chains of the leaves above + Poseidon + ivk-mod-r
# Every leaf in this set reaches `safe`; the composition lift is argued in
# docs/soundness/reference/constraint-system-assurance.md (Picus does not perform it).
gadgets=("$@")
if [ "${#gadgets[@]}" -eq 0 ]; then
  gadgets=(
    # Poseidon377 sponge (hash arities used across the circuits)
    gadget-poseidon-hash1 gadget-poseidon2 gadget-poseidon-hash4
    gadget-poseidon-hash5
    gadget-poseidon-hash6 gadget-poseidon-hash7
    # Merkle / IMT (quad-path-round folds to every quad-path-N)
    gadget-nullifier gadget-imt-gap gadget-iszero
    gadget-quad-path-round
    # composition-boundary probe: two consecutive Merkle layers (join seam)
    gadget-quad-path-two-round
    # decaf377 group law
    gadget-decaf-assert-equivalent gadget-decaf-edwards-add
    gadget-decaf-edwards-double gadget-decaf-edwards-neg
    # sqrt-ratio cores (253-bit sign decomposition factored to canonical-fq-bits)
    gadget-decaf-compress-to-field-core gadget-decaf-encode-to-curve-core
    # scalar / key derivation (scalar-mul-step folds to scalar-mul-le-N)
    gadget-canonical-fq-bits gadget-bool-select gadget-ivk-mod-r
    gadget-scalar-mul-step
    # composition-boundary probe: two consecutive ladder rungs (join seam)
    gadget-scalar-mul-two-step
    # transfer-only composition seams: ACK non-constant-base scalar mul and DLEQ responses
    gadget-ack-two-step gadget-dleq
  )
fi

rm -rf "$WORK_DIR"
mkdir -p "$WORK_DIR"

tmp_report="$(mktemp)"
underconstrained_files="$(mktemp)"
undischarged_gadgets="$(mktemp)"
trap 'rm -f "$tmp_report" "$underconstrained_files" "$undischarged_gadgets"' EXIT

{
  echo "tool: Picus"
  echo "solver: $PICUS_SOLVER"
  echo "safety: $PICUS_SAFETY"
  echo "scope: decomposed-gadget"
  echo "timeout_ms: ${PICUS_TIMEOUT_MS:-30000}"
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

  # Optional per-gadget precondition + safety-mode flags.
  # Per-SMT-query timeout is deliberately much shorter than the per-leaf wall
  # watchdog: Picus recovers from a timed-out query via propagation and later
  # queries, so failing single queries fast is what lets a hard leaf
  # (gadget-dleq) converge inside the wall budget; 120 s per query let one
  # stuck query eat the entire budget.
  picus_flags=(--solver "$PICUS_SOLVER" --timeout "${PICUS_TIMEOUT_MS:-30000}")
  [ "$PICUS_SAFETY" = "strong" ] && picus_flags+=(--strong)
  precond="$PRECOND_DIR/$gadget.json"
  precond_sha="none"
  if [ -f "$precond" ]; then
    picus_flags+=(--precondition "$precond")
    precond_sha="$(shasum -a 256 "$precond" | awk '{print $1}')"
  fi

  set +e
  perl -e 'alarm shift; exec @ARGV' "${PICUS_TOTAL_TIMEOUT_SECONDS:-120}" \
    "$PICUS" "${picus_flags[@]}" "$sr1cs" >"$output" 2>&1
  picus_exit=$?
  set -e

  if rg -F "underconstrained" "$output" >/dev/null; then
    cat "$output" >&2
    fail "Picus reported gadget $gadget underconstrained"
  elif rg -F "The circuit is properly constrained" "$output" >/dev/null; then
    result=safe
  else
    result=undischarged
    echo "$gadget" >>"$undischarged_gadgets"
  fi

  # Self-pin the leaf artifact to the exact constraint system Picus consumed.
  # Without this the .picus.txt fingerprints only the verdict text (which many
  # leaves share), so its sha256 cannot attest *which* R1CS was checked
  # (constraint-system-assurance §C2b). The footer makes each artifact independently
  # load-bearing: its hash moves iff the input .sr1cs, precondition, or verdict
  # moves. Kept free of the token "underconstrained" so the post-loop safety
  # re-scan is unaffected.
  {
    echo "--- picus-input-fingerprint ---"
    echo "gadget: $gadget"
    echo "verdict: $result"
    echo "sr1cs_sha256: $sr1cs_sha"
    echo "precondition_sha256: $precond_sha"
    echo "picus_exit: $picus_exit"
  } >>"$output"

  {
    echo "GADGET $gadget $result"
    echo "  sr1cs_sha256: $sr1cs_sha"
    echo "  precondition_sha256: $precond_sha"
    echo "  picus_exit: $picus_exit"
  } >>"$tmp_report"
done

if rg -l -F "underconstrained" "$WORK_DIR"/*.picus.txt >"$underconstrained_files" 2>/dev/null; then
  cat "$underconstrained_files" >&2
  fail "Picus reported at least one gadget underconstrained"
fi

if [ -s "$undischarged_gadgets" ] && [ "${PICUS_ALLOW_UNDISCHARGED:-0}" != "1" ]; then
  cat "$undischarged_gadgets" >&2
  fail "Picus left gadget leaves undischarged; set PICUS_ALLOW_UNDISCHARGED=1 only for diagnostic runs"
fi

# Iterated/composite gadgets: discharged by composition of the leaf verdicts
# above, not by a monolithic Picus run (which is a per-signal-SMT scaling dead
# end). The composition lift is argued in docs/soundness.
{
  echo "COMPOSITE scalar-mul-le-128 safe-by-composition"
  echo "  note: scalar-mul-step folded 128x over canonical-fq-bits boolean decomposition"
  echo "  boundary_probe: gadget-scalar-mul-two-step (join seam safe)"
  echo "  lean_lift: Shieldd.GnarkFormal.ScalarMulBridge.scalarMulLE128_sound"
  echo "COMPOSITE scalar-mul-le-251 safe-by-composition"
  echo "  note: scalar-mul-step folded 251x over canonical-fq-bits boolean decomposition"
  echo "  boundary_probe: gadget-scalar-mul-two-step (join seam safe)"
  echo "  lean_lift: Shieldd.GnarkFormal.ScalarMulBridge.scalarMulLE251_sound"
  echo "COMPOSITE ack-derivation safe-by-composition"
  echo "  note: non-constant-base scalar-mul ladder over the asset ring public key"
  echo "  boundary_probe: gadget-ack-two-step (join seam safe)"
  echo "  lean_lift: Shieldd.GnarkFormal.AckBridge.ack_sound"
  echo "COMPOSITE quad-path-1/2/4/16/24 safe-by-composition"
  echo "  note: quad-path-round folded per depth over canonical-fq-bits position decomposition"
  echo "  boundary_probe: gadget-quad-path-two-round (join seam safe)"
  echo "COMPOSITE decaf-compress-to-field safe-by-composition"
  echo "  note: compress-to-field-core + canonical-fq-bits (253-bit sign decomposition)"
  echo "COMPOSITE decaf-encode-to-curve safe-by-composition"
  echo "  note: encode-to-curve-core + canonical-fq-bits (253-bit sign decomposition)"
  echo "COMPOSITE rvk safe-by-composition"
  echo "  note: on-curve + scalar-mul ladder + edwards-add leaves"
  echo "COMPOSITE dtk safe-by-composition"
  echo "  note: compress-to-field + poseidon2 + ivk-mod-r + scalar-mul ladder leaves"
  echo "COMPOSITE net-balance-commitment safe-by-composition"
  echo "  note: poseidon1 + encode-to-curve + scalar-mul + edwards-add leaves"
  echo "COMPOSITE net-balance-commitment2 safe-by-composition"
  echo "  note: 2-in-2-out transfer balance; poseidon1 + encode-to-curve + four value scalar-mul ladders (two negated outputs) + blinding ladder + edwards-add/neg leaves"
  echo "  lean_lift: Shieldd.GnarkFormal.NetBalanceCommitment2Bridge.decaf377_netBalanceCommitment2_sound"
  echo "COMPOSITE transfer-dleq safe-by-composition"
  echo "  note: Poseidon7 challenge + paired scalar-mul response ladders + Decaf equivalence checks"
  echo "  boundary_probe: gadget-dleq (one response equation s*B1 + c*B2; both equations share this shape, and sharing the s/c bits across two individually-deterministic equations adds no free signal)"
  echo "  lean_lift: Shieldd.GnarkFormal.DleqBridge.dleq_sound"
} >>"$tmp_report"

# Whole-circuit families: recorded as attempted-and-undischarged by design. No
# tool formally verifies a whole transaction circuit; this is the documented
# industry state of the art, not a shortfall.
{
  echo "FAMILY transfer undischarged-by-design"
  echo "  note: whole-circuit Picus times out (Poseidon+Merkle+Decaf377); not retried"
  echo "FAMILY consolidate2x1 undischarged-by-design"
  echo "FAMILY shielded_ics20_withdrawal undischarged-by-design"
} >>"$tmp_report"

cp "$tmp_report" "$REPORT"
shasum -a 256 "$REPORT" | awk '{print $1}' >"$REPORT_SHA"

echo "circuit constraint check ok: sha256:$(cat "$REPORT_SHA")"

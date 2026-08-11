#!/usr/bin/env bash
set -euo pipefail

# Gadget-scope R1CS under-constraint check (Phase C / Track C).
#
# Runs Picus on decomposed soundness-critical gadgets, not transaction
# families. The family export assigns every secret wire as an input, so it
# cannot establish the functional joins required by the soundness claim. This
# heavy prover work runs in the soundness-formal CI `provers` job, not on every
# PR or in the cheap invariant gate.
#
# Verdicts (per gadget):
#   safe         - Picus proved the gadget properly constrained (under-constraint
#                  *evidence*, not a semantic proof).
#   underconstrained - real bug; hard-fails the script.
#   undischarged - Picus could not decide within the timeout or was misconfigured;
#                  hard-fails unless PICUS_ALLOW_UNDISCHARGED=1 is set explicitly.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

update_report=0
if [[ "${1:-}" == "--update" ]]; then
  update_report=1
  shift
fi

FORMAL_DIR="crates/core/component/shielded-pool/formal"
WORK_DIR="$FORMAL_DIR/.generated/constraints"
REPORT="$FORMAL_DIR/circuit-constraint-report.txt"
REPORT_SHA="$REPORT.sha256"
TEMPLATE_INVENTORY="tools/gnark/artifacts/certified-template-inventory.json"
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

command -v jq >/dev/null 2>&1 || fail "jq is required"
[[ -f "$TEMPLATE_INVENTORY" ]] \
  || fail "certified template inventory is missing: $TEMPLATE_INVENTORY"

template_digests() {
  local prefix="$1"
  jq -r --arg prefix "$prefix" '
    .templates[]
    | .template_key
    | select(startswith($prefix))
    | split("@")[1]
  ' "$TEMPLATE_INVENTORY"
}

ack_digests="$(template_digests "decaf.ack@")"
shared_secret_digests="$(template_digests "decaf.shared_secret@")"

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
# scripts/check-constraint-coverage.sh (Picus does not perform composition coverage).
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
  )
  # The non-constant-base scalar-multiplication seam is required only while an
  # ACK-backed deployed template family exists. The standalone DLEQ probe
  # remains available by explicit name for research, but is never a
  # deployed-family certification target.
  if [[ -n "$ack_digests" || -n "$shared_secret_digests" ]]; then
    gadgets+=(gadget-ack-two-step)
  fi
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
  # queries, so failing single queries fast is what lets hard leaves converge
  # inside the wall budget; 120 s per query let one
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
  # (the safe-by-composition boundary). The footer makes each artifact independently
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
  if [[ -n "$ack_digests" ]]; then
    echo "COMPOSITE ack-derivation safe-by-composition"
    echo "  note: non-constant-base scalar-mul ladder over the asset ring public key"
    echo "  boundary_probe: gadget-ack-two-step (join seam safe)"
    while IFS= read -r digest; do
      [[ -z "$digest" ]] && continue
      echo "  deployed_relation_lift: Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_${digest}.sound"
    done <<<"$ack_digests"
    echo "  conditional_spec: exact rows prove AckBridge.AckBodySpec; the enclosing circuit must supply the ring public key on-curve premise before AckSpec promotion"
  fi
  if [[ -n "$shared_secret_digests" ]]; then
    echo "COMPOSITE shared-secrets safe-by-composition"
    echo "  note: Boolean flag + three ACK derivations + EPK equivalence + selected-point join"
    echo "  boundary_probe: gadget-ack-two-step (each non-constant-base ladder seam safe)"
    while IFS= read -r digest; do
      [[ -z "$digest" ]] && continue
      module="TDecafSharedSecret_${digest}"
      echo "  deployed_relation_lift: Shieldd.GnarkFormal.Deployed.Templates.Semantics.${module}.sound"
      provider="tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates/Semantics/${module}.lean"
      if [[ -f "$provider" ]] && rg -n '^theorem flag_bool\b' "$provider" >/dev/null; then
        echo "  deployed_flag_lift: Shieldd.GnarkFormal.Deployed.Templates.Semantics.${module}.flag_bool"
      fi
    done <<<"$shared_secret_digests"
    echo "  promotion_lift: Shieldd.GnarkFormal.SharedSecretBridge.shared_secrets_sound"
    echo "  conditional_spec: exact rows prove SharedSecretsBody; Transfer composition must bind the shared flag and supply ACK, DK, and published EPK on-curve premises before SharedSecretsSpec promotion"
  fi
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
  echo "  note: 2-in-2-out transfer balance; four canonical amount ranges + two 129-bit aggregate radix-4 ladders + blinding ladder + edwards-add/neg leaves"
  echo "  lean_lift: Shieldd.GnarkFormal.NetBalanceCommitment2Bridge.decaf377_netBalanceCommitment2_sound"
  echo "COMPOSITE conservation-net-balance-commitment2 safe-by-composition"
  echo "  note: Withdrawal conservation; four canonical 128-bit amount decompositions + exact required + optional = change + withdrawal equation + one 251-bit balance-blinding ladder"
  echo "  lean_lift: Shieldd.GnarkFormal.ConservationNetBalanceCommitment2Bridge.decaf377_conservationNetBalanceCommitment2_sound"
} >>"$tmp_report"

# Whole-family Picus is not a soundness claim. Assigning every secret wire as an
# input hides the functional-dependence question that underconstraint analysis
# is meant to answer. Keep Picus for the reviewed leaf probes above.
{
  echo "FAMILY transfer whole-family-picus-excluded"
  echo "FAMILY note_reshape8x1 whole-family-picus-excluded"
  echo "FAMILY note_reshape1x8 whole-family-picus-excluded"
  echo "FAMILY shielded_ics20_withdrawal whole-family-picus-excluded"
  echo "  note: leaf Picus probes remain rapid counterexample checks; exports that classify every secret wire as an input are rejected as family soundness evidence"
} >>"$tmp_report"

tmp_report_sha="$(shasum -a 256 "$tmp_report" | awk '{print $1}')"
if [[ "$update_report" -eq 1 ]]; then
  cp "$tmp_report" "$REPORT"
  printf '%s\n' "$tmp_report_sha" >"$REPORT_SHA"
  echo "circuit constraint report updated: sha256:$tmp_report_sha"
  exit 0
fi

[[ -f "$REPORT" && -f "$REPORT_SHA" ]] \
  || fail "missing committed report or sha256 sidecar; use --update deliberately"
committed_sha="$(tr -d '[:space:]' <"$REPORT_SHA")"
[[ "$committed_sha" == "$(shasum -a 256 "$REPORT" | awk '{print $1}')" ]] \
  || fail "committed report does not match its sha256 sidecar"
if ! cmp -s "$tmp_report" "$REPORT"; then
  diff -u "$REPORT" "$tmp_report" >&2 || true
  fail "fresh Picus report differs from the committed report; review and run --update"
fi
[[ "$tmp_report_sha" == "$committed_sha" ]] \
  || fail "fresh Picus report hash differs from the committed sidecar"

echo "circuit constraint check ok: sha256:$committed_sha"

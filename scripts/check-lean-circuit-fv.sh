#!/usr/bin/env bash
set -euo pipefail

# Lean whole-circuit FV gate, in two cost tiers selected by the first argument:
#
#   stamps  (PR tier)  Hygiene, stamp integrity, and wiring-transcript fidelity.
#   full    (nightly)  Everything in `stamps`, plus a clean-room `lake build`
#                      and `#print axioms` checks for the whole-circuit theorems.
#
# Optional circuit selection:
#
#   scripts/check-lean-circuit-fv.sh stamps --circuit transfer
#   scripts/check-lean-circuit-fv.sh full consolidate2x1 transfer
#
# With no circuit argument, both whole-circuit Lean artifacts are checked.

MODE="${1:-full}"
case "$MODE" in
  stamps | full) shift || true ;;
  *)
    echo "usage: $(basename "$0") [stamps|full] [--circuit consolidate2x1|transfer|all] [circuit...]" >&2
    exit 2
    ;;
esac

fail() {
  echo "check-lean-circuit-fv failed: $*" >&2
  exit 1
}

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/tools/gnark/lean"
# Lean resource limits are load-bearing. Export the serial setting here so the
# gate remains safe even when a caller forgets to provide it.
export LEAN_NUM_THREADS=1
B1_ARTIFACT="$LEAN_DIR/imt-gap-lean-artifact.txt"
C2X1_ARTIFACT="$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-whole-circuit-lean-artifact.txt"
TRANSFER_ARTIFACT="$ROOT/crates/core/component/shielded-pool/formal/transfer-whole-circuit-lean-artifact.txt"
TRANSFER_DECAF_FV_INVENTORY="$LEAN_DIR/transfer-decaf-fv-inventory.txt"

sha256_file() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$1" | awk '{print $1}'
  else
    shasum -a 256 "$1" | awk '{print $1}'
  fi
}

require_artifact_line() {
  local artifact="$1" label="$2" value="$3"
  rg -F "$label: $value" "$artifact" >/dev/null \
    || fail "artifact $artifact $label is stale or missing (expected $value)"
}

select_circuits() {
  if [[ "$#" -eq 0 ]]; then
    printf '%s\n' consolidate2x1 transfer
    return
  fi
  while [[ "$#" -gt 0 ]]; do
    case "$1" in
      --circuit)
        shift
        [[ "$#" -gt 0 ]] || fail "--circuit requires an argument"
        case "$1" in
          all) printf '%s\n' consolidate2x1 transfer ;;
          consolidate2x1|transfer) printf '%s\n' "$1" ;;
          *) fail "unsupported circuit $1" ;;
        esac
        ;;
      all)
        printf '%s\n' consolidate2x1 transfer
        ;;
      consolidate2x1|transfer)
        printf '%s\n' "$1"
        ;;
      *)
        fail "unsupported circuit argument $1"
        ;;
    esac
    shift
  done | awk '!seen[$0]++'
}

selected_circuits="$(select_circuits "$@")"
[[ -n "$selected_circuits" ]] || fail "no circuits selected"

artifact_for_circuit() {
  case "$1" in
    consolidate2x1) printf '%s\n' "$C2X1_ARTIFACT" ;;
    transfer) printf '%s\n' "$TRANSFER_ARTIFACT" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

transcript_module_for_circuit() {
  case "$1" in
    transfer) printf '%s\n' "ShielddGnarkFormal.TransferWiringTranscript" ;;
    *) fail "no assurance transcript for circuit $1" ;;
  esac
}

transcript_source_for_circuit() {
  case "$1" in
    transfer) printf '%s\n' "$LEAN_DIR/ShielddGnarkFormal/TransferWiringTranscript.lean" ;;
    *) fail "no assurance transcript for circuit $1" ;;
  esac
}

lean_wiring_transcript() {
  local circuit="$1" out="$2"
  case "$circuit" in
    transfer)
      (
        cd "$LEAN_DIR"
        lake env lean --stdin > "$out" <<'LEAN'
import ShielddGnarkFormal.TransferWiringTranscript
#eval IO.print Shieldd.GnarkFormal.TransferWiringTranscript.canonical
LEAN
      )
      ;;
    *) fail "unsupported circuit $circuit" ;;
  esac
}

check_common_stamps() {
  require_artifact_line "$B1_ARTIFACT" "imt_gap_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/ImtGap.lean")"
  require_artifact_line "$B1_ARTIFACT" "canonical_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/CanonicalFqBitsBridge.lean")"
  require_artifact_line "$B1_ARTIFACT" "lex_less_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/LexLessLadder.lean")"
  require_artifact_line "$B1_ARTIFACT" "imt_gap_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/ImtGapBridge.lean")"
  require_artifact_line "$B1_ARTIFACT" "spec_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Specs.lean")"
  require_artifact_line "$B1_ARTIFACT" "root_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal.lean")"
  require_artifact_line "$B1_ARTIFACT" "lakefile_sha256" "$(sha256_file "$LEAN_DIR/lakefile.lean")"
  require_artifact_line "$B1_ARTIFACT" "lake_manifest_sha256" "$(sha256_file "$LEAN_DIR/lake-manifest.json")"
  require_artifact_line "$B1_ARTIFACT" "lean_toolchain_sha256" "$(sha256_file "$LEAN_DIR/lean-toolchain")"
}

check_consolidate2x1_stamps() {
  local artifact="$C2X1_ARTIFACT"
  require_artifact_line "$artifact" "whole_circuit_sr1cs_sha256" "$(sha256_file "$ROOT/tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")"
  require_artifact_line "$artifact" "manifest_sha256" "$(sha256_file "$ROOT/tools/gnark/artifacts/consolidate2x1/consolidate2x1-manifest.json")"
  require_artifact_line "$artifact" "coverage_report_sha256" "$(sha256_file "$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-constraint-coverage-report.json")"
  require_artifact_line "$artifact" "nb_constraints" "$(jq -r '.nb_constraints' "$ROOT/tools/gnark/artifacts/consolidate2x1/circuit_metadata.json")"
  require_artifact_line "$artifact" "verifying_key_sha256_hex" "$(jq -r '.verifying_key_sha256_hex' "$ROOT/tools/gnark/artifacts/consolidate2x1/circuit_metadata.json")"
  require_artifact_line "$artifact" "deployed_statement_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Statement.lean")"
  require_artifact_line "$artifact" "deployed_capstone_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Capstone.lean")"
  require_artifact_line "$artifact" "deployed_wiring_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Wiring.lean")"
  require_artifact_line "$artifact" "prime_order_certificate_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Deployed/PrimeOrderCertificate.lean")"
  require_artifact_line "$artifact" "prime_order_registry_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Deployed/PrimeOrder.lean")"
  require_artifact_line "$artifact" "decaf_assumptions_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Decaf377Assumptions.lean")"
  require_artifact_line "$artifact" "compress_to_field_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/CompressToFieldBridge.lean")"
  require_artifact_line "$artifact" "edwards_completeness_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/EdwardsCompleteness.lean")"
  require_artifact_line "$artifact" "edwards_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/EdwardsBridge.lean")"
  require_artifact_line "$artifact" "poseidon_hash1_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon1Bridge.lean")"
  require_artifact_line "$artifact" "poseidon_hash6_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon6Bridge.lean")"
  require_artifact_line "$artifact" "poseidon_hash7_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon7Bridge.lean")"
  require_artifact_line "$artifact" "anchor_merkle24_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/AnchorMerkleSpec.lean")"
  require_artifact_line "$artifact" "poseidon_hash1_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/PoseidonHash1.lean")"
  require_artifact_line "$artifact" "poseidon_hash6_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/PoseidonHash6.lean")"
  require_artifact_line "$artifact" "poseidon_hash7_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/PoseidonHash7.lean")"
  require_artifact_line "$artifact" "quad_path24_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/QuadPath24.lean")"
  require_artifact_line "$artifact" "go_define_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/circuits/note_reshape_circuit.go")"
  require_artifact_line "$artifact" "poseidon_go_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/primitives/poseidon377.go")"
  require_artifact_line "$artifact" "gadget_labels_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/circuits/gadgets_constraint.go")"
  require_artifact_line "$artifact" "gnarkctl_source_sha256" "$(sha256_file "$ROOT/tools/gnark/cmd/gnarkctl/main.go")"
  require_artifact_line "$artifact" "constraint_coverage_lib_source_sha256" "$(sha256_file "$ROOT/crates/crypto/constraint-coverage/src/lib.rs")"
  require_artifact_line "$artifact" "constraint_coverage_main_source_sha256" "$(sha256_file "$ROOT/crates/crypto/constraint-coverage/src/main.rs")"
  require_artifact_line "$artifact" "constraint_coverage_contracts_source_sha256" "$(sha256_file "$ROOT/crates/crypto/constraint-coverage/src/contracts.rs")"
  require_artifact_line "$artifact" "constraint_coverage_cargo_sha256" "$(sha256_file "$ROOT/crates/crypto/constraint-coverage/Cargo.toml")"
  require_artifact_line "$artifact" "coverage_ir_sha256" "$(sha256_file "$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-deployed-slice-ir.json")"
  require_artifact_line "$artifact" "coverage_manifest_sha256" "$(sha256_file "$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-coverage-manifest.json")"
  require_artifact_line "$artifact" "dtk_generator_source_sha256" "$(sha256_file "$LEAN_DIR/gen/gen_dtk_slice.py")"
  require_artifact_line "$artifact" "rvk_generator_source_sha256" "$(sha256_file "$LEAN_DIR/gen/gen_rvk_deployed_adapters.py")"
  require_artifact_line "$artifact" "scp_generator_source_sha256" "$(sha256_file "$LEAN_DIR/gen/gen_scp_adapters.py")"
  require_artifact_line "$artifact" "generated_contract_source_sha256" "$(sha256_file "$LEAN_DIR/gen/generated_contract_source.py")"
  require_artifact_line "$artifact" "statement_generator_source_sha256" "$(sha256_file "$LEAN_DIR/gen/gen_statement.py")"
  require_artifact_line "$artifact" "wiring_generator_source_sha256" "$(sha256_file "$LEAN_DIR/gen/gen_wiring.py")"
  require_artifact_line "$artifact" "capstone_generator_source_sha256" "$(sha256_file "$LEAN_DIR/gen/gen_capstone.py")"
  require_artifact_line "$artifact" "root_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal.lean")"
  require_artifact_line "$artifact" "lakefile_sha256" "$(sha256_file "$LEAN_DIR/lakefile.lean")"
  require_artifact_line "$artifact" "lake_manifest_sha256" "$(sha256_file "$LEAN_DIR/lake-manifest.json")"
  require_artifact_line "$artifact" "lean_toolchain_sha256" "$(sha256_file "$LEAN_DIR/lean-toolchain")"
  require_artifact_line "$artifact" "lean_check_script_sha256" "$(sha256_file "$ROOT/scripts/check-lean-circuit-fv.sh")"
  require_artifact_line "$artifact" "constraint_coverage_script_sha256" "$(sha256_file "$ROOT/scripts/check-constraint-coverage.sh")"
  rg -F "whole-circuit" "$artifact" >/dev/null \
    || fail "whole-circuit artifact must state whole-circuit scope"
}

check_transfer_stamps() {
  local artifact="$TRANSFER_ARTIFACT"
  local go_wiring="$1"
  local lean_wiring="$2"
  require_artifact_line "$artifact" "whole_circuit_sr1cs_sha256" "$(sha256_file "$ROOT/tools/gnark/artifacts/transfer/transfer.sr1cs")"
  require_artifact_line "$artifact" "manifest_sha256" "$(sha256_file "$ROOT/tools/gnark/artifacts/transfer/transfer-manifest.json")"
  require_artifact_line "$artifact" "coverage_report_sha256" "$(sha256_file "$ROOT/crates/core/component/shielded-pool/formal/transfer-constraint-coverage-report.json")"
  require_artifact_line "$artifact" "nb_constraints" "$(jq -r '.nb_constraints' "$ROOT/tools/gnark/artifacts/transfer/circuit_metadata.json")"
  require_artifact_line "$artifact" "verifying_key_sha256_hex" "$(jq -r '.verifying_key_sha256_hex' "$ROOT/tools/gnark/artifacts/transfer/circuit_metadata.json")"
  require_artifact_line "$artifact" "whole_circuit_model_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Transfer.lean")"
  require_artifact_line "$artifact" "decaf_assumptions_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Decaf377Assumptions.lean")"
  require_artifact_line "$artifact" "compress_to_field_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/CompressToFieldBridge.lean")"
  require_artifact_line "$artifact" "edwards_completeness_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/EdwardsCompleteness.lean")"
  require_artifact_line "$artifact" "edwards_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/EdwardsBridge.lean")"
  require_artifact_line "$artifact" "decaf_fv_inventory_sha256" "$(sha256_file "$TRANSFER_DECAF_FV_INVENTORY")"
  require_artifact_line "$artifact" "wiring_transcript_source_sha256" "$(sha256_file "$(transcript_source_for_circuit transfer)")"
  require_artifact_line "$artifact" "go_wiring_transcript_sha256" "$(sha256_file "$go_wiring")"
  require_artifact_line "$artifact" "lean_wiring_transcript_sha256" "$(sha256_file "$lean_wiring")"
  require_artifact_line "$artifact" "poseidon_hash1_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon1Bridge.lean")"
  require_artifact_line "$artifact" "poseidon_hash5_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon5Bridge.lean")"
  require_artifact_line "$artifact" "poseidon_hash6_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon6Bridge.lean")"
  require_artifact_line "$artifact" "poseidon_hash7_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon7Bridge.lean")"
  require_artifact_line "$artifact" "anchor_merkle24_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/AnchorMerkleSpec.lean")"
  require_artifact_line "$artifact" "ack_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/AckBridge.lean")"
  require_artifact_line "$artifact" "shared_secret_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/SharedSecretBridge.lean")"
  require_artifact_line "$artifact" "transfer_salt_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/TransferSaltBridge.lean")"
  require_artifact_line "$artifact" "poseidon_encryption_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/PoseidonEncryptionBridge.lean")"
  require_artifact_line "$artifact" "dleq_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/DleqBridge.lean")"
  require_artifact_line "$artifact" "threshold_regulated_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/ThresholdRegulatedBridge.lean")"
  require_artifact_line "$artifact" "net_balance_commitment2_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/NetBalanceCommitment2Bridge.lean")"
  require_artifact_line "$artifact" "decaf_circuit_defs_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Decaf377CircuitDefs.lean")"
  require_artifact_line "$artifact" "poseidon_hash5_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/PoseidonHash5.lean")"
  require_artifact_line "$artifact" "net_balance_commitment2_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/NetBalanceCommitment2.lean")"
  require_artifact_line "$artifact" "quad_path24_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/QuadPath24.lean")"
  require_artifact_line "$artifact" "decaf_gadgets_go_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/circuits/decaf_gadgets.go")"
  require_artifact_line "$artifact" "go_define_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/circuits/transfer_circuit.go")"
  require_artifact_line "$artifact" "transfer_encryption_go_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/compliance/transfer_encryption.go")"
  require_artifact_line "$artifact" "dleq_go_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/compliance/dleq.go")"
  require_artifact_line "$artifact" "scalar_mul_gadgets_go_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/circuits/scalar_mul_gadgets.go")"
  require_artifact_line "$artifact" "poseidon_go_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/primitives/poseidon377.go")"
  require_artifact_line "$artifact" "gadget_labels_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/circuits/gadgets_constraint.go")"
  require_artifact_line "$artifact" "gnarkctl_source_sha256" "$(sha256_file "$ROOT/tools/gnark/cmd/gnarkctl/main.go")"
  require_artifact_line "$artifact" "constraint_coverage_lib_source_sha256" "$(sha256_file "$ROOT/crates/crypto/constraint-coverage/src/lib.rs")"
  require_artifact_line "$artifact" "constraint_coverage_main_source_sha256" "$(sha256_file "$ROOT/crates/crypto/constraint-coverage/src/main.rs")"
  require_artifact_line "$artifact" "constraint_coverage_cargo_sha256" "$(sha256_file "$ROOT/crates/crypto/constraint-coverage/Cargo.toml")"
  require_artifact_line "$artifact" "root_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal.lean")"
  require_artifact_line "$artifact" "lakefile_sha256" "$(sha256_file "$LEAN_DIR/lakefile.lean")"
  require_artifact_line "$artifact" "lake_manifest_sha256" "$(sha256_file "$LEAN_DIR/lake-manifest.json")"
  require_artifact_line "$artifact" "lean_toolchain_sha256" "$(sha256_file "$LEAN_DIR/lean-toolchain")"
  require_artifact_line "$artifact" "lean_check_script_sha256" "$(sha256_file "$ROOT/scripts/check-lean-circuit-fv.sh")"
  require_artifact_line "$artifact" "constraint_coverage_script_sha256" "$(sha256_file "$ROOT/scripts/check-constraint-coverage.sh")"
  rg -F "whole-circuit" "$artifact" >/dev/null \
    || fail "whole-circuit artifact must state whole-circuit scope"
}

# --- hygiene (both tiers) ---------------------------------------------------
scratch_files="$(find "$LEAN_DIR/ShielddGnarkFormal" -maxdepth 1 -type f \( -name 'SP*.lean' -o -name 'Probe*.lean' \) -print)"
[[ -z "$scratch_files" ]] || fail "scratch Lean files present: $scratch_files"

rg -n '\bsorry\b|\badmit\b' "$LEAN_DIR/ShielddGnarkFormal" "$LEAN_DIR/ShielddGnarkFormal.lean" \
  && fail "Lean sources contain sorry/admit"

# Project axioms are forbidden. The scalar-field modulus is certified by a
# kernel-checked Lucas chain and the deployed theorems must expose only Lean's
# reviewed standard axiom baseline.
axiom_lines="$(rg -n '^\s*axiom\b' "$LEAN_DIR/ShielddGnarkFormal" "$LEAN_DIR/ShielddGnarkFormal.lean" || true)"
if [[ -n "$axiom_lines" ]]; then
  fail "project Lean axiom: $axiom_lines"
fi

certificate_source="$LEAN_DIR/ShielddGnarkFormal/Deployed/PrimeOrderCertificate.lean"
certificate_shortcuts="$(rg -n '\bnative_decide\b|\bLean\.ofReduceBool\b' "$certificate_source" || true)"
if [[ -n "$certificate_shortcuts" ]]; then
  fail "compiler-backed primality shortcut: $certificate_shortcuts"
fi

artifact_list="$B1_ARTIFACT"
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  artifact_list="${artifact_list}"$'\n'"$(artifact_for_circuit "$circuit")"
done < <(printf '%s\n' "$selected_circuits")

while IFS= read -r artifact; do
  [[ -z "$artifact" ]] && continue
  [[ -f "$artifact" ]] || fail "missing Lean artifact $artifact"
  [[ -f "$artifact.sha256" ]] || fail "missing Lean artifact stamp $artifact.sha256"
  want="$(cat "$artifact.sha256")"
  have="$(sha256_file "$artifact")"
  [[ "$want" == "$have" ]] || fail "artifact stamp mismatch: $artifact ($have != $want)"
done < <(printf '%s\n' "$artifact_list" | awk '!seen[$0]++')

# Transfer still uses its legacy transcript. Consolidate's assurance boundary
# is the freshly re-derived deployed IR + exact row contracts + capstone, so a
# consolidate-only stamps run reaches no Lake command in this section.
echo "==> legacy transfer wiring transcript fidelity"
transcript_modules=""
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  [[ "$circuit" == "transfer" ]] || continue
  transcript_modules="${transcript_modules} $(transcript_module_for_circuit transfer)"
done < <(printf '%s\n' "$selected_circuits")
if [[ -n "$transcript_modules" ]]; then
  (cd "$LEAN_DIR" && lake build $transcript_modules)
fi

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  [[ "$circuit" == "transfer" ]] || continue
  go_wiring="$tmp_dir/go-$circuit.wiring"
  lean_wiring="$tmp_dir/lean-$circuit.wiring"
  (
    cd "$ROOT/tools/gnark"
    go run ./cmd/gnarkctl export-wiring-transcript \
      --circuit "$circuit" \
      --out "$go_wiring"
  )
  lean_wiring_transcript "$circuit" "$lean_wiring"
  if ! cmp -s "$go_wiring" "$lean_wiring"; then
    diff -u "$lean_wiring" "$go_wiring" >&2 || true
    fail "Go Define wiring transcript does not match Lean transcript for $circuit"
  fi
done < <(printf '%s\n' "$selected_circuits")

# --- source, semantic trace, and deployed key binding (both tiers) ---------
# Recompile from Go before touching committed SR1CS-derived proof artifacts.
# Exact manifest equality catches op/port/segment drift even when rows do not
# change. The VK check binds JSON/bin key encodings and recompiles to a
# byte-identical deployed SR1CS; full/release additionally prove+verify with the
# deployed keys against that freshly compiled constraint system.
echo "==> Go source / semantic manifest / deployed key binding"
manifest_pin_args=()
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  manifest_pin_args+=("$circuit")
done < <(printf '%s\n' "$selected_circuits")
"$ROOT/scripts/check-manifest-pin.sh" "${manifest_pin_args[@]}"
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  if [[ "$MODE" == "full" ]]; then
    "$ROOT/scripts/check-vk-derivation.sh" "$circuit" --prove
  else
    "$ROOT/scripts/check-vk-derivation.sh" "$circuit"
  fi
done < <(printf '%s\n' "$selected_circuits")

# --- compiled-constraint coverage and VK binding (both tiers) ---------------
# The Rust coverage checks (report drift, emitted-contract drift, stamp
# integrity) run in both tiers. The `lake`-driven bridge-theorem name/type
# resolution transitively builds the whole-circuit Lean models, so it is
# deferred to the `full` (nightly) tier; the PR `stamps` tier certifies those
# Lean sources by hash instead of re-elaborating them.
coverage_lean_flag=""
[[ "$MODE" == "full" ]] && coverage_lean_flag="--lean-theorem-checks"
echo "==> compiled constraint coverage"
"$ROOT/scripts/check-constraint-coverage.sh" $coverage_lean_flag $(printf '%s\n' "$selected_circuits")

# --- emitted-Lean semantic anti-pattern lint (both tiers) -------------------
# Enforces the term-size / machine-safety emission rules (fuel-def unroll, wide
# carried rcases, >8-arm in-proof match) in CI instead of prompt context.
echo "==> emitted-Lean anti-pattern lint"
"$ROOT/scripts/check-structured-lc-lint.sh"
"$ROOT/scripts/check-extracted-lean-heartbeats.sh"

# Optimization evidence must parse the signed coefficients present in SR1CS;
# otherwise duplicate/dead-wire counts are unsound inputs to prioritization.
echo "==> FV optimization census parser regression"
"$ROOT/scripts/check-fv-census.sh"

# --- stamp integrity (both tiers) -------------------------------------------
check_common_stamps
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  case "$circuit" in
    consolidate2x1)
      check_consolidate2x1_stamps
      ;;
    transfer)
      check_transfer_stamps "$tmp_dir/go-transfer.wiring" "$tmp_dir/lean-transfer.wiring"
      ;;
  esac
done < <(printf '%s\n' "$selected_circuits")

if [[ "$MODE" == "stamps" ]]; then
  echo "lean circuit fv ok (stamps): circuits=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"
  exit 0
fi

# --- whole-circuit axiom verification (full tier only) ----------------------
echo "==> lake build (full)"
build_modules="ShielddGnarkFormal.ImtGapBridge"
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  case "$circuit" in
    consolidate2x1) build_modules="$build_modules ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Statement" ;;
    transfer) build_modules="$build_modules ShielddGnarkFormal.Transfer" ;;
  esac
done < <(printf '%s\n' "$selected_circuits")
(cd "$LEAN_DIR" && lake exe cache get && lake build $build_modules)

echo "==> #print axioms"
axioms_file="$tmp_dir/axioms.lean"
{
  echo "import ShielddGnarkFormal.ImtGapBridge"
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    case "$circuit" in
      consolidate2x1) echo "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Statement" ;;
      transfer) echo "import ShielddGnarkFormal.Transfer" ;;
    esac
  done < <(printf '%s\n' "$selected_circuits")
  echo "#print axioms Shieldd.GnarkFormal.Extracted.ImtGap.circuit_sound"
  echo "#print axioms Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_sound"
  echo "#print axioms Shieldd.GnarkFormal.Extracted.ImtGap.canonicalFqBitsGadget_canonical"
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    case "$circuit" in
      consolidate2x1)
        echo "#print axioms Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime"
        echo "#print axioms Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.consolidate2x1_deployed_sound"
        echo "#print axioms Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.consolidate2x1_statement"
        ;;
      transfer) echo "#print axioms Shieldd.GnarkFormal.Transfer.transfer_circuit_sound" ;;
    esac
  done < <(printf '%s\n' "$selected_circuits")
} > "$axioms_file"
axioms_out="$(cd "$LEAN_DIR" && lake env lean "$axioms_file")"
printf '%s\n' "$axioms_out"
flat_axioms="$(printf '%s' "$axioms_out" | tr '\n' ' ' | tr -s '[:space:]' ' ')"
for theorem in \
  "Shieldd.GnarkFormal.Extracted.ImtGap.circuit_sound" \
  "Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_sound" \
  "Shieldd.GnarkFormal.Extracted.ImtGap.canonicalFqBitsGadget_canonical"; do
  [[ "$flat_axioms" == *"'$theorem' depends on axioms: [propext, Classical.choice, Quot.sound]"* ]] \
    || fail "unexpected axiom baseline for $theorem"
done

while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  case "$circuit" in
    consolidate2x1)
      for theorem in \
        "Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime" \
        "Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.consolidate2x1_deployed_sound" \
        "Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.consolidate2x1_statement"; do
        [[ "$flat_axioms" == *"'$theorem' depends on axioms: [propext, Classical.choice, Quot.sound]"* ]] \
          || fail "unexpected axiom baseline for $theorem"
      done
      continue
      ;;
    transfer)
      expected="'Shieldd.GnarkFormal.Transfer.transfer_circuit_sound' depends on axioms: [propext, Classical.choice, Quot.sound]"
      ;;
  esac
  [[ "$flat_axioms" == *"$expected"* ]] || fail "unexpected axiom baseline for $circuit"
done < <(printf '%s\n' "$selected_circuits")

echo "lean circuit fv ok (full): circuits=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"

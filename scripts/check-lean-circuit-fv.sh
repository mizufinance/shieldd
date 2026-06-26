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
B1_ARTIFACT="$LEAN_DIR/imt-gap-lean-artifact.txt"
C2X1_ARTIFACT="$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-whole-circuit-lean-artifact.txt"
TRANSFER_ARTIFACT="$ROOT/crates/core/component/shielded-pool/formal/transfer-whole-circuit-lean-artifact.txt"
C2X1_DECAF_FV_INVENTORY="$LEAN_DIR/consolidate2x1-decaf-fv-inventory.txt"
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
    consolidate2x1) printf '%s\n' "ShielddGnarkFormal.Consolidate2x1WiringTranscript" ;;
    transfer) printf '%s\n' "ShielddGnarkFormal.TransferWiringTranscript" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

transcript_source_for_circuit() {
  case "$1" in
    consolidate2x1) printf '%s\n' "$LEAN_DIR/ShielddGnarkFormal/Consolidate2x1WiringTranscript.lean" ;;
    transfer) printf '%s\n' "$LEAN_DIR/ShielddGnarkFormal/TransferWiringTranscript.lean" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

lean_wiring_transcript() {
  local circuit="$1" out="$2"
  case "$circuit" in
    consolidate2x1)
      (
        cd "$LEAN_DIR"
        lake env lean --stdin > "$out" <<'LEAN'
import ShielddGnarkFormal.Consolidate2x1WiringTranscript
#eval IO.print Shieldd.GnarkFormal.Consolidate2x1WiringTranscript.canonical
LEAN
      )
      ;;
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
  local go_wiring="$1"
  local lean_wiring="$2"
  require_artifact_line "$artifact" "whole_circuit_sr1cs_sha256" "$(sha256_file "$ROOT/tools/gnark/artifacts/consolidate2x1/consolidate2x1.sr1cs")"
  require_artifact_line "$artifact" "manifest_sha256" "$(sha256_file "$ROOT/tools/gnark/artifacts/consolidate2x1/consolidate2x1-manifest.json")"
  require_artifact_line "$artifact" "coverage_report_sha256" "$(sha256_file "$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-constraint-coverage-report.json")"
  require_artifact_line "$artifact" "nb_constraints" "$(jq -r '.nb_constraints' "$ROOT/tools/gnark/artifacts/consolidate2x1/circuit_metadata.json")"
  require_artifact_line "$artifact" "verifying_key_sha256_hex" "$(jq -r '.verifying_key_sha256_hex' "$ROOT/tools/gnark/artifacts/consolidate2x1/circuit_metadata.json")"
  require_artifact_line "$artifact" "whole_circuit_model_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Consolidate2x1.lean")"
  require_artifact_line "$artifact" "decaf_assumptions_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Decaf377Assumptions.lean")"
  require_artifact_line "$artifact" "compress_to_field_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/CompressToFieldBridge.lean")"
  require_artifact_line "$artifact" "edwards_completeness_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/EdwardsCompleteness.lean")"
  require_artifact_line "$artifact" "edwards_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/EdwardsBridge.lean")"
  require_artifact_line "$artifact" "decaf_fv_inventory_sha256" "$(sha256_file "$C2X1_DECAF_FV_INVENTORY")"
  require_artifact_line "$artifact" "wiring_transcript_source_sha256" "$(sha256_file "$(transcript_source_for_circuit consolidate2x1)")"
  require_artifact_line "$artifact" "go_wiring_transcript_sha256" "$(sha256_file "$go_wiring")"
  require_artifact_line "$artifact" "lean_wiring_transcript_sha256" "$(sha256_file "$lean_wiring")"
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

# Only one Lean `axiom` is permitted in-tree: the ledgered decaf377 scalar-field
# primality assumption (CC-ASSUME-DECAF377-PRIME-ORDER-GROUP), declared once in
# Deployed/PrimeOrderAssumption.lean and used to supply `Fact (Nat.Prime Order)`
# instances to the deployed gadget binding wrappers. Any other `axiom` fails.
axiom_lines="$(rg -n '^\s*axiom\b' "$LEAN_DIR/ShielddGnarkFormal" "$LEAN_DIR/ShielddGnarkFormal.lean" \
  | rg -v 'Deployed/PrimeOrderAssumption\.lean:.*\baxiom decaf377ScalarFieldPrime\b' || true)"
if [[ -n "$axiom_lines" ]]; then
  fail "unexpected Lean axiom: $axiom_lines"
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

# --- wiring-transcript fidelity (both tiers) --------------------------------
echo "==> wiring transcript fidelity"
transcript_modules=""
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  transcript_modules="${transcript_modules} $(transcript_module_for_circuit "$circuit")"
done < <(printf '%s\n' "$selected_circuits")
(cd "$LEAN_DIR" && lake build $transcript_modules)

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
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

# --- compiled-constraint coverage and VK binding (both tiers) ---------------
echo "==> compiled constraint coverage"
"$ROOT/scripts/check-constraint-coverage.sh" $(printf '%s\n' "$selected_circuits")

# --- stamp integrity (both tiers) -------------------------------------------
check_common_stamps
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  case "$circuit" in
    consolidate2x1)
      check_consolidate2x1_stamps "$tmp_dir/go-consolidate2x1.wiring" "$tmp_dir/lean-consolidate2x1.wiring"
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
    consolidate2x1) build_modules="$build_modules ShielddGnarkFormal.Consolidate2x1" ;;
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
      consolidate2x1) echo "import ShielddGnarkFormal.Consolidate2x1" ;;
      transfer) echo "import ShielddGnarkFormal.Transfer" ;;
    esac
  done < <(printf '%s\n' "$selected_circuits")
  echo "#print axioms Shieldd.GnarkFormal.Extracted.ImtGap.circuit_sound"
  echo "#print axioms Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_sound"
  echo "#print axioms Shieldd.GnarkFormal.Extracted.ImtGap.canonicalFqBitsGadget_canonical"
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    case "$circuit" in
      consolidate2x1) echo "#print axioms Shieldd.GnarkFormal.Consolidate2x1.consolidate2x1_circuit_sound" ;;
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
      expected="'Shieldd.GnarkFormal.Consolidate2x1.consolidate2x1_circuit_sound' depends on axioms: [propext, Classical.choice, Quot.sound]"
      ;;
    transfer)
      expected="'Shieldd.GnarkFormal.Transfer.transfer_circuit_sound' depends on axioms: [propext, Classical.choice, Quot.sound]"
      ;;
  esac
  [[ "$flat_axioms" == *"$expected"* ]] || fail "unexpected axiom baseline for $circuit"
done < <(printf '%s\n' "$selected_circuits")

echo "lean circuit fv ok (full): circuits=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"

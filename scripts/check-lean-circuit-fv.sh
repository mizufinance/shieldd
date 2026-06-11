#!/usr/bin/env bash
set -euo pipefail

fail() {
  echo "check-lean-circuit-fv failed: $*" >&2
  exit 1
}

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/tools/gnark/lean"
B1_ARTIFACT="$LEAN_DIR/imt-gap-lean-artifact.txt"
B1_ARTIFACT_SHA="$B1_ARTIFACT.sha256"
WHOLE_ARTIFACT="$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-whole-circuit-lean-artifact.txt"
WHOLE_ARTIFACT_SHA="$WHOLE_ARTIFACT.sha256"
GO_DEFINE="$ROOT/tools/gnark/internal/circuits/note_reshape_circuit.go"
WIRING_TRANSCRIPT_SOURCE="$LEAN_DIR/ShielddGnarkFormal/Consolidate2x1WiringTranscript.lean"

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

scratch_files="$(find "$LEAN_DIR/ShielddGnarkFormal" -maxdepth 1 -type f \( -name 'SP*.lean' -o -name 'Probe*.lean' \) -print)"
[[ -z "$scratch_files" ]] || fail "scratch Lean files present: $scratch_files"

rg -n '\bsorry\b|\badmit\b' "$LEAN_DIR/ShielddGnarkFormal" "$LEAN_DIR/ShielddGnarkFormal.lean" \
  && fail "Lean sources contain sorry/admit"

axiom_lines="$(rg -n '^\s*axiom\b' "$LEAN_DIR/ShielddGnarkFormal" "$LEAN_DIR/ShielddGnarkFormal.lean" || true)"
if [[ -n "$axiom_lines" ]]; then
  while IFS= read -r line; do
    case "$line" in
      *"Decaf377Assumptions.lean:"*"axiom decaf377_compressToField_sound :"*) ;;
      *"Decaf377Assumptions.lean:"*"axiom decaf377_assertEquivalent_sound :"*) ;;
      *"Decaf377Assumptions.lean:"*"axiom decaf377_randomizedVerificationKey_sound :"*) ;;
      *"Decaf377Assumptions.lean:"*"axiom decaf377_diversifiedTransmissionKey_sound :"*) ;;
      *"Decaf377Assumptions.lean:"*"axiom decaf377_netBalanceCommitment_sound :"*) ;;
      *) fail "unexpected Lean axiom: $line" ;;
    esac
  done <<< "$axiom_lines"
fi

for artifact in "$B1_ARTIFACT" "$WHOLE_ARTIFACT"; do
  [[ -f "$artifact" ]] || fail "missing Lean artifact $artifact"
  [[ -f "$artifact.sha256" ]] || fail "missing Lean artifact stamp $artifact.sha256"
  want="$(cat "$artifact.sha256")"
  have="$(sha256_file "$artifact")"
  [[ "$want" == "$have" ]] || fail "artifact stamp mismatch: $artifact ($have != $want)"
done

echo "==> lake build"
(cd "$LEAN_DIR" && lake build ShielddGnarkFormal.Consolidate2x1WiringTranscript && lake build)

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT
GO_WIRING_TRANSCRIPT="$tmp_dir/go-consolidate2x1.wiring"
LEAN_WIRING_TRANSCRIPT="$tmp_dir/lean-consolidate2x1.wiring"

echo "==> wiring transcript fidelity"
(
  cd "$ROOT/tools/gnark"
  go run ./cmd/gnarkctl export-wiring-transcript \
    --circuit consolidate2x1 \
    --out "$GO_WIRING_TRANSCRIPT"
)
(
  cd "$LEAN_DIR"
  lake env lean --stdin > "$LEAN_WIRING_TRANSCRIPT" <<'LEAN'
import ShielddGnarkFormal.Consolidate2x1WiringTranscript
#eval IO.print Shieldd.GnarkFormal.Consolidate2x1WiringTranscript.canonical
LEAN
)
if ! cmp -s "$GO_WIRING_TRANSCRIPT" "$LEAN_WIRING_TRANSCRIPT"; then
  diff -u "$LEAN_WIRING_TRANSCRIPT" "$GO_WIRING_TRANSCRIPT" >&2 || true
  fail "Go Define wiring transcript does not match Lean Define-model transcript"
fi

require_artifact_line "$B1_ARTIFACT" "imt_gap_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/ImtGap.lean")"
require_artifact_line "$B1_ARTIFACT" "canonical_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/CanonicalFqBitsBridge.lean")"
require_artifact_line "$B1_ARTIFACT" "lex_less_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/LexLessLadder.lean")"
require_artifact_line "$B1_ARTIFACT" "imt_gap_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/ImtGapBridge.lean")"
require_artifact_line "$B1_ARTIFACT" "spec_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Specs.lean")"
require_artifact_line "$B1_ARTIFACT" "root_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal.lean")"
require_artifact_line "$B1_ARTIFACT" "lakefile_sha256" "$(sha256_file "$LEAN_DIR/lakefile.lean")"
require_artifact_line "$B1_ARTIFACT" "lake_manifest_sha256" "$(sha256_file "$LEAN_DIR/lake-manifest.json")"
require_artifact_line "$B1_ARTIFACT" "lean_toolchain_sha256" "$(sha256_file "$LEAN_DIR/lean-toolchain")"

require_artifact_line "$WHOLE_ARTIFACT" "whole_circuit_model_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Consolidate2x1.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "decaf_assumptions_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Decaf377Assumptions.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "wiring_transcript_source_sha256" "$(sha256_file "$WIRING_TRANSCRIPT_SOURCE")"
require_artifact_line "$WHOLE_ARTIFACT" "go_wiring_transcript_sha256" "$(sha256_file "$GO_WIRING_TRANSCRIPT")"
require_artifact_line "$WHOLE_ARTIFACT" "lean_wiring_transcript_sha256" "$(sha256_file "$LEAN_WIRING_TRANSCRIPT")"
require_artifact_line "$WHOLE_ARTIFACT" "poseidon_hash1_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon1Bridge.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "poseidon_hash6_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon6Bridge.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "poseidon_hash7_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Poseidon7Bridge.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "anchor_merkle24_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/AnchorMerkleSpec.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "poseidon_hash1_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/PoseidonHash1.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "poseidon_hash6_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/PoseidonHash6.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "poseidon_hash7_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/PoseidonHash7.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "quad_path24_extracted_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/Extracted/QuadPath24.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "go_define_source_sha256" "$(sha256_file "$GO_DEFINE")"
require_artifact_line "$WHOLE_ARTIFACT" "poseidon_go_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/primitives/poseidon377.go")"
require_artifact_line "$WHOLE_ARTIFACT" "gadget_labels_source_sha256" "$(sha256_file "$ROOT/tools/gnark/internal/circuits/gadgets_constraint.go")"
require_artifact_line "$WHOLE_ARTIFACT" "gnarkctl_source_sha256" "$(sha256_file "$ROOT/tools/gnark/cmd/gnarkctl/main.go")"
require_artifact_line "$WHOLE_ARTIFACT" "root_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "lakefile_sha256" "$(sha256_file "$LEAN_DIR/lakefile.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "lake_manifest_sha256" "$(sha256_file "$LEAN_DIR/lake-manifest.json")"
require_artifact_line "$WHOLE_ARTIFACT" "lean_toolchain_sha256" "$(sha256_file "$LEAN_DIR/lean-toolchain")"
require_artifact_line "$WHOLE_ARTIFACT" "lean_check_script_sha256" "$(sha256_file "$ROOT/scripts/check-lean-circuit-fv.sh")"

rg -F "whole-circuit" "$WHOLE_ARTIFACT" >/dev/null \
  || fail "whole-circuit artifact must state whole-circuit scope"

echo "==> #print axioms"
axioms_out="$(
  cd "$LEAN_DIR"
  lake env lean --stdin <<'LEAN'
import ShielddGnarkFormal.ImtGapBridge
import ShielddGnarkFormal.Consolidate2x1
#print axioms Shieldd.GnarkFormal.Extracted.ImtGap.circuit_sound
#print axioms Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_sound
#print axioms Shieldd.GnarkFormal.Extracted.ImtGap.canonicalFqBitsGadget_canonical
#print axioms Shieldd.GnarkFormal.Consolidate2x1.consolidate2x1_circuit_sound
LEAN
)"
printf '%s\n' "$axioms_out"
flat_axioms="$(printf '%s' "$axioms_out" | tr '\n' ' ' | tr -s '[:space:]' ' ')"
for theorem in \
  "Shieldd.GnarkFormal.Extracted.ImtGap.circuit_sound" \
  "Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_sound" \
  "Shieldd.GnarkFormal.Extracted.ImtGap.canonicalFqBitsGadget_canonical"; do
  [[ "$flat_axioms" == *"'$theorem' depends on axioms: [propext, Classical.choice, Quot.sound]"* ]] \
    || fail "unexpected axiom baseline for $theorem"
done

whole_expected="'Shieldd.GnarkFormal.Consolidate2x1.consolidate2x1_circuit_sound' depends on axioms: [propext, Classical.choice, Quot.sound, Shieldd.GnarkFormal.Decaf377Assumptions.decaf377_assertEquivalent_sound, Shieldd.GnarkFormal.Decaf377Assumptions.decaf377_compressToField_sound, Shieldd.GnarkFormal.Decaf377Assumptions.decaf377_diversifiedTransmissionKey_sound, Shieldd.GnarkFormal.Decaf377Assumptions.decaf377_netBalanceCommitment_sound, Shieldd.GnarkFormal.Decaf377Assumptions.decaf377_randomizedVerificationKey_sound]"
[[ "$flat_axioms" == *"$whole_expected"* ]] \
  || fail "unexpected axiom baseline for consolidate2x1_circuit_sound"

echo "lean circuit fv ok: sha256:$(sha256_file "$WHOLE_ARTIFACT")"

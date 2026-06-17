#!/usr/bin/env bash
set -euo pipefail

# Lean whole-circuit FV gate, in two cost tiers selected by the first argument:
#
#   stamps  (PR tier)  Hygiene, stamp integrity, and wiring-transcript fidelity.
#                      Builds only the zero-import wiring-transcript module, so it
#                      needs no Mathlib cache and never elaborates the heavy
#                      whole-circuit proofs. Catches: sorry/axiom drift, a source
#                      changed without re-verifying (stale stamp), and Go<->Lean
#                      circuit-wiring divergence.
#
#   full    (nightly)  Everything in `stamps`, plus a clean-room `lake build` of
#                      the heavy proof modules and the `#print axioms` baseline
#                      that proves the theorems are axiom-clean. This is the
#                      source of truth and is expensive (loads multi-GB proof
#                      terms); it runs on the nightly schedule, not on PRs.
#
# Default is `full` so a local run verifies everything. The stamps a `full` run
# checks are produced by running `full` locally, so the cheap PR tier enforces
# "every verified artifact was re-verified by whoever touched it" and nightly
# independently confirms it on clean infrastructure.
MODE="${1:-full}"
case "$MODE" in
  stamps | full) ;;
  *)
    echo "usage: $(basename "$0") [stamps|full]" >&2
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
WHOLE_ARTIFACT="$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-whole-circuit-lean-artifact.txt"
GO_DEFINE="$ROOT/tools/gnark/internal/circuits/note_reshape_circuit.go"
WIRING_TRANSCRIPT_SOURCE="$LEAN_DIR/ShielddGnarkFormal/Consolidate2x1WiringTranscript.lean"
DECAF_FV_INVENTORY="$LEAN_DIR/consolidate2x1-decaf-fv-inventory.txt"

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

# --- hygiene (both tiers) ---------------------------------------------------
scratch_files="$(find "$LEAN_DIR/ShielddGnarkFormal" -maxdepth 1 -type f \( -name 'SP*.lean' -o -name 'Probe*.lean' \) -print)"
[[ -z "$scratch_files" ]] || fail "scratch Lean files present: $scratch_files"

rg -n '\bsorry\b|\badmit\b' "$LEAN_DIR/ShielddGnarkFormal" "$LEAN_DIR/ShielddGnarkFormal.lean" \
  && fail "Lean sources contain sorry/admit"

axiom_lines="$(rg -n '^\s*axiom\b' "$LEAN_DIR/ShielddGnarkFormal" "$LEAN_DIR/ShielddGnarkFormal.lean" || true)"
if [[ -n "$axiom_lines" ]]; then
  fail "unexpected Lean axiom: $axiom_lines"
fi

for artifact in "$B1_ARTIFACT" "$WHOLE_ARTIFACT"; do
  [[ -f "$artifact" ]] || fail "missing Lean artifact $artifact"
  [[ -f "$artifact.sha256" ]] || fail "missing Lean artifact stamp $artifact.sha256"
  want="$(cat "$artifact.sha256")"
  have="$(sha256_file "$artifact")"
  [[ "$want" == "$have" ]] || fail "artifact stamp mismatch: $artifact ($have != $want)"
done

# --- wiring-transcript fidelity (both tiers) --------------------------------
# The transcript module has no imports, so building it needs neither the Mathlib
# cache nor the heavy proof closure. This is the only build the PR tier performs.
echo "==> wiring transcript fidelity"
(cd "$LEAN_DIR" && lake build ShielddGnarkFormal.Consolidate2x1WiringTranscript)

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT
GO_WIRING_TRANSCRIPT="$tmp_dir/go-consolidate2x1.wiring"
LEAN_WIRING_TRANSCRIPT="$tmp_dir/lean-consolidate2x1.wiring"

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

# --- stamp integrity (both tiers) -------------------------------------------
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
require_artifact_line "$WHOLE_ARTIFACT" "edwards_completeness_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/EdwardsCompleteness.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "edwards_bridge_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/EdwardsBridge.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "edwards_group_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/EdwardsGroup.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "prime_order_subgroup_impl_source_sha256" "$(sha256_file "$LEAN_DIR/ShielddGnarkFormal/PrimeOrderSubgroupImpl.lean")"
require_artifact_line "$WHOLE_ARTIFACT" "decaf_fv_inventory_sha256" "$(sha256_file "$DECAF_FV_INVENTORY")"
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

if [[ "$MODE" == "stamps" ]]; then
  echo "lean circuit fv ok (stamps): sha256:$(sha256_file "$WHOLE_ARTIFACT")"
  exit 0
fi

# --- whole-circuit axiom verification (full tier only) ----------------------
# Fetch prebuilt Mathlib oleans from the upstream cache so a clean checkout
# compiles only the project's own modules instead of all of Mathlib. Build only
# the modules the gate verifies (and their transitive closure); the whole-lib
# build co-elaborates unrelated multi-GB circuit modules this gate never imports
# and the concurrent peak OOMs the runner.
echo "==> lake build (full)"
(cd "$LEAN_DIR" && lake exe cache get \
  && lake build \
       ShielddGnarkFormal.ImtGapBridge \
       ShielddGnarkFormal.Consolidate2x1)

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

whole_expected="'Shieldd.GnarkFormal.Consolidate2x1.consolidate2x1_circuit_sound' depends on axioms: [propext, Classical.choice, Quot.sound]"
[[ "$flat_axioms" == *"$whole_expected"* ]] \
  || fail "unexpected axiom baseline for consolidate2x1_circuit_sound"

echo "lean circuit fv ok (full): sha256:$(sha256_file "$WHOLE_ARTIFACT")"

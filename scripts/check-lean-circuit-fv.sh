#!/usr/bin/env bash
set -euo pipefail

# Incremental NoteReshape FV gate.
#
#   drift   Go compilation, content impact, coverage, generator/inventory
#           checks, and stamp integrity. No Lake command and no proving.
#   typed   drift plus selected final soundness modules, typed theorem bindings,
#           obligation coverage, axiom output, and changed-source benchmarks.
#   release typed plus stamp validation, deployed-key prove/verify, negative
#           key-family checks, and release invariants.
#
# The four NoteReshape families are compiled once per invocation into a
# temporary directory. Typed/release builds are serial and target only the
# selected deployed soundness modules. `release all` is the merge/release
# certification entry point; handoff can run `release <affected families>`
# before the final `release all`.

MODE="${1:-}"
case "$MODE" in
  drift|typed|release) shift ;;
  *)
    echo "usage: $(basename "$0") [drift|typed|release] [note_reshape2x1|note_reshape4x1|note_reshape8x1|note_reshape1x8|all]..." >&2
    exit 2
    ;;
esac

export LEAN_NUM_THREADS="${LEAN_NUM_THREADS:-1}"

fail() {
  echo "check-lean-circuit-fv failed: $*" >&2
  exit 1
}

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/tools/gnark/lean"
GNARK_DIR="$ROOT/tools/gnark"
FAMILIES=(note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8)

catalog_certified="$(
  python3 "$ROOT/scripts/check-fv-profiles.py" --emit-tsv --status certified \
    | cut -f1 \
    | LC_ALL=C sort
)"
driver_certified="$(printf '%s\n' "${FAMILIES[@]}" | LC_ALL=C sort)"
if [[ "$catalog_certified" != "$driver_certified" ]]; then
  diff -u \
    <(printf '%s\n' "$driver_certified") \
    <(printf '%s\n' "$catalog_certified") >&2 || true
  fail "certified FV catalog and exact Lean backend registries differ"
fi

select_circuits() {
  local selected=()
  local candidate existing seen

  add_circuit() {
    candidate="$1"
    seen=0
    if [[ "${#selected[@]}" -gt 0 ]]; then
      for existing in "${selected[@]}"; do
        if [[ "$existing" == "$candidate" ]]; then
          seen=1
          break
        fi
      done
    fi
    [[ "$seen" -eq 1 ]] || selected+=("$candidate")
  }

  if [[ "$#" -eq 0 ]]; then
    selected=("${FAMILIES[@]}")
    printf '%s\n' "${selected[@]}"
    return
  fi
  for circuit in "$@"; do
    case "$circuit" in
      all)
        for candidate in "${FAMILIES[@]}"; do
          add_circuit "$candidate"
        done
        ;;
      note_reshape2x1|note_reshape4x1|note_reshape8x1|note_reshape1x8)
        add_circuit "$circuit"
        ;;
      *) fail "unsupported family $circuit" ;;
    esac
  done
  printf '%s\n' "${selected[@]}"
}

selected_circuits="$(select_circuits "$@")"
[[ -n "$selected_circuits" ]] || fail "no families selected"

artifact_for() {
  local circuit="$1"
  printf '%s\n' "$ROOT/tools/gnark/artifacts/$circuit"
}

witness_for() {
  local circuit="$1"
  printf '%s/internal/testfixtures/vectors/%s_witness_v3.bin\n' "$GNARK_DIR" "$circuit"
}

module_for() {
  case "$1" in
    note_reshape2x1) echo NoteReshape2x1 ;;
    note_reshape4x1) echo NoteReshape4x1 ;;
    note_reshape8x1) echo NoteReshape8x1 ;;
    note_reshape1x8) echo NoteReshape1x8 ;;
    *) fail "unsupported family $1" ;;
  esac
}

sha256_file() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$1" | awk '{print $1}'
  else
    shasum -a 256 "$1" | awk '{print $1}'
  fi
}

tmp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT
fresh_dir="$tmp_dir/compiled"
mkdir -p "$fresh_dir"
export GOCACHE="${GOCACHE:-$tmp_dir/go-cache}"

lean_build() {
  local target="$1"
  local safe_target="${target//[^[:alnum:]._-]/_}"
  local log="$fresh_dir/lean-build-$safe_target.log"
  if ! (
    cd "$LEAN_DIR"
    lake build "$target"
  ) >"$log" 2>&1; then
    cat "$log" >&2
    fail "Lean build failed: $target"
  fi
  echo "    built $target"
}

echo "==> registry parity"
python3 "$GNARK_DIR/check_gnark_family_registries.py"

echo "==> compile all four NoteReshape families once"
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  export_fv_args=()
  if [[ "$MODE" == "release" ]] && grep -qx "$circuit" <<< "$selected_circuits"; then
    export_fv_args=(
      --prove
      --witness "$(witness_for "$circuit")"
      --artifact-dir "$(artifact_for "$circuit")"
      --proof-receipt-out "$fresh_dir/$circuit-proof-receipt.json"
    )
  fi
  export_log="$fresh_dir/$circuit-export-fv.log"
  if ! (
    cd "$GNARK_DIR"
    go run ./cmd/gnarkctl export-fv \
      --circuit "$circuit" \
      --sr1cs-out "$fresh_dir/$circuit.sr1cs" \
      --manifest-out "$fresh_dir/$circuit-manifest.json" \
      ${export_fv_args[@]+"${export_fv_args[@]}"}
  ) >"$export_log" 2>&1; then
    cat "$export_log" >&2
    fail "FV export failed for $circuit"
  fi
  constraint_count="$(python3 -c \
    'import json,sys; print(json.load(open(sys.argv[1]))["nb_constraints"])' \
    "$fresh_dir/$circuit-manifest.json")"
  if [[ "$MODE" == "release" ]] && grep -qx "$circuit" <<< "$selected_circuits"; then
    echo "    $circuit: $constraint_count constraints; deployed proof verified"
  else
    echo "    $circuit: $constraint_count constraints"
  fi
done < <(printf '%s\n' "${FAMILIES[@]}")

echo "==> normalized IR, exact coverage, generated contracts"
coverage_log="$fresh_dir/constraint-coverage.log"
if ! FV_FRESH_DIR="$fresh_dir" \
  "$ROOT/scripts/check-constraint-coverage.sh" \
    --require-full-deployed \
    $(printf '%s\n' "${FAMILIES[@]}") >"$coverage_log" 2>&1; then
  cat "$coverage_log" >&2
  fail "normalized IR or exact constraint coverage failed"
fi
tail -n 1 "$coverage_log"

echo "==> template inventory"
python3 "$ROOT/tools/gnark/lean/gen/gen_template_inventory.py" \
  --ir "$fresh_dir/note_reshape2x1-deployed-slice-ir.json" \
  "$fresh_dir/note_reshape4x1-deployed-slice-ir.json" \
  "$fresh_dir/note_reshape8x1-deployed-slice-ir.json" \
  "$fresh_dir/note_reshape1x8-deployed-slice-ir.json" \
  --out "$fresh_dir/note-reshape-template-inventory.json" \
  --require-note-reshape >/dev/null
committed_template_inventory="$GNARK_DIR/artifacts/note-reshape-template-inventory.json"
if ! cmp -s "$committed_template_inventory" "$fresh_dir/note-reshape-template-inventory.json"; then
  diff -u "$committed_template_inventory" \
    "$fresh_dir/note-reshape-template-inventory.json" >&2 || true
  fail "normalized NoteReshape template inventory drifted"
fi

echo "==> content-based impact report"
python3 "$ROOT/scripts/check-note-reshape-impact.py" \
  --fresh-dir "$fresh_dir" \
  --contracts-root "$fresh_dir/contracts" \
  --template-inventory "$fresh_dir/note-reshape-template-inventory.json" \
  --policy clean

echo "==> generator unit, drift, and mtime tests"
(
  cd "$ROOT/tools/gnark/lean/gen"
  python3 -m unittest discover -p 'test_*.py'
)
python3 "$ROOT/tools/gnark/lean/gen/gen_template_ownership.py" --check
python3 "$ROOT/tools/gnark/lean/gen/gen_note_reshape_padded_spends.py" --check
python3 "$ROOT/tools/gnark/lean/gen/gen_note_reshape_padded_commitments.py" --check
python3 "$ROOT/tools/gnark/lean/gen/gen_note_reshape_dtk_seating.py" --check
python3 "$ROOT/tools/gnark/lean/gen/gen_note_reshape_balance_seating.py" --check

echo "==> formal gate self-tests"
"$ROOT/scripts/check-formal-gate-self-tests.sh"

poseidon_parity_mode=vectors
if [[ "$MODE" == "release" ]]; then
  poseidon_parity_mode=full
fi
echo "==> Poseidon377 generated parity ($poseidon_parity_mode)"
"$ROOT/scripts/check_poseidon377_parity.sh" "$poseidon_parity_mode"

echo "==> emitted-Lean hygiene"
"$ROOT/scripts/check-structured-lc-lint.sh"
"$ROOT/scripts/check-extracted-lean-heartbeats.sh"
"$ROOT/scripts/check-fv-census.sh"

check_stamp() {
  local circuit="$1"
  local artifact="$ROOT/crates/core/component/shielded-pool/formal/$circuit-whole-circuit-lean-artifact.txt"
  [[ -f "$artifact" && -f "$artifact.sha256" ]] \
    || fail "missing evidence stamp for $circuit"
  [[ "$(tr -d '[:space:]' < "$artifact.sha256")" == "$(sha256_file "$artifact")" ]] \
    || fail "evidence sidecar mismatch for $circuit"
  local adir
  adir="$(artifact_for "$circuit")"
  rg -F "whole_circuit_sr1cs_sha256: $(sha256_file "$adir/$circuit.sr1cs")" "$artifact" >/dev/null \
    || fail "evidence SR1CS pin is stale for $circuit"
  rg -F "manifest_sha256: $(sha256_file "$adir/$circuit-manifest.json")" "$artifact" >/dev/null \
    || fail "evidence manifest pin is stale for $circuit"
  echo "stamp ok ($circuit; source pins not refreshed in $MODE)"
}

echo "==> stamps (no refresh)"
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  check_stamp "$circuit"
done < <(printf '%s\n' "${FAMILIES[@]}")

echo "==> family evidence closure"
python3 "$ROOT/scripts/gen-note-reshape-family-artifacts.py" --check \
  || fail "generated NoteReshape family evidence is stale"

if [[ "$MODE" == "drift" ]]; then
  echo "lean circuit fv ok (drift): families=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"
  exit 0
fi

proof_sources_changed=0
if ! git diff --quiet -- \
  tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates \
  tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts \
  tools/gnark/lean/gen; then
  proof_sources_changed=1
fi

run_benchmarks() {
  [[ "$proof_sources_changed" -eq 1 || "$MODE" == "release" ]] || return 0
  local candidates first=1 floor_mb=0 floor_source="" floor_output="" target tier
  candidates="$(python3 "$ROOT/tools/gnark/lean/gen/gen_note_reshape_statement_hash_semantics.py" \
    --print-benchmark-candidates)"
  while IFS= read -r target; do
    [[ -z "$target" ]] && continue
    [[ -f "$target" ]] || fail "benchmark candidate missing: $target"
    if [[ "$target" =~ Block[0-9]+\.lean$ || "$target" =~ TStatementHash_[0-9a-f]+\.lean$ ]]; then
      tier=aggregator
    else
      tier=leaf
    fi
    if [[ "$first" -eq 1 ]]; then
      floor_source="$target"
      floor_output="$("$ROOT/scripts/lean-leaf-bench.sh" "$target" import 2>&1)"
      printf '%s\n' "$floor_output"
      floor_mb="$(printf '%s\n' "$floor_output" \
        | awk -F'peak_rss=|MB' '/peak_rss=/{print $2; exit}' | tr -d ' ')"
      [[ "$floor_mb" =~ ^[0-9]+$ ]] || floor_mb=0
      first=0
    fi
    BENCH_IMPORT_FLOOR_MB="$floor_mb" \
    BENCH_IMPORT_FLOOR_SOURCE="$floor_source" \
      "$ROOT/scripts/lean-leaf-bench.sh" "$target" "$tier"
  done <<< "$candidates"
}

echo "==> exact facts, semantic seams, and handwritten canonical-address adapters"
(
  cd "$LEAN_DIR"
  # Exactly one cache fetch per invocation, followed by serial exact-fact and
  # compiler-seam builds.
  lake exe cache get >/dev/null 2>&1 || true
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    lean_build "ShielddGnarkFormal.Deployed.Contracts.$(module_for "$circuit").CircuitFacts"
    lean_build "ShielddGnarkFormal.Deployed.Contracts.$(module_for "$circuit").SemanticSeams"
  done <<< "$selected_circuits"
  lean_build ShielddGnarkFormal.NoteReshapeCanonical
  lean_build ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress2x1
  lean_build ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress1x8
  lean_build ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress4x1
  lean_build ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress8x1
  if grep -qx 'note_reshape2x1' <<< "$selected_circuits"; then
    lean_build ShielddGnarkFormal.Deployed.NoteReshape2x1Refinement
  fi
  if grep -qx 'note_reshape1x8' <<< "$selected_circuits"; then
    lean_build ShielddGnarkFormal.Deployed.NoteReshape1x8Soundness
  fi
  if grep -qx 'note_reshape4x1' <<< "$selected_circuits"; then
    lean_build ShielddGnarkFormal.Deployed.NoteReshape4x1Soundness
  fi
  if grep -qx 'note_reshape8x1' <<< "$selected_circuits"; then
    lean_build ShielddGnarkFormal.Deployed.NoteReshape8x1Soundness
  fi
)

run_benchmarks

echo "==> typed obligation coverage and theorem bindings"
typed_coverage_log="$fresh_dir/typed-constraint-coverage.log"
if ! FV_FRESH_DIR="$fresh_dir" \
  "$ROOT/scripts/check-constraint-coverage.sh" \
    --require-full-deployed --check-typed-bindings \
    $selected_circuits >"$typed_coverage_log" 2>&1; then
  cat "$typed_coverage_log" >&2
  fail "typed obligation coverage or theorem bindings failed"
fi
tail -n 1 "$typed_coverage_log"

echo "==> final theorem axioms"
lean_build oleanAxiomAudit
axiom_args=(
  --lean-dir "$LEAN_DIR"
  --root-module ShielddGnarkFormal.Deployed.PrimeOrderCertificate
  --declaration Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime
  --root-module ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress2x1
  --declaration Shieldd.GnarkFormal.Deployed.NoteReshapeCanonicalAddress2x1.canonicalTransmission_of_exact
  --root-module ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress1x8
  --declaration Shieldd.GnarkFormal.Deployed.NoteReshapeCanonicalAddress1x8.canonicalTransmission_of_exact
  --root-module ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress4x1
  --declaration Shieldd.GnarkFormal.Deployed.NoteReshapeCanonicalAddress4x1.canonicalTransmission_of_exact
  --root-module ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress8x1
  --declaration Shieldd.GnarkFormal.Deployed.NoteReshapeCanonicalAddress8x1.canonicalTransmission_of_exact
)
if grep -qx 'note_reshape2x1' <<< "$selected_circuits"; then
  axiom_args+=(
    --root-module ShielddGnarkFormal.Deployed.NoteReshape2x1Refinement
    --declaration Shieldd.GnarkFormal.Deployed.NoteReshape2x1Refinement.C.deployedRelation_to_circuitFacts
    --declaration Shieldd.GnarkFormal.Deployed.NoteReshape2x1Refinement.C.valid_of_deployedRelation
  )
fi
if grep -qx 'note_reshape1x8' <<< "$selected_circuits"; then
  axiom_args+=(
    --root-module ShielddGnarkFormal.Deployed.NoteReshape1x8Soundness
    --declaration Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C.deployedRelation_to_circuitFacts
    --declaration Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C.valid_of_deployedRelation
  )
fi
if grep -qx 'note_reshape4x1' <<< "$selected_circuits"; then
  axiom_args+=(
    --root-module ShielddGnarkFormal.Deployed.NoteReshape4x1Soundness
    --declaration Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C.deployedRelation_to_circuitFacts
    --declaration Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C.valid_of_deployedRelation
  )
fi
if grep -qx 'note_reshape8x1' <<< "$selected_circuits"; then
  axiom_args+=(
    --root-module ShielddGnarkFormal.Deployed.NoteReshape8x1Soundness
    --declaration Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C.deployedRelation_to_circuitFacts
    --declaration Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C.valid_of_deployedRelation
  )
fi
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  module="$(module_for "$circuit")"
  axiom_args+=(
    --root-module "ShielddGnarkFormal.Deployed.Contracts.$module.CircuitFacts"
    --declaration "Shieldd.GnarkFormal.Deployed.Contracts.$module.${circuit}_deployed_sound"
    --declaration "Shieldd.GnarkFormal.Deployed.Contracts.$module.${circuit}_circuitFacts"
    --root-module "ShielddGnarkFormal.Deployed.Contracts.$module.SemanticSeams"
    --declaration "Shieldd.GnarkFormal.Deployed.Contracts.$module.dtkOutX_eq_transmissionCompressInputX"
    --declaration "Shieldd.GnarkFormal.Deployed.Contracts.$module.dtkOutY_eq_transmissionCompressInputY"
  )
done <<< "$selected_circuits"
python3 "$LEAN_DIR/gen/olean_axiom_audit.py" "${axiom_args[@]}" \
  || fail "axiom audit requires every selected theorem to depend on exactly [propext, Quot.sound]"

if [[ "$MODE" == "release" ]]; then
  echo "==> StructuredLC generated-contract compile"
  structured_log="$fresh_dir/structured-lc-generation.log"
  if ! "$ROOT/scripts/check-structured-lc-generation.sh" \
    >"$structured_log" 2>&1; then
    cat "$structured_log" >&2
    fail "StructuredLC generated-contract compile failed"
  fi
  tail -n 1 "$structured_log"
  echo "==> deployed PK/VK proof receipts and release checks"
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    "$ROOT/scripts/check-vk-derivation.sh" "$circuit" \
      --sr1cs "$fresh_dir/$circuit.sr1cs" \
      --proof-receipt "$fresh_dir/$circuit-proof-receipt.json"
  done <<< "$selected_circuits"
  "$ROOT/scripts/check-soundness-invariants.sh"
fi

echo "lean circuit fv ok ($MODE): families=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"

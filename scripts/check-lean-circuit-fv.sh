#!/usr/bin/env bash
set -euo pipefail

# Incremental NoteReshape FV gate.
#
#   drift   Go compilation, content impact, coverage, generator/inventory
#           checks, and stamp integrity. No Lake command and no proving.
#   typed   drift plus selected Statement closures, typed theorem bindings,
#           obligation coverage, axiom output, and changed-source benchmarks.
#   release typed plus stamp validation, deployed-key prove/verify, negative
#           key-family checks, and release invariants.
#
# The four NoteReshape families are compiled once per invocation into a
# temporary directory. Typed/release builds are serial and target only the
# selected deployed Statement modules. `release all` is the nightly/final
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

fail() {
  echo "check-lean-circuit-fv failed: $*" >&2
  exit 1
}

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/tools/gnark/lean"
GNARK_DIR="$ROOT/tools/gnark"
FAMILIES=(note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8)

select_circuits() {
  if [[ "$#" -eq 0 ]]; then
    printf '%s\n' "${FAMILIES[@]}"
    return
  fi
  for circuit in "$@"; do
    case "$circuit" in
      all) printf '%s\n' "${FAMILIES[@]}" ;;
      note_reshape2x1|note_reshape4x1|note_reshape8x1|note_reshape1x8)
        printf '%s\n' "$circuit" ;;
      *) fail "unsupported family $circuit" ;;
    esac
  done | awk '!seen[$0]++'
}

selected_circuits="$(select_circuits "$@")"
[[ -n "$selected_circuits" ]] || fail "no families selected"

artifact_for() {
  local circuit="$1"
  printf '%s\n' "$ROOT/tools/gnark/artifacts/$circuit"
}

witness_for() {
  local circuit="$1"
  printf '%s/internal/testfixtures/vectors/%s_witness_v1.bin\n' "$GNARK_DIR" "$circuit"
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
trap 'rm -rf "$tmp_dir"' EXIT
fresh_dir="$tmp_dir/compiled"
mkdir -p "$fresh_dir"
export GOCACHE="${GOCACHE:-$tmp_dir/go-cache}"

echo "==> registry parity"
python3 "$GNARK_DIR/check_note_reshape_registry.py"

echo "==> compile all four NoteReshape families once"
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  export_fv_args=()
  if [[ "$MODE" == "release" ]]; then
    export_fv_args=(
      --prove
      --witness "$(witness_for "$circuit")"
      --artifact-dir "$(artifact_for "$circuit")"
    )
  fi
  (
    cd "$GNARK_DIR"
    go run ./cmd/gnarkctl export-fv \
      --circuit "$circuit" \
      --sr1cs-out "$fresh_dir/$circuit.sr1cs" \
      --manifest-out "$fresh_dir/$circuit-manifest.json" \
      ${export_fv_args[@]+"${export_fv_args[@]}"} >/dev/null
  )
done < <(printf '%s\n' "${FAMILIES[@]}")

echo "==> normalized IR, exact coverage, generated contracts"
FV_FRESH_DIR="$fresh_dir" \
  "$ROOT/scripts/check-constraint-coverage.sh" \
  --require-full-deployed \
  $(printf '%s\n' "${FAMILIES[@]}")

echo "==> template inventory"
python3 "$ROOT/tools/gnark/lean/gen/gen_template_inventory.py" \
  --ir "$fresh_dir/note_reshape2x1-deployed-slice-ir.json" \
  "$fresh_dir/note_reshape4x1-deployed-slice-ir.json" \
  "$fresh_dir/note_reshape8x1-deployed-slice-ir.json" \
  "$fresh_dir/note_reshape1x8-deployed-slice-ir.json" \
  --out "$fresh_dir/note-reshape-template-inventory.json" \
  --require-note-reshape >/dev/null

echo "==> content-based impact report"
python3 "$ROOT/scripts/check-note-reshape-impact.py" \
  --fresh-dir "$fresh_dir" \
  --contracts-root "$fresh_dir/contracts" \
  --template-inventory "$fresh_dir/note-reshape-template-inventory.json" \
  --affected $selected_circuits

echo "==> generator unit, drift, and mtime tests"
(
  cd "$ROOT/tools/gnark/lean/gen"
  python3 -m unittest discover -p 'test_*.py'
)

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

echo "==> selected Statement closure"
(
  cd "$LEAN_DIR"
  # Exactly one cache fetch per invocation, followed by serial Statement builds.
  lake exe cache get >/dev/null 2>&1 || true
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    lake build "ShielddGnarkFormal.Deployed.Contracts.$(module_for "$circuit").Statement"
  done <<< "$selected_circuits"
)

run_benchmarks

echo "==> typed obligation coverage and theorem bindings"
FV_FRESH_DIR="$fresh_dir" \
  "$ROOT/scripts/check-constraint-coverage.sh" \
  --require-full-deployed --check-typed-bindings \
  $selected_circuits

echo "==> final theorem axioms"
axioms_file="$tmp_dir/axioms.lean"
{
  echo "import ShielddGnarkFormal.Deployed.PrimeOrderCertificate"
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    echo "import ShielddGnarkFormal.Deployed.Contracts.$(module_for "$circuit").Statement"
  done <<< "$selected_circuits"
  echo "#print axioms Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime"
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    echo "#print axioms Shieldd.GnarkFormal.Deployed.Contracts.$(module_for "$circuit").${circuit}_statement"
  done <<< "$selected_circuits"
} > "$axioms_file"
(
  cd "$LEAN_DIR"
  lake env lean "$axioms_file"
)

if [[ "$MODE" == "release" ]]; then
  echo "==> deployed PK/VK prove-verify and release checks"
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    "$ROOT/scripts/check-vk-derivation.sh" "$circuit" --sr1cs "$fresh_dir/$circuit.sr1cs"
  done <<< "$selected_circuits"
  "$ROOT/scripts/check-soundness-invariants.sh"
  python3 "$ROOT/scripts/gen-note-reshape-family-artifacts.py" --check \
    || fail "generated NoteReshape family evidence is stale; release requires final stamps"
fi

echo "lean circuit fv ok ($MODE): families=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"

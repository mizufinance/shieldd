#!/usr/bin/env bash
set -euo pipefail

# Regenerate the deployed contracts, verify the DTK rows used by the real
# rung-128/rung-224 probes, then benchmark both full StepRel proofs serially.

fail() {
  echo "check-structured-lc-dtk-probes failed: $*" >&2
  exit 1
}

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/tools/gnark/lean"
ARTIFACT_DIR="$ROOT/tools/gnark/artifacts/consolidate2x1"
mkdir -p "$LEAN_DIR/.lake"
TMP="$(mktemp -d "$LEAN_DIR/.lake/structured-lc-dtk-probes.XXXXXX")"
trap 'rm -rf "$TMP"' EXIT

if ! cargo run -q -p shieldd-constraint-coverage -- \
    --manifest "$ARTIFACT_DIR/consolidate2x1-manifest.json" \
    --sr1cs "$ARTIFACT_DIR/consolidate2x1.sr1cs" \
    --lean-contract-out "$TMP/generated" >"$TMP/generate.log" 2>&1; then
  cat "$TMP/generate.log" >&2
  fail "contract generation failed"
fi

seg16="$TMP/generated/Consolidate2x1/Seg16.lean"
[[ -f "$seg16" ]] || fail "generated Seg16 is missing"

required_fragments=(
  'def relationRow4629'
  'runs := [⟨(1 : F), 15543, 13, 128⟩, ⟨(1 : F), 15544, 13, 128⟩]'
  'runs := [⟨(-1 : F), 15543, 13, 128⟩], residual := [((1 : F), 17205)]'
  'def relationRow5951'
  '⟨(1 : F), 15544, 13, 150⟩, ⟨(1 : F), 17494, 14, 74⟩'
  'runs := [⟨(-1 : F), 15543, 13, 150⟩, ⟨(-1 : F), 17494, 14, 74⟩]'
)
for fragment in "${required_fragments[@]}"; do
  rg -Fq "$fragment" "$seg16" || fail "generated Seg16 lacks expected row fragment: $fragment"
done
for row in 4629 4630 4631 4635 4636 5951 5953 5954 5958 5959; do
  if sed -n "/^def relationRow$row /,/^$/p" "$seg16" | rg -q 'relationLc'; then
    fail "critical DTK row $row still references a flat relationLc"
  fi
done

floor_log="$TMP/import-floor.log"
"$ROOT/scripts/lean-leaf-bench.sh" \
  bench/StructuredLCRealRungImport.lean import | tee "$floor_log"
floor_mb="$(sed -n 's/.*peak_rss=\([0-9][0-9]*\)MB.*/\1/p' "$floor_log" | tail -1)"
[[ -n "$floor_mb" ]] || fail "could not read import floor"

for probe in StructuredLCRealRung128 StructuredLCRealRung224; do
  BENCH_IMPORT_FLOOR_MB="$floor_mb" \
  BENCH_IMPORT_FLOOR_SOURCE="$LEAN_DIR/bench/StructuredLCRealRungImport.lean" \
    "$ROOT/scripts/lean-leaf-bench.sh" "bench/$probe.lean" leaf
done

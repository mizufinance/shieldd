#!/usr/bin/env bash
set -euo pipefail

# End-to-end check for the StructuredLC extraction boundary. The Rust unit tests
# validate the in-memory representation and exact renderer text; this check also
# compiles a real generated contract so renderer and Lean syntax cannot drift.

fail() {
  echo "check-structured-lc-generation failed: $*" >&2
  exit 1
}

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

select_structured_candidate() {
  local relations_dir="$1"
  local matches rg_status file filename shard_index

  set +e
  matches="$(rg -l 'StructuredLC\.eval' "$relations_dir" -g '*Defs*.lean')"
  rg_status=$?
  set -e
  [[ "$rg_status" -lt 2 ]] || return "$rg_status"
  [[ -n "$matches" ]] || return 1

  while IFS= read -r file; do
    filename="$(basename "$file" .lean)"
    shard_index="${filename##*Defs}"
    [[ "$shard_index" =~ ^[0-9]+$ ]] || continue
    printf '%s\t%s\t%s\n' \
      "$shard_index" "$(wc -c < "$file" | tr -d ' ')" "$file"
  done <<< "$matches" \
    | LC_ALL=C sort -n -k1,1 -k2,2 -k3,3 \
    | head -1 \
    | cut -f3-
}

if [[ "${1:-}" == "--select-candidate" ]]; then
  [[ "$#" -eq 2 ]] || fail "usage: $0 --select-candidate RELATIONS_DIR"
  candidate="$(select_structured_candidate "$2")" \
    || fail "generator emitted no StructuredLC normalized relation shard"
  printf '%s\n' "$candidate"
  exit 0
fi
[[ "$#" -eq 0 ]] || fail "usage: $0 [--select-candidate RELATIONS_DIR]"

ARTIFACT_DIR="$ROOT/tools/gnark/artifacts/transfer"
mkdir -p "$ROOT/tools/gnark/lean/.lake"
TMP="$(mktemp -d "$ROOT/tools/gnark/lean/.lake/structured-lc-generation.XXXXXX")"
trap 'rm -rf "$TMP"' EXIT

if ! cargo run --release -q -p shieldd-constraint-coverage -- \
    --manifest "$ARTIFACT_DIR/transfer-manifest.json" \
    --sr1cs "$ARTIFACT_DIR/transfer.sr1cs" \
    --template-registry "$ROOT/tools/gnark/artifacts/proof-template-registry.json" \
    --lean-template-out "$TMP/generated" >"$TMP/generate.log" 2>&1; then
  cat "$TMP/generate.log" >&2
  fail "normalized relation generation failed"
fi

candidate="$(select_structured_candidate "$TMP/generated/Relations")" \
  || fail "generator emitted no StructuredLC normalized relation shard"

[[ -n "$candidate" && -f "$candidate" ]] \
  || fail "generator emitted no StructuredLC normalized relation shard"
rg -q '^set_option maxHeartbeats [1-9][0-9]*$' "$candidate" \
  || fail "generated contract does not have finite positive heartbeats: $candidate"
if rg -q '^set_option maxHeartbeats 0$' "$candidate"; then
  fail "generated contract has unbounded heartbeats: $candidate"
fi

echo "generated_contract=$candidate"

# Split normalized relations import their generated template base module.
# Compile that base into an isolated overlay first; otherwise this check can
# accidentally use a committed sibling or fail merely because the fresh module
# is not on `LEAN_PATH`.
candidate_name="$(basename "$candidate" .lean)"
segment_stem="${candidate_name%%Defs*}"
candidate_index="${candidate_name#${segment_stem}Defs}"
[[ "$candidate_index" =~ ^[0-9]+$ ]] \
  || fail "generated StructuredLC candidate has no shard index: $candidate"
base="$TMP/generated/Relations/${segment_stem}Base.lean"
[[ -f "$base" ]] || fail "generated StructuredLC relation lacks base module: $base"
overlay="$TMP/olean"
base_olean="$overlay/ShielddGnarkFormal/Deployed/Templates/Relations/${segment_stem}Base.olean"

# Lean resolves the `ShielddGnarkFormal` package at the first matching search
# root, so the overlay must also expose the two non-family modules imported by
# the generated base. Keep this overlay minimal and read-only.
mkdir -p "$overlay/ShielddGnarkFormal/Deployed"
ln -s "$ROOT/tools/gnark/lean/.lake/build/lib/ShielddGnarkFormal/Deployed/Contract.olean" \
  "$overlay/ShielddGnarkFormal/Deployed/Contract.olean"
ln -s "$ROOT/tools/gnark/lean/.lake/build/lib/ShielddGnarkFormal/StructuredLC.olean" \
  "$overlay/ShielddGnarkFormal/StructuredLC.olean"

BENCH_LEAN_PATH_PREPEND="$overlay" BENCH_OLEAN_OUT="$base_olean" \
  "$ROOT/scripts/lean-leaf-bench.sh" "$base" contract

# A definition shard imports its immediate predecessor. Compile the shortest
# fresh chain through the first shard that actually evaluates StructuredLC so
# this gate cannot fall back to a committed sibling `.olean`.
shard_index=0
while [[ "$shard_index" -le "$candidate_index" ]]; do
  shard="$TMP/generated/Relations/${segment_stem}Defs${shard_index}.lean"
  [[ -f "$shard" ]] || fail "generated StructuredLC shard chain is incomplete: $shard"
  shard_olean="$overlay/ShielddGnarkFormal/Deployed/Templates/Relations/${segment_stem}Defs${shard_index}.olean"
  BENCH_LEAN_PATH_PREPEND="$overlay" BENCH_OLEAN_OUT="$shard_olean" \
    "$ROOT/scripts/lean-leaf-bench.sh" "$shard" contract
  ((shard_index += 1))
done

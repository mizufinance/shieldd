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
ARTIFACT_DIR="$ROOT/tools/gnark/artifacts/transfer"
mkdir -p "$ROOT/tools/gnark/lean/.lake"
TMP="$(mktemp -d "$ROOT/tools/gnark/lean/.lake/structured-lc-generation.XXXXXX")"
trap 'rm -rf "$TMP"' EXIT

if ! cargo run --release -q -p shieldd-constraint-coverage -- \
    --manifest "$ARTIFACT_DIR/transfer-manifest.json" \
    --sr1cs "$ARTIFACT_DIR/transfer.sr1cs" \
    --template-registry "$ROOT/tools/gnark/artifacts/proof-template-registry.json" \
    --lean-contract-out "$TMP/generated" >"$TMP/generate.log" 2>&1; then
  cat "$TMP/generate.log" >&2
  fail "contract generation failed"
fi

candidate="$({
  rg -l 'StructuredLC\.eval' "$TMP/generated" -g 'Seg*.lean' \
    | while IFS= read -r file; do
        printf '%s\t%s\n' "$(wc -c < "$file" | tr -d ' ')" "$file"
      done
} | sort -n | head -1 | cut -f2-)"

[[ -n "$candidate" && -f "$candidate" ]] \
  || fail "generator emitted no StructuredLC contract"
rg -q '^set_option maxHeartbeats [1-9][0-9]*$' "$candidate" \
  || fail "generated contract does not have finite positive heartbeats: $candidate"
if rg -q '^set_option maxHeartbeats 0$' "$candidate"; then
  fail "generated contract has unbounded heartbeats: $candidate"
fi

echo "generated_contract=$candidate"

# Split contracts import their generated `SegNBase` module. Compile that base
# into an isolated overlay first; otherwise this check can accidentally use a
# committed sibling or fail merely because the fresh module is not on
# `LEAN_PATH`.
candidate_name="$(basename "$candidate" .lean)"
segment_stem="${candidate_name%%Defs*}"
base="$TMP/generated/Transfer/${segment_stem}Base.lean"
[[ -f "$base" ]] || fail "generated StructuredLC contract lacks base module: $base"
overlay="$TMP/olean"
specs="$TMP/Specs.lean"
specs_olean="$overlay/ShielddGnarkFormal/Deployed/Contracts/Transfer/Specs.olean"
base_olean="$overlay/ShielddGnarkFormal/Deployed/Contracts/Transfer/${segment_stem}Base.olean"

# Lean resolves the `ShielddGnarkFormal` package at the first matching search
# root, so the overlay must also expose the two non-family modules imported by
# the generated base. Keep this overlay minimal and read-only.
mkdir -p "$overlay/ShielddGnarkFormal/Deployed"
ln -s "$ROOT/tools/gnark/lean/.lake/build/lib/ShielddGnarkFormal/Deployed/Contract.olean" \
  "$overlay/ShielddGnarkFormal/Deployed/Contract.olean"
ln -s "$ROOT/tools/gnark/lean/.lake/build/lib/ShielddGnarkFormal/StructuredLC.olean" \
  "$overlay/ShielddGnarkFormal/StructuredLC.olean"

# The generic contract renderer imports the hand-authored family `Specs`
# module, but split relation definition chunks do not use any endpoint symbol.
# This syntax gate deliberately supplies only that empty namespace: endpoint
# coverage is checked by the deployed contract gate, while this check remains
# independent of a committed Transfer Specs artifact.
printf '%s\n' \
  'namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Specs' \
  'end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Specs' >"$specs"
BENCH_OLEAN_OUT="$specs_olean" \
  "$ROOT/scripts/lean-leaf-bench.sh" "$specs" contract
BENCH_LEAN_PATH_PREPEND="$overlay" BENCH_OLEAN_OUT="$base_olean" \
  "$ROOT/scripts/lean-leaf-bench.sh" "$base" contract
BENCH_LEAN_PATH_PREPEND="$overlay" \
  "$ROOT/scripts/lean-leaf-bench.sh" "$candidate" contract

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
ARTIFACT_DIR="$ROOT/tools/gnark/artifacts/consolidate2x1"
mkdir -p "$ROOT/tools/gnark/lean/.lake"
TMP="$(mktemp -d "$ROOT/tools/gnark/lean/.lake/structured-lc-generation.XXXXXX")"
trap 'rm -rf "$TMP"' EXIT

if ! cargo run -q -p shieldd-constraint-coverage -- \
    --manifest "$ARTIFACT_DIR/consolidate2x1-manifest.json" \
    --sr1cs "$ARTIFACT_DIR/consolidate2x1.sr1cs" \
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
"$ROOT/scripts/lean-leaf-bench.sh" "$candidate" contract

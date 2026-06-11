#!/usr/bin/env bash
# Poseidon377 cross-implementation parity:
#   gnark/Go ground truth  ==  Lean ZMod-P spec  (on phase05_vectors.json vectors)
#
# 1. Regenerate Vectors.lean from phase05_vectors.json and assert it matches the
#    committed file (constants + Go-native expected outputs are in sync).
# 2. lake build the Vectors module: the embedded `#guard`s evaluate the Lean
#    Poseidon377 permutation in-kernel and compare against the Go-native outputs
#    that gnarkctl baked in. A drift fails the build.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

VECTORS="tools/gnark/lean/ShielddGnarkFormal/Poseidon377/Vectors.lean"

fail() {
  echo "poseidon377 parity failed: $*" >&2
  exit 1
}

echo "==> regenerating ${VECTORS} from phase05_vectors.json"
tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT
( cd tools/gnark && go run ./cmd/gnarkctl export-poseidon-lean --out "$tmp" )

if ! diff -u "$VECTORS" "$tmp" >/dev/null; then
  echo "--- committed vs regenerated ---" >&2
  diff -u "$VECTORS" "$tmp" >&2 || true
  fail "generated Vectors.lean is stale; re-run export-poseidon-lean and commit"
fi
echo "    generated artifact in sync"

echo "==> lake build (evaluates Lean #guard parity vs Go-native outputs)"
( cd tools/gnark/lean && lake build ShielddGnarkFormal.Poseidon377.Vectors )

echo "poseidon377 parity ok (gnark/Go == Lean)"

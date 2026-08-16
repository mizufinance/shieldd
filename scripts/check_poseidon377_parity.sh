#!/usr/bin/env bash
# Poseidon377 cross-implementation parity:
#   gnark/Go ground truth  ==  Lean ZMod-P spec  (on phase05_vectors.json vectors)
#
# 1. Regenerate the fixed-rate hashes and Vectors.lean from
#    phase05_vectors.json and assert they match the committed modules.
# 2. Build Vectors: its guards evaluate the protocol-owned fixed-rate hashes
#    in-kernel and compare them with Go-native outputs.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
MODE="${1:-full}"
case "$MODE" in
  vectors|full) ;;
  *)
    echo "usage: $(basename "$0") [vectors|full]" >&2
    exit 2
    ;;
esac
export LEAN_NUM_THREADS="${LEAN_NUM_THREADS:-1}"

VECTORS="tools/gnark/lean/ShielddGnarkFormal/Poseidon377/Vectors.lean"
FIXED_DIR="tools/gnark/lean/ShielddGnarkFormal/Poseidon377"

fail() {
  echo "poseidon377 parity failed: $*" >&2
  exit 1
}

echo "==> regenerating canonical Lean Poseidon377 modules"
tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT
generator_log="$tmp_dir/export-poseidon-lean.log"
if ! ( cd tools/gnark && go run ./cmd/gnarkctl export-poseidon-lean \
    --out "$tmp_dir/Vectors.lean" \
    --fixed-out-dir "$tmp_dir/fixed" ) >"$generator_log" 2>&1; then
  cat "$generator_log" >&2
  fail "Go-to-Lean generator failed"
fi

if ! diff -u "$VECTORS" "$tmp_dir/Vectors.lean" >/dev/null; then
  echo "--- committed vs regenerated ---" >&2
  diff -u "$VECTORS" "$tmp_dir/Vectors.lean" >&2 || true
  fail "generated Vectors.lean is stale; re-run export-poseidon-lean and commit"
fi
for rate in 1 2 3 4 5 6 7; do
  fixed="$FIXED_DIR/Fixed${rate}.lean"
  generated="$tmp_dir/fixed/Fixed${rate}.lean"
  if ! diff -u "$fixed" "$generated" >/dev/null; then
    echo "--- committed vs regenerated ---" >&2
    diff -u "$fixed" "$generated" >&2 || true
    fail "generated Fixed${rate}.lean is stale; re-run export-poseidon-lean and commit"
  fi
done
echo "    generated artifact in sync"

if [[ "$MODE" == "vectors" ]]; then
  echo "poseidon377 vector parity ok (gnark/Go artifact == committed Lean vectors)"
  exit 0
fi

echo "==> lake build (evaluates Lean #guard parity vs Go-native outputs)"
( cd tools/gnark/lean && LEAN_NUM_THREADS=1 lake build ShielddGnarkFormal.Poseidon377.Vectors )

echo "poseidon377 parity ok (gnark/Go == Lean)"

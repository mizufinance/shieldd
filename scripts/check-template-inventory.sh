#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK="$ROOT/tools/gnark"
GEN="$ROOT/tools/gnark/lean/gen/gen_template_inventory.py"
EXPECTED="$GNARK/artifacts/note-reshape-template-inventory.json"
REGISTRY="$GNARK/artifacts/proof-template-registry.json"

fail() {
  echo "template inventory check failed: $*" >&2
  exit 1
}

python3 "$GNARK/check_gnark_family_registries.py" >/dev/null
tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

circuits=(note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8)
irs=()
for circuit in "${circuits[@]}"; do
  manifest="$GNARK/artifacts/$circuit/$circuit-manifest.json"
  sr1cs="$GNARK/artifacts/$circuit/$circuit.sr1cs"
  ir="$tmp_dir/$circuit.json"
  (
    cd "$ROOT"
    cargo run --release -q -p shieldd-constraint-coverage -- \
      --manifest "$manifest" \
      --sr1cs "$sr1cs" \
      --template-registry "$REGISTRY" \
      --ir-out "$ir"
  )
  irs+=("$ir")
done

fresh="$tmp_dir/note-reshape-template-inventory.json"
python3 "$GEN" --ir "${irs[@]}" --out "$fresh" --require-note-reshape
[[ -f "$EXPECTED" ]] || fail "missing committed inventory $EXPECTED"
if ! cmp -s "$EXPECTED" "$fresh"; then
  diff -u "$EXPECTED" "$fresh" >&2 || true
  fail "normalized template inventory drifted"
fi
echo "template inventory ok: $(jq -r '.template_count' "$fresh") templates, $(jq -r '.constraint_segment_count' "$fresh") instances"

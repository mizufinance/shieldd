#!/usr/bin/env bash
set -euo pipefail

# Manifest-pin tripwire: recompile each circuit's R1CS from source and assert the
# freshly compiled `sr1cs_sha256_hex` is byte-identical to the committed gnark
# constraint manifest. A mismatch means the circuit changed without the pinned
# manifest (and therefore the Lean/coverage proofs bound to it) being regenerated
# — i.e. the deployed artifact would no longer be the proved artifact. Fails closed.
#
# This is the `.sr1cs` companion to the coverage `relation_sha256_hex` tripwire in
# scripts/check-constraint-coverage.sh (which recomputes the per-segment relation
# hashes via the Rust extractor). Both are cheap, deterministic, and lake-free.
#
# Usage:
#   scripts/check-manifest-pin.sh                 # both circuits
#   scripts/check-manifest-pin.sh consolidate2x1  # one circuit

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"

fail() {
  echo "manifest pin check failed: $*" >&2
  exit 1
}

select_circuits() {
  if [[ "$#" -eq 0 ]]; then
    printf '%s\n' consolidate2x1 transfer
    return
  fi
  for c in "$@"; do
    case "$c" in
      all) printf '%s\n' consolidate2x1 transfer ;;
      consolidate2x1|transfer) printf '%s\n' "$c" ;;
      *) fail "unsupported circuit $c" ;;
    esac
  done | awk '!seen[$0]++'
}

json_field() {
  # json_field <file> <top-level-string-key>
  python3 -c "import json,sys; print(json.load(open(sys.argv[1]))[sys.argv[2]])" "$1" "$2"
}

command -v go >/dev/null 2>&1 || fail "go toolchain not found"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

circuits="$(select_circuits "$@")"

while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue

  committed="$GNARK_DIR/artifacts/$circuit/$circuit-manifest.json"
  [[ -f "$committed" ]] || fail "$circuit: missing committed manifest $committed"

  sr1cs="$tmp_dir/$circuit.sr1cs"
  fresh="$tmp_dir/$circuit-manifest.json"

  (
    cd "$GNARK_DIR"
    go run ./cmd/gnarkctl export-r1cs --circuit "$circuit" --out "$sr1cs" >/dev/null
    go run ./cmd/gnarkctl export-manifest --circuit "$circuit" --sr1cs "$sr1cs" --out "$fresh" >/dev/null
  )

  want="$(json_field "$committed" sr1cs_sha256_hex)"
  have="$(json_field "$fresh" sr1cs_sha256_hex)"
  [[ -n "$want" ]] || fail "$circuit: committed manifest has no sr1cs_sha256_hex"

  if [[ "$want" != "$have" ]]; then
    fail "$circuit: recompiled sr1cs_sha256_hex $have != committed $want (circuit changed without re-pinning the manifest)"
  fi

  echo "manifest pin ok ($circuit): sr1cs_sha256_hex=$have"
done < <(printf '%s\n' "$circuits")

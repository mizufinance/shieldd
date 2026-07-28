#!/usr/bin/env bash
set -euo pipefail

# Manifest-pin tripwire: recompile each circuit's R1CS from source and assert the
# freshly compiled SR1CS and semantic segment manifest are byte-identical to the
# committed artifacts. Comparing only `sr1cs_sha256_hex` is insufficient: an op,
# port, or segment-boundary trace can drift without changing a constraint row.
#
# This is the `.sr1cs` companion to the coverage `relation_sha256_hex` tripwire in
# scripts/check-constraint-coverage.sh (which recomputes the per-segment relation
# hashes via the Rust extractor). Both are cheap, deterministic, and lake-free.
#
# Usage:
#   scripts/check-manifest-pin.sh                 # all deployed circuits
#   scripts/check-manifest-pin.sh note_reshape2x1  # one circuit

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"

fail() {
  echo "manifest pin check failed: $*" >&2
  exit 1
}

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
    selected=(note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8 transfer)
    printf '%s\n' "${selected[@]}"
    return
  fi
  for c in "$@"; do
    case "$c" in
      all)
        for candidate in note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8 transfer; do
          add_circuit "$candidate"
        done
        ;;
      note_reshape2x1|note_reshape4x1|note_reshape8x1|note_reshape1x8|transfer)
        add_circuit "$c"
        ;;
      *) fail "unsupported circuit $c" ;;
    esac
  done
  printf '%s\n' "${selected[@]}"
}

json_field() {
  # json_field <file> <top-level-string-key>
  python3 -c "import json,sys; print(json.load(open(sys.argv[1]))[sys.argv[2]])" "$1" "$2"
}

command -v go >/dev/null 2>&1 || fail "go toolchain not found"
python3 "$GNARK_DIR/check_note_reshape_registry.py"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

circuits="$(select_circuits "$@")"

while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue

  committed="$GNARK_DIR/artifacts/$circuit/$circuit-manifest.json"
  [[ -f "$committed" ]] || fail "$circuit: missing committed manifest $committed"

  sr1cs="$tmp_dir/$circuit.sr1cs"
  fresh="$tmp_dir/$circuit-manifest.json"

  if [[ "$circuit" == "transfer" ]]; then
    (
      cd "$GNARK_DIR"
      go run ./cmd/gnarkctl export-r1cs \
        --circuit "$circuit" --format picus --out "$sr1cs" >/dev/null
      go run ./cmd/gnarkctl export-manifest \
        --circuit "$circuit" --sr1cs "$sr1cs" --out "$fresh" >/dev/null
    )
  else
    (
      cd "$GNARK_DIR"
      go run ./cmd/gnarkctl export-fv \
        --circuit "$circuit" \
        --sr1cs-out "$sr1cs" \
        --manifest-out "$fresh" >/dev/null
    )
  fi

  want="$(json_field "$committed" sr1cs_sha256_hex)"
  have="$(json_field "$fresh" sr1cs_sha256_hex)"
  [[ -n "$want" ]] || fail "$circuit: committed manifest has no sr1cs_sha256_hex"

  if [[ "$want" != "$have" ]]; then
    fail "$circuit: recompiled sr1cs_sha256_hex $have != committed $want (circuit changed without re-pinning the manifest)"
  fi
  if ! cmp -s "$fresh" "$committed"; then
    diff -u "$committed" "$fresh" >&2 || true
    fail "$circuit: freshly compiled semantic constraint manifest differs from committed manifest"
  fi

  echo "manifest pin ok ($circuit): exact manifest, sr1cs_sha256_hex=$have"
done < <(printf '%s\n' "$circuits")

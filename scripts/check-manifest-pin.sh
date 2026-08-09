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
#   scripts/check-manifest-pin.sh                 # all FV profiles
#   scripts/check-manifest-pin.sh note_reshape8x1  # one profile
#   scripts/check-manifest-pin.sh --status candidate

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"

fail() {
  echo "manifest pin check failed: $*" >&2
  exit 1
}

json_field() {
  # json_field <file> <top-level-string-key>
  python3 "$ROOT/scripts/fv-json-field.py" "$1" "$2"
}

command -v go >/dev/null 2>&1 || fail "go toolchain not found"
python3 "$GNARK_DIR/check_gnark_family_registries.py"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

profile_args=("$@")
if [[ "${#profile_args[@]}" -eq 0 ]]; then
  profile_args=(all)
fi
profiles=()
while IFS= read -r row; do
  [[ -n "$row" ]] && profiles+=("$row")
done < <(
  python3 "$ROOT/scripts/check-fv-profiles.py" --emit-tsv "${profile_args[@]}"
)
[[ "${#profiles[@]}" -gt 0 ]] || fail "no profiles selected"

for row in "${profiles[@]}"; do
  IFS=$'\t' read -r \
    circuit _status _kind _n_in _n_out \
    _witness_rel artifact_rel manifest_rel _witness_version <<< "$row"

  committed="$GNARK_DIR/$manifest_rel"
  artifact_dir="$GNARK_DIR/$artifact_rel"
  [[ -f "$committed" ]] || fail "$circuit: missing committed manifest $committed"
  [[ -f "$artifact_dir/$circuit.sr1cs" ]] \
    || fail "$circuit: missing committed SR1CS $artifact_dir/$circuit.sr1cs"

  sr1cs="$tmp_dir/$circuit.sr1cs"
  fresh="$tmp_dir/$circuit-manifest.json"

  (
    cd "$GNARK_DIR"
    go run ./cmd/gnarkctl export-fv \
      --circuit "$circuit" \
      --sr1cs-out "$sr1cs" \
      --manifest-out "$fresh" >/dev/null
  )

  want="$(json_field "$committed" sr1cs_sha256_hex)"
  have="$(json_field "$fresh" sr1cs_sha256_hex)"
  [[ -n "$want" ]] || fail "$circuit: committed manifest has no sr1cs_sha256_hex"

  cmp -s "$sr1cs" "$artifact_dir/$circuit.sr1cs" \
    || fail "$circuit: freshly compiled SR1CS differs from committed bytes"
  if [[ "$want" != "$have" ]]; then
    fail "$circuit: recompiled sr1cs_sha256_hex $have != committed $want (circuit changed without re-pinning the manifest)"
  fi
  if ! cmp -s "$fresh" "$committed"; then
    diff -u "$committed" "$fresh" >&2 || true
    fail "$circuit: freshly compiled semantic constraint manifest differs from committed manifest"
  fi

  echo "manifest pin ok ($circuit): exact manifest, sr1cs_sha256_hex=$have"
done

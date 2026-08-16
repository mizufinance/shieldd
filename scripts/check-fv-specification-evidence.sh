#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT
export GOCACHE="${GOCACHE:-$tmp_dir/go-cache}"

nonce="$(python3 -c 'import secrets; print(secrets.token_hex(32))')"
receipt="$tmp_dir/fv-specification-test-receipt.json"

# Catch extractor/golden drift before the much slower exact Rust inventory.
# The mapped extractor tests still run below and remain receipt-bound evidence.
go -C "$ROOT/tools/gnark/third_party/gnark-lean-extractor" test ./...

python3 "$ROOT/scripts/gen_fv_specification_matrix.py" --check
python3 "$ROOT/scripts/run-fv-specification-tests.py" \
  --nonce "$nonce" \
  --receipt "$receipt"
python3 "$ROOT/scripts/check-fv-specification-completeness.py" \
  --test-receipt "$receipt" \
  --test-receipt-nonce "$nonce"

python3 - "$receipt" <<'PY'
import hashlib
import sys
from pathlib import Path

path = Path(sys.argv[1])
print(
    "FV specification execution receipt sha256="
    + hashlib.sha256(path.read_bytes()).hexdigest()
)
PY

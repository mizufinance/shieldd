#!/usr/bin/env bash
set -euo pipefail

# Regression gate for signed coefficients in gnark's SR1CS text form. Before
# this fixture existed, TERM_RE silently dropped negative terms: the first two
# distinct rows below appeared identical and their two wires disappeared from
# the dead-output census.

fail() { echo "check-fv-census failed: $*" >&2; exit 1; }

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
FIX="$ROOT/scripts/fixtures/fv-census"
OUT="$(mktemp)"
trap 'rm -f "$OUT"' EXIT

python3 "$ROOT/scripts/fv-census.py" \
  "$FIX/signed-coefficients.sr1cs" \
  "$FIX/signed-coefficients-manifest.json" >"$OUT"

grep -q '=> 1 deletable duplicate rows' "$OUT" \
  || fail "signed terms collapsed distinct rows into a false duplicate"
grep -q 'write-only wires (dead-output candidates): 2' "$OUT" \
  || fail "signed-term wires were omitted from the use census"

echo "check-fv-census OK"

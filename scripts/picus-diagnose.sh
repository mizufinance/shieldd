#!/usr/bin/env bash
set -euo pipefail

# Per-gadget Picus diagnostic. NOT part of any gate — a development aid for
# turning `undischarged` gadgets `safe`. Exports the gadget's .sr1cs, runs Picus
# in DEBUG mode, and prints the signals Picus could not pin down (the "final
# unknown set"). That unknown set is what drives precondition authoring: each
# stuck signal maps to a wire in the .sr1cs whose uniqueness needs an algebraic
# side-condition (e.g. an Edwards denominator != 0).
#
# Usage:
#   scripts/picus-diagnose.sh <gadget> [precondition.json]
# Env:
#   PICUS_BIN     path to run-picus (required if picus not on PATH)
#   PICUS_SOLVER  cvc5 (default; needs --cocoa build) | z3
#   PICUS_TIMEOUT_MS  per-SMT-query timeout (default 30000)
#   PICUS_SAFETY  weak (default) | strong

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

gadget="${1:?usage: picus-diagnose.sh <gadget> [precondition.json]}"
precond="${2:-}"

PICUS="${PICUS_BIN:-picus}"
PICUS_SOLVER="${PICUS_SOLVER:-cvc5}"
PICUS_SAFETY="${PICUS_SAFETY:-weak}"

WORK_DIR="crates/core/component/shielded-pool/formal/.generated/constraints"
mkdir -p "$WORK_DIR"
sr1cs="$WORK_DIR/$gadget.sr1cs"

echo "== exporting $gadget .sr1cs =="
( cd tools/gnark && go run ./cmd/gnarkctl export-r1cs --circuit "$gadget" --out "$ROOT/$sr1cs" )
echo "-- sr1cs in/out roles --"
grep -E '^\((in|out) ' "$sr1cs" || true

flags=(--solver "$PICUS_SOLVER" --timeout "${PICUS_TIMEOUT_MS:-30000}" --log-level DEBUG)
[ "$PICUS_SAFETY" = "strong" ] && flags+=(--strong)
if [ -n "$precond" ]; then
  flags+=(--precondition "$precond")
  echo "-- precondition: $precond --"
fi

echo "== running Picus (DEBUG) =="
out="$WORK_DIR/$gadget.diagnose.txt"
perl -e 'alarm shift; exec @ARGV' "${PICUS_TOTAL_TIMEOUT_SECONDS:-180}" \
  "$PICUS" "${flags[@]}" "$sr1cs" >"$out" 2>&1 || true

echo "-- targets / known / unknown / verdict --"
grep -iE "targets:|known_size|final unknown set|uniqueness:|properly constrained|cannot determine" "$out" || tail -5 "$out"
echo "(full log: $out)"

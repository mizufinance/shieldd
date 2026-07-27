#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT/scripts/lib/fail-closed-rg.sh"
SEMANTICS="$ROOT/tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean"
PROTOCOL_DIR="$ROOT/tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape"
GENERATOR_DIR="$ROOT/tools/gnark/lean/gen"
PIN="$ROOT/tools/gnark/lean/note-reshape-semantics.sha256"

fail() {
  echo "note-reshape specification independence: $*" >&2
  exit 1
}

[[ -f "$SEMANTICS" && -f "$PIN" ]] || fail "missing semantic source or digest pin"

reject_rg_matches "protocol import independence" \
  -n '^import ShielddGnarkFormal\.(Deployed|Generated|Extracted)' "$PROTOCOL_DIR" \
  || fail "protocol semantics/refinement imports circuit-owned modules or the search failed"
reject_rg_matches "protocol representation independence" \
  -n '(wireSeating|wire index|manifest|sr1cs|trace)' "$SEMANTICS" \
  || fail "protocol semantics mentions a circuit-owned representation or the search failed"
reject_rg_matches "generator ownership boundary" \
  -n --glob '*.py' 'Protocol/NoteReshape|Protocol\.NoteReshape' \
  "$GENERATOR_DIR" "$ROOT/scripts" \
  || fail "generators may not own protocol-semantic modules or the search failed"
reject_rg_matches "generated statement boundary" \
  -n --glob '*.py' '(Statement\.lean|StatementSpec|Statement \()' \
  "$GENERATOR_DIR" "$ROOT/scripts" \
  || fail "generated family contracts must expose exact CircuitFacts, not protocol statements, or the search failed"

want="$(tr -d '[:space:]' < "$PIN")"
have="$(shasum -a 256 "$SEMANTICS" | awk '{print $1}')"
[[ "$want" == "$have" ]] \
  || fail "semantic spec digest changed (review and update $PIN deliberately)"

echo "note-reshape specification independence ok"

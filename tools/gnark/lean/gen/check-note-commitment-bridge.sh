#!/usr/bin/env bash
# Verification harness for the deployed note_commitment semantic bridge.
#
#   (1) regeneration-diff: the in-tree generator must reproduce the committed
#       NoteCommitment round modules + RawRelationSemanticBridge byte-identically
#       (idempotent — the committed files ARE its output).
#   (2) independent negative mutation: perturbing one constant in the *extracted
#       deployed relation* (deployed side only; the permSpec6 spec + its round
#       constants live in separate spec modules and are left untouched) must make
#       the route-B bridge fail to typecheck. Proves the link actually pins the
#       deployed relation to the spec rather than vacuously compiling.
set -euo pipefail

LEAN_DIR="$(cd "$(dirname "$0")/.." && pwd)"
GEN_DIR="$LEAN_DIR/gen"
NC_DIR="$LEAN_DIR/ShielddGnarkFormal/Deployed/NoteCommitment"
EXTRACTED="$LEAN_DIR/ShielddGnarkFormal/Extracted/Deployed/GadgetNoteCommitmentWithOutput431_7f228e.lean"
BRIDGE_TARGET="ShielddGnarkFormal.Deployed.NoteCommitmentSemanticBridge"

fail() { echo "FAIL: $*" >&2; exit 1; }

echo "== (1) regeneration-diff =="
SNAP="$(mktemp -d)"
cp "$NC_DIR"/*.lean "$SNAP"/
python3 "$GEN_DIR/gen_note_commitment_semantic.py" >/dev/null
DIFF=0
for f in "$SNAP"/*.lean; do
  b="$(basename "$f")"
  if ! diff -q "$f" "$NC_DIR/$b" >/dev/null 2>&1; then
    echo "  regen differs from committed: $b"; DIFF=1
  fi
done
rm -rf "$SNAP"
[ "$DIFF" -eq 0 ] || fail "generator is not idempotent against committed sources"
echo "  generator reproduces committed round modules + bridge byte-identically"

echo "== (2) independent negative mutation bite =="
BAK="$(mktemp)"
cp "$EXTRACTED" "$BAK"
restore() { cp "$BAK" "$EXTRACTED"; rm -f "$BAK"; }
trap restore EXIT
# perturb the round-0 input constant in the extracted deployed relation (seg0),
# last digit 251 -> 252; permSpec6 + spec round-constant tables are untouched.
perl -0pi -e 's/4218970795463228197327790213244921451375713052676530804173314273248521302251/4218970795463228197327790213244921451375713052676530804173314273248521302252/' "$EXTRACTED"
grep -q 4218970795463228197327790213244921451375713052676530804173314273248521302252 "$EXTRACTED" \
  || fail "mutation did not apply"
if (cd "$LEAN_DIR" && lake build "$BRIDGE_TARGET") >/dev/null 2>&1; then
  fail "bridge STILL compiled under a corrupted deployed relation — link is vacuous"
fi
echo "  corrupted deployed relation correctly rejected by the bridge"
restore; trap - EXIT
echo "== rebuilding clean to confirm restore =="
(cd "$LEAN_DIR" && lake build "$BRIDGE_TARGET") >/dev/null 2>&1 || fail "clean rebuild failed after restore"
echo "ALL CHECKS PASSED"

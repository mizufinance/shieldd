#!/usr/bin/env bash
set -euo pipefail

# Gate both the extractor prelude and every committed extracted module. A
# missing budget or Lean's unbounded `maxHeartbeats 0` form fails closed.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT/scripts/lib/fail-closed-rg.sh"
EXTRACTED="$ROOT/tools/gnark/lean/ShielddGnarkFormal/Extracted"

fail() {
  echo "extracted Lean heartbeat check failed: $*" >&2
  exit 1
}

reject_rg_matches "unbounded extracted heartbeat budget" \
  -n 'set_option[[:space:]]+maxHeartbeats[[:space:]]+0([[:space:]]|$)' "$EXTRACTED" \
  || fail "an extracted module has an unbounded heartbeat budget or the search failed"

checked=0
while IFS= read -r -d '' module; do
  rg -q '^set_option maxHeartbeats [1-9][0-9]*$' "$module" \
    || fail "${module#"$ROOT/"} does not declare a finite positive heartbeat budget"
  checked=$((checked + 1))
done < <(find "$EXTRACTED" -type f -name '*.lean' -print0)
(( checked > 0 )) || fail "no committed extracted Lean modules were found"

go -C "$ROOT/tools/gnark/third_party/gnark-lean-extractor" \
  test ./extractor -run '^TestExportPreludeUsesFiniteHeartbeats$' -count=1

echo "check-extracted-lean-heartbeats OK ($checked committed modules)"

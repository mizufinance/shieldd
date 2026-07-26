#!/usr/bin/env bash
set -euo pipefail

# Non-Lake gate for future output from the source shared by every gnark-extractor
# Lean module. The focused Go test exercises the actual prelude renderer and
# rejects both a missing finite budget and the unbounded `maxHeartbeats 0` form.
# Historical committed modules are hash-gated and are not rewritten here.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

go -C "$ROOT/tools/gnark/third_party/gnark-lean-extractor" \
  test ./extractor -run '^TestExportPreludeUsesFiniteHeartbeats$' -count=1

echo "check-extracted-lean-heartbeats OK"

#!/usr/bin/env bash
set -euo pipefail

# CI gate for the emitted-Lean semantic anti-pattern linter
# (scripts/lint-emitted-lean.py). Two parts:
#
#   1. Self-test: the linter MUST fail (exit 2) on the deliberately-bad fixture
#      and pass (exit 0) on the good fixture. This proves the rules still fire,
#      independent of any generator state.
#   2. Live check: freshly generate the StructuredLC Rust contracts and assert
#      the linter's hard-fail rules PASS on them (current green generation must
#      not contain a fuel-unroll / wide-carried-rcases / >8-arm-match).
#
# The obsolete per-deployment adapter trees have been removed. This live probe
# checks freshly generated seated contracts; normalized provider sources are
# covered by the emitted-source heartbeat/census gates in the outer FV driver.

fail() { echo "check-structured-lc-lint failed: $*" >&2; exit 1; }

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LINT="$ROOT/scripts/lint-emitted-lean.py"
FIX="$ROOT/scripts/fixtures/lean-lint"

# --- 1. self-test on fixtures -------------------------------------------------
if python3 "$LINT" "$FIX/bad.lean" >/dev/null 2>&1; then
  fail "linter did NOT flag the bad fixture (rules regressed)"
fi
python3 "$LINT" "$FIX/bad.lean" || true   # show findings
echo "self-test: bad fixture correctly rejected"

python3 "$LINT" "$FIX/good.lean" \
  || fail "linter flagged the good fixture (false positive)"
echo "self-test: good fixture correctly accepted"

# --- 2. live check on freshly generated contracts -----------------------------
ARTIFACT_DIR="$ROOT/tools/gnark/artifacts/note_reshape2x1"
mkdir -p "$ROOT/tools/gnark/lean/.lake"
TMP="$(mktemp -d "$ROOT/tools/gnark/lean/.lake/structured-lc-lint.XXXXXX")"
trap 'rm -rf "$TMP"' EXIT

if ! cargo run --release -q -p shieldd-constraint-coverage -- \
    --manifest "$ARTIFACT_DIR/note_reshape2x1-manifest.json" \
    --sr1cs "$ARTIFACT_DIR/note_reshape2x1.sr1cs" \
    --template-registry "$ROOT/tools/gnark/artifacts/proof-template-registry.json" \
    --lean-contract-out "$TMP/generated" >"$TMP/generate.log" 2>&1; then
  cat "$TMP/generate.log" >&2
  fail "contract generation failed"
fi

python3 "$LINT" "$TMP/generated" \
  || fail "current green generation trips a hard-fail anti-pattern rule"
echo "live check: freshly generated contracts pass the hard-fail rules"

echo "check-structured-lc-lint OK"

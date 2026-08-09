#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT/scripts/lib/fail-closed-rg.sh"

fail() {
  echo "formal gate self-test failed: $*" >&2
  exit 1
}

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT
export GOCACHE="${GOCACHE:-$tmp_dir/go-cache}"
printf 'clean\n' >"$tmp_dir/clean.txt"
printf 'forbidden\n' >"$tmp_dir/forbidden.txt"
printf 'open Protocol.NoteReshape\n' >"$tmp_dir/protocol-namespace.txt"
printf 'Protocol/NoteReshape\n' >"$tmp_dir/protocol-path.txt"

reject_rg_matches "clean fixture" -n 'forbidden' "$tmp_dir/clean.txt" \
  || fail "a no-match search did not report clean"
if reject_rg_matches "match fixture" -n 'forbidden' "$tmp_dir/forbidden.txt"; then
  fail "a forbidden match was accepted"
fi
set +e
reject_rg_matches "error fixture" -n 'forbidden' "$tmp_dir/missing.txt" >/dev/null 2>&1
rg_error=$?
set -e
[[ "$rg_error" -ge 2 ]] || fail "a ripgrep error was not preserved"

reject_rg_matches "protocol namespace reference" \
  -n 'Protocol/NoteReshape' "$tmp_dir/protocol-namespace.txt" \
  || fail "a generated refinement namespace reference was treated as path ownership"
if reject_rg_matches "protocol output path" \
    -n 'Protocol/NoteReshape' "$tmp_dir/protocol-path.txt"; then
  fail "a generator-owned protocol output path was accepted"
fi

for invocation in \
  "check-lean-circuit-fv.sh drift definitely_not_a_circuit" \
  "check-circuit-fv.sh drift definitely_not_a_circuit" \
  "check-constraint-coverage.sh definitely_not_a_circuit" \
  "check-manifest-pin.sh definitely_not_a_circuit"; do
  read -r -a command_parts <<<"$invocation"
  if bash "$ROOT/scripts/${command_parts[0]}" "${command_parts[@]:1}" \
      >"$tmp_dir/invalid-circuit.log" 2>&1; then
    fail "${command_parts[0]} accepted an invalid circuit name"
  fi
done

if python3 "$ROOT/scripts/check-fv-specification-completeness.py" \
    --profile definitely_not_a_circuit \
    >"$tmp_dir/invalid-specification-profile.log" 2>&1; then
  fail "specification-completeness gate accepted an invalid circuit name"
fi
rg -F "unknown specification-completeness profiles" \
  "$tmp_dir/invalid-specification-profile.log" >/dev/null \
  || fail "specification-completeness gate did not fail closed on an invalid profile"

if bash "$ROOT/scripts/check-key-coherence.sh" note_reshape8x1 \
    >"$tmp_dir/vk-mode.log" 2>&1; then
  fail "check-key-coherence accepted a run without an explicit binding mode"
fi
rg -F "select exactly one of --drift-only, --prove, or --proof-receipt" \
  "$tmp_dir/vk-mode.log" >/dev/null \
  || fail "check-key-coherence did not fail closed on a missing binding mode"

if bash "$ROOT/scripts/check-key-coherence.sh" note_reshape8x1 --prove \
    >"$tmp_dir/key-case.log" 2>&1; then
  fail "check-key-coherence accepted a proof without a canonical proof case"
fi
rg -F -- "--proof-case is required for proof validation" \
  "$tmp_dir/key-case.log" >/dev/null \
  || fail "check-key-coherence did not fail closed on a missing proof case"

python3 -m unittest discover \
  -s "$ROOT/scripts/tests" -p 'test_*.py'
python3 -m unittest discover \
  -s "$ROOT/scripts/ci" -p 'test_*.py'
bash "$ROOT/scripts/compliance-symbolic.sh" self-test
bash "$ROOT/scripts/check-gadget-model-fidelity.sh" all

echo "formal gate self-tests ok"

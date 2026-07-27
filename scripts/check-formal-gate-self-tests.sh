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

for invocation in \
  "check-lean-circuit-fv.sh drift definitely_not_a_circuit" \
  "check-constraint-coverage.sh definitely_not_a_circuit" \
  "check-manifest-pin.sh definitely_not_a_circuit"; do
  read -r -a command_parts <<<"$invocation"
  if bash "$ROOT/scripts/${command_parts[0]}" "${command_parts[@]:1}" \
      >"$tmp_dir/invalid-circuit.log" 2>&1; then
    fail "${command_parts[0]} accepted an invalid circuit name"
  fi
done

python3 -m unittest discover \
  -s "$ROOT/scripts/tests" -p 'test_*.py'
bash "$ROOT/scripts/check-gadget-model-fidelity.sh" all

echo "formal gate self-tests ok"

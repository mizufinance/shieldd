#!/usr/bin/env bash
set -euo pipefail

# Bounded model-checking gate for the compliance system-state Alloy models.
# Mirrors scripts/compliance-symbolic.sh: pins the tool via toolchain.toml,
# runs every `check` headless, asserts no counterexample, confirms the model is
# non-vacuous, and writes a stamped artifact per model that
# scripts/check-soundness-invariants.sh integrity-checks.
#
# Alloy 6.2's `exec` CLI subcommand is required (Alloy 5 has no CLI). In CI this
# runs as `nix shell nixpkgs#alloy6 --command bash scripts/compliance-alloy.sh`;
# the nixpkgs binary is `alloy6` (a wrapper over `java -jar`). Override with
# ALLOY_BIN to point at any equivalent `<bin> exec <model.als>` launcher.
#
# `alloy6 exec` prints a compact results table, one row per command:
#   NN. check <Name>   ...   UNSAT    (assertion holds: no counterexample)
#   NN. check <Name>   ...   SAT      (assertion violated: counterexample found)
#   NN. run   show     ...   SAT      (instance found: model is non-vacuous)

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FORMAL_DIR="crates/core/component/compliance/formal"
TOOLCHAIN="$FORMAL_DIR/toolchain.toml"

fail() {
  echo "compliance alloy failed: $*" >&2
  exit 1
}

read_pin() {
  local key="$1"
  sed -n "s/^${key} = \"\\(.*\\)\"/\\1/p" "$TOOLCHAIN"
}

if [ -n "${ALLOY_BIN:-}" ]; then
  command -v "$ALLOY_BIN" >/dev/null 2>&1 || [ -x "$ALLOY_BIN" ] \
    || fail "ALLOY_BIN is set but not executable: $ALLOY_BIN"
  ALLOY="$ALLOY_BIN"
else
  command -v alloy6 >/dev/null 2>&1 || fail "alloy6 is not installed"
  ALLOY=alloy6
fi

ALLOY_PIN="$(read_pin alloy)"
[ -n "$ALLOY_PIN" ] || fail "no alloy pin in $TOOLCHAIN"

# run_model <name> <check>...
# Verifies every listed check is UNSAT and the `show` run is SAT, then writes a
# stamped artifact. Fails closed if the model's declared checks do not exactly
# match the listed ones, so new assertions cannot be left unverified.
run_model() {
  local name="$1"; shift
  local checks=("$@")
  local model="$FORMAL_DIR/alloy/${name}.als"
  local artifact="$FORMAL_DIR/alloy-${name}-artifact.txt"

  [ -f "$model" ] || fail "$name: missing model $model"

  local declared expected
  declared="$(sed -n 's/^check \([A-Za-z0-9_]*\) .*/\1/p' "$model" | sort)"
  expected="$(printf '%s\n' "${checks[@]}" | sort)"
  [ "$declared" = "$expected" ] \
    || fail "$name: model checks ($declared) do not match the script list ($expected)"

  # `alloy6 exec` writes a solution dir + receipt.json next to its CWD; run it
  # in a throwaway dir so the repo tree stays clean.
  local workdir tmp
  workdir="$(mktemp -d)"
  tmp="$(mktemp)"
  ( cd "$workdir" && "$ALLOY" exec "$ROOT/$model" ) >"$tmp" 2>&1 || {
    cat "$tmp" >&2
    rm -rf "$workdir" "$tmp"
    fail "$name: alloy exec failed"
  }

  local check line
  for check in "${checks[@]}"; do
    line="$(rg -N "check[[:space:]]+${check}\b" "$tmp" || true)"
    [ -n "$line" ] || { cat "$tmp" >&2; rm -rf "$workdir" "$tmp"; fail "$name: check $check did not run"; }
    printf '%s\n' "$line" | rg -qw UNSAT \
      || { cat "$tmp" >&2; rm -rf "$workdir" "$tmp"; fail "$name: check $check did not hold (counterexample found)"; }
  done

  rg -N "run[[:space:]]+show\b" "$tmp" | rg -qw SAT \
    || { cat "$tmp" >&2; rm -rf "$workdir" "$tmp"; fail "$name: non-vacuity guard failed (show not satisfiable)"; }

  local model_sha output_sha
  model_sha="$(shasum -a 256 "$model" | awk '{print $1}')"
  output_sha="$(shasum -a 256 "$tmp" | awk '{print $1}')"
  {
    echo "tool: alloy"
    echo "alloy: $ALLOY_PIN"
    echo "model: $model"
    echo "model_sha256: $model_sha"
    echo "alloy_output_sha256: $output_sha"
    for check in "${checks[@]}"; do
      echo "CHECK $check no-counterexample"
    done
  } >"$artifact"
  shasum -a 256 "$artifact" | awk '{print $1}' >"$artifact.sha256"

  rm -rf "$workdir" "$tmp"
  echo "compliance alloy ok ($name): sha256:$(cat "$artifact.sha256")"
}

run_model nullifier-imt       NoDoubleSpend GapImpliesAbsent InsertKeepsSorted
run_model value-conservation  BindingImpliesConservation
run_model compliance-tiers    CompleteIsTerminal CompleteReachableFromAll NoPendingShortcut FourCanonicalTiers
run_model orbis-authorization CorrectIssuerRecovers OnlyDesignatedRecovers SingleBinding
run_model ics20-supply-conservation SupplyBackedByEscrow
run_model consolidate2x1-statement-sufficiency NoDoubleSpend NoInflation SpendAuthBound
run_model transfer-statement-sufficiency NoDoubleSpend NoInflation SpendAuthBound RegulatedEnforced DummyNonSpending

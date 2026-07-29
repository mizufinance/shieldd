#!/usr/bin/env bash
set -euo pipefail

# Fresh proof evidence is compared with committed stamps by default. Use
# explicit `update` mode after reviewing a model change.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FORMAL_DIR="crates/core/component/compliance/formal"
TOOLCHAIN="$FORMAL_DIR/toolchain.toml"
COMPLIANCE_LEMMAS=(
  SECRECY
  DETECTION_CORRECTNESS
  DESIGNATED_DECRYPTABILITY
  DLEQ_BINDING
  REPLAY_RESISTANCE
  NO_KEY_CONFUSION
  ANCHOR_FRESHNESS
)
ACTIVE_LEMMAS=(
  DLEQ_BINDING
  REPLAY_RESISTANCE
  NO_KEY_CONFUSION
  EXECUTABLE
)
MODE="${1:-check}"
case "$MODE" in
  check|update|self-test) ;;
  *)
    echo "usage: $(basename "$0") [check|update|self-test]" >&2
    exit 2
    ;;
esac

fail() {
  echo "compliance symbolic failed: $*" >&2
  exit 1
}

check_lemma_inventory() {
  local model="$1"
  shift
  local expected_lemmas=("$@")
  local declared expected raw_count parsed_count

  [[ -f "$model" ]] || {
    echo "missing Tamarin model $model" >&2
    return 1
  }
  raw_count="$(
    awk '/^[[:space:]]*lemma[[:space:]]+/ { count++ } END { print count + 0 }' \
      "$model"
  )"
  declared="$(
    sed -n \
      's/^[[:space:]]*lemma[[:space:]][[:space:]]*\([A-Za-z_][A-Za-z0-9_]*\)[[:space:]]*:.*$/\1/p' \
      "$model" | LC_ALL=C sort
  )"
  parsed_count="$(
    printf '%s\n' "$declared" | awk 'NF { count++ } END { print count + 0 }'
  )"
  if [[ "$raw_count" -eq 0 || "$parsed_count" -ne "$raw_count" ]]; then
    echo "$model: every lemma must use a literal 'lemma NAME:' declaration" >&2
    return 1
  fi
  expected="$(printf '%s\n' "${expected_lemmas[@]}" | LC_ALL=C sort)"
  if [[ "$declared" != "$expected" ]]; then
    echo "$model: declared lemmas do not match the proof runner inventory" >&2
    echo "declared:" >&2
    printf '%s\n' "$declared" >&2
    echo "expected:" >&2
    printf '%s\n' "$expected" >&2
    return 1
  fi
}

verified_lemma_in_output() {
  local lemma="$1" output="$2"
  rg "(^|[^A-Za-z0-9_])${lemma}([^A-Za-z0-9_]|$)" "$output" \
    | rg -F "verified" >/dev/null
}

run_lemma_inventory_self_test() (
  local directory model proof_output
  directory="$(mktemp -d)"
  model="$directory/model.spthy"
  proof_output="$directory/proof-output.txt"
  trap 'rm -rf "$directory"' EXIT
  printf 'theory Test begin\nlemma FIRST:\n  \"True\"\nlemma SECOND:\n  \"True\"\nend\n' \
    >"$model"
  printf 'FIRST_EXTRA (all-traces): verified\nSECOND (all-traces): verified\n' \
    >"$proof_output"

  check_lemma_inventory "$model" FIRST SECOND \
    || fail "exact lemma inventory was rejected"
  if check_lemma_inventory "$model" FIRST >/dev/null 2>&1; then
    fail "a model lemma omitted from the runner inventory was accepted"
  fi
  if check_lemma_inventory "$model" FIRST SECOND THIRD >/dev/null 2>&1; then
    fail "an undeclared lemma in the runner inventory was accepted"
  fi
  if verified_lemma_in_output FIRST "$proof_output"; then
    fail "a prefix-only verified lemma was accepted"
  fi
  verified_lemma_in_output SECOND "$proof_output" \
    || fail "an exact verified lemma was rejected"
  check_lemma_inventory \
    "$FORMAL_DIR/compliance.spthy" "${COMPLIANCE_LEMMAS[@]}" \
    || fail "closed-world model lemma inventory is incomplete"
  check_lemma_inventory \
    "$FORMAL_DIR/compliance-active.spthy" "${ACTIVE_LEMMAS[@]}" \
    || fail "active-adversary model lemma inventory is incomplete"
  echo "compliance symbolic lemma inventory self-test ok"
)

if [[ "$MODE" == "self-test" ]]; then
  run_lemma_inventory_self_test
  exit 0
fi

read_pin() {
  local key="$1"
  sed -n "s/^${key} = \"\\(.*\\)\"/\\1/p" "$TOOLCHAIN"
}

require_command() {
  local cmd="$1"
  command -v "$cmd" >/dev/null 2>&1 || fail "$cmd is not installed"
}

# sha256 portably: Linux ships sha256sum, macOS ships shasum.
sha256_file() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$1" | awk '{print $1}'
  else
    shasum -a 256 "$1" | awk '{print $1}'
  fi
}

require_command rg

if [ -n "${MAUDE_BIN:-}" ]; then
  [ -x "$MAUDE_BIN" ] || fail "MAUDE_BIN is set but not executable: $MAUDE_BIN"
  export PATH="$(dirname "$MAUDE_BIN"):$PATH"
fi

if [ -n "${TAMARIN_BIN:-}" ]; then
  [ -x "$TAMARIN_BIN" ] || fail "TAMARIN_BIN is set but not executable: $TAMARIN_BIN"
  TAMARIN="$TAMARIN_BIN"
else
  require_command tamarin-prover
  TAMARIN=tamarin-prover
fi
require_command maude

tamarin_pin="$(read_pin tamarin)"
maude_pin="$(read_pin maude)"

tamarin_version="$("$TAMARIN" --version 2>&1)" || fail "tamarin-prover --version failed"
case "$tamarin_version" in
  *"Tamarin version $tamarin_pin"*) ;;
  *) fail "Tamarin version mismatch; expected $tamarin_pin" ;;
esac

maude_version="$(maude --version 2>&1)" || fail "maude --version failed"
case "$maude_version" in
  *"$maude_pin"*) ;;
  *) fail "Maude version mismatch; expected $maude_pin, got: $maude_version" ;;
esac

# Each model has its own lemma set and stamped artifact. The closed-world
# authorization model carries the secrecy/decryptability correspondence; the
# active-adversary model carries binding/replay under a Dolev-Yao attacker.
# Both must verify with zero wellformedness warnings.
prove_model() {
  local model="$1" artifact="$2"
  shift 2
  local lemmas=("$@")
  local artifact_sha="$artifact.sha256"

  check_lemma_inventory "$model" "${lemmas[@]}" \
    || fail "Tamarin lemma inventory mismatch for $model"

  local tmp generated_artifact generated_sha
  tmp="$(mktemp)"
  generated_artifact="$(mktemp)"
  generated_sha="$(mktemp)"

  "$TAMARIN" --prove "$model" >"$tmp" 2>&1 || {
    cat "$tmp" >&2
    rm -f "$tmp" "$generated_artifact" "$generated_sha"
    fail "Tamarin proof failed for $model"
  }

  if rg -F "WARNING:" "$tmp" >/dev/null; then
    cat "$tmp" >&2
    rm -f "$tmp" "$generated_artifact" "$generated_sha"
    fail "Tamarin emitted warnings for $model"
  fi

  local lemma
  for lemma in "${lemmas[@]}"; do
    verified_lemma_in_output "$lemma" "$tmp" \
      || {
        rm -f "$tmp" "$generated_artifact" "$generated_sha"
        fail "lemma $lemma was not verified in $model"
      }
  done

  # Tamarin prints nondeterministic processing time. The gate has already
  # verified the exact closed lemma inventory above, so stamp only deterministic
  # proof identity: toolchain, model hash, and each verified lemma.
  local model_sha
  model_sha="$(sha256_file "$model")"
  {
    echo "tool: tamarin-prover"
    echo "tamarin: $tamarin_pin"
    echo "maude: $maude_pin"
    echo "model: $model"
    echo "model_sha256: $model_sha"
    for lemma in "${lemmas[@]}"; do
      echo "LEMMA $lemma verified"
    done
  } >"$generated_artifact"

  sha256_file "$generated_artifact" >"$generated_sha"
  if [[ "$MODE" == "check" ]]; then
    [[ -f "$artifact" && -f "$artifact_sha" ]] || {
      rm -f "$tmp" "$generated_artifact" "$generated_sha"
      fail "committed artifact or sidecar is missing for $model"
    }
    if ! cmp -s "$generated_artifact" "$artifact"; then
      diff -u "$artifact" "$generated_artifact" >&2 || true
      rm -f "$tmp" "$generated_artifact" "$generated_sha"
      fail "committed artifact is stale for $model; run scripts/compliance-symbolic.sh update"
    fi
    if ! cmp -s "$generated_sha" "$artifact_sha"; then
      diff -u "$artifact_sha" "$generated_sha" >&2 || true
      rm -f "$tmp" "$generated_artifact" "$generated_sha"
      fail "committed artifact sidecar is stale for $model; run scripts/compliance-symbolic.sh update"
    fi
  else
    cp "$generated_artifact" "$artifact"
    cp "$generated_sha" "$artifact_sha"
  fi
  rm -f "$tmp" "$generated_artifact" "$generated_sha"
  echo "  $model ok: sha256:$(cat "$artifact_sha")"
}

prove_model \
  "$FORMAL_DIR/compliance.spthy" \
  "$FORMAL_DIR/compliance-symbolic-artifact.txt" \
  "${COMPLIANCE_LEMMAS[@]}"

prove_model \
  "$FORMAL_DIR/compliance-active.spthy" \
  "$FORMAL_DIR/compliance-active-symbolic-artifact.txt" \
  "${ACTIVE_LEMMAS[@]}"

echo "compliance symbolic ok"

#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FORMAL_DIR="crates/core/component/compliance/formal"
TOOLCHAIN="$FORMAL_DIR/toolchain.toml"
MODEL="$FORMAL_DIR/compliance.spthy"
ARTIFACT="$FORMAL_DIR/compliance-symbolic-artifact.txt"
ARTIFACT_SHA="$ARTIFACT.sha256"

fail() {
  echo "compliance symbolic failed: $*" >&2
  exit 1
}

read_pin() {
  local key="$1"
  sed -n "s/^${key} = \"\\(.*\\)\"/\\1/p" "$TOOLCHAIN"
}

require_command() {
  local cmd="$1"
  command -v "$cmd" >/dev/null 2>&1 || fail "$cmd is not installed"
}

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

lemmas=(
  SECRECY
  DETECTION_CORRECTNESS
  DESIGNATED_DECRYPTABILITY
  DLEQ_BINDING
  REPLAY_RESISTANCE
  NO_KEY_CONFUSION
  ANCHOR_FRESHNESS
)

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT
"$TAMARIN" --prove "$MODEL" >"$tmp" 2>&1 || {
  cat "$tmp" >&2
  fail "Tamarin proof failed"
}

if rg -F "WARNING:" "$tmp" >/dev/null; then
  cat "$tmp" >&2
  fail "Tamarin emitted warnings"
fi

for lemma in "${lemmas[@]}"; do
  rg -F "$lemma (all-traces): verified" "$tmp" >/dev/null \
    || fail "lemma $lemma was not verified"
done

model_sha="$(shasum -a 256 "$MODEL" | awk '{print $1}')"
output_sha="$(shasum -a 256 "$tmp" | awk '{print $1}')"
{
  echo "tool: tamarin-prover"
  echo "tamarin: $tamarin_pin"
  echo "maude: $maude_pin"
  echo "model: $MODEL"
  echo "model_sha256: $model_sha"
  echo "tamarin_output_sha256: $output_sha"
  for lemma in "${lemmas[@]}"; do
    echo "LEMMA $lemma verified"
  done
} >"$ARTIFACT"

shasum -a 256 "$ARTIFACT" | awk '{print $1}' >"$ARTIFACT_SHA"

echo "compliance symbolic ok: sha256:$(cat "$ARTIFACT_SHA")"

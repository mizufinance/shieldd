#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FORMAL_DIR="crates/core/component/compliance/formal"
TOOLCHAIN="$FORMAL_DIR/toolchain.toml"

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

  local tmp
  tmp="$(mktemp)"

  "$TAMARIN" --prove "$model" >"$tmp" 2>&1 || {
    cat "$tmp" >&2
    rm -f "$tmp"
    fail "Tamarin proof failed for $model"
  }

  if rg -F "WARNING:" "$tmp" >/dev/null; then
    cat "$tmp" >&2
    rm -f "$tmp"
    fail "Tamarin emitted warnings for $model"
  fi

  local lemma
  for lemma in "${lemmas[@]}"; do
    rg -F "$lemma" "$tmp" | rg -F "verified" >/dev/null \
      || { rm -f "$tmp"; fail "lemma $lemma was not verified in $model"; }
  done

  local model_sha output_sha
  model_sha="$(sha256_file "$model")"
  output_sha="$(sha256_file "$tmp")"
  {
    echo "tool: tamarin-prover"
    echo "tamarin: $tamarin_pin"
    echo "maude: $maude_pin"
    echo "model: $model"
    echo "model_sha256: $model_sha"
    echo "tamarin_output_sha256: $output_sha"
    for lemma in "${lemmas[@]}"; do
      echo "LEMMA $lemma verified"
    done
  } >"$artifact"

  sha256_file "$artifact" >"$artifact_sha"
  rm -f "$tmp"
  echo "  $model ok: sha256:$(cat "$artifact_sha")"
}

prove_model \
  "$FORMAL_DIR/compliance.spthy" \
  "$FORMAL_DIR/compliance-symbolic-artifact.txt" \
  SECRECY DETECTION_CORRECTNESS DESIGNATED_DECRYPTABILITY \
  DLEQ_BINDING REPLAY_RESISTANCE NO_KEY_CONFUSION ANCHOR_FRESHNESS

prove_model \
  "$FORMAL_DIR/compliance-active.spthy" \
  "$FORMAL_DIR/compliance-active-symbolic-artifact.txt" \
  DLEQ_BINDING REPLAY_RESISTANCE NO_KEY_CONFUSION EXECUTABLE

echo "compliance symbolic ok"

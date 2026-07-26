#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FORMAL_DIR="crates/core/component/shielded-pool/formal"
CRATE_DIR="crates/core/component/shielded-pool"
TOOLCHAIN="$FORMAL_DIR/toolchain.toml"
ARTIFACT="$FORMAL_DIR/statement-field-formal-artifact.txt"
ARTIFACT_SHA="$ARTIFACT.sha256"

fail() {
  echo "shielded-pool formal failed: $*" >&2
  exit 1
}

read_pin() {
  local key="$1"
  sed -n "s/^${key} = \"\\(.*\\)\"/\\1/p" "$TOOLCHAIN"
}

without_v_prefix() {
  printf '%s' "$1" | sed 's/^v//'
}

require_command() {
  local cmd="$1"
  command -v "$cmd" >/dev/null 2>&1 || fail "$cmd is not installed"
}

load_opam_switch() {
  local switch
  switch="$(read_pin opam_switch)"
  if command -v hax-engine >/dev/null 2>&1 || [ -z "$switch" ]; then
    return
  fi
  command -v opam >/dev/null 2>&1 || return 0
  opam switch list --short 2>/dev/null | grep -Fx "$switch" >/dev/null || return 0
  eval "$(opam env --switch="$switch")" || fail "failed to load opam switch $switch"
}

require_command cargo
require_command z3
load_opam_switch
require_command hax-engine

if ! command -v cargo-hax >/dev/null 2>&1 && ! cargo hax --version >/dev/null 2>&1; then
  fail "cargo-hax is not installed"
fi

hax_pin="$(read_pin hax)"
hax_version="$(without_v_prefix "$hax_pin")"
fstar_pin="$(read_pin fstar)"
fstar_version="$(without_v_prefix "$fstar_pin")"
z3_pin="$(read_pin z3)"

z3_version="$(z3 --version 2>&1)" || fail "z3 --version failed"
case "$z3_version" in
  *"$z3_pin"*) ;;
  *) fail "z3 version mismatch; expected $z3_pin, got: $z3_version" ;;
esac

cargo_hax_version="$(cargo hax --version 2>&1)" || fail "cargo hax --version failed"
case "$cargo_hax_version" in
  *"version=${hax_version}"*) ;;
  *) fail "hax version mismatch; expected $hax_pin, got: $cargo_hax_version" ;;
esac

if [ -n "${FSTAR_BIN:-}" ]; then
  [ -x "$FSTAR_BIN" ] || fail "FSTAR_BIN is set but not executable: $FSTAR_BIN"
  FSTAR="$FSTAR_BIN"
elif command -v fstar.exe >/dev/null 2>&1; then
  FSTAR=fstar.exe
elif command -v fstar >/dev/null 2>&1; then
  FSTAR=fstar
else
  fail "F* is not installed"
fi

fstar_cli_version="$("$FSTAR" --version 2>&1)" || fail "F* --version failed"
case "$fstar_cli_version" in
  *"$fstar_version"*) ;;
  *) fail "F* version mismatch; expected $fstar_pin, got: $fstar_cli_version" ;;
esac

find_hax_proof_libs() {
  if [ -n "${HAX_PROOF_LIBS_HOME:-}" ] && [ -d "$HAX_PROOF_LIBS_HOME/core" ]; then
    printf '%s\n' "$HAX_PROOF_LIBS_HOME"
    return
  fi
  local candidate
  for candidate in \
    "$HOME/.local/opt/hax-${hax_version}/hax-lib/proof-libs/fstar" \
    "$HOME/.local/opt/hax-v${hax_version}/hax-lib/proof-libs/fstar"; do
    if [ -d "$candidate/core" ]; then
      printf '%s\n' "$candidate"
      return
    fi
  done
  fail "hax F* proof libraries not found; set HAX_PROOF_LIBS_HOME"
}

prepare_fstar_inputs() {
  local hax_proof_libs="$1"
  local hax_lib_root
  hax_lib_root="$(cd "$hax_proof_libs/../.." && pwd)"
  local hax_lib_extraction="$hax_lib_root/proofs/fstar/extraction"
  [ -d "$hax_lib_extraction" ] || fail "hax-lib F* extraction not found at $hax_lib_extraction"

  GENERATED_DIR="$FORMAL_DIR/.generated"
  FSTAR_SHIMS_DIR="$GENERATED_DIR/fstar-shims"
  FSTAR_HAX_PROOF_LIBS="$GENERATED_DIR/hax-proof-libs"
  FSTAR_HAX_LIB_EXTRACTION="$GENERATED_DIR/hax-lib-extraction"

  rm -rf "$FSTAR_SHIMS_DIR" "$FSTAR_HAX_PROOF_LIBS" "$FSTAR_HAX_LIB_EXTRACTION"
  mkdir -p "$FSTAR_SHIMS_DIR" "$FSTAR_HAX_PROOF_LIBS" "$FSTAR_HAX_LIB_EXTRACTION"
  cp -R "$hax_proof_libs/core" "$FSTAR_HAX_PROOF_LIBS/core"
  cp -R "$hax_proof_libs/rust_primitives" "$FSTAR_HAX_PROOF_LIBS/rust_primitives"
  cp -R "$hax_lib_extraction/." "$FSTAR_HAX_LIB_EXTRACTION/"

  cat > "$FSTAR_SHIMS_DIR/FStar.Mul.fst" <<'FSTAR'
module FStar.Mul
FSTAR

  find "$FSTAR_HAX_PROOF_LIBS" "$FSTAR_HAX_LIB_EXTRACTION" \
    \( -name '*.fst' -o -name '*.fsti' \) \
    -exec perl -0pi -e 's/pred:\s*Type0/pred: Prims.prop/g; s/->\s*Type0;/-> Prims.prop;/g; s/->\s*Type0\)/-> Prims.prop)/g; s/->\s*Type0\n/-> Prims.prop\n/g; s/\(p: Type0\)/(p: Prims.prop)/g; s/\(v__formula: Type0\)/(v__formula: Prims.prop)/g' {} +
}

include_args=()
while IFS= read -r target; do
  [[ -z "$target" ]] && continue
  include_args+=("+$target")
done <"$FORMAL_DIR/hax-targets.txt"

pushd "$CRATE_DIR" >/dev/null
rm -rf proofs/fstar
mkdir -p proofs/fstar/extraction
cargo hax into -i "-** ${include_args[*]}" fstar \
  || fail "hax extraction failed for shielded-pool statement boundary"

full_extraction_sha="$(find proofs/fstar/extraction -name '*.fst' -type f -print0 | sort -z | xargs -0 shasum -a 256 | shasum -a 256 | awk '{print $1}')"

count_include_args=(
  +shieldd_sdk_shielded_pool::public_input_hash::note_reshape_statement_field_count
  +shieldd_sdk_shielded_pool::public_input_hash::transfer_statement_field_count
  +shieldd_sdk_shielded_pool::public_input_hash::shielded_ics20_withdrawal_statement_field_count
)
cargo hax into -i "-** ${count_include_args[*]}" fstar \
  || fail "hax extraction failed for shielded-pool statement field-count boundary"

cat > proofs/fstar/extraction/Anyhow.fst <<'FSTAR'
module Anyhow
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"

type t_Error = | Error : t_Error
FSTAR
popd >/dev/null

prepare_fstar_inputs "$(find_hax_proof_libs)"

FSTAR_FLAGS=(
  --cache_off
  --include "$FSTAR_SHIMS_DIR"
  --include "$FSTAR_HAX_PROOF_LIBS/rust_primitives"
  --include "$FSTAR_HAX_PROOF_LIBS/core"
  --include "$FSTAR_HAX_LIB_EXTRACTION"
  --include "$CRATE_DIR/proofs/fstar/extraction"
  --include "$FORMAL_DIR/fstar"
)

for proof in "$FORMAL_DIR"/fstar/*.fst; do
  "$FSTAR" "${FSTAR_FLAGS[@]}" "$proof"
done

proof_source_sha="$(find "$FORMAL_DIR/fstar" "$CRATE_DIR/proofs/fstar/extraction/Shieldd_sdk_shielded_pool.Public_input_hash.fst" -name '*.fst' -type f -print0 | sort -z | xargs -0 shasum -a 256 | shasum -a 256 | awk '{print $1}')"
{
  echo "tool: fstar"
  echo "hax: $hax_pin"
  echo "fstar: $fstar_pin"
  echo "z3: $z3_pin"
  echo "full_encoder_extraction_sha256: $full_extraction_sha"
  echo "proof_source_sha256: $proof_source_sha"
  echo "LEMMA EXTRACTED_FIELD_COUNT_CONSTANTS verified"
  echo "LEMMA TRANSFER_FIELD_COUNT_INJECTIVE verified"
  echo "LEMMA SINGLE_OUTPUT_NOTE_RESHAPE_FIELD_COUNT_INJECTIVE verified"
  echo "LEMMA SHIELDED_ICS20_FIELD_COUNT_INJECTIVE verified"
  echo "NOTE full Rust encoder injectivity still requires field-encoding and Decaf conversion lemmas"
} >"$ARTIFACT"

shasum -a 256 "$ARTIFACT" | awk '{print $1}' >"$ARTIFACT_SHA"

echo "shielded-pool formal ok: sha256:$(cat "$ARTIFACT_SHA")"

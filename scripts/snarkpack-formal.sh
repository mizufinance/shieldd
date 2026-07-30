#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FORMAL_DIR="crates/crypto/proof-aggregation/formal/snarkpack"
TOOLCHAIN="$FORMAL_DIR/toolchain.toml"

fail() {
  echo "snarkpack formal failed: $*" >&2
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

require_command cargo
require_command python3
require_command z3

hax_pin="$(read_pin hax_fstar)"
fstar_pin="$(read_pin fstar)"
hax_version="$(without_v_prefix "$hax_pin")"
fstar_version="$(without_v_prefix "$fstar_pin")"

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

load_opam_switch

if ! command -v cargo-hax >/dev/null 2>&1 && ! cargo hax --version >/dev/null 2>&1; then
  fail "cargo-hax is not installed; expected hax $hax_pin"
fi

require_command hax-engine

fstar_home="$HOME/.local/opt/fstar/bin"
fstar_release_home="$HOME/.local/opt/fstar-${fstar_pin}-Linux-x86_64/bin"
if [ -n "${FSTAR_BIN:-}" ]; then
  [ -x "$FSTAR_BIN" ] || fail "FSTAR_BIN is set but not executable: $FSTAR_BIN"
  FSTAR="$FSTAR_BIN"
elif command -v fstar.exe >/dev/null 2>&1; then
  FSTAR=fstar.exe
elif command -v fstar >/dev/null 2>&1; then
  FSTAR=fstar
elif [ -x "$fstar_home/fstar.exe" ]; then
  FSTAR="$fstar_home/fstar.exe"
elif [ -x "$fstar_home/fstar" ]; then
  FSTAR="$fstar_home/fstar"
elif [ -x "$fstar_release_home/fstar.exe" ]; then
  FSTAR="$fstar_release_home/fstar.exe"
elif [ -x "$fstar_release_home/fstar" ]; then
  FSTAR="$fstar_release_home/fstar"
else
  fail "F* is not installed; expected F* $fstar_pin"
fi

echo "snarkpack formal: checking pinned tool versions"

z3_pin="$(read_pin z3)"
z3_version="$(z3 --version 2>&1)" || fail "z3 --version failed: $z3_version"
case "$z3_version" in
  *"$z3_pin"*) ;;
  *) fail "z3 version mismatch; expected $z3_pin, got: $z3_version" ;;
esac

cargo_hax_version="$(cargo hax --version 2>&1)" || fail "cargo hax --version failed: $cargo_hax_version"
case "$cargo_hax_version" in
  *"version=${hax_version}"*) ;;
  *) fail "hax version mismatch; expected $hax_pin, got: $cargo_hax_version" ;;
esac

fstar_cli_version="$("$FSTAR" --version 2>&1)" || fail "F* --version failed: $fstar_cli_version"
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

  if [ "${SNARKPACK_FORMAL_ALLOW_TMP_HAX_LIBS:-}" = "1" ] && [ "${CI:-}" != "true" ]; then
    for candidate in \
      "/tmp/hax-cargo-hax-v${hax_version}/hax-lib/proof-libs/fstar" \
      "/tmp/hax-cargo-hax-${hax_version}/hax-lib/proof-libs/fstar"; do
      if [ -d "$candidate/core" ]; then
        printf '%s\n' "$candidate"
        return
      fi
    done
  fi

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

  # prost owns these wire discriminants.  The extracted bundle router refers
  # to the generated enum constants, while hax intentionally excludes the
  # enormous generated protobuf module.  Keep the exact protocol constants in
  # a narrow shim; Rust parity tests bind them to the live prost enum.
  cat > "$FSTAR_SHIMS_DIR/Shieldd_sdk_proto.Shieldd.Core.Transaction.V1.fst" <<'FSTAR'
module Shieldd_sdk_proto.Shieldd.Core.Transaction.V1
open Core_models

let anon_const_ProofFamilyId_Transfer__anon_const_0 : i32 = mk_i32 7
let anon_const_ProofFamilyId_NoteReshape__anon_const_0 : i32 = mk_i32 8
let anon_const_ProofFamilyId_ShieldedIcs20Withdrawal__anon_const_0 : i32 =
  mk_i32 10
FSTAR

  find "$FSTAR_HAX_PROOF_LIBS" "$FSTAR_HAX_LIB_EXTRACTION" \
    \( -name '*.fst' -o -name '*.fsti' \) \
    -exec perl -0pi -e 's/pred:\s*Type0/pred: Prims.prop/g; s/->\s*Type0;/-> Prims.prop;/g; s/->\s*Type0\)/-> Prims.prop)/g; s/->\s*Type0\n/-> Prims.prop\n/g; s/\(p: Type0\)/(p: Prims.prop)/g; s/\(v__formula: Type0\)/(v__formula: Prims.prop)/g' {} +

  python3 scripts/prepare_snarkpack_fstar_support.py "$FSTAR_HAX_PROOF_LIBS"
}

VERIFICATION_DRIVER="crates/crypto/proof-aggregation/formal/lean-ipp/scripts/verification_manifest.py"
FSTAR_EVIDENCE="$FORMAL_DIR/fstar-checker-evidence.json"
FSTAR_PLAN_FILE="$(mktemp)"
FSTAR_CANDIDATE_FILE="$(mktemp)"
cleanup() {
  rm -f "$FSTAR_PLAN_FILE" "$FSTAR_CANDIDATE_FILE"
}
trap cleanup EXIT

FSTAR_REQUEST_ARGS=()
FSTAR_BASE_ARGS=()
if [ -n "${SNARKPACK_FSTAR_BASE_EVIDENCE:-}" ]; then
  [ -f "$SNARKPACK_FSTAR_BASE_EVIDENCE" ] ||
    fail "F* base evidence is missing: $SNARKPACK_FSTAR_BASE_EVIDENCE"
  FSTAR_BASE_ARGS+=(--base "$SNARKPACK_FSTAR_BASE_EVIDENCE")
fi
if [ -n "${SNARKPACK_FSTAR_PROOFS_JSON:-}" ]; then
  FSTAR_REQUEST_ARGS+=(--requested-json "$SNARKPACK_FSTAR_PROOFS_JSON")
else
  FSTAR_REQUEST_ARGS+=(--force-all)
fi
if [ "${SNARKPACK_FSTAR_FORCE_ALL:-0}" = "1" ]; then
  FSTAR_REQUEST_ARGS+=(--force-all)
fi
python3 "$VERIFICATION_DRIVER" \
  fstar-plan \
  "${FSTAR_BASE_ARGS[@]}" \
  "${FSTAR_REQUEST_ARGS[@]}" \
  >"$FSTAR_PLAN_FILE"
mapfile -t FSTAR_PROOFS <"$FSTAR_PLAN_FILE"
FSTAR_CHECKED_ARGS=()

validate_fstar_boundary_cache() {
  local expected=(
    crates/crypto/proof-aggregation/proofs/fstar/extraction/Shieldd_sdk_proof_aggregation.Aggregate_proof_wrapper.fst
    crates/crypto/proof-aggregation/proofs/fstar/extraction/Shieldd_sdk_proof_aggregation.Bundle.fst
    crates/crypto/proof-aggregation/proofs/fstar/extraction/Shieldd_sdk_proof_aggregation.Padding.fst
    crates/crypto/proof-aggregation/proofs/fstar/extraction/Shieldd_sdk_proof_aggregation.Preflight.fst
    crates/crypto/proof-aggregation/proofs/fstar/extraction/Shieldd_sdk_proof_aggregation.Srs.fst
    crates/crypto/proof-aggregation/proofs/fstar/extraction/Shieldd_sdk_proof_aggregation.Statement.fst
    crates/crypto/proof-aggregation/src/ipp/ip_proofs/proofs/fstar/extraction/Ark_ip_proofs.Challenge.fst
    crates/core/component/shielded-pool/proofs/fstar/extraction/Anyhow.fst
    crates/core/component/shielded-pool/proofs/fstar/extraction/Shieldd_sdk_shielded_pool.Note_reshape.Generated.fst
    crates/core/component/shielded-pool/proofs/fstar/extraction/Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated.fst
  )
  local observed=()
  mapfile -t observed < <(
    find \
      crates/crypto/proof-aggregation/proofs/fstar/extraction \
      crates/crypto/proof-aggregation/src/ipp/ip_proofs/proofs/fstar/extraction \
      crates/core/component/shielded-pool/proofs/fstar/extraction \
      -type f \( -name '*.fst' -o -name '*.fsti' \) \
      -print 2>/dev/null | sort
  )
  mapfile -t expected < <(printf '%s\n' "${expected[@]}" | sort)
  ((${#observed[@]} == ${#expected[@]})) ||
    fail "F* boundary cache has an unexpected file count"
  local index
  for index in "${!expected[@]}"; do
    [ "${observed[$index]}" = "${expected[$index]}" ] ||
      fail "F* boundary cache inventory mismatch"
    [ -s "${expected[$index]}" ] ||
      fail "F* boundary cache contains an empty file: ${expected[$index]}"
  done
}

if ((${#FSTAR_PROOFS[@]} > 0)); then
if [ "${SNARKPACK_FSTAR_BOUNDARY_CACHE_HIT:-0}" = "1" ]; then
  echo "snarkpack formal: using exact checked F* boundary cache"
  validate_fstar_boundary_cache
else
pushd crates/crypto/proof-aggregation >/dev/null
echo "snarkpack formal: extracting proof-aggregation statement boundary"
cargo hax into \
  -i '-** +shieldd_sdk_proof_aggregation::statement::StatementFieldBytes +shieldd_sdk_proof_aggregation::statement::StatementPublicInputRow +shieldd_sdk_proof_aggregation::statement::StatementPaddedRows +shieldd_sdk_proof_aggregation::statement::StatementEncodingInput +shieldd_sdk_proof_aggregation::statement::statement_encoding_input_core +shieldd_sdk_proof_aggregation::statement::encode_statement +shieldd_sdk_proof_aggregation::statement::vk_digest_preimage +shieldd_sdk_proof_aggregation::statement::validate_counts +shieldd_sdk_proof_aggregation::statement::validate_row_arity +shieldd_sdk_proof_aggregation::statement::validate_repeat_final_padding +shieldd_sdk_proof_aggregation::srs::dev_srs_supports_count +shieldd_sdk_proof_aggregation::srs::default_dev_srs_id_preimage +shieldd_sdk_proof_aggregation::aggregate_proof_wrapper::encode_wrapped_aggregate_proof +shieldd_sdk_proof_aggregation::aggregate_proof_wrapper::decode_wrapped_aggregate_proof +shieldd_sdk_proof_aggregation::aggregate_proof_wrapper::decode_wrapped_aggregate_proof_inner_range +shieldd_sdk_proof_aggregation::preflight::PreflightCheapChecks +shieldd_sdk_proof_aggregation::preflight::PreflightWorkGate +shieldd_sdk_proof_aggregation::preflight::preflight_work_gate +shieldd_sdk_proof_aggregation::bundle::ProofFamilyId +shieldd_sdk_proof_aggregation::bundle::FamilyProtoFields +shieldd_sdk_proof_aggregation::bundle::family_proto_fields +shieldd_sdk_proof_aggregation::bundle::FamilyRouteKind +shieldd_sdk_proof_aggregation::bundle::FamilyRoute +shieldd_sdk_proof_aggregation::bundle::FamilyRouteError +shieldd_sdk_proof_aggregation::bundle::family_route_from_proto_fields' \
  fstar \
  || fail "hax extraction failed for proof-aggregation statement boundary"
popd >/dev/null

pushd crates/crypto/proof-aggregation/src/ipp/ip_proofs >/dev/null
echo "snarkpack formal: extracting ip_proofs challenge boundary"
cargo hax into \
  -i '-** +ark_ip_proofs::challenge::ChallengeContext +ark_ip_proofs::challenge::challenge_context_preimage +ark_ip_proofs::challenge::challenge_preimage' \
  fstar \
  || fail "hax extraction failed for ip_proofs challenge boundary"
popd >/dev/null

pushd crates/core/component/shielded-pool >/dev/null
echo "snarkpack formal: extracting NoteReshape family boundary"
rm -rf proofs/fstar
mkdir -p proofs/fstar/extraction
cargo hax \
  -C --no-default-features ';' \
  into \
  -i '-** +shieldd_sdk_shielded_pool::note_reshape::generated::NoteReshapeFamilyId +shieldd_sdk_shielded_pool::shielded_ics20_withdrawal::generated::ShieldedIcs20WithdrawalFamilyId' \
  fstar \
  || fail "hax extraction failed for shielded-pool family boundary"

cat > proofs/fstar/extraction/Anyhow.fst <<'FSTAR'
module Anyhow
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"

type t_Error = | Error : t_Error
FSTAR

cat >> proofs/fstar/extraction/Shieldd_sdk_shielded_pool.Note_reshape.Generated.fst <<'FSTAR'

let impl_NoteReshapeFamilyId__get
      (self:t_NoteReshapeFamilyId)
    : u32 =
  match self <: t_NoteReshapeFamilyId with
  | NoteReshapeFamilyId value -> value

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_NoteReshapeFamilyId__try_from:
    Core_models.Convert.t_TryFrom t_NoteReshapeFamilyId u32 =
  {
    f_Error = Anyhow.t_Error;
    f_try_from_pre = (fun (x: u32) -> true);
    f_try_from_post
    =
    (fun (x: u32)
        (out: Core_models.Result.t_Result t_NoteReshapeFamilyId Anyhow.t_Error) ->
        true);
    f_try_from
    =
    fun (x: u32) ->
      if
        x =. mk_u32 1 || x =. mk_u32 2 ||
        x =. mk_u32 3 || x =. mk_u32 4
      then
        Core_models.Result.Result_Ok
          (NoteReshapeFamilyId x <: t_NoteReshapeFamilyId)
          <: Core_models.Result.t_Result t_NoteReshapeFamilyId Anyhow.t_Error
      else
        Core_models.Result.Result_Err (Anyhow.Error <: Anyhow.t_Error)
          <: Core_models.Result.t_Result t_NoteReshapeFamilyId Anyhow.t_Error
  }
FSTAR

cat >> proofs/fstar/extraction/Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated.fst <<'FSTAR'

let impl_ShieldedIcs20WithdrawalFamilyId__get
      (self:t_ShieldedIcs20WithdrawalFamilyId)
    : u32 =
  match self <: t_ShieldedIcs20WithdrawalFamilyId with
  | ShieldedIcs20WithdrawalFamilyId value -> value
FSTAR
popd >/dev/null
validate_fstar_boundary_cache
fi

prepare_fstar_inputs "$(find_hax_proof_libs)"

FSTAR_FLAGS=(
  --cache_off
  --include "$FSTAR_SHIMS_DIR"
  --include "$FSTAR_HAX_PROOF_LIBS/rust_primitives"
  --include "$FSTAR_HAX_PROOF_LIBS/core"
  --include "$FSTAR_HAX_LIB_EXTRACTION"
  --include "crates/crypto/proof-aggregation/proofs/fstar/extraction"
  --include "crates/crypto/proof-aggregation/src/ipp/ip_proofs/proofs/fstar/extraction"
  --include "crates/core/component/shielded-pool/proofs/fstar/extraction"
  --include "$FORMAL_DIR/fstar"
)

for proof_name in "${FSTAR_PROOFS[@]}"; do
  proof="$FORMAL_DIR/fstar/$proof_name"
  [ -f "$proof" ] || fail "planned F* proof is missing: $proof"
  "$FSTAR" "${FSTAR_FLAGS[@]}" "$proof"
  FSTAR_CHECKED_ARGS+=(--checked-module "$proof_name")
done
fi

if [ "${SNARKPACK_FSTAR_EVIDENCE_UPDATE:-0}" = "1" ]; then
  python3 "$VERIFICATION_DRIVER" \
    fstar-evidence \
    "${FSTAR_BASE_ARGS[@]}" \
    "${FSTAR_REQUEST_ARGS[@]}" \
    "${FSTAR_CHECKED_ARGS[@]}" \
    --output "$FSTAR_CANDIDATE_FILE"
  mv "$FSTAR_CANDIDATE_FILE" "$FSTAR_EVIDENCE"
else
  python3 "$VERIFICATION_DRIVER" \
    fstar-evidence --check "$FSTAR_EVIDENCE"
fi

echo "snarkpack formal ok"

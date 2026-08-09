#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "snarkpack runtime invariant failed: $*" >&2
  exit 1
}

if ! command -v rg >/dev/null 2>&1; then
  rg() {
    local fixed=0
    local line_numbers=0
    local invert=0
    local opts=()

    while (($#)); do
      case "$1" in
        -F) fixed=1 ;;
        -n) line_numbers=1 ;;
        -v) invert=1 ;;
        --)
          shift
          break
          ;;
        -*) fail "fallback rg does not support option $1" ;;
        *) break ;;
      esac
      shift
    done

    (($# > 0)) || fail "fallback rg requires a pattern"
    local pattern="$1"
    shift

    if ((fixed)); then
      opts+=("-F")
    else
      opts+=("-E")
    fi
    ((line_numbers)) && opts+=("-n")
    ((invert)) && opts+=("-v")

    if (($# > 0)); then
      grep -R "${opts[@]}" -- "$pattern" "$@"
    else
      grep "${opts[@]}" -- "$pattern"
    fi
  }
fi

check_reference_crate_boundary() {
  local manifest="crates/crypto/proof-aggregation-reference/Cargo.toml"
  local crate_dir="crates/crypto/proof-aggregation-reference"

  [[ -f "$manifest" ]] || return

  rg -F '"crates/crypto/proof-aggregation-reference"' Cargo.toml >/dev/null \
    || fail "reference crate must be listed as a workspace member"
  rg -n '^publish = false$' "$manifest" >/dev/null \
    || fail "reference crate must be marked publish = false"
  rg -n '^shieldd-sdk-proof-aggregation = ' "$manifest" >/dev/null \
    || fail "reference crate must use the public proof-aggregation crate boundary"

  local forbidden_deps
  forbidden_deps="$(
    rg -n 'ark-ip-proofs|ark-inner-products|src/ipp|proof-aggregation/src' "$manifest" "$crate_dir/src" || true
  )"
  if [[ -n "$forbidden_deps" ]]; then
    echo "$forbidden_deps" >&2
    fail "reference crate must not depend on or import production internals"
  fi

  local production_reference_imports
  local production_scan_paths=(Cargo.toml)
  while IFS= read -r path; do
    production_scan_paths+=("$path")
  done < <(
    find crates \
      \( -path '*/formal' -o -path '*/formal/*' -o -path '*/.lake' -o -path '*/.lake/*' \) -prune \
      -o \( -type f -name Cargo.toml -o -type d -name src \) -print
  )
  production_reference_imports="$(
    rg -n 'shieldd-sdk-proof-aggregation-reference|proof_aggregation_reference|proof-aggregation-reference' \
      "${production_scan_paths[@]}" \
      | rg -v '^Cargo.toml:|^crates/crypto/proof-aggregation-reference/|^crates/crypto/proof-aggregation-fuzz/|\.md:|\.txt:' || true
  )"
  if [[ -n "$production_reference_imports" ]]; then
    echo "$production_reference_imports" >&2
    fail "production crates must not depend on the dev-only reference oracle"
  fi
}

check_fuzz_crate_boundary() {
  local manifest="crates/crypto/proof-aggregation-fuzz/Cargo.toml"
  local crate_dir="crates/crypto/proof-aggregation-fuzz"

  [[ -f "$manifest" ]] || return

  rg -F '"crates/crypto/proof-aggregation-fuzz"' Cargo.toml >/dev/null \
    || fail "fuzz crate must be listed as a workspace member"
  rg -n '^publish = false$' "$manifest" >/dev/null \
    || fail "fuzz crate must be marked publish = false"
  rg -n '^cargo-fuzz = true$' "$manifest" >/dev/null \
    || fail "fuzz crate must be marked as a cargo-fuzz package"
  rg -n '^libfuzzer-sys = ' "$manifest" >/dev/null \
    || fail "fuzz crate must depend on libfuzzer-sys"
  rg -n '^shieldd-sdk-proof-aggregation = ' "$manifest" >/dev/null \
    || fail "fuzz crate must use the public proof-aggregation crate boundary"

  local forbidden_deps
  forbidden_deps="$(
    rg -n 'ark-ip-proofs|ark-inner-products|src/ipp|proof-aggregation/src' "$manifest" "$crate_dir" || true
  )"
  if [[ -n "$forbidden_deps" ]]; then
    echo "$forbidden_deps" >&2
    fail "fuzz crate must not depend on or import production internals"
  fi

  for target in \
    wrapper_inner_range \
    preflight_aggregate_verify \
    deserialize_aggregate_proof; do
    local corpus_dir="$crate_dir/corpus/$target"
    [[ -d "$corpus_dir" ]] || fail "fuzz corpus missing for $target"
    [[ -n "$(find "$corpus_dir" -type f -print -quit)" ]] \
      || fail "fuzz corpus must contain seed files for $target"
  done
  rg -n 'fuzz-corpus-baseline.md' docs/snarkpack/verification.md >/dev/null \
    || fail "fuzz corpus baseline must be referenced by SnarkPack docs"
}

production_roots=(
  crates/crypto/proof-aggregation/src
  crates/core/app/src
  crates/bench/src
)

if rg -n "deserialize_compressed_unchecked" "${production_roots[@]}"; then
  fail "unchecked aggregate deserialization must not be production-accessible"
fi

if rg -n "USE_UNCHECKED_AGGREGATE_DESERIALIZATION" "${production_roots[@]}"; then
  fail "unchecked aggregate deserialization switch must not be retained"
fi

if rg -n "thread_local!|static CHALLENGE_CONTEXT|static CHALLENGE_TRACE" crates/crypto/proof-aggregation/src/ipp/ip_proofs/src; then
  fail "challenge binding and tracing must not use thread-local fallback state"
fi

challenge_rs=crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs
if rg -n "struct ChallengeContext\\(|impl Default for ChallengeContext|Default.*ChallengeContext|ChallengeContext.*Default" "$challenge_rs"; then
  fail "ChallengeContext must not have a tuple constructor or Default implementation"
fi

challenge_context_footguns="$(
  rg -n "ChallengeContext::default|ChallengeContext\\(\\[" \
    "${production_roots[@]}" || true
)"
if [[ -n "$challenge_context_footguns" ]]; then
  echo "$challenge_context_footguns" >&2
  fail "ChallengeContext must not be default-constructed or tuple-constructed"
fi

unexpected_challenge_context_fns="$(
  sed -n '/impl ChallengeContext {/,/^}/p' "$challenge_rs" \
    | rg -n "pub fn" \
    | rg -v "from_statement_digest|as_bytes" || true
)"
if [[ -n "$unexpected_challenge_context_fns" ]]; then
  echo "$unexpected_challenge_context_fns" >&2
  fail "ChallengeContext must expose only from_statement_digest and as_bytes"
fi

direct_digest_sites="$(
  rg -n "D::digest|Digest::digest" crates/crypto/proof-aggregation/src/ipp/ip_proofs/src \
    | grep -v "src/ipp/ip_proofs/src/challenge.rs" || true
)"
if [[ -n "$direct_digest_sites" ]]; then
  echo "$direct_digest_sites" >&2
  fail "Fiat-Shamir challenges must use challenge::challenge_digest"
fi

duplicate_codec_sites="$(
  rg -n "fn (encode_.*statement|statement_.*encode|decode_.*aggregate_proof|encode_.*aggregate_proof|decode_wrapped|encode_wrapped)" \
    crates/crypto/proof-aggregation/src \
    | rg -v "crates/crypto/proof-aggregation/src/(statement.rs|aggregate_proof_wrapper.rs):" || true
)"
if [[ -n "$duplicate_codec_sites" ]]; then
  echo "$duplicate_codec_sites" >&2
  fail "statement and aggregate-proof encoding/decoding must stay in the canonical modules"
fi

rg -n "preflight_aggregate_verify" crates/crypto/proof-aggregation/src/backend.rs >/dev/null \
  || fail "backend verifier must pass through typed aggregate preflight"
rg -n "decode_wrapped_aggregate_proof" crates/crypto/proof-aggregation/src/preflight.rs >/dev/null \
  || fail "typed aggregate preflight must decode aggregate proof wrappers"
rg -n "statement.statement_digest\\(\\)" crates/crypto/proof-aggregation/src/preflight.rs >/dev/null \
  || fail "wrapper decode must compare against the recomputed statement digest in preflight"

check_reference_crate_boundary
check_fuzz_crate_boundary

echo "snarkpack runtime invariants ok"

#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "snarkpack invariant failed: $*" >&2
  exit 1
}

markdown_field() {
  local row="$1"
  local index="$2"
  printf '%s\n' "$row" | awk -F'|' -v idx="$index" '{
    field = $idx
    gsub(/^[[:space:]]+|[[:space:]]+$/, "", field)
    print field
  }'
}

hash_file() {
  local file="$1"
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$file" | awk '{print $1}'
  else
    shasum -a 256 "$file" | awk '{print $1}'
  fi
}

hash_stdin() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum | awk '{print $1}'
  else
    shasum -a 256 | awk '{print $1}'
  fi
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

formal_proof_stamp() {
  {
    hash_file scripts/snarkpack-formal.sh | awk '{print $1 "  scripts/snarkpack-formal.sh"}'
    hash_file crates/crypto/proof-aggregation/formal/snarkpack/toolchain.toml \
      | awk '{print $1 "  crates/crypto/proof-aggregation/formal/snarkpack/toolchain.toml"}'
    for file in crates/crypto/proof-aggregation/formal/snarkpack/fstar/*.fst; do
      printf '%s  %s\n' "$(hash_file "$file")" "$file"
    done
  } | hash_stdin
}

target_source_file() {
  case "$1" in
    shieldd_sdk_proof_aggregation::statement::*)
      printf '%s\n' crates/crypto/proof-aggregation/src/statement.rs ;;
    shieldd_sdk_proof_aggregation::srs::*)
      printf '%s\n' crates/crypto/proof-aggregation/src/srs.rs ;;
    shieldd_sdk_proof_aggregation::aggregate_proof_wrapper::*)
      printf '%s\n' crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs ;;
    shieldd_sdk_proof_aggregation::preflight::*)
      printf '%s\n' crates/crypto/proof-aggregation/src/preflight.rs ;;
    shieldd_sdk_proof_aggregation::bundle::*)
      printf '%s\n' crates/crypto/proof-aggregation/src/bundle.rs ;;
    ark_ip_proofs::challenge::*)
      printf '%s\n' crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs ;;
    ark_ip_proofs::gipa::*)
      printf '%s\n' crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs ;;
    ark_ip_proofs::tipa::*)
      printf '%s\n' crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs ;;
    ark_ip_proofs::applications::groth16_aggregation::*)
      printf '%s\n' crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs ;;
    *)
      return 1 ;;
  esac
}

check_s2_target_completeness() {
  local targets=crates/crypto/proof-aggregation/formal/snarkpack/hax-targets.txt
  local boundary=crates/crypto/proof-aggregation/formal/snarkpack/hax-extraction-boundary.md
  [[ -f "$targets" ]] || fail "S2 hax target list is missing"
  [[ -f "$boundary" ]] || fail "S2 hax extraction boundary is missing"

  local duplicates
  duplicates="$({ sed -e 's/\r$//' -e '/^[[:space:]]*#/d' -e '/^[[:space:]]*$/d' "$targets"; } | sort | uniq -d)"
  if [[ -n "$duplicates" ]]; then
    echo "$duplicates" >&2
    fail "hax-targets.txt contains duplicate targets"
  fi

  local target source leaf
  while IFS= read -r target; do
    target="$(printf '%s' "$target" | tr -d '\r')"
    [[ -z "$target" || "$target" =~ ^[[:space:]]*# ]] && continue
    source="$(target_source_file "$target")" \
      || fail "hax target $target has no production source mapping"
    [[ -f "$source" ]] || fail "hax target $target source $source is missing"
    leaf="${target##*::}"
    grep -Eq "^[[:space:]]*(pub[[:space:]]*(\([^)]*\))?[[:space:]]*)?(fn|struct|enum|trait|type)[[:space:]]+$leaf([[:space:](<{]|$)" "$source" \
      || fail "hax target $target has no declaration in $source"
    grep -F "| \`$target\` |" "$boundary" >/dev/null \
      || fail "hax target $target is missing extraction-boundary metadata"
  done < "$targets"
}

check_s2_generated_freshness() {
  local checker=crates/crypto/proof-aggregation/formal/lean-ipp/scripts/extractions.py
  [[ -f "$checker" ]] || fail "Lean extraction manifest checker is missing"
  python3 "$checker" check || fail "Lean extraction manifest check failed"
}

check_s2_extracted_directory() {
  local extracted_dir=crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted
  local forbidden
  forbidden="$(
    grep -R -n -E '\b(axiom|sorry|admit|native_decide)\b' "$extracted_dir" \
      | grep -vE '#print axioms|result axiom' || true
  )"
  if [[ -n "$forbidden" ]]; then
    echo "$forbidden" >&2
    fail "Ipp/Extracted contains an unrecorded axiom, sorry, admit, or native_decide"
  fi
}

check_s2_refinement_theorems() {
  local manifest=crates/crypto/proof-aggregation/formal/snarkpack/s2-refinement-theorems.txt
  local audit=crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/S2AxiomAudit.lean
  [[ -f "$manifest" ]] || fail "S2 refinement theorem list is missing"
  [[ -f "$audit" ]] || fail "S2 axiom audit fixture is missing"

  local duplicate_names
  duplicate_names="$(awk -F'|' '!/^[[:space:]]*#/ && NF == 2 { print $2 }' "$manifest" | sort | uniq -d)"
  if [[ -n "$duplicate_names" ]]; then
    echo "$duplicate_names" >&2
    fail "S2 refinement theorem list contains duplicate names"
  fi

  local source qualified name
  while IFS='|' read -r source qualified; do
    [[ -z "$source" || "$source" =~ ^[[:space:]]*# ]] && continue
    [[ -f "crates/crypto/proof-aggregation/formal/lean-ipp/$source" ]] \
      || fail "S2 theorem source is missing: $source"
    name="${qualified##*.}"
    grep -Eq "^[[:space:]]*(theorem|lemma|def)[[:space:]]+$name([[:space:](<{]|$)" \
      "crates/crypto/proof-aggregation/formal/lean-ipp/$source" \
      || fail "S2 theorem $qualified is not declared in $source"
  done < <(tr -d '\r' < "$manifest")
}

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
  production_reference_imports="$(
    rg -n 'shieldd-sdk-proof-aggregation-reference|proof_aggregation_reference|proof-aggregation-reference' \
      Cargo.toml crates \
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
  rg -n '^shieldd-sdk-proof-aggregation-reference = ' "$manifest" >/dev/null \
    || fail "fuzz crate must use the reference oracle crate as a dev-only boundary"

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
    deserialize_aggregate_proof \
    sidecar_decoding \
    aggregate_bundle_shape \
    proposal_validation; do
    local corpus_dir="$crate_dir/corpus/$target"
    [[ -d "$corpus_dir" ]] || fail "fuzz corpus missing for $target"
    [[ -n "$(find "$corpus_dir" -type f -print -quit)" ]] \
      || fail "fuzz corpus must contain seed files for $target"
  done
  rg -n 'fuzz-corpus-baseline.md' docs/snarkpack/verification.md >/dev/null \
    || fail "fuzz corpus baseline must be referenced by SnarkPack docs"
}

if rg -n "deserialize_compressed_unchecked" crates/crypto/proof-aggregation crates/core/app crates/bench; then
  fail "unchecked aggregate deserialization must not be production-accessible"
fi

if rg -n "USE_UNCHECKED_AGGREGATE_DESERIALIZATION" crates/crypto/proof-aggregation crates/core/app crates/bench; then
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
    crates/crypto/proof-aggregation/src \
    crates/core/app \
    crates/bench || true
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

if rg -n "\\badmit\\b|--admit_smt_queries" crates/crypto/proof-aggregation/formal/snarkpack/fstar scripts/snarkpack-formal.sh; then
  fail "formal proofs must not use unrecorded admits or --admit_smt_queries"
fi

if rg -n "assume val impl_u32__is_power_of_two" scripts/snarkpack-formal.sh >/dev/null; then
  rg -n "impl_u32__is_power_of_two" crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md >/dev/null \
    || fail "hax power-of-two support assumption must be recorded in formal-handoff.md"
fi

if rg -n "assume val impl__starts_with" scripts/snarkpack-formal.sh >/dev/null; then
  rg -n "impl__starts_with" crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md >/dev/null \
    || fail "hax slice starts_with support assumption must be recorded in formal-handoff.md"
fi

hax_targets=crates/crypto/proof-aggregation/formal/snarkpack/hax-targets.txt
hax_boundary=crates/crypto/proof-aggregation/formal/snarkpack/hax-extraction-boundary.md
if [[ -f "$hax_targets" ]]; then
  [[ -f "$hax_boundary" ]] || fail "hax extraction boundary metadata is missing"
  while IFS= read -r target; do
    [[ -z "$target" || "$target" =~ ^# ]] && continue
    rg -F "| \`$target\` |" "$hax_boundary" >/dev/null \
      || fail "hax target $target is missing extraction-boundary metadata"
  done < <(tr -d '\r' < "$hax_targets")
fi

if rg -n "assume val" scripts/snarkpack-formal.sh >/dev/null; then
  while IFS= read -r assumed_symbol; do
    [[ -z "$assumed_symbol" ]] && continue
    rg -F "$assumed_symbol" "$hax_boundary" >/dev/null \
      || fail "hax assume val $assumed_symbol lacks extraction-boundary metadata"
  done < <(sed -n 's/^assume val \([^:]*\):.*/\1/p' scripts/snarkpack-formal.sh | tr -d '\r')
fi

formal_handoff=crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md
open_handoff_rows="$(rg -n '\|[[:space:]]*`?open`?[[:space:]]*\|' "$formal_handoff" || true)"
if [[ -n "$open_handoff_rows" ]]; then
  echo "$open_handoff_rows" >&2
  fail "formal-handoff.md must not contain open evidence rows"
fi

while IFS= read -r row; do
  assumption="$(markdown_field "$row" 2)"
  owner="$(markdown_field "$row" 3)"
  rationale="$(markdown_field "$row" 4)"
  evidence="$(markdown_field "$row" 6)"
  removal_path="$(markdown_field "$row" 7)"
  signoff="$(markdown_field "$row" 8)"
  status="$(markdown_field "$row" 9)"
  [[ "$status" == 'assumed' || "$status" == '`assumed`' ]] || continue

  [[ -n "$owner" && "$owner" != "pending" ]] \
    || fail "assumption row $assumption lacks owner"
  [[ -n "$rationale" && "$rationale" != "pending" ]] \
    || fail "assumption row $assumption lacks rationale"
  [[ -n "$evidence" && "$evidence" != "pending" ]] \
    || fail "assumption row $assumption lacks supporting evidence"
  [[ "$evidence" == *"Postcondition:"* ]] \
    || fail "assumption row $assumption lacks an explicit postcondition"
  [[ -n "$removal_path" && "$removal_path" != "pending" ]] \
    || fail "assumption row $assumption lacks removal path"
  [[ -n "$signoff" && "$signoff" != "pending" ]] \
    || fail "assumption row $assumption lacks required signoff"
  if [[ "$evidence" == *"planned"* || "$evidence" == *"required tests"* || "$evidence" == *"Required tests"* ]]; then
    fail "assumption row $assumption still names planned or required tests instead of passing tests"
  fi
done < <(awk '/^## Assumptions$/ { in_table = 1; next } /^## / && in_table { in_table = 0 } in_table && /^\|/ && $0 !~ /^\| ---/ && $0 !~ /^\| Assumption / { print }' "$formal_handoff" | tr -d '\r')

check_s2_target_completeness
check_s2_generated_freshness
check_s2_extracted_directory
check_s2_refinement_theorems

check_reference_crate_boundary
check_fuzz_crate_boundary

expected_stamp="$(formal_proof_stamp)"
recorded_stamp="$(
  sed -n 's/^Proof artifact stamp: sha256:\([0-9a-f]\{64\}\)$/\1/p' \
    crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md
)"
if [[ -z "$recorded_stamp" ]]; then
  fail "formal-handoff.md must record the proof artifact SHA256 stamp"
fi
if [[ "$recorded_stamp" != "$expected_stamp" ]]; then
  echo "expected proof artifact stamp: sha256:$expected_stamp" >&2
  echo "recorded proof artifact stamp: sha256:$recorded_stamp" >&2
  fail "formal proof files changed without restamping formal-handoff.md"
fi

rg -n "preflight_aggregate_verify" crates/crypto/proof-aggregation/src/backend.rs >/dev/null \
  || fail "backend verifier must pass through typed aggregate preflight"
rg -n "decode_wrapped_aggregate_proof" crates/crypto/proof-aggregation/src/preflight.rs >/dev/null \
  || fail "typed aggregate preflight must decode aggregate proof wrappers"
rg -n "statement.statement_digest\\(\\)" crates/crypto/proof-aggregation/src/preflight.rs >/dev/null \
  || fail "wrapper decode must compare against the recomputed statement digest in preflight"

echo "snarkpack invariants ok"

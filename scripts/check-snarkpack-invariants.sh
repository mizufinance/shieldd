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

check_hax_target_completeness() {
  local targets=crates/crypto/proof-aggregation/formal/snarkpack/hax-targets.txt
  local boundary=crates/crypto/proof-aggregation/formal/snarkpack/hax-extraction-boundary.md
  [[ -f "$targets" ]] || fail "hax target list is missing"
  [[ -f "$boundary" ]] || fail "hax extraction boundary is missing"

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
    rg -F "| \`$target\` |" "$boundary" >/dev/null \
      || fail "hax target $target is missing extraction-boundary metadata"
  done < "$targets"
}

if rg -n "\\badmit\\b|--admit_smt_queries" \
  crates/crypto/proof-aggregation/formal/snarkpack/fstar scripts/snarkpack-formal.sh; then
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

hax_boundary=crates/crypto/proof-aggregation/formal/snarkpack/hax-extraction-boundary.md
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

check_hax_target_completeness

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

echo "snarkpack invariants ok"

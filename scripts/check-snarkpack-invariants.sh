#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "snarkpack invariant failed: $*" >&2
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
    shieldd_sdk_shielded_pool::note_reshape::generated::*)
      printf '%s\n' crates/core/component/shielded-pool/src/note_reshape/generated.rs ;;
    shieldd_sdk_shielded_pool::shielded_ics20_withdrawal::generated::*)
      printf '%s\n' crates/core/component/shielded-pool/src/shielded_ics20_withdrawal/generated.rs ;;
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
    local boundary_rows
    boundary_rows="$(grep -F -c -- "| \`$target\` |" "$boundary" || true)"
    [[ "$boundary_rows" == 1 ]] \
      || fail "hax target $target must have exactly one extraction-boundary row (found $boundary_rows)"
  done < "$targets"
}

check_fstar_driver_target_inventory() {
  python3 - \
    scripts/snarkpack-formal.sh \
    crates/crypto/proof-aggregation/formal/snarkpack/hax-targets.txt <<'PY'
import re
import sys
from pathlib import Path

driver = Path(sys.argv[1]).read_text(encoding="utf-8")
declared = {
    line.strip()
    for line in Path(sys.argv[2]).read_text(encoding="utf-8").splitlines()
    if line.strip() and not line.lstrip().startswith("#")
}
filters = re.findall(r"-i\s+'([^']+)'", driver)
if not filters:
    raise SystemExit("snarkpack invariant failed: no hax inclusion filters found")
required = {
    token[1:]
    for filter_text in filters
    for token in filter_text.split()
    if token.startswith("+")
}
if not required:
    raise SystemExit("snarkpack invariant failed: hax filters select zero roots")
missing = sorted(required - declared)
if missing:
    raise SystemExit(
        "snarkpack invariant failed: formal hax targets missing from "
        "hax-targets.txt: " + ", ".join(missing)
    )
PY
}

if rg -n "\\badmit\\b|--admit_smt_queries" \
  crates/crypto/proof-aggregation/formal/snarkpack/fstar scripts/snarkpack-formal.sh; then
  fail "formal proofs must not use unrecorded admits or --admit_smt_queries"
fi

if rg -n "assume[[:space:]]+val" \
  scripts/snarkpack-formal.sh \
  crates/crypto/proof-aggregation/formal/snarkpack/fstar; then
  fail "local F* support assumptions are forbidden; provide checked definitions and lemmas"
fi

check_hax_target_completeness
check_fstar_driver_target_inventory

verification_manifest=crates/crypto/proof-aggregation/formal/lean-ipp/scripts/verification_manifest.py
formal_handoff=crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md
operation_handoff=crates/crypto/proof-aggregation/formal/snarkpack/operation-reduction-register.md
dependency_graph=crates/crypto/proof-aggregation/formal/snarkpack/theorem-dependency-graph.md
python="${PYTHON:-python3}"
"$python" "$verification_manifest" validate
"$python" "$verification_manifest" render --check "$formal_handoff"
"$python" "$verification_manifest" render-operations --check "$operation_handoff"
"$python" "$verification_manifest" render-graph --check "$dependency_graph"

echo "snarkpack invariants ok"

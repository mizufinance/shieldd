#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

fail() {
  echo "constraint coverage check failed: $*" >&2
  exit 1
}

sha256_file() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$1" | awk '{print $1}'
  else
    shasum -a 256 "$1" | awk '{print $1}'
  fi
}

select_circuits() {
  if [[ "$#" -eq 0 ]]; then
    printf '%s\n' consolidate2x1 transfer
    return
  fi
  while [[ "$#" -gt 0 ]]; do
    case "$1" in
      --circuit)
        shift
        [[ "$#" -gt 0 ]] || fail "--circuit requires an argument"
        case "$1" in
          all) printf '%s\n' consolidate2x1 transfer ;;
          consolidate2x1|transfer) printf '%s\n' "$1" ;;
          *) fail "unsupported circuit $1" ;;
        esac
        ;;
      all)
        printf '%s\n' consolidate2x1 transfer
        ;;
      consolidate2x1|transfer)
        printf '%s\n' "$1"
        ;;
      *)
        fail "unsupported circuit argument $1"
        ;;
    esac
    shift
  done | awk '!seen[$0]++'
}

lean_src_dir="$ROOT/tools/gnark/lean"

# Cheap dangling-reference gate: every bridge_theorem named in a manifest must
# resolve as a fully qualified Lean declaration. This checks the name exists; the
# full Lean tier still type-checks theorem uses in the whole-circuit artifacts.
check_bridge_theorems() {
  local report="$1" circuit="$2" lean_check="$tmp_dir/$circuit-bridge-theorems.lean"
  {
    echo "import ShielddGnarkFormal"
    jq -r '.segments[].bridge_theorem // empty' "$report" | sort -u | while IFS= read -r thm; do
      [[ -z "$thm" ]] && continue
      printf '#check %s\n' "$thm"
    done
  } > "$lean_check"
  (
    cd "$lean_src_dir"
    lake env lean "$lean_check" >/dev/null
  ) || fail "one or more bridge_theorem names do not resolve as fully qualified Lean declarations for $circuit"
}

artifact_dir_for_circuit() {
  case "$1" in
    consolidate2x1) printf '%s\n' "$ROOT/tools/gnark/artifacts/consolidate2x1" ;;
    transfer) printf '%s\n' "$ROOT/tools/gnark/artifacts/transfer" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

formal_report_for_circuit() {
  case "$1" in
    consolidate2x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-constraint-coverage-report.json" ;;
    transfer) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/transfer-constraint-coverage-report.json" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

selected_circuits="$(select_circuits "$@")"
[[ -n "$selected_circuits" ]] || fail "no circuits selected"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  artifact_dir="$(artifact_dir_for_circuit "$circuit")"
  manifest="$artifact_dir/$circuit-manifest.json"
  sr1cs="$artifact_dir/$circuit.sr1cs"
  metadata="$artifact_dir/circuit_metadata.json"
  vk_json="$artifact_dir/verifying_key.json"
  report="$(formal_report_for_circuit "$circuit")"
  report_stamp="$report.sha256"
  tmp_report="$tmp_dir/$circuit-coverage-report.json"

  [[ -f "$manifest" ]] || fail "missing manifest $manifest"
  [[ -f "$sr1cs" ]] || fail "missing sr1cs $sr1cs"
  [[ -f "$metadata" ]] || fail "missing metadata $metadata"
  [[ -f "$vk_json" ]] || fail "missing verifying key $vk_json"
  [[ -f "$report" ]] || fail "missing coverage report $report"
  [[ -f "$report_stamp" ]] || fail "missing coverage report stamp $report_stamp"

  (
    cd "$ROOT"
    cargo run -q -p shieldd-constraint-coverage -- \
      --manifest "$manifest" \
      --sr1cs "$sr1cs" \
      --report-out "$tmp_report"
  )
  if ! cmp -s "$tmp_report" "$report"; then
    diff -u "$report" "$tmp_report" >&2 || true
    fail "coverage report drift for $circuit"
  fi
  [[ "$(cat "$report_stamp")" == "$(sha256_file "$report")" ]] \
    || fail "coverage report stamp mismatch for $circuit"

  report_sr1cs_sha="$(jq -r '.sr1cs_sha256_hex' "$report")"
  report_manifest_sha="$(jq -r '.manifest_sha256_hex' "$report")"
  [[ "$report_sr1cs_sha" == "$(sha256_file "$sr1cs")" ]] \
    || fail "coverage report sr1cs hash mismatch for $circuit"
  [[ "$report_manifest_sha" == "$(sha256_file "$manifest")" ]] \
    || fail "coverage report manifest hash mismatch for $circuit"

  metadata_constraints="$(jq -r '.nb_constraints' "$metadata")"
  report_constraints="$(jq -r '.nb_constraints' "$report")"
  [[ "$metadata_constraints" == "$report_constraints" ]] \
    || fail "metadata/report constraint-count mismatch for $circuit"

  metadata_vk_sha="$(jq -r '.verifying_key_sha256_hex' "$metadata")"
  [[ "$metadata_vk_sha" == "$(sha256_file "$vk_json")" ]] \
    || fail "metadata verifying_key_sha256_hex does not match bundled verifying_key.json for $circuit"

  check_bridge_theorems "$report" "$circuit"
done < <(printf '%s\n' "$selected_circuits")

echo "constraint coverage ok: circuits=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"

#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
require_full_deployed=0
check_typed_bindings=0

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
      --require-full-deployed)
        ;;
      --check-typed-bindings)
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
cli_args=()
while [[ "$#" -gt 0 ]]; do
  case "$1" in
    --require-full-deployed)
      require_full_deployed=1
      ;;
    --check-typed-bindings)
      check_typed_bindings=1
      ;;
    *)
      cli_args+=("$1")
      ;;
  esac
  shift
done

# Cheap dangling-reference gate: every bridge_theorem named in a manifest must
# resolve as a fully qualified Lean declaration. This checks the name exists; the
# full Lean tier still type-checks theorem uses in the whole-circuit artifacts.
check_bridge_theorems() {
  local report="$1" circuit="$2" lean_check="$tmp_dir/$circuit-bridge-theorems.lean"
  local bounds_module="ShielddGnarkFormal.Deployed.Contracts.$(contract_module_dir_for_circuit "$circuit").Bounds"
  local bounds_path="$lean_src_dir/${bounds_module//.//}.lean"
  local capstone_module="${bounds_module%.Bounds}.Capstone"
  local capstone_path="$lean_src_dir/${capstone_module//.//}.lean"
  local statement_module="${bounds_module%.Bounds}.Statement"
  local statement_path="$lean_src_dir/${statement_module//.//}.lean"
  if [[ -f "$bounds_path" ]]; then
    lake build "$bounds_module" >/dev/null \
      || fail "deployed bounds module does not build for $circuit"
  fi
  if [[ -f "$capstone_path" ]]; then
    lake build "$capstone_module" >/dev/null \
      || fail "deployed capstone module does not build for $circuit"
  fi
  if [[ -f "$statement_path" ]]; then
    lake build "$statement_module" >/dev/null \
      || fail "deployed statement module does not build for $circuit"
  fi
  {
    echo "import ShielddGnarkFormal"
    if [[ -f "$bounds_path" ]]; then
      printf 'import %s\n' "$bounds_module"
    fi
    if [[ -f "$capstone_path" ]]; then
      printf 'import %s\n' "$capstone_module"
    fi
    if [[ -f "$statement_path" ]]; then
      printf 'import %s\n' "$statement_module"
    fi
    if [[ -f "$capstone_path" ]]; then
      local capstone_ns="Shieldd.GnarkFormal.${capstone_module#ShielddGnarkFormal.}"
      printf '#check @%s.%s_deployed_sound\n' "${capstone_ns%.Capstone}" "$circuit"
    fi
    if [[ -f "$statement_path" ]]; then
      local statement_ns="Shieldd.GnarkFormal.${statement_module#ShielddGnarkFormal.}"
      printf '#check @%s.%s_statement\n' "${statement_ns%.Statement}" "$circuit"
    fi
    jq -r '
      .segments[].bridge_theorem // empty,
      .deployed_obligations.obligations[]?.verdict.lean_theorem // empty
    ' "$report" | sort -u | while IFS= read -r thm; do
      [[ -z "$thm" ]] && continue
      printf '#check %s\n' "$thm"
    done
  } > "$lean_check"
  lake env lean "$lean_check" >/dev/null \
    || fail "one or more bridge_theorem names do not resolve as fully qualified Lean declarations for $circuit"
}

check_typed_contract_theorems() {
  local report="$1" circuit="$2" lean_check="$tmp_dir/$circuit-contract-theorems.lean"
  local imports_file="$tmp_dir/$circuit-contract-imports.txt"
  local module_import
  jq -r '
    .deployed_obligations.obligations[]?
    | select(.verdict.kind == "discharged" or .verdict.kind == "functional_assumption")
    | .verdict.lean_contract
  ' "$report" | sort -u | while IFS= read -r contract_module; do
    [[ -z "$contract_module" ]] && continue
    printf '%s\n' "${contract_module/#Shieldd.GnarkFormal/ShielddGnarkFormal}"
  done > "$imports_file"

  local bounds_module="ShielddGnarkFormal.Deployed.Contracts.$(contract_module_dir_for_circuit "$circuit").Bounds"
  local bounds_path="$lean_src_dir/${bounds_module//.//}.lean"
  if [[ -f "$bounds_path" ]]; then
    printf '%s\n' "$bounds_module" >> "$imports_file"
    sort -u "$imports_file" -o "$imports_file"
  fi

  if [[ -s "$imports_file" ]]; then
    xargs lake build < "$imports_file" >/dev/null \
      || fail "one or more deployed contract modules do not build for $circuit"
  fi

  {
    echo "import ShielddGnarkFormal"
    while IFS= read -r module_import; do
      [[ -z "$module_import" ]] && continue
      printf 'import %s\n' "$module_import"
    done < "$imports_file"
    echo "import ShielddGnarkFormal.Deployed.Contract"
    jq -r '
      .deployed_obligations.obligations[]?
      | select(.verdict.kind == "discharged" or .verdict.kind == "functional_assumption")
      | [.verdict.lean_theorem, .verdict.lean_contract, .relation_sha256_hex, .wire_role_sha256_hex]
      | @tsv
    ' "$report" | while IFS=$'\t' read -r thm contract_module relation_hash wire_role_hash; do
      [[ -z "$thm" || -z "$contract_module" ]] && continue
      printf '#check (%s : Shieldd.GnarkFormal.Deployed.BoundDeployedSound %s.contract "%s" "%s")\n' \
        "$thm" "$contract_module" "$relation_hash" "$wire_role_hash"
    done
  } > "$lean_check"
  lake env lean "$lean_check" >/dev/null \
    || fail "one or more deployed theorem types do not match their generated contracts for $circuit"
}

check_generated_contracts() {
  local committed_dir="$1" generated_dir="$2" circuit="$3"
  local committed_list="$tmp_dir/$circuit-committed-contracts.txt"
  local generated_list="$tmp_dir/$circuit-generated-contracts.txt"
  local contract_file

  [[ -d "$committed_dir" ]] || fail "missing committed deployed contract dir $committed_dir"
  [[ -d "$generated_dir" ]] || fail "missing generated deployed contract dir $generated_dir"

  (
    cd "$committed_dir"
    find . -maxdepth 1 -type f -name 'Seg*.lean' | sed 's#^\./##' | sort
  ) > "$committed_list"
  (
    cd "$generated_dir"
    find . -maxdepth 1 -type f -name 'Seg*.lean' | sed 's#^\./##' | sort
  ) > "$generated_list"

  if ! cmp -s "$committed_list" "$generated_list"; then
    comm -23 "$committed_list" "$generated_list" \
      | sed 's/^/Only in committed generated contracts: /' >&2
    comm -13 "$committed_list" "$generated_list" \
      | sed 's/^/Only in generated contracts: /' >&2
    fail "generated deployed contract set drifted for $circuit"
  fi

  while IFS= read -r contract_file; do
    [[ -z "$contract_file" ]] && continue
    if ! cmp -s "$committed_dir/$contract_file" "$generated_dir/$contract_file"; then
      diff -u "$committed_dir/$contract_file" "$generated_dir/$contract_file" >&2 || true
      fail "generated deployed contract drifted for $circuit: $contract_file"
    fi
  done < "$generated_list"
}

coverage_manifest_for_circuit() {
  case "$1" in
    consolidate2x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-coverage-manifest.json" ;;
    transfer) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/transfer-coverage-manifest.json" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

coverage_ir_for_circuit() {
  case "$1" in
    consolidate2x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/consolidate2x1-deployed-slice-ir.json" ;;
    transfer) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/transfer-deployed-slice-ir.json" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

contract_module_dir_for_circuit() {
  case "$1" in
    consolidate2x1) printf '%s\n' Consolidate2x1 ;;
    transfer) printf '%s\n' Transfer ;;
    *) fail "unsupported circuit $1" ;;
  esac
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

if [[ "${#cli_args[@]}" -eq 0 ]]; then
  selected_circuits="$(select_circuits)"
else
  selected_circuits="$(select_circuits "${cli_args[@]}")"
fi
[[ -n "$selected_circuits" ]] || fail "no circuits selected"

tmp_dir="$(mktemp -d)"
trap 'if [[ -z "${KEEP_TMP:-}" ]]; then rm -rf "$tmp_dir"; fi' EXIT

# Every `lake` invocation below (bridge-theorem checks, typed-contract builds)
# resolves the Lean project from the current directory, so run from the Lean
# source root. All file paths are absolute ($ROOT/...), and the cargo runs that
# need the repo root cd into "$ROOT" inside their own subshells.
cd "$lean_src_dir"

# Fetch the prebuilt Mathlib olean cache before any `lake build` so the bounds/
# capstone/statement modules link against downloaded dependencies instead of
# recompiling Mathlib from source (which blows the CI timeout). Non-fatal: a
# cache miss just falls back to a source build.
lake exe cache get >/dev/null 2>&1 || true

while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  artifact_dir="$(artifact_dir_for_circuit "$circuit")"
  manifest="$artifact_dir/$circuit-manifest.json"
  sr1cs="$artifact_dir/$circuit.sr1cs"
  metadata="$artifact_dir/circuit_metadata.json"
  vk_json="$artifact_dir/verifying_key.json"
  report="$(formal_report_for_circuit "$circuit")"
  coverage_manifest="$(coverage_manifest_for_circuit "$circuit")"
  coverage_ir="$(coverage_ir_for_circuit "$circuit")"
  report_stamp="$report.sha256"
  coverage_manifest_stamp="$coverage_manifest.sha256"
  coverage_ir_stamp="$coverage_ir.sha256"
  tmp_report="$tmp_dir/$circuit-coverage-report.json"
  contract_module_dir="$(contract_module_dir_for_circuit "$circuit")"
  committed_contract_dir="$ROOT/tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/$contract_module_dir"
  tmp_contract_root="$tmp_dir/$circuit-contracts"
  tmp_contract_dir="$tmp_contract_root/$contract_module_dir"
  contracts_checked=0

  [[ -f "$manifest" ]] || fail "missing manifest $manifest"
  [[ -f "$sr1cs" ]] || fail "missing sr1cs $sr1cs"
  [[ -f "$metadata" ]] || fail "missing metadata $metadata"
  [[ -f "$vk_json" ]] || fail "missing verifying key $vk_json"
  [[ -f "$report" ]] || fail "missing coverage report $report"
  [[ -f "$report_stamp" ]] || fail "missing coverage report stamp $report_stamp"
  [[ -f "$coverage_manifest" ]] || fail "missing deployed coverage manifest $coverage_manifest"
  [[ -f "$coverage_ir" ]] || fail "missing deployed slice IR $coverage_ir"
  [[ -f "$coverage_manifest_stamp" ]] || fail "missing deployed coverage manifest stamp $coverage_manifest_stamp"
  [[ -f "$coverage_ir_stamp" ]] || fail "missing deployed slice IR stamp $coverage_ir_stamp"

  (
    cd "$ROOT"
    cargo run -q -p shieldd-constraint-coverage -- \
      --manifest "$manifest" \
      --sr1cs "$sr1cs" \
      --coverage-manifest "$coverage_manifest" \
      --coverage-ir "$coverage_ir" \
      --report-out "$tmp_report"
  )
  if [[ -d "$committed_contract_dir" ]]; then
    (
      cd "$ROOT"
      cargo run -q -p shieldd-constraint-coverage -- \
        --manifest "$manifest" \
        --sr1cs "$sr1cs" \
        --lean-contract-out "$tmp_contract_root"
    )
    check_generated_contracts "$committed_contract_dir" "$tmp_contract_dir" "$circuit"
    contracts_checked=1
  fi
  if ! cmp -s "$tmp_report" "$report"; then
    diff -u "$report" "$tmp_report" >&2 || true
    fail "coverage report drift for $circuit"
  fi
  [[ "$(cat "$report_stamp")" == "$(sha256_file "$report")" ]] \
    || fail "coverage report stamp mismatch for $circuit"
  [[ "$(cat "$coverage_manifest_stamp")" == "$(sha256_file "$coverage_manifest")" ]] \
    || fail "deployed coverage manifest stamp mismatch for $circuit"
  [[ "$(cat "$coverage_ir_stamp")" == "$(sha256_file "$coverage_ir")" ]] \
    || fail "deployed slice IR stamp mismatch for $circuit"

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

  jq -e '.deployed_obligations != null' "$report" >/dev/null \
    || fail "coverage report does not contain deployed obligation verdicts for $circuit"
  jq -e '
    .deployed_obligations as $d
    | ($d.class_errors | length) == 0
      and $d.unmapped == 0
      and $d.constant_mismatch == 0
      and $d.instance_unpinned == 0
      and ($d.theorem_missing // 0) == 0
      and ($d.contract_missing // 0) == 0
      and $d.relation_mismatch == 0
      and $d.wire_role_mismatch == 0
  ' "$report" >/dev/null \
    || fail "deployed coverage manifest is inconsistent with the IR for $circuit"

  if [[ "$require_full_deployed" -eq 1 ]]; then
    jq -e '
      .deployed_obligations as $d
      | $d.discharged == $d.total_obligations
        and $d.pending == 0
        and $d.functional_assumptions == 0
        and $d.unmapped == 0
        and $d.constant_mismatch == 0
        and $d.instance_unpinned == 0
        and ($d.theorem_missing // 0) == 0
        and ($d.contract_missing // 0) == 0
        and $d.relation_mismatch == 0
        and $d.wire_role_mismatch == 0
    ' "$report" >/dev/null \
      || fail "deployed coverage is not full for $circuit"
  fi
  if [[ "$require_full_deployed" -eq 1 || "$check_typed_bindings" -eq 1 ]]; then
    if [[ "$contracts_checked" -eq 0 ]]; then
      [[ -d "$committed_contract_dir" ]] \
        || fail "missing committed deployed contract dir $committed_contract_dir"
      (
        cd "$ROOT"
        cargo run -q -p shieldd-constraint-coverage -- \
          --manifest "$manifest" \
          --sr1cs "$sr1cs" \
          --lean-contract-out "$tmp_contract_root"
      )
      check_generated_contracts "$committed_contract_dir" "$tmp_contract_dir" "$circuit"
      contracts_checked=1
    fi
    check_typed_contract_theorems "$report" "$circuit"
  fi

  check_bridge_theorems "$report" "$circuit"
done < <(printf '%s\n' "$selected_circuits")

echo "constraint coverage ok: circuits=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"

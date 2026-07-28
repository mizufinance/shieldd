#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
require_full_deployed=0
check_typed_bindings=0
# The default run is Rust-only. Optional theorem checks assume the caller has
# already built the selected circuit-facts closure; this script never builds
# the umbrella formalization.
run_lean_theorem_checks=0

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
  local selected=()
  local candidate existing seen

  add_circuit() {
    candidate="$1"
    seen=0
    if [[ "${#selected[@]}" -gt 0 ]]; then
      for existing in "${selected[@]}"; do
        if [[ "$existing" == "$candidate" ]]; then
          seen=1
          break
        fi
      done
    fi
    [[ "$seen" -eq 1 ]] || selected+=("$candidate")
  }

  if [[ "$#" -eq 0 ]]; then
    if [[ "$require_full_deployed" -eq 1 ]]; then
      selected=(note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8)
    else
      selected=(note_reshape2x1 transfer)
    fi
    printf '%s\n' "${selected[@]}"
    return
  fi
  while [[ "$#" -gt 0 ]]; do
    case "$1" in
      --circuit)
        shift
        [[ "$#" -gt 0 ]] || fail "--circuit requires an argument"
        case "$1" in
          all)
            if [[ "$require_full_deployed" -eq 1 ]]; then
              for candidate in note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8; do
                add_circuit "$candidate"
              done
            else
              for candidate in note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8 transfer; do
                add_circuit "$candidate"
              done
            fi
            ;;
          note_reshape2x1|note_reshape4x1|note_reshape8x1|note_reshape1x8|transfer) add_circuit "$1" ;;
          *) fail "unsupported circuit $1" ;;
        esac
        ;;
      --require-full-deployed)
        ;;
      --check-typed-bindings)
        ;;
      all)
        if [[ "$require_full_deployed" -eq 1 ]]; then
          for candidate in note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8; do
            add_circuit "$candidate"
          done
        else
          for candidate in note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8 transfer; do
            add_circuit "$candidate"
          done
        fi
        ;;
      note_reshape2x1|note_reshape4x1|note_reshape8x1|note_reshape1x8|transfer)
        add_circuit "$1"
        ;;
      *)
        fail "unsupported circuit argument $1"
        ;;
    esac
    shift
  done
  printf '%s\n' "${selected[@]}"
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
      run_lean_theorem_checks=1
      ;;
    --lean-theorem-checks)
      run_lean_theorem_checks=1
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
bridge_import_for_theorem() {
  local theorem="$1" namespace
  case "$theorem" in
    Shieldd.GnarkFormal.Deployed.*)
      return 0
      ;;
    Shieldd.GnarkFormal.AnchorMerkle.*)
      printf '%s\n' ShielddGnarkFormal.AnchorMerkleSpec
      ;;
    Shieldd.GnarkFormal.*.*)
      namespace="${theorem%.*}"
      printf '%s\n' "${namespace/Shieldd.GnarkFormal/ShielddGnarkFormal}"
      ;;
    *)
      fail "bridge theorem is not fully qualified: $theorem"
      ;;
  esac
}

check_bridge_theorems() {
  local report="$1" circuit="$2" lean_check="$tmp_dir/$circuit-bridge-theorems.lean"
  local bounds_module="ShielddGnarkFormal.Deployed.Contracts.$(contract_module_dir_for_circuit "$circuit").Bounds"
  local bounds_path="$lean_src_dir/${bounds_module//.//}.lean"
  local capstone_module="${bounds_module%.Bounds}.Capstone"
  local capstone_path="$lean_src_dir/${capstone_module//.//}.lean"
  local circuit_facts_module="${bounds_module%.Bounds}.CircuitFacts"
  local circuit_facts_path="$lean_src_dir/${circuit_facts_module//.//}.lean"
  {
    if [[ -f "$circuit_facts_path" ]]; then
      printf 'import %s\n' "$circuit_facts_module"
    elif [[ -f "$bounds_path" ]]; then
      printf 'import %s\n' "$bounds_module"
    fi
    echo "import ShielddGnarkFormal.Deployed.Contract"
    jq -r '
      .segments[].bridge_theorem // empty,
      .deployed_obligations.obligations[]?.verdict.lean_theorem // empty
    ' "$report" | sort -u | while IFS= read -r thm; do
      [[ -z "$thm" ]] && continue
      bridge_import_for_theorem "$thm"
    done | sort -u | while IFS= read -r module; do
      [[ -z "$module" ]] && continue
      printf 'import %s\n' "$module"
    done
    if [[ -f "$capstone_path" ]]; then
      local capstone_ns="Shieldd.GnarkFormal.${capstone_module#ShielddGnarkFormal.}"
      printf '#check @%s.%s_deployed_sound\n' "${capstone_ns%.Capstone}" "$circuit"
    fi
    if [[ -f "$circuit_facts_path" ]]; then
      local circuit_facts_ns="Shieldd.GnarkFormal.${circuit_facts_module#ShielddGnarkFormal.}"
      printf '#check @%s.%s_circuitFacts\n' "${circuit_facts_ns%.CircuitFacts}" "$circuit"
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
  local bounds_module="ShielddGnarkFormal.Deployed.Contracts.$(contract_module_dir_for_circuit "$circuit").Bounds"
  local bounds_path="$lean_src_dir/${bounds_module//.//}.lean"
  local circuit_facts_module="ShielddGnarkFormal.Deployed.Contracts.$(contract_module_dir_for_circuit "$circuit").CircuitFacts"

  {
    if [[ -f "$lean_src_dir/${circuit_facts_module//.//}.lean" ]]; then
      printf 'import %s\n' "$circuit_facts_module"
    elif [[ -f "$bounds_path" ]]; then
      printf 'import %s\n' "$bounds_module"
    fi
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

  # Subset fidelity: every committed contract must exist in the freshly
  # generated set and byte-match it. A committed contract the generator no
  # longer emits is a stale orphan (always fatal). Generated contracts with no
  # committed counterpart mean the deployed layer is incomplete; that is
  # allowed only when the tier permits pending obligations (stamps tier),
  # exactly as pending obligations are treated below, and fatal under
  # --require-full-deployed. This keeps a complete set (note_reshape2x1) at full
  # equality while letting an in-progress set (transfer) stay gated and honest.
  local orphans missing
  orphans="$(comm -23 "$committed_list" "$generated_list")"
  if [[ -n "$orphans" ]]; then
    printf '%s\n' "$orphans" \
      | sed 's/^/Committed contract no longer emitted by generator: /' >&2
    fail "stale committed deployed contract for $circuit"
  fi

  missing="$(comm -13 "$committed_list" "$generated_list")"
  if [[ -n "$missing" && ( "$require_full_deployed" -eq 1 || "$circuit" == "note_reshape2x1" ) ]]; then
    printf '%s\n' "$missing" \
      | sed 's/^/Generated contract with no committed counterpart: /' >&2
    fail "generated deployed contract set incomplete for $circuit"
  fi

  while IFS= read -r contract_file; do
    [[ -z "$contract_file" ]] && continue
    if ! cmp -s "$committed_dir/$contract_file" "$generated_dir/$contract_file"; then
      diff -u "$committed_dir/$contract_file" "$generated_dir/$contract_file" >&2 || true
      fail "generated deployed contract drifted for $circuit: $contract_file"
    fi
  done < "$committed_list"
}

check_generated_templates() {
  local committed_root="$1" generated_root="$2"
  local layer committed_list generated_list template_file
  for layer in Generated Relations; do
    committed_list="$tmp_dir/template-$layer-committed.txt"
    generated_list="$tmp_dir/template-$layer-generated.txt"
    [[ -d "$committed_root/$layer" ]] \
      || fail "missing committed normalized template $layer dir"
    [[ -d "$generated_root/$layer" ]] \
      || fail "missing generated normalized template $layer dir"
    (
      cd "$committed_root/$layer"
      find . -type f -name '*.lean' | sed 's#^\./##' | sort
    ) > "$committed_list"
    (
      cd "$generated_root/$layer"
      find . -type f -name '*.lean' | sed 's#^\./##' | sort
    ) > "$generated_list"
    if ! cmp -s "$committed_list" "$generated_list"; then
      diff -u "$committed_list" "$generated_list" >&2 || true
      fail "generated normalized template $layer set differs"
    fi
    while IFS= read -r template_file; do
      [[ -z "$template_file" ]] && continue
      cmp -s "$committed_root/$layer/$template_file" \
        "$generated_root/$layer/$template_file" \
        || fail "generated normalized template $layer drifted: $template_file"
    done < "$committed_list"
  done
}

coverage_manifest_for_circuit() {
  case "$1" in
    note_reshape2x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape2x1-coverage-manifest.json" ;;
    note_reshape4x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape4x1-coverage-manifest.json" ;;
    note_reshape8x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape8x1-coverage-manifest.json" ;;
    note_reshape1x8) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape1x8-coverage-manifest.json" ;;
    transfer) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/transfer-coverage-manifest.json" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

coverage_ir_for_circuit() {
  case "$1" in
    note_reshape2x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape2x1-deployed-slice-ir.json" ;;
    note_reshape4x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape4x1-deployed-slice-ir.json" ;;
    note_reshape8x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape8x1-deployed-slice-ir.json" ;;
    note_reshape1x8) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape1x8-deployed-slice-ir.json" ;;
    transfer) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/transfer-deployed-slice-ir.json" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

contract_module_dir_for_circuit() {
  case "$1" in
    note_reshape2x1) printf '%s\n' NoteReshape2x1 ;;
    note_reshape4x1) printf '%s\n' NoteReshape4x1 ;;
    note_reshape8x1) printf '%s\n' NoteReshape8x1 ;;
    note_reshape1x8) printf '%s\n' NoteReshape1x8 ;;
    transfer) printf '%s\n' Transfer ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

artifact_dir_for_circuit() {
  case "$1" in
    note_reshape2x1) printf '%s\n' "$ROOT/tools/gnark/artifacts/note_reshape2x1" ;;
    note_reshape4x1) printf '%s\n' "$ROOT/tools/gnark/artifacts/note_reshape4x1" ;;
    note_reshape8x1) printf '%s\n' "$ROOT/tools/gnark/artifacts/note_reshape8x1" ;;
    note_reshape1x8) printf '%s\n' "$ROOT/tools/gnark/artifacts/note_reshape1x8" ;;
    transfer) printf '%s\n' "$ROOT/tools/gnark/artifacts/transfer" ;;
    *) fail "unsupported circuit $1" ;;
  esac
}

formal_report_for_circuit() {
  case "$1" in
    note_reshape2x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape2x1-constraint-coverage-report.json" ;;
    note_reshape4x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape4x1-constraint-coverage-report.json" ;;
    note_reshape8x1) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape8x1-constraint-coverage-report.json" ;;
    note_reshape1x8) printf '%s\n' "$ROOT/crates/core/component/shielded-pool/formal/note_reshape1x8-constraint-coverage-report.json" ;;
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

# The normalized-template inventory spans the four NoteReshape deployments,
# even when this invocation selects only one deployed circuit. Keep it in the
# full tier so a complete obligation check cannot silently use stale seating or
# omit a family from the reusable-template review.
if [[ "$require_full_deployed" -eq 1 ]]; then
  if [[ -n "${FV_FRESH_DIR:-}" ]]; then
    : # The fresh inventory is generated by the outer FV gate after all IRs exist.
  else
    "$ROOT/scripts/check-template-inventory.sh" \
      || fail "normalized template inventory is stale or incomplete"
  fi
  python3 "$ROOT/tools/gnark/lean/gen/gen_note_reshape_template_semantics.py" --check \
    || fail "generated normalized-template semantic providers drifted"
  if rg -n 'spec := relation|fun _ h => h' \
    "$lean_src_dir/ShielddGnarkFormal/Deployed/Templates/Generated" \
    "$lean_src_dir/ShielddGnarkFormal/Deployed/Templates/Semantics" \
    "$lean_src_dir/ShielddGnarkFormal/Deployed/Contracts/NoteReshape4x1/Bounds.lean" \
    "$lean_src_dir/ShielddGnarkFormal/Deployed/Contracts/NoteReshape8x1/Bounds.lean" \
    "$lean_src_dir/ShielddGnarkFormal/Deployed/Contracts/NoteReshape1x8/Bounds.lean"; then
    fail "identity semantic proof found in the NoteReshape deployed proof chain"
  fi
fi

tmp_dir="$(mktemp -d)"
trap 'if [[ -z "${KEEP_TMP:-}" ]]; then rm -rf "$tmp_dir"; fi' EXIT
tmp_template_root="$tmp_dir/templates"

# Lean's generated deployed modules are large enough to OOM this machine when
# Lake fans out. Every optional Lake invocation in this gate inherits one
# worker, including cache fetches and xargs-driven module builds.
export LEAN_NUM_THREADS=1

# Every `lake` invocation below (bridge-theorem checks, typed-contract builds)
# resolves the Lean project from the current directory, so run from the Lean
# source root. All file paths are absolute ($ROOT/...), and the cargo runs that
# need the repo root cd into "$ROOT" inside their own subshells.
cd "$lean_src_dir"

# Template reuse is a four-family invariant, not a property of whichever one
# deployment happened to be selected on the command line. Regenerate the
# complete union before checking exact Generated/Relations bytes.
if [[ "$require_full_deployed" -eq 1 ]]; then
  for template_circuit in \
    note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8; do
    template_artifact_dir="$(artifact_dir_for_circuit "$template_circuit")"
    if [[ -n "${FV_FRESH_DIR:-}" ]]; then
      template_artifact_dir="$FV_FRESH_DIR"
    fi
    (
      cd "$ROOT"
      if [[ "$template_circuit" == "note_reshape2x1" ]]; then
        cargo run --release -q -p shieldd-constraint-coverage -- \
          --manifest "$template_artifact_dir/$template_circuit-manifest.json" \
          --sr1cs "$template_artifact_dir/$template_circuit.sr1cs" \
          --template-registry "$ROOT/tools/gnark/artifacts/proof-template-registry.json" \
          --lean-template-out "$tmp_template_root" \
          --report-out "$tmp_dir/$template_circuit-template-report.json" \
          --lt-seating-out "$tmp_dir/note_reshape2x1-dtk-lt-seating.json"
      else
        cargo run --release -q -p shieldd-constraint-coverage -- \
          --manifest "$template_artifact_dir/$template_circuit-manifest.json" \
          --sr1cs "$template_artifact_dir/$template_circuit.sr1cs" \
          --template-registry "$ROOT/tools/gnark/artifacts/proof-template-registry.json" \
          --lean-template-out "$tmp_template_root" \
          --report-out "$tmp_dir/$template_circuit-template-report.json"
      fi
    )
  done
  canonical_lt_seating="$ROOT/crates/core/component/shielded-pool/formal/note_reshape2x1-dtk-lt-seating.json"
  canonical_lt_seating_sha="$canonical_lt_seating.sha256"
  cmp -s "$tmp_dir/note_reshape2x1-dtk-lt-seating.json" "$canonical_lt_seating" \
    || fail "canonical parity-gated DTK LT seating artifact drifted"
  [[ "$(sha256_file "$canonical_lt_seating")" == "$(tr -d '[:space:]' < "$canonical_lt_seating_sha")" ]] \
    || fail "canonical parity-gated DTK LT seating digest sidecar drifted"
fi

while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  artifact_dir="$(artifact_dir_for_circuit "$circuit")"
  if [[ -n "${FV_FRESH_DIR:-}" ]]; then
    manifest="$FV_FRESH_DIR/$circuit-manifest.json"
    sr1cs="$FV_FRESH_DIR/$circuit.sr1cs"
  else
    manifest="$artifact_dir/$circuit-manifest.json"
    sr1cs="$artifact_dir/$circuit.sr1cs"
  fi
  metadata="$artifact_dir/circuit_metadata.json"
  vk_json="$artifact_dir/verifying_key.json"
  report="$(formal_report_for_circuit "$circuit")"
  coverage_manifest="$(coverage_manifest_for_circuit "$circuit")"
  coverage_ir="$(coverage_ir_for_circuit "$circuit")"
  report_stamp="$report.sha256"
  coverage_manifest_stamp="$coverage_manifest.sha256"
  coverage_ir_stamp="$coverage_ir.sha256"
  tmp_report="$tmp_dir/$circuit-coverage-report.json"
  tmp_ir="$tmp_dir/$circuit-deployed-slice-ir.json"
  tmp_coverage_manifest="$tmp_dir/$circuit-coverage-manifest.json"
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
    cargo run --release -q -p shieldd-constraint-coverage -- \
      --manifest "$manifest" \
      --sr1cs "$sr1cs" \
      --template-registry "$ROOT/tools/gnark/artifacts/proof-template-registry.json" \
      --coverage-manifest "$coverage_manifest" \
      --coverage-ir "$coverage_ir" \
      --ir-out "$tmp_ir" \
      --coverage-manifest-normalize "$coverage_manifest" \
      --coverage-manifest-out "$tmp_coverage_manifest" \
      --report-out "$tmp_report"
  )
  if ! cmp -s "$tmp_ir" "$coverage_ir"; then
    diff -u "$coverage_ir" "$tmp_ir" >&2 || true
    fail "deployed slice IR drift for $circuit"
  fi
  if [[ -n "${FV_FRESH_DIR:-}" ]]; then
    cp "$tmp_ir" "$FV_FRESH_DIR/$circuit-deployed-slice-ir.json"
  fi
  if ! cmp -s "$tmp_coverage_manifest" "$coverage_manifest"; then
    diff -u "$coverage_manifest" "$tmp_coverage_manifest" >&2 || true
    fail "deployed coverage manifest is not the normalized fresh IR projection for $circuit"
  fi
  if [[ -d "$committed_contract_dir" ]]; then
    contract_generation_args=(--lean-contract-out "$tmp_contract_root")
    (
      cd "$ROOT"
      cargo run --release -q -p shieldd-constraint-coverage -- \
        --manifest "$manifest" \
        --sr1cs "$sr1cs" \
        --template-registry "$ROOT/tools/gnark/artifacts/proof-template-registry.json" \
        "${contract_generation_args[@]}"
    )
    check_generated_contracts "$committed_contract_dir" "$tmp_contract_dir" "$circuit"
    contracts_checked=1
  fi
  if [[ "$circuit" == note_reshape* ]]; then
    python3 "$ROOT/tools/gnark/lean/gen/gen_note_reshape_family.py" \
      --ir "$tmp_ir" \
      --manifest "$tmp_coverage_manifest" \
      --constraint-manifest "$manifest" \
      --out-dir "$tmp_contract_dir" \
      --manifest-out "$tmp_coverage_manifest" \
      --prune \
      || fail "generated family proof artifacts drift for $circuit"
    if ! cmp -s "$committed_contract_dir/Bounds.lean" "$tmp_contract_dir/Bounds.lean" \
      || ! cmp -s "$committed_contract_dir/Capstone.lean" "$tmp_contract_dir/Capstone.lean" \
      || ! cmp -s "$committed_contract_dir/CircuitFacts.lean" "$tmp_contract_dir/CircuitFacts.lean" \
      || ! cmp -s "$committed_contract_dir/RoleBindings.lean" "$tmp_contract_dir/RoleBindings.lean" \
      || ! cmp -s "$committed_contract_dir/SemanticBindings.lean" "$tmp_contract_dir/SemanticBindings.lean" \
      || ! cmp -s "$committed_contract_dir/SemanticSeams.lean" "$tmp_contract_dir/SemanticSeams.lean"; then
      fail "generated family proof artifacts drift for $circuit"
    fi
  fi
  if [[ -n "${FV_FRESH_DIR:-}" ]]; then
    mkdir -p "$FV_FRESH_DIR/contracts"
    rm -rf "$FV_FRESH_DIR/contracts/$contract_module_dir"
    cp -R "$tmp_contract_dir" "$FV_FRESH_DIR/contracts/$contract_module_dir"
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
  if [[ "$check_typed_bindings" -eq 1 ]]; then
    if [[ "$contracts_checked" -eq 0 ]]; then
      [[ -d "$committed_contract_dir" ]] \
        || fail "missing committed deployed contract dir $committed_contract_dir"
      (
        cd "$ROOT"
        cargo run --release -q -p shieldd-constraint-coverage -- \
          --manifest "$manifest" \
          --sr1cs "$sr1cs" \
          --template-registry "$ROOT/tools/gnark/artifacts/proof-template-registry.json" \
          --lean-contract-out "$tmp_contract_root"
      )
      check_generated_contracts "$committed_contract_dir" "$tmp_contract_dir" "$circuit"
      contracts_checked=1
    fi
    check_typed_contract_theorems "$report" "$circuit"
  fi

  if [[ "$run_lean_theorem_checks" -eq 1 ]]; then
    check_bridge_theorems "$report" "$circuit"
  fi
done < <(printf '%s\n' "$selected_circuits")

if [[ "$require_full_deployed" -eq 1 ]]; then
  check_generated_templates \
    "$lean_src_dir/ShielddGnarkFormal/Deployed/Templates" \
    "$tmp_template_root"
fi

echo "constraint coverage ok: circuits=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"

#!/usr/bin/env bash
set -euo pipefail

# Incremental exact Lean circuit FV gate.
#
#   kernel  Typecheck only the selected final theorem roots. This is the
#           pull-request proof check; it does not regenerate or prove.
#   drift   Go compilation, content impact, coverage, generator/inventory
#           checks, and stamp integrity. No Lake command and no proving.
#   typed   drift plus selected final soundness modules, typed theorem bindings,
#           obligation coverage, axiom output, and changed-source benchmarks.
#   release typed plus stamp validation, deployed-key prove/verify, and release
#           invariants.
#
# Every certified profile is compiled once per invocation into a temporary
# directory. Typed/release builds are serial and target only selected roots.

MODE="${1:-}"
case "$MODE" in
  kernel|drift|typed|release) shift ;;
  *)
    echo "usage: $(basename "$0") [kernel|drift|typed|release] [CERTIFIED_PROFILE|all]..." >&2
    exit 2
    ;;
esac

export LEAN_NUM_THREADS="${LEAN_NUM_THREADS:-1}"
export LEAN_BUILD_MAX_RSS_MB="${LEAN_BUILD_MAX_RSS_MB:-12288}"
export LEAN_BUILD_MAX_SECS="${LEAN_BUILD_MAX_SECS:-3600}"

fail() {
  echo "check-lean-circuit-fv failed: $*" >&2
  exit 1
}

FAILURE_LOG_BYTES="${FV_FAILURE_LOG_BYTES:-32768}"
[[ "$FAILURE_LOG_BYTES" =~ ^[1-9][0-9]*$ ]] \
  || fail "FV_FAILURE_LOG_BYTES must be positive"
(( FAILURE_LOG_BYTES <= 131072 )) \
  || fail "FV_FAILURE_LOG_BYTES must not exceed 131072"

print_failure_log() {
  local log="$1" log_bytes
  log_bytes=$(wc -c <"$log")
  if (( log_bytes > FAILURE_LOG_BYTES )); then
    printf 'failure log truncated from %s to last %s bytes: %s\n' \
      "$log_bytes" "$FAILURE_LOG_BYTES" "$log" >&2
  fi
  tail -c "$FAILURE_LOG_BYTES" "$log" >&2
}

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/tools/gnark/lean"
GNARK_DIR="$ROOT/tools/gnark"
BACKENDS="$GNARK_DIR/fv_certification_backends.json"

catalog_tsv="$(
  python3 "$ROOT/scripts/check-fv-profiles.py" --emit-tsv --status certified \
)"
proof_catalog_tsv="$(
  python3 "$ROOT/scripts/check-fv-profiles.py" \
    --emit-proof-witness-tsv --status certified
)"
FAMILIES=()
while IFS=$'\t' read -r label _; do
  [[ -z "$label" ]] || FAMILIES+=("$label")
done <<< "$catalog_tsv"
[[ "${#FAMILIES[@]}" -gt 0 ]] || fail "FV catalog has no certified profiles"

catalog_certified="$(printf '%s\n' "${FAMILIES[@]}" | LC_ALL=C sort)"
driver_certified="$(
  jq -r '.backends[].label' "$BACKENDS" | LC_ALL=C sort
)"
if [[ "$catalog_certified" != "$driver_certified" ]]; then
  diff -u \
    <(printf '%s\n' "$driver_certified") \
    <(printf '%s\n' "$catalog_certified") >&2 || true
  fail "certified FV catalog and exact Lean backend registries differ"
fi

select_circuits() {
  local selected=()
  local candidate existing seen

  add_circuit() {
    candidate="$1"
    grep -Fqx "$candidate" <<< "$catalog_certified" \
      || fail "unsupported or uncertified profile $candidate"
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
    selected=("${FAMILIES[@]}")
    printf '%s\n' "${selected[@]}"
    return
  fi
  for circuit in "$@"; do
    case "$circuit" in
      all)
        for candidate in "${FAMILIES[@]}"; do
          add_circuit "$candidate"
        done
        ;;
      *) add_circuit "$circuit" ;;
    esac
  done
  printf '%s\n' "${selected[@]}"
}

selected_circuits="$(select_circuits "$@")"
[[ -n "$selected_circuits" ]] || fail "no certified profiles selected"

artifact_for() {
  local circuit="$1"
  printf '%s\n' "$ROOT/tools/gnark/artifacts/$circuit"
}

backend_values() {
  local circuit="$1" field="$2"
  jq -er --arg circuit "$circuit" --arg field "$field" \
    '.backends[] | select(.label == $circuit) | .[$field] | .[]' \
    "$BACKENDS" \
    || fail "missing backend field $field for $circuit"
}

backend_value() {
  local circuit="$1" field="$2"
  jq -er --arg circuit "$circuit" --arg field "$field" \
    '.backends[] | select(.label == $circuit) | .[$field]' \
    "$BACKENDS" \
    || fail "missing backend field $field for $circuit"
}

sha256_file() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$1" | awk '{print $1}'
  else
    shasum -a 256 "$1" | awk '{print $1}'
  fi
}

tmp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT
fresh_dir="$tmp_dir/compiled"
mkdir -p "$fresh_dir"
export GOCACHE="${GOCACHE:-$tmp_dir/go-cache}"

lean_build() {
  local target="$1"
  local safe_target="${target//[^[:alnum:]._-]/_}"
  local log="$fresh_dir/lean-build-$safe_target.log"
  if ! "$ROOT/scripts/lean-build-safe.sh" "$target" >"$log" 2>&1; then
    print_failure_log "$log"
    fail "Lean build failed: $target"
  fi
  tail -n 1 "$log"
}

if [[ "$MODE" == "kernel" ]]; then
  echo "==> selected final theorem roots"
  (
    cd "$LEAN_DIR"
    lake exe cache get >/dev/null 2>&1 || true
    theorem_roots="$(
      while IFS= read -r circuit; do
        [[ -z "$circuit" ]] || backend_value "$circuit" theorem_root
      done <<< "$selected_circuits" | awk '!seen[$0]++'
    )"
    while IFS= read -r theorem_root; do
      [[ -z "$theorem_root" ]] || lean_build "$theorem_root"
    done <<< "$theorem_roots"
  )
  echo "lean circuit fv ok (kernel): families=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"
  exit 0
fi

echo "==> registry parity"
python3 "$GNARK_DIR/check_gnark_family_registries.py"

echo "==> compile every certified profile once"
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  export_fv_args=()
  if [[ "$MODE" == "release" ]] && grep -qx "$circuit" <<< "$selected_circuits"; then
    export_fv_args=(
      --prove
      --artifact-dir "$(artifact_for "$circuit")"
    )
    proof_case_count=0
    while IFS=$'\t' read -r \
      proof_circuit _proof_status _proof_kind _proof_n_in _proof_n_out \
      proof_case proof_witness_rel _proof_artifact _proof_manifest \
      _proof_version; do
      [[ "$proof_circuit" == "$circuit" ]] || continue
      proof_case_count=$((proof_case_count + 1))
      export_fv_args+=(
        --proof-case "$proof_case"
        --witness "$GNARK_DIR/$proof_witness_rel"
        --proof-receipt-out \
          "$fresh_dir/$circuit-$proof_case-proof-receipt.json"
      )
    done <<< "$proof_catalog_tsv"
    [[ "$proof_case_count" -gt 0 ]] \
      || fail "no canonical proof witnesses for certified family $circuit"
  fi
  export_log="$fresh_dir/$circuit-export-fv.log"
  if ! (
    cd "$GNARK_DIR"
    go run ./cmd/gnarkctl export-fv \
      --circuit "$circuit" \
      --sr1cs-out "$fresh_dir/$circuit.sr1cs" \
      --manifest-out "$fresh_dir/$circuit-manifest.json" \
      ${export_fv_args[@]+"${export_fv_args[@]}"}
  ) >"$export_log" 2>&1; then
    print_failure_log "$export_log"
    fail "FV export failed for $circuit"
  fi
  constraint_count="$(
    python3 "$ROOT/scripts/fv-json-field.py" \
      "$fresh_dir/$circuit-manifest.json" nb_constraints
  )"
  if [[ "$MODE" == "release" ]] && grep -qx "$circuit" <<< "$selected_circuits"; then
    echo "    $circuit: $constraint_count constraints; deployed proof verified"
  else
    echo "    $circuit: $constraint_count constraints"
  fi
done < <(printf '%s\n' "${FAMILIES[@]}")

echo "==> specification predicate relation map"
specification_manifest_args=()
for circuit in "${FAMILIES[@]}"; do
  specification_manifest_args+=(
    --profile "$circuit"
    --manifest "$circuit=$fresh_dir/$circuit-manifest.json"
  )
done
python3 "$ROOT/scripts/check-fv-specification-completeness.py" \
  --require-relation-evidence \
  "${specification_manifest_args[@]}" \
  || fail "fresh manifests do not implement the closed predicate matrix"

echo "==> normalized IR, exact coverage, generated contracts"
coverage_log="$fresh_dir/constraint-coverage.log"
if ! FV_FRESH_DIR="$fresh_dir" \
  "$ROOT/scripts/check-constraint-coverage.sh" \
    --require-full-deployed \
    $(printf '%s\n' "${FAMILIES[@]}") >"$coverage_log" 2>&1; then
  print_failure_log "$coverage_log"
  fail "normalized IR or exact constraint coverage failed"
fi
tail -n 1 "$coverage_log"

echo "==> template inventory"
fresh_irs=()
for circuit in "${FAMILIES[@]}"; do
  fresh_irs+=("$fresh_dir/$circuit-deployed-slice-ir.json")
done
python3 "$ROOT/tools/gnark/lean/gen/gen_template_inventory.py" \
  --ir "${fresh_irs[@]}" \
  --out "$fresh_dir/certified-template-inventory.json" >/dev/null
committed_template_inventory="$GNARK_DIR/artifacts/certified-template-inventory.json"
if ! cmp -s "$committed_template_inventory" "$fresh_dir/certified-template-inventory.json"; then
  diff -u "$committed_template_inventory" \
    "$fresh_dir/certified-template-inventory.json" >&2 || true
  fail "normalized certified template inventory drifted"
fi

echo "==> content-based impact report"
python3 "$ROOT/scripts/check-certified-circuit-impact.py" \
  --fresh-dir "$fresh_dir" \
  --contracts-root "$fresh_dir/contracts" \
  --template-inventory "$fresh_dir/certified-template-inventory.json" \
  --policy clean

echo "==> generator unit, drift, and mtime tests"
(
  cd "$ROOT/tools/gnark/lean/gen"
  python3 -m unittest discover -p 'test_*.py'
)
python3 "$ROOT/tools/gnark/lean/gen/gen_template_ownership.py" --check
generation_backends="$(
  for circuit in "${FAMILIES[@]}"; do
    backend_value "$circuit" generation_backend
  done | LC_ALL=C sort -u
)"
while IFS= read -r generation_backend; do
  [[ -z "$generation_backend" ]] && continue
  case "$generation_backend" in
    note_reshape)
      python3 \
        "$ROOT/tools/gnark/lean/gen/gen_note_reshape_1x8_commitments.py" \
        --check
      python3 \
        "$ROOT/tools/gnark/lean/gen/gen_note_reshape_padded_spends.py" --check
      python3 \
        "$ROOT/tools/gnark/lean/gen/gen_note_reshape_padded_commitments.py" \
        --check
      python3 \
        "$ROOT/tools/gnark/lean/gen/gen_note_reshape_dtk_seating.py" --check
      python3 \
        "$ROOT/tools/gnark/lean/gen/gen_note_reshape_canonical_address.py" \
        --check
      python3 \
        "$ROOT/tools/gnark/lean/gen/gen_note_reshape_balance_seating.py" \
        --check
      python3 \
        "$ROOT/tools/gnark/lean/gen/gen_note_reshape_1x8_statement_seating.py" \
        --check
      ;;
    deployed_family)
      # Bounds, capstone, exact circuit facts, and typed compiler bindings are
      # regenerated and checked per circuit by check-constraint-coverage.sh.
      ;;
    *) fail "unsupported certified generation backend $generation_backend" ;;
  esac
done <<< "$generation_backends"
import_closure_args=()
while IFS= read -r theorem_root; do
  [[ -z "$theorem_root" ]] || import_closure_args+=(--root "$theorem_root")
done < <(jq -r '.backends[].theorem_root' "$BACKENDS")
python3 "$ROOT/tools/gnark/lean/gen/check_lean_import_closure.py" \
  --lean-dir "$ROOT/tools/gnark/lean" \
  --check-all-local-imports \
  --local-prefix ShielddGnarkFormal. \
  "${import_closure_args[@]}"

echo "==> formal gate self-tests"
"$ROOT/scripts/check-formal-gate-self-tests.sh"

poseidon_parity_mode=vectors
if [[ "$MODE" == "release" ]]; then
  poseidon_parity_mode=full
fi
echo "==> Poseidon377 generated parity ($poseidon_parity_mode)"
"$ROOT/scripts/check_poseidon377_parity.sh" "$poseidon_parity_mode"

echo "==> emitted-Lean hygiene"
"$ROOT/scripts/check-structured-lc-lint.sh"
"$ROOT/scripts/check-extracted-lean-heartbeats.sh"
"$ROOT/scripts/check-fv-census.sh"

check_stamp() {
  local circuit="$1"
  local artifact="$ROOT/crates/core/component/shielded-pool/formal/$circuit-whole-circuit-lean-artifact.txt"
  [[ -f "$artifact" && -f "$artifact.sha256" ]] \
    || fail "missing evidence stamp for $circuit"
  [[ "$(tr -d '[:space:]' < "$artifact.sha256")" == "$(sha256_file "$artifact")" ]] \
    || fail "evidence sidecar mismatch for $circuit"
  local adir
  adir="$(artifact_for "$circuit")"
  rg -F "whole_circuit_sr1cs_sha256: $(sha256_file "$adir/$circuit.sr1cs")" "$artifact" >/dev/null \
    || fail "evidence SR1CS pin is stale for $circuit"
  rg -F "manifest_sha256: $(sha256_file "$adir/$circuit-manifest.json")" "$artifact" >/dev/null \
    || fail "evidence manifest pin is stale for $circuit"
  rg -F "setup_provenance_sha256: $(sha256_file "$adir/setup_provenance.json")" "$artifact" >/dev/null \
    || fail "evidence setup-provenance pin is stale for $circuit"
  local wiring_cert="$ROOT/crates/core/component/shielded-pool/formal/$circuit-wiring-cert.json"
  [[ -f "$wiring_cert" ]] || fail "missing wiring certificate for $circuit"
  rg -F "wiring_certificate_sha256: $(sha256_file "$wiring_cert")" "$artifact" >/dev/null \
    || fail "evidence wiring certificate pin is stale for $circuit"
  echo "stamp ok ($circuit; source pins not refreshed in $MODE)"
}

echo "==> stamps (no refresh)"
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  check_stamp "$circuit"
done < <(printf '%s\n' "${FAMILIES[@]}")

echo "==> family evidence closure"
evidence_backends="$(
  for circuit in "${FAMILIES[@]}"; do
    backend_value "$circuit" evidence_backend
  done | LC_ALL=C sort -u
)"
while IFS= read -r evidence_backend; do
  [[ -z "$evidence_backend" ]] && continue
  case "$evidence_backend" in
    certified_circuit)
      python3 "$ROOT/scripts/gen-certified-circuit-artifacts.py" --check \
        || fail "generated certified-circuit evidence is stale"
      ;;
    *) fail "unsupported certified evidence backend $evidence_backend" ;;
  esac
done <<< "$evidence_backends"

if [[ "$MODE" == "drift" ]]; then
  echo "lean circuit fv ok (drift): families=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"
  exit 0
fi

proof_sources_changed=0
if ! git diff --quiet -- \
  tools/gnark/lean/ShielddGnarkFormal/Deployed/Templates \
  tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts \
  tools/gnark/lean/gen; then
  proof_sources_changed=1
fi

run_benchmarks() {
  [[ "$proof_sources_changed" -eq 1 || "$MODE" == "release" ]] || return 0
  local benchmark_backends benchmark_backend candidates
  local first=1 floor_mb=0 floor_source="" floor_output="" target tier
  benchmark_backends="$(
    while IFS= read -r circuit; do
      [[ -z "$circuit" ]] || backend_value "$circuit" benchmark_backend
    done <<< "$selected_circuits" | LC_ALL=C sort -u
  )"
  while IFS= read -r benchmark_backend; do
    [[ -z "$benchmark_backend" ]] && continue
    case "$benchmark_backend" in
      certified_statement_hash)
        candidates="$(
          python3 \
            "$ROOT/tools/gnark/lean/gen/gen_certified_statement_hash_semantics.py" \
            --print-benchmark-candidates
        )"
        ;;
      *) fail "unsupported certified benchmark backend $benchmark_backend" ;;
    esac
    while IFS= read -r target; do
      [[ -z "$target" ]] && continue
      [[ -f "$target" ]] || fail "benchmark candidate missing: $target"
      if [[ "$target" =~ Block[0-9]+\.lean$ || "$target" =~ TStatementHash_[0-9a-f]+\.lean$ ]]; then
        tier=aggregator
      else
        tier=leaf
      fi
      if [[ "$first" -eq 1 ]]; then
        floor_source="$target"
        floor_output="$("$ROOT/scripts/lean-leaf-bench.sh" "$target" import 2>&1)"
        printf '%s\n' "$floor_output"
        floor_mb="$(printf '%s\n' "$floor_output" \
          | awk -F'peak_rss=|MB' '/peak_rss=/{print $2; exit}' | tr -d ' ')"
        [[ "$floor_mb" =~ ^[0-9]+$ ]] || floor_mb=0
        first=0
      fi
      BENCH_IMPORT_FLOOR_MB="$floor_mb" \
      BENCH_IMPORT_FLOOR_SOURCE="$floor_source" \
        "$ROOT/scripts/lean-leaf-bench.sh" "$target" "$tier"
    done <<< "$candidates"
  done <<< "$benchmark_backends"
}

echo "==> selected exact facts, semantic seams, and final soundness roots"
(
  cd "$LEAN_DIR"
  # Exactly one cache fetch per invocation, followed by serial backend targets.
  lake exe cache get >/dev/null 2>&1 || true
  build_targets="$(
    while IFS= read -r circuit; do
      [[ -z "$circuit" ]] || backend_values "$circuit" build_modules
    done <<< "$selected_circuits" | awk '!seen[$0]++'
  )"
  while IFS= read -r target; do
    [[ -z "$target" ]] || lean_build "$target"
  done <<< "$build_targets"
)

echo "==> exact family refinement and final theorem types"
certification_typecheck="$fresh_dir/certification-theorem-types.lean"
selected_array=()
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] || selected_array+=("$circuit")
done <<< "$selected_circuits"
python3 "$ROOT/scripts/check-fv-profiles.py" \
  --emit-lean-certification-checks "${selected_array[@]}" \
  >"$certification_typecheck"
certification_typecheck_log="$fresh_dir/certification-theorem-types.log"
if ! BENCH_HARD_RSS_MB="$LEAN_BUILD_MAX_RSS_MB" \
  "$ROOT/scripts/lean-leaf-bench.sh" "$certification_typecheck" audit \
  >"$certification_typecheck_log" 2>&1; then
  print_failure_log "$certification_typecheck_log"
  fail "a final theorem does not have its code-owned family relation-to-validity type"
fi
echo "    exact certification theorem types ok"

run_benchmarks

echo "==> typed obligation coverage and theorem bindings"
typed_coverage_log="$fresh_dir/typed-constraint-coverage.log"
if ! FV_FRESH_DIR="$fresh_dir" \
  "$ROOT/scripts/check-constraint-coverage.sh" \
    --require-full-deployed --check-typed-bindings \
    $selected_circuits >"$typed_coverage_log" 2>&1; then
  print_failure_log "$typed_coverage_log"
  fail "typed obligation coverage or theorem bindings failed"
fi
tail -n 1 "$typed_coverage_log"

echo "==> final theorem axioms"
lean_build oleanAxiomAudit
axiom_args=(--lean-dir "$LEAN_DIR")
axiom_targets="$(
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    jq -r --arg circuit "$circuit" '
      .backends[]
      | select(.label == $circuit)
      | .axiom_targets[]
      | .root_module as $root
      | .declarations[]
      | [$root, .]
      | @tsv
    ' "$BACKENDS"
  done <<< "$selected_circuits" | awk -F'\t' '!seen[$1 FS $2]++'
)"
while IFS=$'\t' read -r root_module declaration; do
  [[ -z "$root_module" || -z "$declaration" ]] && continue
  axiom_args+=(
    --root-module "$root_module"
    --declaration "$declaration"
  )
done <<< "$axiom_targets"
python3 "$LEAN_DIR/gen/olean_axiom_audit.py" "${axiom_args[@]}" \
  || fail "axiom audit allows only [propext, Quot.sound] in every selected theorem"

if [[ "$MODE" == "release" ]]; then
  echo "==> StructuredLC generated-contract compile"
  structured_log="$fresh_dir/structured-lc-generation.log"
  if ! "$ROOT/scripts/check-structured-lc-generation.sh" \
    >"$structured_log" 2>&1; then
    print_failure_log "$structured_log"
    fail "StructuredLC generated-contract compile failed"
  fi
  tail -n 1 "$structured_log"
  echo "==> deployed PK/VK proof receipts and release checks"
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    proof_case_count=0
    while IFS=$'\t' read -r \
      proof_circuit _proof_status _proof_kind _proof_n_in _proof_n_out \
      proof_case _proof_witness_rel _proof_artifact _proof_manifest \
      _proof_version; do
      [[ "$proof_circuit" == "$circuit" ]] || continue
      proof_case_count=$((proof_case_count + 1))
      "$ROOT/scripts/check-key-coherence.sh" "$circuit" \
        --sr1cs "$fresh_dir/$circuit.sr1cs" \
        --proof-case "$proof_case" \
        --proof-receipt \
          "$fresh_dir/$circuit-$proof_case-proof-receipt.json"
    done <<< "$proof_catalog_tsv"
    [[ "$proof_case_count" -gt 0 ]] \
      || fail "no proof receipts checked for certified family $circuit"
  done <<< "$selected_circuits"
  "$ROOT/scripts/check-soundness-invariants.sh"
fi

echo "lean circuit fv ok ($MODE): families=$(printf '%s' "$selected_circuits" | tr '\n' ',' | sed 's/,$//')"

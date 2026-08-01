#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/crates/crypto/proof-aggregation/formal/lean-ipp"
EXTRACTIONS="$LEAN_DIR/scripts/extractions.py"
NORMALIZER="$LEAN_DIR/scripts/normalize_aeneas_lean.py"
MANIFEST="$ROOT/crates/crypto/proof-aggregation/formal/snarkpack/lean-extraction-manifest.json"
VERIFICATION_MANIFEST="$LEAN_DIR/scripts/verification_manifest.py"
MODE="${SNARKPACK_FV_MODE:-full}"
cd "$ROOT"

fail() {
  echo "snarkpack FV gate failed: $*" >&2
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

run_static() {
  echo "snarkpack FV: fixed verification and extraction manifests"
  local manifest_args=(validate)
  local pending_kind
  local pending_env
  for pending_kind in fstar lean external; do
    case "$pending_kind" in
      fstar) pending_env="${SNARKPACK_ALLOW_PENDING_FSTAR_CONTRACT_REFRESH:-0}" ;;
      lean) pending_env="${SNARKPACK_ALLOW_PENDING_LEAN_CONTRACT_REFRESH:-0}" ;;
      external) pending_env="${SNARKPACK_ALLOW_PENDING_EXTERNAL_CONTRACT_REFRESH:-0}" ;;
    esac
    case "$pending_env" in
      0) ;;
      1) manifest_args+=(--allow-pending-contract-kind "$pending_kind") ;;
      *) fail "pending $pending_kind contract refresh flag must be 0 or 1" ;;
    esac
  done
  python3 "$VERIFICATION_MANIFEST" "${manifest_args[@]}"
  local extraction_args=(check)
  if [[ -n "${SNARKPACK_ALLOW_STALE_EXTRACTION_GRAPHS_JSON:-}" ]]; then
    local delegated_graph_text
    if ! delegated_graph_text="$(
      parse_json_string_array \
        SNARKPACK_ALLOW_STALE_EXTRACTION_GRAPHS_JSON \
        "${SNARKPACK_ALLOW_STALE_EXTRACTION_GRAPHS_JSON}"
    )"; then
      fail "could not parse delegated stale extraction graphs"
    fi
    local delegated_graphs=()
    if [[ -n "$delegated_graph_text" ]]; then
      mapfile -t delegated_graphs <<< "$delegated_graph_text"
    fi
    local delegated_graph
    for delegated_graph in "${delegated_graphs[@]}"; do
      extraction_args+=(--allow-stale-graph "$delegated_graph")
    done
  fi
  python3 "$EXTRACTIONS" "${extraction_args[@]}"

  echo "snarkpack FV: normalizer tests and idempotence"
  python3 -m unittest discover -s "$LEAN_DIR/scripts" -p 'test_*.py'
  python3 "$ROOT/scripts/ci/test_enforce_formal_result.py"
  python3 "$ROOT/scripts/ci/test_gate_applicability.py"
  python3 "$ROOT/scripts/ci/test_snarkpack_extraction_attestation.py"
  python3 "$ROOT/scripts/ci/test_snarkpack_fv_impact.py"
  python3 "$ROOT/scripts/ci/test_snarkpack_lane_fingerprint.py"
  python3 "$ROOT/scripts/ci/test_snarkpack_lean_attestation.py"
  python3 "$ROOT/scripts/ci/test_run_with_annotation.py"
  local generated_output_text
  if ! generated_output_text="$(python3 "$VERIFICATION_MANIFEST" outputs)"; then
    fail "could not enumerate the declared generated outputs"
  fi
  local generated_outputs=()
  if [[ -n "$generated_output_text" ]]; then
    mapfile -t generated_outputs <<< "$generated_output_text"
  fi
  ((${#generated_outputs[@]} > 0)) ||
    fail "generated-output inventory is empty"
  local generated
  for generated in "${generated_outputs[@]}"; do
    generated="${generated%$'\r'}"
    [[ -f "$generated" ]] ||
      fail "declared generated output is missing: $generated"
    python3 "$NORMALIZER" --check "$generated" >/dev/null
  done

  echo "snarkpack FV: forbidden Lean tokens"
  local forbidden
  forbidden="$(rg -n '\b(sorry|admit|native_decide)\b' "$LEAN_DIR/Ipp" || true)"
  if [[ -n "$forbidden" ]]; then
    echo "$forbidden" >&2
    fail "Ipp contains sorry, admit, or native_decide"
  fi

  echo "snarkpack FV: runtime invariants"
  bash "$ROOT/scripts/check-snarkpack-runtime-invariants.sh"

  echo "snarkpack FV: F*/hax/handoff invariants"
  bash "$ROOT/scripts/check-snarkpack-invariants.sh"
}

selected_graphs=()
parse_json_string_array() {
  local variable_name="$1"
  local value="$2"
  local parsed
  if ! parsed="$(
    python3 - "$variable_name" "$value" <<'PY'
import json
import sys

name = sys.argv[1]
value = json.loads(sys.argv[2])
if (
    not isinstance(value, list)
    or not all(isinstance(item, str) and item for item in value)
    or len(value) != len(set(value))
):
    raise SystemExit(f"{name} must be an array of unique non-empty strings")
for item in value:
    print(item)
PY
  )"; then
    fail "could not parse $variable_name"
  fi
  printf '%s' "$parsed"
}

load_changed_graphs() {
  local graph_output
  if [[ -n "${SNARKPACK_FV_GRAPHS_JSON:-}" ]]; then
    graph_output="$(
      parse_json_string_array \
        SNARKPACK_FV_GRAPHS_JSON "${SNARKPACK_FV_GRAPHS_JSON}"
    )"
    selected_graphs=()
    if [[ -n "$graph_output" ]]; then
      mapfile -t selected_graphs <<< "$graph_output"
    fi
    return
  fi
  [[ -n "${SNARKPACK_FV_BASE:-}" ]] \
    || fail "SNARKPACK_FV_BASE or SNARKPACK_FV_GRAPHS_JSON is required"
  if ! graph_output="$(
    python3 "$EXTRACTIONS" affected --base "$SNARKPACK_FV_BASE"
  )"; then
    fail "could not determine affected extraction graphs"
  fi
  selected_graphs=()
  if [[ -n "$graph_output" ]]; then
    mapfile -t selected_graphs <<< "$graph_output"
  fi
}

run_extract() {
  local scope="$1"
  local args=(compare)
  if [[ "$scope" == changed ]]; then
    load_changed_graphs
    if ((${#selected_graphs[@]} == 0)); then
      echo "snarkpack FV: no extraction graphs affected"
      return
    fi
    local graph
    for graph in "${selected_graphs[@]}"; do
      args+=(--graph "$graph")
    done
  fi
  if [[ -n "${SNARKPACK_FV_SHARD_INDEX:-}" || -n "${SNARKPACK_FV_SHARD_COUNT:-}" ]]; then
    [[ -n "${SNARKPACK_FV_SHARD_INDEX:-}" && -n "${SNARKPACK_FV_SHARD_COUNT:-}" ]] \
      || fail "SNARKPACK_FV_SHARD_INDEX and SNARKPACK_FV_SHARD_COUNT must be set together"
    args+=(--shard-index "$SNARKPACK_FV_SHARD_INDEX" --shard-count "$SNARKPACK_FV_SHARD_COUNT")
  fi
  python3 "$EXTRACTIONS" "${args[@]}"
}

run_parity() {
  python3 "$EXTRACTIONS" check
  python3 - "$MANIFEST" "$VERIFICATION_MANIFEST" "$@" <<'PY'
import json
import subprocess
import sys
from pathlib import Path

manifest_path = Path(sys.argv[1])
sys.path.insert(0, str(Path(sys.argv[2]).parent))
import verification_manifest

selected = set(sys.argv[3:])
manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
repo = Path.cwd()
commands = verification_manifest.validated_parity_commands(
    manifest, repo, selected_graphs=selected
)

for cwd, argv in commands:
    command = f"{cwd}: {' '.join(argv)}"
    print(f"snarkpack FV parity: {command}", flush=True)
    completed = subprocess.run(
        list(argv),
        cwd=repo / cwd,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
    )
    print(completed.stdout, end="", flush=True)
    completed.check_returncode()
    exact_test = verification_manifest.parity_exact_test_name(argv)
    if exact_test is None:
        verification_manifest.require_positive_test_execution(
            completed.stdout, command=command
        )
    else:
        verification_manifest.require_exact_test_execution(
            completed.stdout,
            command=command,
            expected=1,
            expected_names=[exact_test],
        )
print(f"snarkpack FV parity: {len(commands)} unique command(s)", flush=True)
PY
}

lake_command=()
configure_lake() {
  if [[ -n "${SNARKPACK_LAKE_EXECUTABLE:-}" ]]; then
    lake_command=("$SNARKPACK_LAKE_EXECUTABLE")
  elif command -v lake >/dev/null 2>&1; then
    lake_command=(lake)
  elif command -v powershell.exe >/dev/null 2>&1 && command -v wslpath >/dev/null 2>&1; then
    local windows_home candidate
    windows_home="$(powershell.exe -NoProfile -Command '$env:USERPROFILE' | tr -d '\r')"
    candidate="$(wslpath "$windows_home")/.elan/toolchains/leanprover--lean4---v4.30.0/bin/lake.exe"
    [[ -x "$candidate" ]] || fail "pinned Lean v4.30.0 Lake is not installed at $candidate"
    lake_command=("$candidate")
  else
    fail "lake is not installed"
  fi
}

audit_build_log() {
  local audit_log="$1"
  shift
  local audit_args=(audit-log "$audit_log")
  local audit_module
  for audit_module in "$@"; do
    audit_args+=(--module "$audit_module")
  done
  local audit_summary
  audit_summary="$(
    python3 "$VERIFICATION_MANIFEST" "${audit_args[@]}" 2>&1
  )" || {
    echo "$audit_summary" >&2
    fail "ProofAudit axiom parser rejected the audit"
  }

  echo "snarkpack FV audit: $audit_summary"
}

selected_lean_modules=()
load_changed_lean_modules() {
  [[ -n "${SNARKPACK_LEAN_MODULES_JSON:-}" ]] \
    || fail "SNARKPACK_LEAN_MODULES_JSON is required for lean-changed"
  local module_output
  module_output="$(
    parse_json_string_array \
      SNARKPACK_LEAN_MODULES_JSON "${SNARKPACK_LEAN_MODULES_JSON}"
  )"
  selected_lean_modules=()
  if [[ -n "$module_output" ]]; then
    mapfile -t selected_lean_modules <<< "$module_output"
  fi
}

run_lean() {
  configure_lake
  export LEAN_NUM_THREADS=1
  local modules=("$@")
  if ((${#modules[@]} == 0)); then
    local audit_module_output
    if ! audit_module_output="$(
      python3 "$VERIFICATION_MANIFEST" audit-modules
    )"; then
      fail "could not enumerate declared Lean audit modules"
    fi
    modules=()
    if [[ -n "$audit_module_output" ]]; then
      mapfile -t modules <<< "$audit_module_output"
    fi
    ((${#modules[@]} > 0)) ||
      fail "declared Lean audit module inventory is empty"
  fi
  local audit_log
  audit_log="$(mktemp)"
  trap 'rm -f "$audit_log"' RETURN
  echo "snarkpack FV: single-process, single-threaded affected Lean closure"
  local module
  local audit_modules=()
  for module in "${modules[@]}"; do
    [[ "$module" =~ ^Ipp(\.[A-Za-z_][A-Za-z0-9_]*)+$ ]] \
      || fail "invalid Lean module selected by impact planner: $module"
    if [[ "$module" =~ ^Ipp\.ProofAudit[A-Za-z0-9_]*$ ]]; then
      audit_modules+=("$module")
    fi
  done
  printf 'snarkpack FV: lake build' | tee -a "$audit_log"
  printf ' %q' "${modules[@]}" | tee -a "$audit_log"
  printf '\n' | tee -a "$audit_log"
  set +e
  (
    cd "$LEAN_DIR"
    "${lake_command[@]}" build "${modules[@]}"
  ) 2>&1 | tee -a "$audit_log"
  local build_status="${PIPESTATUS[0]}"
  set -e
  ((build_status == 0)) ||
    fail "affected Lean module closure did not build"
  if ((${#audit_modules[@]} > 0)); then
    audit_build_log "$audit_log" "${audit_modules[@]}"
  fi
  rm -f "$audit_log"
  trap - RETURN
}

run_lean_audit_refresh() {
  configure_lake
  export LEAN_NUM_THREADS=1
  [[ -n "${SNARKPACK_LEAN_AUDIT_LOG_DIR:-}" ]] \
    || fail "SNARKPACK_LEAN_AUDIT_LOG_DIR is required for lean-audit-changed"
  [[ "$SNARKPACK_LEAN_AUDIT_LOG_DIR" == /* ]] \
    || fail "SNARKPACK_LEAN_AUDIT_LOG_DIR must be an absolute path"
  mkdir -p "$SNARKPACK_LEAN_AUDIT_LOG_DIR"
  local module source destination temporary audit_status
  for module in "$@"; do
    [[ "$module" =~ ^Ipp\.ProofAudit[A-Za-z0-9_]*$ ]] \
      || fail "invalid Lean audit module selected for refresh: $module"
    source="${module//./\/}.lean"
    [[ -f "$LEAN_DIR/$source" ]] \
      || fail "selected Lean audit source does not exist: $source"
    destination="$SNARKPACK_LEAN_AUDIT_LOG_DIR/$module.log"
    temporary="$SNARKPACK_LEAN_AUDIT_LOG_DIR/.$module.$$.tmp"
    echo "snarkpack FV: refresh cached diagnostics for $module"
    set +e
    (
      cd "$LEAN_DIR"
      "${lake_command[@]}" env lean "$source" --json
    ) 2>&1 | tee "$temporary"
    audit_status="${PIPESTATUS[0]}"
    set -e
    if ((audit_status != 0)); then
      rm -f -- "$temporary"
      fail "Lean audit diagnostic refresh failed for $module"
    fi
    audit_build_log "$temporary" "$module"
    mv -f -- "$temporary" "$destination"
  done
}

main() {
  local require_publication_closure=0
  case "$MODE" in
    static)
      run_static
      ;;
    extract-changed)
      run_extract changed
      ;;
    extract-all)
      run_extract all
      ;;
    parity-changed)
      load_changed_graphs
      if ((${#selected_graphs[@]} == 0)); then
        echo "snarkpack FV: no parity graphs affected"
      else
        run_parity "${selected_graphs[@]}"
      fi
      ;;
    parity-all)
      run_parity
      ;;
    lean)
      run_lean
      ;;
    lean-changed)
      load_changed_lean_modules
      if ((${#selected_lean_modules[@]} == 0)); then
        echo "snarkpack FV: no Lean modules affected"
      else
        run_lean "${selected_lean_modules[@]}"
      fi
      ;;
    lean-audit-changed)
      load_changed_lean_modules
      if ((${#selected_lean_modules[@]} == 0)); then
        echo "snarkpack FV: no Lean audit modules need diagnostics"
      else
        run_lean_audit_refresh "${selected_lean_modules[@]}"
      fi
      ;;
    publication)
      require_publication_closure=1
      ;;
    full)
      run_static
      run_extract all
      run_parity
      run_lean
      require_publication_closure=1
      ;;
    *)
      fail "SNARKPACK_FV_MODE must be static, extract-changed, extract-all, parity-changed, parity-all, lean-changed, lean-audit-changed, lean, publication, or full (got $MODE)"
      ;;
  esac

  if ((require_publication_closure)); then
    echo "snarkpack FV: publication closure"
    python3 "$VERIFICATION_MANIFEST" check
  fi

  echo "snarkpack FV gate ok ($MODE)"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi

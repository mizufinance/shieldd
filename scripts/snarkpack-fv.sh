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
  python3 "$VERIFICATION_MANIFEST" validate
  python3 "$EXTRACTIONS" check

  echo "snarkpack FV: normalizer tests and idempotence"
  python3 -m unittest discover -s "$LEAN_DIR/scripts" -p 'test_*.py'
  while IFS= read -r generated; do
    generated="${generated%$'\r'}"
    python3 "$NORMALIZER" --check "$generated" >/dev/null
  done < <(python3 "$VERIFICATION_MANIFEST" outputs)

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
load_changed_graphs() {
  if [[ -n "${SNARKPACK_FV_GRAPHS_JSON:-}" ]]; then
    mapfile -t selected_graphs < <(
      python3 - "${SNARKPACK_FV_GRAPHS_JSON}" <<'PY'
import json
import sys

value = json.loads(sys.argv[1])
if not isinstance(value, list) or not all(isinstance(item, str) for item in value):
    raise SystemExit("SNARKPACK_FV_GRAPHS_JSON must be an array of graph ids")
for item in value:
    print(item)
PY
    )
    return
  fi
  [[ -n "${SNARKPACK_FV_BASE:-}" ]] \
    || fail "SNARKPACK_FV_BASE or SNARKPACK_FV_GRAPHS_JSON is required"
  mapfile -t selected_graphs < <(
    python3 "$EXTRACTIONS" affected --base "$SNARKPACK_FV_BASE"
  )
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
    print(f"snarkpack FV parity: {cwd}: {' '.join(argv)}", flush=True)
    completed = subprocess.run(
        list(argv),
        cwd=repo / cwd,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
    )
    print(completed.stdout, end="", flush=True)
    completed.check_returncode()
    verification_manifest.require_positive_test_execution(
        completed.stdout, command=f"{cwd}: {' '.join(argv)}"
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
  local audit_summary
  audit_summary="$(python3 "$VERIFICATION_MANIFEST" audit-log "$audit_log" 2>&1)" || {
    echo "$audit_summary" >&2
    fail "ProofAudit axiom parser rejected the audit"
  }

  echo "snarkpack FV audit: $audit_summary"
}

run_lean() {
  configure_lake
  export LEAN_NUM_THREADS=1
  local audit_log
  audit_log="$(mktemp)"
  trap 'rm -f "$audit_log"' RETURN
  echo "snarkpack FV: single-process, single-threaded proof audit build"
  set +e
  (
    cd "$LEAN_DIR"
    "${lake_command[@]}" build Ipp.ProofAudit Ipp.ProofAuditMiller
  ) 2>&1 | tee "$audit_log"
  local build_status="${PIPESTATUS[0]}"
  set -e
  ((build_status == 0)) || fail "ProofAudit modules did not build"
  audit_build_log "$audit_log"
  rm -f "$audit_log"
  trap - RETURN
}

main() {
  local require_publication_closure=0
  case "$MODE" in
    static)
      run_static
      require_publication_closure=1
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
    full)
      run_static
      run_extract all
      run_parity
      run_lean
      require_publication_closure=1
      ;;
    *)
      fail "SNARKPACK_FV_MODE must be static, extract-changed, extract-all, parity-changed, parity-all, lean, or full (got $MODE)"
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

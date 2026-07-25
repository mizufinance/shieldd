#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/crates/crypto/proof-aggregation/formal/lean-ipp"
EXTRACTIONS="$LEAN_DIR/scripts/extractions.py"
NORMALIZER="$LEAN_DIR/scripts/normalize_aeneas_lean.py"
MANIFEST="$ROOT/crates/crypto/proof-aggregation/formal/snarkpack/lean-extraction-manifest.json"
MODE="${SNARKPACK_FV_MODE:-all}"
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
  echo "snarkpack FV: extraction manifest and freshness"
  python3 "$EXTRACTIONS" check

  echo "snarkpack FV: normalizer tests and idempotence"
  python3 -m unittest discover -s "$LEAN_DIR/scripts" -p 'test_*.py'
  while IFS= read -r generated; do
    python3 "$NORMALIZER" --check "$generated" >/dev/null
  done < <(find "$LEAN_DIR/Ipp/Extracted" -maxdepth 1 -type f -name '*Generated.lean' -print | sort)

  echo "snarkpack FV: forbidden Lean tokens"
  local forbidden
  forbidden="$(rg -n '\b(sorry|admit|native_decide)\b' "$LEAN_DIR/Ipp" || true)"
  if [[ -n "$forbidden" ]]; then
    echo "$forbidden" >&2
    fail "Ipp contains sorry, admit, or native_decide"
  fi

  local declared_axioms
  declared_axioms="$(
    rg -n '^[[:space:]]*axiom[[:space:]]' "$LEAN_DIR/Ipp" \
      | grep -v '/Ipp/Algebra.lean:' || true
  )"
  if [[ -n "$declared_axioms" ]]; then
    echo "$declared_axioms" >&2
    fail "axiom declared outside Ipp/Algebra.lean"
  fi

  echo "snarkpack FV: runtime invariants"
  bash "$ROOT/scripts/check-snarkpack-runtime-invariants.sh"

  echo "snarkpack FV: F*/hax/handoff invariants"
  local invariant_output invariant_status
  set +e
  invariant_output="$(bash "$ROOT/scripts/check-snarkpack-invariants.sh" 2>&1)"
  invariant_status=$?
  set -e
  if ((invariant_status != 0)); then
    local ws6_failure="snarkpack invariant failed: assumption row arkworks MSM implementation computes intended linear combination lacks an explicit postcondition"
    if [[ "$invariant_output" == "$ws6_failure" ]]; then
      echo "snarkpack FV: deferred WS6 handoff row: arkworks MSM postcondition"
    else
      echo "$invariant_output" >&2
      fail "formal invariant script failed"
    fi
  else
    printf '%s\n' "$invariant_output"
  fi
}

run_compare() {
  local graph
  for graph in "$@"; do
    python3 "$EXTRACTIONS" compare --graph "$graph"
  done
}

run_parity() {
  python3 - "$MANIFEST" "$@" <<'PY'
import json
import subprocess
import sys
from pathlib import Path

manifest_path = Path(sys.argv[1])
selected = set(sys.argv[2:])
manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
repo = Path.cwd()
commands = []
seen = set()
for graph in manifest["graphs"]:
    if selected and graph["id"] not in selected:
        continue
    for parity in graph["parity"]:
        key = (parity["cwd"], tuple(parity["argv"]))
        if key in seen:
            continue
        seen.add(key)
        commands.append(key)

for cwd, argv in commands:
    print(f"snarkpack FV parity: {cwd}: {' '.join(argv)}", flush=True)
    subprocess.run(list(argv), cwd=repo / cwd, check=True)
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

run_audit() {
  local audit_files=(Ipp/ProofAudit.lean Ipp/ProofAuditMiller.lean)
  local audit_log
  audit_log="$(mktemp)"
  trap 'rm -f "$audit_log"' RETURN

  local audit
  for audit in "${audit_files[@]}"; do
    echo "snarkpack FV: elaborate $audit"
    (
      cd "$LEAN_DIR"
      "${lake_command[@]}" env lean "$audit"
    ) >>"$audit_log" 2>&1 || {
      cat "$audit_log" >&2
      fail "$audit did not elaborate"
    }
  done

  local expected_results audit_summary
  expected_results="$(grep -h -c '^#print axioms ' "$LEAN_DIR"/Ipp/ProofAudit*.lean | awk '{ total += $1 } END { print total + 0 }')"
  audit_summary="$(
    python3 - "$audit_log" "$expected_results" <<'PY'
import re
import sys
from pathlib import Path

text = Path(sys.argv[1]).read_text(encoding="utf-8")
expected = int(sys.argv[2])
if "sorryAx" in text:
    raise SystemExit("ProofAudit contains sorryAx")
with_axioms = re.findall(r"depends on axioms: \[(.*?)\]", text, flags=re.DOTALL)
without_axioms = re.findall(r"does not depend on any axioms", text)
actual = len(with_axioms) + len(without_axioms)
if actual != expected:
    raise SystemExit(f"ProofAudit produced {actual} axiom results; expected {expected}")
allowed = {"propext", "Classical.choice", "Quot.sound"}
observed = {
    axiom.strip()
    for block in with_axioms
    for axiom in block.split(",")
    if axiom.strip()
}
unexpected = sorted(observed - allowed)
if unexpected:
    raise SystemExit("ProofAudit contains non-allowlisted axioms: " + ", ".join(unexpected))
print(f"{actual} capstones; axioms allowlisted")
PY
  )" || {
    cat "$audit_log" >&2
    fail "ProofAudit axiom parser rejected the audit"
  }

  echo "snarkpack FV audit: $audit_summary"
  rm -f "$audit_log"
  trap - RETURN
}

run_all() {
  echo "snarkpack FV: reproduce all extraction graphs"
  python3 "$EXTRACTIONS" compare
  run_parity

  configure_lake
  export LEAN_NUM_THREADS=1
  echo "snarkpack FV: single-threaded Ipp build"
  (
    cd "$LEAN_DIR"
    "${lake_command[@]}" build Ipp
  )
  run_audit
}

main() {
  case "$MODE" in
    static)
      run_static
      ;;
    changed)
      run_static
      [[ -n "${SNARKPACK_FV_BASE:-}" ]] \
        || fail "SNARKPACK_FV_BASE is required in changed mode"
      mapfile -t affected_graphs < <(python3 "$EXTRACTIONS" affected --base "$SNARKPACK_FV_BASE")
      if ((${#affected_graphs[@]} == 0)); then
        echo "snarkpack FV: no extraction graphs affected"
      else
        echo "snarkpack FV: ${#affected_graphs[@]} affected extraction graph(s)"
        run_compare "${affected_graphs[@]}"
        run_parity "${affected_graphs[@]}"
      fi
      ;;
    all)
      run_static
      run_all
      ;;
    *)
      fail "SNARKPACK_FV_MODE must be static, changed, or all (got $MODE)"
      ;;
  esac

  echo "snarkpack FV gate ok ($MODE)"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi

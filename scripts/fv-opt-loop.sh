#!/usr/bin/env bash
set -euo pipefail

# Optimize-safely loop orchestrator (full-verification-plan §5).
#
# One fail-closed entry point for a circuit-optimization attempt: recompiles the
# circuit, computes exactly which coverage segments flipped, asserts the flip
# set is contained in the caller's allowlist, maps each flip to its Lean
# regeneration family (unknown family = T2-class, red), then runs the gate
# battery and emits the per-commit measurement record playbook §5 requires.
#
# This script only SEQUENCES existing gates; it never edits verdicts, stamps,
# manifests, or generated Lean. Lean elaboration is opt-in (--lean) and is
# delegated to check-constraint-coverage.sh under its own resource rules.
#
# Usage:
#   scripts/fv-opt-loop.sh diff  --circuit consolidate2x1 --allow-flips 52,53
#   scripts/fv-opt-loop.sh gates --circuit consolidate2x1 [--lean] [--prove] \
#       [--record-out <file.md>]
#
#   diff   pre-proof phase: recompile + flipped-segment containment check.
#   gates  post-proof phase: full battery + measurement record.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"

fail() {
  echo "fv-opt-loop: RED: $*" >&2
  exit 1
}

note() { echo "fv-opt-loop: $*"; }

usage() {
  sed -n '4,22p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
  exit 2
}

[[ "$#" -ge 1 ]] || usage
mode="$1"; shift
[[ "$mode" == "diff" || "$mode" == "gates" ]] || usage

circuit=""
allow_flips=""
run_lean=0
run_prove=0
record_out=""
while [[ "$#" -gt 0 ]]; do
  case "$1" in
    --circuit) shift; circuit="${1:-}" ;;
    --allow-flips) shift; allow_flips="${1:-}" ;;
    --lean) run_lean=1 ;;
    --prove) run_prove=1 ;;
    --record-out) shift; record_out="${1:-}" ;;
    *) fail "unknown argument $1" ;;
  esac
  shift
done
case "$circuit" in
  consolidate2x1|transfer) ;;
  *) fail "--circuit must be consolidate2x1 or transfer" ;;
esac

formal_dir="$ROOT/crates/core/component/shielded-pool/formal"
committed_report="$formal_dir/$circuit-constraint-coverage-report.json"
coverage_manifest="$formal_dir/$circuit-coverage-manifest.json"
coverage_ir="$formal_dir/$circuit-deployed-slice-ir.json"
artifact_dir="$GNARK_DIR/artifacts/$circuit"
[[ -f "$committed_report" ]] || fail "missing committed report $committed_report"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

# Regeneration family map: obligation op -> generator under tools/gnark/lean/gen.
# An op absent here has no landed proof substrate: the change is T2-class and
# needs frontier design BEFORE any Go edit lands (playbook §2 tiers).
generator_for_op() {
  case "$1" in
    decaf.net_balance_commitment) echo "gen_nb_slice.py" ;;
    decaf.diversified_transmission_key) echo "gen_dtk_slice.py" ;;
    decaf.compress_to_field) echo "gen_consolidate_compress_adapters.py" ;;
    decaf.randomized_verification_key) echo "gen_rvk_deployed_adapters.py" ;;
    gadget.state_commitment_path) echo "gen_state_commitment_nodes.py" ;;
    gadget.note_commitment) echo "gen_note_commitment_semantic.py" ;;
    gadget.nullifier|statement.hash|assert.eq|decaf.assert_equivalent|decaf.assert_on_curve) echo "gen_scp_adapters.py" ;;
    *) echo "" ;;
  esac
}

# ---- Step 1: recompile + fresh extraction ---------------------------------

recompile_and_extract() {
  local sr1cs="$tmp_dir/$circuit.sr1cs"
  local manifest="$tmp_dir/$circuit-manifest.json"
  fresh_report="$tmp_dir/$circuit-report.json"
  note "recompiling $circuit and re-deriving coverage report"
  (
    cd "$GNARK_DIR"
    go run ./cmd/gnarkctl export-r1cs --circuit "$circuit" --out "$sr1cs" >/dev/null
    go run ./cmd/gnarkctl export-manifest --circuit "$circuit" --sr1cs "$sr1cs" --out "$manifest" >/dev/null
  )
  (
    cd "$ROOT"
    cargo run -q -p shieldd-constraint-coverage -- \
      --manifest "$manifest" \
      --sr1cs "$sr1cs" \
      --coverage-manifest "$coverage_manifest" \
      --coverage-ir "$coverage_ir" \
      --report-out "$fresh_report"
  ) || fail "extractor rejected the recompiled circuit (parity gate inside generation failed closed)"
}

# Compare per-obligation relation hashes committed vs fresh; print flip lines
# "segment_index op relation_before relation_after" (segment set changes count
# as flips of the affected indices).
flipped_segments() {
  python3 - "$committed_report" "$fresh_report" <<'EOF'
import json, sys
old = json.load(open(sys.argv[1]))["deployed_obligations"]["obligations"]
new = json.load(open(sys.argv[2]))["deployed_obligations"]["obligations"]
o = {x["segment_index"]: x for x in old}
n = {x["segment_index"]: x for x in new}
flips = []
for idx in sorted(set(o) | set(n)):
    a, b = o.get(idx), n.get(idx)
    if a is None:
        flips.append((idx, b["op"], "ADDED"))
    elif b is None:
        flips.append((idx, a["op"], "REMOVED"))
    elif a["relation_sha256_hex"] != b["relation_sha256_hex"] \
         or a["constant_vector_sha256_hex"] != b["constant_vector_sha256_hex"] \
         or a["wire_role_sha256_hex"] != b["wire_role_sha256_hex"]:
        flips.append((idx, b["op"], "FLIPPED"))
for idx, op, kind in flips:
    print(f"{idx}\t{op}\t{kind}")
EOF
}

check_flip_containment() {
  local flips="$1"
  if [[ ! -s "$flips" ]]; then
    note "no segment flips: compiled constraints identical to committed pins"
    return 0
  fi
  note "flipped segments:"
  cat "$flips" | sed 's/^/  /'
  local allowed=",${allow_flips},"
  local red=0
  while IFS=$'\t' read -r idx op kind; do
    if [[ "$allowed" != *",$idx,"* ]]; then
      echo "fv-opt-loop: segment $idx ($op, $kind) flipped but is not in --allow-flips '$allow_flips'" >&2
      red=1
    fi
    local gen
    gen="$(generator_for_op "$op")"
    if [[ -z "$gen" ]]; then
      echo "fv-opt-loop: segment $idx op $op has NO regeneration family — T2-class, needs frontier design" >&2
      red=1
    else
      note "  segment $idx regenerates via tools/gnark/lean/gen/$gen"
    fi
  done < "$flips"
  [[ "$red" -eq 0 ]] || fail "flip containment violated — the change leaked outside its allowlist"
}

# ---- Step 2: gate battery ---------------------------------------------------

run_gate() {
  local name="$1"; shift
  note "gate: $name"
  local t0 t1
  t0=$(date +%s)
  "$@" || fail "gate '$name' failed"
  t1=$(date +%s)
  gates_run+="$name ($((t1 - t0))s); "
}

gate_battery() {
  gates_run=""
  run_gate "manifest-pin" bash "$ROOT/scripts/check-manifest-pin.sh" "$circuit"
  if [[ "$run_lean" -eq 1 ]]; then
    run_gate "constraint-coverage(full-deployed)" \
      bash "$ROOT/scripts/check-constraint-coverage.sh" --require-full-deployed --circuit "$circuit"
  else
    run_gate "constraint-coverage(rust)" \
      bash "$ROOT/scripts/check-constraint-coverage.sh" --circuit "$circuit"
  fi
  run_gate "soundness-invariants" bash "$ROOT/scripts/check-soundness-invariants.sh"
  # SnarkPack boundary: config-only until S1 (playbook §3). If the aggregation
  # crate differs from the merge base, its invariant gates must also pass.
  if ! git -C "$ROOT" diff --quiet HEAD -- crates/crypto/proof-aggregation 2>/dev/null \
     || [[ -n "$(git -C "$ROOT" log --oneline -1 -- crates/crypto/proof-aggregation 2>/dev/null)" && -n "$(git -C "$ROOT" diff --name-only "$(git -C "$ROOT" merge-base HEAD origin/dev 2>/dev/null || echo HEAD)" HEAD -- crates/crypto/proof-aggregation 2>/dev/null)" ]]; then
    run_gate "snarkpack-invariants" bash "$ROOT/scripts/check-snarkpack-invariants.sh"
    run_gate "snarkpack-filecoin-shape" bash "$ROOT/scripts/check-snarkpack-filecoin-shape.sh"
  fi
  run_gate "wiring-transcript+parity-tests" \
    env -C "$GNARK_DIR" go test ./internal/circuits/ -run \
    'TestConsolidate2x1WiringTranscript|TestAmountRangeBoundIs128Bits|Acl2ModelParity|AxeFidelity' -count=1
  run_gate "statement-seam" \
    env -C "$GNARK_DIR" go test ./internal/primitives/ -run 'StatementSeam|StatementHash' -count=1
  if [[ "$run_prove" -eq 1 ]]; then
    run_gate "prover-round-trip" \
      env -C "$GNARK_DIR" go run ./cmd/gnarkctl replay \
      --circuit "$circuit" \
      --witness "$GNARK_DIR/internal/testfixtures/vectors/${circuit}_witness_v1.bin" \
      --artifact-dir "$artifact_dir" \
      --mode prove
  fi
}

# ---- Step 3: measurement record ---------------------------------------------

emit_record() {
  local rows verdicts
  rows="$(python3 -c "import json;print(json.load(open('$committed_report'))['nb_constraints'])" 2>/dev/null || echo "?")"
  verdicts="$(python3 -c "
import json
d=json.load(open('$committed_report'))['deployed_obligations']
print(f\"{d['discharged']}/{d['total_obligations']} discharged, {d['pending']} pending\")" 2>/dev/null || echo "?")"
  local record
  record="$(cat <<REC
### fv-opt-loop record — $circuit — $(date -u +%Y-%m-%dT%H:%M:%SZ)
- git: $(git -C "$ROOT" rev-parse --short HEAD) ($(git -C "$ROOT" branch --show-current))
- nb_constraints (committed report): $rows
- deployed obligations: $verdicts
- gates: ${gates_run:-none}
- lean tier: $([[ "$run_lean" -eq 1 ]] && echo "full-deployed" || echo "rust-only"); prover round-trip: $([[ "$run_prove" -eq 1 ]] && echo "RUN" || echo "NOT RUN")
REC
)"
  echo "$record"
  if [[ -n "$record_out" ]]; then
    printf '%s\n' "$record" >> "$record_out"
    note "record appended to $record_out"
  fi
}

case "$mode" in
  diff)
    recompile_and_extract
    flips_file="$tmp_dir/flips.tsv"
    flipped_segments > "$flips_file"
    check_flip_containment "$flips_file"
    note "GREEN: diff phase passed (flips contained; regeneration families known)"
    ;;
  gates)
    gate_battery
    emit_record
    note "GREEN: gate battery passed"
    ;;
esac

#!/usr/bin/env bash
set -euo pipefail

# Optimize-safely loop orchestrator. Policy lives in
# `docs/soundness/optimization.md`.
#
# One fail-closed entry point for a circuit-optimization attempt: recompiles the
# circuit, computes exactly which coverage segments flipped, asserts the flip
# set is contained in the caller's allowlist, maps each flip to its Lean
# regeneration family (unknown family = unsupported/red), then runs the gate
# battery and emits the performance record described by
# `docs/soundness/release.md`.
#
# This script only SEQUENCES existing gates; it never edits verdicts, stamps,
# manifests, or generated Lean. Lean elaboration is opt-in (--lean) and is
# delegated to check-constraint-coverage.sh under its own resource rules.
#
# Usage:
#   scripts/fv-opt-loop.sh diff  --circuit consolidate2x1 --allow-flips 52,53 \
#       [--allow-remove 34,36] [--allow-add 60]
#   scripts/fv-opt-loop.sh gates --circuit consolidate2x1 [--lean] [--prove] \
#       [--record-out <file.md>]
#   scripts/fv-opt-loop.sh census --circuit transfer
#
#   diff   pre-proof phase: recompile + flipped-segment containment check.
#   gates  post-proof phase: full battery + measurement record.
#   census read-only waste forensics on the freshly compiled circuit
#          (fv-census.py: duplicates, CSE misses, dead outputs, mul floor,
#          D5 decomposition canonicity). Informational, never a gate.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"

fail() {
  echo "fv-opt-loop: RED: $*" >&2
  exit 1
}

note() { echo "fv-opt-loop: $*"; }

usage() {
  sed -n '4,27p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
  exit 2
}

[[ "$#" -ge 1 ]] || usage
mode="$1"; shift
[[ "$mode" == "diff" || "$mode" == "gates" || "$mode" == "census" ]] || usage

circuit=""
allow_flips=""
allow_remove=""
allow_add=""
run_lean=0
run_prove=0
record_out=""
while [[ "$#" -gt 0 ]]; do
  case "$1" in
    --circuit) shift; circuit="${1:-}" ;;
    --allow-flips) shift; allow_flips="${1:-}" ;;
    --allow-remove) shift; allow_remove="${1:-}" ;;
    --allow-add) shift; allow_add="${1:-}" ;;
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
# An op absent here has no landed proof substrate: the change is unsupported and
# needs a proof design before any Go edit lands (optimization candidate policy).
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

# Alignment-aware obligation diff (fv-opt-loop-diff.py): matches obligations
# by identity hashes, so segment deletions/insertions do not spray spurious
# index-shift flips over every downstream segment. Emits
# "kind<TAB>old_idx<TAB>new_idx<TAB>op".
flipped_segments() {
  python3 "$ROOT/scripts/fv-opt-loop-diff.py" "$committed_report" "$fresh_report"
}

# Containment: FLIPPED old-indices against --allow-flips, REMOVED old-indices
# against --allow-remove, ADDED new-indices against --allow-add. Anything
# outside its list, or with no regeneration family, is red.
check_flip_containment() {
  local flips="$1"
  if [[ ! -s "$flips" ]]; then
    note "no segment flips: compiled constraints identical to committed pins"
    return 0
  fi
  note "changed segments (aligned diff):"
  cat "$flips" | sed 's/^/  /'
  local allowed_flips=",${allow_flips},"
  local allowed_remove=",${allow_remove},"
  local allowed_add=",${allow_add},"
  local red=0
  while IFS=$'\t' read -r kind oidx nidx op; do
    case "$kind" in
      FLIPPED)
        if [[ "$allowed_flips" != *",$oidx,"* ]]; then
          echo "fv-opt-loop: segment $oidx→$nidx ($op) FLIPPED but old index $oidx is not in --allow-flips '$allow_flips'" >&2
          red=1
        fi ;;
      REMOVED)
        if [[ "$allowed_remove" != *",$oidx,"* ]]; then
          echo "fv-opt-loop: segment $oidx ($op) REMOVED but not in --allow-remove '$allow_remove'" >&2
          red=1
        fi ;;
      ADDED)
        if [[ "$allowed_add" != *",$nidx,"* ]]; then
          echo "fv-opt-loop: new segment $nidx ($op) ADDED but not in --allow-add '$allow_add'" >&2
          red=1
        fi ;;
    esac
    # REMOVED segments need no regeneration; flips/adds must map to a family.
    if [[ "$kind" != "REMOVED" ]]; then
      local gen
      gen="$(generator_for_op "$op")"
      if [[ -z "$gen" ]]; then
        echo "fv-opt-loop: segment ${oidx}/${nidx} op $op has no regeneration family; proof design required" >&2
        red=1
      else
        note "  segment ${oidx}→${nidx} regenerates via tools/gnark/lean/gen/$gen"
      fi
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
  # SnarkPack boundary: config-only until S1
  # (`crates/crypto/proof-aggregation/optimization-playbook.md` §3). If the
  # aggregation crate differs from the merge base, its invariant gates pass too.
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

export_only() {
  sr1cs_out="$tmp_dir/$circuit.sr1cs"
  manifest_out="$tmp_dir/$circuit-manifest.json"
  note "recompiling $circuit (export only)"
  (
    cd "$GNARK_DIR"
    go run ./cmd/gnarkctl export-r1cs --circuit "$circuit" --out "$sr1cs_out" >/dev/null
    go run ./cmd/gnarkctl export-manifest --circuit "$circuit" --sr1cs "$sr1cs_out" --out "$manifest_out" >/dev/null
  )
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
  census)
    export_only
    python3 "$ROOT/scripts/fv-census.py" "$sr1cs_out" "$manifest_out"
    note "census complete (informational — not a gate)"
    ;;
esac

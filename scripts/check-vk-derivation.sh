#!/usr/bin/env bash
set -euo pipefail

# VK <-> .sr1cs derivation pinning (plan hole V1, first step).
#
# groth16.Setup is randomized, so deployed keys cannot be re-derived and
# hash-compared. The mechanical binding is instead:
#   1. pins   — circuit_metadata.json sha256 pins match the deployed
#               proving_key.bin / verifying_key.bin bytes, and the Lean
#               whole-circuit artifact stamp (when present) pins the same
#               VK hash the metadata does;
#   2. source — the circuit recompiled from the pinned source emits an
#               .sr1cs byte-identical to the deployed artifact .sr1cs;
#   3. keys   — either (--prove) a prove+verify round trip using the DEPLOYED
#               proving/verifying keys, or (--proof-receipt) validation of a
#               receipt emitted after export-fv proved against the exact
#               in-memory constraint system that wrote the fresh .sr1cs.
#               Keys generated from any other constraint system fail with
#               overwhelming probability.
#
# Together these close the "proved the model, trusted the plumbing" gap for
# key derivation (ZK-ASSUME-GNARK-FRONTEND-BACKEND, plumbing half). This is
# a NEW check; it modifies no existing gate.
#
# Usage: scripts/check-vk-derivation.sh <circuit>
#          [--sr1cs <path>] [--prove | --proof-receipt <path>]

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"

fail() { echo "check-vk-derivation: RED: $*" >&2; exit 1; }
note() { echo "check-vk-derivation: $*"; }

circuit="${1:-}"; shift || true
[[ -n "$circuit" ]] \
  || fail "usage: check-vk-derivation.sh <circuit> [--sr1cs <path>] [--prove | --proof-receipt <path>]"
run_prove=0
fresh_sr1cs=""
proof_receipt=""
while [[ "$#" -gt 0 ]]; do
  case "$1" in
    --prove) run_prove=1 ;;
    --sr1cs)
      shift
      [[ "$#" -gt 0 ]] || fail "--sr1cs requires a path"
      fresh_sr1cs="$1"
      ;;
    --proof-receipt)
      shift
      [[ "$#" -gt 0 ]] || fail "--proof-receipt requires a path"
      proof_receipt="$1"
      ;;
    *) fail "unknown argument $1" ;;
  esac
  shift
done
[[ "$run_prove" -eq 0 || -z "$proof_receipt" ]] \
  || fail "--prove and --proof-receipt are mutually exclusive"

adir="$GNARK_DIR/artifacts/$circuit"
meta="$adir/circuit_metadata.json"
[[ -f "$meta" ]] || fail "missing $meta"

sha() { shasum -a 256 "$1" | cut -d' ' -f1; }
jqget() { python3 -c "import json,sys;print(json.load(open('$meta'))['$1'])"; }

# 1. hash pins: metadata <-> deployed key artifacts. Writer semantics
# (gnarkctl setup): proving_key pin is over proving_key.bin, verifying_key
# pin is over verifying_key.json; check-vk-json binds the JSON encoding to
# the verifying_key.bin bytes the verifier actually loads.
pk_pin="$(jqget proving_key_sha256_hex)"
vk_pin="$(jqget verifying_key_sha256_hex)"
[[ "$(sha "$adir/proving_key.bin")" == "$pk_pin" ]] \
  || fail "proving_key.bin does not match metadata pin $pk_pin"
[[ "$(sha "$adir/verifying_key.json")" == "$vk_pin" ]] \
  || fail "verifying_key.json does not match metadata pin $vk_pin"
( cd "$GNARK_DIR" && go run ./cmd/gnarkctl check-vk-json --artifact-dir "$adir" >/dev/null ) \
  || fail "verifying_key.json does not encode the same key as verifying_key.bin"
note "key artifacts match metadata pins (pk $pk_pin, vk $vk_pin; json<->bin bound)"

# 1b. Lean whole-circuit artifact stamp pins the same VK hash (when present)
stamp="$ROOT/crates/core/component/shielded-pool/formal/$circuit-whole-circuit-lean-artifact.txt"
if [[ -f "$stamp" ]]; then
  grep -q "verifying_key_sha256_hex: $vk_pin" "$stamp" \
    || fail "Lean artifact stamp $stamp pins a DIFFERENT vk hash than metadata"
  note "Lean artifact stamp pins the same vk hash"
else
  case "$circuit" in
    note_reshape*)
      fail "missing mandatory whole-circuit Lean stamp for deployed family $circuit"
      ;;
    *)
      note "no whole-circuit Lean stamp for $circuit (not a Lean-deployed NoteReshape family)"
      ;;
  esac
fi

# 2. fresh source bytes -> byte-identical .sr1cs. The FV gate passes the
# already-compiled temporary file so this check never recompiles a family.
if [[ -z "$fresh_sr1cs" ]]; then
  tmp_dir="$(mktemp -d)"; trap 'rm -rf "$tmp_dir"' EXIT
  ( cd "$GNARK_DIR" && go run ./cmd/gnarkctl export-r1cs \
      --circuit "$circuit" --out "$tmp_dir/$circuit.sr1cs" >/dev/null )
  fresh_sr1cs="$tmp_dir/$circuit.sr1cs"
fi
cmp -s "$fresh_sr1cs" "$adir/$circuit.sr1cs" \
  || fail "recompiled .sr1cs differs from deployed artifact (source drift)"
note "recompiled .sr1cs byte-identical to deployed artifact"

# 3. deployed keys prove+verify against the recompiled constraint system.
if [[ "$run_prove" -eq 1 ]]; then
  case "$circuit" in
    note_reshape2x1) witness_name="note_reshape2x1_witness_v3.bin" ;;
    note_reshape4x1) witness_name="note_reshape4x1_witness_v3.bin" ;;
    note_reshape8x1) witness_name="note_reshape8x1_witness_v3.bin" ;;
    note_reshape1x8) witness_name="note_reshape1x8_witness_v3.bin" ;;
    *) witness_name="${circuit}_witness_v1.bin" ;;
  esac
  witness="$GNARK_DIR/internal/testfixtures/vectors/$witness_name"
  [[ -f "$witness" ]] || fail "missing witness fixture $witness"
  ( cd "$GNARK_DIR" && go run ./cmd/gnarkctl replay \
      --circuit "$circuit" --witness "$witness" \
      --artifact-dir "$adir" --mode prove ) \
    || fail "deployed keys failed prove+verify against the recompiled circuit"
  note "deployed keys prove+verify against the recompiled constraint system"
elif [[ -n "$proof_receipt" ]]; then
  [[ -f "$proof_receipt" ]] || fail "missing proof receipt $proof_receipt"
  receipt_values="$(python3 - "$proof_receipt" <<'PY'
import json
import sys

with open(sys.argv[1], encoding="utf-8") as handle:
    receipt = json.load(handle)
expected = {
    "schema_version",
    "circuit",
    "sr1cs_sha256_hex",
    "proving_key_sha256_hex",
    "verifying_key_sha256_hex",
    "proved_and_verified_in_process",
}
if set(receipt) != expected:
    raise SystemExit(f"unexpected proof receipt fields: {sorted(receipt)}")
if receipt["schema_version"] != 1:
    raise SystemExit(f"unsupported proof receipt schema {receipt['schema_version']!r}")
if receipt["proved_and_verified_in_process"] is not True:
    raise SystemExit("receipt does not attest successful in-process prove+verify")
for field in (
    "circuit",
    "sr1cs_sha256_hex",
    "proving_key_sha256_hex",
    "verifying_key_sha256_hex",
):
    print(receipt[field])
PY
)" || fail "invalid proof receipt $proof_receipt"
  receipt_circuit="$(sed -n '1p' <<< "$receipt_values")"
  receipt_sr1cs="$(sed -n '2p' <<< "$receipt_values")"
  receipt_pk="$(sed -n '3p' <<< "$receipt_values")"
  receipt_vk="$(sed -n '4p' <<< "$receipt_values")"
  [[ "$receipt_circuit" == "$circuit" ]] \
    || fail "proof receipt circuit $receipt_circuit does not match $circuit"
  [[ "$receipt_sr1cs" == "$(sha "$fresh_sr1cs")" ]] \
    || fail "proof receipt does not bind the fresh .sr1cs"
  [[ "$receipt_pk" == "$(sha "$adir/proving_key.bin")" ]] \
    || fail "proof receipt does not bind deployed proving_key.bin"
  [[ "$receipt_vk" == "$(sha "$adir/verifying_key.bin")" ]] \
    || fail "proof receipt does not bind deployed verifying_key.bin"
  note "in-process proof receipt binds fresh .sr1cs and deployed key bytes"
else
  note "key<->constraint-system binding NOT exercised (rerun with --prove)"
fi

note "GREEN"

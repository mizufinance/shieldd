#!/usr/bin/env bash
set -euo pipefail

# VK <-> .sr1cs derivation pinning.
#
# groth16.Setup is randomized, so deployed keys cannot be re-derived and
# hash-compared. The mechanical binding is instead:
#   1. pins   — circuit_metadata.json v1 pins the deployed proving-key binary,
#               verifying-key binary, and canonical verifying-key JSON bytes;
#               the Lean whole-circuit artifact stamp (when present) pins the
#               same canonical VK JSON hash;
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
# key derivation (ZK-ASSUME-GNARK-FRONTEND-BACKEND, plumbing half).
#
# Usage: scripts/check-vk-derivation.sh <circuit>
#          [--sr1cs <path>]
#          [--drift-only | --prove | --proof-receipt <path>]

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"

fail() { echo "check-vk-derivation: RED: $*" >&2; exit 1; }
note() { echo "check-vk-derivation: $*"; }

circuit="${1:-}"; shift || true
[[ -n "$circuit" ]] \
  || fail "usage: check-vk-derivation.sh <circuit> [--sr1cs <path>] [--drift-only | --prove | --proof-receipt <path>]"
run_prove=0
drift_only=0
fresh_sr1cs=""
proof_receipt=""
while [[ "$#" -gt 0 ]]; do
  case "$1" in
    --prove) run_prove=1 ;;
    --drift-only) drift_only=1 ;;
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
selected_modes=$((run_prove + drift_only))
if [[ -n "$proof_receipt" ]]; then
  selected_modes=$((selected_modes + 1))
fi
[[ "$selected_modes" -eq 1 ]] \
  || fail "select exactly one of --drift-only, --prove, or --proof-receipt"

profile_row="$(
  python3 "$ROOT/scripts/check-fv-profiles.py" --emit-tsv "$circuit"
)" || fail "circuit is not a valid FV profile: $circuit"
IFS=$'\t' read -r \
  profile_label _profile_status _profile_kind _profile_n_in _profile_n_out \
  witness_rel _profile_artifact _profile_manifest _profile_witness_version \
  <<< "$profile_row"
[[ "$profile_label" == "$circuit" ]] \
  || fail "profile lookup returned $profile_label for $circuit"
witness="$GNARK_DIR/$witness_rel"
[[ -f "$witness" ]] || fail "missing witness fixture $witness"

adir="$GNARK_DIR/artifacts/$circuit"
meta="$adir/circuit_metadata.json"
[[ -f "$meta" ]] || fail "missing $meta"

sha() { shasum -a 256 "$1" | cut -d' ' -f1; }
jqget() { python3 -c "import json,sys;print(json.load(open('$meta'))['$1'])"; }

# 1. hash pins: metadata <-> every deployed key encoding.
pk_pin="$(jqget proving_key_sha256_hex)"
vk_binary_pin="$(jqget verifying_key_binary_sha256_hex)"
vk_json_pin="$(jqget verifying_key_json_sha256_hex)"
[[ "$(sha "$adir/proving_key.bin")" == "$pk_pin" ]] \
  || fail "proving_key.bin does not match metadata pin $pk_pin"
[[ "$(sha "$adir/verifying_key.bin")" == "$vk_binary_pin" ]] \
  || fail "verifying_key.bin does not match metadata pin $vk_binary_pin"
[[ "$(sha "$adir/verifying_key.json")" == "$vk_json_pin" ]] \
  || fail "verifying_key.json does not match metadata pin $vk_json_pin"
( cd "$GNARK_DIR" && go run ./cmd/gnarkctl check-vk-json --artifact-dir "$adir" >/dev/null ) \
  || fail "verifying_key.json does not encode the same key as verifying_key.bin"
note "key artifacts match metadata pins (pk $pk_pin, vk-bin $vk_binary_pin, vk-json $vk_json_pin; json<->bin bound)"

# 1b. Lean whole-circuit artifact stamp pins the same VK hash (when present)
stamp="$ROOT/crates/core/component/shielded-pool/formal/$circuit-whole-circuit-lean-artifact.txt"
if [[ -f "$stamp" ]]; then
  grep -q "verifying_key_json_sha256_hex: $vk_json_pin" "$stamp" \
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
  ( cd "$GNARK_DIR" && go run ./cmd/gnarkctl replay \
      --circuit "$circuit" --witness "$witness" \
      --artifact-dir "$adir" --mode prove ) \
    || fail "deployed keys failed prove+verify against the recompiled circuit"
  note "deployed keys prove+verify against the recompiled constraint system"
elif [[ -n "$proof_receipt" ]]; then
  [[ -f "$proof_receipt" ]] || fail "missing proof receipt $proof_receipt"
  fresh_manifest="${fresh_sr1cs%.sr1cs}-manifest.json"
  [[ -f "$fresh_manifest" ]] || fail "missing fresh manifest $fresh_manifest for receipt"
  python3 - "$proof_receipt" "$circuit" "$fresh_sr1cs" "$fresh_manifest" "$witness" "$adir" <<'PY' \
    || fail "invalid proof receipt $proof_receipt"
import hashlib
import json
import sys
from pathlib import Path

receipt_path, circuit, sr1cs_path, manifest_path, witness_path, artifact_dir = sys.argv[1:]
receipt = json.loads(Path(receipt_path).read_text(encoding="utf-8"))
expected = {
    "schema_version",
    "circuit",
    "witness_format_version",
    "witness_sha256_hex",
    "sr1cs_sha256_hex",
    "constraint_manifest_sha256_hex",
    "circuit_metadata_sha256_hex",
    "proving_key_sha256_hex",
    "verifying_key_binary_sha256_hex",
    "verifying_key_json_sha256_hex",
    "nb_constraints",
    "nb_public_variables",
    "nb_secret_variables",
    "proved_and_verified_in_process",
}
if set(receipt) != expected:
    raise SystemExit(f"unexpected proof receipt fields: {sorted(receipt)}")
if receipt["schema_version"] != 3:
    raise SystemExit(f"unsupported proof receipt schema {receipt['schema_version']!r}")
if receipt["proved_and_verified_in_process"] is not True:
    raise SystemExit("receipt does not attest successful in-process prove+verify")

def sha256(path: str) -> str:
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()

artifact = Path(artifact_dir)
witness_bytes = Path(witness_path).read_bytes()
if len(witness_bytes) < 8:
    raise SystemExit("witness is too short for its format-version header")
checks = {
    "circuit": circuit,
    "witness_format_version": int.from_bytes(witness_bytes[4:8], "little"),
    "witness_sha256_hex": sha256(witness_path),
    "sr1cs_sha256_hex": sha256(sr1cs_path),
    "constraint_manifest_sha256_hex": sha256(manifest_path),
    "circuit_metadata_sha256_hex": sha256(str(artifact / "circuit_metadata.json")),
    "proving_key_sha256_hex": sha256(str(artifact / "proving_key.bin")),
    "verifying_key_binary_sha256_hex": sha256(str(artifact / "verifying_key.bin")),
    "verifying_key_json_sha256_hex": sha256(str(artifact / "verifying_key.json")),
}
for field, expected_value in checks.items():
    if receipt[field] != expected_value:
        raise SystemExit(f"receipt {field} does not bind the expected artifact")

manifest = json.loads(Path(manifest_path).read_text(encoding="utf-8"))
count_checks = {
    "nb_constraints": manifest["nb_constraints"],
    "nb_public_variables": manifest["nb_public_variables"],
    "nb_secret_variables": manifest["nb_secret_variables"],
}
for field, expected_value in count_checks.items():
    if receipt[field] != expected_value:
        raise SystemExit(f"receipt {field} does not match the fresh manifest")
PY
  note "in-process proof receipt binds witness, SR1CS, manifest, metadata, PK, and both VK encodings"
else
  note "DRIFT-ONLY: key<->constraint-system binding was not exercised"
fi

if [[ "$drift_only" -eq 1 ]]; then
  note "DRIFT-ONLY complete; this is not a key-binding or certification result"
else
  note "GREEN"
fi

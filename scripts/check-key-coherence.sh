#!/usr/bin/env bash
set -euo pipefail

# Deployed key <-> exact SR1CS coherence and setup-provenance boundary.
#
# groth16.Setup is randomized. Without an attested setup transcript, deployed
# keys cannot be mechanically re-derived or proven to originate from one exact
# SR1CS. This gate therefore checks:
#   1. pins   — circuit_metadata.json v2 pins the exact canonical SR1CS,
#               setup-provenance receipt,
#               deployed proving-key binary, verifying-key binary, and
#               canonical verifying-key JSON bytes;
#               the Lean whole-circuit artifact stamp (when present) pins the
#               the same artifact hashes;
#   2. source — the circuit recompiled from the pinned source emits an
#               SR1CS byte-identical to the deployed artifact and metadata pin;
#   3. keys   — either (--prove) a prove+verify round trip using the DEPLOYED
#               proving/verifying keys, or (--proof-receipt) validation of a
#               receipt emitted after export-fv proved against the exact
#               in-memory constraint system that wrote the fresh .sr1cs.
#
# A successful proof demonstrates coherence for the selected fixture, not key
# derivation for every witness. Certification still trusts that setup consumed
# the metadata-bound SR1CS and that its toxic waste was erased.
#
# Usage: scripts/check-key-coherence.sh <circuit>
#          [--sr1cs <path>]
#          [--drift-only |
#           --prove --proof-case <case> |
#           --proof-receipt <path> --proof-case <case>]

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"

fail() { echo "check-key-coherence: RED: $*" >&2; exit 1; }
note() { echo "check-key-coherence: $*"; }

circuit="${1:-}"; shift || true
[[ -n "$circuit" ]] \
  || fail "usage: check-key-coherence.sh <circuit> [--sr1cs <path>] [--drift-only | --prove --proof-case <case> | --proof-receipt <path> --proof-case <case>]"
run_prove=0
drift_only=0
fresh_sr1cs=""
proof_receipt=""
proof_case=""
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
    --proof-case)
      shift
      [[ "$#" -gt 0 ]] || fail "--proof-case requires a case"
      proof_case="$1"
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
if [[ "$drift_only" -eq 1 ]]; then
  [[ -z "$proof_case" ]] || fail "--proof-case is invalid with --drift-only"
else
  [[ -n "$proof_case" ]] || fail "--proof-case is required for proof validation"
fi

proof_rows="$(
  python3 "$ROOT/scripts/check-fv-profiles.py" \
    --emit-proof-witness-tsv "$circuit"
)" || fail "circuit is not a valid FV profile: $circuit"
IFS=$'\t' read -r profile_label profile_status _ <<< "$proof_rows"
[[ "$profile_label" == "$circuit" ]] \
  || fail "profile lookup returned $profile_label for $circuit"
witness=""
if [[ -n "$proof_case" ]]; then
  matching_rows=()
  while IFS=$'\t' read -r \
    row_label _row_status _row_kind _row_n_in _row_n_out \
    row_case row_witness_rel _row_artifact _row_manifest _row_version; do
    if [[ "$row_label" == "$circuit" && "$row_case" == "$proof_case" ]]; then
      matching_rows+=("$row_witness_rel")
    fi
  done <<< "$proof_rows"
  [[ "${#matching_rows[@]}" -eq 1 ]] \
    || fail "proof case $proof_case is not an exact canonical case for $circuit"
  witness="$GNARK_DIR/${matching_rows[0]}"
  [[ -f "$witness" ]] || fail "missing witness fixture $witness"
fi

adir="$GNARK_DIR/artifacts/$circuit"
meta="$adir/circuit_metadata.json"
[[ -f "$meta" ]] || fail "missing $meta"

sha() { shasum -a 256 "$1" | cut -d' ' -f1; }
jqget() { python3 "$ROOT/scripts/fv-json-field.py" "$meta" "$1"; }

# 1. hash pins: metadata <-> every deployed key encoding.
pk_pin="$(jqget proving_key_sha256_hex)"
vk_binary_pin="$(jqget verifying_key_binary_sha256_hex)"
vk_json_pin="$(jqget verifying_key_json_sha256_hex)"
sr1cs_pin="$(jqget sr1cs_sha256_hex)"
setup_provenance_pin="$(jqget setup_provenance_sha256_hex)"
[[ "$(sha "$adir/$circuit.sr1cs")" == "$sr1cs_pin" ]] \
  || fail "$circuit.sr1cs does not match metadata pin $sr1cs_pin"
[[ "$(sha "$adir/setup_provenance.json")" == "$setup_provenance_pin" ]] \
  || fail "setup_provenance.json does not match metadata pin $setup_provenance_pin"
[[ "$(sha "$adir/proving_key.bin")" == "$pk_pin" ]] \
  || fail "proving_key.bin does not match metadata pin $pk_pin"
[[ "$(sha "$adir/verifying_key.bin")" == "$vk_binary_pin" ]] \
  || fail "verifying_key.bin does not match metadata pin $vk_binary_pin"
[[ "$(sha "$adir/verifying_key.json")" == "$vk_json_pin" ]] \
  || fail "verifying_key.json does not match metadata pin $vk_json_pin"
( cd "$GNARK_DIR" && go run ./cmd/gnarkctl check-vk-json --artifact-dir "$adir" >/dev/null ) \
  || fail "verifying_key.json does not encode the same key as verifying_key.bin"
note "SR1CS, setup provenance, and key artifacts match metadata pins (sr1cs $sr1cs_pin, provenance $setup_provenance_pin, pk $pk_pin, vk-bin $vk_binary_pin, vk-json $vk_json_pin; json<->bin bound)"

# 1b. Lean whole-circuit artifact stamp pins the same VK hash (when present)
stamp="$ROOT/crates/core/component/shielded-pool/formal/$circuit-whole-circuit-lean-artifact.txt"
if [[ -f "$stamp" ]]; then
  grep -Fxq "whole_circuit_sr1cs_sha256: $sr1cs_pin" "$stamp" \
    || fail "Lean artifact stamp $stamp pins a DIFFERENT SR1CS hash than metadata"
  grep -Fxq "metadata_sr1cs_sha256_hex: $sr1cs_pin" "$stamp" \
    || fail "Lean artifact stamp $stamp pins a DIFFERENT metadata SR1CS hash"
  grep -Fxq "setup_provenance_sha256: $setup_provenance_pin" "$stamp" \
    || fail "Lean artifact stamp $stamp pins a DIFFERENT setup provenance than metadata"
  grep -Fxq "metadata_setup_provenance_sha256_hex: $setup_provenance_pin" "$stamp" \
    || fail "Lean artifact stamp $stamp pins a DIFFERENT metadata setup-provenance hash"
  grep -Fxq "proving_key_sha256_hex: $pk_pin" "$stamp" \
    || fail "Lean artifact stamp $stamp pins a DIFFERENT proving-key hash than metadata"
  grep -Fxq "verifying_key_binary_sha256_hex: $vk_binary_pin" "$stamp" \
    || fail "Lean artifact stamp $stamp pins a DIFFERENT binary verifying-key hash than metadata"
  grep -Fxq "verifying_key_json_sha256_hex: $vk_json_pin" "$stamp" \
    || fail "Lean artifact stamp $stamp pins a DIFFERENT JSON verifying-key hash than metadata"
  note "Lean artifact stamp pins the same SR1CS, setup-provenance, proving-key, and verifying-key hashes"
else
  [[ "$profile_status" != "certified" ]] \
    || fail "missing mandatory whole-circuit Lean stamp for certified family $circuit"
  note "no whole-circuit Lean stamp for candidate family $circuit"
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
[[ "$(sha "$fresh_sr1cs")" == "$sr1cs_pin" ]] \
  || fail "recompiled .sr1cs differs from metadata pin $sr1cs_pin"
note "recompiled .sr1cs byte-identical to deployed artifact"

# 3. deployed keys prove+verify against the recompiled constraint system.
if [[ "$run_prove" -eq 1 ]]; then
  ( cd "$GNARK_DIR" && go run ./cmd/gnarkctl replay \
      --circuit "$circuit" --witness "$witness" \
      --artifact-dir "$adir" --mode prove ) \
    || fail "deployed keys failed prove+verify against the recompiled circuit"
  note "deployed keys prove+verify for canonical case $proof_case against the recompiled constraint system"
elif [[ -n "$proof_receipt" ]]; then
  [[ -f "$proof_receipt" ]] || fail "missing proof receipt $proof_receipt"
  fresh_manifest="${fresh_sr1cs%.sr1cs}-manifest.json"
  [[ -f "$fresh_manifest" ]] || fail "missing fresh manifest $fresh_manifest for receipt"
  PYTHONPATH="$ROOT/scripts${PYTHONPATH:+:$PYTHONPATH}" \
    python3 - "$proof_receipt" "$circuit" "$proof_case" "$fresh_sr1cs" "$fresh_manifest" "$witness" "$adir" <<'PY' \
    || fail "invalid proof receipt $proof_receipt"
import hashlib
import sys
from pathlib import Path

from fv_strict_json import StrictJsonError, load as load_strict_json

(
    receipt_path,
    circuit,
    proof_case,
    sr1cs_path,
    manifest_path,
    witness_path,
    artifact_dir,
) = sys.argv[1:]

def strict_json(path):
    try:
        return load_strict_json(Path(path), f"FV artifact JSON {path}")
    except StrictJsonError as error:
        raise SystemExit(str(error)) from error

receipt = strict_json(receipt_path)
expected = {
    "schema_version",
    "circuit",
    "proof_case",
    "witness_format_version",
    "witness_sha256_hex",
    "sr1cs_sha256_hex",
    "constraint_manifest_sha256_hex",
    "circuit_metadata_sha256_hex",
    "setup_provenance_sha256_hex",
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
if receipt["schema_version"] != 4:
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
    "proof_case": proof_case,
    "witness_format_version": int.from_bytes(witness_bytes[4:8], "little"),
    "witness_sha256_hex": sha256(witness_path),
    "sr1cs_sha256_hex": sha256(sr1cs_path),
    "constraint_manifest_sha256_hex": sha256(manifest_path),
    "circuit_metadata_sha256_hex": sha256(str(artifact / "circuit_metadata.json")),
    "setup_provenance_sha256_hex": sha256(str(artifact / "setup_provenance.json")),
    "proving_key_sha256_hex": sha256(str(artifact / "proving_key.bin")),
    "verifying_key_binary_sha256_hex": sha256(str(artifact / "verifying_key.bin")),
    "verifying_key_json_sha256_hex": sha256(str(artifact / "verifying_key.json")),
}
for field, expected_value in checks.items():
    if receipt[field] != expected_value:
        raise SystemExit(f"receipt {field} does not bind the expected artifact")

manifest = strict_json(manifest_path)
count_checks = {
    "nb_constraints": manifest["nb_constraints"],
    "nb_public_variables": manifest["nb_public_variables"],
    "nb_secret_variables": manifest["nb_secret_variables"],
}
for field, expected_value in count_checks.items():
    if receipt[field] != expected_value:
        raise SystemExit(f"receipt {field} does not match the fresh manifest")
PY
  note "in-process proof receipt binds canonical case $proof_case, its witness, SR1CS, manifest, metadata, PK, and both VK encodings"
else
  note "DRIFT-ONLY: key<->constraint-system binding was not exercised"
fi

if [[ "$drift_only" -eq 1 ]]; then
  note "DRIFT-ONLY complete; this is not key-provenance or certification evidence"
else
  note "GREEN"
fi

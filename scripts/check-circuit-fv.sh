#!/usr/bin/env bash
set -euo pipefail

# Profile-driven FV artifact and deployed-key gate.
#
#   drift    compile each selected circuit once and compare its SR1CS and
#            semantic manifest with committed artifacts.
#   receipt  drift plus in-process prove/verify using the deployed PK/VK,
#            emitting a receipt bound to witness, SR1CS, manifest, and keys.
#
# Candidate receipts prove artifact consistency; they are not certification.
# Only profiles marked certified may make a formal soundness claim.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"
MODE="${1:-}"
case "$MODE" in
  drift|receipt) shift ;;
  *)
    echo "usage: $(basename "$0") [drift|receipt] [profile|all]..." >&2
    exit 2
    ;;
esac

fail() {
  echo "check-circuit-fv failed: $*" >&2
  exit 1
}

tmp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT
export GOCACHE="${GOCACHE:-$tmp_dir/go-cache}"

profile_args=("$@")
if [[ "${#profile_args[@]}" -eq 0 ]]; then
  profile_args=(all)
fi
profiles=()
allow_empty=0
for ((index = 0; index + 1 < ${#profile_args[@]}; index++)); do
  if [[ "${profile_args[$index]}" == "--status" \
    && "${profile_args[$((index + 1))]}" == "candidate" ]]; then
    allow_empty=1
  fi
done
profile_rows="$(
  python3 "$ROOT/scripts/check-fv-profiles.py" \
    --emit-tsv --allow-empty "${profile_args[@]}"
)"
proof_witness_rows="$(
  python3 "$ROOT/scripts/check-fv-profiles.py" \
    --emit-proof-witness-tsv --allow-empty "${profile_args[@]}"
)"
while IFS= read -r row; do
  [[ -n "$row" ]] && profiles+=("$row")
done <<< "$profile_rows"
if [[ "${#profiles[@]}" -eq 0 ]]; then
  [[ "$allow_empty" -eq 1 ]] || fail "no profiles selected"
  echo "FV $MODE ok: no candidate profiles"
  exit 0
fi

for row in "${profiles[@]}"; do
  IFS=$'\t' read -r \
    circuit status kind n_in n_out \
    _first_witness_rel artifact_rel manifest_rel witness_version <<< "$row"
  artifact_dir="$GNARK_DIR/$artifact_rel"
  committed_manifest="$GNARK_DIR/$manifest_rel"
  committed_sr1cs="$artifact_dir/$circuit.sr1cs"
  fresh_sr1cs="$tmp_dir/$circuit.sr1cs"
  fresh_manifest="$tmp_dir/$circuit-manifest.json"

  [[ -f "$committed_sr1cs" ]] || fail "$circuit: missing $committed_sr1cs"
  [[ -f "$committed_manifest" ]] || fail "$circuit: missing $committed_manifest"

  export_args=(
    --circuit "$circuit"
    --sr1cs-out "$fresh_sr1cs"
    --manifest-out "$fresh_manifest"
  )
  if [[ "$MODE" == "receipt" ]]; then
    export_args+=(
      --prove
      --artifact-dir "$artifact_dir"
    )
    proof_cases=()
    proof_witnesses=()
    proof_receipts=()
    while IFS=$'\t' read -r \
      proof_circuit _proof_status _proof_kind _proof_n_in _proof_n_out \
      proof_case proof_witness_rel _proof_artifact _proof_manifest \
      proof_witness_version; do
      [[ "$proof_circuit" == "$circuit" ]] || continue
      [[ "$proof_witness_version" == "$witness_version" ]] \
        || fail "$circuit/$proof_case: inconsistent witness format version"
      proof_witness="$GNARK_DIR/$proof_witness_rel"
      proof_receipt="$tmp_dir/$circuit-$proof_case-proof-receipt.json"
      [[ -f "$proof_witness" ]] \
        || fail "$circuit/$proof_case: missing $proof_witness"
      proof_cases+=("$proof_case")
      proof_witnesses+=("$proof_witness")
      proof_receipts+=("$proof_receipt")
      export_args+=(
        --proof-case "$proof_case"
        --witness "$proof_witness"
        --proof-receipt-out "$proof_receipt"
      )
    done <<< "$proof_witness_rows"
    [[ "${#proof_cases[@]}" -gt 0 ]] \
      || fail "$circuit: no canonical proof witnesses"
  fi

  (
    cd "$GNARK_DIR"
    go run ./cmd/gnarkctl export-fv "${export_args[@]}"
  )

  cmp -s "$fresh_sr1cs" "$committed_sr1cs" \
    || fail "$circuit: committed SR1CS drifted"
  if ! cmp -s "$fresh_manifest" "$committed_manifest"; then
    diff -u "$committed_manifest" "$fresh_manifest" >&2 || true
    fail "$circuit: committed semantic manifest drifted"
  fi

  python3 "$ROOT/scripts/check-fv-specification-completeness.py" \
    --profile "$circuit" \
    --manifest "$circuit=$fresh_manifest" \
    --require-relation-evidence \
    || fail "$circuit: fresh relation does not implement the predicate matrix"

  PYTHONPATH="$ROOT/scripts${PYTHONPATH:+:$PYTHONPATH}" python3 - \
    "$fresh_manifest" "$circuit" "$kind" "$n_in" "$n_out" "$status" <<'PY'
import sys
from pathlib import Path

from fv_strict_json import StrictJsonError, load as load_strict_json

try:
    manifest = load_strict_json(Path(sys.argv[1]), "fresh semantic manifest")
except StrictJsonError as error:
    raise SystemExit(str(error)) from error
circuit, kind, n_in, n_out, status = sys.argv[2:]
if manifest["circuit"] != circuit:
    raise SystemExit("semantic manifest circuit mismatch")
if manifest["shape"] != {"n_in": int(n_in), "n_out": int(n_out)}:
    raise SystemExit("semantic manifest shape mismatch")
if manifest["breakdown"]["unclassified_constraints"] != 0 and status == "certified":
    raise SystemExit("certified manifest contains unclassified constraints")
if not manifest["semantic_bindings"] and status == "certified":
    raise SystemExit("certified manifest has no semantic bindings")
PY

  if [[ "$MODE" == "receipt" ]]; then
    for ((proof_index = 0; proof_index < ${#proof_cases[@]}; proof_index++)); do
      proof_case="${proof_cases[$proof_index]}"
      proof_receipt="${proof_receipts[$proof_index]}"
      PYTHONPATH="$ROOT/scripts${PYTHONPATH:+:$PYTHONPATH}" python3 - \
        "$proof_receipt" "$circuit" "$proof_case" "$witness_version" <<'PY'
import sys
from pathlib import Path

from fv_strict_json import StrictJsonError, load as load_strict_json

def strict_json(path):
    try:
        return load_strict_json(Path(path), f"proof receipt {path}")
    except StrictJsonError as error:
        raise SystemExit(str(error)) from error

receipt = strict_json(sys.argv[1])
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
    raise SystemExit("unexpected proof receipt fields")
if receipt["schema_version"] != 4:
    raise SystemExit("unexpected proof receipt schema")
if receipt["circuit"] != sys.argv[2]:
    raise SystemExit("proof receipt circuit mismatch")
if receipt["proof_case"] != sys.argv[3]:
    raise SystemExit("proof receipt case mismatch")
if receipt["witness_format_version"] != int(sys.argv[4]):
    raise SystemExit("proof receipt witness format mismatch")
if receipt["proved_and_verified_in_process"] is not True:
    raise SystemExit("proof receipt does not attest in-process prove/verify")
PY
      bash "$ROOT/scripts/check-key-coherence.sh" "$circuit" \
        --sr1cs "$fresh_sr1cs" \
        --proof-case "$proof_case" \
        --proof-receipt "$proof_receipt"
    done
  else
    bash "$ROOT/scripts/check-key-coherence.sh" "$circuit" \
      --sr1cs "$fresh_sr1cs" \
      --drift-only
  fi

  if [[ "$MODE" == "receipt" ]]; then
    echo "FV $MODE ok: $circuit ($status; ${#proof_cases[@]} proof cases)"
  else
    echo "FV $MODE ok: $circuit ($status)"
  fi
done

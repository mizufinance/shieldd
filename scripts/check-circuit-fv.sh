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
while IFS= read -r row; do
  [[ -n "$row" ]] && profiles+=("$row")
done < <(
  python3 "$ROOT/scripts/check-fv-profiles.py" --emit-tsv "${profile_args[@]}"
)
[[ "${#profiles[@]}" -gt 0 ]] || fail "no profiles selected"

for row in "${profiles[@]}"; do
  IFS=$'\t' read -r \
    circuit status kind n_in n_out \
    witness_rel artifact_rel manifest_rel witness_version <<< "$row"
  artifact_dir="$GNARK_DIR/$artifact_rel"
  committed_manifest="$GNARK_DIR/$manifest_rel"
  committed_sr1cs="$artifact_dir/$circuit.sr1cs"
  witness="$GNARK_DIR/$witness_rel"
  fresh_sr1cs="$tmp_dir/$circuit.sr1cs"
  fresh_manifest="$tmp_dir/$circuit-manifest.json"
  receipt="$tmp_dir/$circuit-proof-receipt.json"

  [[ -f "$committed_sr1cs" ]] || fail "$circuit: missing $committed_sr1cs"
  [[ -f "$committed_manifest" ]] || fail "$circuit: missing $committed_manifest"
  [[ -f "$witness" ]] || fail "$circuit: missing $witness"

  export_args=(
    --circuit "$circuit"
    --sr1cs-out "$fresh_sr1cs"
    --manifest-out "$fresh_manifest"
  )
  if [[ "$MODE" == "receipt" ]]; then
    export_args+=(
      --prove
      --witness "$witness"
      --artifact-dir "$artifact_dir"
      --proof-receipt-out "$receipt"
    )
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

  python3 - \
    "$fresh_manifest" "$circuit" "$kind" "$n_in" "$n_out" "$status" <<'PY'
import json
import sys

manifest = json.load(open(sys.argv[1], encoding="utf-8"))
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
    python3 - "$receipt" "$circuit" "$witness_version" <<'PY'
import json
import sys

receipt = json.load(open(sys.argv[1], encoding="utf-8"))
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
    raise SystemExit("unexpected proof receipt fields")
if receipt["schema_version"] != 3:
    raise SystemExit("unexpected proof receipt schema")
if receipt["circuit"] != sys.argv[2]:
    raise SystemExit("proof receipt circuit mismatch")
if receipt["witness_format_version"] != int(sys.argv[3]):
    raise SystemExit("proof receipt witness format mismatch")
if receipt["proved_and_verified_in_process"] is not True:
    raise SystemExit("proof receipt does not attest in-process prove/verify")
PY
    bash "$ROOT/scripts/check-vk-derivation.sh" "$circuit" \
      --sr1cs "$fresh_sr1cs" \
      --proof-receipt "$receipt"
  else
    bash "$ROOT/scripts/check-vk-derivation.sh" "$circuit" \
      --sr1cs "$fresh_sr1cs" \
      --drift-only
  fi

  echo "FV $MODE ok: $circuit ($status)"
done

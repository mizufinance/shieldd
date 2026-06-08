#!/usr/bin/env bash
set -euo pipefail

# C3 gadget-theorem certification (Phase C / Track C — the only route to `proved`).
#
# Certifies the ACL2 `R1CS => spec` proofs for decomposed soundness-critical
# gadgets, then verifies (1) the gnark parity test ties the ACL2 model to the
# *actual* compiled gadget R1CS and (2) the checked-in stamped artifact matches
# the freshly certified proof. A `proved` gadget-ledger row is only honest if all
# three hold. This is heavy prover work: it runs in the soundness-formal CI
# `provers` job, not on every PR and not in the cheap invariant gate.
#
# Requires the parallel ACL2 image (`acl2p`): the distribution's `arithmetic-5`
# community books are pre-certified under ACL2(p), and the serial `acl2` image
# rejects their `arithmetic-5-current-base` deftheory (INCREMENT-TIMER@PAR).

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

ACL2_DIR="crates/core/component/shielded-pool/formal/acl2"
GENERATED_DIR="$ACL2_DIR/generated"
BOOL_SELECT_PROOF=bool-select-proof
ISZERO_PROOF=iszero-proof
FIELD_LESS_THAN_LIFT=field-less-than-lift
FIELD_LESS_THAN_LADDER_PROOF=field-less-than-ladder-proof
FIELD_LESS_THAN_PACK_PROOF=field-less-than-pack-proof
FIELD_LESS_THAN_PROOF=field-less-than-proof
POSEIDON2_SMOKE_PROOF=poseidon2-lift-smoke
NULLIFIER_SMOKE_PROOF=nullifier-lift-smoke
POSEIDON2_PROOF=poseidon2-proof
NULLIFIER_PROOF=nullifier-proof
BOOL_SELECT_LEAN=tools/gnark/lean/PenumbraGnarkFormal/Extracted/BoolSelect.lean
ISZERO_LEAN=tools/gnark/lean/PenumbraGnarkFormal/Extracted/IsZero.lean
NULLIFIER_LEAN=tools/gnark/lean/PenumbraGnarkFormal/Extracted/Nullifier.lean
BOOL_SELECT_LEAN_ARTIFACT=tools/gnark/lean/bool-select-lean-artifact.txt

fail() {
  echo "circuit gadget proof check failed: $*" >&2
  exit 1
}

# Prefer the parallel image `acl2p`: the homebrew bottle's `arithmetic-5`
# community books are pre-certified under ACL2(p), so the serial `acl2` rejects
# their deftheory. Where the books are certified under the serial image (e.g. a
# nix build), plain `acl2` works — set ACL2P_BIN to override.
if [ -n "${ACL2P_BIN:-}" ]; then
  ACL2P="$ACL2P_BIN"
elif command -v acl2p >/dev/null 2>&1; then
  ACL2P=acl2p
elif command -v acl2 >/dev/null 2>&1; then
  ACL2P=acl2
else
  fail "no ACL2 image found (acl2p/acl2); set ACL2P_BIN"
fi
command -v "$ACL2P" >/dev/null 2>&1 || fail "ACL2 image not executable: $ACL2P"

if [ -n "${ACL2_CERT_PL:-}" ]; then
  CERT_PL="$ACL2_CERT_PL"
elif command -v cert.pl >/dev/null 2>&1; then
  CERT_PL="$(command -v cert.pl)"
else
  CERT_PL="$(
    find /opt/homebrew/Cellar/acl2 /usr/share/acl2 /nix/store \
      -path '*/books/build/cert.pl' -print 2>/dev/null \
      | sort \
      | tail -1 \
      || true
  )"
fi
[[ -n "$CERT_PL" && -x "$CERT_PL" ]] || fail "cert.pl not found; set ACL2_CERT_PL"

# STP preflight (advisory, non-fatal). STP would discharge the field-less-than
# `packbv <= p-1` reducedness bounds, but it is NOT reachable through `verify-r1cs`
# in the current ACL2 bottle: the R1CS prover has no `:stp` tactic, and the
# STP-capable `prove-with-tactics` book is uncertified here (see
# circuit-gadget-proofs.md "STP lever refuted"). No checked-in proof depends on
# STP yet, so this only reports solver readiness for the books-complete-image
# route; it does not gate. `STP` selects the binary (default `stp`),
# `ACL2_STP_VARIETY=2` the option syntax for STP 2.3.x.
STP_BIN="${STP:-stp}"
AXE_DIR="$(dirname "$CERT_PL")/../kestrel/axe"
if command -v "$STP_BIN" >/dev/null 2>&1 && [ -x "$AXE_DIR/teststp.bash" ] \
   && STP="$STP_BIN" ACL2_STP_VARIETY="${ACL2_STP_VARIETY:-2}" \
        bash "$AXE_DIR/teststp.bash" 2>/dev/null | rg -q "Valid\."; then
  echo "  (STP preflight: binary ok ($STP_BIN, variety ${ACL2_STP_VARIETY:-2}); not yet used by any proof)"
else
  echo "  (STP preflight: STP not callable; fine — no checked-in proof uses STP)"
fi

certify_book() {
  local proof="$1"
  rm -f "$ACL2_DIR/$proof.cert"
  (cd "$ACL2_DIR" && echo "(certify-book \"$proof\" 0)" | "$ACL2P") >"$ACL2_DIR/$proof.cert.out" 2>&1 || true
  [ -f "$ACL2_DIR/$proof.cert" ] \
    || { tail -40 "$ACL2_DIR/$proof.cert.out" >&2; fail "ACL2 certification produced no .cert for $proof"; }
  rg -q "Q.E.D." "$ACL2_DIR/$proof.cert.out" \
    || fail "ACL2 certification did not reach Q.E.D. for $proof"
}

certify_with_cert_pl() {
  local book="$1"
  (cd "$ACL2_DIR" && ACL2="$ACL2P" "$CERT_PL" "$book") \
    >"$ACL2_DIR/$book.cert.out" 2>&1 \
    || { tail -80 "$ACL2_DIR/$book.cert.out" >&2; fail "cert.pl failed for $book"; }
  [ -f "$ACL2_DIR/$book.cert" ] \
    || fail "cert.pl produced no .cert for $book"
}

check_artifact_stamp() {
  local proof="$1"
  local artifact="$ACL2_DIR/$proof-artifact.txt"
  local proof_sha cert_sha want got

  [ -f "$artifact" ] || fail "missing proof artifact $artifact"
  proof_sha="$(shasum -a 256 "$ACL2_DIR/$proof.lisp" | awk '{print $1}')"
  cert_sha="$(shasum -a 256 "$ACL2_DIR/$proof.cert" | awk '{print $1}')"
  rg -q "proof_source_sha256: $proof_sha" "$artifact" \
    || fail "artifact proof_source_sha256 for $proof != $proof_sha (re-stamp $artifact)"
  echo "  ($proof certified cert sha256: $cert_sha)"

  [ -f "$artifact.sha256" ] || fail "missing artifact stamp $artifact.sha256"
  want="$(cat "$artifact.sha256")"
  got="$(shasum -a 256 "$artifact" | awk '{print $1}')"
  [ "$want" = "$got" ] || fail "artifact stamp mismatch: $artifact ($got != $want)"
  echo "  ($proof artifact sha256: $got)"
}

check_file_stamp() {
  local artifact="$1"
  local want got

  [ -f "$artifact" ] || fail "missing artifact $artifact"
  [ -f "$artifact.sha256" ] || fail "missing artifact stamp $artifact.sha256"
  want="$(cat "$artifact.sha256")"
  got="$(shasum -a 256 "$artifact" | awk '{print $1}')"
  [ "$want" = "$got" ] || fail "artifact stamp mismatch: $artifact ($got != $want)"
  echo "  ($artifact sha256: $got)"
}

check_lean_artifact_stamp() {
  local bool_select_sha iszero_sha nullifier_sha proof_sha root_sha lakefile_sha manifest_sha toolchain_sha extractor_sha prelude_sha recovery_sha interface_sha

  bool_select_sha="$(shasum -a 256 "$BOOL_SELECT_LEAN" | awk '{print $1}')"
  iszero_sha="$(shasum -a 256 "$ISZERO_LEAN" | awk '{print $1}')"
  nullifier_sha="$(shasum -a 256 "$NULLIFIER_LEAN" | awk '{print $1}')"
  proof_sha="$(shasum -a 256 tools/gnark/lean/PenumbraGnarkFormal/ExtractedProofs.lean | awk '{print $1}')"
  root_sha="$(shasum -a 256 tools/gnark/lean/PenumbraGnarkFormal.lean | awk '{print $1}')"
  lakefile_sha="$(shasum -a 256 tools/gnark/lean/lakefile.lean | awk '{print $1}')"
  manifest_sha="$(shasum -a 256 tools/gnark/lean/lake-manifest.json | awk '{print $1}')"
  toolchain_sha="$(shasum -a 256 tools/gnark/lean/lean-toolchain | awk '{print $1}')"
  extractor_sha="$(shasum -a 256 tools/gnark/third_party/gnark-lean-extractor/extractor/extractor.go | awk '{print $1}')"
  prelude_sha="$(shasum -a 256 tools/gnark/third_party/gnark-lean-extractor/extractor/lean_export.go | awk '{print $1}')"
  recovery_sha="$(shasum -a 256 tools/gnark/third_party/gnark-lean-extractor/extractor/misc.go | awk '{print $1}')"
  interface_sha="$(shasum -a 256 tools/gnark/third_party/gnark-lean-extractor/extractor/interface.go | awk '{print $1}')"
  rg -q "bool_select_extracted_source_sha256: $bool_select_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact bool_select_extracted_source_sha256 != $bool_select_sha"
  rg -q "iszero_extracted_source_sha256: $iszero_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact iszero_extracted_source_sha256 != $iszero_sha"
  rg -q "nullifier_extracted_source_sha256: $nullifier_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact nullifier_extracted_source_sha256 != $nullifier_sha"
  rg -q "field_less_than_extraction_status: unsupported-by-vendored-extractor" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact field_less_than_extraction_status missing unsupported marker"
  rg -q "proof_source_sha256: $proof_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact proof_source_sha256 != $proof_sha"
  rg -q "root_source_sha256: $root_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact root_source_sha256 != $root_sha"
  rg -q "lakefile_sha256: $lakefile_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact lakefile_sha256 != $lakefile_sha"
  rg -q "lake_manifest_sha256: $manifest_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact lake_manifest_sha256 != $manifest_sha"
  rg -q "lean_toolchain_sha256: $toolchain_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact lean_toolchain_sha256 != $toolchain_sha"
  rg -q "extractor_source_sha256: $extractor_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact extractor_source_sha256 != $extractor_sha"
  rg -q "extractor_prelude_sha256: $prelude_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact extractor_prelude_sha256 != $prelude_sha"
  rg -q "extractor_recovery_sha256: $recovery_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact extractor_recovery_sha256 != $recovery_sha"
  rg -q "extractor_interface_sha256: $interface_sha" "$BOOL_SELECT_LEAN_ARTIFACT" \
    || fail "Lean artifact extractor_interface_sha256 != $interface_sha"
  check_file_stamp "$BOOL_SELECT_LEAN_ARTIFACT"
}

# 1. The ACL2 model and generated Axe lift data must match the compiled gnark
# gadgets, wire-for-wire.
(
  cd tools/gnark
  go test ./internal/circuits/ -run 'TestBoolSelectAcl2ModelParity|TestAxeExportFidelity|TestFieldLessThanAxeBitInputs' -count=1
) || fail "ACL2/gnark parity or Axe export fidelity failed — proof models a different circuit"

tmp_poseidon2="$(mktemp)"
tmp_nullifier="$(mktemp)"
tmp_iszero="$(mktemp)"
tmp_poseidon_spec="$(mktemp)"
tmp_field_less_than="$(mktemp)"
tmp_field_less_than_bits="$(mktemp)"
tmp_bool_select_lean="$(mktemp)"
tmp_iszero_lean="$(mktemp)"
tmp_nullifier_lean="$(mktemp)"
trap 'rm -f "$tmp_poseidon2" "$tmp_nullifier" "$tmp_iszero" "$tmp_poseidon_spec" "$tmp_field_less_than" "$tmp_field_less_than_bits" "$tmp_bool_select_lean" "$tmp_iszero_lean" "$tmp_nullifier_lean"' EXIT
(
  cd tools/gnark
  go run ./cmd/gnarkctl export-r1cs \
    --circuit gadget-poseidon2 \
    --format axe-lisp \
    --out "$tmp_poseidon2"
) || fail "failed to regenerate gadget-poseidon2 Axe Lisp"
diff -u "$GENERATED_DIR/gadget-poseidon2-r1cs.lisp" "$tmp_poseidon2" \
  || fail "checked-in gadget-poseidon2 Axe Lisp is stale"

(
  cd tools/gnark
  go run ./cmd/gnarkctl export-r1cs \
    --circuit gadget-nullifier \
    --format axe-lisp \
    --out "$tmp_nullifier"
) || fail "failed to regenerate gadget-nullifier Axe Lisp"
diff -u "$GENERATED_DIR/gadget-nullifier-r1cs.lisp" "$tmp_nullifier" \
  || fail "checked-in gadget-nullifier Axe Lisp is stale"

(
  cd tools/gnark
  go run ./cmd/gnarkctl export-r1cs \
    --circuit gadget-iszero \
    --format axe-lisp \
    --out "$tmp_iszero"
) || fail "failed to regenerate gadget-iszero Axe Lisp"
diff -u "$GENERATED_DIR/gadget-iszero-r1cs.lisp" "$tmp_iszero" \
  || fail "checked-in gadget-iszero Axe Lisp is stale"

(
  cd tools/gnark
  go run ./cmd/gnarkctl export-poseidon-acl2 \
    --out "$tmp_poseidon_spec"
) || fail "failed to regenerate Poseidon377 ACL2 spec"
diff -u "$GENERATED_DIR/poseidon377-spec.lisp" "$tmp_poseidon_spec" \
  || fail "checked-in Poseidon377 ACL2 spec is stale"

(
  cd tools/gnark
  go run ./cmd/gnarkctl export-r1cs \
    --circuit gadget-field-less-than \
    --format axe-lisp \
    --out "$tmp_field_less_than"
) || fail "failed to regenerate gadget-field-less-than Axe Lisp"
diff -u "$GENERATED_DIR/gadget-field-less-than-r1cs.lisp" "$tmp_field_less_than" \
  || fail "checked-in gadget-field-less-than Axe Lisp is stale"

(
  cd tools/gnark
  go run ./cmd/gnarkctl extract-bit-inputs \
    --label gadget-field-less-than \
    --in "$ROOT/$GENERATED_DIR/gadget-field-less-than-r1cs.lisp" \
    --out "$tmp_field_less_than_bits" >/dev/null
) || fail "failed to regenerate gadget-field-less-than bit inputs"
diff -u "$GENERATED_DIR/gadget-field-less-than-bit-inputs.lisp" "$tmp_field_less_than_bits" \
  || fail "checked-in gadget-field-less-than bit-input list is stale"

(
  cd tools/gnark
  go run ./cmd/gnarkctl export-lean \
    --circuit gadget-bool-select \
    --namespace Penumbra.GnarkFormal.Extracted.BoolSelect \
    --out "$tmp_bool_select_lean"
) || fail "failed to regenerate gadget-bool-select Lean extraction"
diff -u "$BOOL_SELECT_LEAN" "$tmp_bool_select_lean" \
  || fail "checked-in gadget-bool-select Lean extraction is stale"

(
  cd tools/gnark
  go run ./cmd/gnarkctl export-lean \
    --circuit gadget-iszero \
    --namespace Penumbra.GnarkFormal.Extracted.IsZero \
    --out "$tmp_iszero_lean"
) || fail "failed to regenerate gadget-iszero Lean extraction"
diff -u "$ISZERO_LEAN" "$tmp_iszero_lean" \
  || fail "checked-in gadget-iszero Lean extraction is stale"

(
  cd tools/gnark
  go run ./cmd/gnarkctl export-lean \
    --circuit gadget-nullifier \
    --namespace Penumbra.GnarkFormal.Extracted.Nullifier \
    --out "$tmp_nullifier_lean"
) || fail "failed to regenerate gadget-nullifier Lean extraction"
diff -u "$NULLIFIER_LEAN" "$tmp_nullifier_lean" \
  || fail "checked-in gadget-nullifier Lean extraction is stale"

# 2. Certify the proof books.
certify_book "$BOOL_SELECT_PROOF"
certify_with_cert_pl generated/gadget-iszero-r1cs
certify_with_cert_pl "$ISZERO_PROOF"
certify_with_cert_pl generated/gadget-field-less-than-r1cs
certify_with_cert_pl generated/gadget-field-less-than-bit-inputs
certify_with_cert_pl lib/fq-compare
certify_with_cert_pl "$FIELD_LESS_THAN_LIFT"
certify_with_cert_pl "$FIELD_LESS_THAN_LADDER_PROOF"
certify_with_cert_pl "$FIELD_LESS_THAN_PACK_PROOF"
certify_with_cert_pl "$FIELD_LESS_THAN_PROOF"
certify_with_cert_pl generated/gadget-poseidon2-r1cs
certify_with_cert_pl generated/poseidon377-spec
certify_with_cert_pl "$POSEIDON2_SMOKE_PROOF"
certify_with_cert_pl "$POSEIDON2_PROOF"
certify_with_cert_pl generated/gadget-nullifier-r1cs
certify_with_cert_pl "$NULLIFIER_SMOKE_PROOF"
certify_with_cert_pl "$NULLIFIER_PROOF"
certify_with_cert_pl generated/gadget-imt-gap-r1cs
certify_with_cert_pl imt-gap-compose-smoke
# Proof-friendly AssetRegistryGap (Step 5, Option B): Kestrel-shaped canonical
# decomposition + decompose-once fused comparator. Lift checkpoint and 5-way
# composition primitive are certified here (like field-less-than-lift and
# imt-gap-compose-smoke); the keystone semantic row (canonical-fq-bits-proof:
# packbv <= p-1 via make-range-check-constraints-correct) is the heavy CI-gated
# obligation tracked in ASSET-REGISTRY-GAP-HANDOFF.md.
certify_with_cert_pl generated/gadget-canonical-fq-bits-r1cs
certify_with_cert_pl generated/gadget-canonical-fq-bits-bit-inputs
certify_with_cert_pl canonical-fq-bits-lift
certify_with_cert_pl canonical-fq-bits-proof
certify_with_cert_pl generated/gadget-asset-registry-gap-r1cs
certify_with_cert_pl asset-registry-gap-proof

# 3. The checked-in stamped artifacts must match the certified proof sources.
check_artifact_stamp "$BOOL_SELECT_PROOF"
check_artifact_stamp "$ISZERO_PROOF"
check_artifact_stamp "$FIELD_LESS_THAN_LADDER_PROOF"
check_artifact_stamp "$FIELD_LESS_THAN_PACK_PROOF"
check_artifact_stamp "$FIELD_LESS_THAN_PROOF"
check_artifact_stamp "$POSEIDON2_SMOKE_PROOF"
check_artifact_stamp "$POSEIDON2_PROOF"
check_artifact_stamp "$NULLIFIER_PROOF"

if [ -d tools/gnark/lean ]; then
  command -v lake >/dev/null 2>&1 || fail "Lean lake not found for tools/gnark/lean"
  (cd tools/gnark/lean && lake build) || fail "Lean spec scaffold failed to build"
  check_lean_artifact_stamp
fi

echo "circuit gadget proof check ok: bool-select, iszero, poseidon2, and nullifier semantic proofs certified; Poseidon377 ACL2 spec vectors certified; field-less-than Axe lift/pack/ladder/composed bridge checkpoints certified; supported Lean extracted gadget scaffold builds and stamps match"

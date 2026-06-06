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
FIELD_LESS_THAN_LIFT=field-less-than-lift
POSEIDON2_SMOKE_PROOF=poseidon2-lift-smoke
NULLIFIER_SMOKE_PROOF=nullifier-lift-smoke

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

# 1. The ACL2 model and generated Axe lift data must match the compiled gnark
# gadgets, wire-for-wire.
(
  cd tools/gnark
  go test ./internal/circuits/ -run 'TestBoolSelectAcl2ModelParity|TestAxeExportFidelity|TestFieldLessThanAxeBitInputs' -count=1
) || fail "ACL2/gnark parity or Axe export fidelity failed — proof models a different circuit"

tmp_poseidon2="$(mktemp)"
tmp_nullifier="$(mktemp)"
tmp_poseidon_spec="$(mktemp)"
tmp_field_less_than="$(mktemp)"
tmp_field_less_than_bits="$(mktemp)"
trap 'rm -f "$tmp_poseidon2" "$tmp_nullifier" "$tmp_poseidon_spec" "$tmp_field_less_than" "$tmp_field_less_than_bits"' EXIT
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

# 2. Certify the proof books.
certify_book "$BOOL_SELECT_PROOF"
certify_with_cert_pl generated/gadget-field-less-than-r1cs
certify_with_cert_pl generated/gadget-field-less-than-bit-inputs
certify_with_cert_pl lib/fq-compare
certify_with_cert_pl "$FIELD_LESS_THAN_LIFT"
certify_with_cert_pl generated/gadget-poseidon2-r1cs
certify_with_cert_pl generated/poseidon377-spec
certify_with_cert_pl "$POSEIDON2_SMOKE_PROOF"
certify_with_cert_pl generated/gadget-nullifier-r1cs
certify_with_cert_pl "$NULLIFIER_SMOKE_PROOF"

# 3. The checked-in stamped artifacts must match the certified proof sources.
check_artifact_stamp "$BOOL_SELECT_PROOF"
check_artifact_stamp "$POSEIDON2_SMOKE_PROOF"

if [ -d tools/gnark/lean ]; then
  command -v lake >/dev/null 2>&1 || fail "Lean lake not found for tools/gnark/lean"
  (cd tools/gnark/lean && lake build) || fail "Lean spec scaffold failed to build"
fi

echo "circuit gadget proof check ok: bool-select, poseidon2, and nullifier Axe lift smoke proofs certified; Poseidon377 ACL2 spec vectors certified; field-less-than Axe lift checkpoint certified; Lean spec scaffold builds"

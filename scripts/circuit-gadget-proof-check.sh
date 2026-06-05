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
PROOF=bool-select-proof
ARTIFACT="$ACL2_DIR/$PROOF-artifact.txt"

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

# 1. The ACL2 model must match the compiled gnark gadget, wire-for-wire.
(
  cd tools/gnark
  go test ./internal/circuits/ -run TestBoolSelectAcl2ModelParity -count=1
) || fail "ACL2 model / gnark parity test failed — proof models a different circuit"

# 2. Certify the proof (clean: drop any stale cert first).
rm -f "$ACL2_DIR/$PROOF.cert"
( cd "$ACL2_DIR" && echo "(certify-book \"$PROOF\" 0)" | "$ACL2P" ) >"$ACL2_DIR/$PROOF.cert.out" 2>&1 || true
[ -f "$ACL2_DIR/$PROOF.cert" ] || { tail -40 "$ACL2_DIR/$PROOF.cert.out" >&2; fail "ACL2 certification produced no .cert"; }
rg -q "Q.E.D." "$ACL2_DIR/$PROOF.cert.out" || fail "ACL2 certification did not reach Q.E.D."

# 3. The checked-in stamped artifact must match the certified proof + cert.
proof_sha="$(shasum -a 256 "$ACL2_DIR/$PROOF.lisp" | awk '{print $1}')"
cert_sha="$(shasum -a 256 "$ACL2_DIR/$PROOF.cert" | awk '{print $1}')"
rg -q "proof_source_sha256: $proof_sha" "$ARTIFACT" \
  || fail "artifact proof_source_sha256 != $proof_sha (re-stamp $ARTIFACT)"
# The cert embeds an absolute path + timestamps, so its hash is environment-bound;
# record it as evidence but do not gate on it across machines.
echo "  (certified cert sha256: $cert_sha)"

# Verify the artifact stamp file itself.
[ -f "$ARTIFACT.sha256" ] || fail "missing artifact stamp $ARTIFACT.sha256"
want="$(cat "$ARTIFACT.sha256")"
got="$(shasum -a 256 "$ARTIFACT" | awk '{print $1}')"
[ "$want" = "$got" ] || fail "artifact stamp mismatch: $ARTIFACT ($got != $want)"

echo "circuit gadget proof check ok: BOOL-SELECT-R1CS-IMPLIES-SPEC certified, artifact sha256:$got"

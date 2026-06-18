#!/usr/bin/env bash
set -euo pipefail

# Computational-soundness gate for the compliance DLEQ Lean/VCVio mechanization,
# in two cost tiers selected by the first argument (mirrors
# scripts/check-lean-circuit-fv.sh):
#
#   stamps  (PR / local tier)  Lightweight hygiene + stamp integrity. Needs NO
#                              Lean toolchain: checks every module is present,
#                              carries no `sorry`/`admit`, declares only the one
#                              allowlisted residual-assumption `axiom`
#                              (q_prime -> CC-ASSUME-DECAF377-PRIME-ORDER-GROUP),
#                              and — if a stamped artifact exists — that its
#                              recorded source_sha256 lines still match the
#                              sources. Catches dropped obligations, stray
#                              axioms, and a module edited without re-verifying.
#
#   full    (nightly tier)     Everything in `stamps`, plus the expensive part:
#                              `lake exe cache get && lake build`, then a
#                              `#print axioms` baseline for every obligation
#                              (the three Sigma properties, the truncation
#                              embedding, and FS-ROM knowledge soundness),
#                              enforcing the exact residual-axiom footprint.
#                              Re-writes the stamped artifact + .sha256 sidecar.
#                              This is the source of truth; it loads VCVio +
#                              Mathlib, so it runs nightly, not on PRs.
#
# Default is `full` so a local run with the v4.30.0 toolchain verifies
# everything.
#
# CC-ASSUME-POSEIDON-RO has no Lean `axiom`: the Fiat-Shamir hash is idealized
# structurally as VCVio's random oracle `M × Commit →ₒ Chal`, so it never
# appears in `#print axioms`. The only residual `axiom` is the prime-order-group
# assumption, hence the single-element allowlist.

MODE="${1:-full}"
case "$MODE" in
  stamps | full) ;;
  *)
    echo "usage: $(basename "$0") [stamps|full]" >&2
    exit 2
    ;;
esac

fail() {
  echo "compliance lean-dleq failed: $*" >&2
  exit 1
}

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LEAN_DIR="$ROOT/crates/core/component/compliance/formal/lean-dleq"
ARTIFACT="$ROOT/crates/core/component/compliance/formal/lean-dleq-artifact.txt"

# The single residual-assumption axiom permitted to survive, tied to a ledger ID:
#   Dleq.q_prime  ->  CC-ASSUME-DECAF377-PRIME-ORDER-GROUP
ALLOWED_AXIOM="q_prime"

# Source modules covered by the development (relative to LEAN_DIR), each stamped.
SOURCES=(
  "Dleq/Group.lean"
  "Dleq/Challenge.lean"
  "Dleq/Sigma.lean"
  "Dleq/FiatShamir.lean"
  "lakefile.lean"
  "lake-manifest.json"
  "lean-toolchain"
)

# Obligation theorems and their expected residual-axiom footprint.
#   complete / speciallySound / hvzk : pure Lean (Classical for prob lemmas)
#   emb_injective                    : no Classical.choice needed
#   dleq_fs_knowledge_soundness      : carries the residual q_prime
EXPECT_STD="[propext, Classical.choice, Quot.sound]"
EXPECT_EMB="[propext, Quot.sound]"
EXPECT_FS="[propext, Classical.choice, Dleq.q_prime, Quot.sound]"

sha256_file() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$1" | awk '{print $1}'
  else
    shasum -a 256 "$1" | awk '{print $1}'
  fi
}

# ripgrep is used throughout for source scanning and stamp checks.
command -v rg >/dev/null 2>&1 || fail "ripgrep (rg) is not installed"

# --- hygiene (both tiers) ---------------------------------------------------
echo "==> hygiene"
for src in "${SOURCES[@]}"; do
  [[ -f "$LEAN_DIR/$src" ]] || fail "missing source $src"
done

if rg -n '\bsorry\b|\badmit\b' "$LEAN_DIR/Dleq"; then
  fail "Lean sources contain sorry/admit"
fi

# Every `axiom` declared in the development must be the allowlisted residual one.
while IFS= read -r ax; do
  [[ -n "$ax" ]] || continue
  [[ "$ax" == "$ALLOWED_AXIOM" ]] \
    || fail "non-allowlisted axiom '$ax' (only the residual prime-order-group assumption is permitted)"
done < <(rg --no-filename -No '^\s*axiom\s+([A-Za-z0-9_]+)' -r '$1' "$LEAN_DIR/Dleq" || true)

# --- stamp integrity (stamps tier) ------------------------------------------
# If a stamped artifact exists, every source_sha256 it records must still match,
# so a module cannot be edited without re-running `full`. The `full` tier
# rewrites the artifact below, so it skips this gate (otherwise an intended
# re-stamp after a source edit could never proceed).
if [[ "$MODE" == "stamps" && -f "$ARTIFACT" ]]; then
  echo "==> stamp integrity"
  [[ -f "$ARTIFACT.sha256" ]] || fail "missing artifact stamp $ARTIFACT.sha256"
  want="$(cat "$ARTIFACT.sha256")"
  have="$(sha256_file "$ARTIFACT")"
  [[ "$want" == "$have" ]] || fail "artifact stamp mismatch ($have != $want)"
  for src in "${SOURCES[@]}"; do
    s="$(sha256_file "$LEAN_DIR/$src")"
    rg -F "source_sha256: $src $s" "$ARTIFACT" >/dev/null \
      || fail "$src changed since last stamp ($s not in artifact); re-run 'full'"
  done
fi

if [[ "$MODE" == "stamps" ]]; then
  echo "compliance lean-dleq ok (stamps): hygiene + stamp integrity"
  exit 0
fi

# --- full tier: build + axiom baseline --------------------------------------
command -v lake >/dev/null 2>&1 || fail "lake (Lean toolchain) is not installed"

echo "==> lake exe cache get"
(cd "$LEAN_DIR" && lake exe cache get >/dev/null) || fail "mathlib cache fetch failed"

echo "==> lake build"
(cd "$LEAN_DIR" && lake build Dleq.FiatShamir) || fail "lake build failed"

echo "==> #print axioms"
axioms_out="$(
  cd "$LEAN_DIR"
  lake env lean --stdin <<'LEAN'
import Dleq.FiatShamir
#print axioms Dleq.sigma_complete
#print axioms Dleq.sigma_speciallySound
#print axioms Dleq.sigma_hvzk
#print axioms Dleq.emb_injective
#print axioms Dleq.dleq_fs_knowledge_soundness
#print axioms Dleq.dleq_fs_knowledge_soundness_strong
LEAN
)"
printf '%s\n' "$axioms_out"
flat="$(printf '%s' "$axioms_out" | tr '\n' ' ' | tr -s '[:space:]' ' ')"

check_axioms() {
  local thm="$1" expect="$2"
  [[ "$flat" == *"'$thm' depends on axioms: $expect"* ]] \
    || fail "unexpected axiom baseline for $thm (expected $expect)"
}
check_axioms "Dleq.sigma_complete"               "$EXPECT_STD"
check_axioms "Dleq.sigma_speciallySound"         "$EXPECT_STD"
check_axioms "Dleq.sigma_hvzk"                   "$EXPECT_STD"
check_axioms "Dleq.emb_injective"                "$EXPECT_EMB"
check_axioms "Dleq.dleq_fs_knowledge_soundness"  "$EXPECT_FS"
check_axioms "Dleq.dleq_fs_knowledge_soundness_strong" "$EXPECT_FS"

# --- stamp the development --------------------------------------------------
{
  echo "tool: lean4 + VCVio"
  echo "toolchain: $(cat "$LEAN_DIR/lean-toolchain")"
  echo "scope: DLEQ computational soundness (completeness, special-soundness,"
  echo "       HVZK, challenge-truncation, Fiat-Shamir knowledge-soundness)"
  for src in "${SOURCES[@]}"; do
    echo "source_sha256: $src $(sha256_file "$LEAN_DIR/$src")"
  done
  echo "source_sha256: scripts/compliance-lean-dleq.sh $(sha256_file "$ROOT/scripts/compliance-lean-dleq.sh")"
  echo "OBLIGATION sigma_complete proved-computational"
  echo "OBLIGATION sigma_speciallySound proved-computational"
  echo "OBLIGATION sigma_hvzk proved-computational"
  echo "OBLIGATION emb_injective proved-computational"
  echo "OBLIGATION dleq_fs_knowledge_soundness proved-computational"
  echo "OBLIGATION dleq_fs_knowledge_soundness_strong proved-computational"
  echo "AXIOM Dleq.q_prime residual-assumption CC-ASSUME-DECAF377-PRIME-ORDER-GROUP"
  echo "ASSUMPTION CC-ASSUME-POSEIDON-RO structural-random-oracle-model"
} >"$ARTIFACT"
sha256_file "$ARTIFACT" >"$ARTIFACT.sha256"

echo "compliance lean-dleq ok (full): sha256:$(cat "$ARTIFACT.sha256")"

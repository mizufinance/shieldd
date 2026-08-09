#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GNARK_DIR="$ROOT/tools/gnark"
MODE="${1:-all}"

fail() {
  echo "gadget model fidelity failed: $*" >&2
  exit 1
}

axe_tests=(
  TestAxeExportFidelityPoseidon2
  TestAxeExportFidelityPoseidonHash4
  TestAxeExportFidelityNullifier
  TestAxeExportFidelityImtGap
  TestAxeExportFidelityExpandedGadgets
)

case "$MODE" in
  all)
    pattern='^(TestNoteReshape8x1WiringTranscript.*|TestTransferWiringJoinsDerivedSharedSecretsToEncryption|TestTransferManifestUsesExactConstraintBoundaries|TestTransferManifestExportsSemanticBindings|TestShieldedIcs20WithdrawalManifestIsExactAndFullyBound|TestAmountRangeBoundIs128Bits|TestBoolSelectAcl2ModelParity|TestAxeExportFidelity.*)$'
    required=(
      TestNoteReshape8x1WiringTranscriptExact
      TestTransferWiringJoinsDerivedSharedSecretsToEncryption
      TestTransferManifestUsesExactConstraintBoundaries
      TestTransferManifestExportsSemanticBindings
      TestShieldedIcs20WithdrawalManifestIsExactAndFullyBound
      TestAmountRangeBoundIs128Bits
      TestBoolSelectAcl2ModelParity
      "${axe_tests[@]}"
    )
    ;;
  acl2)
    pattern='^(TestBoolSelectAcl2ModelParity|TestAxeExportFidelity.*)$'
    required=(TestBoolSelectAcl2ModelParity "${axe_tests[@]}")
    ;;
  *)
    fail "usage: $(basename "$0") [all|acl2]"
    ;;
esac

listed="$(
  cd "$GNARK_DIR"
  go test ./internal/circuits/ -list "$pattern"
)"
for test_name in "${required[@]}"; do
  if ! printf '%s\n' "$listed" | rg -Fx "$test_name" >/dev/null; then
    fail "required test was not selected: $test_name"
  fi
done

(
  cd "$GNARK_DIR"
  go test ./internal/circuits/ -run "$pattern" -count=1
)

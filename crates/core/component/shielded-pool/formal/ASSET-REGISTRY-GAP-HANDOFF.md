# AssetRegistryGap Closure

Status after the 2026-06-08 closure work: the proof-friendly AssetRegistryGap
route is the shipped `gadget-imt-gap` circuit, and the old full-field comparator
route has been retired.

## Proved Substrate

- `gadget-imt-gap` exports the 5568-constraint AssetRegistryGap R1CS under the
  shipped label.
- `CanonicalFqBits253` decomposes leaf, id, and next once each, using the
  Kestrel-shaped range-check constraints for `c = p-1, n = 253`.
- `asset-registry-gap-proof.lisp` certifies the five-block append decomposition:
  `reg[0,1)`, `leaf[1,507)`, `id[507,1013)`, `next[1013,1519)`, and
  `tail[1519,5568)`.
- `asset-registry-gap-soundness.lisp` certifies operand canonicity over the real
  gadget: satisfying assignments force each operand's 253 bit wires to be bits
  and its packed value to be `<= p-1`.
- `asset-registry-gap-output.lisp` follows the nullifier recipe: named ladder and
  glue rewrites collapse the AssetRegistryGap output logic, then one final
  `verify-r1cs` proves the R1CS-shaped output predicate over the real export.

The stamped output artifact is
[`acl2/asset-registry-gap-output-artifact.txt`](acl2/asset-registry-gap-output-artifact.txt),
with its `.sha256` checked by `scripts/circuit-gadget-proof-check.sh`.

## Cleanup Outcome

- `VerifyAssetRegistryIMT` now calls `AssetRegistryGap`.
- `gnarkctl --circuit gadget-imt-gap` exports AssetRegistryGap.
- The old exported `FieldLessThan`, `AssetMembershipValid`, `ImtGapGadget`, and
  `FieldLessThanGadget` Go surfaces were deleted. The lowercase 128-bit
  `fieldLessThan` helper remains.
- Obsolete ACL2 full-field comparator books and generated exports were deleted.
  Generic helper code that remained useful was renamed to
  `acl2/lib/internal-wires.lisp`.
- Whole-circuit property rows remain `refined`; gadget proofs do not promote a
  property row without a stamped whole-circuit artifact.

## Validation

Required validation for this closure:

```bash
bash scripts/circuit-gadget-proof-check.sh
bash scripts/check-soundness-invariants.sh
cd tools/gnark && go build ./... && go test ./...
```

Local gate notes should distinguish ACL2/generation/stamp checks from Lean work
that is skipped locally when `lake` is absent and left to CI.

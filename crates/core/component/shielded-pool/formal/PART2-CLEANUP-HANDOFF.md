# AssetRegistryGap Part 2 Cleanup

Status: complete as of the 2026-06-08 AssetRegistryGap closure.

The cleanup was gated on the stamped `asset-registry-gap-output` proof and then
made the proof-friendly AssetRegistryGap route the shipped `gadget-imt-gap`
implementation.

## Completed Edits

- Rewired `VerifyAssetRegistryIMT` to call `AssetRegistryGap`.
- Deleted the old full-field Go route:
  `FieldLessThan`, `AssetMembershipValid`, `ImtGapGadget`, and
  `FieldLessThanGadget`.
- Kept the lowercase 128-bit `fieldLessThan` threshold helper.
- Updated `gnarkctl` so `gadget-imt-gap` exports `AssetRegistryGapGadget`;
  removed the obsolete comparator and separate AssetRegistryGap export labels.
- Regenerated `acl2/generated/gadget-imt-gap-r1cs.lisp` as the 5568-constraint
  AssetRegistryGap export and removed obsolete generated comparator books.
- Repointed ACL2 AssetRegistryGap books to the shipped `gadget-imt-gap` generated
  book and rechecked the 5568-constraint append decomposition.
- Removed dead field-less-than gate entries and added the AssetRegistryGap output
  artifact stamp to the proof gate.
- Updated the gadget ledger and soundness docs while preserving the
  gadget-to-property firewall.

## Required Validation

```bash
bash scripts/circuit-gadget-proof-check.sh
bash scripts/check-soundness-invariants.sh
cd tools/gnark && go build ./... && go test ./...
```

`scripts/check-soundness-invariants.sh` must still fail closed if a whole-circuit
property row is promoted without a stamped whole-circuit artifact.

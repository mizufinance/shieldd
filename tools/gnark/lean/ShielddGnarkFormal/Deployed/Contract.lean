import Mathlib.Data.ZMod.Basic

/-!
Typed binding contract for deployed-slice soundness obligations.

Generated instance contracts carry the exact deployed row relation plus the
instance fingerprints pinned in the coverage manifest. A discharged theorem must
inhabit `BoundDeployedSound contract expectedRelation expectedWireRole`, so the
theorem type names the generated contract and cannot silently point at a sibling
slice.
-/

namespace Shieldd.GnarkFormal.Deployed

structure DeployedContract (F : Type) where
  segmentIndex : Nat
  relationSha256Hex : String
  wireRoleSha256Hex : String
  relation : (Nat → F) → Prop
  spec : (Nat → F) → Prop

def BoundDeployedSound {F : Type} (contract : DeployedContract F)
    (expectedRelationSha256Hex expectedWireRoleSha256Hex : String) : Prop :=
  contract.relationSha256Hex = expectedRelationSha256Hex ∧
  contract.wireRoleSha256Hex = expectedWireRoleSha256Hex ∧
  ∀ rho, contract.relation rho → contract.spec rho

end Shieldd.GnarkFormal.Deployed

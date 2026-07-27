import ShielddGnarkFormal.Deployed.Contract

namespace Shieldd.GnarkFormal.Deployed.Templates

abbrev LocalValuation (F : Type) := Nat → F

def seated (rho : Nat → F) (wireSeating : Nat → Nat) : LocalValuation F :=
  fun localWire => rho (wireSeating localWire)

theorem boundOfSeatedTemplate {F : Type}
    (templateRelation templateSpec : LocalValuation F → Prop)
    (templateSound : ∀ localRho : LocalValuation F,
      templateRelation localRho → templateSpec localRho)
    (contract : Shieldd.GnarkFormal.Deployed.DeployedContract F)
    (wireSeating : Nat → Nat)
    (hRelation : ∀ rho,
      contract.relation rho = templateRelation (seated rho wireSeating))
    (hSpec : ∀ rho,
      contract.spec rho = templateSpec (seated rho wireSeating)) :
    Shieldd.GnarkFormal.Deployed.BoundDeployedSound contract
      contract.relationSha256Hex contract.wireRoleSha256Hex := by
  refine ⟨rfl, rfl, ?_⟩
  intro rho h
  rw [hRelation rho] at h
  rw [hSpec rho]
  exact templateSound _ h

end Shieldd.GnarkFormal.Deployed.Templates

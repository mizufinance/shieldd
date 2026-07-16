import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Core
import ShielddGnarkFormal.Decaf377Assumptions

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

/-- Spend 0's deployed RVK equals the protocol key and remains on-curve. -/
def deployedSpec15 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 6) (rho 7) →
    Shieldd.GnarkFormal.Decaf377Assumptions.RandomizedVerificationKeySpec
      ⟨rho 6, rho 7⟩ (rho 97) ⟨rho 17945, rho 17946⟩ ∧
    onCurveAt (rho 17945) (rho 17946)

/-- Spend 1's deployed RVK equals the protocol key and remains on-curve. -/
def deployedSpec30 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 6) (rho 7) →
    Shieldd.GnarkFormal.Decaf377Assumptions.RandomizedVerificationKeySpec
      ⟨rho 6, rho 7⟩ (rho 187) ⟨rho 30126, rho 30127⟩ ∧
    onCurveAt (rho 30126) (rho 30127)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

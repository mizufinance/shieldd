import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Core
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.Deployed.Dtk.Outputs

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

/-- The shared DTK has IVK provenance, the deployed output, and a valid curve point.
The adjacent shared-diversifier segment supplies the input curve assertion. -/
def deployedSpec6 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 17) (rho 18) →
    Shieldd.GnarkFormal.Decaf377Assumptions.DiversifiedTransmissionKeySpec
      (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 17, rho 18⟩ (rho 9) (rho 10)
      ⟨Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutX6 rho,
        Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutY6 rho⟩ ∧
    onCurveAt
      (Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutX6 rho)
      (Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutY6 rho)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

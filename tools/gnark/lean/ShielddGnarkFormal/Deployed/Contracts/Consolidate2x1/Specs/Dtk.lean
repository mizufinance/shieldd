import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.Deployed.Dtk.Outputs

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-! Deployed diversified-transmission-key endpoints.

The DTK slices do not repeat the DivGen curve assertion owned by their adjacent
compress/assert-on-curve segments.  The faithful local contract therefore takes
that fact as an antecedent and retains both IVK provenance and output equality. -/
def deployedSpec16 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 17) (rho 18) →
    Shieldd.GnarkFormal.Decaf377Assumptions.DiversifiedTransmissionKeySpec
      (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 17, rho 18⟩ (rho 9) (rho 10)
      ⟨Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutX16 rho,
        Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutY16 rho⟩

def deployedSpec34 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 107) (rho 108) →
    Shieldd.GnarkFormal.Decaf377Assumptions.DiversifiedTransmissionKeySpec
      (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 107, rho 108⟩ (rho 9) (rho 10)
      ⟨Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutX34 rho,
        Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutY34 rho⟩

def deployedSpec45 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 195) (rho 196) →
    Shieldd.GnarkFormal.Decaf377Assumptions.DiversifiedTransmissionKeySpec
      (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 195, rho 196⟩ (rho 9) (rho 10)
      ⟨Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutX45 rho,
        Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutY45 rho⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

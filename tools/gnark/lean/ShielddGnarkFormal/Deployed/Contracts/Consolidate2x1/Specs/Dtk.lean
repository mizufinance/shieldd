import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.Deployed.Dtk.Outputs

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed diversified-transmission-key endpoint. Post-T1-d, `Define()` hoists
this computation out of per-note verification, so the three pre-hoist instances
(old segs 16/34/45, one per note) collapse into a single seg5 producer; each
note's per-note consumer instead asserts equivalence against this shared output
(see `deployedSpec6`). The DTK slice does not repeat the DivGen curve assertion
owned by the adjacent compress/assert-on-curve segment, so the faithful local
contract takes that fact as an antecedent and retains both IVK provenance and
output equality. -/
def deployedSpec5 (rho : Nat → DeployedF) : Prop :=
  onCurveAt (rho 17) (rho 18) →
    Shieldd.GnarkFormal.Decaf377Assumptions.DiversifiedTransmissionKeySpec
      (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 17, rho 18⟩ (rho 9) (rho 10)
      ⟨Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutX5 rho,
        Shieldd.GnarkFormal.Deployed.Dtk.Outputs.dtkOutY5 rho⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

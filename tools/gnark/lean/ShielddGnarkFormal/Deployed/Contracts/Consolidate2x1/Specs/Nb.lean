import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Decaf377Assumptions

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed net-balance-commitment endpoint. The blinding ladder runs over the
fixed `blindGen`, so unlike the DTK endpoints no on-curve antecedent is needed.
Output point = internal wires 40715/40716 (final Edwards-add rows of Seg48). -/
def deployedSpec48 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Decaf377Assumptions.NetBalanceCommitmentSpec
    (rho 15) (rho 105) (rho 193) (rho 16) (rho 5)
    ⟨rho 40715, rho 40716⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

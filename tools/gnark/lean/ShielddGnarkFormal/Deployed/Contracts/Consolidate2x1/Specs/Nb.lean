import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Decaf377Assumptions

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed net-balance-commitment endpoint. The blinding ladder runs over the
fixed `blindGen`, so unlike the DTK endpoints no on-curve antecedent is needed.
Output point = internal wires 52987/52988 (final Edwards-add rows of Seg52). -/
def deployedSpec52 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Decaf377Assumptions.NetBalanceCommitmentSpec
    (rho 15) (rho 105) (rho 193) (rho 16) (rho 5)
    ⟨rho 52987, rho 52988⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Deployed.Nullifier.FullTail
import ShielddGnarkFormal.Poseidon3Bridge

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed nullifier Poseidon subchain endpoint. -/
def deployedSpec9 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      (rho 1637) (rho 1642) (rho 1647) (rho 1652) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho 8) (rho 23) (rho 24)

def deployedSpec27 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      (rho 20337) (rho 20342) (rho 20347) (rho 20352) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho 8) (rho 113) (rho 114)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

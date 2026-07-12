import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Deployed.Nullifier.FullTail
import ShielddGnarkFormal.Poseidon3Bridge

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed nullifier Poseidon subchain endpoint. Post-T1-d: old seg9 -> new
seg11, internal wires shifted +5816 (DTK hoist); public wires 8/23/24
unchanged. -/
def deployedSpec11 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      (rho 7202) (rho 7207) (rho 7212) (rho 7217) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho 8) (rho 23) (rho 24)

def deployedSpec26 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      (rho 19383) (rho 19388) (rho 19393) (rho 19398) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho 8) (rho 113) (rho 114)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

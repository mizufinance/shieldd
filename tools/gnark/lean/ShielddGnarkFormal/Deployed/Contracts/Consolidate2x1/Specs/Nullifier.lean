import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Deployed.Nullifier.FullTail
import ShielddGnarkFormal.Poseidon3Bridge

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed nullifier Poseidon subchain endpoint. Post-T1-d: old seg9 -> new
seg11, internal wires shifted +5816 (DTK hoist); public wires 8/23/24
unchanged. -/
def deployedSpec11 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      (rho 7453) (rho 7458) (rho 7463) (rho 7468) =
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

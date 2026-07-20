import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Core
import ShielddGnarkFormal.Deployed.Nullifier.FullTail
import ShielddGnarkFormal.Poseidon3Bridge

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

/-- Deployed nullifier Poseidon subchain endpoint. Post-T1-d: old seg9 -> new
seg11, internal wires shifted +5816 (DTK hoist); public wires 8/23/24
unchanged. -/
def deployedSpec11 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      (rho 7196) (rho 7201) (rho 7206) (rho 7211) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho 8) (rho 23) (rho 24)

def deployedSpec26 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      (rho 19377) (rho 19382) (rho 19387) (rho 19392) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho 8) (rho 110) (rho 111)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

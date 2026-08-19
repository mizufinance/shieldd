import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg92

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 470, 7, 74446, 74451, 74456, 74461, 74466, 74467]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 92,
relationSha256Hex := "ad05a43c54b6d011f7bc692b260f19b52d024842ff32207a6e3beb7454ba0b5e",
wireRoleSha256Hex := "cdaae75effccb7ca4f18c3d7ffbd7b98fd1f23fe23deb7ba76fa8b9609f1ec0b",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg92

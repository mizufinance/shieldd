import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Deployed.NoteCommitment.FullTail

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed note-commitment Poseidon subchain endpoint. -/
def deployedSpec7 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 1312) (rho 1317) (rho 1322) (rho 1327) (rho 1332) (rho 1337) (rho 1342)

def deployedSpec25 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 20012) (rho 20017) (rho 20022) (rho 20027) (rho 20032) (rho 20037) (rho 20042)

def deployedSpec43 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 37972) (rho 38312) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 38712) (rho 38717) (rho 38722) (rho 38727) (rho 38732) (rho 38737) (rho 38742)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

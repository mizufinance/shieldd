import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Core
import ShielddGnarkFormal.Deployed.NoteCommitment.FullTail

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

/-- Exact note-commitment endpoint for deployed segment 9. -/
def deployedSpec9 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 566) (rho 906) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 6871) (rho 6876) (rho 6881) (rho 6886) (rho 6891) (rho 6896) (rho 6901)

def deployedSpec24 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 101) (rho 102) (rho 103) (rho 106) (rho 109) (rho 566) (rho 906) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 19052) (rho 19057) (rho 19062) (rho 19067) (rho 19072) (rho 19077) (rho 19082)

def deployedSpec39 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 186) (rho 187) (rho 188) (rho 191) (rho 194) (rho 566) (rho 906) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 31233) (rho 31238) (rho 31243) (rho 31248) (rho 31253) (rho 31258) (rho 31263)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

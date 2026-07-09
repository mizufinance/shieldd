import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Core
import ShielddGnarkFormal.Deployed.NoteCommitment.FullTail

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

/-- Deployed note-commitment Poseidon subchain endpoint. Post-T1-d: segments
renumbered 7,25,43 -> 9,25,41; instance 1's internal/output wires shift +5816
(DTK hoist), instance 2 (seg25) is unchanged, instance 3's shift by -5816
(re-derived from the fresh ir.json, matching the Compress seg40 offset). -/
def deployedSpec9 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 6388) (rho 6728) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 7128) (rho 7133) (rho 7138) (rho 7143) (rho 7148) (rho 7153) (rho 7158)

def deployedSpec25 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 19272) (rho 19612) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 20012) (rho 20017) (rho 20022) (rho 20027) (rho 20032) (rho 20037) (rho 20042)

def deployedSpec41 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 32156) (rho 32496) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 32896) (rho 32901) (rho 32906) (rho 32911) (rho 32916) (rho 32921) (rho 32926)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Specs

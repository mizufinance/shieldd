import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Core
import ShielddGnarkFormal.Deployed.NoteCommitment.FullTail

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

/-- Deployed note-commitment Poseidon subchain endpoint. Post-T1-d: segments
renumbered 7,25,43 -> 9,25,41; instance 1's internal/output wires shift +5816
(DTK hoist), instance 2 (seg25) is unchanged, instance 3's shift by -5816
(re-derived from the fresh ir.json, matching the Compress seg40 offset). -/
def deployedSpec9 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 14) (rho 15) (rho 16) (rho 19) (rho 22) (rho 572) (rho 912) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 6877) (rho 6882) (rho 6887) (rho 6892) (rho 6897) (rho 6902) (rho 6907)

def deployedSpec24 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 104) (rho 105) (rho 106) (rho 109) (rho 112) (rho 572) (rho 912) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 19058) (rho 19063) (rho 19068) (rho 19073) (rho 19078) (rho 19083) (rho 19088)

def deployedSpec39 (rho : Nat → DeployedF) : Prop :=
  Shieldd.GnarkFormal.Deployed.NoteCommitment.spec38
      (rho 192) (rho 193) (rho 194) (rho 197) (rho 200) (rho 572) (rho 912) =
    Shieldd.GnarkFormal.Deployed.NoteCommitment.st38
      (rho 31239) (rho 31244) (rho 31249) (rho 31254) (rho 31259) (rho 31264) (rho 31269)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs

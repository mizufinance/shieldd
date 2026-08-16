import ShielddGnarkFormal.NoteReshapeCanonical
import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Poseidon4Bridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-!
Reusable bridge between the independent NoteReshape state-tree fold and the
normalized exact-gadget projection.
-/

namespace Shieldd.GnarkFormal.NoteReshapeStateBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev F := Extracted.QuadPath2.F

def stateCommitmentDomain : F :=
  545001158149490383238005163525397553024965043366546261617421270984613353336

theorem stateStep_eq_deployed
    (domain cur s0 s1 s2 b0 b1 : F) :
    Protocol.Common.stateCommitmentStep
        domain cur s0 s1 s2 b0 b1 =
      Deployed.StateCommitmentPathChoiceFree.recoverStep
        Poseidon4Bridge.permSpec4 domain cur s0 s1 s2 b0 b1 := by
  rfl

theorem stateRecover_eq_deployed
    (commitment : F)
    (membershipPath : NoteReshapeCanonical.Path24)
    (b0 b1 : Nat → F)
    (level : Nat)
    (hlevel : level < 24) :
    Protocol.Common.stateCommitmentRecover
        commitment membershipPath b0 b1 level =
      Deployed.StateCommitmentPathChoiceFree.recoverPrefix
        Poseidon4Bridge.permSpec4
        (fun k => stateCommitmentDomain + (k : F) + 1)
        (Poseidon1Bridge.permSpec1
          stateCommitmentDomain commitment)
        (fun k => Protocol.Common.pathSibling membershipPath k 0)
        (fun k => Protocol.Common.pathSibling membershipPath k 1)
        (fun k => Protocol.Common.pathSibling membershipPath k 2)
        b0 b1 level := by
  induction level with
  | zero =>
      simp only [
        Protocol.Common.stateCommitmentRecover,
        Deployed.StateCommitmentPathChoiceFree.recoverPrefix
      ]
      rw [stateStep_eq_deployed]
      congr 1
  | succ level ih =>
      have hprevious : level < 24 := Nat.lt_trans (Nat.lt_succ_self level) hlevel
      simp only [
        Protocol.Common.stateCommitmentRecover,
        Deployed.StateCommitmentPathChoiceFree.recoverPrefix
      ]
      rw [ih hprevious, stateStep_eq_deployed]
      congr 1
      simp [
        Protocol.Common.stateCommitmentDomain,
        stateCommitmentDomain
      ]
      ring

end Shieldd.GnarkFormal.NoteReshapeStateBridge

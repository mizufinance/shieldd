import ShielddGnarkFormal.NoteReshapeStateBridge
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-!
Reusable bridges from exact nullifier and membership-path gadget contracts to
the handwritten NoteReshape input relation.
-/

namespace Shieldd.GnarkFormal.NoteReshapeMembershipBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.NoteReshape

abbrev F := NoteReshapeStateBridge.F

def segmentPath (sigma : Nat → F) : NoteReshapeCanonical.Path24 :=
  fun level sibling =>
    match sibling.val with
    | 0 => sigma (285 + 363 * level.val)
    | 1 => sigma (287 + 363 * level.val)
    | _ => sigma (290 + 363 * level.val)

theorem pathSibling_segmentPath0
    (sigma : Nat → F) (level : Nat) (hlevel : level < 24) :
    Protocol.NoteReshape.Concrete.pathSibling (segmentPath sigma) level 0 =
      sigma (285 + 363 * level) := by
  unfold Protocol.NoteReshape.Concrete.pathSibling
  rw [dif_pos hlevel, dif_pos (by decide : 0 < 3)]
  rfl

theorem pathSibling_segmentPath1
    (sigma : Nat → F) (level : Nat) (hlevel : level < 24) :
    Protocol.NoteReshape.Concrete.pathSibling (segmentPath sigma) level 1 =
      sigma (287 + 363 * level) := by
  unfold Protocol.NoteReshape.Concrete.pathSibling
  rw [dif_pos hlevel, dif_pos (by decide : 1 < 3)]
  rfl

theorem pathSibling_segmentPath2
    (sigma : Nat → F) (level : Nat) (hlevel : level < 24) :
    Protocol.NoteReshape.Concrete.pathSibling (segmentPath sigma) level 2 =
      sigma (290 + 363 * level) := by
  unfold Protocol.NoteReshape.Concrete.pathSibling
  rw [dif_pos hlevel, dif_pos (by decide : 2 < 3)]
  rfl

def stateRootOutput (sigma : Nat → F) : F :=
  7037051457856975353540687448984622109479916112628386523279361213264507699201 * sigma 8972 +
    7238110070938603220784707090384182741179342287274911852515914390786350776321 * sigma 8977 +
    7388904030749824121217721821433853214953911918259805849443329273927733084161 * sigma 8982 +
    4691367638571316902360458299323081406319944075085591015519574142176338466134 * sigma 8987 +
    7600015574485533381823942444903391878238309401638657445141710110325668315137 * sigma 8992

theorem recoverPrefix_segmentPath
    (sigma : Nat → F)
    (domain : Nat → F)
    (leaf : F)
    (b0 b1 : Nat → F)
    (level : Nat)
    (hlevel : level < 24) :
    Deployed.StateCommitmentPathChoiceFree.recoverPrefix
        Poseidon4Bridge.permSpec4 domain leaf
        (fun k =>
          Protocol.NoteReshape.Concrete.pathSibling (segmentPath sigma) k 0)
        (fun k =>
          Protocol.NoteReshape.Concrete.pathSibling (segmentPath sigma) k 1)
        (fun k =>
          Protocol.NoteReshape.Concrete.pathSibling (segmentPath sigma) k 2)
        b0 b1 level =
      Deployed.StateCommitmentPathChoiceFree.recoverPrefix
        Poseidon4Bridge.permSpec4 domain leaf
        (fun k => sigma (285 + 363 * k))
        (fun k => sigma (287 + 363 * k))
        (fun k => sigma (290 + 363 * k))
        b0 b1 level := by
  induction level with
  | zero =>
      simp only [Deployed.StateCommitmentPathChoiceFree.recoverPrefix]
      rw [
        pathSibling_segmentPath0 sigma 0 (by decide),
        pathSibling_segmentPath1 sigma 0 (by decide),
        pathSibling_segmentPath2 sigma 0 (by decide)
      ]
  | succ level ih =>
      have hprevious : level < 24 := Nat.lt_trans (Nat.lt_succ_self level) hlevel
      simp only [Deployed.StateCommitmentPathChoiceFree.recoverPrefix]
      rw [
        ih hprevious,
        pathSibling_segmentPath0 sigma (level + 1) hlevel,
        pathSibling_segmentPath1 sigma (level + 1) hlevel,
        pathSibling_segmentPath2 sigma (level + 1) hlevel
      ]

theorem stateRecover_segmentPath_eq_deployed
    (sigma : Nat → F)
    (commitment : F)
    (b0 b1 : Nat → F)
    (level : Nat)
    (hlevel : level < 24) :
    Protocol.NoteReshape.Concrete.stateCommitmentRecover
        commitment (segmentPath sigma) b0 b1 level =
      Deployed.StateCommitmentPathChoiceFree.recoverPrefix
        Poseidon4Bridge.permSpec4
        (fun k => NoteReshapeStateBridge.stateCommitmentDomain + (k : F) + 1)
        (Poseidon1Bridge.permSpec1
          NoteReshapeStateBridge.stateCommitmentDomain commitment)
        (fun k => sigma (285 + 363 * k))
        (fun k => sigma (287 + 363 * k))
        (fun k => sigma (290 + 363 * k))
        b0 b1 level := by
  rw [
    NoteReshapeStateBridge.stateRecover_eq_deployed
      commitment (segmentPath sigma) b0 b1 level hlevel,
    recoverPrefix_segmentPath sigma
      (fun k => NoteReshapeStateBridge.stateCommitmentDomain + (k : F) + 1)
      (Poseidon1Bridge.permSpec1
        NoteReshapeStateBridge.stateCommitmentDomain commitment)
      b0 b1 level hlevel
  ]

theorem nullifierHash_of_spec
    (sigma : Nat → F)
    (h :
      Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.spec
        sigma)
    (computed nk commitment position : F)
    (hcomputed :
      computed =
        Deployed.Nullifier.s38_1
          (sigma 298) (sigma 303) (sigma 308) (sigma 313))
    (hnk : nk = sigma 1)
    (hcommitment : commitment = sigma 7)
    (hposition : position = sigma 13) :
    computed =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        nk commitment position := by
  rw [hcomputed, hnk, hcommitment, hposition]
  simpa only [add_assoc] using h

theorem member_of_state_spec
    (sigma : Nat → F)
    (stateInput : RealInput F NoteReshapeCanonical.Path24)
    (anchorValue : F)
    (h :
      Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.spec
        sigma)
    (hcommitment : stateInput.commitment = sigma 1)
    (hpositionInput : stateInput.statePosition = sigma 280)
    (hpath : stateInput.membershipProof = segmentPath sigma)
    (hanchor : anchorValue = stateRootOutput sigma) :
    NoteReshapeCanonical.member anchorValue stateInput := by
  rcases h with ⟨hboolean, hposition, hroot⟩
  let b0 : Nat → F := fun level => sigma (232 + 2 * level)
  let b1 : Nat → F := fun level => sigma (233 + 2 * level)
  refine ⟨b0, b1, ?_, ?_, ?_, ?_⟩
  · intro level hlevel
    exact hboolean (2 * level) (by omega)
  · intro level hlevel
    have hindex : 232 + (2 * level + 1) = 233 + 2 * level := by
      omega
    simpa [b1, hindex] using
      hboolean (2 * level + 1) (by omega)
  · rw [hpositionInput, hposition]
    simp only [
      b0,
      b1,
      Protocol.NoteReshape.Concrete.statePositionFromBits
    ]
    ring
  · rw [hanchor, hcommitment, hpath]
    unfold Protocol.NoteReshape.Concrete.stateCommitmentRoot
    rw [
      stateRecover_segmentPath_eq_deployed
        sigma (sigma 1) b0 b1 23 (by decide)
    ]
    change stateRootOutput sigma =
      Deployed.StateCommitmentPathChoiceFree.recover24H
        Poseidon4Bridge.permSpec4
        (fun k =>
          NoteReshapeStateBridge.stateCommitmentDomain + (k : F) + 1)
        (Poseidon1Bridge.permSpec1
          NoteReshapeStateBridge.stateCommitmentDomain (sigma 1))
        (fun k => sigma (285 + 363 * k))
        (fun k => sigma (287 + 363 * k))
        (fun k => sigma (290 + 363 * k))
        b0 b1 at hroot
    simpa [Deployed.StateCommitmentPathChoiceFree.recover24H] using hroot

end Shieldd.GnarkFormal.NoteReshapeMembershipBridge

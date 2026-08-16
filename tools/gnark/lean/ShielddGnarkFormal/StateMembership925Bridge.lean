import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.Ring
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
import ShielddGnarkFormal.NoteReshapeStateBridge
import ShielddGnarkFormal.Protocol.Common

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Bridge from the seven-lane state-path template to protocol membership. -/

namespace Shieldd.GnarkFormal.StateMembership925Bridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev F := NoteReshapeStateBridge.F
abbrev Path24 := Protocol.Common.Path24

def segmentPath (sigma : Nat → F) : Path24 :=
  fun level sibling =>
    match sibling.val with
    | 0 => sigma (290 + 363 * level.val)
    | 1 => sigma (292 + 363 * level.val)
    | _ => sigma (295 + 363 * level.val)

def leafInput (sigma : Nat → F) : F :=
  7238110070938603220784707090384182741179342287274911852515914390786350776321 *
      sigma 1 +
    7388904030749824121217721821433853214953911918259805849443329273927733084161 *
      sigma 2 +
    4691367638571316902360458299323081406319944075085591015519574142176338466134 *
      sigma 3 +
    7600015574485533381823942444903391878238309401638657445141710110325668315137 *
      sigma 4 +
    2303035022571373752067861346940421781284336182314744680345972760704747974284 *
      sigma 5 +
    7740756603642672888894756193883084320427907723891225175607297334590958469121 *
      sigma 6

def rootOutput (sigma : Nat → F) : F :=
  7037051457856975353540687448984622109479916112628386523279361213264507699201 *
      sigma 8977 +
    7238110070938603220784707090384182741179342287274911852515914390786350776321 *
      sigma 8982 +
    7388904030749824121217721821433853214953911918259805849443329273927733084161 *
      sigma 8987 +
    4691367638571316902360458299323081406319944075085591015519574142176338466134 *
      sigma 8992 +
    7600015574485533381823942444903391878238309401638657445141710110325668315137 *
      sigma 8997

theorem pathSibling_segmentPath0
    (sigma : Nat → F) (level : Nat) (hlevel : level < 24) :
    Protocol.Common.pathSibling (segmentPath sigma) level 0 =
      sigma (290 + 363 * level) := by
  unfold Protocol.Common.pathSibling
  rw [dif_pos hlevel, dif_pos (by decide : 0 < 3)]
  rfl

theorem pathSibling_segmentPath1
    (sigma : Nat → F) (level : Nat) (hlevel : level < 24) :
    Protocol.Common.pathSibling (segmentPath sigma) level 1 =
      sigma (292 + 363 * level) := by
  unfold Protocol.Common.pathSibling
  rw [dif_pos hlevel, dif_pos (by decide : 1 < 3)]
  rfl

theorem pathSibling_segmentPath2
    (sigma : Nat → F) (level : Nat) (hlevel : level < 24) :
    Protocol.Common.pathSibling (segmentPath sigma) level 2 =
      sigma (295 + 363 * level) := by
  unfold Protocol.Common.pathSibling
  rw [dif_pos hlevel, dif_pos (by decide : 2 < 3)]
  rfl

theorem recoverPrefix_segmentPath
    (sigma : Nat → F)
    (domain : Nat → F)
    (leaf : F)
    (b0 b1 : Nat → F)
    (level : Nat)
    (hlevel : level < 24) :
    Deployed.StateCommitmentPathChoiceFree.recoverPrefix
        Poseidon4Bridge.permSpec4 domain leaf
        (fun k => Protocol.Common.pathSibling (segmentPath sigma) k 0)
        (fun k => Protocol.Common.pathSibling (segmentPath sigma) k 1)
        (fun k => Protocol.Common.pathSibling (segmentPath sigma) k 2)
        b0 b1 level =
      Deployed.StateCommitmentPathChoiceFree.recoverPrefix
        Poseidon4Bridge.permSpec4 domain leaf
        (fun k => sigma (290 + 363 * k))
        (fun k => sigma (292 + 363 * k))
        (fun k => sigma (295 + 363 * k))
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
      have hprevious : level < 24 :=
        Nat.lt_trans (Nat.lt_succ_self level) hlevel
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
    Protocol.Common.stateCommitmentRecover
        commitment (segmentPath sigma) b0 b1 level =
      Deployed.StateCommitmentPathChoiceFree.recoverPrefix
        Poseidon4Bridge.permSpec4
        (fun k => NoteReshapeStateBridge.stateCommitmentDomain + (k : F) + 1)
        (Poseidon1Bridge.permSpec1
          NoteReshapeStateBridge.stateCommitmentDomain commitment)
        (fun k => sigma (290 + 363 * k))
        (fun k => sigma (292 + 363 * k))
        (fun k => sigma (295 + 363 * k))
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

theorem member_of_spec
    (sigma : Nat → F)
    (anchor commitment position : F)
    (path : Path24)
    (h :
      Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.spec
        sigma)
    (hcommitment : commitment = leafInput sigma)
    (hpositionInput : position = sigma 285)
    (hpath : path = segmentPath sigma)
    (hanchor : anchor = rootOutput sigma) :
    Protocol.Common.stateMember anchor commitment position path := by
  rcases h with ⟨hboolean, hposition, hroot⟩
  let b0 : Nat → F := fun level => sigma (237 + 2 * level)
  let b1 : Nat → F := fun level => sigma (238 + 2 * level)
  refine ⟨b0, b1, ?_, ?_, ?_, ?_⟩
  · intro level hlevel
    exact hboolean (2 * level) (by omega)
  · intro level hlevel
    have hindex : 237 + (2 * level + 1) = 238 + 2 * level := by
      omega
    simpa [b1, hindex] using
      hboolean (2 * level + 1) (by omega)
  · rw [hpositionInput, hposition]
    simp only [b0, b1, Protocol.Common.statePositionFromBits]
    ring
  · rw [hanchor, hcommitment, hpath]
    unfold Protocol.Common.stateCommitmentRoot
    rw [
      stateRecover_segmentPath_eq_deployed
        sigma (leafInput sigma) b0 b1 23 (by decide)
    ]
    change rootOutput sigma =
      Deployed.StateCommitmentPathChoiceFree.recover24H
        Poseidon4Bridge.permSpec4
        (fun k => NoteReshapeStateBridge.stateCommitmentDomain + (k : F) + 1)
        (Poseidon1Bridge.permSpec1
          NoteReshapeStateBridge.stateCommitmentDomain (leafInput sigma))
        (fun k => sigma (290 + 363 * k))
        (fun k => sigma (292 + 363 * k))
        (fun k => sigma (295 + 363 * k))
        b0 b1 at hroot
    simpa [
      leafInput, rootOutput,
      NoteReshapeStateBridge.stateCommitmentDomain,
      Deployed.StateCommitmentPathChoiceFree.recover24H
    ] using hroot

end Shieldd.GnarkFormal.StateMembership925Bridge

import ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress2x1
import ShielddGnarkFormal.Deployed.NoteReshape2x1Balance
import ShielddGnarkFormal.Deployed.NoteReshape2x1Conservation
import ShielddGnarkFormal.Deployed.NoteReshape2x1Statement
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RoleBindings
import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.NoteReshapeStateBridge
import ShielddGnarkFormal.Protocol.NoteReshape.Refinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-!
Handwritten refinement of the exact NoteReshape 2x1 deployment into the
independent protocol relation.
-/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1Refinement

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical

namespace C

open Contracts.NoteReshape2x1

def segmentPath (sigma : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  fun level sibling =>
    match sibling.val with
    | 0 => sigma (285 + 363 * level.val)
    | 1 => sigma (287 + 363 * level.val)
    | _ => sigma (290 + 363 * level.val)

def path0 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  segmentPath (Seg12.localRho rho)

def path1 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  segmentPath (Seg23.localRho rho)

theorem pathSibling_segmentPath0
    (sigma : Nat → DeployedF) (level : Nat) (hlevel : level < 24) :
    NoteReshapeCanonical.pathSibling (segmentPath sigma) level 0 =
      sigma (285 + 363 * level) := by
  unfold NoteReshapeCanonical.pathSibling
  rw [dif_pos hlevel, dif_pos (by decide : 0 < 3)]
  rfl

theorem pathSibling_segmentPath1
    (sigma : Nat → DeployedF) (level : Nat) (hlevel : level < 24) :
    NoteReshapeCanonical.pathSibling (segmentPath sigma) level 1 =
      sigma (287 + 363 * level) := by
  unfold NoteReshapeCanonical.pathSibling
  rw [dif_pos hlevel, dif_pos (by decide : 1 < 3)]
  rfl

theorem pathSibling_segmentPath2
    (sigma : Nat → DeployedF) (level : Nat) (hlevel : level < 24) :
    NoteReshapeCanonical.pathSibling (segmentPath sigma) level 2 =
      sigma (290 + 363 * level) := by
  unfold NoteReshapeCanonical.pathSibling
  rw [dif_pos hlevel, dif_pos (by decide : 2 < 3)]
  rfl

def stateRootOutput (sigma : Nat → DeployedF) : DeployedF :=
  7037051457856975353540687448984622109479916112628386523279361213264507699201 * sigma 8972 +
    7238110070938603220784707090384182741179342287274911852515914390786350776321 * sigma 8977 +
    7388904030749824121217721821433853214953911918259805849443329273927733084161 * sigma 8982 +
    4691367638571316902360458299323081406319944075085591015519574142176338466134 * sigma 8987 +
    7600015574485533381823942444903391878238309401638657445141710110325668315137 * sigma 8992

theorem recoverPrefix_segmentPath
    (sigma : Nat → NoteReshapeStateBridge.F)
    (domain : Nat → NoteReshapeStateBridge.F)
    (leaf : NoteReshapeStateBridge.F)
    (b0 b1 : Nat → NoteReshapeStateBridge.F)
    (level : Nat)
    (hlevel : level < 24) :
    Deployed.StateCommitmentPathChoiceFree.recoverPrefix
        Poseidon4Bridge.permSpec4 domain leaf
        (fun k => NoteReshapeCanonical.pathSibling (segmentPath sigma) k 0)
        (fun k => NoteReshapeCanonical.pathSibling (segmentPath sigma) k 1)
        (fun k => NoteReshapeCanonical.pathSibling (segmentPath sigma) k 2)
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
    (sigma : Nat → NoteReshapeStateBridge.F)
    (commitment : NoteReshapeStateBridge.F)
    (b0 b1 : Nat → NoteReshapeStateBridge.F)
    (level : Nat)
    (hlevel : level < 24) :
    NoteReshapeCanonical.stateCommitmentRecover
        commitment (segmentPath sigma) b0 b1 level =
      Deployed.StateCommitmentPathChoiceFree.recoverPrefix
        Poseidon4Bridge.permSpec4
        (fun k => NoteReshapeStateBridge.stateCommitmentDomain +
          (k : NoteReshapeStateBridge.F) + 1)
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
      (fun k => NoteReshapeStateBridge.stateCommitmentDomain +
        (k : NoteReshapeStateBridge.F) + 1)
      (Poseidon1Bridge.permSpec1
        NoteReshapeStateBridge.stateCommitmentDomain commitment)
      b0 b1 level hlevel
  ]

def input0 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend0NoteCommitmentInputs1 rho
    blinding := spend0NoteCommitmentInputs0 rho
    commitment := spend0StateProofCommitment rho
    nullifier := spend0NullifierClaimed rho
    statePosition := rho 21
    membershipProof := path0 rho
    randomizedVerificationKey :=
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
    randomizer := rho 94
  }

def input1 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend1NoteCommitmentInputs1 rho
    blinding := spend1NoteCommitmentInputs0 rho
    commitment := spend1StateProofCommitment rho
    nullifier := spend1NullifierClaimed rho
    statePosition := rho 101
    membershipProof := path1 rho
    randomizedVerificationKey :=
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
    randomizer := rho 174
  }

def output0 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output0NoteCommitmentInputs1 rho
    blinding := output0NoteCommitmentInputs0 rho
    commitment := output0NoteCommitmentClaimed rho
  }

def action (rho : Nat → DeployedF) :
    Action DeployedF NoteReshapeCanonical.Path24 :=
  {
    policy := .reshape2x1
    shared := NoteReshapeCanonicalAddress2x1.shared rho
    authorization := NoteReshapeCanonicalAddress2x1.authorization rho
    inputs := [.real (input0 rho), .real (input1 rho)]
    outputs := [output0 rho]
    anchor := anchor rho
    balanceCommitment :=
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
    balanceBlinding := actionBalanceBlinding rho
    publicStatementHash := claimedStatementHash rho
  }

theorem noteCommitmentHash_of_spec
    (sigma : Nat → DeployedF)
    (h :
      Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.spec
        sigma)
    (computed input0 input1 input2 input3 input4 input5 : DeployedF)
    (hcomputed :
      computed =
        Deployed.NoteCommitment.s38_1
          (sigma 408) (sigma 413) (sigma 418) (sigma 423)
          (sigma 428) (sigma 433) (sigma 438))
    (hinput0 : input0 = sigma 1)
    (hinput1 : input1 = sigma 7)
    (hinput2 : input2 = sigma 13)
    (hinput3 : input3 = sigma 20 - sigma 19)
    (hinput4 : input4 = sigma 27 - sigma 26)
    (hinput5 : input5 = sigma 33) :
    computed =
      Poseidon6Bridge.permSpec6 NoteReshapeCanonical.noteCommitmentDomain
        input0 input1 input2 input3 input4 input5 := by
  have h1 := congrArg (fun state => state[1]) h
  change
    (Deployed.NoteCommitment.spec38
      (sigma 1) (sigma 7) (sigma 13)
      (sigma 27 - sigma 26) (sigma 33)
      (sigma 19) (sigma 20))[1] =
    (Deployed.NoteCommitment.st38
      (sigma 408) (sigma 413) (sigma 418) (sigma 423)
      (sigma 428) (sigma 433) (sigma 438))[1] at h1
  rw [Deployed.NoteCommitment.spec38_eq_permSpec] at h1
  change
    Poseidon6Bridge.permSpec6 NoteReshapeCanonical.noteCommitmentDomain
      (sigma 1) (sigma 7) (sigma 13)
      (sigma 20 - sigma 19) (sigma 27 - sigma 26) (sigma 33) =
    Deployed.NoteCommitment.s38_1
      (sigma 408) (sigma 413) (sigma 418) (sigma 423)
      (sigma 428) (sigma 433) (sigma 438) at h1
  rw [hcomputed, hinput0, hinput1, hinput2, hinput3, hinput4, hinput5]
  exact h1.symm

theorem spend0NoteCommitmentHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    spend0NoteCommitmentComputed rho =
      Poseidon6Bridge.permSpec6 NoteReshapeCanonical.noteCommitmentDomain
        (spend0NoteCommitmentInputs0 rho)
        (spend0NoteCommitmentInputs1 rho)
        (spend0NoteCommitmentInputs2 rho)
        (spend0NoteCommitmentInputs3 rho)
        (spend0NoteCommitmentInputs4 rho)
        (spend0NoteCommitmentInputs5 rho) := by
  have h := facts.spend0.GadgetNoteCommitmentSeg8
  change
    Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.spec
      (Seg8.localRho rho) at h
  have h1 := congrArg (fun state => state[1]) h
  have hw1 : Seg8.wireSeating 1 = 18 := by decide
  have hw7 : Seg8.wireSeating 7 = 19 := by decide
  have hw13 : Seg8.wireSeating 13 = 6 := by decide
  have hw19 : Seg8.wireSeating 19 = 546 := by decide
  have hw20 : Seg8.wireSeating 20 = 886 := by decide
  have hw26 : Seg8.wireSeating 26 = 6812 := by decide
  have hw27 : Seg8.wireSeating 27 = 7152 := by decide
  have hw33 : Seg8.wireSeating 33 = 9 := by decide
  have hw408 : Seg8.wireSeating 408 = 7552 := by decide
  have hw413 : Seg8.wireSeating 413 = 7557 := by decide
  have hw418 : Seg8.wireSeating 418 = 7562 := by decide
  have hw423 : Seg8.wireSeating 423 = 7567 := by decide
  have hw428 : Seg8.wireSeating 428 = 7572 := by decide
  have hw433 : Seg8.wireSeating 433 = 7577 := by decide
  have hw438 : Seg8.wireSeating 438 = 7582 := by decide
  change
    (Deployed.NoteCommitment.spec38
      (Seg8.localRho rho 1) (Seg8.localRho rho 7)
      (Seg8.localRho rho 13)
      (Seg8.localRho rho 27 - Seg8.localRho rho 26)
      (Seg8.localRho rho 33)
      (Seg8.localRho rho 19) (Seg8.localRho rho 20))[1] =
    (Deployed.NoteCommitment.st38
      (Seg8.localRho rho 408) (Seg8.localRho rho 413)
      (Seg8.localRho rho 418) (Seg8.localRho rho 423)
      (Seg8.localRho rho 428) (Seg8.localRho rho 433)
      (Seg8.localRho rho 438))[1] at h1
  rw [Deployed.NoteCommitment.spec38_eq_permSpec] at h1
  change
    Poseidon6Bridge.permSpec6 NoteReshapeCanonical.noteCommitmentDomain
      (Seg8.localRho rho 1) (Seg8.localRho rho 7)
      (Seg8.localRho rho 13)
      (Seg8.localRho rho 20 - Seg8.localRho rho 19)
      (Seg8.localRho rho 27 - Seg8.localRho rho 26)
      (Seg8.localRho rho 33) =
    Deployed.NoteCommitment.s38_1
      (Seg8.localRho rho 408) (Seg8.localRho rho 413)
      (Seg8.localRho rho 418) (Seg8.localRho rho 423)
      (Seg8.localRho rho 428) (Seg8.localRho rho 433)
      (Seg8.localRho rho 438) at h1
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by
    decide
  have hcomputed :
      spend0NoteCommitmentComputed rho =
        Deployed.NoteCommitment.s38_1
          (Seg8.localRho rho 408) (Seg8.localRho rho 413)
          (Seg8.localRho rho 418) (Seg8.localRho rho 423)
          (Seg8.localRho rho 428) (Seg8.localRho rho 433)
          (Seg8.localRho rho 438) := by
    simp only [
      spend0NoteCommitmentComputed, spend0NoteCommitmentComputedLC,
      Deployed.NoteCommitment.s38_1, Poseidon6Bridge.row7,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg8.localRho, Deployed.Templates.seated,
      hw408, hw413, hw418, hw423, hw428, hw433, hw438,
      zero_add, add_zero, one_mul]
    ring
  have hi0 :
      spend0NoteCommitmentInputs0 rho = Seg8.localRho rho 1 := by
    simp [spend0NoteCommitmentInputs0, spend0NoteCommitmentInputs0LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg8.localRho, Deployed.Templates.seated, hw1]
  have hi1 :
      spend0NoteCommitmentInputs1 rho = Seg8.localRho rho 7 := by
    simp [spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg8.localRho, Deployed.Templates.seated, hw7]
  have hi2 :
      spend0NoteCommitmentInputs2 rho = Seg8.localRho rho 13 := by
    simp [spend0NoteCommitmentInputs2, spend0NoteCommitmentInputs2LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg8.localRho, Deployed.Templates.seated, hw13]
  have hi3 :
      spend0NoteCommitmentInputs3 rho =
        Seg8.localRho rho 20 - Seg8.localRho rho 19 := by
    simp [spend0NoteCommitmentInputs3, spend0NoteCommitmentInputs3LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg8.localRho, Deployed.Templates.seated, hw19, hw20, hneg]
    ring
  have hi4 :
      spend0NoteCommitmentInputs4 rho =
        Seg8.localRho rho 27 - Seg8.localRho rho 26 := by
    simp [spend0NoteCommitmentInputs4, spend0NoteCommitmentInputs4LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg8.localRho, Deployed.Templates.seated, hw26, hw27, hneg]
    ring
  have hi5 :
      spend0NoteCommitmentInputs5 rho = Seg8.localRho rho 33 := by
    simp [spend0NoteCommitmentInputs5, spend0NoteCommitmentInputs5LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg8.localRho, Deployed.Templates.seated, hw33]
  rw [hcomputed, hi0, hi1, hi2, hi3, hi4, hi5]
  exact h1.symm

theorem spend1NoteCommitmentHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    spend1NoteCommitmentComputed rho =
      Poseidon6Bridge.permSpec6 NoteReshapeCanonical.noteCommitmentDomain
        (spend1NoteCommitmentInputs0 rho)
        (spend1NoteCommitmentInputs1 rho)
        (spend1NoteCommitmentInputs2 rho)
        (spend1NoteCommitmentInputs3 rho)
        (spend1NoteCommitmentInputs4 rho)
        (spend1NoteCommitmentInputs5 rho) := by
  have h := facts.spend1.GadgetNoteCommitmentSeg19
  change
    Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.spec
      (Seg19.localRho rho) at h
  have hw1 : Seg19.wireSeating 1 = 98 := by decide
  have hw7 : Seg19.wireSeating 7 = 99 := by decide
  have hw13 : Seg19.wireSeating 13 = 6 := by decide
  have hw19 : Seg19.wireSeating 19 = 546 := by decide
  have hw20 : Seg19.wireSeating 20 = 886 := by decide
  have hw26 : Seg19.wireSeating 26 = 6812 := by decide
  have hw27 : Seg19.wireSeating 27 = 7152 := by decide
  have hw33 : Seg19.wireSeating 33 = 9 := by decide
  have hw408 : Seg19.wireSeating 408 = 19726 := by decide
  have hw413 : Seg19.wireSeating 413 = 19731 := by decide
  have hw418 : Seg19.wireSeating 418 = 19736 := by decide
  have hw423 : Seg19.wireSeating 423 = 19741 := by decide
  have hw428 : Seg19.wireSeating 428 = 19746 := by decide
  have hw433 : Seg19.wireSeating 433 = 19751 := by decide
  have hw438 : Seg19.wireSeating 438 = 19756 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by
    decide
  apply noteCommitmentHash_of_spec (Seg19.localRho rho) h
  · simp only [
      spend1NoteCommitmentComputed, spend1NoteCommitmentComputedLC,
      Deployed.NoteCommitment.s38_1, Poseidon6Bridge.row7,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg19.localRho, Deployed.Templates.seated,
      hw408, hw413, hw418, hw423, hw428, hw433, hw438,
      zero_add, add_zero, one_mul]
    ring
  · simp [spend1NoteCommitmentInputs0, spend1NoteCommitmentInputs0LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg19.localRho, Deployed.Templates.seated, hw1]
  · simp [spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg19.localRho, Deployed.Templates.seated, hw7]
  · simp [spend1NoteCommitmentInputs2, spend1NoteCommitmentInputs2LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg19.localRho, Deployed.Templates.seated, hw13]
  · simp [spend1NoteCommitmentInputs3, spend1NoteCommitmentInputs3LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg19.localRho, Deployed.Templates.seated, hw19, hw20, hneg]
    ring
  · simp [spend1NoteCommitmentInputs4, spend1NoteCommitmentInputs4LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg19.localRho, Deployed.Templates.seated, hw26, hw27, hneg]
    ring
  · simp [spend1NoteCommitmentInputs5, spend1NoteCommitmentInputs5LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg19.localRho, Deployed.Templates.seated, hw33]

theorem output0NoteCommitmentHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    output0NoteCommitmentComputed rho =
      Poseidon6Bridge.permSpec6 NoteReshapeCanonical.noteCommitmentDomain
        (output0NoteCommitmentInputs0 rho)
        (output0NoteCommitmentInputs1 rho)
        (output0NoteCommitmentInputs2 rho)
        (output0NoteCommitmentInputs3 rho)
        (output0NoteCommitmentInputs4 rho)
        (output0NoteCommitmentInputs5 rho) := by
  have h := facts.output0.GadgetNoteCommitmentSeg30
  change
    Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.spec
      (Seg30.localRho rho) at h
  have hw1 : Seg30.wireSeating 1 = 176 := by decide
  have hw7 : Seg30.wireSeating 7 = 177 := by decide
  have hw13 : Seg30.wireSeating 13 = 6 := by decide
  have hw19 : Seg30.wireSeating 19 = 546 := by decide
  have hw20 : Seg30.wireSeating 20 = 886 := by decide
  have hw26 : Seg30.wireSeating 26 = 6812 := by decide
  have hw27 : Seg30.wireSeating 27 = 7152 := by decide
  have hw33 : Seg30.wireSeating 33 = 9 := by decide
  have hw408 : Seg30.wireSeating 408 = 31900 := by decide
  have hw413 : Seg30.wireSeating 413 = 31905 := by decide
  have hw418 : Seg30.wireSeating 418 = 31910 := by decide
  have hw423 : Seg30.wireSeating 423 = 31915 := by decide
  have hw428 : Seg30.wireSeating 428 = 31920 := by decide
  have hw433 : Seg30.wireSeating 433 = 31925 := by decide
  have hw438 : Seg30.wireSeating 438 = 31930 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by
    decide
  apply noteCommitmentHash_of_spec (Seg30.localRho rho) h
  · simp only [
      output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
      Deployed.NoteCommitment.s38_1, Poseidon6Bridge.row7,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg30.localRho, Deployed.Templates.seated,
      hw408, hw413, hw418, hw423, hw428, hw433, hw438,
      zero_add, add_zero, one_mul]
    ring
  · simp [output0NoteCommitmentInputs0, output0NoteCommitmentInputs0LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg30.localRho, Deployed.Templates.seated, hw1]
  · simp [output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg30.localRho, Deployed.Templates.seated, hw7]
  · simp [output0NoteCommitmentInputs2, output0NoteCommitmentInputs2LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg30.localRho, Deployed.Templates.seated, hw13]
  · simp [output0NoteCommitmentInputs3, output0NoteCommitmentInputs3LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg30.localRho, Deployed.Templates.seated, hw19, hw20, hneg]
    ring
  · simp [output0NoteCommitmentInputs4, output0NoteCommitmentInputs4LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg30.localRho, Deployed.Templates.seated, hw26, hw27, hneg]
    ring
  · simp [output0NoteCommitmentInputs5, output0NoteCommitmentInputs5LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg30.localRho, Deployed.Templates.seated, hw33]

theorem spend0NoteCommitmentAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    spend0StateProofCommitment rho = spend0NoteCommitmentComputed rho := by
  have h := facts.spend0.AssertEqSeg9
  change
    Deployed.Templates.Semantics.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec
      (Seg9.localRho rho) at h
  have hw1 : Seg9.wireSeating 1 = 7552 := by decide
  have hw2 : Seg9.wireSeating 2 = 7557 := by decide
  have hw3 : Seg9.wireSeating 3 = 7562 := by decide
  have hw4 : Seg9.wireSeating 4 = 7567 := by decide
  have hw5 : Seg9.wireSeating 5 = 7572 := by decide
  have hw6 : Seg9.wireSeating 6 = 7577 := by decide
  have hw7 : Seg9.wireSeating 7 = 7582 := by decide
  have hw8 : Seg9.wireSeating 8 = 20 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec,
    one_mul, Seg9.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8
  ] at h
  simp only [
    spend0StateProofCommitment, spend0StateProofCommitmentLC,
    spend0NoteCommitmentComputed, spend0NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem spend1NoteCommitmentAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    spend1StateProofCommitment rho = spend1NoteCommitmentComputed rho := by
  have h := facts.spend1.AssertEqSeg20
  change
    Deployed.Templates.Semantics.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec
      (Seg20.localRho rho) at h
  have hw1 : Seg20.wireSeating 1 = 19726 := by decide
  have hw2 : Seg20.wireSeating 2 = 19731 := by decide
  have hw3 : Seg20.wireSeating 3 = 19736 := by decide
  have hw4 : Seg20.wireSeating 4 = 19741 := by decide
  have hw5 : Seg20.wireSeating 5 = 19746 := by decide
  have hw6 : Seg20.wireSeating 6 = 19751 := by decide
  have hw7 : Seg20.wireSeating 7 = 19756 := by decide
  have hw8 : Seg20.wireSeating 8 = 100 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec,
    one_mul, Seg20.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8
  ] at h
  simp only [
    spend1StateProofCommitment, spend1StateProofCommitmentLC,
    spend1NoteCommitmentComputed, spend1NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem output0NoteCommitmentAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    output0NoteCommitmentClaimed rho = output0NoteCommitmentComputed rho := by
  have h := facts.output0.AssertEqSeg31
  change
    Deployed.Templates.Semantics.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec
      (Seg31.localRho rho) at h
  have hw1 : Seg31.wireSeating 1 = 31900 := by decide
  have hw2 : Seg31.wireSeating 2 = 31905 := by decide
  have hw3 : Seg31.wireSeating 3 = 31910 := by decide
  have hw4 : Seg31.wireSeating 4 = 31915 := by decide
  have hw5 : Seg31.wireSeating 5 = 31920 := by decide
  have hw6 : Seg31.wireSeating 6 = 31925 := by decide
  have hw7 : Seg31.wireSeating 7 = 31930 := by decide
  have hw8 : Seg31.wireSeating 8 = 175 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec,
    one_mul, Seg31.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8
  ] at h
  simp only [
    output0NoteCommitmentClaimed, output0NoteCommitmentClaimedLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem spend0RealCommitment
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.noteCommitment
      (NoteReshapeCanonicalAddress2x1.authorization rho)
      (NoteReshapeCanonicalAddress2x1.shared rho)
      (spend0NoteCommitmentInputs0 rho)
      (spend0NoteCommitmentInputs1 rho)
      (spend0StateProofCommitment rho) := by
  rcases
      NoteReshapeCanonicalAddress2x1.canonicalTransmissionFacts_of_exact rho facts with
    ⟨hdiv, hdtk, htransmission⟩
  have hw4Output : Seg4.wireSeating 705 = 886 := by decide
  have hw4Carry : Seg4.wireSeating 365 = 546 := by decide
  have hw6Output : Seg6.wireSeating 1205 = 7152 := by decide
  have hw6Carry : Seg6.wireSeating 865 = 6812 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by
    decide
  have hdivFq :
      spend0NoteCommitmentInputs3 rho =
        NoteReshapeCanonicalAddress2x1.divGenFq rho := by
    simp [
      spend0NoteCommitmentInputs3, spend0NoteCommitmentInputs3LC,
      NoteReshapeCanonicalAddress2x1.divGenFq,
      Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg4.localRho, Deployed.Templates.seated, hw4Output, hw4Carry, hneg
    ]
    ring
  have htransmissionFq :
      spend0NoteCommitmentInputs4 rho =
        NoteReshapeCanonicalAddress2x1.transmissionFq rho := by
    simp [
      spend0NoteCommitmentInputs4, spend0NoteCommitmentInputs4LC,
      NoteReshapeCanonicalAddress2x1.transmissionFq,
      Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.templateRho,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg6.localRho, Deployed.Templates.seated, hw6Output, hw6Carry, hneg
    ]
    ring
  refine NoteReshapeCanonical.noteCommitment_of_canonicalWitness
    (NoteReshapeCanonicalAddress2x1.authorization rho)
    (NoteReshapeCanonicalAddress2x1.shared rho)
    (spend0NoteCommitmentInputs0 rho)
    (spend0NoteCommitmentInputs1 rho)
    (spend0StateProofCommitment rho)
    (NoteReshapeCanonicalAddress2x1.divGenFq rho)
    (NoteReshapeCanonicalAddress2x1.transmissionFq rho)
    (NoteReshapeCanonicalAddress2x1.transmission rho)
    hdiv hdtk htransmission ?_
  rw [spend0NoteCommitmentAsserted rho facts, spend0NoteCommitmentHash rho facts]
  rw [hdivFq, htransmissionFq]
  simp [
    NoteReshapeCanonicalAddress2x1.shared,
    sharedAssetId, sharedAssetIdLC,
    sharedClueKey, sharedClueKeyLC,
    spend0NoteCommitmentInputs2, spend0NoteCommitmentInputs2LC,
    spend0NoteCommitmentInputs5, spend0NoteCommitmentInputs5LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Deployed.Templates.seated
  ]

theorem spend1RealCommitment
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.noteCommitment
      (NoteReshapeCanonicalAddress2x1.authorization rho)
      (NoteReshapeCanonicalAddress2x1.shared rho)
      (spend1NoteCommitmentInputs0 rho)
      (spend1NoteCommitmentInputs1 rho)
      (spend1StateProofCommitment rho) := by
  rcases
      NoteReshapeCanonicalAddress2x1.canonicalTransmissionFacts_of_exact rho facts with
    ⟨hdiv, hdtk, htransmission⟩
  have hw4Output : Seg4.wireSeating 705 = 886 := by decide
  have hw4Carry : Seg4.wireSeating 365 = 546 := by decide
  have hw6Output : Seg6.wireSeating 1205 = 7152 := by decide
  have hw6Carry : Seg6.wireSeating 865 = 6812 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by
    decide
  have hdivFq :
      spend1NoteCommitmentInputs3 rho =
        NoteReshapeCanonicalAddress2x1.divGenFq rho := by
    simp [
      spend1NoteCommitmentInputs3, spend1NoteCommitmentInputs3LC,
      NoteReshapeCanonicalAddress2x1.divGenFq,
      Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg4.localRho, Deployed.Templates.seated, hw4Output, hw4Carry, hneg
    ]
    ring
  have htransmissionFq :
      spend1NoteCommitmentInputs4 rho =
        NoteReshapeCanonicalAddress2x1.transmissionFq rho := by
    simp [
      spend1NoteCommitmentInputs4, spend1NoteCommitmentInputs4LC,
      NoteReshapeCanonicalAddress2x1.transmissionFq,
      Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.templateRho,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg6.localRho, Deployed.Templates.seated, hw6Output, hw6Carry, hneg
    ]
    ring
  refine NoteReshapeCanonical.noteCommitment_of_canonicalWitness
    (NoteReshapeCanonicalAddress2x1.authorization rho)
    (NoteReshapeCanonicalAddress2x1.shared rho)
    (spend1NoteCommitmentInputs0 rho)
    (spend1NoteCommitmentInputs1 rho)
    (spend1StateProofCommitment rho)
    (NoteReshapeCanonicalAddress2x1.divGenFq rho)
    (NoteReshapeCanonicalAddress2x1.transmissionFq rho)
    (NoteReshapeCanonicalAddress2x1.transmission rho)
    hdiv hdtk htransmission ?_
  rw [spend1NoteCommitmentAsserted rho facts, spend1NoteCommitmentHash rho facts]
  rw [hdivFq, htransmissionFq]
  simp [
    NoteReshapeCanonicalAddress2x1.shared,
    sharedAssetId, sharedAssetIdLC,
    sharedClueKey, sharedClueKeyLC,
    spend1NoteCommitmentInputs2, spend1NoteCommitmentInputs2LC,
    spend1NoteCommitmentInputs5, spend1NoteCommitmentInputs5LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Deployed.Templates.seated
  ]

theorem output0Commitment
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.noteCommitment
      (NoteReshapeCanonicalAddress2x1.authorization rho)
      (NoteReshapeCanonicalAddress2x1.shared rho)
      (output0NoteCommitmentInputs0 rho)
      (output0NoteCommitmentInputs1 rho)
      (output0NoteCommitmentClaimed rho) := by
  rcases
      NoteReshapeCanonicalAddress2x1.canonicalTransmissionFacts_of_exact rho facts with
    ⟨hdiv, hdtk, htransmission⟩
  have hw4Output : Seg4.wireSeating 705 = 886 := by decide
  have hw4Carry : Seg4.wireSeating 365 = 546 := by decide
  have hw6Output : Seg6.wireSeating 1205 = 7152 := by decide
  have hw6Carry : Seg6.wireSeating 865 = 6812 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by
    decide
  have hdivFq :
      output0NoteCommitmentInputs3 rho =
        NoteReshapeCanonicalAddress2x1.divGenFq rho := by
    simp [
      output0NoteCommitmentInputs3, output0NoteCommitmentInputs3LC,
      NoteReshapeCanonicalAddress2x1.divGenFq,
      Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg4.localRho, Deployed.Templates.seated, hw4Output, hw4Carry, hneg
    ]
    ring
  have htransmissionFq :
      output0NoteCommitmentInputs4 rho =
        NoteReshapeCanonicalAddress2x1.transmissionFq rho := by
    simp [
      output0NoteCommitmentInputs4, output0NoteCommitmentInputs4LC,
      NoteReshapeCanonicalAddress2x1.transmissionFq,
      Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.templateRho,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg6.localRho, Deployed.Templates.seated, hw6Output, hw6Carry, hneg
    ]
    ring
  refine NoteReshapeCanonical.noteCommitment_of_canonicalWitness
    (NoteReshapeCanonicalAddress2x1.authorization rho)
    (NoteReshapeCanonicalAddress2x1.shared rho)
    (output0NoteCommitmentInputs0 rho)
    (output0NoteCommitmentInputs1 rho)
    (output0NoteCommitmentClaimed rho)
    (NoteReshapeCanonicalAddress2x1.divGenFq rho)
    (NoteReshapeCanonicalAddress2x1.transmissionFq rho)
    (NoteReshapeCanonicalAddress2x1.transmission rho)
    hdiv hdtk htransmission ?_
  rw [output0NoteCommitmentAsserted rho facts, output0NoteCommitmentHash rho facts]
  rw [hdivFq, htransmissionFq]
  simp [
    NoteReshapeCanonicalAddress2x1.shared,
    sharedAssetId, sharedAssetIdLC,
    sharedClueKey, sharedClueKeyLC,
    output0NoteCommitmentInputs2, output0NoteCommitmentInputs2LC,
    output0NoteCommitmentInputs5, output0NoteCommitmentInputs5LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Deployed.Templates.seated
  ]

theorem actionShape (rho : Nat → DeployedF) :
    canonicalShape (action rho) := by
  simp [canonicalShape, realCount, action, FamilyPolicy.inputSlots,
    FamilyPolicy.outputSlots, FamilyPolicy.minimumRealInputs, Input.isReal]

theorem actionPadding (rho : Nat → DeployedF) :
    realPrefix (action rho) := by
  refine ⟨[.real (input0 rho), .real (input1 rho)], [], ?_, ?_, ?_⟩
  · simp [action]
  · simp [Input.isReal]
  · simp

theorem actionCanonicalAddress
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.canonicalTransmission
      (action rho).authorization (action rho).shared := by
  simpa [action] using
    NoteReshapeCanonicalAddress2x1.canonicalTransmission_of_exact rho facts

theorem actionInputCommitments
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    inputCommitments
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  simp [
    inputCommitments, action, input0, input1,
    NoteReshapeCanonical.primitives, NoteReshapeCanonical.realCommitment,
    spend0RealCommitment rho facts, spend1RealCommitment rho facts
  ]

theorem actionOutputCommitments
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    outputCommitments
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  simpa [
    outputCommitments, action, output0,
    NoteReshapeCanonical.primitives, NoteReshapeCanonical.outputCommitment
  ] using output0Commitment rho facts

theorem nullifierHash_of_spec
    (sigma : Nat → DeployedF)
    (h :
      Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.spec
        sigma)
    (computed nk commitment position : DeployedF)
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

theorem spend0NullifierHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    spend0NullifierComputed rho =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (authNk rho) (spend0StateProofCommitment rho) (rho 21) := by
  have h := facts.spend0.GadgetNullifierSeg10
  change
    Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.spec
      (Seg10.localRho rho) at h
  have hw1 : Seg10.wireSeating 1 = 12 := by decide
  have hw7 : Seg10.wireSeating 7 = 20 := by decide
  have hw13 : Seg10.wireSeating 13 = 21 := by decide
  have hw298 : Seg10.wireSeating 298 = 7877 := by decide
  have hw303 : Seg10.wireSeating 303 = 7882 := by decide
  have hw308 : Seg10.wireSeating 308 = 7887 := by decide
  have hw313 : Seg10.wireSeating 313 = 7892 := by decide
  apply nullifierHash_of_spec (Seg10.localRho rho) h
  · simp [
      spend0NullifierComputed, spend0NullifierComputedLC,
      Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg10.localRho, Deployed.Templates.seated,
      hw298, hw303, hw308, hw313
    ]
    ring
  · simp [authNk, authNkLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg10.localRho, Deployed.Templates.seated, hw1]
  · simp [spend0StateProofCommitment, spend0StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg10.localRho, Deployed.Templates.seated, hw7]
  · simp [Seg10.localRho, Deployed.Templates.seated, hw13]

theorem spend1NullifierHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    spend1NullifierComputed rho =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (authNk rho) (spend1StateProofCommitment rho) (rho 101) := by
  have h := facts.spend1.GadgetNullifierSeg21
  change
    Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.spec
      (Seg21.localRho rho) at h
  have hw1 : Seg21.wireSeating 1 = 12 := by decide
  have hw7 : Seg21.wireSeating 7 = 100 := by decide
  have hw13 : Seg21.wireSeating 13 = 101 := by decide
  have hw298 : Seg21.wireSeating 298 = 20051 := by decide
  have hw303 : Seg21.wireSeating 303 = 20056 := by decide
  have hw308 : Seg21.wireSeating 308 = 20061 := by decide
  have hw313 : Seg21.wireSeating 313 = 20066 := by decide
  apply nullifierHash_of_spec (Seg21.localRho rho) h
  · simp [
      spend1NullifierComputed, spend1NullifierComputedLC,
      Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg21.localRho, Deployed.Templates.seated,
      hw298, hw303, hw308, hw313
    ]
    ring
  · simp [authNk, authNkLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg21.localRho, Deployed.Templates.seated, hw1]
  · simp [spend1StateProofCommitment, spend1StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg21.localRho, Deployed.Templates.seated, hw7]
  · simp [Seg21.localRho, Deployed.Templates.seated, hw13]

theorem spend0NullifierAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    spend0NullifierClaimed rho = spend0NullifierComputed rho := by
  have h := facts.spend0.AssertEqSeg11
  change
    Deployed.Templates.Semantics.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec
      (Seg11.localRho rho) at h
  have hw1 : Seg11.wireSeating 1 = 7877 := by decide
  have hw2 : Seg11.wireSeating 2 = 7882 := by decide
  have hw3 : Seg11.wireSeating 3 = 7887 := by decide
  have hw4 : Seg11.wireSeating 4 = 7892 := by decide
  have hw5 : Seg11.wireSeating 5 = 15 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec,
    one_mul, Seg11.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5
  ] at h
  simp only [
    spend0NullifierClaimed, spend0NullifierClaimedLC,
    spend0NullifierComputed, spend0NullifierComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem spend1NullifierAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    spend1NullifierClaimed rho = spend1NullifierComputed rho := by
  have h := facts.spend1.AssertEqSeg22
  change
    Deployed.Templates.Semantics.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec
      (Seg22.localRho rho) at h
  have hw1 : Seg22.wireSeating 1 = 20051 := by decide
  have hw2 : Seg22.wireSeating 2 = 20056 := by decide
  have hw3 : Seg22.wireSeating 3 = 20061 := by decide
  have hw4 : Seg22.wireSeating 4 = 20066 := by decide
  have hw5 : Seg22.wireSeating 5 = 95 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec,
    one_mul, Seg22.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5
  ] at h
  simp only [
    spend1NullifierClaimed, spend1NullifierClaimedLC,
    spend1NullifierComputed, spend1NullifierComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem spend0RealNullifier
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.realNullifier
      (NoteReshapeCanonicalAddress2x1.authorization rho) (input0 rho) := by
  unfold NoteReshapeCanonical.realNullifier
  simp only [input0, NoteReshapeCanonicalAddress2x1.authorization]
  rw [spend0NullifierAsserted rho facts, spend0NullifierHash rho facts]

theorem spend1RealNullifier
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.realNullifier
      (NoteReshapeCanonicalAddress2x1.authorization rho) (input1 rho) := by
  unfold NoteReshapeCanonical.realNullifier
  simp only [input1, NoteReshapeCanonicalAddress2x1.authorization]
  rw [spend1NullifierAsserted rho facts, spend1NullifierHash rho facts]

theorem member_of_state_spec
    (sigma : Nat → DeployedF)
    (stateInput : RealInput DeployedF NoteReshapeCanonical.Path24)
    (anchorValue : DeployedF)
    (h :
      Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.spec
        sigma)
    (hcommitment : stateInput.commitment = sigma 1)
    (hpositionInput : stateInput.statePosition = sigma 280)
    (hpath : stateInput.membershipProof = segmentPath sigma)
    (hanchor : anchorValue = stateRootOutput sigma) :
    NoteReshapeCanonical.member anchorValue stateInput := by
  rcases h with ⟨hboolean, hposition, hroot⟩
  let b0 : Nat → DeployedF := fun level => sigma (232 + 2 * level)
  let b1 : Nat → DeployedF := fun level => sigma (233 + 2 * level)
  refine ⟨b0, b1, ?_, ?_, ?_, ?_⟩
  · intro level hlevel
    exact hboolean (2 * level) (by omega)
  · intro level hlevel
    have hindex : 232 + (2 * level + 1) = 233 + 2 * level := by
      omega
    simpa [b1, hindex] using
      hboolean (2 * level + 1) (by omega)
  · rw [hpositionInput, hposition]
    simp only [b0, b1, NoteReshapeCanonical.statePositionFromBits]
    ring
  · rw [hanchor, hcommitment, hpath]
    unfold NoteReshapeCanonical.stateCommitmentRoot
    rw [
      stateRecover_segmentPath_eq_deployed
        sigma (sigma 1) b0 b1 23 (by decide)
    ]
    change stateRootOutput sigma =
      Deployed.StateCommitmentPathChoiceFree.recover24H
        Poseidon4Bridge.permSpec4
        (fun k =>
          NoteReshapeStateBridge.stateCommitmentDomain +
            (k : NoteReshapeStateBridge.F) + 1)
        (Poseidon1Bridge.permSpec1
          NoteReshapeStateBridge.stateCommitmentDomain (sigma 1))
        (fun k => sigma (285 + 363 * k))
        (fun k => sigma (287 + 363 * k))
        (fun k => sigma (290 + 363 * k))
        b0 b1 at hroot
    simpa [
      Deployed.StateCommitmentPathChoiceFree.recover24H
    ] using hroot

theorem spend0AnchorAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    anchor rho = spend0AnchorComputed rho := by
  have h := facts.spend0.AssertEqSeg13
  change
    Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec
      (Seg13.localRho rho) at h
  have hw1 : Seg13.wireSeating 1 = 16790 := by decide
  have hw2 : Seg13.wireSeating 2 = 16795 := by decide
  have hw3 : Seg13.wireSeating 3 = 16800 := by decide
  have hw4 : Seg13.wireSeating 4 = 16805 := by decide
  have hw5 : Seg13.wireSeating 5 = 16810 := by decide
  have hw6 : Seg13.wireSeating 6 = 2 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec,
    one_mul, Seg13.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6
  ] at h
  simp only [
    anchor, anchorLC, spend0AnchorComputed, spend0AnchorComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem spend1AnchorAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    anchor rho = spend1AnchorComputed rho := by
  have h := facts.spend1.AssertEqSeg24
  change
    Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec
      (Seg24.localRho rho) at h
  have hw1 : Seg24.wireSeating 1 = 28964 := by decide
  have hw2 : Seg24.wireSeating 2 = 28969 := by decide
  have hw3 : Seg24.wireSeating 3 = 28974 := by decide
  have hw4 : Seg24.wireSeating 4 = 28979 := by decide
  have hw5 : Seg24.wireSeating 5 = 28984 := by decide
  have hw6 : Seg24.wireSeating 6 = 2 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec,
    one_mul, Seg24.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6
  ] at h
  simp only [
    anchor, anchorLC, spend1AnchorComputed, spend1AnchorComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem spend0Member
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.member (anchor rho) (input0 rho) := by
  have h := facts.spend0.GadgetStateCommitmentPathSeg12
  change
    Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.spec
      (Seg12.localRho rho) at h
  have hw1 : Seg12.wireSeating 1 = 20 := by decide
  have hw280 : Seg12.wireSeating 280 = 21 := by decide
  have hw8972 : Seg12.wireSeating 8972 = 16790 := by decide
  have hw8977 : Seg12.wireSeating 8977 = 16795 := by decide
  have hw8982 : Seg12.wireSeating 8982 = 16800 := by decide
  have hw8987 : Seg12.wireSeating 8987 = 16805 := by decide
  have hw8992 : Seg12.wireSeating 8992 = 16810 := by decide
  apply member_of_state_spec (Seg12.localRho rho) (input0 rho) (anchor rho) h
  · simp [input0, spend0StateProofCommitment, spend0StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg12.localRho, Deployed.Templates.seated, hw1]
  · simp [input0, Seg12.localRho, Deployed.Templates.seated, hw280]
  · rfl
  · rw [spend0AnchorAsserted rho facts]
    simp [
      spend0AnchorComputed, spend0AnchorComputedLC, stateRootOutput,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg12.localRho, Deployed.Templates.seated,
      hw8972, hw8977, hw8982, hw8987, hw8992
    ]
    ring

theorem spend1Member
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.member (anchor rho) (input1 rho) := by
  have h := facts.spend1.GadgetStateCommitmentPathSeg23
  change
    Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.spec
      (Seg23.localRho rho) at h
  have hw1 : Seg23.wireSeating 1 = 100 := by decide
  have hw280 : Seg23.wireSeating 280 = 101 := by decide
  have hw8972 : Seg23.wireSeating 8972 = 28964 := by decide
  have hw8977 : Seg23.wireSeating 8977 = 28969 := by decide
  have hw8982 : Seg23.wireSeating 8982 = 28974 := by decide
  have hw8987 : Seg23.wireSeating 8987 = 28979 := by decide
  have hw8992 : Seg23.wireSeating 8992 = 28984 := by decide
  apply member_of_state_spec (Seg23.localRho rho) (input1 rho) (anchor rho) h
  · simp [input1, spend1StateProofCommitment, spend1StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg23.localRho, Deployed.Templates.seated, hw1]
  · simp [input1, Seg23.localRho, Deployed.Templates.seated, hw280]
  · rfl
  · rw [spend1AnchorAsserted rho facts]
    simp [
      spend1AnchorComputed, spend1AnchorComputedLC, stateRootOutput,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg23.localRho, Deployed.Templates.seated,
      hw8972, hw8977, hw8982, hw8987, hw8992
    ]
    ring

theorem sharedAuthorizationKeyOnCurve
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    EdwardsBridge.onCurve
      ⟨authAk0 rho, authAk1 rho⟩ := by
  rcases
      NoteReshapeCanonicalAddress2x1.canonicalTransmissionFacts_of_exact rho facts with
    ⟨_, hdtk, _⟩
  rcases hdtk.1 with ⟨akFq, hak, _⟩
  exact Decaf377Assumptions.onCurve_of_compress
    ⟨authAk0 rho, authAk1 rho⟩ akFq hak

def spend0ComputedRk (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨spend0RkComputed0 rho, spend0RkComputed1 rho⟩

def spend1ComputedRk (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨spend1RkComputed0 rho, spend1RkComputed1 rho⟩

theorem spend0Rvk
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    Decaf377Assumptions.RandomizedVerificationKeySpec
      ⟨authAk0 rho, authAk1 rho⟩ (rho 94) (spend0ComputedRk rho) ∧
    EdwardsBridge.onCurve
      ⟨(spend0ComputedRk rho).x, (spend0ComputedRk rho).y⟩ := by
  have h := facts.spend0.DecafRandomizedVerificationKeySeg14
  change
    Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec
      (Seg14.localRho rho) at h
  have hw252 : Seg14.wireSeating 252 = 94 := by decide
  have hw1807 : Seg14.wireSeating 1807 = 10 := by decide
  have hw1808 : Seg14.wireSeating 1808 = 11 := by decide
  have hw1813 : Seg14.wireSeating 1813 = 18620 := by decide
  have hw1814 : Seg14.wireSeating 1814 = 18621 := by decide
  have hr := h (by
    simpa [
      authAk0, authAk0LC, authAk1, authAk1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg14.localRho, Deployed.Templates.seated, hw1807, hw1808
    ] using sharedAuthorizationKeyOnCurve rho facts)
  simpa [
    spend0ComputedRk,
    authAk0, authAk0LC, authAk1, authAk1LC,
    spend0RkComputed0, spend0RkComputed0LC,
    spend0RkComputed1, spend0RkComputed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg14.localRho, Deployed.Templates.seated,
    hw252, hw1807, hw1808, hw1813, hw1814
  ] using hr

theorem spend1Rvk
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    Decaf377Assumptions.RandomizedVerificationKeySpec
      ⟨authAk0 rho, authAk1 rho⟩ (rho 174) (spend1ComputedRk rho) ∧
    EdwardsBridge.onCurve
      ⟨(spend1ComputedRk rho).x, (spend1ComputedRk rho).y⟩ := by
  have h := facts.spend1.DecafRandomizedVerificationKeySeg25
  change
    Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec
      (Seg25.localRho rho) at h
  have hw252 : Seg25.wireSeating 252 = 174 := by decide
  have hw1807 : Seg25.wireSeating 1807 = 10 := by decide
  have hw1808 : Seg25.wireSeating 1808 = 11 := by decide
  have hw1813 : Seg25.wireSeating 1813 = 30794 := by decide
  have hw1814 : Seg25.wireSeating 1814 = 30795 := by decide
  have hr := h (by
    simpa [
      authAk0, authAk0LC, authAk1, authAk1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg25.localRho, Deployed.Templates.seated, hw1807, hw1808
    ] using sharedAuthorizationKeyOnCurve rho facts)
  simpa [
    spend1ComputedRk,
    authAk0, authAk0LC, authAk1, authAk1LC,
    spend1RkComputed0, spend1RkComputed0LC,
    spend1RkComputed1, spend1RkComputed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg25.localRho, Deployed.Templates.seated,
    hw252, hw1807, hw1808, hw1813, hw1814
  ] using hr

theorem spend0ClaimedRkCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
      (spend0RkCompressed rho) := by
  have h := facts.spend0.DecafCompressToFieldSeg16
  change
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec
      (Seg16.localRho rho) at h
  have hw1 : Seg16.wireSeating 1 = 16 := by decide
  have hw3 : Seg16.wireSeating 3 = 17 := by decide
  have hw365 : Seg16.wireSeating 365 = 18986 := by decide
  have hw705 : Seg16.wireSeating 705 = 19326 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by
    decide
  simpa [
    Decaf377Assumptions.CompressToFieldSpec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputX,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputY,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
    spend0RkClaimed0, spend0RkClaimed0LC,
    spend0RkClaimed1, spend0RkClaimed1LC,
    spend0RkCompressed, spend0RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg16.localRho, Deployed.Templates.seated,
    hw1, hw3, hw365, hw705, hneg, sub_eq_add_neg, add_comm
  ] using h

theorem spend1ClaimedRkCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
      (spend1RkCompressed rho) := by
  have h := facts.spend1.DecafCompressToFieldSeg27
  change
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec
      (Seg27.localRho rho) at h
  have hw1 : Seg27.wireSeating 1 = 96 := by decide
  have hw3 : Seg27.wireSeating 3 = 97 := by decide
  have hw365 : Seg27.wireSeating 365 = 31160 := by decide
  have hw705 : Seg27.wireSeating 705 = 31500 := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by
    decide
  simpa [
    Decaf377Assumptions.CompressToFieldSpec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputX,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputY,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
    spend1RkClaimed0, spend1RkClaimed0LC,
    spend1RkClaimed1, spend1RkClaimed1LC,
    spend1RkCompressed, spend1RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg27.localRho, Deployed.Templates.seated,
    hw1, hw3, hw365, hw705, hneg, sub_eq_add_neg, add_comm
  ] using h

theorem spend0RkCrossRatio
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      (spend0ComputedRk rho)
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  have h := facts.spend0.DecafAssertEquivalentSeg15
  change
    Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec
      (Seg15.localRho rho) at h
  have hw1 : Seg15.wireSeating 1 = 18620 := by decide
  have hw2 : Seg15.wireSeating 2 = 17 := by decide
  have hw4 : Seg15.wireSeating 4 = 16 := by decide
  have hw5 : Seg15.wireSeating 5 = 18621 := by decide
  simpa [
    Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec,
    Decaf377Assumptions.AssertEquivalentSpec, spend0ComputedRk,
    spend0RkComputed0, spend0RkComputed0LC,
    spend0RkComputed1, spend0RkComputed1LC,
    spend0RkClaimed0, spend0RkClaimed0LC,
    spend0RkClaimed1, spend0RkClaimed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg15.localRho, Deployed.Templates.seated, hw1, hw2, hw4, hw5
  ] using h

theorem spend1RkCrossRatio
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      (spend1ComputedRk rho)
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ := by
  have h := facts.spend1.DecafAssertEquivalentSeg26
  change
    Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec
      (Seg26.localRho rho) at h
  have hw1 : Seg26.wireSeating 1 = 30794 := by decide
  have hw2 : Seg26.wireSeating 2 = 97 := by decide
  have hw4 : Seg26.wireSeating 4 = 96 := by decide
  have hw5 : Seg26.wireSeating 5 = 30795 := by decide
  simpa [
    Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec,
    Decaf377Assumptions.AssertEquivalentSpec, spend1ComputedRk,
    spend1RkComputed0, spend1RkComputed0LC,
    spend1RkComputed1, spend1RkComputed1LC,
    spend1RkClaimed0, spend1RkClaimed0LC,
    spend1RkClaimed1, spend1RkClaimed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg26.localRho, Deployed.Templates.seated, hw1, hw2, hw4, hw5
  ] using h

theorem spend0RandomizedKey
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.randomizedKeyReal
      (NoteReshapeCanonicalAddress2x1.authorization rho) (input0 rho) := by
  refine ⟨spend0ComputedRk rho, ?_, ?_⟩
  · simpa [
      NoteReshapeCanonicalAddress2x1.authorization,
      NoteReshapeCanonical.toDecafPoint, input0
    ] using (spend0Rvk rho facts).1
  · exact ⟨
      (spend0Rvk rho facts).2,
      Decaf377Assumptions.onCurve_of_compress
        ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
        (spend0RkCompressed rho) (spend0ClaimedRkCompressed rho facts),
      spend0RkCrossRatio rho facts
    ⟩

theorem spend1RandomizedKey
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.randomizedKeyReal
      (NoteReshapeCanonicalAddress2x1.authorization rho) (input1 rho) := by
  refine ⟨spend1ComputedRk rho, ?_, ?_⟩
  · simpa [
      NoteReshapeCanonicalAddress2x1.authorization,
      NoteReshapeCanonical.toDecafPoint, input1
    ] using (spend1Rvk rho facts).1
  · exact ⟨
      (spend1Rvk rho facts).2,
      Decaf377Assumptions.onCurve_of_compress
        ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
        (spend1RkCompressed rho) (spend1ClaimedRkCompressed rho facts),
      spend1RkCrossRatio rho facts
    ⟩

theorem actionMembershipAndNullifiers
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    membershipAndNullifiers
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  intro input hinput
  simp only [action, List.mem_cons, List.mem_singleton] at hinput
  rcases hinput with rfl | hinput
  · simpa [NoteReshapeCanonical.primitives] using
      And.intro (spend0Member rho facts) (spend0RealNullifier rho facts)
  · rcases hinput with rfl | hinput
    · simpa [NoteReshapeCanonical.primitives] using
        And.intro (spend1Member rho facts) (spend1RealNullifier rho facts)
    · contradiction

theorem actionRandomizedKeys
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    randomizedKeys
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  intro input hinput
  simp only [action, List.mem_cons, List.mem_singleton] at hinput
  rcases hinput with rfl | hinput
  · simpa [NoteReshapeCanonical.primitives] using spend0RandomizedKey rho facts
  · rcases hinput with rfl | hinput
    · simpa [NoteReshapeCanonical.primitives] using spend1RandomizedKey rho facts
    · contradiction

theorem balanceGadgetSpec
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    (spend0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend1NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    spend0NoteCommitmentInputs1 rho + spend1NoteCommitmentInputs1 rho =
      output0NoteCommitmentInputs1 rho ∧
    NoteReshape2x1Balance.computed rho =
      Decaf377Assumptions.scalarMulLE 251
        Decaf377Assumptions.valueBlindingGenerator
        (actionBalanceBlinding rho) :=
  NoteReshape2x1Balance.gadgetSpec rho facts

theorem actionConservation
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.conservation (action rho) := by
  rcases NoteReshape2x1Conservation.facts rho facts with
    ⟨hinput0, hinput1, houtput0, hsum, hbalance⟩
  simpa [
    NoteReshapeCanonical.conservation, action, input0, input1, output0,
    Input.amount, NoteReshapeCanonical.toDecafPoint
  ] using And.intro (And.intro hinput0 hinput1)
    (And.intro houtput0 (And.intro hsum hbalance))

theorem claimedBalanceCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
      (balanceCommitmentFq rho) := by
  rcases NoteReshape2x1Conservation.facts rho facts with
    ⟨_, _, _, _, hbalance⟩
  rcases NoteReshape2x1Balance.gadgetSpec rho facts with
    ⟨_, _, _, _, hcomputed⟩
  apply Decaf377Assumptions.compress_respects_decafEquivalent
    ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
    (NoteReshape2x1Balance.computed rho)
    (balanceCommitmentFq rho)
  · rw [hcomputed]
    exact ⟨hbalance.2.1, hbalance.1, hbalance.2.2.symm⟩
  · exact NoteReshape2x1BalanceCompress.computed rho facts

theorem actionStatementBinding
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    NoteReshapeCanonical.statementBinding (action rho) := by
  refine ⟨
    balanceCommitmentFq rho,
    [spend0RkCompressed rho, spend1RkCompressed rho],
    claimedBalanceCompressed rho facts,
    ?_,
    ?_
  ⟩
  · refine List.Forall₂.cons ?_ (List.Forall₂.cons ?_ List.Forall₂.nil)
    · simpa [
        action, input0, Input.rk, NoteReshapeCanonical.toDecafPoint
      ] using spend0ClaimedRkCompressed rho facts
    · simpa [
        action, input1, Input.rk, NoteReshapeCanonical.toDecafPoint
      ] using spend1ClaimedRkCompressed rho facts
  · simpa [
      action, input0, input1, output0,
      NoteReshapeCanonical.statementFields,
      NoteReshapeCanonical.inputStatementFields,
      output0NoteCommitmentAsserted rho facts,
      spend0NullifierAsserted rho facts,
      spend1NullifierAsserted rho facts
    ] using NoteReshape2x1Statement.claimedHash rho facts

theorem semanticCircuitFacts
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop)
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    Protocol.NoteReshape.CircuitFacts
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  exact {
    shape := actionShape rho
    padding := actionPadding rho
    canonicalAddress := actionCanonicalAddress rho facts
    inputsBound :=
      actionInputCommitments rho facts
        signatureVerifies nullifierFresh transitionAccepted
    membership :=
      actionMembershipAndNullifiers rho facts
        signatureVerifies nullifierFresh transitionAccepted
    authorizationKeys :=
      actionRandomizedKeys rho facts
        signatureVerifies nullifierFresh transitionAccepted
    outputsBound :=
      actionOutputCommitments rho facts
        signatureVerifies nullifierFresh transitionAccepted
    valueConserved := actionConservation rho facts
    statementBound := actionStatementBinding rho facts
  }

theorem deployedRelation_to_circuitFacts
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop)
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.NoteReshape.CircuitFacts
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) :=
  semanticCircuitFacts
    signatureVerifies nullifierFresh transitionAccepted rho
    (note_reshape2x1_circuitFacts rho h)

theorem valid_of_deployedRelation
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop)
    (rho : Nat → DeployedF)
    (h : relationAll rho)
    (signatures :
      ExternalSignatureFacts
        (NoteReshapeCanonical.primitives
          signatureVerifies nullifierFresh transitionAccepted)
        (action rho))
    (state :
      StatePreconditions
        (NoteReshapeCanonical.primitives
          signatureVerifies nullifierFresh transitionAccepted)
        (action rho)) :
    Valid
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) :=
  Protocol.NoteReshape.valid_of_circuitFacts
    (NoteReshapeCanonical.primitives
      signatureVerifies nullifierFresh transitionAccepted)
    (action rho)
    (deployedRelation_to_circuitFacts
      signatureVerifies nullifierFresh transitionAccepted rho h)
    signatures state

end C

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1Refinement

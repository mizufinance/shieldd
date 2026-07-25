import Ipp.Extracted.ArkworksMultiMillerLineProduct

/-! One opaque-value invariant step for the doubling-line pass. -/

namespace Ipp.Extracted.ArkworksMultiMillerLineStep

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerLineModel
open Ipp.Extracted.ArkworksMultiMillerLineExecution
open Ipp.Extracted.ArkworksMultiMillerLineSemantics
open Ipp.Extracted.ArkworksMultiMillerLineProduct

set_option maxHeartbeats 1000000

private theorem updateAt_eq_set {T : Type} (items : List T)
    (index : Nat) (value : T) :
    ark_ip_proofs.alloc.vec.Vec.updateAt items index value =
      items.set index value := by
  induction items generalizing index with
  | nil => simp [ark_ip_proofs.alloc.vec.Vec.updateAt]
  | cons item items ih =>
      cases index <;> simp [ark_ip_proofs.alloc.vec.Vec.updateAt, ih]

/-- One successful active doubling-line body preserves the exact pass invariant. -/
theorem doubling_line_step
    (filtered : List ExecPair) (chunkStart width cursor processed : Nat)
    (baseValues : List Ipp.Bls12377.Fq12Model)
    (cursors nextCursors : alloc.vec.Vec Usize)
    (f nextF : ArkworksMultiMillerModel.Fq12Limb)
    (nextProcessed : Usize)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hcursor : cursor < 69)
    (hbaseLength : baseValues.length = width)
    (hinv : LinePassInv filtered chunkStart width cursor baseValues processed
      cursors f)
    (hactive : processed < width)
    (hbody :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop0.body
        ⟨filtered⟩ ⟨chunkStart⟩ cursors f ⟨processed⟩ =
          .ok (.cont (nextCursors, nextF, nextProcessed))) :
    nextProcessed = ⟨processed + 1⟩ ∧
      LinePassInv filtered chunkStart width cursor baseValues (processed + 1)
        nextCursors nextF := by
  have hprocessedBound := hinv.processedBound
  have hcursorsState := hinv.cursorsState
  have hfCanonical := hinv.canonical
  have haccumulator := hinv.accumulator
  generalize hcurrentValue :
    decodeFq12 f = currentValue at haccumulator
  have hwitness := line_body_witness filtered chunkStart width cursor processed
    cursors f (.cont (nextCursors, nextF, nextProcessed)) hvalid hchunk
    hcursor hactive hcursorsState hbody
  clear hinv
  cases hwitness with
  | intro pair coeff c0 c1 c2 witnessF pairGet coeffGet pairValid lineExec flowEq =>
      have hflowState := ControlFlow.cont.inj flowEq
      have hnextCursors :
          nextCursors =
            ⟨cursors.val.set processed ⟨cursor + 1⟩⟩ :=
        by
          simpa only [updateAt_eq_set, Usize.ofNat_val] using
            congrArg Prod.fst hflowState
      have hnextF : nextF = witnessF :=
        congrArg (fun state => state.2.1) hflowState
      have hnextProcessed : nextProcessed = ⟨processed + 1⟩ :=
        congrArg (fun state => state.2.2) hflowState
      have hcoeffCanonical :
          Ipp.Extracted.ArkworksEll.CanonicalEllCoeff coeff :=
        validPair_coeffs pairValid coeff (List.mem_of_getElem? coeffGet)
      have hpCanonical := validPair_g1 pairValid
      clear pairValid
      obtain ⟨nextValue, hlineValue⟩ :
          ∃ value : Ipp.Bls12377.Fq12Model,
            decodeFq12 witnessF = value := ⟨_, rfl⟩
      have hsemantics := line_semantics f coeff pair.2 c0 c1 c2 witnessF
        currentValue nextValue hcurrentValue hlineValue hfCanonical
        hcoeffCanonical hpCanonical lineExec
      refine ⟨hnextProcessed, by
        refine ⟨by omega, ?_, ?_, ?_⟩
        · rw [hnextCursors, hcursorsState,
            cursorState_set width cursor processed hactive]
        · rw [hnextF]
          exact hsemantics.1
        · rw [hnextF, hlineValue]
          exact advance_line_product filtered chunkStart width cursor processed
            baseValues currentValue nextValue pair coeff hactive hbaseLength
            pairGet coeffGet haccumulator hsemantics.2⟩

end Ipp.Extracted.ArkworksMultiMillerLineStep

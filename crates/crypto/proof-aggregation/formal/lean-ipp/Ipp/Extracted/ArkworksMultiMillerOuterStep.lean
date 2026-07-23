import Ipp.Extracted.ArkworksMultiMillerOuterInvariant

/-! One verified four-pair step of the outer chunk loop. -/

namespace Ipp.Extracted.ArkworksMultiMillerOuterStep

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerCursors
open Ipp.Extracted.ArkworksMultiMillerChunkModel
open Ipp.Extracted.ArkworksMultiMillerChunkLoop
open Ipp.Extracted.ArkworksMultiMillerMul
open Ipp.Extracted.ArkworksMultiMillerOuterInvariant

def nextChunk (filtered : List ExecPair) (start : Nat) : Nat :=
  min (start + 4) filtered.length

theorem nextChunk_le (filtered : List ExecPair) (start : Nat) :
    nextChunk filtered start ≤ filtered.length := by
  simp [nextChunk]

theorem nextChunk_gt (filtered : List ExecPair) (start : Nat)
    (hactive : start < filtered.length) :
    start < nextChunk filtered start := by
  unfold nextChunk
  by_cases hleft : start + 4 ≤ filtered.length
  · rw [Nat.min_eq_left hleft]
    omega
  · rw [Nat.min_eq_right (by omega)]
    exact hactive

set_option maxHeartbeats 1000000

/-- One successful active outer body appends exactly one contiguous chunk. -/
theorem outerLoopInv_step
    (filtered : List ExecPair) (start : Nat)
    (result : ArkworksMultiMillerModel.Fq12Limb)
    (flow : ControlFlow
      (ArkworksMultiMillerModel.Fq12Limb × Usize)
      ArkworksMultiMillerModel.Fq12Limb)
    (hvalid : ValidExecPairs filtered)
    (hactive : start < filtered.length)
    (hinv : OuterLoopInv filtered start result)
    (hbody :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1.body
        ⟨filtered⟩ result ⟨start⟩ = .ok flow) :
    ∃ nextResult,
      flow = .cont (nextResult, ⟨nextChunk filtered start⟩) ∧
      OuterLoopInv filtered (nextChunk filtered start) nextResult := by
  have hcurrentDecode := hinv.accumulator
  generalize hcurrentValue :
    decodeFq12 result = currentValue at hcurrentDecode
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1.body
    at hbody
  rw [if_pos (show (⟨start⟩ : Usize) <
    Aeneas.Std.alloc.vec.Vec.len ⟨filtered⟩ by
      simpa [Aeneas.Std.alloc.vec.Vec.len] using hactive)] at hbody
  simp only [Aeneas.Std.add_eq, Result.bind_ok] at hbody
  have hbodyNormalized :
      (do
        let cursors ←
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop0
            ⟨nextChunk filtered start⟩ Aeneas.Std.alloc.vec.Vec.new ⟨start⟩
        let chunkResult ←
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1
            ⟨filtered⟩ ⟨start⟩ cursors
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE 63#usize
        let nextResult ←
          ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul result chunkResult
        Result.ok (ControlFlow.cont
          (nextResult, ⟨nextChunk filtered start⟩))) = Result.ok flow := by
    by_cases hcap : start + 4 > filtered.length
    · rw [if_pos (by
        simpa [Aeneas.Std.alloc.vec.Vec.len] using hcap)]
        at hbody
      have hmin : nextChunk filtered start = filtered.length := by
        unfold nextChunk
        exact Nat.min_eq_right (by omega)
      simpa [Aeneas.Std.alloc.vec.Vec.len, hmin] using hbody
    · rw [if_neg (by
        simpa [Aeneas.Std.alloc.vec.Vec.len] using hcap)]
        at hbody
      have hmin : nextChunk filtered start = start + 4 := by
        unfold nextChunk
        exact Nat.min_eq_left (by omega)
      simpa [hmin] using hbody
  cases hcursors :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop0
        ⟨nextChunk filtered start⟩ Aeneas.Std.alloc.vec.Vec.new ⟨start⟩ with
  | fail error =>
      rw [hcursors] at hbodyNormalized
      cases hbodyNormalized
  | div =>
      rw [hcursors] at hbodyNormalized
      cases hbodyNormalized
  | ok cursors =>
      rw [hcursors] at hbodyNormalized
      simp only [Result.bind_ok] at hbodyNormalized
      cases hchunk :
          ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1
            ⟨filtered⟩ ⟨start⟩ cursors
            ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE 63#usize with
      | fail error =>
          rw [hchunk] at hbodyNormalized
          cases hbodyNormalized
      | div =>
          rw [hchunk] at hbodyNormalized
          cases hbodyNormalized
      | ok chunkResult =>
          rw [hchunk] at hbodyNormalized
          simp only [Result.bind_ok] at hbodyNormalized
          cases hmul :
              ark_ip_proofs.s3_07_arkworks_fq_spike.fq12_mul
                result chunkResult with
          | fail error =>
              rw [hmul] at hbodyNormalized
              cases hbodyNormalized
          | div =>
              rw [hmul] at hbodyNormalized
              cases hbodyNormalized
          | ok nextResult =>
              rw [hmul] at hbodyNormalized
              simp only [Result.bind_ok, Result.ok.injEq] at hbodyNormalized
              subst flow
              have hnextLe := nextChunk_le filtered start
              have hnextGt := nextChunk_gt filtered start hactive
              have hcursorsState := init_cursors_spec start
                (nextChunk filtered start) cursors (by omega) hcursors
              have hchunkBound :
                  start + (nextChunk filtered start - start) ≤
                    filtered.length := by omega
              have hchunkSpec := chunk_schedule_spec filtered start
                (nextChunk filtered start - start) cursors chunkResult hvalid
                hchunkBound hcursorsState hchunk
              have hchunkDecode := hchunkSpec.2
              rw [chunkPrefixValues_complete filtered start
                (nextChunk filtered start - start) hchunkBound] at hchunkDecode
              obtain ⟨chunkValue, hchunkValue⟩ :
                  ∃ value : Ipp.Bls12377.Fq12Model,
                    decodeFq12 chunkResult = value := ⟨_, rfl⟩
              obtain ⟨nextValue, hnextValue⟩ :
                  ∃ value : Ipp.Bls12377.Fq12Model,
                    decodeFq12 nextResult = value := ⟨_, rfl⟩
              have hmulSemantics := mul_semantics result chunkResult nextResult
                currentValue chunkValue nextValue hcurrentValue hchunkValue
                hnextValue hinv.canonical hchunkSpec.1 hmul
              refine ⟨nextResult, rfl,
                ⟨hnextLe, hmulSemantics.1, ?_⟩⟩
              rw [hnextValue, hmulSemantics.2, hcurrentDecode, ← hchunkValue,
                hchunkDecode, completedValues_advance filtered start
                  (nextChunk filtered start) (by omega)]
              exact (fq12Prod_append _ _).symm

end Ipp.Extracted.ArkworksMultiMillerOuterStep

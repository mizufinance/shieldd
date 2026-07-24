import Ipp.Extracted.ArkworksMsmModel
import Ipp.Extracted.ArkworksScalarMulG1Loop

/-! Executed G1 reverse bucket-fold refinement. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMul

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

/-- The generated reverse G1 bucket loop realizes `reverseRunningFrom`. -/
theorem valid_g1_reverse_bucket_fold
    (buckets : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (bucketPoints : List G1AffinePoint)
    (hlen : bucketPoints.length = buckets.val.length)
    (hbuckets : ∀ index (hindex : index < buckets.val.length),
      ValidG1LoopState buckets.val[index]
        (bucketPoints.get ⟨index, by simpa [hlen] using hindex⟩))
    (running result output :
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (runningPoint resultPoint : G1AffinePoint)
    (hrunning : ValidG1LoopState running runningPoint)
    (hresult : ValidG1LoopState result resultPoint)
    (bucket : Usize) (hbound : bucket.val ≤ buckets.val.length)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop1
        buckets running result bucket = .ok output) :
    ValidG1LoopState output
      (reverseRunningFrom (bucketPoints.take bucket.val)
        runningPoint resultPoint).2 := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop1
    at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let loopBody := fun state :
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont ×
        ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont × Usize =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop1.body
      buckets state.1 state.2.1 state.2.2
  change LoopResult loopBody (running, result, bucket) (.ok output) at hrun
  have go : ∀ {state final},
      LoopResult loopBody state final →
      ∀ (runningPoint resultPoint : G1AffinePoint),
        ValidG1LoopState state.1 runningPoint →
        ValidG1LoopState state.2.1 resultPoint →
        state.2.2.val ≤ buckets.val.length →
        ∀ out, final = .ok out →
          ValidG1LoopState out
            (reverseRunningFrom (bucketPoints.take state.2.2.val)
              runningPoint resultPoint).2 := by
    intro state final run
    induction run with
    | done hbody =>
        rename_i state finalValue
        rcases state with ⟨currentRunning, currentResult, currentBucket⟩
        intro currentRunningPoint currentResultPoint _ hcurrentResult _ out hfinal
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop1.body]
          at hbody
        by_cases hpos : currentBucket.val > 0
        · rw [if_pos (show currentBucket > 0#usize by exact hpos)] at hbody
          obtain ⟨nextBucket, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨bucketValue, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨nextRunning, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨nextResult, _, hbody⟩ := bind_eq_ok hbody
          simp at hbody
        · have hzero : currentBucket.val = 0 := by omega
          rw [if_neg (show ¬currentBucket > 0#usize by exact hpos)] at hbody
          simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
          cases hbody
          cases hfinal
          simpa [hzero, reverseRunningFrom] using hcurrentResult
    | next hbody hnext ih =>
        rename_i state nextState nextFinal
        rcases state with ⟨currentRunning, currentResult, currentBucket⟩
        intro currentRunningPoint currentResultPoint hcurrentRunning hcurrentResult
          hcurrentBound out hfinal
        have hpos : currentBucket.val > 0 := by
          by_contra hnot
          simp only [loopBody,
            ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop1.body]
            at hbody
          rw [if_neg (show ¬currentBucket > 0#usize by exact hnot)] at hbody
          simp at hbody
        simp only [loopBody,
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop1.body]
          at hbody
        rw [if_pos (show currentBucket > 0#usize by exact hpos)] at hbody
        obtain ⟨nextBucket, hsub, hbody⟩ := bind_eq_ok hbody
        obtain ⟨bucketValue, hindexExec, hbody⟩ := bind_eq_ok hbody
        obtain ⟨nextRunning, haddRunning, hbody⟩ := bind_eq_ok hbody
        obtain ⟨nextResultValue, haddResult, hreturn⟩ := bind_eq_ok hbody
        simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hreturn
        cases hreturn
        have hnextBucket : nextBucket.val = currentBucket.val - 1 := by
          rw [MacCampaign.sub_eq currentBucket 1#usize (by simp; omega)] at hsub
          cases hsub
          rfl
        change currentBucket.val ≤ buckets.val.length at hcurrentBound
        have hnextBound : nextBucket.val ≤ buckets.val.length := by omega
        have hindex : nextBucket.val < buckets.val.length := by omega
        have hbucketValue : bucketValue = buckets.val[nextBucket.val] := by
          have hreverse : buckets.val[nextBucket.val] = bucketValue := by
            simpa [alloc.vec.Vec.index, hindex] using hindexExec
          exact hreverse.symm
        subst bucketValue
        let bucketPoint : G1AffinePoint :=
          bucketPoints.get ⟨nextBucket.val, by simpa [hlen] using hindex⟩
        have hbucketValid :
            ValidG1LoopState buckets.val[nextBucket.val] bucketPoint :=
          hbuckets nextBucket.val hindex
        have hnextRunningValid :
            ValidG1LoopState nextRunning (currentRunningPoint + bucketPoint) :=
          valid_g1_add currentRunning buckets.val[nextBucket.val] nextRunning
            currentRunningPoint bucketPoint hcurrentRunning hbucketValid haddRunning
        have hnextResultValid :
            ValidG1LoopState nextResultValue
              (currentResultPoint + (currentRunningPoint + bucketPoint)) :=
          valid_g1_add currentResult nextRunning nextResultValue
            currentResultPoint (currentRunningPoint + bucketPoint) hcurrentResult
            hnextRunningValid haddResult
        have hsemantic := ih (currentRunningPoint + bucketPoint)
          (currentResultPoint + (currentRunningPoint + bucketPoint))
          hnextRunningValid hnextResultValid hnextBound out hfinal
        have htake :
            bucketPoints.take currentBucket.val =
              bucketPoints.take nextBucket.val ++ [bucketPoint] := by
          have htake' := List.take_concat_get' bucketPoints nextBucket.val
            (by simpa [hlen] using hindex)
          have hsucc : currentBucket.val = nextBucket.val + 1 := by omega
          simpa [bucketPoint, hsucc] using htake'.symm
        change ValidG1LoopState out
          (reverseRunningFrom (bucketPoints.take currentBucket.val)
            currentRunningPoint currentResultPoint).2
        rw [htake, reverseRunningFrom_append]
        exact hsemantic
    | fail hbody =>
        intro _ _ _ _ _ out hfinal
        simp at hfinal
    | div hbody =>
        intro _ _ _ _ _ out hfinal
        simp at hfinal
  exact go hrun runningPoint resultPoint hrunning hresult hbound output rfl

/-- Zero-initialized generated G1 reverse folding returns the generic fold value. -/
theorem valid_g1_reverse_bucket_fold_zero
    (buckets : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (bucketPoints : List G1AffinePoint)
    (hlen : bucketPoints.length = buckets.val.length)
    (hbuckets : ∀ index (hindex : index < buckets.val.length),
      ValidG1LoopState buckets.val[index]
        (bucketPoints.get ⟨index, by simpa [hlen] using hindex⟩))
    (zero output : ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (hzero : ValidG1LoopState zero 0)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop1
        buckets zero zero (Usize.ofNat buckets.val.length) = .ok output) :
    ValidG1LoopState output (reverseRunningFold bucketPoints).2 := by
  have hvalid := valid_g1_reverse_bucket_fold buckets bucketPoints hlen hbuckets
    zero zero output 0 0 hzero hzero (Usize.ofNat buckets.val.length)
    (by simp) hexec
  have htake : bucketPoints.take buckets.val.length = bucketPoints := by
    rw [← hlen]
    exact List.take_length
  simp only [Usize.ofNat_val] at hvalid
  rw [htake, reverseRunningFrom_zero] at hvalid
  exact hvalid

#print axioms valid_g1_reverse_bucket_fold
#print axioms valid_g1_reverse_bucket_fold_zero

end Ipp.Extracted.ArkworksMsm

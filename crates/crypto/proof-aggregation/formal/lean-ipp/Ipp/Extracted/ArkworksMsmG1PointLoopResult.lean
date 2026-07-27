import Ipp.Extracted.ArkworksMsmG1PointLoop

/-! Finite-execution refinement of G1 point-to-bucket accumulation. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result ControlFlow
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

/-- The generated G1 point loop realizes `processBuckets` on the remaining pairs. -/
theorem valid_g1_process_buckets
    (bases : Slice ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (size digitsCount : Usize)
    (allDigits : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.WnafDigit)
    (window : Usize)
    (buckets : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (point : Usize)
    (pairs : List (WnafDigit × G1AffinePoint))
    (bucketCount : Nat)
    (bucketPoints : Buckets (G := G1AffinePoint) bucketCount)
    (hpairsLength : pairs.length = size.val)
    (hpoint : point.val ≤ size.val)
    (hwindow : window.val < digitsCount.val)
    (hallDigits : size.val * digitsCount.val ≤ allDigits.val.length)
    (hbaseLength : size.val ≤ bases.val.length)
    (hdigits : ∀ index (hindex : index < size.val),
      allDigits.val[index * digitsCount.val + window.val]'(by
        calc
          index * digitsCount.val + window.val <
              index * digitsCount.val + digitsCount.val :=
            Nat.add_lt_add_left hwindow _
          _ = (index + 1) * digitsCount.val := by
            simp [Nat.add_mul]
          _ ≤ size.val * digitsCount.val :=
            Nat.mul_le_mul_right digitsCount.val (by omega)
          _ ≤ allDigits.val.length := hallDigits) =
        (pairs.get ⟨index, by simpa [hpairsLength] using hindex⟩).1)
    (hbases : ∀ index (hindex : index < size.val),
      ValidG1AffineLoopBase bases.val[index]
        (pairs.get ⟨index, by simpa [hpairsLength] using hindex⟩).2)
    (hmagnitudes : ∀ pair ∈ pairs,
      pair.1.magnitude.val ≤ bucketCount)
    (hbucketLength : buckets.val.length = bucketCount)
    (hbuckets : ∀ index (hindex : index < bucketCount)
        (hraw : index < buckets.val.length),
      ValidG1LoopState buckets.val[index]
        (bucketPoints ⟨index, hindex⟩))
    (output : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop0
        bases size digitsCount allDigits window buckets point = .ok output) :
    output.val.length = bucketCount ∧
      ∀ index (hindex : index < bucketCount)
          (hraw : index < output.val.length),
        ValidG1LoopState output.val[index]
          (processBuckets (pairs.drop point.val) bucketPoints
            ⟨index, hindex⟩) := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop0
    at hexec
  have hrun := Aeneas.loopResult_of_eq (by simp) hexec
  let loopBody := fun state :
      alloc.vec.Vec
          ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont × Usize =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop0.body
      bases size digitsCount allDigits window state.1 state.2
  change LoopResult loopBody (buckets, point) (.ok output) at hrun
  have go : ∀ {state final},
      LoopResult loopBody state final →
      ∀ (currentModel : Buckets (G := G1AffinePoint) bucketCount),
        state.1.val.length = bucketCount →
        (∀ index (hindex : index < bucketCount)
            (hraw : index < state.1.val.length),
          ValidG1LoopState state.1.val[index]
            (currentModel ⟨index, hindex⟩)) →
        state.2.val ≤ size.val →
        ∀ out, final = .ok out →
          out.val.length = bucketCount ∧
            ∀ index (hindex : index < bucketCount)
                (hraw : index < out.val.length),
              ValidG1LoopState out.val[index]
                (processBuckets (pairs.drop state.2.val) currentModel
                  ⟨index, hindex⟩) := by
    intro state final run
    induction run with
    | done hbody =>
        rename_i state finalBuckets
        rcases state with ⟨currentBuckets, currentPoint⟩
        intro currentModel hcurrentLength hcurrentValid hcurrentPoint
          out hfinal
        change currentPoint.val ≤ size.val at hcurrentPoint
        have hdone : ¬currentPoint < size := by
          intro hlt
          simp only [loopBody] at hbody
          unfold
            ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop0.body
            at hbody
          rw [if_pos hlt] at hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
          split at hbody
          · obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
            obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
            split at hbody
            · obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
              obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
              obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
              obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
              obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
              simp at hbody
            · obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
              obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
              obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
              obtain ⟨_, _, hbody⟩ := bind_eq_ok hbody
              simp at hbody
          · simp at hbody
        have hpointEq : currentPoint.val = size.val := by
          change ¬currentPoint.val < size.val at hdone
          omega
        simp only [loopBody] at hbody
        unfold
          ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop0.body
          at hbody
        rw [if_neg hdone] at hbody
        simp only [Result.ok.injEq, ControlFlow.done.injEq] at hbody
        cases hbody
        cases hfinal
        have hdrop : pairs.drop currentPoint.val = [] := by
          rw [hpointEq, ← hpairsLength, List.drop_length]
        refine ⟨hcurrentLength, ?_⟩
        intro index hindex hraw
        simpa [hdrop, processBuckets] using
          hcurrentValid index hindex hraw
    | next hbody hnext ih =>
        rename_i state nextState nextFinal
        rcases state with ⟨currentBuckets, currentPoint⟩
        rcases nextState with ⟨nextBuckets, nextPoint⟩
        intro currentModel hcurrentLength hcurrentValid hcurrentPoint
          out hfinal
        change currentPoint.val ≤ size.val at hcurrentPoint
        have hstepPoint : currentPoint.val < size.val := by
          by_contra hnot
          have hnot' : ¬currentPoint < size := hnot
          simp only [loopBody] at hbody
          unfold
            ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1_loop0.body
            at hbody
          rw [if_neg hnot'] at hbody
          simp at hbody
        have hdigitIndex :
            currentPoint.val * digitsCount.val + window.val <
              allDigits.val.length := by
          calc
            currentPoint.val * digitsCount.val + window.val <
                currentPoint.val * digitsCount.val + digitsCount.val :=
              Nat.add_lt_add_left hwindow _
            _ = (currentPoint.val + 1) * digitsCount.val := by
              simp [Nat.add_mul]
            _ ≤ size.val * digitsCount.val :=
              Nat.mul_le_mul_right digitsCount.val (by omega)
            _ ≤ allDigits.val.length := hallDigits
        have hbaseIndex : currentPoint.val < bases.val.length := by
          omega
        have hpairIndex : currentPoint.val < pairs.length := by
          simpa [hpairsLength] using hstepPoint
        let pair : WnafDigit × G1AffinePoint :=
          pairs.get ⟨currentPoint.val, hpairIndex⟩
        have hpairMagnitude : pair.1.magnitude.val ≤ bucketCount :=
          hmagnitudes pair (List.get_mem pairs ⟨currentPoint.val, hpairIndex⟩)
        have hstep := valid_g1_point_body_step
          bases size digitsCount allDigits window currentBuckets currentPoint
          pair.1 pair.2 bucketCount currentModel hcurrentLength hstepPoint
          hdigitIndex (by
            simpa [pair] using hdigits currentPoint.val hstepPoint)
          hbaseIndex (by
            simpa [pair] using hbases currentPoint.val hstepPoint)
          hpairMagnitude hcurrentValid nextBuckets nextPoint hbody
        rcases hstep with ⟨hnextPoint, hnextLength, hnextValid⟩
        have hnextBound : nextPoint.val ≤ size.val := by
          omega
        have hsemantic := ih
          (updateBucket currentModel pair.1 pair.2)
          hnextLength hnextValid hnextBound out hfinal
        have hdrop := List.drop_eq_getElem_cons hpairIndex
        rw [hdrop, processBuckets]
        simpa [pair, hnextPoint] using hsemantic
    | fail hbody =>
        intro _ _ _ _ out hfinal
        simp at hfinal
    | div hbody =>
        intro _ _ _ _ out hfinal
        simp at hfinal
  exact go hrun bucketPoints hbucketLength hbuckets hpoint output rfl

#print axioms valid_g1_process_buckets

end Ipp.Extracted.ArkworksMsm

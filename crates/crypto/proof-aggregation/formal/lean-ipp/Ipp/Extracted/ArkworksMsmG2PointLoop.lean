import Ipp.Extracted.ArkworksMsmG2PointNeg

/-! One-step refinement of executed G2 point-to-bucket accumulation. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMul

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

local instance : Ipp.Bls12377.g2Curve.IsElliptic :=
  Ipp.Bls12377.g2_isElliptic

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

private theorem u64_eq_of_val_eq {left right : MacCampaign.U64}
    (hval : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

/-- One generated G2 point-body transition realizes one generic bucket update. -/
theorem valid_g2_point_body_step
    (bases : Slice ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (size digitsCount : Usize)
    (allDigits : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.WnafDigit)
    (window : Usize)
    (buckets : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (point : Usize)
    (digit : WnafDigit) (basePoint : G2AffinePoint)
    (bucketCount : Nat)
    (bucketPoints : Buckets (G := G2AffinePoint) bucketCount)
    (hbucketLength : buckets.val.length = bucketCount)
    (hpoint : point.val < size.val)
    (hdigitIndex :
      point.val * digitsCount.val + window.val < allDigits.val.length)
    (hdigit : allDigits.val[
      point.val * digitsCount.val + window.val] = digit)
    (hbaseIndex : point.val < bases.val.length)
    (hbase : ValidG2AffineLoopBase bases.val[point.val] basePoint)
    (hmagnitude : digit.magnitude.val ≤ bucketCount)
    (hbuckets : ∀ index (hindex : index < bucketCount)
        (hraw : index < buckets.val.length),
      ValidG2LoopState buckets.val[index]
        (bucketPoints ⟨index, hindex⟩))
    (nextBuckets : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (nextPoint : Usize)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop1_loop0.body
        bases size digitsCount allDigits window buckets point =
          .ok (.cont (nextBuckets, nextPoint))) :
    nextPoint.val = point.val + 1 ∧
      nextBuckets.val.length = bucketCount ∧
      ∀ index (hindex : index < bucketCount)
          (hnext : index < nextBuckets.val.length),
        ValidG2LoopState nextBuckets.val[index]
          (updateBucket bucketPoints digit basePoint ⟨index, hindex⟩) := by
  have hdigitGet :
      allDigits.val[point.val * digitsCount.val + window.val]? =
        some digit := by
    rw [List.getElem?_eq_getElem hdigitIndex, hdigit]
  have hbaseGet : bases.val[point.val]? = some bases.val[point.val] :=
    List.getElem?_eq_getElem hbaseIndex
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop1_loop0.body
    at hexec
  rw [if_pos (show point < size by exact hpoint)] at hexec
  simp only [MacCampaign.mul_eq, Result.bind_ok, Aeneas.Std.add_eq,
    alloc.vec.Vec.index, hdigitGet] at hexec
  by_cases hzero : digit.magnitude.val = 0
  · have hdigitZero : digit.magnitude = 0#u64 :=
      u64_eq_of_val_eq (by simpa using hzero)
    simp [hdigitZero] at hexec
    rcases hexec with ⟨rfl, rfl⟩
    refine ⟨rfl, hbucketLength, ?_⟩
    intro index hindex _
    have hraw : index < buckets.val.length := by
      simpa [hbucketLength] using hindex
    simpa [updateBucket, hzero] using hbuckets index hindex hraw
  · have hdigitNonzero : digit.magnitude ≠ 0#u64 := by
      intro heq
      apply hzero
      exact congrArg MacCampaign.U64.val heq
    have hdigitNonzeroBool : (digit.magnitude != 0#u64) = true := by
      simp [hdigitNonzero]
    rw [if_pos hdigitNonzeroBool] at hexec
    have hone : (1#u64).val ≤ digit.magnitude.val := by
      change 1 ≤ digit.magnitude.val
      omega
    let selected : Nat := digit.magnitude.val - 1
    have hselectedWord : selected < MacCampaign.u64Base := by
      dsimp [selected]
      exact Nat.lt_of_le_of_lt (Nat.sub_le _ _) digit.magnitude.isLt
    have honeWord : 1 % MacCampaign.u64Base = 1 := by
      apply Nat.mod_eq_of_lt
      norm_num [MacCampaign.u64Base]
    have hsubExec :
        (digit.magnitude - 1#u64 : Result MacCampaign.U64) =
          .ok (MacCampaign.U64.ofNat selected) := by
      change MacCampaign.sub64 digit.magnitude 1#u64 =
        .ok (MacCampaign.U64.ofNat selected)
      unfold MacCampaign.sub64
      rw [dif_pos hone]
      congr 1
      apply u64_eq_of_val_eq
      simp [selected, MacCampaign.U64.ofNat, honeWord,
        Nat.mod_eq_of_lt hselectedWord]
    rw [hsubExec] at hexec
    simp [Aeneas.lift, MacCampaign.u64ToUsize,
      MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hselectedWord] at hexec
    have hselected : selected < bucketCount := by
      dsimp [selected]
      omega
    have hselectedRaw : selected < buckets.val.length := by
      simpa [hbucketLength] using hselected
    have hbucketGet :
        buckets.val[selected]? = some buckets.val[selected] :=
      List.getElem?_eq_getElem hselectedRaw
    have hsigned :
        ∃ signedBaseRaw :
            ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont,
          ValidG2AffineLoopBase signedBaseRaw
              (signedBase digit basePoint) ∧
          (do
            let gpm ←
              alloc.vec.Vec.index
                (core.slice.index.SliceIndexUsizeSlice
                  ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
                buckets (Usize.ofNat selected)
            let gpm1 ←
              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed
                gpm signedBaseRaw
            let (_, setBack) ←
              alloc.vec.Vec.index_mut
                (core.slice.index.SliceIndexUsizeSlice
                  ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
                buckets (Usize.ofNat selected)
            ok (cont (setBack gpm1, Usize.ofNat (point.val + 1)))) =
              (ok (cont (nextBuckets, nextPoint)) :
                Result (ControlFlow
                  (alloc.vec.Vec
                    ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont × Usize)
                  (alloc.vec.Vec
                    ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont))) := by
      cases hnegative : digit.negative with
      | false =>
          refine ⟨bases.val[point.val], ?_, ?_⟩
          · simpa [signedBase, hnegative] using hbase
          · simpa [hnegative, Slice.index_usize, hbaseGet] using hexec
      | true =>
          cases hnegExec :
              ark_ip_proofs.s3_07_arkworks_fq_spike.g2_affine_neg
                bases.val[point.val] with
          | fail error =>
              simp [hnegative, Slice.index_usize, hbaseGet, hnegExec] at hexec
          | div =>
              simp [hnegative, Slice.index_usize, hbaseGet, hnegExec] at hexec
          | ok negBase =>
              refine ⟨negBase, ?_, ?_⟩
              · simpa [signedBase, hnegative] using
                  valid_g2_affine_neg bases.val[point.val] negBase
                    basePoint hbase hnegExec
              · simpa [hnegative, Slice.index_usize, hbaseGet, hnegExec] using
                  hexec
    obtain ⟨signedBaseRaw, hsignedValid, hexec⟩ := hsigned
    have hbucketExec :
        alloc.vec.Vec.index
          (core.slice.index.SliceIndexUsizeSlice
            ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
          buckets (Usize.ofNat selected) =
            .ok buckets.val[selected] := by
      simp [alloc.vec.Vec.index, hbucketGet]
    rw [hbucketExec] at hexec
    simp only [Result.bind_ok] at hexec
    obtain ⟨sumRaw, hadd, hexec⟩ := bind_eq_ok hexec
    have hsetExec :
        alloc.vec.Vec.index_mut
          (core.slice.index.SliceIndexUsizeSlice
            ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
          buckets (Usize.ofNat selected) =
            .ok (buckets.val[selected],
              fun replacement => ⟨buckets.val.set selected replacement⟩) := by
      simp [alloc.vec.Vec.index_mut, hbucketGet]
    rw [hsetExec] at hexec
    simp only [Result.bind_ok, Aeneas.Std.add_eq, Result.ok.injEq,
      ControlFlow.cont.injEq, Prod.mk.injEq] at hexec
    rcases hexec with ⟨rfl, rfl⟩
    have hsumValid :
        ValidG2LoopState sumRaw
          (bucketPoints ⟨selected, hselected⟩ +
            signedBase digit basePoint) :=
      valid_g2_add_mixed buckets.val[selected] sumRaw signedBaseRaw
        (bucketPoints ⟨selected, hselected⟩)
        (signedBase digit basePoint)
        (hbuckets selected hselected hselectedRaw) hsignedValid hadd
    refine ⟨rfl, by simpa [hbucketLength], ?_⟩
    intro index hindexOld hindex
    have hindexRaw : index < buckets.val.length := by
      simpa [hbucketLength] using hindexOld
    let selectedFin : Fin bucketCount := ⟨selected, hselected⟩
    let indexFin : Fin bucketCount := ⟨index, hindexOld⟩
    rw [updateBucket, dif_neg hzero, dif_pos hmagnitude]
    change ValidG2LoopState
      (buckets.val.set selected sumRaw)[index]
      (Function.update bucketPoints selectedFin
        (bucketPoints selectedFin + signedBase digit basePoint) indexFin)
    by_cases heq : selected = index
    · subst index
      simpa [selectedFin, indexFin] using hsumValid
    · have hfinNe : selectedFin ≠ indexFin := by
        intro h
        exact heq (congrArg Fin.val h)
      have hfinNe' : indexFin ≠ selectedFin := Ne.symm hfinNe
      simpa [selectedFin, indexFin, heq, hfinNe, hfinNe'] using
        hbuckets index hindexOld hindexRaw

#print axioms valid_g2_point_body_step

end Ipp.Extracted.ArkworksMsm

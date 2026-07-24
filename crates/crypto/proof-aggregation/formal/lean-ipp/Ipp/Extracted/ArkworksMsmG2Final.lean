import Ipp.Extracted.ArkworksMsmFinalModel
import Ipp.Extracted.ArkworksMsmG2Collect
import Ipp.Extracted.ArkworksMsmG2WindowLoopResult
import Ipp.Extracted.ArkworksMsmG2Recombine
import Ipp.Extracted.ArkworksMsmCollectWidth

/-! Checked G2 MSM execution refines the ordered algebraic linear combination. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result
open scoped BigOperators
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMul

set_option maxHeartbeats 12000000

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

/-- The checked extracted G2 MSM returns the ordered scalar combination. -/
theorem executed_g2_msm
    (bases :
      Slice ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (scalars : Slice ScalarArray)
    (points : Fin scalars.val.length → G2AffinePoint)
    (out : ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont)
    (hlen : bases.val.length = scalars.val.length)
    (hbases : ∀ index : Fin scalars.val.length,
      ValidG2AffineLoopBase
        (bases.val.get
          ⟨index.val, by simpa [hlen] using index.isLt⟩)
        (points index))
    (hscalars : ∀ index : Fin scalars.val.length,
      scalarToNat scalars.val[index.val] < 2 ^ 253)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm bases scalars =
        .ok (.Ok out)) :
    RepresentsG2 out
      (∑ index : Fin scalars.val.length,
        scalarToNat scalars.val[index.val] • points index) := by
  have hunchecked :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked bases scalars =
        .ok out := by
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm at hexec
    have hlenUsize : Slice.len bases = Slice.len scalars := by
      apply usize_eq_of_val_eq
      simpa using hlen
    rw [if_neg (by simp [hlenUsize])] at hexec
    obtain ⟨point, hpoint, hreturn⟩ := bind_eq_ok hexec
    simp only [Result.ok.injEq,
      ark_ip_proofs.core.result.Result.Ok.injEq] at hreturn
    subst point
    exact hpoint
  by_cases hempty : scalars.val.length = 0
  · have hbasesEmpty : bases.val.length = 0 := by omega
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked at hunchecked
    simp only [Slice.len] at hunchecked
    rw [if_neg (by simp [hlen])] at hunchecked
    simp only [Result.bind_ok] at hunchecked
    rw [if_pos (by
      apply usize_eq_of_val_eq
      simpa using hempty)]
      at hunchecked
    have hsumZero :
        (∑ index : Fin scalars.val.length,
          scalarToNat scalars.val[index.val] • points index) = 0 := by
      apply Finset.sum_eq_zero
      intro index _
      exact (Nat.not_lt_zero index.val (by
        simpa [hempty] using index.isLt)).elim
    rw [hsumZero]
    exact valid_g2_zero out hunchecked
  · have hpositive : 0 < scalars.val.length := Nat.pos_of_ne_zero hempty
    have hbasesPositive : 0 < bases.val.length := by omega
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked at hunchecked
    simp only [Slice.len] at hunchecked
    rw [if_neg (by simp [hlen])] at hunchecked
    simp only [Result.bind_ok] at hunchecked
    rw [if_neg (by
      intro hzeroSize
      apply hempty
      simpa [Slice.len, Usize.ofNat] using
        congrArg (fun value : Usize => value.val) hzeroSize)] at hunchecked
    obtain ⟨width, hwidthExec, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨sumWidth, hsumWidth, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨predWidth, hpredWidth, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨digitsCount, hdigitsCount, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨capacity, hcapacity, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨allDigits, hcollect, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨bucketCount, hbucketCount, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨windowSums, hwindows, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨lowest, hlowest, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨zero, hzero, hunchecked⟩ := bind_eq_ok hunchecked
    obtain ⟨folded, hfolded, hadd⟩ := bind_eq_ok hunchecked
    have hwidth : 0 < width.val :=
      msm_window_size_positive _ width hwidthExec
    have hwidth64 : width.val < 64 :=
      g2_collect_width_lt_64 scalars (Slice.len scalars) width
        (alloc.vec.Vec.with_capacity WnafDigit capacity) allDigits
        hpositive hcollect
    have hradixWord : 2 ^ width.val < MacCampaign.u64Base := by
      simpa [MacCampaign.u64Base] using
        (Nat.pow_lt_pow_right (by decide : 1 < 2) hwidth64)
    have hsumWidthVal : sumWidth.val = 253 + width.val := by
      simpa using usize_add_value (253#usize) width sumWidth hsumWidth
    have hpredWidthVal : predWidth.val = 253 + width.val - 1 := by
      have hbound : (1#usize).val ≤ sumWidth.val := by
        change 1 ≤ sumWidth.val
        rw [hsumWidthVal]
        omega
      simpa [hsumWidthVal] using
        usize_sub_value sumWidth (1#usize) predWidth hbound hpredWidth
    have hdigitsCountVal :
        digitsCount.val = msmDigitCount width.val := by
      simpa [msmDigitCount, hpredWidthVal] using
        usize_mac_div_value predWidth width digitsCount (Nat.ne_of_gt hwidth)
          hdigitsCount
    have hbucketsVal : bucketCount.val = 2 ^ width.val :=
      msm_bucket_count_spec width bucketCount hbucketCount
    have hcollectModel :
        allDigits.val =
          collectedDigits width.val scalars.val := by
      have hcollect' := g2_collect_digits scalars (Slice.len scalars) width
        (alloc.vec.Vec.with_capacity WnafDigit capacity) allDigits
        (Nat.le_refl _) hwidth hwidth64 hcollect
      simpa [alloc.vec.Vec.with_capacity, Slice.len] using hcollect'
    let pairs : Fin digitsCount.val →
        List (WnafDigit × G2AffinePoint) :=
      fun window =>
        List.ofFn (fun index : Fin scalars.val.length =>
          ((msmScalarDigits width.val scalars.val[index.val]).get
              ⟨window.val, by simpa [← hdigitsCountVal] using window.isLt⟩,
            points index))
    have hpairsLength : ∀ window, (pairs window).length =
        (Slice.len scalars).val := by
      intro window
      simp [pairs, Slice.len]
    have hallDigits :
        (Slice.len scalars).val * digitsCount.val ≤ allDigits.val.length := by
      rw [hcollectModel, collectedDigits_length, hdigitsCountVal]
      simp [Slice.len]
    have hdigits : ∀ window index
        (hindex : index < (Slice.len scalars).val),
        allDigits.val[index * digitsCount.val + window.val]'(by
          rw [hcollectModel, collectedDigits_length]
          calc
            index * digitsCount.val + window.val <
                index * digitsCount.val + digitsCount.val :=
              Nat.add_lt_add_left (by
                exact window.isLt) _
            _ = (index + 1) * digitsCount.val := by
              simp [Nat.add_mul]
            _ ≤ scalars.val.length * digitsCount.val := by
              exact Nat.mul_le_mul_right _ (by
                simpa [Slice.len] using hindex)
            _ = scalars.val.length * msmDigitCount width.val := by
              rw [hdigitsCountVal]) =
          ((pairs window).get ⟨index, by
            simpa [hpairsLength window] using hindex⟩).1 := by
      intro window index hindex
      simp only [hcollectModel]
      have hget := collectedDigits_get width.val scalars.val index
        window.val hindex (by simpa [hdigitsCountVal] using window.isLt)
      simpa [pairs, hdigitsCountVal] using hget
    have hpairsBases : ∀ window index
        (hindex : index < (Slice.len scalars).val),
        ValidG2AffineLoopBase
          (bases.val.get ⟨index, by
            have : index < scalars.val.length := by
              simpa [Slice.len] using hindex
            omega⟩)
          ((pairs window).get ⟨index, by
            simpa [hpairsLength window] using hindex⟩).2 := by
      intro window index hindex
      have hscalarIndex : index < scalars.val.length := by
        simpa [Slice.len] using hindex
      simpa [pairs] using hbases ⟨index, hscalarIndex⟩
    have hmagnitudes : ∀ window pair, pair ∈ pairs window →
        pair.1.magnitude.val ≤ bucketCount.val := by
      intro window pair hpair
      simp only [pairs, List.mem_ofFn] at hpair
      obtain ⟨index, rfl⟩ := hpair
      rw [hbucketsVal]
      apply msmScalarDigits_magnitude_le width.val scalars.val[index.val]
        hwidth hwidth64
      exact List.get_mem _ _
    have hwindowValid := valid_g2_windows bases (Slice.len scalars)
      digitsCount allDigits bucketCount pairs hpairsLength hallDigits
      (by simp [Slice.len, hlen]) hdigits hpairsBases hmagnitudes windowSums hwindows
    obtain ⟨hwindowLength, hwindowValid⟩ := hwindowValid
    have hwindowPoints :
        List.ofFn (fun window : Fin digitsCount.val =>
          ∑ index : Fin scalars.val.length,
            ((msmScalarDigits width.val scalars.val[index.val]).get
              ⟨window.val, by simpa [← hdigitsCountVal] using window.isLt⟩).value •
              points index) =
        List.ofFn (fun window : Fin digitsCount.val =>
          ((pairs window).map
            (fun pair => pair.1.value • pair.2)).sum) := by
      apply List.ofFn_inj.mpr
      funext window
      simp [pairs, List.sum_ofFn]
    have hdigitsCountPositive : 0 < digitsCount.val := by
      rw [hdigitsCountVal]
      unfold msmDigitCount
      apply Nat.div_pos
      · omega
      · exact hwidth
    have hnonemptyWindows :
        List.ofFn (fun window : Fin digitsCount.val =>
          ((pairs window).map
            (fun pair => pair.1.value • pair.2)).sum) ≠ [] := by
      intro hemptyWindows
      have hlengthZero := congrArg List.length hemptyWindows
      simp at hlengthZero
      omega
    have hzeroValid : ValidG2LoopState zero 0 :=
      valid_g2_zero zero hzero
    have hfolded' :
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_msm_unchecked_loop2
          width windowSums zero
            (Usize.ofNat
              (List.ofFn (fun window : Fin digitsCount.val =>
                ((pairs window).map
                  (fun pair => pair.1.value • pair.2)).sum)).length) =
          .ok folded := by
      have hcountEq :
          Usize.ofNat
              (List.ofFn (fun window : Fin digitsCount.val =>
                ((pairs window).map
                  (fun pair => pair.1.value • pair.2)).sum)).length =
            digitsCount := by
        apply usize_eq_of_val_eq
        simp
      simpa [hcountEq] using hfolded
    have hrecombined := valid_g2_cross_window width windowSums
      (List.ofFn (fun window : Fin digitsCount.val =>
        ((pairs window).map
          (fun pair => pair.1.value • pair.2)).sum))
      (by simp [hwindowLength]) hnonemptyWindows
      (by
        intro index hindex
        simpa using hwindowValid index hindex)
      zero folded out hzeroValid hfolded' (by
        have hlowestEq :
            lowest = windowSums.val.get ⟨0, by
              rw [hwindowLength]
              exact hdigitsCountPositive⟩ := by
          have hwindowSumsPositive : 0 < windowSums.val.length := by
            rw [hwindowLength]
            exact hdigitsCountPositive
          unfold alloc.vec.Vec.index at hlowest
          simp only [Usize.ofNat_val] at hlowest
          rw [List.getElem?_eq_getElem hwindowSumsPositive] at hlowest
          simp only [Result.ok.injEq] at hlowest
          exact hlowest.symm
        rw [hlowestEq] at hadd
        exact hadd)
    rw [← hwindowPoints] at hrecombined
    have hordered := msm_windowValue_eq_ordered width.val
      (fun index => scalars.val[index.val]) points hwidth hradixWord hscalars
    rw [← hordered]
    simpa only [hdigitsCountVal] using hrecombined

#print axioms executed_g2_msm

end Ipp.Extracted.ArkworksMsm

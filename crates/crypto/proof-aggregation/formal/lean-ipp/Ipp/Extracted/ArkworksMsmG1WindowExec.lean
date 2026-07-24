import Ipp.Extracted.ArkworksMsmG1PointLoopResult
import Ipp.Extracted.ArkworksMsmWindowExecModel

/-! Executed G1 single-window composition. -/

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

/-- One successful generated G1 window appends its generic signed bucket sum. -/
theorem valid_g1_window_body
    (bases : Slice ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (size digitsCount : Usize)
    (allDigits : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.WnafDigit)
    (bucketCount : Usize)
    (windowSums : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (window : Usize)
    (pairs : List (WnafDigit × G1AffinePoint))
    (hpairsLength : pairs.length = size.val)
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
      pair.1.magnitude.val ≤ bucketCount.val)
    (outputSums : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (outputWindow : Usize)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1.body
        bases size digitsCount allDigits bucketCount windowSums window =
          .ok (.cont (outputSums, outputWindow))) :
    ∃ result : ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont,
      outputSums.val = windowSums.val ++ [result] ∧
      outputWindow.val = window.val + 1 ∧
      ValidG1LoopState result
        (pairs.map (fun pair => pair.1.value • pair.2)).sum := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_msm_unchecked_loop1.body
    at hexec
  rw [if_pos (show window < digitsCount by exact hwindow)] at hexec
  obtain ⟨zero, hzeroExec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨initialBuckets, hinitialExec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨filledBuckets, hpointsExec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨result, hreverseExec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨pushedSums, hpushExec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨nextWindow, haddExec, hreturn⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq, ControlFlow.cont.injEq] at hreturn
  rcases hreturn with ⟨houtputSums, houtputWindow⟩
  have hzeroValid : ValidG1LoopState zero 0 :=
    valid_g1_zero zero hzeroExec
  have hinitial :
      (⟨List.replicate bucketCount.val zero⟩ :
        alloc.vec.Vec
          ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont) =
        initialBuckets := by
    simpa [alloc.vec.from_elem] using hinitialExec
  subst initialBuckets
  let zeroBuckets : Buckets (G := G1AffinePoint) bucketCount.val :=
    fun _ => 0
  have hinitialValid :
      ∀ index (hindex : index < bucketCount.val)
          (hraw : index < (List.replicate bucketCount.val zero).length),
        ValidG1LoopState
          (List.replicate bucketCount.val zero)[index]
          (zeroBuckets ⟨index, hindex⟩) := by
    intro index hindex hraw
    simpa [zeroBuckets] using hzeroValid
  have hpoints := valid_g1_process_buckets
    bases size digitsCount allDigits window
    (⟨List.replicate bucketCount.val zero⟩ :
      alloc.vec.Vec
        ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    0#usize pairs bucketCount.val zeroBuckets hpairsLength (by simp)
    hwindow hallDigits hbaseLength hdigits hbases hmagnitudes
    (by simp) hinitialValid filledBuckets hpointsExec
  rcases hpoints with ⟨hfilledLength, hfilledValid⟩
  let modelBuckets :=
    processBuckets pairs zeroBuckets
  let bucketList : List G1AffinePoint := List.ofFn modelBuckets
  have hlistLength : bucketList.length = filledBuckets.val.length := by
    simp [bucketList, hfilledLength]
  have hfilledListValid :
      ∀ index (hindex : index < filledBuckets.val.length),
        ValidG1LoopState filledBuckets.val[index]
          (bucketList.get
            ⟨index, by simpa [hlistLength] using hindex⟩) := by
    intro index hindex
    have hmodelIndex : index < bucketCount.val := by
      simpa [hfilledLength] using hindex
    simpa [bucketList, modelBuckets, List.get_ofFn] using
      hfilledValid index hmodelIndex hindex
  have hresult := valid_g1_reverse_bucket_fold_zero
    filledBuckets bucketList hlistLength hfilledListValid
    zero result hzeroValid (by
      have hbucketEq :
          Usize.ofNat filledBuckets.val.length = bucketCount := by
        cases bucketCount
        simp_all [Usize.ofNat]
      rw [hbucketEq]
      exact hreverseExec)
  have hvalue :
      (reverseRunningFold bucketList).2 =
        (pairs.map (fun pair => pair.1.value • pair.2)).sum := by
    simpa [bucketList, modelBuckets, zeroBuckets] using
      reverseRunningFold_oneWindow pairs hmagnitudes
  rw [hvalue] at hresult
  have hpush :
      (⟨windowSums.val ++ [result]⟩ :
        alloc.vec.Vec
          ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont) =
        outputSums := by
    simpa [alloc.vec.Vec.push] using hpushExec
  have hadd :
      Usize.ofNat (window.val + 1) = outputWindow := by
    simpa [Aeneas.Std.add_eq] using haddExec
  refine ⟨result, ?_, ?_, hresult⟩
  · exact (congrArg alloc.vec.Vec.val hpush).symm
  · exact (congrArg Usize.val hadd).symm

/-- An executed G1 window with zero-valued digits appends the identity. -/
theorem valid_g1_window_zero_digits
    (pairs : List (WnafDigit × G1AffinePoint))
    (bucketCount : Nat)
    (hmagnitudes : ∀ pair ∈ pairs,
      pair.1.magnitude.val ≤ bucketCount)
    (hzero : ∀ pair ∈ pairs, pair.1.value = 0)
    (windowSums outputSums : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (window outputWindow : Usize)
    (hexecuted :
      ∃ result : ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont,
        outputSums.val = windowSums.val ++ [result] ∧
        outputWindow.val = window.val + 1 ∧
        ValidG1LoopState result
          (pairs.map (fun pair => pair.1.value • pair.2)).sum) :
    ∃ result : ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont,
      outputSums.val = windowSums.val ++ [result] ∧
      outputWindow.val = window.val + 1 ∧
      ValidG1LoopState result 0 := by
  have hsumZero :
      (pairs.map (fun pair => pair.1.value • pair.2)).sum = 0 := by
    have hweighted :=
      oneWindow_zero_digits (bucketCount := bucketCount)
        pairs hmagnitudes hzero
    rw [oneWindow_value pairs hmagnitudes] at hweighted
    exact hweighted
  obtain ⟨result, hpush, hwindow, hvalid⟩ := hexecuted
  rw [hsumZero] at hvalid
  exact ⟨result, hpush, hwindow, hvalid⟩

/-- An executed G1 window over identity bases appends the identity. -/
theorem valid_g1_window_identity_bases
    (pairs : List (WnafDigit × G1AffinePoint))
    (bucketCount : Nat)
    (hmagnitudes : ∀ pair ∈ pairs,
      pair.1.magnitude.val ≤ bucketCount)
    (hzero : ∀ pair ∈ pairs, pair.2 = 0)
    (windowSums outputSums : alloc.vec.Vec
      ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont)
    (window outputWindow : Usize)
    (hexecuted :
      ∃ result : ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont,
        outputSums.val = windowSums.val ++ [result] ∧
        outputWindow.val = window.val + 1 ∧
        ValidG1LoopState result
          (pairs.map (fun pair => pair.1.value • pair.2)).sum) :
    ∃ result : ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont,
      outputSums.val = windowSums.val ++ [result] ∧
      outputWindow.val = window.val + 1 ∧
      ValidG1LoopState result 0 := by
  have hsumZero :
      (pairs.map (fun pair => pair.1.value • pair.2)).sum = 0 := by
    have hweighted :=
      oneWindow_identity_bases (bucketCount := bucketCount)
        pairs hmagnitudes hzero
    rw [oneWindow_value pairs hmagnitudes] at hweighted
    exact hweighted
  obtain ⟨result, hpush, hwindow, hvalid⟩ := hexecuted
  rw [hsumZero] at hvalid
  exact ⟨result, hpush, hwindow, hvalid⟩

#print axioms valid_g1_window_body
#print axioms valid_g1_window_zero_digits
#print axioms valid_g1_window_identity_bases

end Ipp.Extracted.ArkworksMsm

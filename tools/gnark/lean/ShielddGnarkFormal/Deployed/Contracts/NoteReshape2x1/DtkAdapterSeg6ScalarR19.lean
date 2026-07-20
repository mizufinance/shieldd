import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5489 rho ∧ Seg6.relationRow5490 rho ∧ Seg6.relationRow5491 rho ∧ Seg6.relationRow5492 rho ∧ Seg6.relationRow5493 rho ∧ Seg6.relationRow5494 rho ∧ Seg6.relationRow5495 rho ∧ Seg6.relationRow5496 rho ∧ Seg6.relationRow5497 rho ∧ Seg6.relationRow5498 rho ∧ Seg6.relationRow5499 rho ∧ Seg6.relationRow5500 rho ∧ Seg6.relationRow5501 rho ∧ Seg6.relationRow5502 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩

theorem seg6_rung209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2093 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX209 rho : Seg6.F), (seg6AccY209 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5880 : Seg6.F), (rho 5881 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX209 rho : Seg6.F), (seg6AccY209 rho : Seg6.F)⟩
        ⟨(rho 5880 : Seg6.F), (rho 5881 : Seg6.F)⟩
        ⟨(seg6AccX210 rho : Seg6.F), (seg6AccY210 rho : Seg6.F)⟩
        ⟨(rho 5894 : Seg6.F), (rho 5895 : Seg6.F)⟩ := by
  obtain ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩ := seg6_rows209 rho h
  unfold Seg6.relationRow5489 Seg6.relationLc1133 at r5489
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5489
  unfold Seg6.relationRow5490 at r5490
  unfold Seg6.relationRow5491 Seg6.relationLc1134 at r5491
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5491
  unfold Seg6.relationRow5492 Seg6.relationLc1135 at r5492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5492
  unfold Seg6.relationRow5493 at r5493
  unfold Seg6.relationRow5494 at r5494
  unfold Seg6.relationRow5495 at r5495
  unfold Seg6.relationRow5496 Seg6.relationLc1136 at r5496
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5496
  unfold Seg6.relationRow5497 Seg6.relationLc1137 at r5497
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5497
  unfold Seg6.relationRow5498 at r5498
  unfold Seg6.relationRow5499 at r5499
  unfold Seg6.relationRow5500 at r5500
  unfold Seg6.relationRow5501 at r5501
  unfold Seg6.relationRow5502 at r5502
  have hrung209 (bit : Bool) (hbit : rho 2093 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX209 rho : Seg6.F), (seg6AccY209 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5880 : Seg6.F), (rho 5881 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX209 rho : Seg6.F), (seg6AccY209 rho : Seg6.F)⟩
        ⟨(rho 5880 : Seg6.F), (rho 5881 : Seg6.F)⟩
        ⟨(seg6AccX210 rho : Seg6.F), (seg6AccY210 rho : Seg6.F)⟩
        ⟨(rho 5894 : Seg6.F), (rho 5895 : Seg6.F)⟩ := by
    have hnextx : seg6AccX210 rho = seg6AccX209 rho + rho 5889 := by
      unfold seg6AccX210 seg6AccX209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 59]
      ring
    have hnexty : seg6AccY210 rho = seg6AccY209 rho + rho 5890 := by
      unfold seg6AccY210 seg6AccY209
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 59]
      ring
    have hsum : seg6AccX209 rho + seg6AccY209 rho = rho 5882 := by
      unfold seg6AccX209 seg6AccY209
      linear_combination r5489
    have ha0 : (rho 5880 + rho 5881) * (seg6AccX209 rho + seg6AccY209 rho) = rho 5883 := by
      rw [hsum]
      linear_combination r5490
    have ha1 : rho 5881 * seg6AccX209 rho = rho 5884 := by
      unfold seg6AccX209
      linear_combination r5491
    have ha2 : rho 5880 * seg6AccY209 rho = rho 5885 := by
      unfold seg6AccY209
      linear_combination r5492
    have ha3 : 3021 * rho 5884 * rho 5885 = rho 5886 := by
      linear_combination r5493
    have ha4 : rho 5887 * (1 + rho 5886) = rho 5884 + rho 5885 := by
      linear_combination r5494
    have ha5 : rho 5888 * (1 - rho 5886) = rho 5883 - rho 5884 - rho 5885 := by
      linear_combination r5495
    have haddx :
        rho 5887 * (1 + 3021 * (rho 5881 * seg6AccX209 rho) * (rho 5880 * seg6AccY209 rho)) =
          rho 5881 * seg6AccX209 rho + rho 5880 * seg6AccY209 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5888 * (1 - 3021 * (rho 5881 * seg6AccX209 rho) * (rho 5880 * seg6AccY209 rho)) =
          (-1) * (rho 5881 * seg6AccX209 rho) - rho 5880 * seg6AccY209 rho +
            (seg6AccY209 rho - seg6AccX209 rho * (-1)) * (rho 5880 + rho 5881) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5888 * (1 - rho 5886) = rho 5883 - rho 5884 - rho 5885 := ha5
        _ = (-1) * rho 5884 - rho 5885 + (seg6AccY209 rho - seg6AccX209 rho * (-1)) * (rho 5880 + rho 5881) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX210 rho = seg6AccX209 rho - Bool.toZMod bit * (seg6AccX209 rho - rho 5887) := by
      have hd : rho 5889 = Bool.toZMod bit * (rho 5887 - seg6AccX209 rho) := by
        rw [← hbit]
        unfold seg6AccX209
        linear_combination -r5496
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY210 rho = seg6AccY209 rho - Bool.toZMod bit * (seg6AccY209 rho - rho 5888) := by
      have hd : rho 5890 = Bool.toZMod bit * (rho 5888 - seg6AccY209 rho) := by
        rw [← hbit]
        unfold seg6AccY209
        linear_combination -r5497
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5880 * rho 5881 = rho 5891 := by linear_combination r5498
    have hd1 : rho 5880 * rho 5880 = rho 5892 := by linear_combination r5499
    have hd2 : rho 5881 * rho 5881 = rho 5893 := by linear_combination r5500
    have hd3 : rho 5894 * (rho 5881 * rho 5881 + rho 5880 * rho 5880 * (-1)) = 2 * (rho 5880 * rho 5881) := by
      rw [hd0, hd1, hd2]
      linear_combination r5501
    have hd4 : rho 5895 * (2 - (rho 5881 * rho 5881 + rho 5880 * rho 5880 * (-1))) = rho 5881 * rho 5881 - rho 5880 * rho 5880 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5502
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX209 rho : Seg6.F), (seg6AccY209 rho : Seg6.F)⟩
      ⟨(rho 5880 : Seg6.F), (rho 5881 : Seg6.F)⟩
      ⟨(rho 5887 : Seg6.F), (rho 5888 : Seg6.F)⟩
      ⟨(seg6AccX210 rho : Seg6.F), (seg6AccY210 rho : Seg6.F)⟩
      ⟨(rho 5894 : Seg6.F), (rho 5895 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung209

theorem seg6_rows210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5503 rho ∧ Seg6.relationRow5504 rho ∧ Seg6.relationRow5505 rho ∧ Seg6.relationRow5506 rho ∧ Seg6.relationRow5507 rho ∧ Seg6.relationRow5508 rho ∧ Seg6.relationRow5509 rho ∧ Seg6.relationRow5510 rho ∧ Seg6.relationRow5511 rho ∧ Seg6.relationRow5512 rho ∧ Seg6.relationRow5513 rho ∧ Seg6.relationRow5514 rho ∧ Seg6.relationRow5515 rho ∧ Seg6.relationRow5516 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, _, _, _⟩
  exact ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩

theorem seg6_rung210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2094 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX210 rho : Seg6.F), (seg6AccY210 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5894 : Seg6.F), (rho 5895 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX210 rho : Seg6.F), (seg6AccY210 rho : Seg6.F)⟩
        ⟨(rho 5894 : Seg6.F), (rho 5895 : Seg6.F)⟩
        ⟨(seg6AccX211 rho : Seg6.F), (seg6AccY211 rho : Seg6.F)⟩
        ⟨(rho 5908 : Seg6.F), (rho 5909 : Seg6.F)⟩ := by
  obtain ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩ := seg6_rows210 rho h
  unfold Seg6.relationRow5503 Seg6.relationLc1138 at r5503
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5503
  unfold Seg6.relationRow5504 at r5504
  unfold Seg6.relationRow5505 Seg6.relationLc1139 at r5505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5505
  unfold Seg6.relationRow5506 Seg6.relationLc1140 at r5506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5506
  unfold Seg6.relationRow5507 at r5507
  unfold Seg6.relationRow5508 at r5508
  unfold Seg6.relationRow5509 at r5509
  unfold Seg6.relationRow5510 Seg6.relationLc1141 at r5510
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5510
  unfold Seg6.relationRow5511 Seg6.relationLc1142 at r5511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5511
  unfold Seg6.relationRow5512 at r5512
  unfold Seg6.relationRow5513 at r5513
  unfold Seg6.relationRow5514 at r5514
  unfold Seg6.relationRow5515 at r5515
  unfold Seg6.relationRow5516 at r5516
  have hrung210 (bit : Bool) (hbit : rho 2094 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX210 rho : Seg6.F), (seg6AccY210 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5894 : Seg6.F), (rho 5895 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX210 rho : Seg6.F), (seg6AccY210 rho : Seg6.F)⟩
        ⟨(rho 5894 : Seg6.F), (rho 5895 : Seg6.F)⟩
        ⟨(seg6AccX211 rho : Seg6.F), (seg6AccY211 rho : Seg6.F)⟩
        ⟨(rho 5908 : Seg6.F), (rho 5909 : Seg6.F)⟩ := by
    have hnextx : seg6AccX211 rho = seg6AccX210 rho + rho 5903 := by
      unfold seg6AccX211 seg6AccX210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 60]
      ring
    have hnexty : seg6AccY211 rho = seg6AccY210 rho + rho 5904 := by
      unfold seg6AccY211 seg6AccY210
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 60]
      ring
    have hsum : seg6AccX210 rho + seg6AccY210 rho = rho 5896 := by
      unfold seg6AccX210 seg6AccY210
      linear_combination r5503
    have ha0 : (rho 5894 + rho 5895) * (seg6AccX210 rho + seg6AccY210 rho) = rho 5897 := by
      rw [hsum]
      linear_combination r5504
    have ha1 : rho 5895 * seg6AccX210 rho = rho 5898 := by
      unfold seg6AccX210
      linear_combination r5505
    have ha2 : rho 5894 * seg6AccY210 rho = rho 5899 := by
      unfold seg6AccY210
      linear_combination r5506
    have ha3 : 3021 * rho 5898 * rho 5899 = rho 5900 := by
      linear_combination r5507
    have ha4 : rho 5901 * (1 + rho 5900) = rho 5898 + rho 5899 := by
      linear_combination r5508
    have ha5 : rho 5902 * (1 - rho 5900) = rho 5897 - rho 5898 - rho 5899 := by
      linear_combination r5509
    have haddx :
        rho 5901 * (1 + 3021 * (rho 5895 * seg6AccX210 rho) * (rho 5894 * seg6AccY210 rho)) =
          rho 5895 * seg6AccX210 rho + rho 5894 * seg6AccY210 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5902 * (1 - 3021 * (rho 5895 * seg6AccX210 rho) * (rho 5894 * seg6AccY210 rho)) =
          (-1) * (rho 5895 * seg6AccX210 rho) - rho 5894 * seg6AccY210 rho +
            (seg6AccY210 rho - seg6AccX210 rho * (-1)) * (rho 5894 + rho 5895) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5902 * (1 - rho 5900) = rho 5897 - rho 5898 - rho 5899 := ha5
        _ = (-1) * rho 5898 - rho 5899 + (seg6AccY210 rho - seg6AccX210 rho * (-1)) * (rho 5894 + rho 5895) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX211 rho = seg6AccX210 rho - Bool.toZMod bit * (seg6AccX210 rho - rho 5901) := by
      have hd : rho 5903 = Bool.toZMod bit * (rho 5901 - seg6AccX210 rho) := by
        rw [← hbit]
        unfold seg6AccX210
        linear_combination -r5510
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY211 rho = seg6AccY210 rho - Bool.toZMod bit * (seg6AccY210 rho - rho 5902) := by
      have hd : rho 5904 = Bool.toZMod bit * (rho 5902 - seg6AccY210 rho) := by
        rw [← hbit]
        unfold seg6AccY210
        linear_combination -r5511
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5894 * rho 5895 = rho 5905 := by linear_combination r5512
    have hd1 : rho 5894 * rho 5894 = rho 5906 := by linear_combination r5513
    have hd2 : rho 5895 * rho 5895 = rho 5907 := by linear_combination r5514
    have hd3 : rho 5908 * (rho 5895 * rho 5895 + rho 5894 * rho 5894 * (-1)) = 2 * (rho 5894 * rho 5895) := by
      rw [hd0, hd1, hd2]
      linear_combination r5515
    have hd4 : rho 5909 * (2 - (rho 5895 * rho 5895 + rho 5894 * rho 5894 * (-1))) = rho 5895 * rho 5895 - rho 5894 * rho 5894 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5516
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX210 rho : Seg6.F), (seg6AccY210 rho : Seg6.F)⟩
      ⟨(rho 5894 : Seg6.F), (rho 5895 : Seg6.F)⟩
      ⟨(rho 5901 : Seg6.F), (rho 5902 : Seg6.F)⟩
      ⟨(seg6AccX211 rho : Seg6.F), (seg6AccY211 rho : Seg6.F)⟩
      ⟨(rho 5908 : Seg6.F), (rho 5909 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung210

theorem seg6_rows211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5517 rho ∧ Seg6.relationRow5518 rho ∧ Seg6.relationRow5519 rho ∧ Seg6.relationRow5520 rho ∧ Seg6.relationRow5521 rho ∧ Seg6.relationRow5522 rho ∧ Seg6.relationRow5523 rho ∧ Seg6.relationRow5524 rho ∧ Seg6.relationRow5525 rho ∧ Seg6.relationRow5526 rho ∧ Seg6.relationRow5527 rho ∧ Seg6.relationRow5528 rho ∧ Seg6.relationRow5529 rho ∧ Seg6.relationRow5530 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, p69,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5517, r5518, r5519⟩
  unfold Seg6.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩

theorem seg6_rung211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2095 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX211 rho : Seg6.F), (seg6AccY211 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5908 : Seg6.F), (rho 5909 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX211 rho : Seg6.F), (seg6AccY211 rho : Seg6.F)⟩
        ⟨(rho 5908 : Seg6.F), (rho 5909 : Seg6.F)⟩
        ⟨(seg6AccX212 rho : Seg6.F), (seg6AccY212 rho : Seg6.F)⟩
        ⟨(rho 5922 : Seg6.F), (rho 5923 : Seg6.F)⟩ := by
  obtain ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩ := seg6_rows211 rho h
  unfold Seg6.relationRow5517 Seg6.relationLc1143 at r5517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5517
  unfold Seg6.relationRow5518 at r5518
  unfold Seg6.relationRow5519 Seg6.relationLc1144 at r5519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5519
  unfold Seg6.relationRow5520 Seg6.relationLc1145 at r5520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5520
  unfold Seg6.relationRow5521 at r5521
  unfold Seg6.relationRow5522 at r5522
  unfold Seg6.relationRow5523 at r5523
  unfold Seg6.relationRow5524 Seg6.relationLc1146 at r5524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5524
  unfold Seg6.relationRow5525 Seg6.relationLc1147 at r5525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5525
  unfold Seg6.relationRow5526 at r5526
  unfold Seg6.relationRow5527 at r5527
  unfold Seg6.relationRow5528 at r5528
  unfold Seg6.relationRow5529 at r5529
  unfold Seg6.relationRow5530 at r5530
  have hrung211 (bit : Bool) (hbit : rho 2095 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX211 rho : Seg6.F), (seg6AccY211 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5908 : Seg6.F), (rho 5909 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX211 rho : Seg6.F), (seg6AccY211 rho : Seg6.F)⟩
        ⟨(rho 5908 : Seg6.F), (rho 5909 : Seg6.F)⟩
        ⟨(seg6AccX212 rho : Seg6.F), (seg6AccY212 rho : Seg6.F)⟩
        ⟨(rho 5922 : Seg6.F), (rho 5923 : Seg6.F)⟩ := by
    have hnextx : seg6AccX212 rho = seg6AccX211 rho + rho 5917 := by
      unfold seg6AccX212 seg6AccX211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 61]
      ring
    have hnexty : seg6AccY212 rho = seg6AccY211 rho + rho 5918 := by
      unfold seg6AccY212 seg6AccY211
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 61]
      ring
    have hsum : seg6AccX211 rho + seg6AccY211 rho = rho 5910 := by
      unfold seg6AccX211 seg6AccY211
      linear_combination r5517
    have ha0 : (rho 5908 + rho 5909) * (seg6AccX211 rho + seg6AccY211 rho) = rho 5911 := by
      rw [hsum]
      linear_combination r5518
    have ha1 : rho 5909 * seg6AccX211 rho = rho 5912 := by
      unfold seg6AccX211
      linear_combination r5519
    have ha2 : rho 5908 * seg6AccY211 rho = rho 5913 := by
      unfold seg6AccY211
      linear_combination r5520
    have ha3 : 3021 * rho 5912 * rho 5913 = rho 5914 := by
      linear_combination r5521
    have ha4 : rho 5915 * (1 + rho 5914) = rho 5912 + rho 5913 := by
      linear_combination r5522
    have ha5 : rho 5916 * (1 - rho 5914) = rho 5911 - rho 5912 - rho 5913 := by
      linear_combination r5523
    have haddx :
        rho 5915 * (1 + 3021 * (rho 5909 * seg6AccX211 rho) * (rho 5908 * seg6AccY211 rho)) =
          rho 5909 * seg6AccX211 rho + rho 5908 * seg6AccY211 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5916 * (1 - 3021 * (rho 5909 * seg6AccX211 rho) * (rho 5908 * seg6AccY211 rho)) =
          (-1) * (rho 5909 * seg6AccX211 rho) - rho 5908 * seg6AccY211 rho +
            (seg6AccY211 rho - seg6AccX211 rho * (-1)) * (rho 5908 + rho 5909) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5916 * (1 - rho 5914) = rho 5911 - rho 5912 - rho 5913 := ha5
        _ = (-1) * rho 5912 - rho 5913 + (seg6AccY211 rho - seg6AccX211 rho * (-1)) * (rho 5908 + rho 5909) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX212 rho = seg6AccX211 rho - Bool.toZMod bit * (seg6AccX211 rho - rho 5915) := by
      have hd : rho 5917 = Bool.toZMod bit * (rho 5915 - seg6AccX211 rho) := by
        rw [← hbit]
        unfold seg6AccX211
        linear_combination -r5524
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY212 rho = seg6AccY211 rho - Bool.toZMod bit * (seg6AccY211 rho - rho 5916) := by
      have hd : rho 5918 = Bool.toZMod bit * (rho 5916 - seg6AccY211 rho) := by
        rw [← hbit]
        unfold seg6AccY211
        linear_combination -r5525
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5908 * rho 5909 = rho 5919 := by linear_combination r5526
    have hd1 : rho 5908 * rho 5908 = rho 5920 := by linear_combination r5527
    have hd2 : rho 5909 * rho 5909 = rho 5921 := by linear_combination r5528
    have hd3 : rho 5922 * (rho 5909 * rho 5909 + rho 5908 * rho 5908 * (-1)) = 2 * (rho 5908 * rho 5909) := by
      rw [hd0, hd1, hd2]
      linear_combination r5529
    have hd4 : rho 5923 * (2 - (rho 5909 * rho 5909 + rho 5908 * rho 5908 * (-1))) = rho 5909 * rho 5909 - rho 5908 * rho 5908 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5530
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX211 rho : Seg6.F), (seg6AccY211 rho : Seg6.F)⟩
      ⟨(rho 5908 : Seg6.F), (rho 5909 : Seg6.F)⟩
      ⟨(rho 5915 : Seg6.F), (rho 5916 : Seg6.F)⟩
      ⟨(seg6AccX212 rho : Seg6.F), (seg6AccY212 rho : Seg6.F)⟩
      ⟨(rho 5922 : Seg6.F), (rho 5923 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung211

theorem seg6_rows212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5531 rho ∧ Seg6.relationRow5532 rho ∧ Seg6.relationRow5533 rho ∧ Seg6.relationRow5534 rho ∧ Seg6.relationRow5535 rho ∧ Seg6.relationRow5536 rho ∧ Seg6.relationRow5537 rho ∧ Seg6.relationRow5538 rho ∧ Seg6.relationRow5539 rho ∧ Seg6.relationRow5540 rho ∧ Seg6.relationRow5541 rho ∧ Seg6.relationRow5542 rho ∧ Seg6.relationRow5543 rho ∧ Seg6.relationRow5544 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩

theorem seg6_rung212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2096 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX212 rho : Seg6.F), (seg6AccY212 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5922 : Seg6.F), (rho 5923 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX212 rho : Seg6.F), (seg6AccY212 rho : Seg6.F)⟩
        ⟨(rho 5922 : Seg6.F), (rho 5923 : Seg6.F)⟩
        ⟨(seg6AccX213 rho : Seg6.F), (seg6AccY213 rho : Seg6.F)⟩
        ⟨(rho 5936 : Seg6.F), (rho 5937 : Seg6.F)⟩ := by
  obtain ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩ := seg6_rows212 rho h
  unfold Seg6.relationRow5531 Seg6.relationLc1148 at r5531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5531
  unfold Seg6.relationRow5532 at r5532
  unfold Seg6.relationRow5533 Seg6.relationLc1149 at r5533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5533
  unfold Seg6.relationRow5534 Seg6.relationLc1150 at r5534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5534
  unfold Seg6.relationRow5535 at r5535
  unfold Seg6.relationRow5536 at r5536
  unfold Seg6.relationRow5537 at r5537
  unfold Seg6.relationRow5538 Seg6.relationLc1151 at r5538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5538
  unfold Seg6.relationRow5539 Seg6.relationLc1152 at r5539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5539
  unfold Seg6.relationRow5540 at r5540
  unfold Seg6.relationRow5541 at r5541
  unfold Seg6.relationRow5542 at r5542
  unfold Seg6.relationRow5543 at r5543
  unfold Seg6.relationRow5544 at r5544
  have hrung212 (bit : Bool) (hbit : rho 2096 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX212 rho : Seg6.F), (seg6AccY212 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5922 : Seg6.F), (rho 5923 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX212 rho : Seg6.F), (seg6AccY212 rho : Seg6.F)⟩
        ⟨(rho 5922 : Seg6.F), (rho 5923 : Seg6.F)⟩
        ⟨(seg6AccX213 rho : Seg6.F), (seg6AccY213 rho : Seg6.F)⟩
        ⟨(rho 5936 : Seg6.F), (rho 5937 : Seg6.F)⟩ := by
    have hnextx : seg6AccX213 rho = seg6AccX212 rho + rho 5931 := by
      unfold seg6AccX213 seg6AccX212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 62]
      ring
    have hnexty : seg6AccY213 rho = seg6AccY212 rho + rho 5932 := by
      unfold seg6AccY213 seg6AccY212
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 62]
      ring
    have hsum : seg6AccX212 rho + seg6AccY212 rho = rho 5924 := by
      unfold seg6AccX212 seg6AccY212
      linear_combination r5531
    have ha0 : (rho 5922 + rho 5923) * (seg6AccX212 rho + seg6AccY212 rho) = rho 5925 := by
      rw [hsum]
      linear_combination r5532
    have ha1 : rho 5923 * seg6AccX212 rho = rho 5926 := by
      unfold seg6AccX212
      linear_combination r5533
    have ha2 : rho 5922 * seg6AccY212 rho = rho 5927 := by
      unfold seg6AccY212
      linear_combination r5534
    have ha3 : 3021 * rho 5926 * rho 5927 = rho 5928 := by
      linear_combination r5535
    have ha4 : rho 5929 * (1 + rho 5928) = rho 5926 + rho 5927 := by
      linear_combination r5536
    have ha5 : rho 5930 * (1 - rho 5928) = rho 5925 - rho 5926 - rho 5927 := by
      linear_combination r5537
    have haddx :
        rho 5929 * (1 + 3021 * (rho 5923 * seg6AccX212 rho) * (rho 5922 * seg6AccY212 rho)) =
          rho 5923 * seg6AccX212 rho + rho 5922 * seg6AccY212 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5930 * (1 - 3021 * (rho 5923 * seg6AccX212 rho) * (rho 5922 * seg6AccY212 rho)) =
          (-1) * (rho 5923 * seg6AccX212 rho) - rho 5922 * seg6AccY212 rho +
            (seg6AccY212 rho - seg6AccX212 rho * (-1)) * (rho 5922 + rho 5923) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5930 * (1 - rho 5928) = rho 5925 - rho 5926 - rho 5927 := ha5
        _ = (-1) * rho 5926 - rho 5927 + (seg6AccY212 rho - seg6AccX212 rho * (-1)) * (rho 5922 + rho 5923) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX213 rho = seg6AccX212 rho - Bool.toZMod bit * (seg6AccX212 rho - rho 5929) := by
      have hd : rho 5931 = Bool.toZMod bit * (rho 5929 - seg6AccX212 rho) := by
        rw [← hbit]
        unfold seg6AccX212
        linear_combination -r5538
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY213 rho = seg6AccY212 rho - Bool.toZMod bit * (seg6AccY212 rho - rho 5930) := by
      have hd : rho 5932 = Bool.toZMod bit * (rho 5930 - seg6AccY212 rho) := by
        rw [← hbit]
        unfold seg6AccY212
        linear_combination -r5539
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5922 * rho 5923 = rho 5933 := by linear_combination r5540
    have hd1 : rho 5922 * rho 5922 = rho 5934 := by linear_combination r5541
    have hd2 : rho 5923 * rho 5923 = rho 5935 := by linear_combination r5542
    have hd3 : rho 5936 * (rho 5923 * rho 5923 + rho 5922 * rho 5922 * (-1)) = 2 * (rho 5922 * rho 5923) := by
      rw [hd0, hd1, hd2]
      linear_combination r5543
    have hd4 : rho 5937 * (2 - (rho 5923 * rho 5923 + rho 5922 * rho 5922 * (-1))) = rho 5923 * rho 5923 - rho 5922 * rho 5922 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX212 rho : Seg6.F), (seg6AccY212 rho : Seg6.F)⟩
      ⟨(rho 5922 : Seg6.F), (rho 5923 : Seg6.F)⟩
      ⟨(rho 5929 : Seg6.F), (rho 5930 : Seg6.F)⟩
      ⟨(seg6AccX213 rho : Seg6.F), (seg6AccY213 rho : Seg6.F)⟩
      ⟨(rho 5936 : Seg6.F), (rho 5937 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung212

theorem seg6_rows213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5545 rho ∧ Seg6.relationRow5546 rho ∧ Seg6.relationRow5547 rho ∧ Seg6.relationRow5548 rho ∧ Seg6.relationRow5549 rho ∧ Seg6.relationRow5550 rho ∧ Seg6.relationRow5551 rho ∧ Seg6.relationRow5552 rho ∧ Seg6.relationRow5553 rho ∧ Seg6.relationRow5554 rho ∧ Seg6.relationRow5555 rho ∧ Seg6.relationRow5556 rho ∧ Seg6.relationRow5557 rho ∧ Seg6.relationRow5558 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩

theorem seg6_rung213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2097 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX213 rho : Seg6.F), (seg6AccY213 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5936 : Seg6.F), (rho 5937 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX213 rho : Seg6.F), (seg6AccY213 rho : Seg6.F)⟩
        ⟨(rho 5936 : Seg6.F), (rho 5937 : Seg6.F)⟩
        ⟨(seg6AccX214 rho : Seg6.F), (seg6AccY214 rho : Seg6.F)⟩
        ⟨(rho 5950 : Seg6.F), (rho 5951 : Seg6.F)⟩ := by
  obtain ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩ := seg6_rows213 rho h
  unfold Seg6.relationRow5545 Seg6.relationLc1153 at r5545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5545
  unfold Seg6.relationRow5546 at r5546
  unfold Seg6.relationRow5547 Seg6.relationLc1154 at r5547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5547
  unfold Seg6.relationRow5548 Seg6.relationLc1155 at r5548
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5548
  unfold Seg6.relationRow5549 at r5549
  unfold Seg6.relationRow5550 at r5550
  unfold Seg6.relationRow5551 at r5551
  unfold Seg6.relationRow5552 Seg6.relationLc1156 at r5552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5552
  unfold Seg6.relationRow5553 Seg6.relationLc1157 at r5553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5553
  unfold Seg6.relationRow5554 at r5554
  unfold Seg6.relationRow5555 at r5555
  unfold Seg6.relationRow5556 at r5556
  unfold Seg6.relationRow5557 at r5557
  unfold Seg6.relationRow5558 at r5558
  have hrung213 (bit : Bool) (hbit : rho 2097 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX213 rho : Seg6.F), (seg6AccY213 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5936 : Seg6.F), (rho 5937 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX213 rho : Seg6.F), (seg6AccY213 rho : Seg6.F)⟩
        ⟨(rho 5936 : Seg6.F), (rho 5937 : Seg6.F)⟩
        ⟨(seg6AccX214 rho : Seg6.F), (seg6AccY214 rho : Seg6.F)⟩
        ⟨(rho 5950 : Seg6.F), (rho 5951 : Seg6.F)⟩ := by
    have hnextx : seg6AccX214 rho = seg6AccX213 rho + rho 5945 := by
      unfold seg6AccX214 seg6AccX213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 63]
      ring
    have hnexty : seg6AccY214 rho = seg6AccY213 rho + rho 5946 := by
      unfold seg6AccY214 seg6AccY213
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 63]
      ring
    have hsum : seg6AccX213 rho + seg6AccY213 rho = rho 5938 := by
      unfold seg6AccX213 seg6AccY213
      linear_combination r5545
    have ha0 : (rho 5936 + rho 5937) * (seg6AccX213 rho + seg6AccY213 rho) = rho 5939 := by
      rw [hsum]
      linear_combination r5546
    have ha1 : rho 5937 * seg6AccX213 rho = rho 5940 := by
      unfold seg6AccX213
      linear_combination r5547
    have ha2 : rho 5936 * seg6AccY213 rho = rho 5941 := by
      unfold seg6AccY213
      linear_combination r5548
    have ha3 : 3021 * rho 5940 * rho 5941 = rho 5942 := by
      linear_combination r5549
    have ha4 : rho 5943 * (1 + rho 5942) = rho 5940 + rho 5941 := by
      linear_combination r5550
    have ha5 : rho 5944 * (1 - rho 5942) = rho 5939 - rho 5940 - rho 5941 := by
      linear_combination r5551
    have haddx :
        rho 5943 * (1 + 3021 * (rho 5937 * seg6AccX213 rho) * (rho 5936 * seg6AccY213 rho)) =
          rho 5937 * seg6AccX213 rho + rho 5936 * seg6AccY213 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5944 * (1 - 3021 * (rho 5937 * seg6AccX213 rho) * (rho 5936 * seg6AccY213 rho)) =
          (-1) * (rho 5937 * seg6AccX213 rho) - rho 5936 * seg6AccY213 rho +
            (seg6AccY213 rho - seg6AccX213 rho * (-1)) * (rho 5936 + rho 5937) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5944 * (1 - rho 5942) = rho 5939 - rho 5940 - rho 5941 := ha5
        _ = (-1) * rho 5940 - rho 5941 + (seg6AccY213 rho - seg6AccX213 rho * (-1)) * (rho 5936 + rho 5937) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX214 rho = seg6AccX213 rho - Bool.toZMod bit * (seg6AccX213 rho - rho 5943) := by
      have hd : rho 5945 = Bool.toZMod bit * (rho 5943 - seg6AccX213 rho) := by
        rw [← hbit]
        unfold seg6AccX213
        linear_combination -r5552
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY214 rho = seg6AccY213 rho - Bool.toZMod bit * (seg6AccY213 rho - rho 5944) := by
      have hd : rho 5946 = Bool.toZMod bit * (rho 5944 - seg6AccY213 rho) := by
        rw [← hbit]
        unfold seg6AccY213
        linear_combination -r5553
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5936 * rho 5937 = rho 5947 := by linear_combination r5554
    have hd1 : rho 5936 * rho 5936 = rho 5948 := by linear_combination r5555
    have hd2 : rho 5937 * rho 5937 = rho 5949 := by linear_combination r5556
    have hd3 : rho 5950 * (rho 5937 * rho 5937 + rho 5936 * rho 5936 * (-1)) = 2 * (rho 5936 * rho 5937) := by
      rw [hd0, hd1, hd2]
      linear_combination r5557
    have hd4 : rho 5951 * (2 - (rho 5937 * rho 5937 + rho 5936 * rho 5936 * (-1))) = rho 5937 * rho 5937 - rho 5936 * rho 5936 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX213 rho : Seg6.F), (seg6AccY213 rho : Seg6.F)⟩
      ⟨(rho 5936 : Seg6.F), (rho 5937 : Seg6.F)⟩
      ⟨(rho 5943 : Seg6.F), (rho 5944 : Seg6.F)⟩
      ⟨(seg6AccX214 rho : Seg6.F), (seg6AccY214 rho : Seg6.F)⟩
      ⟨(rho 5950 : Seg6.F), (rho 5951 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung213

theorem seg6_rows214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5559 rho ∧ Seg6.relationRow5560 rho ∧ Seg6.relationRow5561 rho ∧ Seg6.relationRow5562 rho ∧ Seg6.relationRow5563 rho ∧ Seg6.relationRow5564 rho ∧ Seg6.relationRow5565 rho ∧ Seg6.relationRow5566 rho ∧ Seg6.relationRow5567 rho ∧ Seg6.relationRow5568 rho ∧ Seg6.relationRow5569 rho ∧ Seg6.relationRow5570 rho ∧ Seg6.relationRow5571 rho ∧ Seg6.relationRow5572 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩

theorem seg6_rung214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2098 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX214 rho : Seg6.F), (seg6AccY214 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5950 : Seg6.F), (rho 5951 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX214 rho : Seg6.F), (seg6AccY214 rho : Seg6.F)⟩
        ⟨(rho 5950 : Seg6.F), (rho 5951 : Seg6.F)⟩
        ⟨(seg6AccX215 rho : Seg6.F), (seg6AccY215 rho : Seg6.F)⟩
        ⟨(rho 5964 : Seg6.F), (rho 5965 : Seg6.F)⟩ := by
  obtain ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩ := seg6_rows214 rho h
  unfold Seg6.relationRow5559 Seg6.relationLc1158 at r5559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5559
  unfold Seg6.relationRow5560 at r5560
  unfold Seg6.relationRow5561 Seg6.relationLc1159 at r5561
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5561
  unfold Seg6.relationRow5562 Seg6.relationLc1160 at r5562
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5562
  unfold Seg6.relationRow5563 at r5563
  unfold Seg6.relationRow5564 at r5564
  unfold Seg6.relationRow5565 at r5565
  unfold Seg6.relationRow5566 Seg6.relationLc1161 at r5566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5566
  unfold Seg6.relationRow5567 Seg6.relationLc1162 at r5567
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5567
  unfold Seg6.relationRow5568 at r5568
  unfold Seg6.relationRow5569 at r5569
  unfold Seg6.relationRow5570 at r5570
  unfold Seg6.relationRow5571 at r5571
  unfold Seg6.relationRow5572 at r5572
  have hrung214 (bit : Bool) (hbit : rho 2098 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX214 rho : Seg6.F), (seg6AccY214 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5950 : Seg6.F), (rho 5951 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX214 rho : Seg6.F), (seg6AccY214 rho : Seg6.F)⟩
        ⟨(rho 5950 : Seg6.F), (rho 5951 : Seg6.F)⟩
        ⟨(seg6AccX215 rho : Seg6.F), (seg6AccY215 rho : Seg6.F)⟩
        ⟨(rho 5964 : Seg6.F), (rho 5965 : Seg6.F)⟩ := by
    have hnextx : seg6AccX215 rho = seg6AccX214 rho + rho 5959 := by
      unfold seg6AccX215 seg6AccX214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 64]
      ring
    have hnexty : seg6AccY215 rho = seg6AccY214 rho + rho 5960 := by
      unfold seg6AccY215 seg6AccY214
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 64]
      ring
    have hsum : seg6AccX214 rho + seg6AccY214 rho = rho 5952 := by
      unfold seg6AccX214 seg6AccY214
      linear_combination r5559
    have ha0 : (rho 5950 + rho 5951) * (seg6AccX214 rho + seg6AccY214 rho) = rho 5953 := by
      rw [hsum]
      linear_combination r5560
    have ha1 : rho 5951 * seg6AccX214 rho = rho 5954 := by
      unfold seg6AccX214
      linear_combination r5561
    have ha2 : rho 5950 * seg6AccY214 rho = rho 5955 := by
      unfold seg6AccY214
      linear_combination r5562
    have ha3 : 3021 * rho 5954 * rho 5955 = rho 5956 := by
      linear_combination r5563
    have ha4 : rho 5957 * (1 + rho 5956) = rho 5954 + rho 5955 := by
      linear_combination r5564
    have ha5 : rho 5958 * (1 - rho 5956) = rho 5953 - rho 5954 - rho 5955 := by
      linear_combination r5565
    have haddx :
        rho 5957 * (1 + 3021 * (rho 5951 * seg6AccX214 rho) * (rho 5950 * seg6AccY214 rho)) =
          rho 5951 * seg6AccX214 rho + rho 5950 * seg6AccY214 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5958 * (1 - 3021 * (rho 5951 * seg6AccX214 rho) * (rho 5950 * seg6AccY214 rho)) =
          (-1) * (rho 5951 * seg6AccX214 rho) - rho 5950 * seg6AccY214 rho +
            (seg6AccY214 rho - seg6AccX214 rho * (-1)) * (rho 5950 + rho 5951) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5958 * (1 - rho 5956) = rho 5953 - rho 5954 - rho 5955 := ha5
        _ = (-1) * rho 5954 - rho 5955 + (seg6AccY214 rho - seg6AccX214 rho * (-1)) * (rho 5950 + rho 5951) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX215 rho = seg6AccX214 rho - Bool.toZMod bit * (seg6AccX214 rho - rho 5957) := by
      have hd : rho 5959 = Bool.toZMod bit * (rho 5957 - seg6AccX214 rho) := by
        rw [← hbit]
        unfold seg6AccX214
        linear_combination -r5566
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY215 rho = seg6AccY214 rho - Bool.toZMod bit * (seg6AccY214 rho - rho 5958) := by
      have hd : rho 5960 = Bool.toZMod bit * (rho 5958 - seg6AccY214 rho) := by
        rw [← hbit]
        unfold seg6AccY214
        linear_combination -r5567
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5950 * rho 5951 = rho 5961 := by linear_combination r5568
    have hd1 : rho 5950 * rho 5950 = rho 5962 := by linear_combination r5569
    have hd2 : rho 5951 * rho 5951 = rho 5963 := by linear_combination r5570
    have hd3 : rho 5964 * (rho 5951 * rho 5951 + rho 5950 * rho 5950 * (-1)) = 2 * (rho 5950 * rho 5951) := by
      rw [hd0, hd1, hd2]
      linear_combination r5571
    have hd4 : rho 5965 * (2 - (rho 5951 * rho 5951 + rho 5950 * rho 5950 * (-1))) = rho 5951 * rho 5951 - rho 5950 * rho 5950 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5572
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX214 rho : Seg6.F), (seg6AccY214 rho : Seg6.F)⟩
      ⟨(rho 5950 : Seg6.F), (rho 5951 : Seg6.F)⟩
      ⟨(rho 5957 : Seg6.F), (rho 5958 : Seg6.F)⟩
      ⟨(seg6AccX215 rho : Seg6.F), (seg6AccY215 rho : Seg6.F)⟩
      ⟨(rho 5964 : Seg6.F), (rho 5965 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung214

theorem seg6_rows215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5573 rho ∧ Seg6.relationRow5574 rho ∧ Seg6.relationRow5575 rho ∧ Seg6.relationRow5576 rho ∧ Seg6.relationRow5577 rho ∧ Seg6.relationRow5578 rho ∧ Seg6.relationRow5579 rho ∧ Seg6.relationRow5580 rho ∧ Seg6.relationRow5581 rho ∧ Seg6.relationRow5582 rho ∧ Seg6.relationRow5583 rho ∧ Seg6.relationRow5584 rho ∧ Seg6.relationRow5585 rho ∧ Seg6.relationRow5586 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩

theorem seg6_rung215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2099 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX215 rho : Seg6.F), (seg6AccY215 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5964 : Seg6.F), (rho 5965 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX215 rho : Seg6.F), (seg6AccY215 rho : Seg6.F)⟩
        ⟨(rho 5964 : Seg6.F), (rho 5965 : Seg6.F)⟩
        ⟨(seg6AccX216 rho : Seg6.F), (seg6AccY216 rho : Seg6.F)⟩
        ⟨(rho 5978 : Seg6.F), (rho 5979 : Seg6.F)⟩ := by
  obtain ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩ := seg6_rows215 rho h
  unfold Seg6.relationRow5573 Seg6.relationLc1163 at r5573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5573
  unfold Seg6.relationRow5574 at r5574
  unfold Seg6.relationRow5575 Seg6.relationLc1164 at r5575
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5575
  unfold Seg6.relationRow5576 Seg6.relationLc1165 at r5576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5576
  unfold Seg6.relationRow5577 at r5577
  unfold Seg6.relationRow5578 at r5578
  unfold Seg6.relationRow5579 at r5579
  unfold Seg6.relationRow5580 Seg6.relationLc1166 at r5580
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5580
  unfold Seg6.relationRow5581 Seg6.relationLc1167 at r5581
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5581
  unfold Seg6.relationRow5582 at r5582
  unfold Seg6.relationRow5583 at r5583
  unfold Seg6.relationRow5584 at r5584
  unfold Seg6.relationRow5585 at r5585
  unfold Seg6.relationRow5586 at r5586
  have hrung215 (bit : Bool) (hbit : rho 2099 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX215 rho : Seg6.F), (seg6AccY215 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5964 : Seg6.F), (rho 5965 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX215 rho : Seg6.F), (seg6AccY215 rho : Seg6.F)⟩
        ⟨(rho 5964 : Seg6.F), (rho 5965 : Seg6.F)⟩
        ⟨(seg6AccX216 rho : Seg6.F), (seg6AccY216 rho : Seg6.F)⟩
        ⟨(rho 5978 : Seg6.F), (rho 5979 : Seg6.F)⟩ := by
    have hnextx : seg6AccX216 rho = seg6AccX215 rho + rho 5973 := by
      unfold seg6AccX216 seg6AccX215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 65]
      ring
    have hnexty : seg6AccY216 rho = seg6AccY215 rho + rho 5974 := by
      unfold seg6AccY216 seg6AccY215
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 65]
      ring
    have hsum : seg6AccX215 rho + seg6AccY215 rho = rho 5966 := by
      unfold seg6AccX215 seg6AccY215
      linear_combination r5573
    have ha0 : (rho 5964 + rho 5965) * (seg6AccX215 rho + seg6AccY215 rho) = rho 5967 := by
      rw [hsum]
      linear_combination r5574
    have ha1 : rho 5965 * seg6AccX215 rho = rho 5968 := by
      unfold seg6AccX215
      linear_combination r5575
    have ha2 : rho 5964 * seg6AccY215 rho = rho 5969 := by
      unfold seg6AccY215
      linear_combination r5576
    have ha3 : 3021 * rho 5968 * rho 5969 = rho 5970 := by
      linear_combination r5577
    have ha4 : rho 5971 * (1 + rho 5970) = rho 5968 + rho 5969 := by
      linear_combination r5578
    have ha5 : rho 5972 * (1 - rho 5970) = rho 5967 - rho 5968 - rho 5969 := by
      linear_combination r5579
    have haddx :
        rho 5971 * (1 + 3021 * (rho 5965 * seg6AccX215 rho) * (rho 5964 * seg6AccY215 rho)) =
          rho 5965 * seg6AccX215 rho + rho 5964 * seg6AccY215 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5972 * (1 - 3021 * (rho 5965 * seg6AccX215 rho) * (rho 5964 * seg6AccY215 rho)) =
          (-1) * (rho 5965 * seg6AccX215 rho) - rho 5964 * seg6AccY215 rho +
            (seg6AccY215 rho - seg6AccX215 rho * (-1)) * (rho 5964 + rho 5965) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5972 * (1 - rho 5970) = rho 5967 - rho 5968 - rho 5969 := ha5
        _ = (-1) * rho 5968 - rho 5969 + (seg6AccY215 rho - seg6AccX215 rho * (-1)) * (rho 5964 + rho 5965) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX216 rho = seg6AccX215 rho - Bool.toZMod bit * (seg6AccX215 rho - rho 5971) := by
      have hd : rho 5973 = Bool.toZMod bit * (rho 5971 - seg6AccX215 rho) := by
        rw [← hbit]
        unfold seg6AccX215
        linear_combination -r5580
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY216 rho = seg6AccY215 rho - Bool.toZMod bit * (seg6AccY215 rho - rho 5972) := by
      have hd : rho 5974 = Bool.toZMod bit * (rho 5972 - seg6AccY215 rho) := by
        rw [← hbit]
        unfold seg6AccY215
        linear_combination -r5581
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5964 * rho 5965 = rho 5975 := by linear_combination r5582
    have hd1 : rho 5964 * rho 5964 = rho 5976 := by linear_combination r5583
    have hd2 : rho 5965 * rho 5965 = rho 5977 := by linear_combination r5584
    have hd3 : rho 5978 * (rho 5965 * rho 5965 + rho 5964 * rho 5964 * (-1)) = 2 * (rho 5964 * rho 5965) := by
      rw [hd0, hd1, hd2]
      linear_combination r5585
    have hd4 : rho 5979 * (2 - (rho 5965 * rho 5965 + rho 5964 * rho 5964 * (-1))) = rho 5965 * rho 5965 - rho 5964 * rho 5964 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5586
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX215 rho : Seg6.F), (seg6AccY215 rho : Seg6.F)⟩
      ⟨(rho 5964 : Seg6.F), (rho 5965 : Seg6.F)⟩
      ⟨(rho 5971 : Seg6.F), (rho 5972 : Seg6.F)⟩
      ⟨(seg6AccX216 rho : Seg6.F), (seg6AccY216 rho : Seg6.F)⟩
      ⟨(rho 5978 : Seg6.F), (rho 5979 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung215

theorem seg6_rows216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5587 rho ∧ Seg6.relationRow5588 rho ∧ Seg6.relationRow5589 rho ∧ Seg6.relationRow5590 rho ∧ Seg6.relationRow5591 rho ∧ Seg6.relationRow5592 rho ∧ Seg6.relationRow5593 rho ∧ Seg6.relationRow5594 rho ∧ Seg6.relationRow5595 rho ∧ Seg6.relationRow5596 rho ∧ Seg6.relationRow5597 rho ∧ Seg6.relationRow5598 rho ∧ Seg6.relationRow5599 rho ∧ Seg6.relationRow5600 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    p70, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg6.relationPart70 at p70
  rcases p70 with ⟨r5600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩

theorem seg6_rung216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2100 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX216 rho : Seg6.F), (seg6AccY216 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5978 : Seg6.F), (rho 5979 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX216 rho : Seg6.F), (seg6AccY216 rho : Seg6.F)⟩
        ⟨(rho 5978 : Seg6.F), (rho 5979 : Seg6.F)⟩
        ⟨(seg6AccX217 rho : Seg6.F), (seg6AccY217 rho : Seg6.F)⟩
        ⟨(rho 5992 : Seg6.F), (rho 5993 : Seg6.F)⟩ := by
  obtain ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599, r5600⟩ := seg6_rows216 rho h
  unfold Seg6.relationRow5587 Seg6.relationLc1168 at r5587
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5587
  unfold Seg6.relationRow5588 at r5588
  unfold Seg6.relationRow5589 Seg6.relationLc1169 at r5589
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5589
  unfold Seg6.relationRow5590 Seg6.relationLc1170 at r5590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5590
  unfold Seg6.relationRow5591 at r5591
  unfold Seg6.relationRow5592 at r5592
  unfold Seg6.relationRow5593 at r5593
  unfold Seg6.relationRow5594 Seg6.relationLc1171 at r5594
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5594
  unfold Seg6.relationRow5595 Seg6.relationLc1172 at r5595
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5595
  unfold Seg6.relationRow5596 at r5596
  unfold Seg6.relationRow5597 at r5597
  unfold Seg6.relationRow5598 at r5598
  unfold Seg6.relationRow5599 at r5599
  unfold Seg6.relationRow5600 at r5600
  have hrung216 (bit : Bool) (hbit : rho 2100 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX216 rho : Seg6.F), (seg6AccY216 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5978 : Seg6.F), (rho 5979 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX216 rho : Seg6.F), (seg6AccY216 rho : Seg6.F)⟩
        ⟨(rho 5978 : Seg6.F), (rho 5979 : Seg6.F)⟩
        ⟨(seg6AccX217 rho : Seg6.F), (seg6AccY217 rho : Seg6.F)⟩
        ⟨(rho 5992 : Seg6.F), (rho 5993 : Seg6.F)⟩ := by
    have hnextx : seg6AccX217 rho = seg6AccX216 rho + rho 5987 := by
      unfold seg6AccX217 seg6AccX216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 66]
      ring
    have hnexty : seg6AccY217 rho = seg6AccY216 rho + rho 5988 := by
      unfold seg6AccY217 seg6AccY216
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 66]
      ring
    have hsum : seg6AccX216 rho + seg6AccY216 rho = rho 5980 := by
      unfold seg6AccX216 seg6AccY216
      linear_combination r5587
    have ha0 : (rho 5978 + rho 5979) * (seg6AccX216 rho + seg6AccY216 rho) = rho 5981 := by
      rw [hsum]
      linear_combination r5588
    have ha1 : rho 5979 * seg6AccX216 rho = rho 5982 := by
      unfold seg6AccX216
      linear_combination r5589
    have ha2 : rho 5978 * seg6AccY216 rho = rho 5983 := by
      unfold seg6AccY216
      linear_combination r5590
    have ha3 : 3021 * rho 5982 * rho 5983 = rho 5984 := by
      linear_combination r5591
    have ha4 : rho 5985 * (1 + rho 5984) = rho 5982 + rho 5983 := by
      linear_combination r5592
    have ha5 : rho 5986 * (1 - rho 5984) = rho 5981 - rho 5982 - rho 5983 := by
      linear_combination r5593
    have haddx :
        rho 5985 * (1 + 3021 * (rho 5979 * seg6AccX216 rho) * (rho 5978 * seg6AccY216 rho)) =
          rho 5979 * seg6AccX216 rho + rho 5978 * seg6AccY216 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5986 * (1 - 3021 * (rho 5979 * seg6AccX216 rho) * (rho 5978 * seg6AccY216 rho)) =
          (-1) * (rho 5979 * seg6AccX216 rho) - rho 5978 * seg6AccY216 rho +
            (seg6AccY216 rho - seg6AccX216 rho * (-1)) * (rho 5978 + rho 5979) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5986 * (1 - rho 5984) = rho 5981 - rho 5982 - rho 5983 := ha5
        _ = (-1) * rho 5982 - rho 5983 + (seg6AccY216 rho - seg6AccX216 rho * (-1)) * (rho 5978 + rho 5979) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX217 rho = seg6AccX216 rho - Bool.toZMod bit * (seg6AccX216 rho - rho 5985) := by
      have hd : rho 5987 = Bool.toZMod bit * (rho 5985 - seg6AccX216 rho) := by
        rw [← hbit]
        unfold seg6AccX216
        linear_combination -r5594
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY217 rho = seg6AccY216 rho - Bool.toZMod bit * (seg6AccY216 rho - rho 5986) := by
      have hd : rho 5988 = Bool.toZMod bit * (rho 5986 - seg6AccY216 rho) := by
        rw [← hbit]
        unfold seg6AccY216
        linear_combination -r5595
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5978 * rho 5979 = rho 5989 := by linear_combination r5596
    have hd1 : rho 5978 * rho 5978 = rho 5990 := by linear_combination r5597
    have hd2 : rho 5979 * rho 5979 = rho 5991 := by linear_combination r5598
    have hd3 : rho 5992 * (rho 5979 * rho 5979 + rho 5978 * rho 5978 * (-1)) = 2 * (rho 5978 * rho 5979) := by
      rw [hd0, hd1, hd2]
      linear_combination r5599
    have hd4 : rho 5993 * (2 - (rho 5979 * rho 5979 + rho 5978 * rho 5978 * (-1))) = rho 5979 * rho 5979 - rho 5978 * rho 5978 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5600
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX216 rho : Seg6.F), (seg6AccY216 rho : Seg6.F)⟩
      ⟨(rho 5978 : Seg6.F), (rho 5979 : Seg6.F)⟩
      ⟨(rho 5985 : Seg6.F), (rho 5986 : Seg6.F)⟩
      ⟨(seg6AccX217 rho : Seg6.F), (seg6AccY217 rho : Seg6.F)⟩
      ⟨(rho 5992 : Seg6.F), (rho 5993 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung216

theorem seg6_rows217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5601 rho ∧ Seg6.relationRow5602 rho ∧ Seg6.relationRow5603 rho ∧ Seg6.relationRow5604 rho ∧ Seg6.relationRow5605 rho ∧ Seg6.relationRow5606 rho ∧ Seg6.relationRow5607 rho ∧ Seg6.relationRow5608 rho ∧ Seg6.relationRow5609 rho ∧ Seg6.relationRow5610 rho ∧ Seg6.relationRow5611 rho ∧ Seg6.relationRow5612 rho ∧ Seg6.relationRow5613 rho ∧ Seg6.relationRow5614 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart70 at p70
  rcases p70 with ⟨_, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩

theorem seg6_rung217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2101 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX217 rho : Seg6.F), (seg6AccY217 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5992 : Seg6.F), (rho 5993 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX217 rho : Seg6.F), (seg6AccY217 rho : Seg6.F)⟩
        ⟨(rho 5992 : Seg6.F), (rho 5993 : Seg6.F)⟩
        ⟨(seg6AccX218 rho : Seg6.F), (seg6AccY218 rho : Seg6.F)⟩
        ⟨(rho 6006 : Seg6.F), (rho 6007 : Seg6.F)⟩ := by
  obtain ⟨r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614⟩ := seg6_rows217 rho h
  unfold Seg6.relationRow5601 Seg6.relationLc1173 at r5601
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5601
  unfold Seg6.relationRow5602 at r5602
  unfold Seg6.relationRow5603 Seg6.relationLc1174 at r5603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5603
  unfold Seg6.relationRow5604 Seg6.relationLc1175 at r5604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5604
  unfold Seg6.relationRow5605 at r5605
  unfold Seg6.relationRow5606 at r5606
  unfold Seg6.relationRow5607 at r5607
  unfold Seg6.relationRow5608 Seg6.relationLc1176 at r5608
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5608
  unfold Seg6.relationRow5609 Seg6.relationLc1177 at r5609
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5609
  unfold Seg6.relationRow5610 at r5610
  unfold Seg6.relationRow5611 at r5611
  unfold Seg6.relationRow5612 at r5612
  unfold Seg6.relationRow5613 at r5613
  unfold Seg6.relationRow5614 at r5614
  have hrung217 (bit : Bool) (hbit : rho 2101 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX217 rho : Seg6.F), (seg6AccY217 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5992 : Seg6.F), (rho 5993 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX217 rho : Seg6.F), (seg6AccY217 rho : Seg6.F)⟩
        ⟨(rho 5992 : Seg6.F), (rho 5993 : Seg6.F)⟩
        ⟨(seg6AccX218 rho : Seg6.F), (seg6AccY218 rho : Seg6.F)⟩
        ⟨(rho 6006 : Seg6.F), (rho 6007 : Seg6.F)⟩ := by
    have hnextx : seg6AccX218 rho = seg6AccX217 rho + rho 6001 := by
      unfold seg6AccX218 seg6AccX217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 67]
      ring
    have hnexty : seg6AccY218 rho = seg6AccY217 rho + rho 6002 := by
      unfold seg6AccY218 seg6AccY217
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 67]
      ring
    have hsum : seg6AccX217 rho + seg6AccY217 rho = rho 5994 := by
      unfold seg6AccX217 seg6AccY217
      linear_combination r5601
    have ha0 : (rho 5992 + rho 5993) * (seg6AccX217 rho + seg6AccY217 rho) = rho 5995 := by
      rw [hsum]
      linear_combination r5602
    have ha1 : rho 5993 * seg6AccX217 rho = rho 5996 := by
      unfold seg6AccX217
      linear_combination r5603
    have ha2 : rho 5992 * seg6AccY217 rho = rho 5997 := by
      unfold seg6AccY217
      linear_combination r5604
    have ha3 : 3021 * rho 5996 * rho 5997 = rho 5998 := by
      linear_combination r5605
    have ha4 : rho 5999 * (1 + rho 5998) = rho 5996 + rho 5997 := by
      linear_combination r5606
    have ha5 : rho 6000 * (1 - rho 5998) = rho 5995 - rho 5996 - rho 5997 := by
      linear_combination r5607
    have haddx :
        rho 5999 * (1 + 3021 * (rho 5993 * seg6AccX217 rho) * (rho 5992 * seg6AccY217 rho)) =
          rho 5993 * seg6AccX217 rho + rho 5992 * seg6AccY217 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6000 * (1 - 3021 * (rho 5993 * seg6AccX217 rho) * (rho 5992 * seg6AccY217 rho)) =
          (-1) * (rho 5993 * seg6AccX217 rho) - rho 5992 * seg6AccY217 rho +
            (seg6AccY217 rho - seg6AccX217 rho * (-1)) * (rho 5992 + rho 5993) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6000 * (1 - rho 5998) = rho 5995 - rho 5996 - rho 5997 := ha5
        _ = (-1) * rho 5996 - rho 5997 + (seg6AccY217 rho - seg6AccX217 rho * (-1)) * (rho 5992 + rho 5993) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX218 rho = seg6AccX217 rho - Bool.toZMod bit * (seg6AccX217 rho - rho 5999) := by
      have hd : rho 6001 = Bool.toZMod bit * (rho 5999 - seg6AccX217 rho) := by
        rw [← hbit]
        unfold seg6AccX217
        linear_combination -r5608
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY218 rho = seg6AccY217 rho - Bool.toZMod bit * (seg6AccY217 rho - rho 6000) := by
      have hd : rho 6002 = Bool.toZMod bit * (rho 6000 - seg6AccY217 rho) := by
        rw [← hbit]
        unfold seg6AccY217
        linear_combination -r5609
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5992 * rho 5993 = rho 6003 := by linear_combination r5610
    have hd1 : rho 5992 * rho 5992 = rho 6004 := by linear_combination r5611
    have hd2 : rho 5993 * rho 5993 = rho 6005 := by linear_combination r5612
    have hd3 : rho 6006 * (rho 5993 * rho 5993 + rho 5992 * rho 5992 * (-1)) = 2 * (rho 5992 * rho 5993) := by
      rw [hd0, hd1, hd2]
      linear_combination r5613
    have hd4 : rho 6007 * (2 - (rho 5993 * rho 5993 + rho 5992 * rho 5992 * (-1))) = rho 5993 * rho 5993 - rho 5992 * rho 5992 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX217 rho : Seg6.F), (seg6AccY217 rho : Seg6.F)⟩
      ⟨(rho 5992 : Seg6.F), (rho 5993 : Seg6.F)⟩
      ⟨(rho 5999 : Seg6.F), (rho 6000 : Seg6.F)⟩
      ⟨(seg6AccX218 rho : Seg6.F), (seg6AccY218 rho : Seg6.F)⟩
      ⟨(rho 6006 : Seg6.F), (rho 6007 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung217

theorem seg6_rows218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5615 rho ∧ Seg6.relationRow5616 rho ∧ Seg6.relationRow5617 rho ∧ Seg6.relationRow5618 rho ∧ Seg6.relationRow5619 rho ∧ Seg6.relationRow5620 rho ∧ Seg6.relationRow5621 rho ∧ Seg6.relationRow5622 rho ∧ Seg6.relationRow5623 rho ∧ Seg6.relationRow5624 rho ∧ Seg6.relationRow5625 rho ∧ Seg6.relationRow5626 rho ∧ Seg6.relationRow5627 rho ∧ Seg6.relationRow5628 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩

theorem seg6_rung218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2102 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX218 rho : Seg6.F), (seg6AccY218 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6006 : Seg6.F), (rho 6007 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX218 rho : Seg6.F), (seg6AccY218 rho : Seg6.F)⟩
        ⟨(rho 6006 : Seg6.F), (rho 6007 : Seg6.F)⟩
        ⟨(seg6AccX219 rho : Seg6.F), (seg6AccY219 rho : Seg6.F)⟩
        ⟨(rho 6020 : Seg6.F), (rho 6021 : Seg6.F)⟩ := by
  obtain ⟨r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628⟩ := seg6_rows218 rho h
  unfold Seg6.relationRow5615 Seg6.relationLc1178 at r5615
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5615
  unfold Seg6.relationRow5616 at r5616
  unfold Seg6.relationRow5617 Seg6.relationLc1179 at r5617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5617
  unfold Seg6.relationRow5618 Seg6.relationLc1180 at r5618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5618
  unfold Seg6.relationRow5619 at r5619
  unfold Seg6.relationRow5620 at r5620
  unfold Seg6.relationRow5621 at r5621
  unfold Seg6.relationRow5622 Seg6.relationLc1181 at r5622
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5622
  unfold Seg6.relationRow5623 Seg6.relationLc1182 at r5623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5623
  unfold Seg6.relationRow5624 at r5624
  unfold Seg6.relationRow5625 at r5625
  unfold Seg6.relationRow5626 at r5626
  unfold Seg6.relationRow5627 at r5627
  unfold Seg6.relationRow5628 at r5628
  have hrung218 (bit : Bool) (hbit : rho 2102 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX218 rho : Seg6.F), (seg6AccY218 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6006 : Seg6.F), (rho 6007 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX218 rho : Seg6.F), (seg6AccY218 rho : Seg6.F)⟩
        ⟨(rho 6006 : Seg6.F), (rho 6007 : Seg6.F)⟩
        ⟨(seg6AccX219 rho : Seg6.F), (seg6AccY219 rho : Seg6.F)⟩
        ⟨(rho 6020 : Seg6.F), (rho 6021 : Seg6.F)⟩ := by
    have hnextx : seg6AccX219 rho = seg6AccX218 rho + rho 6015 := by
      unfold seg6AccX219 seg6AccX218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 68]
      ring
    have hnexty : seg6AccY219 rho = seg6AccY218 rho + rho 6016 := by
      unfold seg6AccY219 seg6AccY218
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 68]
      ring
    have hsum : seg6AccX218 rho + seg6AccY218 rho = rho 6008 := by
      unfold seg6AccX218 seg6AccY218
      linear_combination r5615
    have ha0 : (rho 6006 + rho 6007) * (seg6AccX218 rho + seg6AccY218 rho) = rho 6009 := by
      rw [hsum]
      linear_combination r5616
    have ha1 : rho 6007 * seg6AccX218 rho = rho 6010 := by
      unfold seg6AccX218
      linear_combination r5617
    have ha2 : rho 6006 * seg6AccY218 rho = rho 6011 := by
      unfold seg6AccY218
      linear_combination r5618
    have ha3 : 3021 * rho 6010 * rho 6011 = rho 6012 := by
      linear_combination r5619
    have ha4 : rho 6013 * (1 + rho 6012) = rho 6010 + rho 6011 := by
      linear_combination r5620
    have ha5 : rho 6014 * (1 - rho 6012) = rho 6009 - rho 6010 - rho 6011 := by
      linear_combination r5621
    have haddx :
        rho 6013 * (1 + 3021 * (rho 6007 * seg6AccX218 rho) * (rho 6006 * seg6AccY218 rho)) =
          rho 6007 * seg6AccX218 rho + rho 6006 * seg6AccY218 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6014 * (1 - 3021 * (rho 6007 * seg6AccX218 rho) * (rho 6006 * seg6AccY218 rho)) =
          (-1) * (rho 6007 * seg6AccX218 rho) - rho 6006 * seg6AccY218 rho +
            (seg6AccY218 rho - seg6AccX218 rho * (-1)) * (rho 6006 + rho 6007) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6014 * (1 - rho 6012) = rho 6009 - rho 6010 - rho 6011 := ha5
        _ = (-1) * rho 6010 - rho 6011 + (seg6AccY218 rho - seg6AccX218 rho * (-1)) * (rho 6006 + rho 6007) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX219 rho = seg6AccX218 rho - Bool.toZMod bit * (seg6AccX218 rho - rho 6013) := by
      have hd : rho 6015 = Bool.toZMod bit * (rho 6013 - seg6AccX218 rho) := by
        rw [← hbit]
        unfold seg6AccX218
        linear_combination -r5622
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY219 rho = seg6AccY218 rho - Bool.toZMod bit * (seg6AccY218 rho - rho 6014) := by
      have hd : rho 6016 = Bool.toZMod bit * (rho 6014 - seg6AccY218 rho) := by
        rw [← hbit]
        unfold seg6AccY218
        linear_combination -r5623
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6006 * rho 6007 = rho 6017 := by linear_combination r5624
    have hd1 : rho 6006 * rho 6006 = rho 6018 := by linear_combination r5625
    have hd2 : rho 6007 * rho 6007 = rho 6019 := by linear_combination r5626
    have hd3 : rho 6020 * (rho 6007 * rho 6007 + rho 6006 * rho 6006 * (-1)) = 2 * (rho 6006 * rho 6007) := by
      rw [hd0, hd1, hd2]
      linear_combination r5627
    have hd4 : rho 6021 * (2 - (rho 6007 * rho 6007 + rho 6006 * rho 6006 * (-1))) = rho 6007 * rho 6007 - rho 6006 * rho 6006 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX218 rho : Seg6.F), (seg6AccY218 rho : Seg6.F)⟩
      ⟨(rho 6006 : Seg6.F), (rho 6007 : Seg6.F)⟩
      ⟨(rho 6013 : Seg6.F), (rho 6014 : Seg6.F)⟩
      ⟨(seg6AccX219 rho : Seg6.F), (seg6AccY219 rho : Seg6.F)⟩
      ⟨(rho 6020 : Seg6.F), (rho 6021 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung218

theorem seg6_rows219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5629 rho ∧ Seg6.relationRow5630 rho ∧ Seg6.relationRow5631 rho ∧ Seg6.relationRow5632 rho ∧ Seg6.relationRow5633 rho ∧ Seg6.relationRow5634 rho ∧ Seg6.relationRow5635 rho ∧ Seg6.relationRow5636 rho ∧ Seg6.relationRow5637 rho ∧ Seg6.relationRow5638 rho ∧ Seg6.relationRow5639 rho ∧ Seg6.relationRow5640 rho ∧ Seg6.relationRow5641 rho ∧ Seg6.relationRow5642 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩

theorem seg6_rung219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2103 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX219 rho : Seg6.F), (seg6AccY219 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6020 : Seg6.F), (rho 6021 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX219 rho : Seg6.F), (seg6AccY219 rho : Seg6.F)⟩
        ⟨(rho 6020 : Seg6.F), (rho 6021 : Seg6.F)⟩
        ⟨(seg6AccX220 rho : Seg6.F), (seg6AccY220 rho : Seg6.F)⟩
        ⟨(rho 6034 : Seg6.F), (rho 6035 : Seg6.F)⟩ := by
  obtain ⟨r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642⟩ := seg6_rows219 rho h
  unfold Seg6.relationRow5629 Seg6.relationLc1183 at r5629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5629
  unfold Seg6.relationRow5630 at r5630
  unfold Seg6.relationRow5631 Seg6.relationLc1184 at r5631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5631
  unfold Seg6.relationRow5632 Seg6.relationLc1185 at r5632
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5632
  unfold Seg6.relationRow5633 at r5633
  unfold Seg6.relationRow5634 at r5634
  unfold Seg6.relationRow5635 at r5635
  unfold Seg6.relationRow5636 Seg6.relationLc1186 at r5636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5636
  unfold Seg6.relationRow5637 Seg6.relationLc1187 at r5637
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5637
  unfold Seg6.relationRow5638 at r5638
  unfold Seg6.relationRow5639 at r5639
  unfold Seg6.relationRow5640 at r5640
  unfold Seg6.relationRow5641 at r5641
  unfold Seg6.relationRow5642 at r5642
  have hrung219 (bit : Bool) (hbit : rho 2103 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX219 rho : Seg6.F), (seg6AccY219 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6020 : Seg6.F), (rho 6021 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX219 rho : Seg6.F), (seg6AccY219 rho : Seg6.F)⟩
        ⟨(rho 6020 : Seg6.F), (rho 6021 : Seg6.F)⟩
        ⟨(seg6AccX220 rho : Seg6.F), (seg6AccY220 rho : Seg6.F)⟩
        ⟨(rho 6034 : Seg6.F), (rho 6035 : Seg6.F)⟩ := by
    have hnextx : seg6AccX220 rho = seg6AccX219 rho + rho 6029 := by
      unfold seg6AccX220 seg6AccX219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 69]
      ring
    have hnexty : seg6AccY220 rho = seg6AccY219 rho + rho 6030 := by
      unfold seg6AccY220 seg6AccY219
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 69]
      ring
    have hsum : seg6AccX219 rho + seg6AccY219 rho = rho 6022 := by
      unfold seg6AccX219 seg6AccY219
      linear_combination r5629
    have ha0 : (rho 6020 + rho 6021) * (seg6AccX219 rho + seg6AccY219 rho) = rho 6023 := by
      rw [hsum]
      linear_combination r5630
    have ha1 : rho 6021 * seg6AccX219 rho = rho 6024 := by
      unfold seg6AccX219
      linear_combination r5631
    have ha2 : rho 6020 * seg6AccY219 rho = rho 6025 := by
      unfold seg6AccY219
      linear_combination r5632
    have ha3 : 3021 * rho 6024 * rho 6025 = rho 6026 := by
      linear_combination r5633
    have ha4 : rho 6027 * (1 + rho 6026) = rho 6024 + rho 6025 := by
      linear_combination r5634
    have ha5 : rho 6028 * (1 - rho 6026) = rho 6023 - rho 6024 - rho 6025 := by
      linear_combination r5635
    have haddx :
        rho 6027 * (1 + 3021 * (rho 6021 * seg6AccX219 rho) * (rho 6020 * seg6AccY219 rho)) =
          rho 6021 * seg6AccX219 rho + rho 6020 * seg6AccY219 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6028 * (1 - 3021 * (rho 6021 * seg6AccX219 rho) * (rho 6020 * seg6AccY219 rho)) =
          (-1) * (rho 6021 * seg6AccX219 rho) - rho 6020 * seg6AccY219 rho +
            (seg6AccY219 rho - seg6AccX219 rho * (-1)) * (rho 6020 + rho 6021) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6028 * (1 - rho 6026) = rho 6023 - rho 6024 - rho 6025 := ha5
        _ = (-1) * rho 6024 - rho 6025 + (seg6AccY219 rho - seg6AccX219 rho * (-1)) * (rho 6020 + rho 6021) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX220 rho = seg6AccX219 rho - Bool.toZMod bit * (seg6AccX219 rho - rho 6027) := by
      have hd : rho 6029 = Bool.toZMod bit * (rho 6027 - seg6AccX219 rho) := by
        rw [← hbit]
        unfold seg6AccX219
        linear_combination -r5636
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY220 rho = seg6AccY219 rho - Bool.toZMod bit * (seg6AccY219 rho - rho 6028) := by
      have hd : rho 6030 = Bool.toZMod bit * (rho 6028 - seg6AccY219 rho) := by
        rw [← hbit]
        unfold seg6AccY219
        linear_combination -r5637
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6020 * rho 6021 = rho 6031 := by linear_combination r5638
    have hd1 : rho 6020 * rho 6020 = rho 6032 := by linear_combination r5639
    have hd2 : rho 6021 * rho 6021 = rho 6033 := by linear_combination r5640
    have hd3 : rho 6034 * (rho 6021 * rho 6021 + rho 6020 * rho 6020 * (-1)) = 2 * (rho 6020 * rho 6021) := by
      rw [hd0, hd1, hd2]
      linear_combination r5641
    have hd4 : rho 6035 * (2 - (rho 6021 * rho 6021 + rho 6020 * rho 6020 * (-1))) = rho 6021 * rho 6021 - rho 6020 * rho 6020 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5642
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX219 rho : Seg6.F), (seg6AccY219 rho : Seg6.F)⟩
      ⟨(rho 6020 : Seg6.F), (rho 6021 : Seg6.F)⟩
      ⟨(rho 6027 : Seg6.F), (rho 6028 : Seg6.F)⟩
      ⟨(seg6AccX220 rho : Seg6.F), (seg6AccY220 rho : Seg6.F)⟩
      ⟨(rho 6034 : Seg6.F), (rho 6035 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung219

theorem seg6_hstep_c19 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1884 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 209 ≤ i → i < 220 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung209 rho h bits[209]! (hbitAt 209 (by omega)) hacc hcur
  · exact seg6_rung210 rho h bits[210]! (hbitAt 210 (by omega)) hacc hcur
  · exact seg6_rung211 rho h bits[211]! (hbitAt 211 (by omega)) hacc hcur
  · exact seg6_rung212 rho h bits[212]! (hbitAt 212 (by omega)) hacc hcur
  · exact seg6_rung213 rho h bits[213]! (hbitAt 213 (by omega)) hacc hcur
  · exact seg6_rung214 rho h bits[214]! (hbitAt 214 (by omega)) hacc hcur
  · exact seg6_rung215 rho h bits[215]! (hbitAt 215 (by omega)) hacc hcur
  · exact seg6_rung216 rho h bits[216]! (hbitAt 216 (by omega)) hacc hcur
  · exact seg6_rung217 rho h bits[217]! (hbitAt 217 (by omega)) hacc hcur
  · exact seg6_rung218 rho h bits[218]! (hbitAt 218 (by omega)) hacc hcur
  · exact seg6_rung219 rho h bits[219]! (hbitAt 219 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

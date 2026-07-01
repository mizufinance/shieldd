import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4681 rho ∧ Seg16.relationRow4682 rho ∧ Seg16.relationRow4683 rho ∧ Seg16.relationRow4684 rho ∧ Seg16.relationRow4685 rho ∧ Seg16.relationRow4686 rho ∧ Seg16.relationRow4687 rho ∧ Seg16.relationRow4688 rho ∧ Seg16.relationRow4689 rho ∧ Seg16.relationRow4690 rho ∧ Seg16.relationRow4691 rho ∧ Seg16.relationRow4692 rho ∧ Seg16.relationRow4693 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693⟩

theorem seg16_rung132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15424 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
        ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩
        ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
        ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩ := by
  obtain ⟨r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693⟩ := seg16_rows132 rho h
  unfold Seg16.relationRow4681 at r4681
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4681
  unfold Seg16.relationRow4682 at r4682
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4682
  unfold Seg16.relationRow4683 at r4683
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4683
  unfold Seg16.relationRow4684 at r4684
  unfold Seg16.relationRow4685 at r4685
  unfold Seg16.relationRow4686 at r4686
  unfold Seg16.relationRow4687 at r4687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4687
  unfold Seg16.relationRow4688 at r4688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4688
  unfold Seg16.relationRow4689 at r4689
  unfold Seg16.relationRow4690 at r4690
  unfold Seg16.relationRow4691 at r4691
  unfold Seg16.relationRow4692 at r4692
  unfold Seg16.relationRow4693 at r4693
  have hrung132 (bit : Bool) (hbit : rho 15424 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
        ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩
        ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
        ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩ := by
    have hnextx : seg16AccX133 rho = seg16AccX132 rho + rho 17259 := by
      unfold seg16AccX133 seg16AccX132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 132]
      ring
    have hnexty : seg16AccY133 rho = seg16AccY132 rho + rho 17260 := by
      unfold seg16AccY133 seg16AccY132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 132]
      ring
    have ha0 : (rho 17251 + rho 17252) * (seg16AccX132 rho + seg16AccY132 rho) = rho 17253 := by
      unfold seg16AccX132 seg16AccY132
      linear_combination r4681
    have ha1 : rho 17252 * seg16AccX132 rho = rho 17254 := by
      unfold seg16AccX132
      linear_combination r4682
    have ha2 : rho 17251 * seg16AccY132 rho = rho 17255 := by
      unfold seg16AccY132
      linear_combination r4683
    have ha3 : 3021 * rho 17254 * rho 17255 = rho 17256 := by
      linear_combination r4684
    have ha4 : rho 17257 * (1 + rho 17256) = rho 17254 + rho 17255 := by
      linear_combination r4685
    have ha5 : rho 17258 * (1 - rho 17256) = rho 17253 - rho 17254 - rho 17255 := by
      linear_combination r4686
    have haddx :
        rho 17257 * (1 + 3021 * (rho 17252 * seg16AccX132 rho) * (rho 17251 * seg16AccY132 rho)) =
          rho 17252 * seg16AccX132 rho + rho 17251 * seg16AccY132 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17258 * (1 - 3021 * (rho 17252 * seg16AccX132 rho) * (rho 17251 * seg16AccY132 rho)) =
          (-1) * (rho 17252 * seg16AccX132 rho) - rho 17251 * seg16AccY132 rho +
            (seg16AccY132 rho - seg16AccX132 rho * (-1)) * (rho 17251 + rho 17252) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17258 * (1 - rho 17256) = rho 17253 - rho 17254 - rho 17255 := ha5
        _ = (-1) * rho 17254 - rho 17255 + (seg16AccY132 rho - seg16AccX132 rho * (-1)) * (rho 17251 + rho 17252) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX133 rho = seg16AccX132 rho - Bool.toZMod bit * (seg16AccX132 rho - rho 17257) := by
      have hd : rho 17259 = Bool.toZMod bit * (rho 17257 - seg16AccX132 rho) := by
        rw [← hbit]
        unfold seg16AccX132
        linear_combination -r4687
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY133 rho = seg16AccY132 rho - Bool.toZMod bit * (seg16AccY132 rho - rho 17258) := by
      have hd : rho 17260 = Bool.toZMod bit * (rho 17258 - seg16AccY132 rho) := by
        rw [← hbit]
        unfold seg16AccY132
        linear_combination -r4688
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17251 * rho 17252 = rho 17261 := by linear_combination r4689
    have hd1 : rho 17251 * rho 17251 = rho 17262 := by linear_combination r4690
    have hd2 : rho 17252 * rho 17252 = rho 17263 := by linear_combination r4691
    have hd3 : rho 17264 * (rho 17252 * rho 17252 + rho 17251 * rho 17251 * (-1)) = 2 * (rho 17251 * rho 17252) := by
      rw [hd0, hd1, hd2]
      linear_combination r4692
    have hd4 : rho 17265 * (2 - (rho 17252 * rho 17252 + rho 17251 * rho 17251 * (-1))) = rho 17252 * rho 17252 - rho 17251 * rho 17251 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4693
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX132 rho : Seg16.F), (seg16AccY132 rho : Seg16.F)⟩
      ⟨(rho 17251 : Seg16.F), (rho 17252 : Seg16.F)⟩
      ⟨(rho 17257 : Seg16.F), (rho 17258 : Seg16.F)⟩
      ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
      ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung132

theorem seg16_rows133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4694 rho ∧ Seg16.relationRow4695 rho ∧ Seg16.relationRow4696 rho ∧ Seg16.relationRow4697 rho ∧ Seg16.relationRow4698 rho ∧ Seg16.relationRow4699 rho ∧ Seg16.relationRow4700 rho ∧ Seg16.relationRow4701 rho ∧ Seg16.relationRow4702 rho ∧ Seg16.relationRow4703 rho ∧ Seg16.relationRow4704 rho ∧ Seg16.relationRow4705 rho ∧ Seg16.relationRow4706 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706⟩

theorem seg16_rung133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15425 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
        ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩
        ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
        ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩ := by
  obtain ⟨r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706⟩ := seg16_rows133 rho h
  unfold Seg16.relationRow4694 at r4694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4694
  unfold Seg16.relationRow4695 at r4695
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4695
  unfold Seg16.relationRow4696 at r4696
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4696
  unfold Seg16.relationRow4697 at r4697
  unfold Seg16.relationRow4698 at r4698
  unfold Seg16.relationRow4699 at r4699
  unfold Seg16.relationRow4700 at r4700
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4700
  unfold Seg16.relationRow4701 at r4701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4701
  unfold Seg16.relationRow4702 at r4702
  unfold Seg16.relationRow4703 at r4703
  unfold Seg16.relationRow4704 at r4704
  unfold Seg16.relationRow4705 at r4705
  unfold Seg16.relationRow4706 at r4706
  have hrung133 (bit : Bool) (hbit : rho 15425 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
        ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩
        ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
        ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩ := by
    have hnextx : seg16AccX134 rho = seg16AccX133 rho + rho 17272 := by
      unfold seg16AccX134 seg16AccX133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 133]
      ring
    have hnexty : seg16AccY134 rho = seg16AccY133 rho + rho 17273 := by
      unfold seg16AccY134 seg16AccY133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 133]
      ring
    have ha0 : (rho 17264 + rho 17265) * (seg16AccX133 rho + seg16AccY133 rho) = rho 17266 := by
      unfold seg16AccX133 seg16AccY133
      linear_combination r4694
    have ha1 : rho 17265 * seg16AccX133 rho = rho 17267 := by
      unfold seg16AccX133
      linear_combination r4695
    have ha2 : rho 17264 * seg16AccY133 rho = rho 17268 := by
      unfold seg16AccY133
      linear_combination r4696
    have ha3 : 3021 * rho 17267 * rho 17268 = rho 17269 := by
      linear_combination r4697
    have ha4 : rho 17270 * (1 + rho 17269) = rho 17267 + rho 17268 := by
      linear_combination r4698
    have ha5 : rho 17271 * (1 - rho 17269) = rho 17266 - rho 17267 - rho 17268 := by
      linear_combination r4699
    have haddx :
        rho 17270 * (1 + 3021 * (rho 17265 * seg16AccX133 rho) * (rho 17264 * seg16AccY133 rho)) =
          rho 17265 * seg16AccX133 rho + rho 17264 * seg16AccY133 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17271 * (1 - 3021 * (rho 17265 * seg16AccX133 rho) * (rho 17264 * seg16AccY133 rho)) =
          (-1) * (rho 17265 * seg16AccX133 rho) - rho 17264 * seg16AccY133 rho +
            (seg16AccY133 rho - seg16AccX133 rho * (-1)) * (rho 17264 + rho 17265) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17271 * (1 - rho 17269) = rho 17266 - rho 17267 - rho 17268 := ha5
        _ = (-1) * rho 17267 - rho 17268 + (seg16AccY133 rho - seg16AccX133 rho * (-1)) * (rho 17264 + rho 17265) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX134 rho = seg16AccX133 rho - Bool.toZMod bit * (seg16AccX133 rho - rho 17270) := by
      have hd : rho 17272 = Bool.toZMod bit * (rho 17270 - seg16AccX133 rho) := by
        rw [← hbit]
        unfold seg16AccX133
        linear_combination -r4700
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY134 rho = seg16AccY133 rho - Bool.toZMod bit * (seg16AccY133 rho - rho 17271) := by
      have hd : rho 17273 = Bool.toZMod bit * (rho 17271 - seg16AccY133 rho) := by
        rw [← hbit]
        unfold seg16AccY133
        linear_combination -r4701
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17264 * rho 17265 = rho 17274 := by linear_combination r4702
    have hd1 : rho 17264 * rho 17264 = rho 17275 := by linear_combination r4703
    have hd2 : rho 17265 * rho 17265 = rho 17276 := by linear_combination r4704
    have hd3 : rho 17277 * (rho 17265 * rho 17265 + rho 17264 * rho 17264 * (-1)) = 2 * (rho 17264 * rho 17265) := by
      rw [hd0, hd1, hd2]
      linear_combination r4705
    have hd4 : rho 17278 * (2 - (rho 17265 * rho 17265 + rho 17264 * rho 17264 * (-1))) = rho 17265 * rho 17265 - rho 17264 * rho 17264 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4706
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX133 rho : Seg16.F), (seg16AccY133 rho : Seg16.F)⟩
      ⟨(rho 17264 : Seg16.F), (rho 17265 : Seg16.F)⟩
      ⟨(rho 17270 : Seg16.F), (rho 17271 : Seg16.F)⟩
      ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
      ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung133

theorem seg16_rows134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4707 rho ∧ Seg16.relationRow4708 rho ∧ Seg16.relationRow4709 rho ∧ Seg16.relationRow4710 rho ∧ Seg16.relationRow4711 rho ∧ Seg16.relationRow4712 rho ∧ Seg16.relationRow4713 rho ∧ Seg16.relationRow4714 rho ∧ Seg16.relationRow4715 rho ∧ Seg16.relationRow4716 rho ∧ Seg16.relationRow4717 rho ∧ Seg16.relationRow4718 rho ∧ Seg16.relationRow4719 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩
  exact ⟨r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩

theorem seg16_rung134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15426 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
        ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩
        ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
        ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩ := by
  obtain ⟨r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩ := seg16_rows134 rho h
  unfold Seg16.relationRow4707 at r4707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4707
  unfold Seg16.relationRow4708 at r4708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4708
  unfold Seg16.relationRow4709 at r4709
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4709
  unfold Seg16.relationRow4710 at r4710
  unfold Seg16.relationRow4711 at r4711
  unfold Seg16.relationRow4712 at r4712
  unfold Seg16.relationRow4713 at r4713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4713
  unfold Seg16.relationRow4714 at r4714
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4714
  unfold Seg16.relationRow4715 at r4715
  unfold Seg16.relationRow4716 at r4716
  unfold Seg16.relationRow4717 at r4717
  unfold Seg16.relationRow4718 at r4718
  unfold Seg16.relationRow4719 at r4719
  have hrung134 (bit : Bool) (hbit : rho 15426 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
        ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩
        ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
        ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩ := by
    have hnextx : seg16AccX135 rho = seg16AccX134 rho + rho 17285 := by
      unfold seg16AccX135 seg16AccX134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 134]
      ring
    have hnexty : seg16AccY135 rho = seg16AccY134 rho + rho 17286 := by
      unfold seg16AccY135 seg16AccY134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 134]
      ring
    have ha0 : (rho 17277 + rho 17278) * (seg16AccX134 rho + seg16AccY134 rho) = rho 17279 := by
      unfold seg16AccX134 seg16AccY134
      linear_combination r4707
    have ha1 : rho 17278 * seg16AccX134 rho = rho 17280 := by
      unfold seg16AccX134
      linear_combination r4708
    have ha2 : rho 17277 * seg16AccY134 rho = rho 17281 := by
      unfold seg16AccY134
      linear_combination r4709
    have ha3 : 3021 * rho 17280 * rho 17281 = rho 17282 := by
      linear_combination r4710
    have ha4 : rho 17283 * (1 + rho 17282) = rho 17280 + rho 17281 := by
      linear_combination r4711
    have ha5 : rho 17284 * (1 - rho 17282) = rho 17279 - rho 17280 - rho 17281 := by
      linear_combination r4712
    have haddx :
        rho 17283 * (1 + 3021 * (rho 17278 * seg16AccX134 rho) * (rho 17277 * seg16AccY134 rho)) =
          rho 17278 * seg16AccX134 rho + rho 17277 * seg16AccY134 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17284 * (1 - 3021 * (rho 17278 * seg16AccX134 rho) * (rho 17277 * seg16AccY134 rho)) =
          (-1) * (rho 17278 * seg16AccX134 rho) - rho 17277 * seg16AccY134 rho +
            (seg16AccY134 rho - seg16AccX134 rho * (-1)) * (rho 17277 + rho 17278) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17284 * (1 - rho 17282) = rho 17279 - rho 17280 - rho 17281 := ha5
        _ = (-1) * rho 17280 - rho 17281 + (seg16AccY134 rho - seg16AccX134 rho * (-1)) * (rho 17277 + rho 17278) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX135 rho = seg16AccX134 rho - Bool.toZMod bit * (seg16AccX134 rho - rho 17283) := by
      have hd : rho 17285 = Bool.toZMod bit * (rho 17283 - seg16AccX134 rho) := by
        rw [← hbit]
        unfold seg16AccX134
        linear_combination -r4713
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY135 rho = seg16AccY134 rho - Bool.toZMod bit * (seg16AccY134 rho - rho 17284) := by
      have hd : rho 17286 = Bool.toZMod bit * (rho 17284 - seg16AccY134 rho) := by
        rw [← hbit]
        unfold seg16AccY134
        linear_combination -r4714
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17277 * rho 17278 = rho 17287 := by linear_combination r4715
    have hd1 : rho 17277 * rho 17277 = rho 17288 := by linear_combination r4716
    have hd2 : rho 17278 * rho 17278 = rho 17289 := by linear_combination r4717
    have hd3 : rho 17290 * (rho 17278 * rho 17278 + rho 17277 * rho 17277 * (-1)) = 2 * (rho 17277 * rho 17278) := by
      rw [hd0, hd1, hd2]
      linear_combination r4718
    have hd4 : rho 17291 * (2 - (rho 17278 * rho 17278 + rho 17277 * rho 17277 * (-1))) = rho 17278 * rho 17278 - rho 17277 * rho 17277 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4719
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX134 rho : Seg16.F), (seg16AccY134 rho : Seg16.F)⟩
      ⟨(rho 17277 : Seg16.F), (rho 17278 : Seg16.F)⟩
      ⟨(rho 17283 : Seg16.F), (rho 17284 : Seg16.F)⟩
      ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
      ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung134

theorem seg16_rows135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4720 rho ∧ Seg16.relationRow4721 rho ∧ Seg16.relationRow4722 rho ∧ Seg16.relationRow4723 rho ∧ Seg16.relationRow4724 rho ∧ Seg16.relationRow4725 rho ∧ Seg16.relationRow4726 rho ∧ Seg16.relationRow4727 rho ∧ Seg16.relationRow4728 rho ∧ Seg16.relationRow4729 rho ∧ Seg16.relationRow4730 rho ∧ Seg16.relationRow4731 rho ∧ Seg16.relationRow4732 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩

theorem seg16_rung135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15427 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
        ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩
        ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
        ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩ := by
  obtain ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩ := seg16_rows135 rho h
  unfold Seg16.relationRow4720 at r4720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4720
  unfold Seg16.relationRow4721 at r4721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4721
  unfold Seg16.relationRow4722 at r4722
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4722
  unfold Seg16.relationRow4723 at r4723
  unfold Seg16.relationRow4724 at r4724
  unfold Seg16.relationRow4725 at r4725
  unfold Seg16.relationRow4726 at r4726
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4726
  unfold Seg16.relationRow4727 at r4727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4727
  unfold Seg16.relationRow4728 at r4728
  unfold Seg16.relationRow4729 at r4729
  unfold Seg16.relationRow4730 at r4730
  unfold Seg16.relationRow4731 at r4731
  unfold Seg16.relationRow4732 at r4732
  have hrung135 (bit : Bool) (hbit : rho 15427 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
        ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩
        ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
        ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩ := by
    have hnextx : seg16AccX136 rho = seg16AccX135 rho + rho 17298 := by
      unfold seg16AccX136 seg16AccX135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 135]
      ring
    have hnexty : seg16AccY136 rho = seg16AccY135 rho + rho 17299 := by
      unfold seg16AccY136 seg16AccY135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 135]
      ring
    have ha0 : (rho 17290 + rho 17291) * (seg16AccX135 rho + seg16AccY135 rho) = rho 17292 := by
      unfold seg16AccX135 seg16AccY135
      linear_combination r4720
    have ha1 : rho 17291 * seg16AccX135 rho = rho 17293 := by
      unfold seg16AccX135
      linear_combination r4721
    have ha2 : rho 17290 * seg16AccY135 rho = rho 17294 := by
      unfold seg16AccY135
      linear_combination r4722
    have ha3 : 3021 * rho 17293 * rho 17294 = rho 17295 := by
      linear_combination r4723
    have ha4 : rho 17296 * (1 + rho 17295) = rho 17293 + rho 17294 := by
      linear_combination r4724
    have ha5 : rho 17297 * (1 - rho 17295) = rho 17292 - rho 17293 - rho 17294 := by
      linear_combination r4725
    have haddx :
        rho 17296 * (1 + 3021 * (rho 17291 * seg16AccX135 rho) * (rho 17290 * seg16AccY135 rho)) =
          rho 17291 * seg16AccX135 rho + rho 17290 * seg16AccY135 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17297 * (1 - 3021 * (rho 17291 * seg16AccX135 rho) * (rho 17290 * seg16AccY135 rho)) =
          (-1) * (rho 17291 * seg16AccX135 rho) - rho 17290 * seg16AccY135 rho +
            (seg16AccY135 rho - seg16AccX135 rho * (-1)) * (rho 17290 + rho 17291) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17297 * (1 - rho 17295) = rho 17292 - rho 17293 - rho 17294 := ha5
        _ = (-1) * rho 17293 - rho 17294 + (seg16AccY135 rho - seg16AccX135 rho * (-1)) * (rho 17290 + rho 17291) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX136 rho = seg16AccX135 rho - Bool.toZMod bit * (seg16AccX135 rho - rho 17296) := by
      have hd : rho 17298 = Bool.toZMod bit * (rho 17296 - seg16AccX135 rho) := by
        rw [← hbit]
        unfold seg16AccX135
        linear_combination -r4726
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY136 rho = seg16AccY135 rho - Bool.toZMod bit * (seg16AccY135 rho - rho 17297) := by
      have hd : rho 17299 = Bool.toZMod bit * (rho 17297 - seg16AccY135 rho) := by
        rw [← hbit]
        unfold seg16AccY135
        linear_combination -r4727
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17290 * rho 17291 = rho 17300 := by linear_combination r4728
    have hd1 : rho 17290 * rho 17290 = rho 17301 := by linear_combination r4729
    have hd2 : rho 17291 * rho 17291 = rho 17302 := by linear_combination r4730
    have hd3 : rho 17303 * (rho 17291 * rho 17291 + rho 17290 * rho 17290 * (-1)) = 2 * (rho 17290 * rho 17291) := by
      rw [hd0, hd1, hd2]
      linear_combination r4731
    have hd4 : rho 17304 * (2 - (rho 17291 * rho 17291 + rho 17290 * rho 17290 * (-1))) = rho 17291 * rho 17291 - rho 17290 * rho 17290 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4732
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX135 rho : Seg16.F), (seg16AccY135 rho : Seg16.F)⟩
      ⟨(rho 17290 : Seg16.F), (rho 17291 : Seg16.F)⟩
      ⟨(rho 17296 : Seg16.F), (rho 17297 : Seg16.F)⟩
      ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
      ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung135

theorem seg16_rows136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4733 rho ∧ Seg16.relationRow4734 rho ∧ Seg16.relationRow4735 rho ∧ Seg16.relationRow4736 rho ∧ Seg16.relationRow4737 rho ∧ Seg16.relationRow4738 rho ∧ Seg16.relationRow4739 rho ∧ Seg16.relationRow4740 rho ∧ Seg16.relationRow4741 rho ∧ Seg16.relationRow4742 rho ∧ Seg16.relationRow4743 rho ∧ Seg16.relationRow4744 rho ∧ Seg16.relationRow4745 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745⟩

theorem seg16_rung136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15428 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
        ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩
        ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
        ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩ := by
  obtain ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745⟩ := seg16_rows136 rho h
  unfold Seg16.relationRow4733 at r4733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4733
  unfold Seg16.relationRow4734 at r4734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4734
  unfold Seg16.relationRow4735 at r4735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4735
  unfold Seg16.relationRow4736 at r4736
  unfold Seg16.relationRow4737 at r4737
  unfold Seg16.relationRow4738 at r4738
  unfold Seg16.relationRow4739 at r4739
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4739
  unfold Seg16.relationRow4740 at r4740
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4740
  unfold Seg16.relationRow4741 at r4741
  unfold Seg16.relationRow4742 at r4742
  unfold Seg16.relationRow4743 at r4743
  unfold Seg16.relationRow4744 at r4744
  unfold Seg16.relationRow4745 at r4745
  have hrung136 (bit : Bool) (hbit : rho 15428 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
        ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩
        ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
        ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩ := by
    have hnextx : seg16AccX137 rho = seg16AccX136 rho + rho 17311 := by
      unfold seg16AccX137 seg16AccX136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 136]
      ring
    have hnexty : seg16AccY137 rho = seg16AccY136 rho + rho 17312 := by
      unfold seg16AccY137 seg16AccY136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 136]
      ring
    have ha0 : (rho 17303 + rho 17304) * (seg16AccX136 rho + seg16AccY136 rho) = rho 17305 := by
      unfold seg16AccX136 seg16AccY136
      linear_combination r4733
    have ha1 : rho 17304 * seg16AccX136 rho = rho 17306 := by
      unfold seg16AccX136
      linear_combination r4734
    have ha2 : rho 17303 * seg16AccY136 rho = rho 17307 := by
      unfold seg16AccY136
      linear_combination r4735
    have ha3 : 3021 * rho 17306 * rho 17307 = rho 17308 := by
      linear_combination r4736
    have ha4 : rho 17309 * (1 + rho 17308) = rho 17306 + rho 17307 := by
      linear_combination r4737
    have ha5 : rho 17310 * (1 - rho 17308) = rho 17305 - rho 17306 - rho 17307 := by
      linear_combination r4738
    have haddx :
        rho 17309 * (1 + 3021 * (rho 17304 * seg16AccX136 rho) * (rho 17303 * seg16AccY136 rho)) =
          rho 17304 * seg16AccX136 rho + rho 17303 * seg16AccY136 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17310 * (1 - 3021 * (rho 17304 * seg16AccX136 rho) * (rho 17303 * seg16AccY136 rho)) =
          (-1) * (rho 17304 * seg16AccX136 rho) - rho 17303 * seg16AccY136 rho +
            (seg16AccY136 rho - seg16AccX136 rho * (-1)) * (rho 17303 + rho 17304) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17310 * (1 - rho 17308) = rho 17305 - rho 17306 - rho 17307 := ha5
        _ = (-1) * rho 17306 - rho 17307 + (seg16AccY136 rho - seg16AccX136 rho * (-1)) * (rho 17303 + rho 17304) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX137 rho = seg16AccX136 rho - Bool.toZMod bit * (seg16AccX136 rho - rho 17309) := by
      have hd : rho 17311 = Bool.toZMod bit * (rho 17309 - seg16AccX136 rho) := by
        rw [← hbit]
        unfold seg16AccX136
        linear_combination -r4739
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY137 rho = seg16AccY136 rho - Bool.toZMod bit * (seg16AccY136 rho - rho 17310) := by
      have hd : rho 17312 = Bool.toZMod bit * (rho 17310 - seg16AccY136 rho) := by
        rw [← hbit]
        unfold seg16AccY136
        linear_combination -r4740
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17303 * rho 17304 = rho 17313 := by linear_combination r4741
    have hd1 : rho 17303 * rho 17303 = rho 17314 := by linear_combination r4742
    have hd2 : rho 17304 * rho 17304 = rho 17315 := by linear_combination r4743
    have hd3 : rho 17316 * (rho 17304 * rho 17304 + rho 17303 * rho 17303 * (-1)) = 2 * (rho 17303 * rho 17304) := by
      rw [hd0, hd1, hd2]
      linear_combination r4744
    have hd4 : rho 17317 * (2 - (rho 17304 * rho 17304 + rho 17303 * rho 17303 * (-1))) = rho 17304 * rho 17304 - rho 17303 * rho 17303 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4745
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX136 rho : Seg16.F), (seg16AccY136 rho : Seg16.F)⟩
      ⟨(rho 17303 : Seg16.F), (rho 17304 : Seg16.F)⟩
      ⟨(rho 17309 : Seg16.F), (rho 17310 : Seg16.F)⟩
      ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
      ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung136

theorem seg16_rows137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4746 rho ∧ Seg16.relationRow4747 rho ∧ Seg16.relationRow4748 rho ∧ Seg16.relationRow4749 rho ∧ Seg16.relationRow4750 rho ∧ Seg16.relationRow4751 rho ∧ Seg16.relationRow4752 rho ∧ Seg16.relationRow4753 rho ∧ Seg16.relationRow4754 rho ∧ Seg16.relationRow4755 rho ∧ Seg16.relationRow4756 rho ∧ Seg16.relationRow4757 rho ∧ Seg16.relationRow4758 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758⟩

theorem seg16_rung137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15429 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
        ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩
        ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
        ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩ := by
  obtain ⟨r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758⟩ := seg16_rows137 rho h
  unfold Seg16.relationRow4746 at r4746
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4746
  unfold Seg16.relationRow4747 at r4747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4747
  unfold Seg16.relationRow4748 at r4748
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4748
  unfold Seg16.relationRow4749 at r4749
  unfold Seg16.relationRow4750 at r4750
  unfold Seg16.relationRow4751 at r4751
  unfold Seg16.relationRow4752 at r4752
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4752
  unfold Seg16.relationRow4753 at r4753
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4753
  unfold Seg16.relationRow4754 at r4754
  unfold Seg16.relationRow4755 at r4755
  unfold Seg16.relationRow4756 at r4756
  unfold Seg16.relationRow4757 at r4757
  unfold Seg16.relationRow4758 at r4758
  have hrung137 (bit : Bool) (hbit : rho 15429 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
        ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩
        ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
        ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩ := by
    have hnextx : seg16AccX138 rho = seg16AccX137 rho + rho 17324 := by
      unfold seg16AccX138 seg16AccX137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 137]
      ring
    have hnexty : seg16AccY138 rho = seg16AccY137 rho + rho 17325 := by
      unfold seg16AccY138 seg16AccY137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 137]
      ring
    have ha0 : (rho 17316 + rho 17317) * (seg16AccX137 rho + seg16AccY137 rho) = rho 17318 := by
      unfold seg16AccX137 seg16AccY137
      linear_combination r4746
    have ha1 : rho 17317 * seg16AccX137 rho = rho 17319 := by
      unfold seg16AccX137
      linear_combination r4747
    have ha2 : rho 17316 * seg16AccY137 rho = rho 17320 := by
      unfold seg16AccY137
      linear_combination r4748
    have ha3 : 3021 * rho 17319 * rho 17320 = rho 17321 := by
      linear_combination r4749
    have ha4 : rho 17322 * (1 + rho 17321) = rho 17319 + rho 17320 := by
      linear_combination r4750
    have ha5 : rho 17323 * (1 - rho 17321) = rho 17318 - rho 17319 - rho 17320 := by
      linear_combination r4751
    have haddx :
        rho 17322 * (1 + 3021 * (rho 17317 * seg16AccX137 rho) * (rho 17316 * seg16AccY137 rho)) =
          rho 17317 * seg16AccX137 rho + rho 17316 * seg16AccY137 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17323 * (1 - 3021 * (rho 17317 * seg16AccX137 rho) * (rho 17316 * seg16AccY137 rho)) =
          (-1) * (rho 17317 * seg16AccX137 rho) - rho 17316 * seg16AccY137 rho +
            (seg16AccY137 rho - seg16AccX137 rho * (-1)) * (rho 17316 + rho 17317) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17323 * (1 - rho 17321) = rho 17318 - rho 17319 - rho 17320 := ha5
        _ = (-1) * rho 17319 - rho 17320 + (seg16AccY137 rho - seg16AccX137 rho * (-1)) * (rho 17316 + rho 17317) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX138 rho = seg16AccX137 rho - Bool.toZMod bit * (seg16AccX137 rho - rho 17322) := by
      have hd : rho 17324 = Bool.toZMod bit * (rho 17322 - seg16AccX137 rho) := by
        rw [← hbit]
        unfold seg16AccX137
        linear_combination -r4752
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY138 rho = seg16AccY137 rho - Bool.toZMod bit * (seg16AccY137 rho - rho 17323) := by
      have hd : rho 17325 = Bool.toZMod bit * (rho 17323 - seg16AccY137 rho) := by
        rw [← hbit]
        unfold seg16AccY137
        linear_combination -r4753
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17316 * rho 17317 = rho 17326 := by linear_combination r4754
    have hd1 : rho 17316 * rho 17316 = rho 17327 := by linear_combination r4755
    have hd2 : rho 17317 * rho 17317 = rho 17328 := by linear_combination r4756
    have hd3 : rho 17329 * (rho 17317 * rho 17317 + rho 17316 * rho 17316 * (-1)) = 2 * (rho 17316 * rho 17317) := by
      rw [hd0, hd1, hd2]
      linear_combination r4757
    have hd4 : rho 17330 * (2 - (rho 17317 * rho 17317 + rho 17316 * rho 17316 * (-1))) = rho 17317 * rho 17317 - rho 17316 * rho 17316 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4758
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX137 rho : Seg16.F), (seg16AccY137 rho : Seg16.F)⟩
      ⟨(rho 17316 : Seg16.F), (rho 17317 : Seg16.F)⟩
      ⟨(rho 17322 : Seg16.F), (rho 17323 : Seg16.F)⟩
      ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
      ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung137

theorem seg16_rows138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4759 rho ∧ Seg16.relationRow4760 rho ∧ Seg16.relationRow4761 rho ∧ Seg16.relationRow4762 rho ∧ Seg16.relationRow4763 rho ∧ Seg16.relationRow4764 rho ∧ Seg16.relationRow4765 rho ∧ Seg16.relationRow4766 rho ∧ Seg16.relationRow4767 rho ∧ Seg16.relationRow4768 rho ∧ Seg16.relationRow4769 rho ∧ Seg16.relationRow4770 rho ∧ Seg16.relationRow4771 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771⟩

theorem seg16_rung138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15430 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
        ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩
        ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
        ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩ := by
  obtain ⟨r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771⟩ := seg16_rows138 rho h
  unfold Seg16.relationRow4759 at r4759
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4759
  unfold Seg16.relationRow4760 at r4760
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4760
  unfold Seg16.relationRow4761 at r4761
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4761
  unfold Seg16.relationRow4762 at r4762
  unfold Seg16.relationRow4763 at r4763
  unfold Seg16.relationRow4764 at r4764
  unfold Seg16.relationRow4765 at r4765
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4765
  unfold Seg16.relationRow4766 at r4766
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4766
  unfold Seg16.relationRow4767 at r4767
  unfold Seg16.relationRow4768 at r4768
  unfold Seg16.relationRow4769 at r4769
  unfold Seg16.relationRow4770 at r4770
  unfold Seg16.relationRow4771 at r4771
  have hrung138 (bit : Bool) (hbit : rho 15430 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
        ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩
        ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
        ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩ := by
    have hnextx : seg16AccX139 rho = seg16AccX138 rho + rho 17337 := by
      unfold seg16AccX139 seg16AccX138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 138]
      ring
    have hnexty : seg16AccY139 rho = seg16AccY138 rho + rho 17338 := by
      unfold seg16AccY139 seg16AccY138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 138]
      ring
    have ha0 : (rho 17329 + rho 17330) * (seg16AccX138 rho + seg16AccY138 rho) = rho 17331 := by
      unfold seg16AccX138 seg16AccY138
      linear_combination r4759
    have ha1 : rho 17330 * seg16AccX138 rho = rho 17332 := by
      unfold seg16AccX138
      linear_combination r4760
    have ha2 : rho 17329 * seg16AccY138 rho = rho 17333 := by
      unfold seg16AccY138
      linear_combination r4761
    have ha3 : 3021 * rho 17332 * rho 17333 = rho 17334 := by
      linear_combination r4762
    have ha4 : rho 17335 * (1 + rho 17334) = rho 17332 + rho 17333 := by
      linear_combination r4763
    have ha5 : rho 17336 * (1 - rho 17334) = rho 17331 - rho 17332 - rho 17333 := by
      linear_combination r4764
    have haddx :
        rho 17335 * (1 + 3021 * (rho 17330 * seg16AccX138 rho) * (rho 17329 * seg16AccY138 rho)) =
          rho 17330 * seg16AccX138 rho + rho 17329 * seg16AccY138 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17336 * (1 - 3021 * (rho 17330 * seg16AccX138 rho) * (rho 17329 * seg16AccY138 rho)) =
          (-1) * (rho 17330 * seg16AccX138 rho) - rho 17329 * seg16AccY138 rho +
            (seg16AccY138 rho - seg16AccX138 rho * (-1)) * (rho 17329 + rho 17330) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17336 * (1 - rho 17334) = rho 17331 - rho 17332 - rho 17333 := ha5
        _ = (-1) * rho 17332 - rho 17333 + (seg16AccY138 rho - seg16AccX138 rho * (-1)) * (rho 17329 + rho 17330) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX139 rho = seg16AccX138 rho - Bool.toZMod bit * (seg16AccX138 rho - rho 17335) := by
      have hd : rho 17337 = Bool.toZMod bit * (rho 17335 - seg16AccX138 rho) := by
        rw [← hbit]
        unfold seg16AccX138
        linear_combination -r4765
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY139 rho = seg16AccY138 rho - Bool.toZMod bit * (seg16AccY138 rho - rho 17336) := by
      have hd : rho 17338 = Bool.toZMod bit * (rho 17336 - seg16AccY138 rho) := by
        rw [← hbit]
        unfold seg16AccY138
        linear_combination -r4766
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17329 * rho 17330 = rho 17339 := by linear_combination r4767
    have hd1 : rho 17329 * rho 17329 = rho 17340 := by linear_combination r4768
    have hd2 : rho 17330 * rho 17330 = rho 17341 := by linear_combination r4769
    have hd3 : rho 17342 * (rho 17330 * rho 17330 + rho 17329 * rho 17329 * (-1)) = 2 * (rho 17329 * rho 17330) := by
      rw [hd0, hd1, hd2]
      linear_combination r4770
    have hd4 : rho 17343 * (2 - (rho 17330 * rho 17330 + rho 17329 * rho 17329 * (-1))) = rho 17330 * rho 17330 - rho 17329 * rho 17329 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4771
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX138 rho : Seg16.F), (seg16AccY138 rho : Seg16.F)⟩
      ⟨(rho 17329 : Seg16.F), (rho 17330 : Seg16.F)⟩
      ⟨(rho 17335 : Seg16.F), (rho 17336 : Seg16.F)⟩
      ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
      ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung138

theorem seg16_rows139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4772 rho ∧ Seg16.relationRow4773 rho ∧ Seg16.relationRow4774 rho ∧ Seg16.relationRow4775 rho ∧ Seg16.relationRow4776 rho ∧ Seg16.relationRow4777 rho ∧ Seg16.relationRow4778 rho ∧ Seg16.relationRow4779 rho ∧ Seg16.relationRow4780 rho ∧ Seg16.relationRow4781 rho ∧ Seg16.relationRow4782 rho ∧ Seg16.relationRow4783 rho ∧ Seg16.relationRow4784 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784⟩

theorem seg16_rung139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15431 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
        ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩
        ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
        ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩ := by
  obtain ⟨r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784⟩ := seg16_rows139 rho h
  unfold Seg16.relationRow4772 at r4772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4772
  unfold Seg16.relationRow4773 at r4773
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4773
  unfold Seg16.relationRow4774 at r4774
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4774
  unfold Seg16.relationRow4775 at r4775
  unfold Seg16.relationRow4776 at r4776
  unfold Seg16.relationRow4777 at r4777
  unfold Seg16.relationRow4778 at r4778
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4778
  unfold Seg16.relationRow4779 at r4779
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4779
  unfold Seg16.relationRow4780 at r4780
  unfold Seg16.relationRow4781 at r4781
  unfold Seg16.relationRow4782 at r4782
  unfold Seg16.relationRow4783 at r4783
  unfold Seg16.relationRow4784 at r4784
  have hrung139 (bit : Bool) (hbit : rho 15431 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
        ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩
        ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
        ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩ := by
    have hnextx : seg16AccX140 rho = seg16AccX139 rho + rho 17350 := by
      unfold seg16AccX140 seg16AccX139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 139]
      ring
    have hnexty : seg16AccY140 rho = seg16AccY139 rho + rho 17351 := by
      unfold seg16AccY140 seg16AccY139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 139]
      ring
    have ha0 : (rho 17342 + rho 17343) * (seg16AccX139 rho + seg16AccY139 rho) = rho 17344 := by
      unfold seg16AccX139 seg16AccY139
      linear_combination r4772
    have ha1 : rho 17343 * seg16AccX139 rho = rho 17345 := by
      unfold seg16AccX139
      linear_combination r4773
    have ha2 : rho 17342 * seg16AccY139 rho = rho 17346 := by
      unfold seg16AccY139
      linear_combination r4774
    have ha3 : 3021 * rho 17345 * rho 17346 = rho 17347 := by
      linear_combination r4775
    have ha4 : rho 17348 * (1 + rho 17347) = rho 17345 + rho 17346 := by
      linear_combination r4776
    have ha5 : rho 17349 * (1 - rho 17347) = rho 17344 - rho 17345 - rho 17346 := by
      linear_combination r4777
    have haddx :
        rho 17348 * (1 + 3021 * (rho 17343 * seg16AccX139 rho) * (rho 17342 * seg16AccY139 rho)) =
          rho 17343 * seg16AccX139 rho + rho 17342 * seg16AccY139 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17349 * (1 - 3021 * (rho 17343 * seg16AccX139 rho) * (rho 17342 * seg16AccY139 rho)) =
          (-1) * (rho 17343 * seg16AccX139 rho) - rho 17342 * seg16AccY139 rho +
            (seg16AccY139 rho - seg16AccX139 rho * (-1)) * (rho 17342 + rho 17343) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17349 * (1 - rho 17347) = rho 17344 - rho 17345 - rho 17346 := ha5
        _ = (-1) * rho 17345 - rho 17346 + (seg16AccY139 rho - seg16AccX139 rho * (-1)) * (rho 17342 + rho 17343) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX140 rho = seg16AccX139 rho - Bool.toZMod bit * (seg16AccX139 rho - rho 17348) := by
      have hd : rho 17350 = Bool.toZMod bit * (rho 17348 - seg16AccX139 rho) := by
        rw [← hbit]
        unfold seg16AccX139
        linear_combination -r4778
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY140 rho = seg16AccY139 rho - Bool.toZMod bit * (seg16AccY139 rho - rho 17349) := by
      have hd : rho 17351 = Bool.toZMod bit * (rho 17349 - seg16AccY139 rho) := by
        rw [← hbit]
        unfold seg16AccY139
        linear_combination -r4779
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17342 * rho 17343 = rho 17352 := by linear_combination r4780
    have hd1 : rho 17342 * rho 17342 = rho 17353 := by linear_combination r4781
    have hd2 : rho 17343 * rho 17343 = rho 17354 := by linear_combination r4782
    have hd3 : rho 17355 * (rho 17343 * rho 17343 + rho 17342 * rho 17342 * (-1)) = 2 * (rho 17342 * rho 17343) := by
      rw [hd0, hd1, hd2]
      linear_combination r4783
    have hd4 : rho 17356 * (2 - (rho 17343 * rho 17343 + rho 17342 * rho 17342 * (-1))) = rho 17343 * rho 17343 - rho 17342 * rho 17342 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4784
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX139 rho : Seg16.F), (seg16AccY139 rho : Seg16.F)⟩
      ⟨(rho 17342 : Seg16.F), (rho 17343 : Seg16.F)⟩
      ⟨(rho 17348 : Seg16.F), (rho 17349 : Seg16.F)⟩
      ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
      ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung139

theorem seg16_rows140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4785 rho ∧ Seg16.relationRow4786 rho ∧ Seg16.relationRow4787 rho ∧ Seg16.relationRow4788 rho ∧ Seg16.relationRow4789 rho ∧ Seg16.relationRow4790 rho ∧ Seg16.relationRow4791 rho ∧ Seg16.relationRow4792 rho ∧ Seg16.relationRow4793 rho ∧ Seg16.relationRow4794 rho ∧ Seg16.relationRow4795 rho ∧ Seg16.relationRow4796 rho ∧ Seg16.relationRow4797 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, _, _⟩
  exact ⟨r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797⟩

theorem seg16_rung140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15432 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
        ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩
        ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
        ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩ := by
  obtain ⟨r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797⟩ := seg16_rows140 rho h
  unfold Seg16.relationRow4785 at r4785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4785
  unfold Seg16.relationRow4786 at r4786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4786
  unfold Seg16.relationRow4787 at r4787
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4787
  unfold Seg16.relationRow4788 at r4788
  unfold Seg16.relationRow4789 at r4789
  unfold Seg16.relationRow4790 at r4790
  unfold Seg16.relationRow4791 at r4791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4791
  unfold Seg16.relationRow4792 at r4792
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4792
  unfold Seg16.relationRow4793 at r4793
  unfold Seg16.relationRow4794 at r4794
  unfold Seg16.relationRow4795 at r4795
  unfold Seg16.relationRow4796 at r4796
  unfold Seg16.relationRow4797 at r4797
  have hrung140 (bit : Bool) (hbit : rho 15432 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
        ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩
        ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
        ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩ := by
    have hnextx : seg16AccX141 rho = seg16AccX140 rho + rho 17363 := by
      unfold seg16AccX141 seg16AccX140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 140]
      ring
    have hnexty : seg16AccY141 rho = seg16AccY140 rho + rho 17364 := by
      unfold seg16AccY141 seg16AccY140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 140]
      ring
    have ha0 : (rho 17355 + rho 17356) * (seg16AccX140 rho + seg16AccY140 rho) = rho 17357 := by
      unfold seg16AccX140 seg16AccY140
      linear_combination r4785
    have ha1 : rho 17356 * seg16AccX140 rho = rho 17358 := by
      unfold seg16AccX140
      linear_combination r4786
    have ha2 : rho 17355 * seg16AccY140 rho = rho 17359 := by
      unfold seg16AccY140
      linear_combination r4787
    have ha3 : 3021 * rho 17358 * rho 17359 = rho 17360 := by
      linear_combination r4788
    have ha4 : rho 17361 * (1 + rho 17360) = rho 17358 + rho 17359 := by
      linear_combination r4789
    have ha5 : rho 17362 * (1 - rho 17360) = rho 17357 - rho 17358 - rho 17359 := by
      linear_combination r4790
    have haddx :
        rho 17361 * (1 + 3021 * (rho 17356 * seg16AccX140 rho) * (rho 17355 * seg16AccY140 rho)) =
          rho 17356 * seg16AccX140 rho + rho 17355 * seg16AccY140 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17362 * (1 - 3021 * (rho 17356 * seg16AccX140 rho) * (rho 17355 * seg16AccY140 rho)) =
          (-1) * (rho 17356 * seg16AccX140 rho) - rho 17355 * seg16AccY140 rho +
            (seg16AccY140 rho - seg16AccX140 rho * (-1)) * (rho 17355 + rho 17356) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17362 * (1 - rho 17360) = rho 17357 - rho 17358 - rho 17359 := ha5
        _ = (-1) * rho 17358 - rho 17359 + (seg16AccY140 rho - seg16AccX140 rho * (-1)) * (rho 17355 + rho 17356) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX141 rho = seg16AccX140 rho - Bool.toZMod bit * (seg16AccX140 rho - rho 17361) := by
      have hd : rho 17363 = Bool.toZMod bit * (rho 17361 - seg16AccX140 rho) := by
        rw [← hbit]
        unfold seg16AccX140
        linear_combination -r4791
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY141 rho = seg16AccY140 rho - Bool.toZMod bit * (seg16AccY140 rho - rho 17362) := by
      have hd : rho 17364 = Bool.toZMod bit * (rho 17362 - seg16AccY140 rho) := by
        rw [← hbit]
        unfold seg16AccY140
        linear_combination -r4792
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17355 * rho 17356 = rho 17365 := by linear_combination r4793
    have hd1 : rho 17355 * rho 17355 = rho 17366 := by linear_combination r4794
    have hd2 : rho 17356 * rho 17356 = rho 17367 := by linear_combination r4795
    have hd3 : rho 17368 * (rho 17356 * rho 17356 + rho 17355 * rho 17355 * (-1)) = 2 * (rho 17355 * rho 17356) := by
      rw [hd0, hd1, hd2]
      linear_combination r4796
    have hd4 : rho 17369 * (2 - (rho 17356 * rho 17356 + rho 17355 * rho 17355 * (-1))) = rho 17356 * rho 17356 - rho 17355 * rho 17355 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4797
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX140 rho : Seg16.F), (seg16AccY140 rho : Seg16.F)⟩
      ⟨(rho 17355 : Seg16.F), (rho 17356 : Seg16.F)⟩
      ⟨(rho 17361 : Seg16.F), (rho 17362 : Seg16.F)⟩
      ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
      ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung140

theorem seg16_rows141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4798 rho ∧ Seg16.relationRow4799 rho ∧ Seg16.relationRow4800 rho ∧ Seg16.relationRow4801 rho ∧ Seg16.relationRow4802 rho ∧ Seg16.relationRow4803 rho ∧ Seg16.relationRow4804 rho ∧ Seg16.relationRow4805 rho ∧ Seg16.relationRow4806 rho ∧ Seg16.relationRow4807 rho ∧ Seg16.relationRow4808 rho ∧ Seg16.relationRow4809 rho ∧ Seg16.relationRow4810 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4798, r4799⟩
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4798, r4799, r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810⟩

theorem seg16_rung141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15433 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
        ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩
        ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
        ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩ := by
  obtain ⟨r4798, r4799, r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810⟩ := seg16_rows141 rho h
  unfold Seg16.relationRow4798 at r4798
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4798
  unfold Seg16.relationRow4799 at r4799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4799
  unfold Seg16.relationRow4800 at r4800
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4800
  unfold Seg16.relationRow4801 at r4801
  unfold Seg16.relationRow4802 at r4802
  unfold Seg16.relationRow4803 at r4803
  unfold Seg16.relationRow4804 at r4804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4804
  unfold Seg16.relationRow4805 at r4805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4805
  unfold Seg16.relationRow4806 at r4806
  unfold Seg16.relationRow4807 at r4807
  unfold Seg16.relationRow4808 at r4808
  unfold Seg16.relationRow4809 at r4809
  unfold Seg16.relationRow4810 at r4810
  have hrung141 (bit : Bool) (hbit : rho 15433 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
        ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩
        ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
        ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩ := by
    have hnextx : seg16AccX142 rho = seg16AccX141 rho + rho 17376 := by
      unfold seg16AccX142 seg16AccX141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 141]
      ring
    have hnexty : seg16AccY142 rho = seg16AccY141 rho + rho 17377 := by
      unfold seg16AccY142 seg16AccY141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 141]
      ring
    have ha0 : (rho 17368 + rho 17369) * (seg16AccX141 rho + seg16AccY141 rho) = rho 17370 := by
      unfold seg16AccX141 seg16AccY141
      linear_combination r4798
    have ha1 : rho 17369 * seg16AccX141 rho = rho 17371 := by
      unfold seg16AccX141
      linear_combination r4799
    have ha2 : rho 17368 * seg16AccY141 rho = rho 17372 := by
      unfold seg16AccY141
      linear_combination r4800
    have ha3 : 3021 * rho 17371 * rho 17372 = rho 17373 := by
      linear_combination r4801
    have ha4 : rho 17374 * (1 + rho 17373) = rho 17371 + rho 17372 := by
      linear_combination r4802
    have ha5 : rho 17375 * (1 - rho 17373) = rho 17370 - rho 17371 - rho 17372 := by
      linear_combination r4803
    have haddx :
        rho 17374 * (1 + 3021 * (rho 17369 * seg16AccX141 rho) * (rho 17368 * seg16AccY141 rho)) =
          rho 17369 * seg16AccX141 rho + rho 17368 * seg16AccY141 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17375 * (1 - 3021 * (rho 17369 * seg16AccX141 rho) * (rho 17368 * seg16AccY141 rho)) =
          (-1) * (rho 17369 * seg16AccX141 rho) - rho 17368 * seg16AccY141 rho +
            (seg16AccY141 rho - seg16AccX141 rho * (-1)) * (rho 17368 + rho 17369) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17375 * (1 - rho 17373) = rho 17370 - rho 17371 - rho 17372 := ha5
        _ = (-1) * rho 17371 - rho 17372 + (seg16AccY141 rho - seg16AccX141 rho * (-1)) * (rho 17368 + rho 17369) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX142 rho = seg16AccX141 rho - Bool.toZMod bit * (seg16AccX141 rho - rho 17374) := by
      have hd : rho 17376 = Bool.toZMod bit * (rho 17374 - seg16AccX141 rho) := by
        rw [← hbit]
        unfold seg16AccX141
        linear_combination -r4804
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY142 rho = seg16AccY141 rho - Bool.toZMod bit * (seg16AccY141 rho - rho 17375) := by
      have hd : rho 17377 = Bool.toZMod bit * (rho 17375 - seg16AccY141 rho) := by
        rw [← hbit]
        unfold seg16AccY141
        linear_combination -r4805
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17368 * rho 17369 = rho 17378 := by linear_combination r4806
    have hd1 : rho 17368 * rho 17368 = rho 17379 := by linear_combination r4807
    have hd2 : rho 17369 * rho 17369 = rho 17380 := by linear_combination r4808
    have hd3 : rho 17381 * (rho 17369 * rho 17369 + rho 17368 * rho 17368 * (-1)) = 2 * (rho 17368 * rho 17369) := by
      rw [hd0, hd1, hd2]
      linear_combination r4809
    have hd4 : rho 17382 * (2 - (rho 17369 * rho 17369 + rho 17368 * rho 17368 * (-1))) = rho 17369 * rho 17369 - rho 17368 * rho 17368 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX141 rho : Seg16.F), (seg16AccY141 rho : Seg16.F)⟩
      ⟨(rho 17368 : Seg16.F), (rho 17369 : Seg16.F)⟩
      ⟨(rho 17374 : Seg16.F), (rho 17375 : Seg16.F)⟩
      ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
      ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung141

theorem seg16_rows142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4811 rho ∧ Seg16.relationRow4812 rho ∧ Seg16.relationRow4813 rho ∧ Seg16.relationRow4814 rho ∧ Seg16.relationRow4815 rho ∧ Seg16.relationRow4816 rho ∧ Seg16.relationRow4817 rho ∧ Seg16.relationRow4818 rho ∧ Seg16.relationRow4819 rho ∧ Seg16.relationRow4820 rho ∧ Seg16.relationRow4821 rho ∧ Seg16.relationRow4822 rho ∧ Seg16.relationRow4823 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823⟩

theorem seg16_rung142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15434 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
        ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩
        ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
        ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩ := by
  obtain ⟨r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823⟩ := seg16_rows142 rho h
  unfold Seg16.relationRow4811 at r4811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4811
  unfold Seg16.relationRow4812 at r4812
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4812
  unfold Seg16.relationRow4813 at r4813
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4813
  unfold Seg16.relationRow4814 at r4814
  unfold Seg16.relationRow4815 at r4815
  unfold Seg16.relationRow4816 at r4816
  unfold Seg16.relationRow4817 at r4817
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4817
  unfold Seg16.relationRow4818 at r4818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4818
  unfold Seg16.relationRow4819 at r4819
  unfold Seg16.relationRow4820 at r4820
  unfold Seg16.relationRow4821 at r4821
  unfold Seg16.relationRow4822 at r4822
  unfold Seg16.relationRow4823 at r4823
  have hrung142 (bit : Bool) (hbit : rho 15434 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
        ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩
        ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
        ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩ := by
    have hnextx : seg16AccX143 rho = seg16AccX142 rho + rho 17389 := by
      unfold seg16AccX143 seg16AccX142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 142]
      ring
    have hnexty : seg16AccY143 rho = seg16AccY142 rho + rho 17390 := by
      unfold seg16AccY143 seg16AccY142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 142]
      ring
    have ha0 : (rho 17381 + rho 17382) * (seg16AccX142 rho + seg16AccY142 rho) = rho 17383 := by
      unfold seg16AccX142 seg16AccY142
      linear_combination r4811
    have ha1 : rho 17382 * seg16AccX142 rho = rho 17384 := by
      unfold seg16AccX142
      linear_combination r4812
    have ha2 : rho 17381 * seg16AccY142 rho = rho 17385 := by
      unfold seg16AccY142
      linear_combination r4813
    have ha3 : 3021 * rho 17384 * rho 17385 = rho 17386 := by
      linear_combination r4814
    have ha4 : rho 17387 * (1 + rho 17386) = rho 17384 + rho 17385 := by
      linear_combination r4815
    have ha5 : rho 17388 * (1 - rho 17386) = rho 17383 - rho 17384 - rho 17385 := by
      linear_combination r4816
    have haddx :
        rho 17387 * (1 + 3021 * (rho 17382 * seg16AccX142 rho) * (rho 17381 * seg16AccY142 rho)) =
          rho 17382 * seg16AccX142 rho + rho 17381 * seg16AccY142 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17388 * (1 - 3021 * (rho 17382 * seg16AccX142 rho) * (rho 17381 * seg16AccY142 rho)) =
          (-1) * (rho 17382 * seg16AccX142 rho) - rho 17381 * seg16AccY142 rho +
            (seg16AccY142 rho - seg16AccX142 rho * (-1)) * (rho 17381 + rho 17382) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17388 * (1 - rho 17386) = rho 17383 - rho 17384 - rho 17385 := ha5
        _ = (-1) * rho 17384 - rho 17385 + (seg16AccY142 rho - seg16AccX142 rho * (-1)) * (rho 17381 + rho 17382) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX143 rho = seg16AccX142 rho - Bool.toZMod bit * (seg16AccX142 rho - rho 17387) := by
      have hd : rho 17389 = Bool.toZMod bit * (rho 17387 - seg16AccX142 rho) := by
        rw [← hbit]
        unfold seg16AccX142
        linear_combination -r4817
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY143 rho = seg16AccY142 rho - Bool.toZMod bit * (seg16AccY142 rho - rho 17388) := by
      have hd : rho 17390 = Bool.toZMod bit * (rho 17388 - seg16AccY142 rho) := by
        rw [← hbit]
        unfold seg16AccY142
        linear_combination -r4818
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17381 * rho 17382 = rho 17391 := by linear_combination r4819
    have hd1 : rho 17381 * rho 17381 = rho 17392 := by linear_combination r4820
    have hd2 : rho 17382 * rho 17382 = rho 17393 := by linear_combination r4821
    have hd3 : rho 17394 * (rho 17382 * rho 17382 + rho 17381 * rho 17381 * (-1)) = 2 * (rho 17381 * rho 17382) := by
      rw [hd0, hd1, hd2]
      linear_combination r4822
    have hd4 : rho 17395 * (2 - (rho 17382 * rho 17382 + rho 17381 * rho 17381 * (-1))) = rho 17382 * rho 17382 - rho 17381 * rho 17381 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4823
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX142 rho : Seg16.F), (seg16AccY142 rho : Seg16.F)⟩
      ⟨(rho 17381 : Seg16.F), (rho 17382 : Seg16.F)⟩
      ⟨(rho 17387 : Seg16.F), (rho 17388 : Seg16.F)⟩
      ⟨(seg16AccX143 rho : Seg16.F), (seg16AccY143 rho : Seg16.F)⟩
      ⟨(rho 17394 : Seg16.F), (rho 17395 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung142

theorem seg16_hstep_c12 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 132 ≤ i → i < 143 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc hcur
  · exact seg16_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc hcur
  · exact seg16_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc hcur
  · exact seg16_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc hcur
  · exact seg16_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc hcur
  · exact seg16_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc hcur
  · exact seg16_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc hcur
  · exact seg16_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc hcur
  · exact seg16_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc hcur
  · exact seg16_rung141 rho h bits[141]! (hbitAt 141 (by omega)) hacc hcur
  · exact seg16_rung142 rho h bits[142]! (hbitAt 142 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

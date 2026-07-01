import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4681 rho ∧ Seg45.relationRow4682 rho ∧ Seg45.relationRow4683 rho ∧ Seg45.relationRow4684 rho ∧ Seg45.relationRow4685 rho ∧ Seg45.relationRow4686 rho ∧ Seg45.relationRow4687 rho ∧ Seg45.relationRow4688 rho ∧ Seg45.relationRow4689 rho ∧ Seg45.relationRow4690 rho ∧ Seg45.relationRow4691 rho ∧ Seg45.relationRow4692 rho ∧ Seg45.relationRow4693 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693⟩

theorem seg45_rung132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41080 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
        ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩
        ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
        ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩ := by
  obtain ⟨r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693⟩ := seg45_rows132 rho h
  unfold Seg45.relationRow4681 at r4681
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4681
  unfold Seg45.relationRow4682 at r4682
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4682
  unfold Seg45.relationRow4683 at r4683
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4683
  unfold Seg45.relationRow4684 at r4684
  unfold Seg45.relationRow4685 at r4685
  unfold Seg45.relationRow4686 at r4686
  unfold Seg45.relationRow4687 at r4687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4687
  unfold Seg45.relationRow4688 at r4688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4688
  unfold Seg45.relationRow4689 at r4689
  unfold Seg45.relationRow4690 at r4690
  unfold Seg45.relationRow4691 at r4691
  unfold Seg45.relationRow4692 at r4692
  unfold Seg45.relationRow4693 at r4693
  have hrung132 (bit : Bool) (hbit : rho 41080 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
        ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩
        ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
        ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩ := by
    have hnextx : seg45AccX133 rho = seg45AccX132 rho + rho 42915 := by
      unfold seg45AccX133 seg45AccX132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 132]
      ring
    have hnexty : seg45AccY133 rho = seg45AccY132 rho + rho 42916 := by
      unfold seg45AccY133 seg45AccY132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 132]
      ring
    have ha0 : (rho 42907 + rho 42908) * (seg45AccX132 rho + seg45AccY132 rho) = rho 42909 := by
      unfold seg45AccX132 seg45AccY132
      linear_combination r4681
    have ha1 : rho 42908 * seg45AccX132 rho = rho 42910 := by
      unfold seg45AccX132
      linear_combination r4682
    have ha2 : rho 42907 * seg45AccY132 rho = rho 42911 := by
      unfold seg45AccY132
      linear_combination r4683
    have ha3 : 3021 * rho 42910 * rho 42911 = rho 42912 := by
      linear_combination r4684
    have ha4 : rho 42913 * (1 + rho 42912) = rho 42910 + rho 42911 := by
      linear_combination r4685
    have ha5 : rho 42914 * (1 - rho 42912) = rho 42909 - rho 42910 - rho 42911 := by
      linear_combination r4686
    have haddx :
        rho 42913 * (1 + 3021 * (rho 42908 * seg45AccX132 rho) * (rho 42907 * seg45AccY132 rho)) =
          rho 42908 * seg45AccX132 rho + rho 42907 * seg45AccY132 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42914 * (1 - 3021 * (rho 42908 * seg45AccX132 rho) * (rho 42907 * seg45AccY132 rho)) =
          (-1) * (rho 42908 * seg45AccX132 rho) - rho 42907 * seg45AccY132 rho +
            (seg45AccY132 rho - seg45AccX132 rho * (-1)) * (rho 42907 + rho 42908) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42914 * (1 - rho 42912) = rho 42909 - rho 42910 - rho 42911 := ha5
        _ = (-1) * rho 42910 - rho 42911 + (seg45AccY132 rho - seg45AccX132 rho * (-1)) * (rho 42907 + rho 42908) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX133 rho = seg45AccX132 rho - Bool.toZMod bit * (seg45AccX132 rho - rho 42913) := by
      have hd : rho 42915 = Bool.toZMod bit * (rho 42913 - seg45AccX132 rho) := by
        rw [← hbit]
        unfold seg45AccX132
        linear_combination -r4687
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY133 rho = seg45AccY132 rho - Bool.toZMod bit * (seg45AccY132 rho - rho 42914) := by
      have hd : rho 42916 = Bool.toZMod bit * (rho 42914 - seg45AccY132 rho) := by
        rw [← hbit]
        unfold seg45AccY132
        linear_combination -r4688
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42907 * rho 42908 = rho 42917 := by linear_combination r4689
    have hd1 : rho 42907 * rho 42907 = rho 42918 := by linear_combination r4690
    have hd2 : rho 42908 * rho 42908 = rho 42919 := by linear_combination r4691
    have hd3 : rho 42920 * (rho 42908 * rho 42908 + rho 42907 * rho 42907 * (-1)) = 2 * (rho 42907 * rho 42908) := by
      rw [hd0, hd1, hd2]
      linear_combination r4692
    have hd4 : rho 42921 * (2 - (rho 42908 * rho 42908 + rho 42907 * rho 42907 * (-1))) = rho 42908 * rho 42908 - rho 42907 * rho 42907 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4693
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX132 rho : Seg45.F), (seg45AccY132 rho : Seg45.F)⟩
      ⟨(rho 42907 : Seg45.F), (rho 42908 : Seg45.F)⟩
      ⟨(rho 42913 : Seg45.F), (rho 42914 : Seg45.F)⟩
      ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
      ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung132

theorem seg45_rows133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4694 rho ∧ Seg45.relationRow4695 rho ∧ Seg45.relationRow4696 rho ∧ Seg45.relationRow4697 rho ∧ Seg45.relationRow4698 rho ∧ Seg45.relationRow4699 rho ∧ Seg45.relationRow4700 rho ∧ Seg45.relationRow4701 rho ∧ Seg45.relationRow4702 rho ∧ Seg45.relationRow4703 rho ∧ Seg45.relationRow4704 rho ∧ Seg45.relationRow4705 rho ∧ Seg45.relationRow4706 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706⟩

theorem seg45_rung133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41081 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
        ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩
        ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
        ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩ := by
  obtain ⟨r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706⟩ := seg45_rows133 rho h
  unfold Seg45.relationRow4694 at r4694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4694
  unfold Seg45.relationRow4695 at r4695
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4695
  unfold Seg45.relationRow4696 at r4696
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4696
  unfold Seg45.relationRow4697 at r4697
  unfold Seg45.relationRow4698 at r4698
  unfold Seg45.relationRow4699 at r4699
  unfold Seg45.relationRow4700 at r4700
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4700
  unfold Seg45.relationRow4701 at r4701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4701
  unfold Seg45.relationRow4702 at r4702
  unfold Seg45.relationRow4703 at r4703
  unfold Seg45.relationRow4704 at r4704
  unfold Seg45.relationRow4705 at r4705
  unfold Seg45.relationRow4706 at r4706
  have hrung133 (bit : Bool) (hbit : rho 41081 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
        ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩
        ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
        ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩ := by
    have hnextx : seg45AccX134 rho = seg45AccX133 rho + rho 42928 := by
      unfold seg45AccX134 seg45AccX133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 133]
      ring
    have hnexty : seg45AccY134 rho = seg45AccY133 rho + rho 42929 := by
      unfold seg45AccY134 seg45AccY133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 133]
      ring
    have ha0 : (rho 42920 + rho 42921) * (seg45AccX133 rho + seg45AccY133 rho) = rho 42922 := by
      unfold seg45AccX133 seg45AccY133
      linear_combination r4694
    have ha1 : rho 42921 * seg45AccX133 rho = rho 42923 := by
      unfold seg45AccX133
      linear_combination r4695
    have ha2 : rho 42920 * seg45AccY133 rho = rho 42924 := by
      unfold seg45AccY133
      linear_combination r4696
    have ha3 : 3021 * rho 42923 * rho 42924 = rho 42925 := by
      linear_combination r4697
    have ha4 : rho 42926 * (1 + rho 42925) = rho 42923 + rho 42924 := by
      linear_combination r4698
    have ha5 : rho 42927 * (1 - rho 42925) = rho 42922 - rho 42923 - rho 42924 := by
      linear_combination r4699
    have haddx :
        rho 42926 * (1 + 3021 * (rho 42921 * seg45AccX133 rho) * (rho 42920 * seg45AccY133 rho)) =
          rho 42921 * seg45AccX133 rho + rho 42920 * seg45AccY133 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42927 * (1 - 3021 * (rho 42921 * seg45AccX133 rho) * (rho 42920 * seg45AccY133 rho)) =
          (-1) * (rho 42921 * seg45AccX133 rho) - rho 42920 * seg45AccY133 rho +
            (seg45AccY133 rho - seg45AccX133 rho * (-1)) * (rho 42920 + rho 42921) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42927 * (1 - rho 42925) = rho 42922 - rho 42923 - rho 42924 := ha5
        _ = (-1) * rho 42923 - rho 42924 + (seg45AccY133 rho - seg45AccX133 rho * (-1)) * (rho 42920 + rho 42921) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX134 rho = seg45AccX133 rho - Bool.toZMod bit * (seg45AccX133 rho - rho 42926) := by
      have hd : rho 42928 = Bool.toZMod bit * (rho 42926 - seg45AccX133 rho) := by
        rw [← hbit]
        unfold seg45AccX133
        linear_combination -r4700
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY134 rho = seg45AccY133 rho - Bool.toZMod bit * (seg45AccY133 rho - rho 42927) := by
      have hd : rho 42929 = Bool.toZMod bit * (rho 42927 - seg45AccY133 rho) := by
        rw [← hbit]
        unfold seg45AccY133
        linear_combination -r4701
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42920 * rho 42921 = rho 42930 := by linear_combination r4702
    have hd1 : rho 42920 * rho 42920 = rho 42931 := by linear_combination r4703
    have hd2 : rho 42921 * rho 42921 = rho 42932 := by linear_combination r4704
    have hd3 : rho 42933 * (rho 42921 * rho 42921 + rho 42920 * rho 42920 * (-1)) = 2 * (rho 42920 * rho 42921) := by
      rw [hd0, hd1, hd2]
      linear_combination r4705
    have hd4 : rho 42934 * (2 - (rho 42921 * rho 42921 + rho 42920 * rho 42920 * (-1))) = rho 42921 * rho 42921 - rho 42920 * rho 42920 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4706
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX133 rho : Seg45.F), (seg45AccY133 rho : Seg45.F)⟩
      ⟨(rho 42920 : Seg45.F), (rho 42921 : Seg45.F)⟩
      ⟨(rho 42926 : Seg45.F), (rho 42927 : Seg45.F)⟩
      ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
      ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung133

theorem seg45_rows134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4707 rho ∧ Seg45.relationRow4708 rho ∧ Seg45.relationRow4709 rho ∧ Seg45.relationRow4710 rho ∧ Seg45.relationRow4711 rho ∧ Seg45.relationRow4712 rho ∧ Seg45.relationRow4713 rho ∧ Seg45.relationRow4714 rho ∧ Seg45.relationRow4715 rho ∧ Seg45.relationRow4716 rho ∧ Seg45.relationRow4717 rho ∧ Seg45.relationRow4718 rho ∧ Seg45.relationRow4719 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩
  exact ⟨r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩

theorem seg45_rung134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41082 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
        ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩
        ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
        ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩ := by
  obtain ⟨r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩ := seg45_rows134 rho h
  unfold Seg45.relationRow4707 at r4707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4707
  unfold Seg45.relationRow4708 at r4708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4708
  unfold Seg45.relationRow4709 at r4709
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4709
  unfold Seg45.relationRow4710 at r4710
  unfold Seg45.relationRow4711 at r4711
  unfold Seg45.relationRow4712 at r4712
  unfold Seg45.relationRow4713 at r4713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4713
  unfold Seg45.relationRow4714 at r4714
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4714
  unfold Seg45.relationRow4715 at r4715
  unfold Seg45.relationRow4716 at r4716
  unfold Seg45.relationRow4717 at r4717
  unfold Seg45.relationRow4718 at r4718
  unfold Seg45.relationRow4719 at r4719
  have hrung134 (bit : Bool) (hbit : rho 41082 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
        ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩
        ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
        ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩ := by
    have hnextx : seg45AccX135 rho = seg45AccX134 rho + rho 42941 := by
      unfold seg45AccX135 seg45AccX134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 134]
      ring
    have hnexty : seg45AccY135 rho = seg45AccY134 rho + rho 42942 := by
      unfold seg45AccY135 seg45AccY134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 134]
      ring
    have ha0 : (rho 42933 + rho 42934) * (seg45AccX134 rho + seg45AccY134 rho) = rho 42935 := by
      unfold seg45AccX134 seg45AccY134
      linear_combination r4707
    have ha1 : rho 42934 * seg45AccX134 rho = rho 42936 := by
      unfold seg45AccX134
      linear_combination r4708
    have ha2 : rho 42933 * seg45AccY134 rho = rho 42937 := by
      unfold seg45AccY134
      linear_combination r4709
    have ha3 : 3021 * rho 42936 * rho 42937 = rho 42938 := by
      linear_combination r4710
    have ha4 : rho 42939 * (1 + rho 42938) = rho 42936 + rho 42937 := by
      linear_combination r4711
    have ha5 : rho 42940 * (1 - rho 42938) = rho 42935 - rho 42936 - rho 42937 := by
      linear_combination r4712
    have haddx :
        rho 42939 * (1 + 3021 * (rho 42934 * seg45AccX134 rho) * (rho 42933 * seg45AccY134 rho)) =
          rho 42934 * seg45AccX134 rho + rho 42933 * seg45AccY134 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42940 * (1 - 3021 * (rho 42934 * seg45AccX134 rho) * (rho 42933 * seg45AccY134 rho)) =
          (-1) * (rho 42934 * seg45AccX134 rho) - rho 42933 * seg45AccY134 rho +
            (seg45AccY134 rho - seg45AccX134 rho * (-1)) * (rho 42933 + rho 42934) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42940 * (1 - rho 42938) = rho 42935 - rho 42936 - rho 42937 := ha5
        _ = (-1) * rho 42936 - rho 42937 + (seg45AccY134 rho - seg45AccX134 rho * (-1)) * (rho 42933 + rho 42934) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX135 rho = seg45AccX134 rho - Bool.toZMod bit * (seg45AccX134 rho - rho 42939) := by
      have hd : rho 42941 = Bool.toZMod bit * (rho 42939 - seg45AccX134 rho) := by
        rw [← hbit]
        unfold seg45AccX134
        linear_combination -r4713
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY135 rho = seg45AccY134 rho - Bool.toZMod bit * (seg45AccY134 rho - rho 42940) := by
      have hd : rho 42942 = Bool.toZMod bit * (rho 42940 - seg45AccY134 rho) := by
        rw [← hbit]
        unfold seg45AccY134
        linear_combination -r4714
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42933 * rho 42934 = rho 42943 := by linear_combination r4715
    have hd1 : rho 42933 * rho 42933 = rho 42944 := by linear_combination r4716
    have hd2 : rho 42934 * rho 42934 = rho 42945 := by linear_combination r4717
    have hd3 : rho 42946 * (rho 42934 * rho 42934 + rho 42933 * rho 42933 * (-1)) = 2 * (rho 42933 * rho 42934) := by
      rw [hd0, hd1, hd2]
      linear_combination r4718
    have hd4 : rho 42947 * (2 - (rho 42934 * rho 42934 + rho 42933 * rho 42933 * (-1))) = rho 42934 * rho 42934 - rho 42933 * rho 42933 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4719
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX134 rho : Seg45.F), (seg45AccY134 rho : Seg45.F)⟩
      ⟨(rho 42933 : Seg45.F), (rho 42934 : Seg45.F)⟩
      ⟨(rho 42939 : Seg45.F), (rho 42940 : Seg45.F)⟩
      ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
      ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung134

theorem seg45_rows135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4720 rho ∧ Seg45.relationRow4721 rho ∧ Seg45.relationRow4722 rho ∧ Seg45.relationRow4723 rho ∧ Seg45.relationRow4724 rho ∧ Seg45.relationRow4725 rho ∧ Seg45.relationRow4726 rho ∧ Seg45.relationRow4727 rho ∧ Seg45.relationRow4728 rho ∧ Seg45.relationRow4729 rho ∧ Seg45.relationRow4730 rho ∧ Seg45.relationRow4731 rho ∧ Seg45.relationRow4732 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩

theorem seg45_rung135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41083 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
        ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩
        ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
        ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩ := by
  obtain ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩ := seg45_rows135 rho h
  unfold Seg45.relationRow4720 at r4720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4720
  unfold Seg45.relationRow4721 at r4721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4721
  unfold Seg45.relationRow4722 at r4722
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4722
  unfold Seg45.relationRow4723 at r4723
  unfold Seg45.relationRow4724 at r4724
  unfold Seg45.relationRow4725 at r4725
  unfold Seg45.relationRow4726 at r4726
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4726
  unfold Seg45.relationRow4727 at r4727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4727
  unfold Seg45.relationRow4728 at r4728
  unfold Seg45.relationRow4729 at r4729
  unfold Seg45.relationRow4730 at r4730
  unfold Seg45.relationRow4731 at r4731
  unfold Seg45.relationRow4732 at r4732
  have hrung135 (bit : Bool) (hbit : rho 41083 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
        ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩
        ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
        ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩ := by
    have hnextx : seg45AccX136 rho = seg45AccX135 rho + rho 42954 := by
      unfold seg45AccX136 seg45AccX135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 135]
      ring
    have hnexty : seg45AccY136 rho = seg45AccY135 rho + rho 42955 := by
      unfold seg45AccY136 seg45AccY135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 135]
      ring
    have ha0 : (rho 42946 + rho 42947) * (seg45AccX135 rho + seg45AccY135 rho) = rho 42948 := by
      unfold seg45AccX135 seg45AccY135
      linear_combination r4720
    have ha1 : rho 42947 * seg45AccX135 rho = rho 42949 := by
      unfold seg45AccX135
      linear_combination r4721
    have ha2 : rho 42946 * seg45AccY135 rho = rho 42950 := by
      unfold seg45AccY135
      linear_combination r4722
    have ha3 : 3021 * rho 42949 * rho 42950 = rho 42951 := by
      linear_combination r4723
    have ha4 : rho 42952 * (1 + rho 42951) = rho 42949 + rho 42950 := by
      linear_combination r4724
    have ha5 : rho 42953 * (1 - rho 42951) = rho 42948 - rho 42949 - rho 42950 := by
      linear_combination r4725
    have haddx :
        rho 42952 * (1 + 3021 * (rho 42947 * seg45AccX135 rho) * (rho 42946 * seg45AccY135 rho)) =
          rho 42947 * seg45AccX135 rho + rho 42946 * seg45AccY135 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42953 * (1 - 3021 * (rho 42947 * seg45AccX135 rho) * (rho 42946 * seg45AccY135 rho)) =
          (-1) * (rho 42947 * seg45AccX135 rho) - rho 42946 * seg45AccY135 rho +
            (seg45AccY135 rho - seg45AccX135 rho * (-1)) * (rho 42946 + rho 42947) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42953 * (1 - rho 42951) = rho 42948 - rho 42949 - rho 42950 := ha5
        _ = (-1) * rho 42949 - rho 42950 + (seg45AccY135 rho - seg45AccX135 rho * (-1)) * (rho 42946 + rho 42947) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX136 rho = seg45AccX135 rho - Bool.toZMod bit * (seg45AccX135 rho - rho 42952) := by
      have hd : rho 42954 = Bool.toZMod bit * (rho 42952 - seg45AccX135 rho) := by
        rw [← hbit]
        unfold seg45AccX135
        linear_combination -r4726
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY136 rho = seg45AccY135 rho - Bool.toZMod bit * (seg45AccY135 rho - rho 42953) := by
      have hd : rho 42955 = Bool.toZMod bit * (rho 42953 - seg45AccY135 rho) := by
        rw [← hbit]
        unfold seg45AccY135
        linear_combination -r4727
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42946 * rho 42947 = rho 42956 := by linear_combination r4728
    have hd1 : rho 42946 * rho 42946 = rho 42957 := by linear_combination r4729
    have hd2 : rho 42947 * rho 42947 = rho 42958 := by linear_combination r4730
    have hd3 : rho 42959 * (rho 42947 * rho 42947 + rho 42946 * rho 42946 * (-1)) = 2 * (rho 42946 * rho 42947) := by
      rw [hd0, hd1, hd2]
      linear_combination r4731
    have hd4 : rho 42960 * (2 - (rho 42947 * rho 42947 + rho 42946 * rho 42946 * (-1))) = rho 42947 * rho 42947 - rho 42946 * rho 42946 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4732
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX135 rho : Seg45.F), (seg45AccY135 rho : Seg45.F)⟩
      ⟨(rho 42946 : Seg45.F), (rho 42947 : Seg45.F)⟩
      ⟨(rho 42952 : Seg45.F), (rho 42953 : Seg45.F)⟩
      ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
      ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung135

theorem seg45_rows136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4733 rho ∧ Seg45.relationRow4734 rho ∧ Seg45.relationRow4735 rho ∧ Seg45.relationRow4736 rho ∧ Seg45.relationRow4737 rho ∧ Seg45.relationRow4738 rho ∧ Seg45.relationRow4739 rho ∧ Seg45.relationRow4740 rho ∧ Seg45.relationRow4741 rho ∧ Seg45.relationRow4742 rho ∧ Seg45.relationRow4743 rho ∧ Seg45.relationRow4744 rho ∧ Seg45.relationRow4745 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745⟩

theorem seg45_rung136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41084 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
        ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩
        ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
        ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩ := by
  obtain ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745⟩ := seg45_rows136 rho h
  unfold Seg45.relationRow4733 at r4733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4733
  unfold Seg45.relationRow4734 at r4734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4734
  unfold Seg45.relationRow4735 at r4735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4735
  unfold Seg45.relationRow4736 at r4736
  unfold Seg45.relationRow4737 at r4737
  unfold Seg45.relationRow4738 at r4738
  unfold Seg45.relationRow4739 at r4739
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4739
  unfold Seg45.relationRow4740 at r4740
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4740
  unfold Seg45.relationRow4741 at r4741
  unfold Seg45.relationRow4742 at r4742
  unfold Seg45.relationRow4743 at r4743
  unfold Seg45.relationRow4744 at r4744
  unfold Seg45.relationRow4745 at r4745
  have hrung136 (bit : Bool) (hbit : rho 41084 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
        ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩
        ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
        ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩ := by
    have hnextx : seg45AccX137 rho = seg45AccX136 rho + rho 42967 := by
      unfold seg45AccX137 seg45AccX136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 136]
      ring
    have hnexty : seg45AccY137 rho = seg45AccY136 rho + rho 42968 := by
      unfold seg45AccY137 seg45AccY136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 136]
      ring
    have ha0 : (rho 42959 + rho 42960) * (seg45AccX136 rho + seg45AccY136 rho) = rho 42961 := by
      unfold seg45AccX136 seg45AccY136
      linear_combination r4733
    have ha1 : rho 42960 * seg45AccX136 rho = rho 42962 := by
      unfold seg45AccX136
      linear_combination r4734
    have ha2 : rho 42959 * seg45AccY136 rho = rho 42963 := by
      unfold seg45AccY136
      linear_combination r4735
    have ha3 : 3021 * rho 42962 * rho 42963 = rho 42964 := by
      linear_combination r4736
    have ha4 : rho 42965 * (1 + rho 42964) = rho 42962 + rho 42963 := by
      linear_combination r4737
    have ha5 : rho 42966 * (1 - rho 42964) = rho 42961 - rho 42962 - rho 42963 := by
      linear_combination r4738
    have haddx :
        rho 42965 * (1 + 3021 * (rho 42960 * seg45AccX136 rho) * (rho 42959 * seg45AccY136 rho)) =
          rho 42960 * seg45AccX136 rho + rho 42959 * seg45AccY136 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42966 * (1 - 3021 * (rho 42960 * seg45AccX136 rho) * (rho 42959 * seg45AccY136 rho)) =
          (-1) * (rho 42960 * seg45AccX136 rho) - rho 42959 * seg45AccY136 rho +
            (seg45AccY136 rho - seg45AccX136 rho * (-1)) * (rho 42959 + rho 42960) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42966 * (1 - rho 42964) = rho 42961 - rho 42962 - rho 42963 := ha5
        _ = (-1) * rho 42962 - rho 42963 + (seg45AccY136 rho - seg45AccX136 rho * (-1)) * (rho 42959 + rho 42960) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX137 rho = seg45AccX136 rho - Bool.toZMod bit * (seg45AccX136 rho - rho 42965) := by
      have hd : rho 42967 = Bool.toZMod bit * (rho 42965 - seg45AccX136 rho) := by
        rw [← hbit]
        unfold seg45AccX136
        linear_combination -r4739
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY137 rho = seg45AccY136 rho - Bool.toZMod bit * (seg45AccY136 rho - rho 42966) := by
      have hd : rho 42968 = Bool.toZMod bit * (rho 42966 - seg45AccY136 rho) := by
        rw [← hbit]
        unfold seg45AccY136
        linear_combination -r4740
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42959 * rho 42960 = rho 42969 := by linear_combination r4741
    have hd1 : rho 42959 * rho 42959 = rho 42970 := by linear_combination r4742
    have hd2 : rho 42960 * rho 42960 = rho 42971 := by linear_combination r4743
    have hd3 : rho 42972 * (rho 42960 * rho 42960 + rho 42959 * rho 42959 * (-1)) = 2 * (rho 42959 * rho 42960) := by
      rw [hd0, hd1, hd2]
      linear_combination r4744
    have hd4 : rho 42973 * (2 - (rho 42960 * rho 42960 + rho 42959 * rho 42959 * (-1))) = rho 42960 * rho 42960 - rho 42959 * rho 42959 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4745
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX136 rho : Seg45.F), (seg45AccY136 rho : Seg45.F)⟩
      ⟨(rho 42959 : Seg45.F), (rho 42960 : Seg45.F)⟩
      ⟨(rho 42965 : Seg45.F), (rho 42966 : Seg45.F)⟩
      ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
      ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung136

theorem seg45_rows137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4746 rho ∧ Seg45.relationRow4747 rho ∧ Seg45.relationRow4748 rho ∧ Seg45.relationRow4749 rho ∧ Seg45.relationRow4750 rho ∧ Seg45.relationRow4751 rho ∧ Seg45.relationRow4752 rho ∧ Seg45.relationRow4753 rho ∧ Seg45.relationRow4754 rho ∧ Seg45.relationRow4755 rho ∧ Seg45.relationRow4756 rho ∧ Seg45.relationRow4757 rho ∧ Seg45.relationRow4758 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758⟩

theorem seg45_rung137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41085 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
        ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩
        ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
        ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩ := by
  obtain ⟨r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758⟩ := seg45_rows137 rho h
  unfold Seg45.relationRow4746 at r4746
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4746
  unfold Seg45.relationRow4747 at r4747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4747
  unfold Seg45.relationRow4748 at r4748
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4748
  unfold Seg45.relationRow4749 at r4749
  unfold Seg45.relationRow4750 at r4750
  unfold Seg45.relationRow4751 at r4751
  unfold Seg45.relationRow4752 at r4752
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4752
  unfold Seg45.relationRow4753 at r4753
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4753
  unfold Seg45.relationRow4754 at r4754
  unfold Seg45.relationRow4755 at r4755
  unfold Seg45.relationRow4756 at r4756
  unfold Seg45.relationRow4757 at r4757
  unfold Seg45.relationRow4758 at r4758
  have hrung137 (bit : Bool) (hbit : rho 41085 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
        ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩
        ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
        ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩ := by
    have hnextx : seg45AccX138 rho = seg45AccX137 rho + rho 42980 := by
      unfold seg45AccX138 seg45AccX137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 137]
      ring
    have hnexty : seg45AccY138 rho = seg45AccY137 rho + rho 42981 := by
      unfold seg45AccY138 seg45AccY137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 137]
      ring
    have ha0 : (rho 42972 + rho 42973) * (seg45AccX137 rho + seg45AccY137 rho) = rho 42974 := by
      unfold seg45AccX137 seg45AccY137
      linear_combination r4746
    have ha1 : rho 42973 * seg45AccX137 rho = rho 42975 := by
      unfold seg45AccX137
      linear_combination r4747
    have ha2 : rho 42972 * seg45AccY137 rho = rho 42976 := by
      unfold seg45AccY137
      linear_combination r4748
    have ha3 : 3021 * rho 42975 * rho 42976 = rho 42977 := by
      linear_combination r4749
    have ha4 : rho 42978 * (1 + rho 42977) = rho 42975 + rho 42976 := by
      linear_combination r4750
    have ha5 : rho 42979 * (1 - rho 42977) = rho 42974 - rho 42975 - rho 42976 := by
      linear_combination r4751
    have haddx :
        rho 42978 * (1 + 3021 * (rho 42973 * seg45AccX137 rho) * (rho 42972 * seg45AccY137 rho)) =
          rho 42973 * seg45AccX137 rho + rho 42972 * seg45AccY137 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42979 * (1 - 3021 * (rho 42973 * seg45AccX137 rho) * (rho 42972 * seg45AccY137 rho)) =
          (-1) * (rho 42973 * seg45AccX137 rho) - rho 42972 * seg45AccY137 rho +
            (seg45AccY137 rho - seg45AccX137 rho * (-1)) * (rho 42972 + rho 42973) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42979 * (1 - rho 42977) = rho 42974 - rho 42975 - rho 42976 := ha5
        _ = (-1) * rho 42975 - rho 42976 + (seg45AccY137 rho - seg45AccX137 rho * (-1)) * (rho 42972 + rho 42973) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX138 rho = seg45AccX137 rho - Bool.toZMod bit * (seg45AccX137 rho - rho 42978) := by
      have hd : rho 42980 = Bool.toZMod bit * (rho 42978 - seg45AccX137 rho) := by
        rw [← hbit]
        unfold seg45AccX137
        linear_combination -r4752
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY138 rho = seg45AccY137 rho - Bool.toZMod bit * (seg45AccY137 rho - rho 42979) := by
      have hd : rho 42981 = Bool.toZMod bit * (rho 42979 - seg45AccY137 rho) := by
        rw [← hbit]
        unfold seg45AccY137
        linear_combination -r4753
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42972 * rho 42973 = rho 42982 := by linear_combination r4754
    have hd1 : rho 42972 * rho 42972 = rho 42983 := by linear_combination r4755
    have hd2 : rho 42973 * rho 42973 = rho 42984 := by linear_combination r4756
    have hd3 : rho 42985 * (rho 42973 * rho 42973 + rho 42972 * rho 42972 * (-1)) = 2 * (rho 42972 * rho 42973) := by
      rw [hd0, hd1, hd2]
      linear_combination r4757
    have hd4 : rho 42986 * (2 - (rho 42973 * rho 42973 + rho 42972 * rho 42972 * (-1))) = rho 42973 * rho 42973 - rho 42972 * rho 42972 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4758
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX137 rho : Seg45.F), (seg45AccY137 rho : Seg45.F)⟩
      ⟨(rho 42972 : Seg45.F), (rho 42973 : Seg45.F)⟩
      ⟨(rho 42978 : Seg45.F), (rho 42979 : Seg45.F)⟩
      ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
      ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung137

theorem seg45_rows138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4759 rho ∧ Seg45.relationRow4760 rho ∧ Seg45.relationRow4761 rho ∧ Seg45.relationRow4762 rho ∧ Seg45.relationRow4763 rho ∧ Seg45.relationRow4764 rho ∧ Seg45.relationRow4765 rho ∧ Seg45.relationRow4766 rho ∧ Seg45.relationRow4767 rho ∧ Seg45.relationRow4768 rho ∧ Seg45.relationRow4769 rho ∧ Seg45.relationRow4770 rho ∧ Seg45.relationRow4771 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771⟩

theorem seg45_rung138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41086 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
        ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩
        ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
        ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩ := by
  obtain ⟨r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771⟩ := seg45_rows138 rho h
  unfold Seg45.relationRow4759 at r4759
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4759
  unfold Seg45.relationRow4760 at r4760
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4760
  unfold Seg45.relationRow4761 at r4761
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4761
  unfold Seg45.relationRow4762 at r4762
  unfold Seg45.relationRow4763 at r4763
  unfold Seg45.relationRow4764 at r4764
  unfold Seg45.relationRow4765 at r4765
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4765
  unfold Seg45.relationRow4766 at r4766
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4766
  unfold Seg45.relationRow4767 at r4767
  unfold Seg45.relationRow4768 at r4768
  unfold Seg45.relationRow4769 at r4769
  unfold Seg45.relationRow4770 at r4770
  unfold Seg45.relationRow4771 at r4771
  have hrung138 (bit : Bool) (hbit : rho 41086 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
        ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩
        ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
        ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩ := by
    have hnextx : seg45AccX139 rho = seg45AccX138 rho + rho 42993 := by
      unfold seg45AccX139 seg45AccX138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 138]
      ring
    have hnexty : seg45AccY139 rho = seg45AccY138 rho + rho 42994 := by
      unfold seg45AccY139 seg45AccY138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 138]
      ring
    have ha0 : (rho 42985 + rho 42986) * (seg45AccX138 rho + seg45AccY138 rho) = rho 42987 := by
      unfold seg45AccX138 seg45AccY138
      linear_combination r4759
    have ha1 : rho 42986 * seg45AccX138 rho = rho 42988 := by
      unfold seg45AccX138
      linear_combination r4760
    have ha2 : rho 42985 * seg45AccY138 rho = rho 42989 := by
      unfold seg45AccY138
      linear_combination r4761
    have ha3 : 3021 * rho 42988 * rho 42989 = rho 42990 := by
      linear_combination r4762
    have ha4 : rho 42991 * (1 + rho 42990) = rho 42988 + rho 42989 := by
      linear_combination r4763
    have ha5 : rho 42992 * (1 - rho 42990) = rho 42987 - rho 42988 - rho 42989 := by
      linear_combination r4764
    have haddx :
        rho 42991 * (1 + 3021 * (rho 42986 * seg45AccX138 rho) * (rho 42985 * seg45AccY138 rho)) =
          rho 42986 * seg45AccX138 rho + rho 42985 * seg45AccY138 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42992 * (1 - 3021 * (rho 42986 * seg45AccX138 rho) * (rho 42985 * seg45AccY138 rho)) =
          (-1) * (rho 42986 * seg45AccX138 rho) - rho 42985 * seg45AccY138 rho +
            (seg45AccY138 rho - seg45AccX138 rho * (-1)) * (rho 42985 + rho 42986) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42992 * (1 - rho 42990) = rho 42987 - rho 42988 - rho 42989 := ha5
        _ = (-1) * rho 42988 - rho 42989 + (seg45AccY138 rho - seg45AccX138 rho * (-1)) * (rho 42985 + rho 42986) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX139 rho = seg45AccX138 rho - Bool.toZMod bit * (seg45AccX138 rho - rho 42991) := by
      have hd : rho 42993 = Bool.toZMod bit * (rho 42991 - seg45AccX138 rho) := by
        rw [← hbit]
        unfold seg45AccX138
        linear_combination -r4765
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY139 rho = seg45AccY138 rho - Bool.toZMod bit * (seg45AccY138 rho - rho 42992) := by
      have hd : rho 42994 = Bool.toZMod bit * (rho 42992 - seg45AccY138 rho) := by
        rw [← hbit]
        unfold seg45AccY138
        linear_combination -r4766
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42985 * rho 42986 = rho 42995 := by linear_combination r4767
    have hd1 : rho 42985 * rho 42985 = rho 42996 := by linear_combination r4768
    have hd2 : rho 42986 * rho 42986 = rho 42997 := by linear_combination r4769
    have hd3 : rho 42998 * (rho 42986 * rho 42986 + rho 42985 * rho 42985 * (-1)) = 2 * (rho 42985 * rho 42986) := by
      rw [hd0, hd1, hd2]
      linear_combination r4770
    have hd4 : rho 42999 * (2 - (rho 42986 * rho 42986 + rho 42985 * rho 42985 * (-1))) = rho 42986 * rho 42986 - rho 42985 * rho 42985 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4771
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX138 rho : Seg45.F), (seg45AccY138 rho : Seg45.F)⟩
      ⟨(rho 42985 : Seg45.F), (rho 42986 : Seg45.F)⟩
      ⟨(rho 42991 : Seg45.F), (rho 42992 : Seg45.F)⟩
      ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
      ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung138

theorem seg45_rows139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4772 rho ∧ Seg45.relationRow4773 rho ∧ Seg45.relationRow4774 rho ∧ Seg45.relationRow4775 rho ∧ Seg45.relationRow4776 rho ∧ Seg45.relationRow4777 rho ∧ Seg45.relationRow4778 rho ∧ Seg45.relationRow4779 rho ∧ Seg45.relationRow4780 rho ∧ Seg45.relationRow4781 rho ∧ Seg45.relationRow4782 rho ∧ Seg45.relationRow4783 rho ∧ Seg45.relationRow4784 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784⟩

theorem seg45_rung139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41087 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
        ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩
        ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
        ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩ := by
  obtain ⟨r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784⟩ := seg45_rows139 rho h
  unfold Seg45.relationRow4772 at r4772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4772
  unfold Seg45.relationRow4773 at r4773
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4773
  unfold Seg45.relationRow4774 at r4774
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4774
  unfold Seg45.relationRow4775 at r4775
  unfold Seg45.relationRow4776 at r4776
  unfold Seg45.relationRow4777 at r4777
  unfold Seg45.relationRow4778 at r4778
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4778
  unfold Seg45.relationRow4779 at r4779
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4779
  unfold Seg45.relationRow4780 at r4780
  unfold Seg45.relationRow4781 at r4781
  unfold Seg45.relationRow4782 at r4782
  unfold Seg45.relationRow4783 at r4783
  unfold Seg45.relationRow4784 at r4784
  have hrung139 (bit : Bool) (hbit : rho 41087 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
        ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩
        ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
        ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩ := by
    have hnextx : seg45AccX140 rho = seg45AccX139 rho + rho 43006 := by
      unfold seg45AccX140 seg45AccX139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 139]
      ring
    have hnexty : seg45AccY140 rho = seg45AccY139 rho + rho 43007 := by
      unfold seg45AccY140 seg45AccY139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 139]
      ring
    have ha0 : (rho 42998 + rho 42999) * (seg45AccX139 rho + seg45AccY139 rho) = rho 43000 := by
      unfold seg45AccX139 seg45AccY139
      linear_combination r4772
    have ha1 : rho 42999 * seg45AccX139 rho = rho 43001 := by
      unfold seg45AccX139
      linear_combination r4773
    have ha2 : rho 42998 * seg45AccY139 rho = rho 43002 := by
      unfold seg45AccY139
      linear_combination r4774
    have ha3 : 3021 * rho 43001 * rho 43002 = rho 43003 := by
      linear_combination r4775
    have ha4 : rho 43004 * (1 + rho 43003) = rho 43001 + rho 43002 := by
      linear_combination r4776
    have ha5 : rho 43005 * (1 - rho 43003) = rho 43000 - rho 43001 - rho 43002 := by
      linear_combination r4777
    have haddx :
        rho 43004 * (1 + 3021 * (rho 42999 * seg45AccX139 rho) * (rho 42998 * seg45AccY139 rho)) =
          rho 42999 * seg45AccX139 rho + rho 42998 * seg45AccY139 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43005 * (1 - 3021 * (rho 42999 * seg45AccX139 rho) * (rho 42998 * seg45AccY139 rho)) =
          (-1) * (rho 42999 * seg45AccX139 rho) - rho 42998 * seg45AccY139 rho +
            (seg45AccY139 rho - seg45AccX139 rho * (-1)) * (rho 42998 + rho 42999) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43005 * (1 - rho 43003) = rho 43000 - rho 43001 - rho 43002 := ha5
        _ = (-1) * rho 43001 - rho 43002 + (seg45AccY139 rho - seg45AccX139 rho * (-1)) * (rho 42998 + rho 42999) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX140 rho = seg45AccX139 rho - Bool.toZMod bit * (seg45AccX139 rho - rho 43004) := by
      have hd : rho 43006 = Bool.toZMod bit * (rho 43004 - seg45AccX139 rho) := by
        rw [← hbit]
        unfold seg45AccX139
        linear_combination -r4778
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY140 rho = seg45AccY139 rho - Bool.toZMod bit * (seg45AccY139 rho - rho 43005) := by
      have hd : rho 43007 = Bool.toZMod bit * (rho 43005 - seg45AccY139 rho) := by
        rw [← hbit]
        unfold seg45AccY139
        linear_combination -r4779
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42998 * rho 42999 = rho 43008 := by linear_combination r4780
    have hd1 : rho 42998 * rho 42998 = rho 43009 := by linear_combination r4781
    have hd2 : rho 42999 * rho 42999 = rho 43010 := by linear_combination r4782
    have hd3 : rho 43011 * (rho 42999 * rho 42999 + rho 42998 * rho 42998 * (-1)) = 2 * (rho 42998 * rho 42999) := by
      rw [hd0, hd1, hd2]
      linear_combination r4783
    have hd4 : rho 43012 * (2 - (rho 42999 * rho 42999 + rho 42998 * rho 42998 * (-1))) = rho 42999 * rho 42999 - rho 42998 * rho 42998 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4784
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX139 rho : Seg45.F), (seg45AccY139 rho : Seg45.F)⟩
      ⟨(rho 42998 : Seg45.F), (rho 42999 : Seg45.F)⟩
      ⟨(rho 43004 : Seg45.F), (rho 43005 : Seg45.F)⟩
      ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
      ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung139

theorem seg45_rows140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4785 rho ∧ Seg45.relationRow4786 rho ∧ Seg45.relationRow4787 rho ∧ Seg45.relationRow4788 rho ∧ Seg45.relationRow4789 rho ∧ Seg45.relationRow4790 rho ∧ Seg45.relationRow4791 rho ∧ Seg45.relationRow4792 rho ∧ Seg45.relationRow4793 rho ∧ Seg45.relationRow4794 rho ∧ Seg45.relationRow4795 rho ∧ Seg45.relationRow4796 rho ∧ Seg45.relationRow4797 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, _, _⟩
  exact ⟨r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797⟩

theorem seg45_rung140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41088 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
        ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩
        ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
        ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩ := by
  obtain ⟨r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797⟩ := seg45_rows140 rho h
  unfold Seg45.relationRow4785 at r4785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4785
  unfold Seg45.relationRow4786 at r4786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4786
  unfold Seg45.relationRow4787 at r4787
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4787
  unfold Seg45.relationRow4788 at r4788
  unfold Seg45.relationRow4789 at r4789
  unfold Seg45.relationRow4790 at r4790
  unfold Seg45.relationRow4791 at r4791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4791
  unfold Seg45.relationRow4792 at r4792
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4792
  unfold Seg45.relationRow4793 at r4793
  unfold Seg45.relationRow4794 at r4794
  unfold Seg45.relationRow4795 at r4795
  unfold Seg45.relationRow4796 at r4796
  unfold Seg45.relationRow4797 at r4797
  have hrung140 (bit : Bool) (hbit : rho 41088 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
        ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩
        ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
        ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩ := by
    have hnextx : seg45AccX141 rho = seg45AccX140 rho + rho 43019 := by
      unfold seg45AccX141 seg45AccX140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 140]
      ring
    have hnexty : seg45AccY141 rho = seg45AccY140 rho + rho 43020 := by
      unfold seg45AccY141 seg45AccY140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 140]
      ring
    have ha0 : (rho 43011 + rho 43012) * (seg45AccX140 rho + seg45AccY140 rho) = rho 43013 := by
      unfold seg45AccX140 seg45AccY140
      linear_combination r4785
    have ha1 : rho 43012 * seg45AccX140 rho = rho 43014 := by
      unfold seg45AccX140
      linear_combination r4786
    have ha2 : rho 43011 * seg45AccY140 rho = rho 43015 := by
      unfold seg45AccY140
      linear_combination r4787
    have ha3 : 3021 * rho 43014 * rho 43015 = rho 43016 := by
      linear_combination r4788
    have ha4 : rho 43017 * (1 + rho 43016) = rho 43014 + rho 43015 := by
      linear_combination r4789
    have ha5 : rho 43018 * (1 - rho 43016) = rho 43013 - rho 43014 - rho 43015 := by
      linear_combination r4790
    have haddx :
        rho 43017 * (1 + 3021 * (rho 43012 * seg45AccX140 rho) * (rho 43011 * seg45AccY140 rho)) =
          rho 43012 * seg45AccX140 rho + rho 43011 * seg45AccY140 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43018 * (1 - 3021 * (rho 43012 * seg45AccX140 rho) * (rho 43011 * seg45AccY140 rho)) =
          (-1) * (rho 43012 * seg45AccX140 rho) - rho 43011 * seg45AccY140 rho +
            (seg45AccY140 rho - seg45AccX140 rho * (-1)) * (rho 43011 + rho 43012) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43018 * (1 - rho 43016) = rho 43013 - rho 43014 - rho 43015 := ha5
        _ = (-1) * rho 43014 - rho 43015 + (seg45AccY140 rho - seg45AccX140 rho * (-1)) * (rho 43011 + rho 43012) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX141 rho = seg45AccX140 rho - Bool.toZMod bit * (seg45AccX140 rho - rho 43017) := by
      have hd : rho 43019 = Bool.toZMod bit * (rho 43017 - seg45AccX140 rho) := by
        rw [← hbit]
        unfold seg45AccX140
        linear_combination -r4791
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY141 rho = seg45AccY140 rho - Bool.toZMod bit * (seg45AccY140 rho - rho 43018) := by
      have hd : rho 43020 = Bool.toZMod bit * (rho 43018 - seg45AccY140 rho) := by
        rw [← hbit]
        unfold seg45AccY140
        linear_combination -r4792
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43011 * rho 43012 = rho 43021 := by linear_combination r4793
    have hd1 : rho 43011 * rho 43011 = rho 43022 := by linear_combination r4794
    have hd2 : rho 43012 * rho 43012 = rho 43023 := by linear_combination r4795
    have hd3 : rho 43024 * (rho 43012 * rho 43012 + rho 43011 * rho 43011 * (-1)) = 2 * (rho 43011 * rho 43012) := by
      rw [hd0, hd1, hd2]
      linear_combination r4796
    have hd4 : rho 43025 * (2 - (rho 43012 * rho 43012 + rho 43011 * rho 43011 * (-1))) = rho 43012 * rho 43012 - rho 43011 * rho 43011 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4797
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX140 rho : Seg45.F), (seg45AccY140 rho : Seg45.F)⟩
      ⟨(rho 43011 : Seg45.F), (rho 43012 : Seg45.F)⟩
      ⟨(rho 43017 : Seg45.F), (rho 43018 : Seg45.F)⟩
      ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
      ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung140

theorem seg45_rows141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4798 rho ∧ Seg45.relationRow4799 rho ∧ Seg45.relationRow4800 rho ∧ Seg45.relationRow4801 rho ∧ Seg45.relationRow4802 rho ∧ Seg45.relationRow4803 rho ∧ Seg45.relationRow4804 rho ∧ Seg45.relationRow4805 rho ∧ Seg45.relationRow4806 rho ∧ Seg45.relationRow4807 rho ∧ Seg45.relationRow4808 rho ∧ Seg45.relationRow4809 rho ∧ Seg45.relationRow4810 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4798, r4799⟩
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4798, r4799, r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810⟩

theorem seg45_rung141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41089 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
        ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩
        ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
        ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩ := by
  obtain ⟨r4798, r4799, r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810⟩ := seg45_rows141 rho h
  unfold Seg45.relationRow4798 at r4798
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4798
  unfold Seg45.relationRow4799 at r4799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4799
  unfold Seg45.relationRow4800 at r4800
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4800
  unfold Seg45.relationRow4801 at r4801
  unfold Seg45.relationRow4802 at r4802
  unfold Seg45.relationRow4803 at r4803
  unfold Seg45.relationRow4804 at r4804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4804
  unfold Seg45.relationRow4805 at r4805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4805
  unfold Seg45.relationRow4806 at r4806
  unfold Seg45.relationRow4807 at r4807
  unfold Seg45.relationRow4808 at r4808
  unfold Seg45.relationRow4809 at r4809
  unfold Seg45.relationRow4810 at r4810
  have hrung141 (bit : Bool) (hbit : rho 41089 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
        ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩
        ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
        ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩ := by
    have hnextx : seg45AccX142 rho = seg45AccX141 rho + rho 43032 := by
      unfold seg45AccX142 seg45AccX141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 141]
      ring
    have hnexty : seg45AccY142 rho = seg45AccY141 rho + rho 43033 := by
      unfold seg45AccY142 seg45AccY141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 141]
      ring
    have ha0 : (rho 43024 + rho 43025) * (seg45AccX141 rho + seg45AccY141 rho) = rho 43026 := by
      unfold seg45AccX141 seg45AccY141
      linear_combination r4798
    have ha1 : rho 43025 * seg45AccX141 rho = rho 43027 := by
      unfold seg45AccX141
      linear_combination r4799
    have ha2 : rho 43024 * seg45AccY141 rho = rho 43028 := by
      unfold seg45AccY141
      linear_combination r4800
    have ha3 : 3021 * rho 43027 * rho 43028 = rho 43029 := by
      linear_combination r4801
    have ha4 : rho 43030 * (1 + rho 43029) = rho 43027 + rho 43028 := by
      linear_combination r4802
    have ha5 : rho 43031 * (1 - rho 43029) = rho 43026 - rho 43027 - rho 43028 := by
      linear_combination r4803
    have haddx :
        rho 43030 * (1 + 3021 * (rho 43025 * seg45AccX141 rho) * (rho 43024 * seg45AccY141 rho)) =
          rho 43025 * seg45AccX141 rho + rho 43024 * seg45AccY141 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43031 * (1 - 3021 * (rho 43025 * seg45AccX141 rho) * (rho 43024 * seg45AccY141 rho)) =
          (-1) * (rho 43025 * seg45AccX141 rho) - rho 43024 * seg45AccY141 rho +
            (seg45AccY141 rho - seg45AccX141 rho * (-1)) * (rho 43024 + rho 43025) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43031 * (1 - rho 43029) = rho 43026 - rho 43027 - rho 43028 := ha5
        _ = (-1) * rho 43027 - rho 43028 + (seg45AccY141 rho - seg45AccX141 rho * (-1)) * (rho 43024 + rho 43025) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX142 rho = seg45AccX141 rho - Bool.toZMod bit * (seg45AccX141 rho - rho 43030) := by
      have hd : rho 43032 = Bool.toZMod bit * (rho 43030 - seg45AccX141 rho) := by
        rw [← hbit]
        unfold seg45AccX141
        linear_combination -r4804
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY142 rho = seg45AccY141 rho - Bool.toZMod bit * (seg45AccY141 rho - rho 43031) := by
      have hd : rho 43033 = Bool.toZMod bit * (rho 43031 - seg45AccY141 rho) := by
        rw [← hbit]
        unfold seg45AccY141
        linear_combination -r4805
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43024 * rho 43025 = rho 43034 := by linear_combination r4806
    have hd1 : rho 43024 * rho 43024 = rho 43035 := by linear_combination r4807
    have hd2 : rho 43025 * rho 43025 = rho 43036 := by linear_combination r4808
    have hd3 : rho 43037 * (rho 43025 * rho 43025 + rho 43024 * rho 43024 * (-1)) = 2 * (rho 43024 * rho 43025) := by
      rw [hd0, hd1, hd2]
      linear_combination r4809
    have hd4 : rho 43038 * (2 - (rho 43025 * rho 43025 + rho 43024 * rho 43024 * (-1))) = rho 43025 * rho 43025 - rho 43024 * rho 43024 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX141 rho : Seg45.F), (seg45AccY141 rho : Seg45.F)⟩
      ⟨(rho 43024 : Seg45.F), (rho 43025 : Seg45.F)⟩
      ⟨(rho 43030 : Seg45.F), (rho 43031 : Seg45.F)⟩
      ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
      ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung141

theorem seg45_rows142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4811 rho ∧ Seg45.relationRow4812 rho ∧ Seg45.relationRow4813 rho ∧ Seg45.relationRow4814 rho ∧ Seg45.relationRow4815 rho ∧ Seg45.relationRow4816 rho ∧ Seg45.relationRow4817 rho ∧ Seg45.relationRow4818 rho ∧ Seg45.relationRow4819 rho ∧ Seg45.relationRow4820 rho ∧ Seg45.relationRow4821 rho ∧ Seg45.relationRow4822 rho ∧ Seg45.relationRow4823 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823⟩

theorem seg45_rung142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41090 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
        ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩
        ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
        ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩ := by
  obtain ⟨r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823⟩ := seg45_rows142 rho h
  unfold Seg45.relationRow4811 at r4811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4811
  unfold Seg45.relationRow4812 at r4812
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4812
  unfold Seg45.relationRow4813 at r4813
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4813
  unfold Seg45.relationRow4814 at r4814
  unfold Seg45.relationRow4815 at r4815
  unfold Seg45.relationRow4816 at r4816
  unfold Seg45.relationRow4817 at r4817
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4817
  unfold Seg45.relationRow4818 at r4818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4818
  unfold Seg45.relationRow4819 at r4819
  unfold Seg45.relationRow4820 at r4820
  unfold Seg45.relationRow4821 at r4821
  unfold Seg45.relationRow4822 at r4822
  unfold Seg45.relationRow4823 at r4823
  have hrung142 (bit : Bool) (hbit : rho 41090 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
        ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩
        ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
        ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩ := by
    have hnextx : seg45AccX143 rho = seg45AccX142 rho + rho 43045 := by
      unfold seg45AccX143 seg45AccX142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 142]
      ring
    have hnexty : seg45AccY143 rho = seg45AccY142 rho + rho 43046 := by
      unfold seg45AccY143 seg45AccY142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 142]
      ring
    have ha0 : (rho 43037 + rho 43038) * (seg45AccX142 rho + seg45AccY142 rho) = rho 43039 := by
      unfold seg45AccX142 seg45AccY142
      linear_combination r4811
    have ha1 : rho 43038 * seg45AccX142 rho = rho 43040 := by
      unfold seg45AccX142
      linear_combination r4812
    have ha2 : rho 43037 * seg45AccY142 rho = rho 43041 := by
      unfold seg45AccY142
      linear_combination r4813
    have ha3 : 3021 * rho 43040 * rho 43041 = rho 43042 := by
      linear_combination r4814
    have ha4 : rho 43043 * (1 + rho 43042) = rho 43040 + rho 43041 := by
      linear_combination r4815
    have ha5 : rho 43044 * (1 - rho 43042) = rho 43039 - rho 43040 - rho 43041 := by
      linear_combination r4816
    have haddx :
        rho 43043 * (1 + 3021 * (rho 43038 * seg45AccX142 rho) * (rho 43037 * seg45AccY142 rho)) =
          rho 43038 * seg45AccX142 rho + rho 43037 * seg45AccY142 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43044 * (1 - 3021 * (rho 43038 * seg45AccX142 rho) * (rho 43037 * seg45AccY142 rho)) =
          (-1) * (rho 43038 * seg45AccX142 rho) - rho 43037 * seg45AccY142 rho +
            (seg45AccY142 rho - seg45AccX142 rho * (-1)) * (rho 43037 + rho 43038) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43044 * (1 - rho 43042) = rho 43039 - rho 43040 - rho 43041 := ha5
        _ = (-1) * rho 43040 - rho 43041 + (seg45AccY142 rho - seg45AccX142 rho * (-1)) * (rho 43037 + rho 43038) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX143 rho = seg45AccX142 rho - Bool.toZMod bit * (seg45AccX142 rho - rho 43043) := by
      have hd : rho 43045 = Bool.toZMod bit * (rho 43043 - seg45AccX142 rho) := by
        rw [← hbit]
        unfold seg45AccX142
        linear_combination -r4817
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY143 rho = seg45AccY142 rho - Bool.toZMod bit * (seg45AccY142 rho - rho 43044) := by
      have hd : rho 43046 = Bool.toZMod bit * (rho 43044 - seg45AccY142 rho) := by
        rw [← hbit]
        unfold seg45AccY142
        linear_combination -r4818
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43037 * rho 43038 = rho 43047 := by linear_combination r4819
    have hd1 : rho 43037 * rho 43037 = rho 43048 := by linear_combination r4820
    have hd2 : rho 43038 * rho 43038 = rho 43049 := by linear_combination r4821
    have hd3 : rho 43050 * (rho 43038 * rho 43038 + rho 43037 * rho 43037 * (-1)) = 2 * (rho 43037 * rho 43038) := by
      rw [hd0, hd1, hd2]
      linear_combination r4822
    have hd4 : rho 43051 * (2 - (rho 43038 * rho 43038 + rho 43037 * rho 43037 * (-1))) = rho 43038 * rho 43038 - rho 43037 * rho 43037 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4823
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX142 rho : Seg45.F), (seg45AccY142 rho : Seg45.F)⟩
      ⟨(rho 43037 : Seg45.F), (rho 43038 : Seg45.F)⟩
      ⟨(rho 43043 : Seg45.F), (rho 43044 : Seg45.F)⟩
      ⟨(seg45AccX143 rho : Seg45.F), (seg45AccY143 rho : Seg45.F)⟩
      ⟨(rho 43050 : Seg45.F), (rho 43051 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung142

theorem seg45_hstep_c12 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 132 ≤ i → i < 143 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc hcur
  · exact seg45_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc hcur
  · exact seg45_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc hcur
  · exact seg45_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc hcur
  · exact seg45_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc hcur
  · exact seg45_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc hcur
  · exact seg45_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc hcur
  · exact seg45_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc hcur
  · exact seg45_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc hcur
  · exact seg45_rung141 rho h bits[141]! (hbitAt 141 (by omega)) hacc hcur
  · exact seg45_rung142 rho h bits[142]! (hbitAt 142 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

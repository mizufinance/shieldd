import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4971 rho ∧ Seg45.relationRow4972 rho ∧ Seg45.relationRow4973 rho ∧ Seg45.relationRow4974 rho ∧ Seg45.relationRow4975 rho ∧ Seg45.relationRow4976 rho ∧ Seg45.relationRow4977 rho ∧ Seg45.relationRow4978 rho ∧ Seg45.relationRow4979 rho ∧ Seg45.relationRow4980 rho ∧ Seg45.relationRow4981 rho ∧ Seg45.relationRow4982 rho ∧ Seg45.relationRow4983 rho ∧ Seg45.relationRow4984 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩

theorem seg45_rung154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41102 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
        ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩
        ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
        ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩ := by
  obtain ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩ := seg45_rows154 rho h
  unfold Seg45.relationRow4971 at r4971
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4971
  unfold Seg45.relationRow4972 at r4972
  unfold Seg45.relationRow4973 at r4973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4973
  unfold Seg45.relationRow4974 at r4974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4974
  unfold Seg45.relationRow4975 at r4975
  unfold Seg45.relationRow4976 at r4976
  unfold Seg45.relationRow4977 at r4977
  unfold Seg45.relationRow4978 at r4978
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4978
  unfold Seg45.relationRow4979 at r4979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4979
  unfold Seg45.relationRow4980 at r4980
  unfold Seg45.relationRow4981 at r4981
  unfold Seg45.relationRow4982 at r4982
  unfold Seg45.relationRow4983 at r4983
  unfold Seg45.relationRow4984 at r4984
  have hrung154 (bit : Bool) (hbit : rho 41102 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
        ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩
        ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
        ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩ := by
    have hnextx : seg45AccX155 rho = seg45AccX154 rho + rho 43206 := by
      unfold seg45AccX155 seg45AccX154
      ring
    have hnexty : seg45AccY155 rho = seg45AccY154 rho + rho 43207 := by
      unfold seg45AccY155 seg45AccY154
      ring
    have hsum : seg45AccX154 rho + seg45AccY154 rho = rho 43199 := by
      unfold seg45AccX154 seg45AccY154
      linear_combination r4971
    have ha0 : (rho 43197 + rho 43198) * (seg45AccX154 rho + seg45AccY154 rho) = rho 43200 := by
      rw [hsum]
      linear_combination r4972
    have ha1 : rho 43198 * seg45AccX154 rho = rho 43201 := by
      unfold seg45AccX154
      linear_combination r4973
    have ha2 : rho 43197 * seg45AccY154 rho = rho 43202 := by
      unfold seg45AccY154
      linear_combination r4974
    have ha3 : 3021 * rho 43201 * rho 43202 = rho 43203 := by
      linear_combination r4975
    have ha4 : rho 43204 * (1 + rho 43203) = rho 43201 + rho 43202 := by
      linear_combination r4976
    have ha5 : rho 43205 * (1 - rho 43203) = rho 43200 - rho 43201 - rho 43202 := by
      linear_combination r4977
    have haddx :
        rho 43204 * (1 + 3021 * (rho 43198 * seg45AccX154 rho) * (rho 43197 * seg45AccY154 rho)) =
          rho 43198 * seg45AccX154 rho + rho 43197 * seg45AccY154 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43205 * (1 - 3021 * (rho 43198 * seg45AccX154 rho) * (rho 43197 * seg45AccY154 rho)) =
          (-1) * (rho 43198 * seg45AccX154 rho) - rho 43197 * seg45AccY154 rho +
            (seg45AccY154 rho - seg45AccX154 rho * (-1)) * (rho 43197 + rho 43198) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43205 * (1 - rho 43203) = rho 43200 - rho 43201 - rho 43202 := ha5
        _ = (-1) * rho 43201 - rho 43202 + (seg45AccY154 rho - seg45AccX154 rho * (-1)) * (rho 43197 + rho 43198) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX155 rho = seg45AccX154 rho - Bool.toZMod bit * (seg45AccX154 rho - rho 43204) := by
      have hd : rho 43206 = Bool.toZMod bit * (rho 43204 - seg45AccX154 rho) := by
        rw [← hbit]
        unfold seg45AccX154
        linear_combination -r4978
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY155 rho = seg45AccY154 rho - Bool.toZMod bit * (seg45AccY154 rho - rho 43205) := by
      have hd : rho 43207 = Bool.toZMod bit * (rho 43205 - seg45AccY154 rho) := by
        rw [← hbit]
        unfold seg45AccY154
        linear_combination -r4979
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43197 * rho 43198 = rho 43208 := by linear_combination r4980
    have hd1 : rho 43197 * rho 43197 = rho 43209 := by linear_combination r4981
    have hd2 : rho 43198 * rho 43198 = rho 43210 := by linear_combination r4982
    have hd3 : rho 43211 * (rho 43198 * rho 43198 + rho 43197 * rho 43197 * (-1)) = 2 * (rho 43197 * rho 43198) := by
      rw [hd0, hd1, hd2]
      linear_combination r4983
    have hd4 : rho 43212 * (2 - (rho 43198 * rho 43198 + rho 43197 * rho 43197 * (-1))) = rho 43198 * rho 43198 - rho 43197 * rho 43197 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4984
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX154 rho : Seg45.F), (seg45AccY154 rho : Seg45.F)⟩
      ⟨(rho 43197 : Seg45.F), (rho 43198 : Seg45.F)⟩
      ⟨(rho 43204 : Seg45.F), (rho 43205 : Seg45.F)⟩
      ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
      ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung154

theorem seg45_rows155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4985 rho ∧ Seg45.relationRow4986 rho ∧ Seg45.relationRow4987 rho ∧ Seg45.relationRow4988 rho ∧ Seg45.relationRow4989 rho ∧ Seg45.relationRow4990 rho ∧ Seg45.relationRow4991 rho ∧ Seg45.relationRow4992 rho ∧ Seg45.relationRow4993 rho ∧ Seg45.relationRow4994 rho ∧ Seg45.relationRow4995 rho ∧ Seg45.relationRow4996 rho ∧ Seg45.relationRow4997 rho ∧ Seg45.relationRow4998 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩

theorem seg45_rung155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41103 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
        ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩
        ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
        ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩ := by
  obtain ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩ := seg45_rows155 rho h
  unfold Seg45.relationRow4985 at r4985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4985
  unfold Seg45.relationRow4986 at r4986
  unfold Seg45.relationRow4987 at r4987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4987
  unfold Seg45.relationRow4988 at r4988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4988
  unfold Seg45.relationRow4989 at r4989
  unfold Seg45.relationRow4990 at r4990
  unfold Seg45.relationRow4991 at r4991
  unfold Seg45.relationRow4992 at r4992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4992
  unfold Seg45.relationRow4993 at r4993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4993
  unfold Seg45.relationRow4994 at r4994
  unfold Seg45.relationRow4995 at r4995
  unfold Seg45.relationRow4996 at r4996
  unfold Seg45.relationRow4997 at r4997
  unfold Seg45.relationRow4998 at r4998
  have hrung155 (bit : Bool) (hbit : rho 41103 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
        ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩
        ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
        ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩ := by
    have hnextx : seg45AccX156 rho = seg45AccX155 rho + rho 43220 := by
      unfold seg45AccX156 seg45AccX155
      ring
    have hnexty : seg45AccY156 rho = seg45AccY155 rho + rho 43221 := by
      unfold seg45AccY156 seg45AccY155
      ring
    have hsum : seg45AccX155 rho + seg45AccY155 rho = rho 43213 := by
      unfold seg45AccX155 seg45AccY155
      linear_combination r4985
    have ha0 : (rho 43211 + rho 43212) * (seg45AccX155 rho + seg45AccY155 rho) = rho 43214 := by
      rw [hsum]
      linear_combination r4986
    have ha1 : rho 43212 * seg45AccX155 rho = rho 43215 := by
      unfold seg45AccX155
      linear_combination r4987
    have ha2 : rho 43211 * seg45AccY155 rho = rho 43216 := by
      unfold seg45AccY155
      linear_combination r4988
    have ha3 : 3021 * rho 43215 * rho 43216 = rho 43217 := by
      linear_combination r4989
    have ha4 : rho 43218 * (1 + rho 43217) = rho 43215 + rho 43216 := by
      linear_combination r4990
    have ha5 : rho 43219 * (1 - rho 43217) = rho 43214 - rho 43215 - rho 43216 := by
      linear_combination r4991
    have haddx :
        rho 43218 * (1 + 3021 * (rho 43212 * seg45AccX155 rho) * (rho 43211 * seg45AccY155 rho)) =
          rho 43212 * seg45AccX155 rho + rho 43211 * seg45AccY155 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43219 * (1 - 3021 * (rho 43212 * seg45AccX155 rho) * (rho 43211 * seg45AccY155 rho)) =
          (-1) * (rho 43212 * seg45AccX155 rho) - rho 43211 * seg45AccY155 rho +
            (seg45AccY155 rho - seg45AccX155 rho * (-1)) * (rho 43211 + rho 43212) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43219 * (1 - rho 43217) = rho 43214 - rho 43215 - rho 43216 := ha5
        _ = (-1) * rho 43215 - rho 43216 + (seg45AccY155 rho - seg45AccX155 rho * (-1)) * (rho 43211 + rho 43212) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX156 rho = seg45AccX155 rho - Bool.toZMod bit * (seg45AccX155 rho - rho 43218) := by
      have hd : rho 43220 = Bool.toZMod bit * (rho 43218 - seg45AccX155 rho) := by
        rw [← hbit]
        unfold seg45AccX155
        linear_combination -r4992
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY156 rho = seg45AccY155 rho - Bool.toZMod bit * (seg45AccY155 rho - rho 43219) := by
      have hd : rho 43221 = Bool.toZMod bit * (rho 43219 - seg45AccY155 rho) := by
        rw [← hbit]
        unfold seg45AccY155
        linear_combination -r4993
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43211 * rho 43212 = rho 43222 := by linear_combination r4994
    have hd1 : rho 43211 * rho 43211 = rho 43223 := by linear_combination r4995
    have hd2 : rho 43212 * rho 43212 = rho 43224 := by linear_combination r4996
    have hd3 : rho 43225 * (rho 43212 * rho 43212 + rho 43211 * rho 43211 * (-1)) = 2 * (rho 43211 * rho 43212) := by
      rw [hd0, hd1, hd2]
      linear_combination r4997
    have hd4 : rho 43226 * (2 - (rho 43212 * rho 43212 + rho 43211 * rho 43211 * (-1))) = rho 43212 * rho 43212 - rho 43211 * rho 43211 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX155 rho : Seg45.F), (seg45AccY155 rho : Seg45.F)⟩
      ⟨(rho 43211 : Seg45.F), (rho 43212 : Seg45.F)⟩
      ⟨(rho 43218 : Seg45.F), (rho 43219 : Seg45.F)⟩
      ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
      ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung155

theorem seg45_rows156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4999 rho ∧ Seg45.relationRow5000 rho ∧ Seg45.relationRow5001 rho ∧ Seg45.relationRow5002 rho ∧ Seg45.relationRow5003 rho ∧ Seg45.relationRow5004 rho ∧ Seg45.relationRow5005 rho ∧ Seg45.relationRow5006 rho ∧ Seg45.relationRow5007 rho ∧ Seg45.relationRow5008 rho ∧ Seg45.relationRow5009 rho ∧ Seg45.relationRow5010 rho ∧ Seg45.relationRow5011 rho ∧ Seg45.relationRow5012 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩

theorem seg45_rung156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41104 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
        ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩
        ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
        ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩ := by
  obtain ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩ := seg45_rows156 rho h
  unfold Seg45.relationRow4999 at r4999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4999
  unfold Seg45.relationRow5000 at r5000
  unfold Seg45.relationRow5001 at r5001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5001
  unfold Seg45.relationRow5002 at r5002
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5002
  unfold Seg45.relationRow5003 at r5003
  unfold Seg45.relationRow5004 at r5004
  unfold Seg45.relationRow5005 at r5005
  unfold Seg45.relationRow5006 at r5006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5006
  unfold Seg45.relationRow5007 at r5007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5007
  unfold Seg45.relationRow5008 at r5008
  unfold Seg45.relationRow5009 at r5009
  unfold Seg45.relationRow5010 at r5010
  unfold Seg45.relationRow5011 at r5011
  unfold Seg45.relationRow5012 at r5012
  have hrung156 (bit : Bool) (hbit : rho 41104 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
        ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩
        ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
        ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩ := by
    have hnextx : seg45AccX157 rho = seg45AccX156 rho + rho 43234 := by
      unfold seg45AccX157 seg45AccX156
      ring
    have hnexty : seg45AccY157 rho = seg45AccY156 rho + rho 43235 := by
      unfold seg45AccY157 seg45AccY156
      ring
    have hsum : seg45AccX156 rho + seg45AccY156 rho = rho 43227 := by
      unfold seg45AccX156 seg45AccY156
      linear_combination r4999
    have ha0 : (rho 43225 + rho 43226) * (seg45AccX156 rho + seg45AccY156 rho) = rho 43228 := by
      rw [hsum]
      linear_combination r5000
    have ha1 : rho 43226 * seg45AccX156 rho = rho 43229 := by
      unfold seg45AccX156
      linear_combination r5001
    have ha2 : rho 43225 * seg45AccY156 rho = rho 43230 := by
      unfold seg45AccY156
      linear_combination r5002
    have ha3 : 3021 * rho 43229 * rho 43230 = rho 43231 := by
      linear_combination r5003
    have ha4 : rho 43232 * (1 + rho 43231) = rho 43229 + rho 43230 := by
      linear_combination r5004
    have ha5 : rho 43233 * (1 - rho 43231) = rho 43228 - rho 43229 - rho 43230 := by
      linear_combination r5005
    have haddx :
        rho 43232 * (1 + 3021 * (rho 43226 * seg45AccX156 rho) * (rho 43225 * seg45AccY156 rho)) =
          rho 43226 * seg45AccX156 rho + rho 43225 * seg45AccY156 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43233 * (1 - 3021 * (rho 43226 * seg45AccX156 rho) * (rho 43225 * seg45AccY156 rho)) =
          (-1) * (rho 43226 * seg45AccX156 rho) - rho 43225 * seg45AccY156 rho +
            (seg45AccY156 rho - seg45AccX156 rho * (-1)) * (rho 43225 + rho 43226) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43233 * (1 - rho 43231) = rho 43228 - rho 43229 - rho 43230 := ha5
        _ = (-1) * rho 43229 - rho 43230 + (seg45AccY156 rho - seg45AccX156 rho * (-1)) * (rho 43225 + rho 43226) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX157 rho = seg45AccX156 rho - Bool.toZMod bit * (seg45AccX156 rho - rho 43232) := by
      have hd : rho 43234 = Bool.toZMod bit * (rho 43232 - seg45AccX156 rho) := by
        rw [← hbit]
        unfold seg45AccX156
        linear_combination -r5006
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY157 rho = seg45AccY156 rho - Bool.toZMod bit * (seg45AccY156 rho - rho 43233) := by
      have hd : rho 43235 = Bool.toZMod bit * (rho 43233 - seg45AccY156 rho) := by
        rw [← hbit]
        unfold seg45AccY156
        linear_combination -r5007
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43225 * rho 43226 = rho 43236 := by linear_combination r5008
    have hd1 : rho 43225 * rho 43225 = rho 43237 := by linear_combination r5009
    have hd2 : rho 43226 * rho 43226 = rho 43238 := by linear_combination r5010
    have hd3 : rho 43239 * (rho 43226 * rho 43226 + rho 43225 * rho 43225 * (-1)) = 2 * (rho 43225 * rho 43226) := by
      rw [hd0, hd1, hd2]
      linear_combination r5011
    have hd4 : rho 43240 * (2 - (rho 43226 * rho 43226 + rho 43225 * rho 43225 * (-1))) = rho 43226 * rho 43226 - rho 43225 * rho 43225 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX156 rho : Seg45.F), (seg45AccY156 rho : Seg45.F)⟩
      ⟨(rho 43225 : Seg45.F), (rho 43226 : Seg45.F)⟩
      ⟨(rho 43232 : Seg45.F), (rho 43233 : Seg45.F)⟩
      ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
      ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung156

theorem seg45_rows157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5013 rho ∧ Seg45.relationRow5014 rho ∧ Seg45.relationRow5015 rho ∧ Seg45.relationRow5016 rho ∧ Seg45.relationRow5017 rho ∧ Seg45.relationRow5018 rho ∧ Seg45.relationRow5019 rho ∧ Seg45.relationRow5020 rho ∧ Seg45.relationRow5021 rho ∧ Seg45.relationRow5022 rho ∧ Seg45.relationRow5023 rho ∧ Seg45.relationRow5024 rho ∧ Seg45.relationRow5025 rho ∧ Seg45.relationRow5026 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩

theorem seg45_rung157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41105 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
        ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩
        ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
        ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩ := by
  obtain ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩ := seg45_rows157 rho h
  unfold Seg45.relationRow5013 at r5013
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5013
  unfold Seg45.relationRow5014 at r5014
  unfold Seg45.relationRow5015 at r5015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5015
  unfold Seg45.relationRow5016 at r5016
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5016
  unfold Seg45.relationRow5017 at r5017
  unfold Seg45.relationRow5018 at r5018
  unfold Seg45.relationRow5019 at r5019
  unfold Seg45.relationRow5020 at r5020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5020
  unfold Seg45.relationRow5021 at r5021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5021
  unfold Seg45.relationRow5022 at r5022
  unfold Seg45.relationRow5023 at r5023
  unfold Seg45.relationRow5024 at r5024
  unfold Seg45.relationRow5025 at r5025
  unfold Seg45.relationRow5026 at r5026
  have hrung157 (bit : Bool) (hbit : rho 41105 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
        ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩
        ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
        ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩ := by
    have hnextx : seg45AccX158 rho = seg45AccX157 rho + rho 43248 := by
      unfold seg45AccX158 seg45AccX157
      ring
    have hnexty : seg45AccY158 rho = seg45AccY157 rho + rho 43249 := by
      unfold seg45AccY158 seg45AccY157
      ring
    have hsum : seg45AccX157 rho + seg45AccY157 rho = rho 43241 := by
      unfold seg45AccX157 seg45AccY157
      linear_combination r5013
    have ha0 : (rho 43239 + rho 43240) * (seg45AccX157 rho + seg45AccY157 rho) = rho 43242 := by
      rw [hsum]
      linear_combination r5014
    have ha1 : rho 43240 * seg45AccX157 rho = rho 43243 := by
      unfold seg45AccX157
      linear_combination r5015
    have ha2 : rho 43239 * seg45AccY157 rho = rho 43244 := by
      unfold seg45AccY157
      linear_combination r5016
    have ha3 : 3021 * rho 43243 * rho 43244 = rho 43245 := by
      linear_combination r5017
    have ha4 : rho 43246 * (1 + rho 43245) = rho 43243 + rho 43244 := by
      linear_combination r5018
    have ha5 : rho 43247 * (1 - rho 43245) = rho 43242 - rho 43243 - rho 43244 := by
      linear_combination r5019
    have haddx :
        rho 43246 * (1 + 3021 * (rho 43240 * seg45AccX157 rho) * (rho 43239 * seg45AccY157 rho)) =
          rho 43240 * seg45AccX157 rho + rho 43239 * seg45AccY157 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43247 * (1 - 3021 * (rho 43240 * seg45AccX157 rho) * (rho 43239 * seg45AccY157 rho)) =
          (-1) * (rho 43240 * seg45AccX157 rho) - rho 43239 * seg45AccY157 rho +
            (seg45AccY157 rho - seg45AccX157 rho * (-1)) * (rho 43239 + rho 43240) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43247 * (1 - rho 43245) = rho 43242 - rho 43243 - rho 43244 := ha5
        _ = (-1) * rho 43243 - rho 43244 + (seg45AccY157 rho - seg45AccX157 rho * (-1)) * (rho 43239 + rho 43240) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX158 rho = seg45AccX157 rho - Bool.toZMod bit * (seg45AccX157 rho - rho 43246) := by
      have hd : rho 43248 = Bool.toZMod bit * (rho 43246 - seg45AccX157 rho) := by
        rw [← hbit]
        unfold seg45AccX157
        linear_combination -r5020
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY158 rho = seg45AccY157 rho - Bool.toZMod bit * (seg45AccY157 rho - rho 43247) := by
      have hd : rho 43249 = Bool.toZMod bit * (rho 43247 - seg45AccY157 rho) := by
        rw [← hbit]
        unfold seg45AccY157
        linear_combination -r5021
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43239 * rho 43240 = rho 43250 := by linear_combination r5022
    have hd1 : rho 43239 * rho 43239 = rho 43251 := by linear_combination r5023
    have hd2 : rho 43240 * rho 43240 = rho 43252 := by linear_combination r5024
    have hd3 : rho 43253 * (rho 43240 * rho 43240 + rho 43239 * rho 43239 * (-1)) = 2 * (rho 43239 * rho 43240) := by
      rw [hd0, hd1, hd2]
      linear_combination r5025
    have hd4 : rho 43254 * (2 - (rho 43240 * rho 43240 + rho 43239 * rho 43239 * (-1))) = rho 43240 * rho 43240 - rho 43239 * rho 43239 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5026
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX157 rho : Seg45.F), (seg45AccY157 rho : Seg45.F)⟩
      ⟨(rho 43239 : Seg45.F), (rho 43240 : Seg45.F)⟩
      ⟨(rho 43246 : Seg45.F), (rho 43247 : Seg45.F)⟩
      ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
      ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung157

theorem seg45_rows158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5027 rho ∧ Seg45.relationRow5028 rho ∧ Seg45.relationRow5029 rho ∧ Seg45.relationRow5030 rho ∧ Seg45.relationRow5031 rho ∧ Seg45.relationRow5032 rho ∧ Seg45.relationRow5033 rho ∧ Seg45.relationRow5034 rho ∧ Seg45.relationRow5035 rho ∧ Seg45.relationRow5036 rho ∧ Seg45.relationRow5037 rho ∧ Seg45.relationRow5038 rho ∧ Seg45.relationRow5039 rho ∧ Seg45.relationRow5040 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg45.relationPart63 at p63
  rcases p63 with ⟨r5040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩

theorem seg45_rung158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41106 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
        ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩
        ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
        ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩ := by
  obtain ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩ := seg45_rows158 rho h
  unfold Seg45.relationRow5027 at r5027
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5027
  unfold Seg45.relationRow5028 at r5028
  unfold Seg45.relationRow5029 at r5029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5029
  unfold Seg45.relationRow5030 at r5030
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5030
  unfold Seg45.relationRow5031 at r5031
  unfold Seg45.relationRow5032 at r5032
  unfold Seg45.relationRow5033 at r5033
  unfold Seg45.relationRow5034 at r5034
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5034
  unfold Seg45.relationRow5035 at r5035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5035
  unfold Seg45.relationRow5036 at r5036
  unfold Seg45.relationRow5037 at r5037
  unfold Seg45.relationRow5038 at r5038
  unfold Seg45.relationRow5039 at r5039
  unfold Seg45.relationRow5040 at r5040
  have hrung158 (bit : Bool) (hbit : rho 41106 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
        ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩
        ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
        ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩ := by
    have hnextx : seg45AccX159 rho = seg45AccX158 rho + rho 43262 := by
      unfold seg45AccX159 seg45AccX158
      ring
    have hnexty : seg45AccY159 rho = seg45AccY158 rho + rho 43263 := by
      unfold seg45AccY159 seg45AccY158
      ring
    have hsum : seg45AccX158 rho + seg45AccY158 rho = rho 43255 := by
      unfold seg45AccX158 seg45AccY158
      linear_combination r5027
    have ha0 : (rho 43253 + rho 43254) * (seg45AccX158 rho + seg45AccY158 rho) = rho 43256 := by
      rw [hsum]
      linear_combination r5028
    have ha1 : rho 43254 * seg45AccX158 rho = rho 43257 := by
      unfold seg45AccX158
      linear_combination r5029
    have ha2 : rho 43253 * seg45AccY158 rho = rho 43258 := by
      unfold seg45AccY158
      linear_combination r5030
    have ha3 : 3021 * rho 43257 * rho 43258 = rho 43259 := by
      linear_combination r5031
    have ha4 : rho 43260 * (1 + rho 43259) = rho 43257 + rho 43258 := by
      linear_combination r5032
    have ha5 : rho 43261 * (1 - rho 43259) = rho 43256 - rho 43257 - rho 43258 := by
      linear_combination r5033
    have haddx :
        rho 43260 * (1 + 3021 * (rho 43254 * seg45AccX158 rho) * (rho 43253 * seg45AccY158 rho)) =
          rho 43254 * seg45AccX158 rho + rho 43253 * seg45AccY158 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43261 * (1 - 3021 * (rho 43254 * seg45AccX158 rho) * (rho 43253 * seg45AccY158 rho)) =
          (-1) * (rho 43254 * seg45AccX158 rho) - rho 43253 * seg45AccY158 rho +
            (seg45AccY158 rho - seg45AccX158 rho * (-1)) * (rho 43253 + rho 43254) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43261 * (1 - rho 43259) = rho 43256 - rho 43257 - rho 43258 := ha5
        _ = (-1) * rho 43257 - rho 43258 + (seg45AccY158 rho - seg45AccX158 rho * (-1)) * (rho 43253 + rho 43254) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX159 rho = seg45AccX158 rho - Bool.toZMod bit * (seg45AccX158 rho - rho 43260) := by
      have hd : rho 43262 = Bool.toZMod bit * (rho 43260 - seg45AccX158 rho) := by
        rw [← hbit]
        unfold seg45AccX158
        linear_combination -r5034
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY159 rho = seg45AccY158 rho - Bool.toZMod bit * (seg45AccY158 rho - rho 43261) := by
      have hd : rho 43263 = Bool.toZMod bit * (rho 43261 - seg45AccY158 rho) := by
        rw [← hbit]
        unfold seg45AccY158
        linear_combination -r5035
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43253 * rho 43254 = rho 43264 := by linear_combination r5036
    have hd1 : rho 43253 * rho 43253 = rho 43265 := by linear_combination r5037
    have hd2 : rho 43254 * rho 43254 = rho 43266 := by linear_combination r5038
    have hd3 : rho 43267 * (rho 43254 * rho 43254 + rho 43253 * rho 43253 * (-1)) = 2 * (rho 43253 * rho 43254) := by
      rw [hd0, hd1, hd2]
      linear_combination r5039
    have hd4 : rho 43268 * (2 - (rho 43254 * rho 43254 + rho 43253 * rho 43253 * (-1))) = rho 43254 * rho 43254 - rho 43253 * rho 43253 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5040
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX158 rho : Seg45.F), (seg45AccY158 rho : Seg45.F)⟩
      ⟨(rho 43253 : Seg45.F), (rho 43254 : Seg45.F)⟩
      ⟨(rho 43260 : Seg45.F), (rho 43261 : Seg45.F)⟩
      ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
      ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung158

theorem seg45_rows159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5041 rho ∧ Seg45.relationRow5042 rho ∧ Seg45.relationRow5043 rho ∧ Seg45.relationRow5044 rho ∧ Seg45.relationRow5045 rho ∧ Seg45.relationRow5046 rho ∧ Seg45.relationRow5047 rho ∧ Seg45.relationRow5048 rho ∧ Seg45.relationRow5049 rho ∧ Seg45.relationRow5050 rho ∧ Seg45.relationRow5051 rho ∧ Seg45.relationRow5052 rho ∧ Seg45.relationRow5053 rho ∧ Seg45.relationRow5054 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart63 at p63
  rcases p63 with ⟨_, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩

theorem seg45_rung159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41107 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
        ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩
        ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
        ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩ := by
  obtain ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩ := seg45_rows159 rho h
  unfold Seg45.relationRow5041 at r5041
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5041
  unfold Seg45.relationRow5042 at r5042
  unfold Seg45.relationRow5043 at r5043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5043
  unfold Seg45.relationRow5044 at r5044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5044
  unfold Seg45.relationRow5045 at r5045
  unfold Seg45.relationRow5046 at r5046
  unfold Seg45.relationRow5047 at r5047
  unfold Seg45.relationRow5048 at r5048
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5048
  unfold Seg45.relationRow5049 at r5049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5049
  unfold Seg45.relationRow5050 at r5050
  unfold Seg45.relationRow5051 at r5051
  unfold Seg45.relationRow5052 at r5052
  unfold Seg45.relationRow5053 at r5053
  unfold Seg45.relationRow5054 at r5054
  have hrung159 (bit : Bool) (hbit : rho 41107 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
        ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩
        ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
        ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩ := by
    have hnextx : seg45AccX160 rho = seg45AccX159 rho + rho 43276 := by
      unfold seg45AccX160 seg45AccX159
      ring
    have hnexty : seg45AccY160 rho = seg45AccY159 rho + rho 43277 := by
      unfold seg45AccY160 seg45AccY159
      ring
    have hsum : seg45AccX159 rho + seg45AccY159 rho = rho 43269 := by
      unfold seg45AccX159 seg45AccY159
      linear_combination r5041
    have ha0 : (rho 43267 + rho 43268) * (seg45AccX159 rho + seg45AccY159 rho) = rho 43270 := by
      rw [hsum]
      linear_combination r5042
    have ha1 : rho 43268 * seg45AccX159 rho = rho 43271 := by
      unfold seg45AccX159
      linear_combination r5043
    have ha2 : rho 43267 * seg45AccY159 rho = rho 43272 := by
      unfold seg45AccY159
      linear_combination r5044
    have ha3 : 3021 * rho 43271 * rho 43272 = rho 43273 := by
      linear_combination r5045
    have ha4 : rho 43274 * (1 + rho 43273) = rho 43271 + rho 43272 := by
      linear_combination r5046
    have ha5 : rho 43275 * (1 - rho 43273) = rho 43270 - rho 43271 - rho 43272 := by
      linear_combination r5047
    have haddx :
        rho 43274 * (1 + 3021 * (rho 43268 * seg45AccX159 rho) * (rho 43267 * seg45AccY159 rho)) =
          rho 43268 * seg45AccX159 rho + rho 43267 * seg45AccY159 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43275 * (1 - 3021 * (rho 43268 * seg45AccX159 rho) * (rho 43267 * seg45AccY159 rho)) =
          (-1) * (rho 43268 * seg45AccX159 rho) - rho 43267 * seg45AccY159 rho +
            (seg45AccY159 rho - seg45AccX159 rho * (-1)) * (rho 43267 + rho 43268) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43275 * (1 - rho 43273) = rho 43270 - rho 43271 - rho 43272 := ha5
        _ = (-1) * rho 43271 - rho 43272 + (seg45AccY159 rho - seg45AccX159 rho * (-1)) * (rho 43267 + rho 43268) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX160 rho = seg45AccX159 rho - Bool.toZMod bit * (seg45AccX159 rho - rho 43274) := by
      have hd : rho 43276 = Bool.toZMod bit * (rho 43274 - seg45AccX159 rho) := by
        rw [← hbit]
        unfold seg45AccX159
        linear_combination -r5048
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY160 rho = seg45AccY159 rho - Bool.toZMod bit * (seg45AccY159 rho - rho 43275) := by
      have hd : rho 43277 = Bool.toZMod bit * (rho 43275 - seg45AccY159 rho) := by
        rw [← hbit]
        unfold seg45AccY159
        linear_combination -r5049
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43267 * rho 43268 = rho 43278 := by linear_combination r5050
    have hd1 : rho 43267 * rho 43267 = rho 43279 := by linear_combination r5051
    have hd2 : rho 43268 * rho 43268 = rho 43280 := by linear_combination r5052
    have hd3 : rho 43281 * (rho 43268 * rho 43268 + rho 43267 * rho 43267 * (-1)) = 2 * (rho 43267 * rho 43268) := by
      rw [hd0, hd1, hd2]
      linear_combination r5053
    have hd4 : rho 43282 * (2 - (rho 43268 * rho 43268 + rho 43267 * rho 43267 * (-1))) = rho 43268 * rho 43268 - rho 43267 * rho 43267 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5054
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX159 rho : Seg45.F), (seg45AccY159 rho : Seg45.F)⟩
      ⟨(rho 43267 : Seg45.F), (rho 43268 : Seg45.F)⟩
      ⟨(rho 43274 : Seg45.F), (rho 43275 : Seg45.F)⟩
      ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
      ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung159

theorem seg45_rows160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5055 rho ∧ Seg45.relationRow5056 rho ∧ Seg45.relationRow5057 rho ∧ Seg45.relationRow5058 rho ∧ Seg45.relationRow5059 rho ∧ Seg45.relationRow5060 rho ∧ Seg45.relationRow5061 rho ∧ Seg45.relationRow5062 rho ∧ Seg45.relationRow5063 rho ∧ Seg45.relationRow5064 rho ∧ Seg45.relationRow5065 rho ∧ Seg45.relationRow5066 rho ∧ Seg45.relationRow5067 rho ∧ Seg45.relationRow5068 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩

theorem seg45_rung160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41108 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
        ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩
        ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩
        ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩ := by
  obtain ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩ := seg45_rows160 rho h
  unfold Seg45.relationRow5055 at r5055
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5055
  unfold Seg45.relationRow5056 at r5056
  unfold Seg45.relationRow5057 at r5057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5057
  unfold Seg45.relationRow5058 at r5058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5058
  unfold Seg45.relationRow5059 at r5059
  unfold Seg45.relationRow5060 at r5060
  unfold Seg45.relationRow5061 at r5061
  unfold Seg45.relationRow5062 at r5062
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5062
  unfold Seg45.relationRow5063 at r5063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5063
  unfold Seg45.relationRow5064 at r5064
  unfold Seg45.relationRow5065 at r5065
  unfold Seg45.relationRow5066 at r5066
  unfold Seg45.relationRow5067 at r5067
  unfold Seg45.relationRow5068 at r5068
  have hrung160 (bit : Bool) (hbit : rho 41108 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
        ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩
        ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩
        ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩ := by
    have hnextx : seg45AccX161 rho = seg45AccX160 rho + rho 43290 := by
      unfold seg45AccX161 seg45AccX160
      ring
    have hnexty : seg45AccY161 rho = seg45AccY160 rho + rho 43291 := by
      unfold seg45AccY161 seg45AccY160
      ring
    have hsum : seg45AccX160 rho + seg45AccY160 rho = rho 43283 := by
      unfold seg45AccX160 seg45AccY160
      linear_combination r5055
    have ha0 : (rho 43281 + rho 43282) * (seg45AccX160 rho + seg45AccY160 rho) = rho 43284 := by
      rw [hsum]
      linear_combination r5056
    have ha1 : rho 43282 * seg45AccX160 rho = rho 43285 := by
      unfold seg45AccX160
      linear_combination r5057
    have ha2 : rho 43281 * seg45AccY160 rho = rho 43286 := by
      unfold seg45AccY160
      linear_combination r5058
    have ha3 : 3021 * rho 43285 * rho 43286 = rho 43287 := by
      linear_combination r5059
    have ha4 : rho 43288 * (1 + rho 43287) = rho 43285 + rho 43286 := by
      linear_combination r5060
    have ha5 : rho 43289 * (1 - rho 43287) = rho 43284 - rho 43285 - rho 43286 := by
      linear_combination r5061
    have haddx :
        rho 43288 * (1 + 3021 * (rho 43282 * seg45AccX160 rho) * (rho 43281 * seg45AccY160 rho)) =
          rho 43282 * seg45AccX160 rho + rho 43281 * seg45AccY160 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43289 * (1 - 3021 * (rho 43282 * seg45AccX160 rho) * (rho 43281 * seg45AccY160 rho)) =
          (-1) * (rho 43282 * seg45AccX160 rho) - rho 43281 * seg45AccY160 rho +
            (seg45AccY160 rho - seg45AccX160 rho * (-1)) * (rho 43281 + rho 43282) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43289 * (1 - rho 43287) = rho 43284 - rho 43285 - rho 43286 := ha5
        _ = (-1) * rho 43285 - rho 43286 + (seg45AccY160 rho - seg45AccX160 rho * (-1)) * (rho 43281 + rho 43282) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX161 rho = seg45AccX160 rho - Bool.toZMod bit * (seg45AccX160 rho - rho 43288) := by
      have hd : rho 43290 = Bool.toZMod bit * (rho 43288 - seg45AccX160 rho) := by
        rw [← hbit]
        unfold seg45AccX160
        linear_combination -r5062
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY161 rho = seg45AccY160 rho - Bool.toZMod bit * (seg45AccY160 rho - rho 43289) := by
      have hd : rho 43291 = Bool.toZMod bit * (rho 43289 - seg45AccY160 rho) := by
        rw [← hbit]
        unfold seg45AccY160
        linear_combination -r5063
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43281 * rho 43282 = rho 43292 := by linear_combination r5064
    have hd1 : rho 43281 * rho 43281 = rho 43293 := by linear_combination r5065
    have hd2 : rho 43282 * rho 43282 = rho 43294 := by linear_combination r5066
    have hd3 : rho 43295 * (rho 43282 * rho 43282 + rho 43281 * rho 43281 * (-1)) = 2 * (rho 43281 * rho 43282) := by
      rw [hd0, hd1, hd2]
      linear_combination r5067
    have hd4 : rho 43296 * (2 - (rho 43282 * rho 43282 + rho 43281 * rho 43281 * (-1))) = rho 43282 * rho 43282 - rho 43281 * rho 43281 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
      ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩
      ⟨(rho 43288 : Seg45.F), (rho 43289 : Seg45.F)⟩
      ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩
      ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung160

theorem seg45_rows161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5069 rho ∧ Seg45.relationRow5070 rho ∧ Seg45.relationRow5071 rho ∧ Seg45.relationRow5072 rho ∧ Seg45.relationRow5073 rho ∧ Seg45.relationRow5074 rho ∧ Seg45.relationRow5075 rho ∧ Seg45.relationRow5076 rho ∧ Seg45.relationRow5077 rho ∧ Seg45.relationRow5078 rho ∧ Seg45.relationRow5079 rho ∧ Seg45.relationRow5080 rho ∧ Seg45.relationRow5081 rho ∧ Seg45.relationRow5082 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩

theorem seg45_rung161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41109 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩
        ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩
        ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩
        ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩ := by
  obtain ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩ := seg45_rows161 rho h
  unfold Seg45.relationRow5069 at r5069
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5069
  unfold Seg45.relationRow5070 at r5070
  unfold Seg45.relationRow5071 at r5071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5071
  unfold Seg45.relationRow5072 at r5072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5072
  unfold Seg45.relationRow5073 at r5073
  unfold Seg45.relationRow5074 at r5074
  unfold Seg45.relationRow5075 at r5075
  unfold Seg45.relationRow5076 at r5076
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5076
  unfold Seg45.relationRow5077 at r5077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5077
  unfold Seg45.relationRow5078 at r5078
  unfold Seg45.relationRow5079 at r5079
  unfold Seg45.relationRow5080 at r5080
  unfold Seg45.relationRow5081 at r5081
  unfold Seg45.relationRow5082 at r5082
  have hrung161 (bit : Bool) (hbit : rho 41109 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩
        ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩
        ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩
        ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩ := by
    have hnextx : seg45AccX162 rho = seg45AccX161 rho + rho 43304 := by
      unfold seg45AccX162 seg45AccX161
      ring
    have hnexty : seg45AccY162 rho = seg45AccY161 rho + rho 43305 := by
      unfold seg45AccY162 seg45AccY161
      ring
    have hsum : seg45AccX161 rho + seg45AccY161 rho = rho 43297 := by
      unfold seg45AccX161 seg45AccY161
      linear_combination r5069
    have ha0 : (rho 43295 + rho 43296) * (seg45AccX161 rho + seg45AccY161 rho) = rho 43298 := by
      rw [hsum]
      linear_combination r5070
    have ha1 : rho 43296 * seg45AccX161 rho = rho 43299 := by
      unfold seg45AccX161
      linear_combination r5071
    have ha2 : rho 43295 * seg45AccY161 rho = rho 43300 := by
      unfold seg45AccY161
      linear_combination r5072
    have ha3 : 3021 * rho 43299 * rho 43300 = rho 43301 := by
      linear_combination r5073
    have ha4 : rho 43302 * (1 + rho 43301) = rho 43299 + rho 43300 := by
      linear_combination r5074
    have ha5 : rho 43303 * (1 - rho 43301) = rho 43298 - rho 43299 - rho 43300 := by
      linear_combination r5075
    have haddx :
        rho 43302 * (1 + 3021 * (rho 43296 * seg45AccX161 rho) * (rho 43295 * seg45AccY161 rho)) =
          rho 43296 * seg45AccX161 rho + rho 43295 * seg45AccY161 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43303 * (1 - 3021 * (rho 43296 * seg45AccX161 rho) * (rho 43295 * seg45AccY161 rho)) =
          (-1) * (rho 43296 * seg45AccX161 rho) - rho 43295 * seg45AccY161 rho +
            (seg45AccY161 rho - seg45AccX161 rho * (-1)) * (rho 43295 + rho 43296) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43303 * (1 - rho 43301) = rho 43298 - rho 43299 - rho 43300 := ha5
        _ = (-1) * rho 43299 - rho 43300 + (seg45AccY161 rho - seg45AccX161 rho * (-1)) * (rho 43295 + rho 43296) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX162 rho = seg45AccX161 rho - Bool.toZMod bit * (seg45AccX161 rho - rho 43302) := by
      have hd : rho 43304 = Bool.toZMod bit * (rho 43302 - seg45AccX161 rho) := by
        rw [← hbit]
        unfold seg45AccX161
        linear_combination -r5076
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY162 rho = seg45AccY161 rho - Bool.toZMod bit * (seg45AccY161 rho - rho 43303) := by
      have hd : rho 43305 = Bool.toZMod bit * (rho 43303 - seg45AccY161 rho) := by
        rw [← hbit]
        unfold seg45AccY161
        linear_combination -r5077
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43295 * rho 43296 = rho 43306 := by linear_combination r5078
    have hd1 : rho 43295 * rho 43295 = rho 43307 := by linear_combination r5079
    have hd2 : rho 43296 * rho 43296 = rho 43308 := by linear_combination r5080
    have hd3 : rho 43309 * (rho 43296 * rho 43296 + rho 43295 * rho 43295 * (-1)) = 2 * (rho 43295 * rho 43296) := by
      rw [hd0, hd1, hd2]
      linear_combination r5081
    have hd4 : rho 43310 * (2 - (rho 43296 * rho 43296 + rho 43295 * rho 43295 * (-1))) = rho 43296 * rho 43296 - rho 43295 * rho 43295 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩
      ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩
      ⟨(rho 43302 : Seg45.F), (rho 43303 : Seg45.F)⟩
      ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩
      ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung161

theorem seg45_rows162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5083 rho ∧ Seg45.relationRow5084 rho ∧ Seg45.relationRow5085 rho ∧ Seg45.relationRow5086 rho ∧ Seg45.relationRow5087 rho ∧ Seg45.relationRow5088 rho ∧ Seg45.relationRow5089 rho ∧ Seg45.relationRow5090 rho ∧ Seg45.relationRow5091 rho ∧ Seg45.relationRow5092 rho ∧ Seg45.relationRow5093 rho ∧ Seg45.relationRow5094 rho ∧ Seg45.relationRow5095 rho ∧ Seg45.relationRow5096 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩

theorem seg45_rung162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41110 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩
        ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩
        ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩
        ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩ := by
  obtain ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩ := seg45_rows162 rho h
  unfold Seg45.relationRow5083 at r5083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5083
  unfold Seg45.relationRow5084 at r5084
  unfold Seg45.relationRow5085 at r5085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5085
  unfold Seg45.relationRow5086 at r5086
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5086
  unfold Seg45.relationRow5087 at r5087
  unfold Seg45.relationRow5088 at r5088
  unfold Seg45.relationRow5089 at r5089
  unfold Seg45.relationRow5090 at r5090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5090
  unfold Seg45.relationRow5091 at r5091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5091
  unfold Seg45.relationRow5092 at r5092
  unfold Seg45.relationRow5093 at r5093
  unfold Seg45.relationRow5094 at r5094
  unfold Seg45.relationRow5095 at r5095
  unfold Seg45.relationRow5096 at r5096
  have hrung162 (bit : Bool) (hbit : rho 41110 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩
        ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩
        ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩
        ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩ := by
    have hnextx : seg45AccX163 rho = seg45AccX162 rho + rho 43318 := by
      unfold seg45AccX163 seg45AccX162
      ring
    have hnexty : seg45AccY163 rho = seg45AccY162 rho + rho 43319 := by
      unfold seg45AccY163 seg45AccY162
      ring
    have hsum : seg45AccX162 rho + seg45AccY162 rho = rho 43311 := by
      unfold seg45AccX162 seg45AccY162
      linear_combination r5083
    have ha0 : (rho 43309 + rho 43310) * (seg45AccX162 rho + seg45AccY162 rho) = rho 43312 := by
      rw [hsum]
      linear_combination r5084
    have ha1 : rho 43310 * seg45AccX162 rho = rho 43313 := by
      unfold seg45AccX162
      linear_combination r5085
    have ha2 : rho 43309 * seg45AccY162 rho = rho 43314 := by
      unfold seg45AccY162
      linear_combination r5086
    have ha3 : 3021 * rho 43313 * rho 43314 = rho 43315 := by
      linear_combination r5087
    have ha4 : rho 43316 * (1 + rho 43315) = rho 43313 + rho 43314 := by
      linear_combination r5088
    have ha5 : rho 43317 * (1 - rho 43315) = rho 43312 - rho 43313 - rho 43314 := by
      linear_combination r5089
    have haddx :
        rho 43316 * (1 + 3021 * (rho 43310 * seg45AccX162 rho) * (rho 43309 * seg45AccY162 rho)) =
          rho 43310 * seg45AccX162 rho + rho 43309 * seg45AccY162 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43317 * (1 - 3021 * (rho 43310 * seg45AccX162 rho) * (rho 43309 * seg45AccY162 rho)) =
          (-1) * (rho 43310 * seg45AccX162 rho) - rho 43309 * seg45AccY162 rho +
            (seg45AccY162 rho - seg45AccX162 rho * (-1)) * (rho 43309 + rho 43310) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43317 * (1 - rho 43315) = rho 43312 - rho 43313 - rho 43314 := ha5
        _ = (-1) * rho 43313 - rho 43314 + (seg45AccY162 rho - seg45AccX162 rho * (-1)) * (rho 43309 + rho 43310) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX163 rho = seg45AccX162 rho - Bool.toZMod bit * (seg45AccX162 rho - rho 43316) := by
      have hd : rho 43318 = Bool.toZMod bit * (rho 43316 - seg45AccX162 rho) := by
        rw [← hbit]
        unfold seg45AccX162
        linear_combination -r5090
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY163 rho = seg45AccY162 rho - Bool.toZMod bit * (seg45AccY162 rho - rho 43317) := by
      have hd : rho 43319 = Bool.toZMod bit * (rho 43317 - seg45AccY162 rho) := by
        rw [← hbit]
        unfold seg45AccY162
        linear_combination -r5091
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43309 * rho 43310 = rho 43320 := by linear_combination r5092
    have hd1 : rho 43309 * rho 43309 = rho 43321 := by linear_combination r5093
    have hd2 : rho 43310 * rho 43310 = rho 43322 := by linear_combination r5094
    have hd3 : rho 43323 * (rho 43310 * rho 43310 + rho 43309 * rho 43309 * (-1)) = 2 * (rho 43309 * rho 43310) := by
      rw [hd0, hd1, hd2]
      linear_combination r5095
    have hd4 : rho 43324 * (2 - (rho 43310 * rho 43310 + rho 43309 * rho 43309 * (-1))) = rho 43310 * rho 43310 - rho 43309 * rho 43309 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5096
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩
      ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩
      ⟨(rho 43316 : Seg45.F), (rho 43317 : Seg45.F)⟩
      ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩
      ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung162

theorem seg45_rows163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5097 rho ∧ Seg45.relationRow5098 rho ∧ Seg45.relationRow5099 rho ∧ Seg45.relationRow5100 rho ∧ Seg45.relationRow5101 rho ∧ Seg45.relationRow5102 rho ∧ Seg45.relationRow5103 rho ∧ Seg45.relationRow5104 rho ∧ Seg45.relationRow5105 rho ∧ Seg45.relationRow5106 rho ∧ Seg45.relationRow5107 rho ∧ Seg45.relationRow5108 rho ∧ Seg45.relationRow5109 rho ∧ Seg45.relationRow5110 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩

theorem seg45_rung163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41111 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩
        ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩
        ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩
        ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩ := by
  obtain ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩ := seg45_rows163 rho h
  unfold Seg45.relationRow5097 at r5097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5097
  unfold Seg45.relationRow5098 at r5098
  unfold Seg45.relationRow5099 at r5099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5099
  unfold Seg45.relationRow5100 at r5100
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5100
  unfold Seg45.relationRow5101 at r5101
  unfold Seg45.relationRow5102 at r5102
  unfold Seg45.relationRow5103 at r5103
  unfold Seg45.relationRow5104 at r5104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5104
  unfold Seg45.relationRow5105 at r5105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5105
  unfold Seg45.relationRow5106 at r5106
  unfold Seg45.relationRow5107 at r5107
  unfold Seg45.relationRow5108 at r5108
  unfold Seg45.relationRow5109 at r5109
  unfold Seg45.relationRow5110 at r5110
  have hrung163 (bit : Bool) (hbit : rho 41111 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩
        ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩
        ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩
        ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩ := by
    have hnextx : seg45AccX164 rho = seg45AccX163 rho + rho 43332 := by
      unfold seg45AccX164 seg45AccX163
      ring
    have hnexty : seg45AccY164 rho = seg45AccY163 rho + rho 43333 := by
      unfold seg45AccY164 seg45AccY163
      ring
    have hsum : seg45AccX163 rho + seg45AccY163 rho = rho 43325 := by
      unfold seg45AccX163 seg45AccY163
      linear_combination r5097
    have ha0 : (rho 43323 + rho 43324) * (seg45AccX163 rho + seg45AccY163 rho) = rho 43326 := by
      rw [hsum]
      linear_combination r5098
    have ha1 : rho 43324 * seg45AccX163 rho = rho 43327 := by
      unfold seg45AccX163
      linear_combination r5099
    have ha2 : rho 43323 * seg45AccY163 rho = rho 43328 := by
      unfold seg45AccY163
      linear_combination r5100
    have ha3 : 3021 * rho 43327 * rho 43328 = rho 43329 := by
      linear_combination r5101
    have ha4 : rho 43330 * (1 + rho 43329) = rho 43327 + rho 43328 := by
      linear_combination r5102
    have ha5 : rho 43331 * (1 - rho 43329) = rho 43326 - rho 43327 - rho 43328 := by
      linear_combination r5103
    have haddx :
        rho 43330 * (1 + 3021 * (rho 43324 * seg45AccX163 rho) * (rho 43323 * seg45AccY163 rho)) =
          rho 43324 * seg45AccX163 rho + rho 43323 * seg45AccY163 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43331 * (1 - 3021 * (rho 43324 * seg45AccX163 rho) * (rho 43323 * seg45AccY163 rho)) =
          (-1) * (rho 43324 * seg45AccX163 rho) - rho 43323 * seg45AccY163 rho +
            (seg45AccY163 rho - seg45AccX163 rho * (-1)) * (rho 43323 + rho 43324) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43331 * (1 - rho 43329) = rho 43326 - rho 43327 - rho 43328 := ha5
        _ = (-1) * rho 43327 - rho 43328 + (seg45AccY163 rho - seg45AccX163 rho * (-1)) * (rho 43323 + rho 43324) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX164 rho = seg45AccX163 rho - Bool.toZMod bit * (seg45AccX163 rho - rho 43330) := by
      have hd : rho 43332 = Bool.toZMod bit * (rho 43330 - seg45AccX163 rho) := by
        rw [← hbit]
        unfold seg45AccX163
        linear_combination -r5104
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY164 rho = seg45AccY163 rho - Bool.toZMod bit * (seg45AccY163 rho - rho 43331) := by
      have hd : rho 43333 = Bool.toZMod bit * (rho 43331 - seg45AccY163 rho) := by
        rw [← hbit]
        unfold seg45AccY163
        linear_combination -r5105
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43323 * rho 43324 = rho 43334 := by linear_combination r5106
    have hd1 : rho 43323 * rho 43323 = rho 43335 := by linear_combination r5107
    have hd2 : rho 43324 * rho 43324 = rho 43336 := by linear_combination r5108
    have hd3 : rho 43337 * (rho 43324 * rho 43324 + rho 43323 * rho 43323 * (-1)) = 2 * (rho 43323 * rho 43324) := by
      rw [hd0, hd1, hd2]
      linear_combination r5109
    have hd4 : rho 43338 * (2 - (rho 43324 * rho 43324 + rho 43323 * rho 43323 * (-1))) = rho 43324 * rho 43324 - rho 43323 * rho 43323 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5110
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩
      ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩
      ⟨(rho 43330 : Seg45.F), (rho 43331 : Seg45.F)⟩
      ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩
      ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung163

theorem seg45_rows164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5111 rho ∧ Seg45.relationRow5112 rho ∧ Seg45.relationRow5113 rho ∧ Seg45.relationRow5114 rho ∧ Seg45.relationRow5115 rho ∧ Seg45.relationRow5116 rho ∧ Seg45.relationRow5117 rho ∧ Seg45.relationRow5118 rho ∧ Seg45.relationRow5119 rho ∧ Seg45.relationRow5120 rho ∧ Seg45.relationRow5121 rho ∧ Seg45.relationRow5122 rho ∧ Seg45.relationRow5123 rho ∧ Seg45.relationRow5124 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩

theorem seg45_rung164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41112 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩
        ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩
        ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
        ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩ := by
  obtain ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩ := seg45_rows164 rho h
  unfold Seg45.relationRow5111 at r5111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5111
  unfold Seg45.relationRow5112 at r5112
  unfold Seg45.relationRow5113 at r5113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5113
  unfold Seg45.relationRow5114 at r5114
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5114
  unfold Seg45.relationRow5115 at r5115
  unfold Seg45.relationRow5116 at r5116
  unfold Seg45.relationRow5117 at r5117
  unfold Seg45.relationRow5118 at r5118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5118
  unfold Seg45.relationRow5119 at r5119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5119
  unfold Seg45.relationRow5120 at r5120
  unfold Seg45.relationRow5121 at r5121
  unfold Seg45.relationRow5122 at r5122
  unfold Seg45.relationRow5123 at r5123
  unfold Seg45.relationRow5124 at r5124
  have hrung164 (bit : Bool) (hbit : rho 41112 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩
        ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩
        ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
        ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩ := by
    have hnextx : seg45AccX165 rho = seg45AccX164 rho + rho 43346 := by
      unfold seg45AccX165 seg45AccX164
      ring
    have hnexty : seg45AccY165 rho = seg45AccY164 rho + rho 43347 := by
      unfold seg45AccY165 seg45AccY164
      ring
    have hsum : seg45AccX164 rho + seg45AccY164 rho = rho 43339 := by
      unfold seg45AccX164 seg45AccY164
      linear_combination r5111
    have ha0 : (rho 43337 + rho 43338) * (seg45AccX164 rho + seg45AccY164 rho) = rho 43340 := by
      rw [hsum]
      linear_combination r5112
    have ha1 : rho 43338 * seg45AccX164 rho = rho 43341 := by
      unfold seg45AccX164
      linear_combination r5113
    have ha2 : rho 43337 * seg45AccY164 rho = rho 43342 := by
      unfold seg45AccY164
      linear_combination r5114
    have ha3 : 3021 * rho 43341 * rho 43342 = rho 43343 := by
      linear_combination r5115
    have ha4 : rho 43344 * (1 + rho 43343) = rho 43341 + rho 43342 := by
      linear_combination r5116
    have ha5 : rho 43345 * (1 - rho 43343) = rho 43340 - rho 43341 - rho 43342 := by
      linear_combination r5117
    have haddx :
        rho 43344 * (1 + 3021 * (rho 43338 * seg45AccX164 rho) * (rho 43337 * seg45AccY164 rho)) =
          rho 43338 * seg45AccX164 rho + rho 43337 * seg45AccY164 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43345 * (1 - 3021 * (rho 43338 * seg45AccX164 rho) * (rho 43337 * seg45AccY164 rho)) =
          (-1) * (rho 43338 * seg45AccX164 rho) - rho 43337 * seg45AccY164 rho +
            (seg45AccY164 rho - seg45AccX164 rho * (-1)) * (rho 43337 + rho 43338) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43345 * (1 - rho 43343) = rho 43340 - rho 43341 - rho 43342 := ha5
        _ = (-1) * rho 43341 - rho 43342 + (seg45AccY164 rho - seg45AccX164 rho * (-1)) * (rho 43337 + rho 43338) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX165 rho = seg45AccX164 rho - Bool.toZMod bit * (seg45AccX164 rho - rho 43344) := by
      have hd : rho 43346 = Bool.toZMod bit * (rho 43344 - seg45AccX164 rho) := by
        rw [← hbit]
        unfold seg45AccX164
        linear_combination -r5118
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY165 rho = seg45AccY164 rho - Bool.toZMod bit * (seg45AccY164 rho - rho 43345) := by
      have hd : rho 43347 = Bool.toZMod bit * (rho 43345 - seg45AccY164 rho) := by
        rw [← hbit]
        unfold seg45AccY164
        linear_combination -r5119
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43337 * rho 43338 = rho 43348 := by linear_combination r5120
    have hd1 : rho 43337 * rho 43337 = rho 43349 := by linear_combination r5121
    have hd2 : rho 43338 * rho 43338 = rho 43350 := by linear_combination r5122
    have hd3 : rho 43351 * (rho 43338 * rho 43338 + rho 43337 * rho 43337 * (-1)) = 2 * (rho 43337 * rho 43338) := by
      rw [hd0, hd1, hd2]
      linear_combination r5123
    have hd4 : rho 43352 * (2 - (rho 43338 * rho 43338 + rho 43337 * rho 43337 * (-1))) = rho 43338 * rho 43338 - rho 43337 * rho 43337 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5124
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩
      ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩
      ⟨(rho 43344 : Seg45.F), (rho 43345 : Seg45.F)⟩
      ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
      ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung164

theorem seg45_hstep_c14 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 154 ≤ i → i < 165 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc hcur
  · exact seg45_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc hcur
  · exact seg45_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc hcur
  · exact seg45_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc hcur
  · exact seg45_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc hcur
  · exact seg45_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc hcur
  · exact seg45_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc hcur
  · exact seg45_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc hcur
  · exact seg45_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc hcur
  · exact seg45_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc hcur
  · exact seg45_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

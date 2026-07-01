import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6049 rho ∧ Seg16.relationRow6050 rho ∧ Seg16.relationRow6051 rho ∧ Seg16.relationRow6052 rho ∧ Seg16.relationRow6053 rho ∧ Seg16.relationRow6054 rho ∧ Seg16.relationRow6055 rho ∧ Seg16.relationRow6056 rho ∧ Seg16.relationRow6057 rho ∧ Seg16.relationRow6058 rho ∧ Seg16.relationRow6059 rho ∧ Seg16.relationRow6060 rho ∧ Seg16.relationRow6061 rho ∧ Seg16.relationRow6062 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg16.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩

theorem seg16_rung231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15523 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
        ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩
        ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩
        ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩ := by
  obtain ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩ := seg16_rows231 rho h
  unfold Seg16.relationRow6049 at r6049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6049
  unfold Seg16.relationRow6050 at r6050
  unfold Seg16.relationRow6051 at r6051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6051
  unfold Seg16.relationRow6052 at r6052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6052
  unfold Seg16.relationRow6053 at r6053
  unfold Seg16.relationRow6054 at r6054
  unfold Seg16.relationRow6055 at r6055
  unfold Seg16.relationRow6056 at r6056
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6056
  unfold Seg16.relationRow6057 at r6057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6057
  unfold Seg16.relationRow6058 at r6058
  unfold Seg16.relationRow6059 at r6059
  unfold Seg16.relationRow6060 at r6060
  unfold Seg16.relationRow6061 at r6061
  unfold Seg16.relationRow6062 at r6062
  have hrung231 (bit : Bool) (hbit : rho 15523 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
        ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩
        ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩
        ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩ := by
    have hnextx : seg16AccX232 rho = seg16AccX231 rho + rho 18628 := by
      unfold seg16AccX232 seg16AccX231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 81]
      ring
    have hnexty : seg16AccY232 rho = seg16AccY231 rho + rho 18629 := by
      unfold seg16AccY232 seg16AccY231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 81]
      ring
    have hsum : seg16AccX231 rho + seg16AccY231 rho = rho 18621 := by
      unfold seg16AccX231 seg16AccY231
      linear_combination r6049
    have ha0 : (rho 18619 + rho 18620) * (seg16AccX231 rho + seg16AccY231 rho) = rho 18622 := by
      rw [hsum]
      linear_combination r6050
    have ha1 : rho 18620 * seg16AccX231 rho = rho 18623 := by
      unfold seg16AccX231
      linear_combination r6051
    have ha2 : rho 18619 * seg16AccY231 rho = rho 18624 := by
      unfold seg16AccY231
      linear_combination r6052
    have ha3 : 3021 * rho 18623 * rho 18624 = rho 18625 := by
      linear_combination r6053
    have ha4 : rho 18626 * (1 + rho 18625) = rho 18623 + rho 18624 := by
      linear_combination r6054
    have ha5 : rho 18627 * (1 - rho 18625) = rho 18622 - rho 18623 - rho 18624 := by
      linear_combination r6055
    have haddx :
        rho 18626 * (1 + 3021 * (rho 18620 * seg16AccX231 rho) * (rho 18619 * seg16AccY231 rho)) =
          rho 18620 * seg16AccX231 rho + rho 18619 * seg16AccY231 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18627 * (1 - 3021 * (rho 18620 * seg16AccX231 rho) * (rho 18619 * seg16AccY231 rho)) =
          (-1) * (rho 18620 * seg16AccX231 rho) - rho 18619 * seg16AccY231 rho +
            (seg16AccY231 rho - seg16AccX231 rho * (-1)) * (rho 18619 + rho 18620) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18627 * (1 - rho 18625) = rho 18622 - rho 18623 - rho 18624 := ha5
        _ = (-1) * rho 18623 - rho 18624 + (seg16AccY231 rho - seg16AccX231 rho * (-1)) * (rho 18619 + rho 18620) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX232 rho = seg16AccX231 rho - Bool.toZMod bit * (seg16AccX231 rho - rho 18626) := by
      have hd : rho 18628 = Bool.toZMod bit * (rho 18626 - seg16AccX231 rho) := by
        rw [← hbit]
        unfold seg16AccX231
        linear_combination -r6056
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY232 rho = seg16AccY231 rho - Bool.toZMod bit * (seg16AccY231 rho - rho 18627) := by
      have hd : rho 18629 = Bool.toZMod bit * (rho 18627 - seg16AccY231 rho) := by
        rw [← hbit]
        unfold seg16AccY231
        linear_combination -r6057
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18619 * rho 18620 = rho 18630 := by linear_combination r6058
    have hd1 : rho 18619 * rho 18619 = rho 18631 := by linear_combination r6059
    have hd2 : rho 18620 * rho 18620 = rho 18632 := by linear_combination r6060
    have hd3 : rho 18633 * (rho 18620 * rho 18620 + rho 18619 * rho 18619 * (-1)) = 2 * (rho 18619 * rho 18620) := by
      rw [hd0, hd1, hd2]
      linear_combination r6061
    have hd4 : rho 18634 * (2 - (rho 18620 * rho 18620 + rho 18619 * rho 18619 * (-1))) = rho 18620 * rho 18620 - rho 18619 * rho 18619 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6062
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
      ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩
      ⟨(rho 18626 : Seg16.F), (rho 18627 : Seg16.F)⟩
      ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩
      ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung231

theorem seg16_rows232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6063 rho ∧ Seg16.relationRow6064 rho ∧ Seg16.relationRow6065 rho ∧ Seg16.relationRow6066 rho ∧ Seg16.relationRow6067 rho ∧ Seg16.relationRow6068 rho ∧ Seg16.relationRow6069 rho ∧ Seg16.relationRow6070 rho ∧ Seg16.relationRow6071 rho ∧ Seg16.relationRow6072 rho ∧ Seg16.relationRow6073 rho ∧ Seg16.relationRow6074 rho ∧ Seg16.relationRow6075 rho ∧ Seg16.relationRow6076 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg16.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, _, _, _⟩
  exact ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩

theorem seg16_rung232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15524 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩
        ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩
        ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩
        ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩ := by
  obtain ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩ := seg16_rows232 rho h
  unfold Seg16.relationRow6063 at r6063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6063
  unfold Seg16.relationRow6064 at r6064
  unfold Seg16.relationRow6065 at r6065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6065
  unfold Seg16.relationRow6066 at r6066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6066
  unfold Seg16.relationRow6067 at r6067
  unfold Seg16.relationRow6068 at r6068
  unfold Seg16.relationRow6069 at r6069
  unfold Seg16.relationRow6070 at r6070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6070
  unfold Seg16.relationRow6071 at r6071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6071
  unfold Seg16.relationRow6072 at r6072
  unfold Seg16.relationRow6073 at r6073
  unfold Seg16.relationRow6074 at r6074
  unfold Seg16.relationRow6075 at r6075
  unfold Seg16.relationRow6076 at r6076
  have hrung232 (bit : Bool) (hbit : rho 15524 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩
        ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩
        ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩
        ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩ := by
    have hnextx : seg16AccX233 rho = seg16AccX232 rho + rho 18642 := by
      unfold seg16AccX233 seg16AccX232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 82]
      ring
    have hnexty : seg16AccY233 rho = seg16AccY232 rho + rho 18643 := by
      unfold seg16AccY233 seg16AccY232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 82]
      ring
    have hsum : seg16AccX232 rho + seg16AccY232 rho = rho 18635 := by
      unfold seg16AccX232 seg16AccY232
      linear_combination r6063
    have ha0 : (rho 18633 + rho 18634) * (seg16AccX232 rho + seg16AccY232 rho) = rho 18636 := by
      rw [hsum]
      linear_combination r6064
    have ha1 : rho 18634 * seg16AccX232 rho = rho 18637 := by
      unfold seg16AccX232
      linear_combination r6065
    have ha2 : rho 18633 * seg16AccY232 rho = rho 18638 := by
      unfold seg16AccY232
      linear_combination r6066
    have ha3 : 3021 * rho 18637 * rho 18638 = rho 18639 := by
      linear_combination r6067
    have ha4 : rho 18640 * (1 + rho 18639) = rho 18637 + rho 18638 := by
      linear_combination r6068
    have ha5 : rho 18641 * (1 - rho 18639) = rho 18636 - rho 18637 - rho 18638 := by
      linear_combination r6069
    have haddx :
        rho 18640 * (1 + 3021 * (rho 18634 * seg16AccX232 rho) * (rho 18633 * seg16AccY232 rho)) =
          rho 18634 * seg16AccX232 rho + rho 18633 * seg16AccY232 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18641 * (1 - 3021 * (rho 18634 * seg16AccX232 rho) * (rho 18633 * seg16AccY232 rho)) =
          (-1) * (rho 18634 * seg16AccX232 rho) - rho 18633 * seg16AccY232 rho +
            (seg16AccY232 rho - seg16AccX232 rho * (-1)) * (rho 18633 + rho 18634) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18641 * (1 - rho 18639) = rho 18636 - rho 18637 - rho 18638 := ha5
        _ = (-1) * rho 18637 - rho 18638 + (seg16AccY232 rho - seg16AccX232 rho * (-1)) * (rho 18633 + rho 18634) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX233 rho = seg16AccX232 rho - Bool.toZMod bit * (seg16AccX232 rho - rho 18640) := by
      have hd : rho 18642 = Bool.toZMod bit * (rho 18640 - seg16AccX232 rho) := by
        rw [← hbit]
        unfold seg16AccX232
        linear_combination -r6070
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY233 rho = seg16AccY232 rho - Bool.toZMod bit * (seg16AccY232 rho - rho 18641) := by
      have hd : rho 18643 = Bool.toZMod bit * (rho 18641 - seg16AccY232 rho) := by
        rw [← hbit]
        unfold seg16AccY232
        linear_combination -r6071
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18633 * rho 18634 = rho 18644 := by linear_combination r6072
    have hd1 : rho 18633 * rho 18633 = rho 18645 := by linear_combination r6073
    have hd2 : rho 18634 * rho 18634 = rho 18646 := by linear_combination r6074
    have hd3 : rho 18647 * (rho 18634 * rho 18634 + rho 18633 * rho 18633 * (-1)) = 2 * (rho 18633 * rho 18634) := by
      rw [hd0, hd1, hd2]
      linear_combination r6075
    have hd4 : rho 18648 * (2 - (rho 18634 * rho 18634 + rho 18633 * rho 18633 * (-1))) = rho 18634 * rho 18634 - rho 18633 * rho 18633 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩
      ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩
      ⟨(rho 18640 : Seg16.F), (rho 18641 : Seg16.F)⟩
      ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩
      ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung232

theorem seg16_rows233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6077 rho ∧ Seg16.relationRow6078 rho ∧ Seg16.relationRow6079 rho ∧ Seg16.relationRow6080 rho ∧ Seg16.relationRow6081 rho ∧ Seg16.relationRow6082 rho ∧ Seg16.relationRow6083 rho ∧ Seg16.relationRow6084 rho ∧ Seg16.relationRow6085 rho ∧ Seg16.relationRow6086 rho ∧ Seg16.relationRow6087 rho ∧ Seg16.relationRow6088 rho ∧ Seg16.relationRow6089 rho ∧ Seg16.relationRow6090 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, p76, _, _, _
  ⟩
  unfold Seg16.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6077, r6078, r6079⟩
  unfold Seg16.relationPart76 at p76
  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6077, r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩

theorem seg16_rung233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15525 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩
        ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩
        ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩
        ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩ := by
  obtain ⟨r6077, r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩ := seg16_rows233 rho h
  unfold Seg16.relationRow6077 at r6077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6077
  unfold Seg16.relationRow6078 at r6078
  unfold Seg16.relationRow6079 at r6079
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6079
  unfold Seg16.relationRow6080 at r6080
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6080
  unfold Seg16.relationRow6081 at r6081
  unfold Seg16.relationRow6082 at r6082
  unfold Seg16.relationRow6083 at r6083
  unfold Seg16.relationRow6084 at r6084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6084
  unfold Seg16.relationRow6085 at r6085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6085
  unfold Seg16.relationRow6086 at r6086
  unfold Seg16.relationRow6087 at r6087
  unfold Seg16.relationRow6088 at r6088
  unfold Seg16.relationRow6089 at r6089
  unfold Seg16.relationRow6090 at r6090
  have hrung233 (bit : Bool) (hbit : rho 15525 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩
        ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩
        ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩
        ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩ := by
    have hnextx : seg16AccX234 rho = seg16AccX233 rho + rho 18656 := by
      unfold seg16AccX234 seg16AccX233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 83]
      ring
    have hnexty : seg16AccY234 rho = seg16AccY233 rho + rho 18657 := by
      unfold seg16AccY234 seg16AccY233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 83]
      ring
    have hsum : seg16AccX233 rho + seg16AccY233 rho = rho 18649 := by
      unfold seg16AccX233 seg16AccY233
      linear_combination r6077
    have ha0 : (rho 18647 + rho 18648) * (seg16AccX233 rho + seg16AccY233 rho) = rho 18650 := by
      rw [hsum]
      linear_combination r6078
    have ha1 : rho 18648 * seg16AccX233 rho = rho 18651 := by
      unfold seg16AccX233
      linear_combination r6079
    have ha2 : rho 18647 * seg16AccY233 rho = rho 18652 := by
      unfold seg16AccY233
      linear_combination r6080
    have ha3 : 3021 * rho 18651 * rho 18652 = rho 18653 := by
      linear_combination r6081
    have ha4 : rho 18654 * (1 + rho 18653) = rho 18651 + rho 18652 := by
      linear_combination r6082
    have ha5 : rho 18655 * (1 - rho 18653) = rho 18650 - rho 18651 - rho 18652 := by
      linear_combination r6083
    have haddx :
        rho 18654 * (1 + 3021 * (rho 18648 * seg16AccX233 rho) * (rho 18647 * seg16AccY233 rho)) =
          rho 18648 * seg16AccX233 rho + rho 18647 * seg16AccY233 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18655 * (1 - 3021 * (rho 18648 * seg16AccX233 rho) * (rho 18647 * seg16AccY233 rho)) =
          (-1) * (rho 18648 * seg16AccX233 rho) - rho 18647 * seg16AccY233 rho +
            (seg16AccY233 rho - seg16AccX233 rho * (-1)) * (rho 18647 + rho 18648) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18655 * (1 - rho 18653) = rho 18650 - rho 18651 - rho 18652 := ha5
        _ = (-1) * rho 18651 - rho 18652 + (seg16AccY233 rho - seg16AccX233 rho * (-1)) * (rho 18647 + rho 18648) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX234 rho = seg16AccX233 rho - Bool.toZMod bit * (seg16AccX233 rho - rho 18654) := by
      have hd : rho 18656 = Bool.toZMod bit * (rho 18654 - seg16AccX233 rho) := by
        rw [← hbit]
        unfold seg16AccX233
        linear_combination -r6084
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY234 rho = seg16AccY233 rho - Bool.toZMod bit * (seg16AccY233 rho - rho 18655) := by
      have hd : rho 18657 = Bool.toZMod bit * (rho 18655 - seg16AccY233 rho) := by
        rw [← hbit]
        unfold seg16AccY233
        linear_combination -r6085
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18647 * rho 18648 = rho 18658 := by linear_combination r6086
    have hd1 : rho 18647 * rho 18647 = rho 18659 := by linear_combination r6087
    have hd2 : rho 18648 * rho 18648 = rho 18660 := by linear_combination r6088
    have hd3 : rho 18661 * (rho 18648 * rho 18648 + rho 18647 * rho 18647 * (-1)) = 2 * (rho 18647 * rho 18648) := by
      rw [hd0, hd1, hd2]
      linear_combination r6089
    have hd4 : rho 18662 * (2 - (rho 18648 * rho 18648 + rho 18647 * rho 18647 * (-1))) = rho 18648 * rho 18648 - rho 18647 * rho 18647 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6090
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩
      ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩
      ⟨(rho 18654 : Seg16.F), (rho 18655 : Seg16.F)⟩
      ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩
      ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung233

theorem seg16_rows234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6091 rho ∧ Seg16.relationRow6092 rho ∧ Seg16.relationRow6093 rho ∧ Seg16.relationRow6094 rho ∧ Seg16.relationRow6095 rho ∧ Seg16.relationRow6096 rho ∧ Seg16.relationRow6097 rho ∧ Seg16.relationRow6098 rho ∧ Seg16.relationRow6099 rho ∧ Seg16.relationRow6100 rho ∧ Seg16.relationRow6101 rho ∧ Seg16.relationRow6102 rho ∧ Seg16.relationRow6103 rho ∧ Seg16.relationRow6104 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg16.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104⟩

theorem seg16_rung234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15526 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩
        ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩
        ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩
        ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩ := by
  obtain ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104⟩ := seg16_rows234 rho h
  unfold Seg16.relationRow6091 at r6091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6091
  unfold Seg16.relationRow6092 at r6092
  unfold Seg16.relationRow6093 at r6093
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6093
  unfold Seg16.relationRow6094 at r6094
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6094
  unfold Seg16.relationRow6095 at r6095
  unfold Seg16.relationRow6096 at r6096
  unfold Seg16.relationRow6097 at r6097
  unfold Seg16.relationRow6098 at r6098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6098
  unfold Seg16.relationRow6099 at r6099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6099
  unfold Seg16.relationRow6100 at r6100
  unfold Seg16.relationRow6101 at r6101
  unfold Seg16.relationRow6102 at r6102
  unfold Seg16.relationRow6103 at r6103
  unfold Seg16.relationRow6104 at r6104
  have hrung234 (bit : Bool) (hbit : rho 15526 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩
        ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩
        ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩
        ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩ := by
    have hnextx : seg16AccX235 rho = seg16AccX234 rho + rho 18670 := by
      unfold seg16AccX235 seg16AccX234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 84]
      ring
    have hnexty : seg16AccY235 rho = seg16AccY234 rho + rho 18671 := by
      unfold seg16AccY235 seg16AccY234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 84]
      ring
    have hsum : seg16AccX234 rho + seg16AccY234 rho = rho 18663 := by
      unfold seg16AccX234 seg16AccY234
      linear_combination r6091
    have ha0 : (rho 18661 + rho 18662) * (seg16AccX234 rho + seg16AccY234 rho) = rho 18664 := by
      rw [hsum]
      linear_combination r6092
    have ha1 : rho 18662 * seg16AccX234 rho = rho 18665 := by
      unfold seg16AccX234
      linear_combination r6093
    have ha2 : rho 18661 * seg16AccY234 rho = rho 18666 := by
      unfold seg16AccY234
      linear_combination r6094
    have ha3 : 3021 * rho 18665 * rho 18666 = rho 18667 := by
      linear_combination r6095
    have ha4 : rho 18668 * (1 + rho 18667) = rho 18665 + rho 18666 := by
      linear_combination r6096
    have ha5 : rho 18669 * (1 - rho 18667) = rho 18664 - rho 18665 - rho 18666 := by
      linear_combination r6097
    have haddx :
        rho 18668 * (1 + 3021 * (rho 18662 * seg16AccX234 rho) * (rho 18661 * seg16AccY234 rho)) =
          rho 18662 * seg16AccX234 rho + rho 18661 * seg16AccY234 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18669 * (1 - 3021 * (rho 18662 * seg16AccX234 rho) * (rho 18661 * seg16AccY234 rho)) =
          (-1) * (rho 18662 * seg16AccX234 rho) - rho 18661 * seg16AccY234 rho +
            (seg16AccY234 rho - seg16AccX234 rho * (-1)) * (rho 18661 + rho 18662) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18669 * (1 - rho 18667) = rho 18664 - rho 18665 - rho 18666 := ha5
        _ = (-1) * rho 18665 - rho 18666 + (seg16AccY234 rho - seg16AccX234 rho * (-1)) * (rho 18661 + rho 18662) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX235 rho = seg16AccX234 rho - Bool.toZMod bit * (seg16AccX234 rho - rho 18668) := by
      have hd : rho 18670 = Bool.toZMod bit * (rho 18668 - seg16AccX234 rho) := by
        rw [← hbit]
        unfold seg16AccX234
        linear_combination -r6098
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY235 rho = seg16AccY234 rho - Bool.toZMod bit * (seg16AccY234 rho - rho 18669) := by
      have hd : rho 18671 = Bool.toZMod bit * (rho 18669 - seg16AccY234 rho) := by
        rw [← hbit]
        unfold seg16AccY234
        linear_combination -r6099
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18661 * rho 18662 = rho 18672 := by linear_combination r6100
    have hd1 : rho 18661 * rho 18661 = rho 18673 := by linear_combination r6101
    have hd2 : rho 18662 * rho 18662 = rho 18674 := by linear_combination r6102
    have hd3 : rho 18675 * (rho 18662 * rho 18662 + rho 18661 * rho 18661 * (-1)) = 2 * (rho 18661 * rho 18662) := by
      rw [hd0, hd1, hd2]
      linear_combination r6103
    have hd4 : rho 18676 * (2 - (rho 18662 * rho 18662 + rho 18661 * rho 18661 * (-1))) = rho 18662 * rho 18662 - rho 18661 * rho 18661 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6104
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩
      ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩
      ⟨(rho 18668 : Seg16.F), (rho 18669 : Seg16.F)⟩
      ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩
      ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung234

theorem seg16_rows235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6105 rho ∧ Seg16.relationRow6106 rho ∧ Seg16.relationRow6107 rho ∧ Seg16.relationRow6108 rho ∧ Seg16.relationRow6109 rho ∧ Seg16.relationRow6110 rho ∧ Seg16.relationRow6111 rho ∧ Seg16.relationRow6112 rho ∧ Seg16.relationRow6113 rho ∧ Seg16.relationRow6114 rho ∧ Seg16.relationRow6115 rho ∧ Seg16.relationRow6116 rho ∧ Seg16.relationRow6117 rho ∧ Seg16.relationRow6118 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg16.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118⟩

theorem seg16_rung235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15527 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩
        ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩
        ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩
        ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩ := by
  obtain ⟨r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118⟩ := seg16_rows235 rho h
  unfold Seg16.relationRow6105 at r6105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6105
  unfold Seg16.relationRow6106 at r6106
  unfold Seg16.relationRow6107 at r6107
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6107
  unfold Seg16.relationRow6108 at r6108
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6108
  unfold Seg16.relationRow6109 at r6109
  unfold Seg16.relationRow6110 at r6110
  unfold Seg16.relationRow6111 at r6111
  unfold Seg16.relationRow6112 at r6112
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6112
  unfold Seg16.relationRow6113 at r6113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6113
  unfold Seg16.relationRow6114 at r6114
  unfold Seg16.relationRow6115 at r6115
  unfold Seg16.relationRow6116 at r6116
  unfold Seg16.relationRow6117 at r6117
  unfold Seg16.relationRow6118 at r6118
  have hrung235 (bit : Bool) (hbit : rho 15527 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩
        ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩
        ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩
        ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩ := by
    have hnextx : seg16AccX236 rho = seg16AccX235 rho + rho 18684 := by
      unfold seg16AccX236 seg16AccX235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 85]
      ring
    have hnexty : seg16AccY236 rho = seg16AccY235 rho + rho 18685 := by
      unfold seg16AccY236 seg16AccY235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 85]
      ring
    have hsum : seg16AccX235 rho + seg16AccY235 rho = rho 18677 := by
      unfold seg16AccX235 seg16AccY235
      linear_combination r6105
    have ha0 : (rho 18675 + rho 18676) * (seg16AccX235 rho + seg16AccY235 rho) = rho 18678 := by
      rw [hsum]
      linear_combination r6106
    have ha1 : rho 18676 * seg16AccX235 rho = rho 18679 := by
      unfold seg16AccX235
      linear_combination r6107
    have ha2 : rho 18675 * seg16AccY235 rho = rho 18680 := by
      unfold seg16AccY235
      linear_combination r6108
    have ha3 : 3021 * rho 18679 * rho 18680 = rho 18681 := by
      linear_combination r6109
    have ha4 : rho 18682 * (1 + rho 18681) = rho 18679 + rho 18680 := by
      linear_combination r6110
    have ha5 : rho 18683 * (1 - rho 18681) = rho 18678 - rho 18679 - rho 18680 := by
      linear_combination r6111
    have haddx :
        rho 18682 * (1 + 3021 * (rho 18676 * seg16AccX235 rho) * (rho 18675 * seg16AccY235 rho)) =
          rho 18676 * seg16AccX235 rho + rho 18675 * seg16AccY235 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18683 * (1 - 3021 * (rho 18676 * seg16AccX235 rho) * (rho 18675 * seg16AccY235 rho)) =
          (-1) * (rho 18676 * seg16AccX235 rho) - rho 18675 * seg16AccY235 rho +
            (seg16AccY235 rho - seg16AccX235 rho * (-1)) * (rho 18675 + rho 18676) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18683 * (1 - rho 18681) = rho 18678 - rho 18679 - rho 18680 := ha5
        _ = (-1) * rho 18679 - rho 18680 + (seg16AccY235 rho - seg16AccX235 rho * (-1)) * (rho 18675 + rho 18676) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX236 rho = seg16AccX235 rho - Bool.toZMod bit * (seg16AccX235 rho - rho 18682) := by
      have hd : rho 18684 = Bool.toZMod bit * (rho 18682 - seg16AccX235 rho) := by
        rw [← hbit]
        unfold seg16AccX235
        linear_combination -r6112
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY236 rho = seg16AccY235 rho - Bool.toZMod bit * (seg16AccY235 rho - rho 18683) := by
      have hd : rho 18685 = Bool.toZMod bit * (rho 18683 - seg16AccY235 rho) := by
        rw [← hbit]
        unfold seg16AccY235
        linear_combination -r6113
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18675 * rho 18676 = rho 18686 := by linear_combination r6114
    have hd1 : rho 18675 * rho 18675 = rho 18687 := by linear_combination r6115
    have hd2 : rho 18676 * rho 18676 = rho 18688 := by linear_combination r6116
    have hd3 : rho 18689 * (rho 18676 * rho 18676 + rho 18675 * rho 18675 * (-1)) = 2 * (rho 18675 * rho 18676) := by
      rw [hd0, hd1, hd2]
      linear_combination r6117
    have hd4 : rho 18690 * (2 - (rho 18676 * rho 18676 + rho 18675 * rho 18675 * (-1))) = rho 18676 * rho 18676 - rho 18675 * rho 18675 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6118
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩
      ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩
      ⟨(rho 18682 : Seg16.F), (rho 18683 : Seg16.F)⟩
      ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩
      ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung235

theorem seg16_rows236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6119 rho ∧ Seg16.relationRow6120 rho ∧ Seg16.relationRow6121 rho ∧ Seg16.relationRow6122 rho ∧ Seg16.relationRow6123 rho ∧ Seg16.relationRow6124 rho ∧ Seg16.relationRow6125 rho ∧ Seg16.relationRow6126 rho ∧ Seg16.relationRow6127 rho ∧ Seg16.relationRow6128 rho ∧ Seg16.relationRow6129 rho ∧ Seg16.relationRow6130 rho ∧ Seg16.relationRow6131 rho ∧ Seg16.relationRow6132 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg16.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩

theorem seg16_rung236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15528 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩
        ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩
        ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩
        ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩ := by
  obtain ⟨r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩ := seg16_rows236 rho h
  unfold Seg16.relationRow6119 at r6119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6119
  unfold Seg16.relationRow6120 at r6120
  unfold Seg16.relationRow6121 at r6121
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6121
  unfold Seg16.relationRow6122 at r6122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6122
  unfold Seg16.relationRow6123 at r6123
  unfold Seg16.relationRow6124 at r6124
  unfold Seg16.relationRow6125 at r6125
  unfold Seg16.relationRow6126 at r6126
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6126
  unfold Seg16.relationRow6127 at r6127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6127
  unfold Seg16.relationRow6128 at r6128
  unfold Seg16.relationRow6129 at r6129
  unfold Seg16.relationRow6130 at r6130
  unfold Seg16.relationRow6131 at r6131
  unfold Seg16.relationRow6132 at r6132
  have hrung236 (bit : Bool) (hbit : rho 15528 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩
        ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩
        ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩
        ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩ := by
    have hnextx : seg16AccX237 rho = seg16AccX236 rho + rho 18698 := by
      unfold seg16AccX237 seg16AccX236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 86]
      ring
    have hnexty : seg16AccY237 rho = seg16AccY236 rho + rho 18699 := by
      unfold seg16AccY237 seg16AccY236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 86]
      ring
    have hsum : seg16AccX236 rho + seg16AccY236 rho = rho 18691 := by
      unfold seg16AccX236 seg16AccY236
      linear_combination r6119
    have ha0 : (rho 18689 + rho 18690) * (seg16AccX236 rho + seg16AccY236 rho) = rho 18692 := by
      rw [hsum]
      linear_combination r6120
    have ha1 : rho 18690 * seg16AccX236 rho = rho 18693 := by
      unfold seg16AccX236
      linear_combination r6121
    have ha2 : rho 18689 * seg16AccY236 rho = rho 18694 := by
      unfold seg16AccY236
      linear_combination r6122
    have ha3 : 3021 * rho 18693 * rho 18694 = rho 18695 := by
      linear_combination r6123
    have ha4 : rho 18696 * (1 + rho 18695) = rho 18693 + rho 18694 := by
      linear_combination r6124
    have ha5 : rho 18697 * (1 - rho 18695) = rho 18692 - rho 18693 - rho 18694 := by
      linear_combination r6125
    have haddx :
        rho 18696 * (1 + 3021 * (rho 18690 * seg16AccX236 rho) * (rho 18689 * seg16AccY236 rho)) =
          rho 18690 * seg16AccX236 rho + rho 18689 * seg16AccY236 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18697 * (1 - 3021 * (rho 18690 * seg16AccX236 rho) * (rho 18689 * seg16AccY236 rho)) =
          (-1) * (rho 18690 * seg16AccX236 rho) - rho 18689 * seg16AccY236 rho +
            (seg16AccY236 rho - seg16AccX236 rho * (-1)) * (rho 18689 + rho 18690) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18697 * (1 - rho 18695) = rho 18692 - rho 18693 - rho 18694 := ha5
        _ = (-1) * rho 18693 - rho 18694 + (seg16AccY236 rho - seg16AccX236 rho * (-1)) * (rho 18689 + rho 18690) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX237 rho = seg16AccX236 rho - Bool.toZMod bit * (seg16AccX236 rho - rho 18696) := by
      have hd : rho 18698 = Bool.toZMod bit * (rho 18696 - seg16AccX236 rho) := by
        rw [← hbit]
        unfold seg16AccX236
        linear_combination -r6126
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY237 rho = seg16AccY236 rho - Bool.toZMod bit * (seg16AccY236 rho - rho 18697) := by
      have hd : rho 18699 = Bool.toZMod bit * (rho 18697 - seg16AccY236 rho) := by
        rw [← hbit]
        unfold seg16AccY236
        linear_combination -r6127
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18689 * rho 18690 = rho 18700 := by linear_combination r6128
    have hd1 : rho 18689 * rho 18689 = rho 18701 := by linear_combination r6129
    have hd2 : rho 18690 * rho 18690 = rho 18702 := by linear_combination r6130
    have hd3 : rho 18703 * (rho 18690 * rho 18690 + rho 18689 * rho 18689 * (-1)) = 2 * (rho 18689 * rho 18690) := by
      rw [hd0, hd1, hd2]
      linear_combination r6131
    have hd4 : rho 18704 * (2 - (rho 18690 * rho 18690 + rho 18689 * rho 18689 * (-1))) = rho 18690 * rho 18690 - rho 18689 * rho 18689 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6132
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩
      ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩
      ⟨(rho 18696 : Seg16.F), (rho 18697 : Seg16.F)⟩
      ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩
      ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung236

theorem seg16_rows237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6133 rho ∧ Seg16.relationRow6134 rho ∧ Seg16.relationRow6135 rho ∧ Seg16.relationRow6136 rho ∧ Seg16.relationRow6137 rho ∧ Seg16.relationRow6138 rho ∧ Seg16.relationRow6139 rho ∧ Seg16.relationRow6140 rho ∧ Seg16.relationRow6141 rho ∧ Seg16.relationRow6142 rho ∧ Seg16.relationRow6143 rho ∧ Seg16.relationRow6144 rho ∧ Seg16.relationRow6145 rho ∧ Seg16.relationRow6146 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg16.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146⟩

theorem seg16_rung237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15529 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩
        ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩
        ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩
        ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩ := by
  obtain ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146⟩ := seg16_rows237 rho h
  unfold Seg16.relationRow6133 at r6133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6133
  unfold Seg16.relationRow6134 at r6134
  unfold Seg16.relationRow6135 at r6135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6135
  unfold Seg16.relationRow6136 at r6136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6136
  unfold Seg16.relationRow6137 at r6137
  unfold Seg16.relationRow6138 at r6138
  unfold Seg16.relationRow6139 at r6139
  unfold Seg16.relationRow6140 at r6140
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6140
  unfold Seg16.relationRow6141 at r6141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6141
  unfold Seg16.relationRow6142 at r6142
  unfold Seg16.relationRow6143 at r6143
  unfold Seg16.relationRow6144 at r6144
  unfold Seg16.relationRow6145 at r6145
  unfold Seg16.relationRow6146 at r6146
  have hrung237 (bit : Bool) (hbit : rho 15529 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩
        ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩
        ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩
        ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩ := by
    have hnextx : seg16AccX238 rho = seg16AccX237 rho + rho 18712 := by
      unfold seg16AccX238 seg16AccX237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 87]
      ring
    have hnexty : seg16AccY238 rho = seg16AccY237 rho + rho 18713 := by
      unfold seg16AccY238 seg16AccY237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 87]
      ring
    have hsum : seg16AccX237 rho + seg16AccY237 rho = rho 18705 := by
      unfold seg16AccX237 seg16AccY237
      linear_combination r6133
    have ha0 : (rho 18703 + rho 18704) * (seg16AccX237 rho + seg16AccY237 rho) = rho 18706 := by
      rw [hsum]
      linear_combination r6134
    have ha1 : rho 18704 * seg16AccX237 rho = rho 18707 := by
      unfold seg16AccX237
      linear_combination r6135
    have ha2 : rho 18703 * seg16AccY237 rho = rho 18708 := by
      unfold seg16AccY237
      linear_combination r6136
    have ha3 : 3021 * rho 18707 * rho 18708 = rho 18709 := by
      linear_combination r6137
    have ha4 : rho 18710 * (1 + rho 18709) = rho 18707 + rho 18708 := by
      linear_combination r6138
    have ha5 : rho 18711 * (1 - rho 18709) = rho 18706 - rho 18707 - rho 18708 := by
      linear_combination r6139
    have haddx :
        rho 18710 * (1 + 3021 * (rho 18704 * seg16AccX237 rho) * (rho 18703 * seg16AccY237 rho)) =
          rho 18704 * seg16AccX237 rho + rho 18703 * seg16AccY237 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18711 * (1 - 3021 * (rho 18704 * seg16AccX237 rho) * (rho 18703 * seg16AccY237 rho)) =
          (-1) * (rho 18704 * seg16AccX237 rho) - rho 18703 * seg16AccY237 rho +
            (seg16AccY237 rho - seg16AccX237 rho * (-1)) * (rho 18703 + rho 18704) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18711 * (1 - rho 18709) = rho 18706 - rho 18707 - rho 18708 := ha5
        _ = (-1) * rho 18707 - rho 18708 + (seg16AccY237 rho - seg16AccX237 rho * (-1)) * (rho 18703 + rho 18704) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX238 rho = seg16AccX237 rho - Bool.toZMod bit * (seg16AccX237 rho - rho 18710) := by
      have hd : rho 18712 = Bool.toZMod bit * (rho 18710 - seg16AccX237 rho) := by
        rw [← hbit]
        unfold seg16AccX237
        linear_combination -r6140
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY238 rho = seg16AccY237 rho - Bool.toZMod bit * (seg16AccY237 rho - rho 18711) := by
      have hd : rho 18713 = Bool.toZMod bit * (rho 18711 - seg16AccY237 rho) := by
        rw [← hbit]
        unfold seg16AccY237
        linear_combination -r6141
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18703 * rho 18704 = rho 18714 := by linear_combination r6142
    have hd1 : rho 18703 * rho 18703 = rho 18715 := by linear_combination r6143
    have hd2 : rho 18704 * rho 18704 = rho 18716 := by linear_combination r6144
    have hd3 : rho 18717 * (rho 18704 * rho 18704 + rho 18703 * rho 18703 * (-1)) = 2 * (rho 18703 * rho 18704) := by
      rw [hd0, hd1, hd2]
      linear_combination r6145
    have hd4 : rho 18718 * (2 - (rho 18704 * rho 18704 + rho 18703 * rho 18703 * (-1))) = rho 18704 * rho 18704 - rho 18703 * rho 18703 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩
      ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩
      ⟨(rho 18710 : Seg16.F), (rho 18711 : Seg16.F)⟩
      ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩
      ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung237

theorem seg16_rows238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6147 rho ∧ Seg16.relationRow6148 rho ∧ Seg16.relationRow6149 rho ∧ Seg16.relationRow6150 rho ∧ Seg16.relationRow6151 rho ∧ Seg16.relationRow6152 rho ∧ Seg16.relationRow6153 rho ∧ Seg16.relationRow6154 rho ∧ Seg16.relationRow6155 rho ∧ Seg16.relationRow6156 rho ∧ Seg16.relationRow6157 rho ∧ Seg16.relationRow6158 rho ∧ Seg16.relationRow6159 rho ∧ Seg16.relationRow6160 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, p77, _, _
  ⟩
  unfold Seg16.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Seg16.relationPart77 at p77
  rcases p77 with ⟨r6160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159, r6160⟩

theorem seg16_rung238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15530 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩
        ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩
        ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩
        ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩ := by
  obtain ⟨r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159, r6160⟩ := seg16_rows238 rho h
  unfold Seg16.relationRow6147 at r6147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6147
  unfold Seg16.relationRow6148 at r6148
  unfold Seg16.relationRow6149 at r6149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6149
  unfold Seg16.relationRow6150 at r6150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6150
  unfold Seg16.relationRow6151 at r6151
  unfold Seg16.relationRow6152 at r6152
  unfold Seg16.relationRow6153 at r6153
  unfold Seg16.relationRow6154 at r6154
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6154
  unfold Seg16.relationRow6155 at r6155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6155
  unfold Seg16.relationRow6156 at r6156
  unfold Seg16.relationRow6157 at r6157
  unfold Seg16.relationRow6158 at r6158
  unfold Seg16.relationRow6159 at r6159
  unfold Seg16.relationRow6160 at r6160
  have hrung238 (bit : Bool) (hbit : rho 15530 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩
        ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩
        ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩
        ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩ := by
    have hnextx : seg16AccX239 rho = seg16AccX238 rho + rho 18726 := by
      unfold seg16AccX239 seg16AccX238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 88]
      ring
    have hnexty : seg16AccY239 rho = seg16AccY238 rho + rho 18727 := by
      unfold seg16AccY239 seg16AccY238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 88]
      ring
    have hsum : seg16AccX238 rho + seg16AccY238 rho = rho 18719 := by
      unfold seg16AccX238 seg16AccY238
      linear_combination r6147
    have ha0 : (rho 18717 + rho 18718) * (seg16AccX238 rho + seg16AccY238 rho) = rho 18720 := by
      rw [hsum]
      linear_combination r6148
    have ha1 : rho 18718 * seg16AccX238 rho = rho 18721 := by
      unfold seg16AccX238
      linear_combination r6149
    have ha2 : rho 18717 * seg16AccY238 rho = rho 18722 := by
      unfold seg16AccY238
      linear_combination r6150
    have ha3 : 3021 * rho 18721 * rho 18722 = rho 18723 := by
      linear_combination r6151
    have ha4 : rho 18724 * (1 + rho 18723) = rho 18721 + rho 18722 := by
      linear_combination r6152
    have ha5 : rho 18725 * (1 - rho 18723) = rho 18720 - rho 18721 - rho 18722 := by
      linear_combination r6153
    have haddx :
        rho 18724 * (1 + 3021 * (rho 18718 * seg16AccX238 rho) * (rho 18717 * seg16AccY238 rho)) =
          rho 18718 * seg16AccX238 rho + rho 18717 * seg16AccY238 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18725 * (1 - 3021 * (rho 18718 * seg16AccX238 rho) * (rho 18717 * seg16AccY238 rho)) =
          (-1) * (rho 18718 * seg16AccX238 rho) - rho 18717 * seg16AccY238 rho +
            (seg16AccY238 rho - seg16AccX238 rho * (-1)) * (rho 18717 + rho 18718) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18725 * (1 - rho 18723) = rho 18720 - rho 18721 - rho 18722 := ha5
        _ = (-1) * rho 18721 - rho 18722 + (seg16AccY238 rho - seg16AccX238 rho * (-1)) * (rho 18717 + rho 18718) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX239 rho = seg16AccX238 rho - Bool.toZMod bit * (seg16AccX238 rho - rho 18724) := by
      have hd : rho 18726 = Bool.toZMod bit * (rho 18724 - seg16AccX238 rho) := by
        rw [← hbit]
        unfold seg16AccX238
        linear_combination -r6154
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY239 rho = seg16AccY238 rho - Bool.toZMod bit * (seg16AccY238 rho - rho 18725) := by
      have hd : rho 18727 = Bool.toZMod bit * (rho 18725 - seg16AccY238 rho) := by
        rw [← hbit]
        unfold seg16AccY238
        linear_combination -r6155
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18717 * rho 18718 = rho 18728 := by linear_combination r6156
    have hd1 : rho 18717 * rho 18717 = rho 18729 := by linear_combination r6157
    have hd2 : rho 18718 * rho 18718 = rho 18730 := by linear_combination r6158
    have hd3 : rho 18731 * (rho 18718 * rho 18718 + rho 18717 * rho 18717 * (-1)) = 2 * (rho 18717 * rho 18718) := by
      rw [hd0, hd1, hd2]
      linear_combination r6159
    have hd4 : rho 18732 * (2 - (rho 18718 * rho 18718 + rho 18717 * rho 18717 * (-1))) = rho 18718 * rho 18718 - rho 18717 * rho 18717 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩
      ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩
      ⟨(rho 18724 : Seg16.F), (rho 18725 : Seg16.F)⟩
      ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩
      ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung238

theorem seg16_rows239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6161 rho ∧ Seg16.relationRow6162 rho ∧ Seg16.relationRow6163 rho ∧ Seg16.relationRow6164 rho ∧ Seg16.relationRow6165 rho ∧ Seg16.relationRow6166 rho ∧ Seg16.relationRow6167 rho ∧ Seg16.relationRow6168 rho ∧ Seg16.relationRow6169 rho ∧ Seg16.relationRow6170 rho ∧ Seg16.relationRow6171 rho ∧ Seg16.relationRow6172 rho ∧ Seg16.relationRow6173 rho ∧ Seg16.relationRow6174 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg16.relationPart77 at p77
  rcases p77 with ⟨_, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174⟩

theorem seg16_rung239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15531 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩
        ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩
        ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩
        ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩ := by
  obtain ⟨r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174⟩ := seg16_rows239 rho h
  unfold Seg16.relationRow6161 at r6161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6161
  unfold Seg16.relationRow6162 at r6162
  unfold Seg16.relationRow6163 at r6163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6163
  unfold Seg16.relationRow6164 at r6164
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6164
  unfold Seg16.relationRow6165 at r6165
  unfold Seg16.relationRow6166 at r6166
  unfold Seg16.relationRow6167 at r6167
  unfold Seg16.relationRow6168 at r6168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6168
  unfold Seg16.relationRow6169 at r6169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6169
  unfold Seg16.relationRow6170 at r6170
  unfold Seg16.relationRow6171 at r6171
  unfold Seg16.relationRow6172 at r6172
  unfold Seg16.relationRow6173 at r6173
  unfold Seg16.relationRow6174 at r6174
  have hrung239 (bit : Bool) (hbit : rho 15531 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩
        ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩
        ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩
        ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩ := by
    have hnextx : seg16AccX240 rho = seg16AccX239 rho + rho 18740 := by
      unfold seg16AccX240 seg16AccX239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 89]
      ring
    have hnexty : seg16AccY240 rho = seg16AccY239 rho + rho 18741 := by
      unfold seg16AccY240 seg16AccY239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 89]
      ring
    have hsum : seg16AccX239 rho + seg16AccY239 rho = rho 18733 := by
      unfold seg16AccX239 seg16AccY239
      linear_combination r6161
    have ha0 : (rho 18731 + rho 18732) * (seg16AccX239 rho + seg16AccY239 rho) = rho 18734 := by
      rw [hsum]
      linear_combination r6162
    have ha1 : rho 18732 * seg16AccX239 rho = rho 18735 := by
      unfold seg16AccX239
      linear_combination r6163
    have ha2 : rho 18731 * seg16AccY239 rho = rho 18736 := by
      unfold seg16AccY239
      linear_combination r6164
    have ha3 : 3021 * rho 18735 * rho 18736 = rho 18737 := by
      linear_combination r6165
    have ha4 : rho 18738 * (1 + rho 18737) = rho 18735 + rho 18736 := by
      linear_combination r6166
    have ha5 : rho 18739 * (1 - rho 18737) = rho 18734 - rho 18735 - rho 18736 := by
      linear_combination r6167
    have haddx :
        rho 18738 * (1 + 3021 * (rho 18732 * seg16AccX239 rho) * (rho 18731 * seg16AccY239 rho)) =
          rho 18732 * seg16AccX239 rho + rho 18731 * seg16AccY239 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18739 * (1 - 3021 * (rho 18732 * seg16AccX239 rho) * (rho 18731 * seg16AccY239 rho)) =
          (-1) * (rho 18732 * seg16AccX239 rho) - rho 18731 * seg16AccY239 rho +
            (seg16AccY239 rho - seg16AccX239 rho * (-1)) * (rho 18731 + rho 18732) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18739 * (1 - rho 18737) = rho 18734 - rho 18735 - rho 18736 := ha5
        _ = (-1) * rho 18735 - rho 18736 + (seg16AccY239 rho - seg16AccX239 rho * (-1)) * (rho 18731 + rho 18732) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX240 rho = seg16AccX239 rho - Bool.toZMod bit * (seg16AccX239 rho - rho 18738) := by
      have hd : rho 18740 = Bool.toZMod bit * (rho 18738 - seg16AccX239 rho) := by
        rw [← hbit]
        unfold seg16AccX239
        linear_combination -r6168
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY240 rho = seg16AccY239 rho - Bool.toZMod bit * (seg16AccY239 rho - rho 18739) := by
      have hd : rho 18741 = Bool.toZMod bit * (rho 18739 - seg16AccY239 rho) := by
        rw [← hbit]
        unfold seg16AccY239
        linear_combination -r6169
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18731 * rho 18732 = rho 18742 := by linear_combination r6170
    have hd1 : rho 18731 * rho 18731 = rho 18743 := by linear_combination r6171
    have hd2 : rho 18732 * rho 18732 = rho 18744 := by linear_combination r6172
    have hd3 : rho 18745 * (rho 18732 * rho 18732 + rho 18731 * rho 18731 * (-1)) = 2 * (rho 18731 * rho 18732) := by
      rw [hd0, hd1, hd2]
      linear_combination r6173
    have hd4 : rho 18746 * (2 - (rho 18732 * rho 18732 + rho 18731 * rho 18731 * (-1))) = rho 18732 * rho 18732 - rho 18731 * rho 18731 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6174
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩
      ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩
      ⟨(rho 18738 : Seg16.F), (rho 18739 : Seg16.F)⟩
      ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩
      ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung239

theorem seg16_rows240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6175 rho ∧ Seg16.relationRow6176 rho ∧ Seg16.relationRow6177 rho ∧ Seg16.relationRow6178 rho ∧ Seg16.relationRow6179 rho ∧ Seg16.relationRow6180 rho ∧ Seg16.relationRow6181 rho ∧ Seg16.relationRow6182 rho ∧ Seg16.relationRow6183 rho ∧ Seg16.relationRow6184 rho ∧ Seg16.relationRow6185 rho ∧ Seg16.relationRow6186 rho ∧ Seg16.relationRow6187 rho ∧ Seg16.relationRow6188 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg16.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188⟩

theorem seg16_rung240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15532 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩
        ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩
        ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩
        ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩ := by
  obtain ⟨r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188⟩ := seg16_rows240 rho h
  unfold Seg16.relationRow6175 at r6175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6175
  unfold Seg16.relationRow6176 at r6176
  unfold Seg16.relationRow6177 at r6177
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6177
  unfold Seg16.relationRow6178 at r6178
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6178
  unfold Seg16.relationRow6179 at r6179
  unfold Seg16.relationRow6180 at r6180
  unfold Seg16.relationRow6181 at r6181
  unfold Seg16.relationRow6182 at r6182
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6182
  unfold Seg16.relationRow6183 at r6183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6183
  unfold Seg16.relationRow6184 at r6184
  unfold Seg16.relationRow6185 at r6185
  unfold Seg16.relationRow6186 at r6186
  unfold Seg16.relationRow6187 at r6187
  unfold Seg16.relationRow6188 at r6188
  have hrung240 (bit : Bool) (hbit : rho 15532 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩
        ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩
        ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩
        ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩ := by
    have hnextx : seg16AccX241 rho = seg16AccX240 rho + rho 18754 := by
      unfold seg16AccX241 seg16AccX240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 90]
      ring
    have hnexty : seg16AccY241 rho = seg16AccY240 rho + rho 18755 := by
      unfold seg16AccY241 seg16AccY240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 90]
      ring
    have hsum : seg16AccX240 rho + seg16AccY240 rho = rho 18747 := by
      unfold seg16AccX240 seg16AccY240
      linear_combination r6175
    have ha0 : (rho 18745 + rho 18746) * (seg16AccX240 rho + seg16AccY240 rho) = rho 18748 := by
      rw [hsum]
      linear_combination r6176
    have ha1 : rho 18746 * seg16AccX240 rho = rho 18749 := by
      unfold seg16AccX240
      linear_combination r6177
    have ha2 : rho 18745 * seg16AccY240 rho = rho 18750 := by
      unfold seg16AccY240
      linear_combination r6178
    have ha3 : 3021 * rho 18749 * rho 18750 = rho 18751 := by
      linear_combination r6179
    have ha4 : rho 18752 * (1 + rho 18751) = rho 18749 + rho 18750 := by
      linear_combination r6180
    have ha5 : rho 18753 * (1 - rho 18751) = rho 18748 - rho 18749 - rho 18750 := by
      linear_combination r6181
    have haddx :
        rho 18752 * (1 + 3021 * (rho 18746 * seg16AccX240 rho) * (rho 18745 * seg16AccY240 rho)) =
          rho 18746 * seg16AccX240 rho + rho 18745 * seg16AccY240 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18753 * (1 - 3021 * (rho 18746 * seg16AccX240 rho) * (rho 18745 * seg16AccY240 rho)) =
          (-1) * (rho 18746 * seg16AccX240 rho) - rho 18745 * seg16AccY240 rho +
            (seg16AccY240 rho - seg16AccX240 rho * (-1)) * (rho 18745 + rho 18746) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18753 * (1 - rho 18751) = rho 18748 - rho 18749 - rho 18750 := ha5
        _ = (-1) * rho 18749 - rho 18750 + (seg16AccY240 rho - seg16AccX240 rho * (-1)) * (rho 18745 + rho 18746) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX241 rho = seg16AccX240 rho - Bool.toZMod bit * (seg16AccX240 rho - rho 18752) := by
      have hd : rho 18754 = Bool.toZMod bit * (rho 18752 - seg16AccX240 rho) := by
        rw [← hbit]
        unfold seg16AccX240
        linear_combination -r6182
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY241 rho = seg16AccY240 rho - Bool.toZMod bit * (seg16AccY240 rho - rho 18753) := by
      have hd : rho 18755 = Bool.toZMod bit * (rho 18753 - seg16AccY240 rho) := by
        rw [← hbit]
        unfold seg16AccY240
        linear_combination -r6183
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18745 * rho 18746 = rho 18756 := by linear_combination r6184
    have hd1 : rho 18745 * rho 18745 = rho 18757 := by linear_combination r6185
    have hd2 : rho 18746 * rho 18746 = rho 18758 := by linear_combination r6186
    have hd3 : rho 18759 * (rho 18746 * rho 18746 + rho 18745 * rho 18745 * (-1)) = 2 * (rho 18745 * rho 18746) := by
      rw [hd0, hd1, hd2]
      linear_combination r6187
    have hd4 : rho 18760 * (2 - (rho 18746 * rho 18746 + rho 18745 * rho 18745 * (-1))) = rho 18746 * rho 18746 - rho 18745 * rho 18745 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6188
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩
      ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩
      ⟨(rho 18752 : Seg16.F), (rho 18753 : Seg16.F)⟩
      ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩
      ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung240

theorem seg16_rows241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6189 rho ∧ Seg16.relationRow6190 rho ∧ Seg16.relationRow6191 rho ∧ Seg16.relationRow6192 rho ∧ Seg16.relationRow6193 rho ∧ Seg16.relationRow6194 rho ∧ Seg16.relationRow6195 rho ∧ Seg16.relationRow6196 rho ∧ Seg16.relationRow6197 rho ∧ Seg16.relationRow6198 rho ∧ Seg16.relationRow6199 rho ∧ Seg16.relationRow6200 rho ∧ Seg16.relationRow6201 rho ∧ Seg16.relationRow6202 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg16.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202⟩

theorem seg16_rung241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15533 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩
        ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩
        ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
        ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩ := by
  obtain ⟨r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202⟩ := seg16_rows241 rho h
  unfold Seg16.relationRow6189 at r6189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6189
  unfold Seg16.relationRow6190 at r6190
  unfold Seg16.relationRow6191 at r6191
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6191
  unfold Seg16.relationRow6192 at r6192
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6192
  unfold Seg16.relationRow6193 at r6193
  unfold Seg16.relationRow6194 at r6194
  unfold Seg16.relationRow6195 at r6195
  unfold Seg16.relationRow6196 at r6196
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6196
  unfold Seg16.relationRow6197 at r6197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6197
  unfold Seg16.relationRow6198 at r6198
  unfold Seg16.relationRow6199 at r6199
  unfold Seg16.relationRow6200 at r6200
  unfold Seg16.relationRow6201 at r6201
  unfold Seg16.relationRow6202 at r6202
  have hrung241 (bit : Bool) (hbit : rho 15533 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩
        ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩
        ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
        ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩ := by
    have hnextx : seg16AccX242 rho = seg16AccX241 rho + rho 18768 := by
      unfold seg16AccX242 seg16AccX241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 91]
      ring
    have hnexty : seg16AccY242 rho = seg16AccY241 rho + rho 18769 := by
      unfold seg16AccY242 seg16AccY241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 91]
      ring
    have hsum : seg16AccX241 rho + seg16AccY241 rho = rho 18761 := by
      unfold seg16AccX241 seg16AccY241
      linear_combination r6189
    have ha0 : (rho 18759 + rho 18760) * (seg16AccX241 rho + seg16AccY241 rho) = rho 18762 := by
      rw [hsum]
      linear_combination r6190
    have ha1 : rho 18760 * seg16AccX241 rho = rho 18763 := by
      unfold seg16AccX241
      linear_combination r6191
    have ha2 : rho 18759 * seg16AccY241 rho = rho 18764 := by
      unfold seg16AccY241
      linear_combination r6192
    have ha3 : 3021 * rho 18763 * rho 18764 = rho 18765 := by
      linear_combination r6193
    have ha4 : rho 18766 * (1 + rho 18765) = rho 18763 + rho 18764 := by
      linear_combination r6194
    have ha5 : rho 18767 * (1 - rho 18765) = rho 18762 - rho 18763 - rho 18764 := by
      linear_combination r6195
    have haddx :
        rho 18766 * (1 + 3021 * (rho 18760 * seg16AccX241 rho) * (rho 18759 * seg16AccY241 rho)) =
          rho 18760 * seg16AccX241 rho + rho 18759 * seg16AccY241 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18767 * (1 - 3021 * (rho 18760 * seg16AccX241 rho) * (rho 18759 * seg16AccY241 rho)) =
          (-1) * (rho 18760 * seg16AccX241 rho) - rho 18759 * seg16AccY241 rho +
            (seg16AccY241 rho - seg16AccX241 rho * (-1)) * (rho 18759 + rho 18760) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18767 * (1 - rho 18765) = rho 18762 - rho 18763 - rho 18764 := ha5
        _ = (-1) * rho 18763 - rho 18764 + (seg16AccY241 rho - seg16AccX241 rho * (-1)) * (rho 18759 + rho 18760) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX242 rho = seg16AccX241 rho - Bool.toZMod bit * (seg16AccX241 rho - rho 18766) := by
      have hd : rho 18768 = Bool.toZMod bit * (rho 18766 - seg16AccX241 rho) := by
        rw [← hbit]
        unfold seg16AccX241
        linear_combination -r6196
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY242 rho = seg16AccY241 rho - Bool.toZMod bit * (seg16AccY241 rho - rho 18767) := by
      have hd : rho 18769 = Bool.toZMod bit * (rho 18767 - seg16AccY241 rho) := by
        rw [← hbit]
        unfold seg16AccY241
        linear_combination -r6197
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18759 * rho 18760 = rho 18770 := by linear_combination r6198
    have hd1 : rho 18759 * rho 18759 = rho 18771 := by linear_combination r6199
    have hd2 : rho 18760 * rho 18760 = rho 18772 := by linear_combination r6200
    have hd3 : rho 18773 * (rho 18760 * rho 18760 + rho 18759 * rho 18759 * (-1)) = 2 * (rho 18759 * rho 18760) := by
      rw [hd0, hd1, hd2]
      linear_combination r6201
    have hd4 : rho 18774 * (2 - (rho 18760 * rho 18760 + rho 18759 * rho 18759 * (-1))) = rho 18760 * rho 18760 - rho 18759 * rho 18759 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6202
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩
      ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩
      ⟨(rho 18766 : Seg16.F), (rho 18767 : Seg16.F)⟩
      ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
      ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung241

theorem seg16_hstep_c21 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 231 ≤ i → i < 242 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung231 rho h bits[231]! (hbitAt 231 (by omega)) hacc hcur
  · exact seg16_rung232 rho h bits[232]! (hbitAt 232 (by omega)) hacc hcur
  · exact seg16_rung233 rho h bits[233]! (hbitAt 233 (by omega)) hacc hcur
  · exact seg16_rung234 rho h bits[234]! (hbitAt 234 (by omega)) hacc hcur
  · exact seg16_rung235 rho h bits[235]! (hbitAt 235 (by omega)) hacc hcur
  · exact seg16_rung236 rho h bits[236]! (hbitAt 236 (by omega)) hacc hcur
  · exact seg16_rung237 rho h bits[237]! (hbitAt 237 (by omega)) hacc hcur
  · exact seg16_rung238 rho h bits[238]! (hbitAt 238 (by omega)) hacc hcur
  · exact seg16_rung239 rho h bits[239]! (hbitAt 239 (by omega)) hacc hcur
  · exact seg16_rung240 rho h bits[240]! (hbitAt 240 (by omega)) hacc hcur
  · exact seg16_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

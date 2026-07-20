import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4286 rho ∧ Seg6.relationRow4287 rho ∧ Seg6.relationRow4288 rho ∧ Seg6.relationRow4289 rho ∧ Seg6.relationRow4290 rho ∧ Seg6.relationRow4291 rho ∧ Seg6.relationRow4292 rho ∧ Seg6.relationRow4293 rho ∧ Seg6.relationRow4294 rho ∧ Seg6.relationRow4295 rho ∧ Seg6.relationRow4296 rho ∧ Seg6.relationRow4297 rho ∧ Seg6.relationRow4298 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298⟩

theorem seg6_rung121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2005 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX121 rho : Seg6.F), (seg6AccY121 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4677 : Seg6.F), (rho 4678 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX121 rho : Seg6.F), (seg6AccY121 rho : Seg6.F)⟩
        ⟨(rho 4677 : Seg6.F), (rho 4678 : Seg6.F)⟩
        ⟨(seg6AccX122 rho : Seg6.F), (seg6AccY122 rho : Seg6.F)⟩
        ⟨(rho 4690 : Seg6.F), (rho 4691 : Seg6.F)⟩ := by
  obtain ⟨r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298⟩ := seg6_rows121 rho h
  unfold Seg6.relationRow4286 Seg6.relationLc693 at r4286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4286
  unfold Seg6.relationRow4287 Seg6.relationLc694 at r4287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4287
  unfold Seg6.relationRow4288 Seg6.relationLc695 at r4288
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4288
  unfold Seg6.relationRow4289 at r4289
  unfold Seg6.relationRow4290 at r4290
  unfold Seg6.relationRow4291 at r4291
  unfold Seg6.relationRow4292 Seg6.relationLc696 at r4292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4292
  unfold Seg6.relationRow4293 Seg6.relationLc697 at r4293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4293
  unfold Seg6.relationRow4294 at r4294
  unfold Seg6.relationRow4295 at r4295
  unfold Seg6.relationRow4296 at r4296
  unfold Seg6.relationRow4297 at r4297
  unfold Seg6.relationRow4298 at r4298
  have hrung121 (bit : Bool) (hbit : rho 2005 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX121 rho : Seg6.F), (seg6AccY121 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4677 : Seg6.F), (rho 4678 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX121 rho : Seg6.F), (seg6AccY121 rho : Seg6.F)⟩
        ⟨(rho 4677 : Seg6.F), (rho 4678 : Seg6.F)⟩
        ⟨(seg6AccX122 rho : Seg6.F), (seg6AccY122 rho : Seg6.F)⟩
        ⟨(rho 4690 : Seg6.F), (rho 4691 : Seg6.F)⟩ := by
    have hnextx : seg6AccX122 rho = seg6AccX121 rho + rho 4685 := by
      unfold seg6AccX122 seg6AccX121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 121]
      ring
    have hnexty : seg6AccY122 rho = seg6AccY121 rho + rho 4686 := by
      unfold seg6AccY122 seg6AccY121
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 121]
      ring
    have ha0 : (rho 4677 + rho 4678) * (seg6AccX121 rho + seg6AccY121 rho) = rho 4679 := by
      unfold seg6AccX121 seg6AccY121
      linear_combination r4286
    have ha1 : rho 4678 * seg6AccX121 rho = rho 4680 := by
      unfold seg6AccX121
      linear_combination r4287
    have ha2 : rho 4677 * seg6AccY121 rho = rho 4681 := by
      unfold seg6AccY121
      linear_combination r4288
    have ha3 : 3021 * rho 4680 * rho 4681 = rho 4682 := by
      linear_combination r4289
    have ha4 : rho 4683 * (1 + rho 4682) = rho 4680 + rho 4681 := by
      linear_combination r4290
    have ha5 : rho 4684 * (1 - rho 4682) = rho 4679 - rho 4680 - rho 4681 := by
      linear_combination r4291
    have haddx :
        rho 4683 * (1 + 3021 * (rho 4678 * seg6AccX121 rho) * (rho 4677 * seg6AccY121 rho)) =
          rho 4678 * seg6AccX121 rho + rho 4677 * seg6AccY121 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4684 * (1 - 3021 * (rho 4678 * seg6AccX121 rho) * (rho 4677 * seg6AccY121 rho)) =
          (-1) * (rho 4678 * seg6AccX121 rho) - rho 4677 * seg6AccY121 rho +
            (seg6AccY121 rho - seg6AccX121 rho * (-1)) * (rho 4677 + rho 4678) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4684 * (1 - rho 4682) = rho 4679 - rho 4680 - rho 4681 := ha5
        _ = (-1) * rho 4680 - rho 4681 + (seg6AccY121 rho - seg6AccX121 rho * (-1)) * (rho 4677 + rho 4678) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX122 rho = seg6AccX121 rho - Bool.toZMod bit * (seg6AccX121 rho - rho 4683) := by
      have hd : rho 4685 = Bool.toZMod bit * (rho 4683 - seg6AccX121 rho) := by
        rw [← hbit]
        unfold seg6AccX121
        linear_combination -r4292
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY122 rho = seg6AccY121 rho - Bool.toZMod bit * (seg6AccY121 rho - rho 4684) := by
      have hd : rho 4686 = Bool.toZMod bit * (rho 4684 - seg6AccY121 rho) := by
        rw [← hbit]
        unfold seg6AccY121
        linear_combination -r4293
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4677 * rho 4678 = rho 4687 := by linear_combination r4294
    have hd1 : rho 4677 * rho 4677 = rho 4688 := by linear_combination r4295
    have hd2 : rho 4678 * rho 4678 = rho 4689 := by linear_combination r4296
    have hd3 : rho 4690 * (rho 4678 * rho 4678 + rho 4677 * rho 4677 * (-1)) = 2 * (rho 4677 * rho 4678) := by
      rw [hd0, hd1, hd2]
      linear_combination r4297
    have hd4 : rho 4691 * (2 - (rho 4678 * rho 4678 + rho 4677 * rho 4677 * (-1))) = rho 4678 * rho 4678 - rho 4677 * rho 4677 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4298
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX121 rho : Seg6.F), (seg6AccY121 rho : Seg6.F)⟩
      ⟨(rho 4677 : Seg6.F), (rho 4678 : Seg6.F)⟩
      ⟨(rho 4683 : Seg6.F), (rho 4684 : Seg6.F)⟩
      ⟨(seg6AccX122 rho : Seg6.F), (seg6AccY122 rho : Seg6.F)⟩
      ⟨(rho 4690 : Seg6.F), (rho 4691 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung121

theorem seg6_rows122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4299 rho ∧ Seg6.relationRow4300 rho ∧ Seg6.relationRow4301 rho ∧ Seg6.relationRow4302 rho ∧ Seg6.relationRow4303 rho ∧ Seg6.relationRow4304 rho ∧ Seg6.relationRow4305 rho ∧ Seg6.relationRow4306 rho ∧ Seg6.relationRow4307 rho ∧ Seg6.relationRow4308 rho ∧ Seg6.relationRow4309 rho ∧ Seg6.relationRow4310 rho ∧ Seg6.relationRow4311 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, _, _, _, _, _, _, _, _⟩
  exact ⟨r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311⟩

theorem seg6_rung122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2006 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX122 rho : Seg6.F), (seg6AccY122 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4690 : Seg6.F), (rho 4691 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX122 rho : Seg6.F), (seg6AccY122 rho : Seg6.F)⟩
        ⟨(rho 4690 : Seg6.F), (rho 4691 : Seg6.F)⟩
        ⟨(seg6AccX123 rho : Seg6.F), (seg6AccY123 rho : Seg6.F)⟩
        ⟨(rho 4703 : Seg6.F), (rho 4704 : Seg6.F)⟩ := by
  obtain ⟨r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311⟩ := seg6_rows122 rho h
  unfold Seg6.relationRow4299 Seg6.relationLc698 at r4299
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4299
  unfold Seg6.relationRow4300 Seg6.relationLc699 at r4300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4300
  unfold Seg6.relationRow4301 Seg6.relationLc700 at r4301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4301
  unfold Seg6.relationRow4302 at r4302
  unfold Seg6.relationRow4303 at r4303
  unfold Seg6.relationRow4304 at r4304
  unfold Seg6.relationRow4305 Seg6.relationLc701 at r4305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4305
  unfold Seg6.relationRow4306 Seg6.relationLc702 at r4306
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4306
  unfold Seg6.relationRow4307 at r4307
  unfold Seg6.relationRow4308 at r4308
  unfold Seg6.relationRow4309 at r4309
  unfold Seg6.relationRow4310 at r4310
  unfold Seg6.relationRow4311 at r4311
  have hrung122 (bit : Bool) (hbit : rho 2006 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX122 rho : Seg6.F), (seg6AccY122 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4690 : Seg6.F), (rho 4691 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX122 rho : Seg6.F), (seg6AccY122 rho : Seg6.F)⟩
        ⟨(rho 4690 : Seg6.F), (rho 4691 : Seg6.F)⟩
        ⟨(seg6AccX123 rho : Seg6.F), (seg6AccY123 rho : Seg6.F)⟩
        ⟨(rho 4703 : Seg6.F), (rho 4704 : Seg6.F)⟩ := by
    have hnextx : seg6AccX123 rho = seg6AccX122 rho + rho 4698 := by
      unfold seg6AccX123 seg6AccX122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 122]
      ring
    have hnexty : seg6AccY123 rho = seg6AccY122 rho + rho 4699 := by
      unfold seg6AccY123 seg6AccY122
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 122]
      ring
    have ha0 : (rho 4690 + rho 4691) * (seg6AccX122 rho + seg6AccY122 rho) = rho 4692 := by
      unfold seg6AccX122 seg6AccY122
      linear_combination r4299
    have ha1 : rho 4691 * seg6AccX122 rho = rho 4693 := by
      unfold seg6AccX122
      linear_combination r4300
    have ha2 : rho 4690 * seg6AccY122 rho = rho 4694 := by
      unfold seg6AccY122
      linear_combination r4301
    have ha3 : 3021 * rho 4693 * rho 4694 = rho 4695 := by
      linear_combination r4302
    have ha4 : rho 4696 * (1 + rho 4695) = rho 4693 + rho 4694 := by
      linear_combination r4303
    have ha5 : rho 4697 * (1 - rho 4695) = rho 4692 - rho 4693 - rho 4694 := by
      linear_combination r4304
    have haddx :
        rho 4696 * (1 + 3021 * (rho 4691 * seg6AccX122 rho) * (rho 4690 * seg6AccY122 rho)) =
          rho 4691 * seg6AccX122 rho + rho 4690 * seg6AccY122 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4697 * (1 - 3021 * (rho 4691 * seg6AccX122 rho) * (rho 4690 * seg6AccY122 rho)) =
          (-1) * (rho 4691 * seg6AccX122 rho) - rho 4690 * seg6AccY122 rho +
            (seg6AccY122 rho - seg6AccX122 rho * (-1)) * (rho 4690 + rho 4691) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4697 * (1 - rho 4695) = rho 4692 - rho 4693 - rho 4694 := ha5
        _ = (-1) * rho 4693 - rho 4694 + (seg6AccY122 rho - seg6AccX122 rho * (-1)) * (rho 4690 + rho 4691) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX123 rho = seg6AccX122 rho - Bool.toZMod bit * (seg6AccX122 rho - rho 4696) := by
      have hd : rho 4698 = Bool.toZMod bit * (rho 4696 - seg6AccX122 rho) := by
        rw [← hbit]
        unfold seg6AccX122
        linear_combination -r4305
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY123 rho = seg6AccY122 rho - Bool.toZMod bit * (seg6AccY122 rho - rho 4697) := by
      have hd : rho 4699 = Bool.toZMod bit * (rho 4697 - seg6AccY122 rho) := by
        rw [← hbit]
        unfold seg6AccY122
        linear_combination -r4306
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4690 * rho 4691 = rho 4700 := by linear_combination r4307
    have hd1 : rho 4690 * rho 4690 = rho 4701 := by linear_combination r4308
    have hd2 : rho 4691 * rho 4691 = rho 4702 := by linear_combination r4309
    have hd3 : rho 4703 * (rho 4691 * rho 4691 + rho 4690 * rho 4690 * (-1)) = 2 * (rho 4690 * rho 4691) := by
      rw [hd0, hd1, hd2]
      linear_combination r4310
    have hd4 : rho 4704 * (2 - (rho 4691 * rho 4691 + rho 4690 * rho 4690 * (-1))) = rho 4691 * rho 4691 - rho 4690 * rho 4690 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4311
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX122 rho : Seg6.F), (seg6AccY122 rho : Seg6.F)⟩
      ⟨(rho 4690 : Seg6.F), (rho 4691 : Seg6.F)⟩
      ⟨(rho 4696 : Seg6.F), (rho 4697 : Seg6.F)⟩
      ⟨(seg6AccX123 rho : Seg6.F), (seg6AccY123 rho : Seg6.F)⟩
      ⟨(rho 4703 : Seg6.F), (rho 4704 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung122

theorem seg6_rows123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4312 rho ∧ Seg6.relationRow4313 rho ∧ Seg6.relationRow4314 rho ∧ Seg6.relationRow4315 rho ∧ Seg6.relationRow4316 rho ∧ Seg6.relationRow4317 rho ∧ Seg6.relationRow4318 rho ∧ Seg6.relationRow4319 rho ∧ Seg6.relationRow4320 rho ∧ Seg6.relationRow4321 rho ∧ Seg6.relationRow4322 rho ∧ Seg6.relationRow4323 rho ∧ Seg6.relationRow4324 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩
  unfold Seg6.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324⟩

theorem seg6_rung123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2007 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX123 rho : Seg6.F), (seg6AccY123 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4703 : Seg6.F), (rho 4704 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX123 rho : Seg6.F), (seg6AccY123 rho : Seg6.F)⟩
        ⟨(rho 4703 : Seg6.F), (rho 4704 : Seg6.F)⟩
        ⟨(seg6AccX124 rho : Seg6.F), (seg6AccY124 rho : Seg6.F)⟩
        ⟨(rho 4716 : Seg6.F), (rho 4717 : Seg6.F)⟩ := by
  obtain ⟨r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324⟩ := seg6_rows123 rho h
  unfold Seg6.relationRow4312 Seg6.relationLc703 at r4312
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4312
  unfold Seg6.relationRow4313 Seg6.relationLc704 at r4313
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4313
  unfold Seg6.relationRow4314 Seg6.relationLc705 at r4314
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4314
  unfold Seg6.relationRow4315 at r4315
  unfold Seg6.relationRow4316 at r4316
  unfold Seg6.relationRow4317 at r4317
  unfold Seg6.relationRow4318 Seg6.relationLc706 at r4318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4318
  unfold Seg6.relationRow4319 Seg6.relationLc707 at r4319
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4319
  unfold Seg6.relationRow4320 at r4320
  unfold Seg6.relationRow4321 at r4321
  unfold Seg6.relationRow4322 at r4322
  unfold Seg6.relationRow4323 at r4323
  unfold Seg6.relationRow4324 at r4324
  have hrung123 (bit : Bool) (hbit : rho 2007 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX123 rho : Seg6.F), (seg6AccY123 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4703 : Seg6.F), (rho 4704 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX123 rho : Seg6.F), (seg6AccY123 rho : Seg6.F)⟩
        ⟨(rho 4703 : Seg6.F), (rho 4704 : Seg6.F)⟩
        ⟨(seg6AccX124 rho : Seg6.F), (seg6AccY124 rho : Seg6.F)⟩
        ⟨(rho 4716 : Seg6.F), (rho 4717 : Seg6.F)⟩ := by
    have hnextx : seg6AccX124 rho = seg6AccX123 rho + rho 4711 := by
      unfold seg6AccX124 seg6AccX123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 123]
      ring
    have hnexty : seg6AccY124 rho = seg6AccY123 rho + rho 4712 := by
      unfold seg6AccY124 seg6AccY123
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 123]
      ring
    have ha0 : (rho 4703 + rho 4704) * (seg6AccX123 rho + seg6AccY123 rho) = rho 4705 := by
      unfold seg6AccX123 seg6AccY123
      linear_combination r4312
    have ha1 : rho 4704 * seg6AccX123 rho = rho 4706 := by
      unfold seg6AccX123
      linear_combination r4313
    have ha2 : rho 4703 * seg6AccY123 rho = rho 4707 := by
      unfold seg6AccY123
      linear_combination r4314
    have ha3 : 3021 * rho 4706 * rho 4707 = rho 4708 := by
      linear_combination r4315
    have ha4 : rho 4709 * (1 + rho 4708) = rho 4706 + rho 4707 := by
      linear_combination r4316
    have ha5 : rho 4710 * (1 - rho 4708) = rho 4705 - rho 4706 - rho 4707 := by
      linear_combination r4317
    have haddx :
        rho 4709 * (1 + 3021 * (rho 4704 * seg6AccX123 rho) * (rho 4703 * seg6AccY123 rho)) =
          rho 4704 * seg6AccX123 rho + rho 4703 * seg6AccY123 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4710 * (1 - 3021 * (rho 4704 * seg6AccX123 rho) * (rho 4703 * seg6AccY123 rho)) =
          (-1) * (rho 4704 * seg6AccX123 rho) - rho 4703 * seg6AccY123 rho +
            (seg6AccY123 rho - seg6AccX123 rho * (-1)) * (rho 4703 + rho 4704) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4710 * (1 - rho 4708) = rho 4705 - rho 4706 - rho 4707 := ha5
        _ = (-1) * rho 4706 - rho 4707 + (seg6AccY123 rho - seg6AccX123 rho * (-1)) * (rho 4703 + rho 4704) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX124 rho = seg6AccX123 rho - Bool.toZMod bit * (seg6AccX123 rho - rho 4709) := by
      have hd : rho 4711 = Bool.toZMod bit * (rho 4709 - seg6AccX123 rho) := by
        rw [← hbit]
        unfold seg6AccX123
        linear_combination -r4318
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY124 rho = seg6AccY123 rho - Bool.toZMod bit * (seg6AccY123 rho - rho 4710) := by
      have hd : rho 4712 = Bool.toZMod bit * (rho 4710 - seg6AccY123 rho) := by
        rw [← hbit]
        unfold seg6AccY123
        linear_combination -r4319
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4703 * rho 4704 = rho 4713 := by linear_combination r4320
    have hd1 : rho 4703 * rho 4703 = rho 4714 := by linear_combination r4321
    have hd2 : rho 4704 * rho 4704 = rho 4715 := by linear_combination r4322
    have hd3 : rho 4716 * (rho 4704 * rho 4704 + rho 4703 * rho 4703 * (-1)) = 2 * (rho 4703 * rho 4704) := by
      rw [hd0, hd1, hd2]
      linear_combination r4323
    have hd4 : rho 4717 * (2 - (rho 4704 * rho 4704 + rho 4703 * rho 4703 * (-1))) = rho 4704 * rho 4704 - rho 4703 * rho 4703 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4324
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX123 rho : Seg6.F), (seg6AccY123 rho : Seg6.F)⟩
      ⟨(rho 4703 : Seg6.F), (rho 4704 : Seg6.F)⟩
      ⟨(rho 4709 : Seg6.F), (rho 4710 : Seg6.F)⟩
      ⟨(seg6AccX124 rho : Seg6.F), (seg6AccY124 rho : Seg6.F)⟩
      ⟨(rho 4716 : Seg6.F), (rho 4717 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung123

theorem seg6_rows124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4325 rho ∧ Seg6.relationRow4326 rho ∧ Seg6.relationRow4327 rho ∧ Seg6.relationRow4328 rho ∧ Seg6.relationRow4329 rho ∧ Seg6.relationRow4330 rho ∧ Seg6.relationRow4331 rho ∧ Seg6.relationRow4332 rho ∧ Seg6.relationRow4333 rho ∧ Seg6.relationRow4334 rho ∧ Seg6.relationRow4335 rho ∧ Seg6.relationRow4336 rho ∧ Seg6.relationRow4337 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337⟩

theorem seg6_rung124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2008 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX124 rho : Seg6.F), (seg6AccY124 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4716 : Seg6.F), (rho 4717 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX124 rho : Seg6.F), (seg6AccY124 rho : Seg6.F)⟩
        ⟨(rho 4716 : Seg6.F), (rho 4717 : Seg6.F)⟩
        ⟨(seg6AccX125 rho : Seg6.F), (seg6AccY125 rho : Seg6.F)⟩
        ⟨(rho 4729 : Seg6.F), (rho 4730 : Seg6.F)⟩ := by
  obtain ⟨r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337⟩ := seg6_rows124 rho h
  unfold Seg6.relationRow4325 Seg6.relationLc708 at r4325
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4325
  unfold Seg6.relationRow4326 Seg6.relationLc709 at r4326
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4326
  unfold Seg6.relationRow4327 Seg6.relationLc710 at r4327
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4327
  unfold Seg6.relationRow4328 at r4328
  unfold Seg6.relationRow4329 at r4329
  unfold Seg6.relationRow4330 at r4330
  unfold Seg6.relationRow4331 Seg6.relationLc711 at r4331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4331
  unfold Seg6.relationRow4332 Seg6.relationLc712 at r4332
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4332
  unfold Seg6.relationRow4333 at r4333
  unfold Seg6.relationRow4334 at r4334
  unfold Seg6.relationRow4335 at r4335
  unfold Seg6.relationRow4336 at r4336
  unfold Seg6.relationRow4337 at r4337
  have hrung124 (bit : Bool) (hbit : rho 2008 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX124 rho : Seg6.F), (seg6AccY124 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4716 : Seg6.F), (rho 4717 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX124 rho : Seg6.F), (seg6AccY124 rho : Seg6.F)⟩
        ⟨(rho 4716 : Seg6.F), (rho 4717 : Seg6.F)⟩
        ⟨(seg6AccX125 rho : Seg6.F), (seg6AccY125 rho : Seg6.F)⟩
        ⟨(rho 4729 : Seg6.F), (rho 4730 : Seg6.F)⟩ := by
    have hnextx : seg6AccX125 rho = seg6AccX124 rho + rho 4724 := by
      unfold seg6AccX125 seg6AccX124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 124]
      ring
    have hnexty : seg6AccY125 rho = seg6AccY124 rho + rho 4725 := by
      unfold seg6AccY125 seg6AccY124
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 124]
      ring
    have ha0 : (rho 4716 + rho 4717) * (seg6AccX124 rho + seg6AccY124 rho) = rho 4718 := by
      unfold seg6AccX124 seg6AccY124
      linear_combination r4325
    have ha1 : rho 4717 * seg6AccX124 rho = rho 4719 := by
      unfold seg6AccX124
      linear_combination r4326
    have ha2 : rho 4716 * seg6AccY124 rho = rho 4720 := by
      unfold seg6AccY124
      linear_combination r4327
    have ha3 : 3021 * rho 4719 * rho 4720 = rho 4721 := by
      linear_combination r4328
    have ha4 : rho 4722 * (1 + rho 4721) = rho 4719 + rho 4720 := by
      linear_combination r4329
    have ha5 : rho 4723 * (1 - rho 4721) = rho 4718 - rho 4719 - rho 4720 := by
      linear_combination r4330
    have haddx :
        rho 4722 * (1 + 3021 * (rho 4717 * seg6AccX124 rho) * (rho 4716 * seg6AccY124 rho)) =
          rho 4717 * seg6AccX124 rho + rho 4716 * seg6AccY124 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4723 * (1 - 3021 * (rho 4717 * seg6AccX124 rho) * (rho 4716 * seg6AccY124 rho)) =
          (-1) * (rho 4717 * seg6AccX124 rho) - rho 4716 * seg6AccY124 rho +
            (seg6AccY124 rho - seg6AccX124 rho * (-1)) * (rho 4716 + rho 4717) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4723 * (1 - rho 4721) = rho 4718 - rho 4719 - rho 4720 := ha5
        _ = (-1) * rho 4719 - rho 4720 + (seg6AccY124 rho - seg6AccX124 rho * (-1)) * (rho 4716 + rho 4717) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX125 rho = seg6AccX124 rho - Bool.toZMod bit * (seg6AccX124 rho - rho 4722) := by
      have hd : rho 4724 = Bool.toZMod bit * (rho 4722 - seg6AccX124 rho) := by
        rw [← hbit]
        unfold seg6AccX124
        linear_combination -r4331
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY125 rho = seg6AccY124 rho - Bool.toZMod bit * (seg6AccY124 rho - rho 4723) := by
      have hd : rho 4725 = Bool.toZMod bit * (rho 4723 - seg6AccY124 rho) := by
        rw [← hbit]
        unfold seg6AccY124
        linear_combination -r4332
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4716 * rho 4717 = rho 4726 := by linear_combination r4333
    have hd1 : rho 4716 * rho 4716 = rho 4727 := by linear_combination r4334
    have hd2 : rho 4717 * rho 4717 = rho 4728 := by linear_combination r4335
    have hd3 : rho 4729 * (rho 4717 * rho 4717 + rho 4716 * rho 4716 * (-1)) = 2 * (rho 4716 * rho 4717) := by
      rw [hd0, hd1, hd2]
      linear_combination r4336
    have hd4 : rho 4730 * (2 - (rho 4717 * rho 4717 + rho 4716 * rho 4716 * (-1))) = rho 4717 * rho 4717 - rho 4716 * rho 4716 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4337
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX124 rho : Seg6.F), (seg6AccY124 rho : Seg6.F)⟩
      ⟨(rho 4716 : Seg6.F), (rho 4717 : Seg6.F)⟩
      ⟨(rho 4722 : Seg6.F), (rho 4723 : Seg6.F)⟩
      ⟨(seg6AccX125 rho : Seg6.F), (seg6AccY125 rho : Seg6.F)⟩
      ⟨(rho 4729 : Seg6.F), (rho 4730 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung124

theorem seg6_rows125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4338 rho ∧ Seg6.relationRow4339 rho ∧ Seg6.relationRow4340 rho ∧ Seg6.relationRow4341 rho ∧ Seg6.relationRow4342 rho ∧ Seg6.relationRow4343 rho ∧ Seg6.relationRow4344 rho ∧ Seg6.relationRow4345 rho ∧ Seg6.relationRow4346 rho ∧ Seg6.relationRow4347 rho ∧ Seg6.relationRow4348 rho ∧ Seg6.relationRow4349 rho ∧ Seg6.relationRow4350 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350⟩

theorem seg6_rung125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2009 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX125 rho : Seg6.F), (seg6AccY125 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4729 : Seg6.F), (rho 4730 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX125 rho : Seg6.F), (seg6AccY125 rho : Seg6.F)⟩
        ⟨(rho 4729 : Seg6.F), (rho 4730 : Seg6.F)⟩
        ⟨(seg6AccX126 rho : Seg6.F), (seg6AccY126 rho : Seg6.F)⟩
        ⟨(rho 4742 : Seg6.F), (rho 4743 : Seg6.F)⟩ := by
  obtain ⟨r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350⟩ := seg6_rows125 rho h
  unfold Seg6.relationRow4338 Seg6.relationLc713 at r4338
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4338
  unfold Seg6.relationRow4339 Seg6.relationLc714 at r4339
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4339
  unfold Seg6.relationRow4340 Seg6.relationLc715 at r4340
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4340
  unfold Seg6.relationRow4341 at r4341
  unfold Seg6.relationRow4342 at r4342
  unfold Seg6.relationRow4343 at r4343
  unfold Seg6.relationRow4344 Seg6.relationLc716 at r4344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4344
  unfold Seg6.relationRow4345 Seg6.relationLc717 at r4345
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4345
  unfold Seg6.relationRow4346 at r4346
  unfold Seg6.relationRow4347 at r4347
  unfold Seg6.relationRow4348 at r4348
  unfold Seg6.relationRow4349 at r4349
  unfold Seg6.relationRow4350 at r4350
  have hrung125 (bit : Bool) (hbit : rho 2009 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX125 rho : Seg6.F), (seg6AccY125 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4729 : Seg6.F), (rho 4730 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX125 rho : Seg6.F), (seg6AccY125 rho : Seg6.F)⟩
        ⟨(rho 4729 : Seg6.F), (rho 4730 : Seg6.F)⟩
        ⟨(seg6AccX126 rho : Seg6.F), (seg6AccY126 rho : Seg6.F)⟩
        ⟨(rho 4742 : Seg6.F), (rho 4743 : Seg6.F)⟩ := by
    have hnextx : seg6AccX126 rho = seg6AccX125 rho + rho 4737 := by
      unfold seg6AccX126 seg6AccX125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 125]
      ring
    have hnexty : seg6AccY126 rho = seg6AccY125 rho + rho 4738 := by
      unfold seg6AccY126 seg6AccY125
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 125]
      ring
    have ha0 : (rho 4729 + rho 4730) * (seg6AccX125 rho + seg6AccY125 rho) = rho 4731 := by
      unfold seg6AccX125 seg6AccY125
      linear_combination r4338
    have ha1 : rho 4730 * seg6AccX125 rho = rho 4732 := by
      unfold seg6AccX125
      linear_combination r4339
    have ha2 : rho 4729 * seg6AccY125 rho = rho 4733 := by
      unfold seg6AccY125
      linear_combination r4340
    have ha3 : 3021 * rho 4732 * rho 4733 = rho 4734 := by
      linear_combination r4341
    have ha4 : rho 4735 * (1 + rho 4734) = rho 4732 + rho 4733 := by
      linear_combination r4342
    have ha5 : rho 4736 * (1 - rho 4734) = rho 4731 - rho 4732 - rho 4733 := by
      linear_combination r4343
    have haddx :
        rho 4735 * (1 + 3021 * (rho 4730 * seg6AccX125 rho) * (rho 4729 * seg6AccY125 rho)) =
          rho 4730 * seg6AccX125 rho + rho 4729 * seg6AccY125 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4736 * (1 - 3021 * (rho 4730 * seg6AccX125 rho) * (rho 4729 * seg6AccY125 rho)) =
          (-1) * (rho 4730 * seg6AccX125 rho) - rho 4729 * seg6AccY125 rho +
            (seg6AccY125 rho - seg6AccX125 rho * (-1)) * (rho 4729 + rho 4730) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4736 * (1 - rho 4734) = rho 4731 - rho 4732 - rho 4733 := ha5
        _ = (-1) * rho 4732 - rho 4733 + (seg6AccY125 rho - seg6AccX125 rho * (-1)) * (rho 4729 + rho 4730) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX126 rho = seg6AccX125 rho - Bool.toZMod bit * (seg6AccX125 rho - rho 4735) := by
      have hd : rho 4737 = Bool.toZMod bit * (rho 4735 - seg6AccX125 rho) := by
        rw [← hbit]
        unfold seg6AccX125
        linear_combination -r4344
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY126 rho = seg6AccY125 rho - Bool.toZMod bit * (seg6AccY125 rho - rho 4736) := by
      have hd : rho 4738 = Bool.toZMod bit * (rho 4736 - seg6AccY125 rho) := by
        rw [← hbit]
        unfold seg6AccY125
        linear_combination -r4345
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4729 * rho 4730 = rho 4739 := by linear_combination r4346
    have hd1 : rho 4729 * rho 4729 = rho 4740 := by linear_combination r4347
    have hd2 : rho 4730 * rho 4730 = rho 4741 := by linear_combination r4348
    have hd3 : rho 4742 * (rho 4730 * rho 4730 + rho 4729 * rho 4729 * (-1)) = 2 * (rho 4729 * rho 4730) := by
      rw [hd0, hd1, hd2]
      linear_combination r4349
    have hd4 : rho 4743 * (2 - (rho 4730 * rho 4730 + rho 4729 * rho 4729 * (-1))) = rho 4730 * rho 4730 - rho 4729 * rho 4729 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4350
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX125 rho : Seg6.F), (seg6AccY125 rho : Seg6.F)⟩
      ⟨(rho 4729 : Seg6.F), (rho 4730 : Seg6.F)⟩
      ⟨(rho 4735 : Seg6.F), (rho 4736 : Seg6.F)⟩
      ⟨(seg6AccX126 rho : Seg6.F), (seg6AccY126 rho : Seg6.F)⟩
      ⟨(rho 4742 : Seg6.F), (rho 4743 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung125

theorem seg6_rows126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4351 rho ∧ Seg6.relationRow4352 rho ∧ Seg6.relationRow4353 rho ∧ Seg6.relationRow4354 rho ∧ Seg6.relationRow4355 rho ∧ Seg6.relationRow4356 rho ∧ Seg6.relationRow4357 rho ∧ Seg6.relationRow4358 rho ∧ Seg6.relationRow4359 rho ∧ Seg6.relationRow4360 rho ∧ Seg6.relationRow4361 rho ∧ Seg6.relationRow4362 rho ∧ Seg6.relationRow4363 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363⟩

theorem seg6_rung126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2010 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX126 rho : Seg6.F), (seg6AccY126 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4742 : Seg6.F), (rho 4743 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX126 rho : Seg6.F), (seg6AccY126 rho : Seg6.F)⟩
        ⟨(rho 4742 : Seg6.F), (rho 4743 : Seg6.F)⟩
        ⟨(seg6AccX127 rho : Seg6.F), (seg6AccY127 rho : Seg6.F)⟩
        ⟨(rho 4755 : Seg6.F), (rho 4756 : Seg6.F)⟩ := by
  obtain ⟨r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363⟩ := seg6_rows126 rho h
  unfold Seg6.relationRow4351 Seg6.relationLc718 at r4351
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4351
  unfold Seg6.relationRow4352 Seg6.relationLc719 at r4352
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4352
  unfold Seg6.relationRow4353 Seg6.relationLc720 at r4353
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4353
  unfold Seg6.relationRow4354 at r4354
  unfold Seg6.relationRow4355 at r4355
  unfold Seg6.relationRow4356 at r4356
  unfold Seg6.relationRow4357 Seg6.relationLc721 at r4357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4357
  unfold Seg6.relationRow4358 Seg6.relationLc722 at r4358
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4358
  unfold Seg6.relationRow4359 at r4359
  unfold Seg6.relationRow4360 at r4360
  unfold Seg6.relationRow4361 at r4361
  unfold Seg6.relationRow4362 at r4362
  unfold Seg6.relationRow4363 at r4363
  have hrung126 (bit : Bool) (hbit : rho 2010 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX126 rho : Seg6.F), (seg6AccY126 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4742 : Seg6.F), (rho 4743 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX126 rho : Seg6.F), (seg6AccY126 rho : Seg6.F)⟩
        ⟨(rho 4742 : Seg6.F), (rho 4743 : Seg6.F)⟩
        ⟨(seg6AccX127 rho : Seg6.F), (seg6AccY127 rho : Seg6.F)⟩
        ⟨(rho 4755 : Seg6.F), (rho 4756 : Seg6.F)⟩ := by
    have hnextx : seg6AccX127 rho = seg6AccX126 rho + rho 4750 := by
      unfold seg6AccX127 seg6AccX126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 126]
      ring
    have hnexty : seg6AccY127 rho = seg6AccY126 rho + rho 4751 := by
      unfold seg6AccY127 seg6AccY126
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 126]
      ring
    have ha0 : (rho 4742 + rho 4743) * (seg6AccX126 rho + seg6AccY126 rho) = rho 4744 := by
      unfold seg6AccX126 seg6AccY126
      linear_combination r4351
    have ha1 : rho 4743 * seg6AccX126 rho = rho 4745 := by
      unfold seg6AccX126
      linear_combination r4352
    have ha2 : rho 4742 * seg6AccY126 rho = rho 4746 := by
      unfold seg6AccY126
      linear_combination r4353
    have ha3 : 3021 * rho 4745 * rho 4746 = rho 4747 := by
      linear_combination r4354
    have ha4 : rho 4748 * (1 + rho 4747) = rho 4745 + rho 4746 := by
      linear_combination r4355
    have ha5 : rho 4749 * (1 - rho 4747) = rho 4744 - rho 4745 - rho 4746 := by
      linear_combination r4356
    have haddx :
        rho 4748 * (1 + 3021 * (rho 4743 * seg6AccX126 rho) * (rho 4742 * seg6AccY126 rho)) =
          rho 4743 * seg6AccX126 rho + rho 4742 * seg6AccY126 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4749 * (1 - 3021 * (rho 4743 * seg6AccX126 rho) * (rho 4742 * seg6AccY126 rho)) =
          (-1) * (rho 4743 * seg6AccX126 rho) - rho 4742 * seg6AccY126 rho +
            (seg6AccY126 rho - seg6AccX126 rho * (-1)) * (rho 4742 + rho 4743) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4749 * (1 - rho 4747) = rho 4744 - rho 4745 - rho 4746 := ha5
        _ = (-1) * rho 4745 - rho 4746 + (seg6AccY126 rho - seg6AccX126 rho * (-1)) * (rho 4742 + rho 4743) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX127 rho = seg6AccX126 rho - Bool.toZMod bit * (seg6AccX126 rho - rho 4748) := by
      have hd : rho 4750 = Bool.toZMod bit * (rho 4748 - seg6AccX126 rho) := by
        rw [← hbit]
        unfold seg6AccX126
        linear_combination -r4357
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY127 rho = seg6AccY126 rho - Bool.toZMod bit * (seg6AccY126 rho - rho 4749) := by
      have hd : rho 4751 = Bool.toZMod bit * (rho 4749 - seg6AccY126 rho) := by
        rw [← hbit]
        unfold seg6AccY126
        linear_combination -r4358
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4742 * rho 4743 = rho 4752 := by linear_combination r4359
    have hd1 : rho 4742 * rho 4742 = rho 4753 := by linear_combination r4360
    have hd2 : rho 4743 * rho 4743 = rho 4754 := by linear_combination r4361
    have hd3 : rho 4755 * (rho 4743 * rho 4743 + rho 4742 * rho 4742 * (-1)) = 2 * (rho 4742 * rho 4743) := by
      rw [hd0, hd1, hd2]
      linear_combination r4362
    have hd4 : rho 4756 * (2 - (rho 4743 * rho 4743 + rho 4742 * rho 4742 * (-1))) = rho 4743 * rho 4743 - rho 4742 * rho 4742 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4363
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX126 rho : Seg6.F), (seg6AccY126 rho : Seg6.F)⟩
      ⟨(rho 4742 : Seg6.F), (rho 4743 : Seg6.F)⟩
      ⟨(rho 4748 : Seg6.F), (rho 4749 : Seg6.F)⟩
      ⟨(seg6AccX127 rho : Seg6.F), (seg6AccY127 rho : Seg6.F)⟩
      ⟨(rho 4755 : Seg6.F), (rho 4756 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung126

theorem seg6_rows127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4364 rho ∧ Seg6.relationRow4365 rho ∧ Seg6.relationRow4366 rho ∧ Seg6.relationRow4367 rho ∧ Seg6.relationRow4368 rho ∧ Seg6.relationRow4369 rho ∧ Seg6.relationRow4370 rho ∧ Seg6.relationRow4371 rho ∧ Seg6.relationRow4372 rho ∧ Seg6.relationRow4373 rho ∧ Seg6.relationRow4374 rho ∧ Seg6.relationRow4375 rho ∧ Seg6.relationRow4376 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376⟩

theorem seg6_rung127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2011 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX127 rho : Seg6.F), (seg6AccY127 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4755 : Seg6.F), (rho 4756 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX127 rho : Seg6.F), (seg6AccY127 rho : Seg6.F)⟩
        ⟨(rho 4755 : Seg6.F), (rho 4756 : Seg6.F)⟩
        ⟨(seg6AccX128 rho : Seg6.F), (seg6AccY128 rho : Seg6.F)⟩
        ⟨(rho 4768 : Seg6.F), (rho 4769 : Seg6.F)⟩ := by
  obtain ⟨r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376⟩ := seg6_rows127 rho h
  unfold Seg6.relationRow4364 Seg6.relationLc723 at r4364
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4364
  unfold Seg6.relationRow4365 Seg6.relationLc724 at r4365
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4365
  unfold Seg6.relationRow4366 Seg6.relationLc725 at r4366
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4366
  unfold Seg6.relationRow4367 at r4367
  unfold Seg6.relationRow4368 at r4368
  unfold Seg6.relationRow4369 at r4369
  unfold Seg6.relationRow4370 Seg6.relationLc726 at r4370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4370
  unfold Seg6.relationRow4371 Seg6.relationLc727 at r4371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4371
  unfold Seg6.relationRow4372 at r4372
  unfold Seg6.relationRow4373 at r4373
  unfold Seg6.relationRow4374 at r4374
  unfold Seg6.relationRow4375 at r4375
  unfold Seg6.relationRow4376 at r4376
  have hrung127 (bit : Bool) (hbit : rho 2011 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX127 rho : Seg6.F), (seg6AccY127 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4755 : Seg6.F), (rho 4756 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX127 rho : Seg6.F), (seg6AccY127 rho : Seg6.F)⟩
        ⟨(rho 4755 : Seg6.F), (rho 4756 : Seg6.F)⟩
        ⟨(seg6AccX128 rho : Seg6.F), (seg6AccY128 rho : Seg6.F)⟩
        ⟨(rho 4768 : Seg6.F), (rho 4769 : Seg6.F)⟩ := by
    have hnextx : seg6AccX128 rho = seg6AccX127 rho + rho 4763 := by
      unfold seg6AccX128 seg6AccX127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 127]
      ring
    have hnexty : seg6AccY128 rho = seg6AccY127 rho + rho 4764 := by
      unfold seg6AccY128 seg6AccY127
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 127]
      ring
    have ha0 : (rho 4755 + rho 4756) * (seg6AccX127 rho + seg6AccY127 rho) = rho 4757 := by
      unfold seg6AccX127 seg6AccY127
      linear_combination r4364
    have ha1 : rho 4756 * seg6AccX127 rho = rho 4758 := by
      unfold seg6AccX127
      linear_combination r4365
    have ha2 : rho 4755 * seg6AccY127 rho = rho 4759 := by
      unfold seg6AccY127
      linear_combination r4366
    have ha3 : 3021 * rho 4758 * rho 4759 = rho 4760 := by
      linear_combination r4367
    have ha4 : rho 4761 * (1 + rho 4760) = rho 4758 + rho 4759 := by
      linear_combination r4368
    have ha5 : rho 4762 * (1 - rho 4760) = rho 4757 - rho 4758 - rho 4759 := by
      linear_combination r4369
    have haddx :
        rho 4761 * (1 + 3021 * (rho 4756 * seg6AccX127 rho) * (rho 4755 * seg6AccY127 rho)) =
          rho 4756 * seg6AccX127 rho + rho 4755 * seg6AccY127 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4762 * (1 - 3021 * (rho 4756 * seg6AccX127 rho) * (rho 4755 * seg6AccY127 rho)) =
          (-1) * (rho 4756 * seg6AccX127 rho) - rho 4755 * seg6AccY127 rho +
            (seg6AccY127 rho - seg6AccX127 rho * (-1)) * (rho 4755 + rho 4756) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4762 * (1 - rho 4760) = rho 4757 - rho 4758 - rho 4759 := ha5
        _ = (-1) * rho 4758 - rho 4759 + (seg6AccY127 rho - seg6AccX127 rho * (-1)) * (rho 4755 + rho 4756) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX128 rho = seg6AccX127 rho - Bool.toZMod bit * (seg6AccX127 rho - rho 4761) := by
      have hd : rho 4763 = Bool.toZMod bit * (rho 4761 - seg6AccX127 rho) := by
        rw [← hbit]
        unfold seg6AccX127
        linear_combination -r4370
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY128 rho = seg6AccY127 rho - Bool.toZMod bit * (seg6AccY127 rho - rho 4762) := by
      have hd : rho 4764 = Bool.toZMod bit * (rho 4762 - seg6AccY127 rho) := by
        rw [← hbit]
        unfold seg6AccY127
        linear_combination -r4371
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4755 * rho 4756 = rho 4765 := by linear_combination r4372
    have hd1 : rho 4755 * rho 4755 = rho 4766 := by linear_combination r4373
    have hd2 : rho 4756 * rho 4756 = rho 4767 := by linear_combination r4374
    have hd3 : rho 4768 * (rho 4756 * rho 4756 + rho 4755 * rho 4755 * (-1)) = 2 * (rho 4755 * rho 4756) := by
      rw [hd0, hd1, hd2]
      linear_combination r4375
    have hd4 : rho 4769 * (2 - (rho 4756 * rho 4756 + rho 4755 * rho 4755 * (-1))) = rho 4756 * rho 4756 - rho 4755 * rho 4755 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX127 rho : Seg6.F), (seg6AccY127 rho : Seg6.F)⟩
      ⟨(rho 4755 : Seg6.F), (rho 4756 : Seg6.F)⟩
      ⟨(rho 4761 : Seg6.F), (rho 4762 : Seg6.F)⟩
      ⟨(seg6AccX128 rho : Seg6.F), (seg6AccY128 rho : Seg6.F)⟩
      ⟨(rho 4768 : Seg6.F), (rho 4769 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung127

theorem seg6_rows128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4377 rho ∧ Seg6.relationRow4378 rho ∧ Seg6.relationRow4379 rho ∧ Seg6.relationRow4380 rho ∧ Seg6.relationRow4381 rho ∧ Seg6.relationRow4382 rho ∧ Seg6.relationRow4383 rho ∧ Seg6.relationRow4384 rho ∧ Seg6.relationRow4385 rho ∧ Seg6.relationRow4386 rho ∧ Seg6.relationRow4387 rho ∧ Seg6.relationRow4388 rho ∧ Seg6.relationRow4389 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389⟩

theorem seg6_rung128 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2012 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX128 rho : Seg6.F), (seg6AccY128 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4768 : Seg6.F), (rho 4769 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX128 rho : Seg6.F), (seg6AccY128 rho : Seg6.F)⟩
        ⟨(rho 4768 : Seg6.F), (rho 4769 : Seg6.F)⟩
        ⟨(seg6AccX129 rho : Seg6.F), (seg6AccY129 rho : Seg6.F)⟩
        ⟨(rho 4781 : Seg6.F), (rho 4782 : Seg6.F)⟩ := by
  obtain ⟨r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389⟩ := seg6_rows128 rho h
  unfold Seg6.relationRow4377 Seg6.relationLc728 at r4377
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4377
  unfold Seg6.relationRow4378 Seg6.relationLc729 at r4378
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4378
  unfold Seg6.relationRow4379 Seg6.relationLc730 at r4379
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4379
  unfold Seg6.relationRow4380 at r4380
  unfold Seg6.relationRow4381 at r4381
  unfold Seg6.relationRow4382 at r4382
  unfold Seg6.relationRow4383 Seg6.relationLc731 at r4383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4383
  unfold Seg6.relationRow4384 Seg6.relationLc732 at r4384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4384
  unfold Seg6.relationRow4385 at r4385
  unfold Seg6.relationRow4386 at r4386
  unfold Seg6.relationRow4387 at r4387
  unfold Seg6.relationRow4388 at r4388
  unfold Seg6.relationRow4389 at r4389
  have hrung128 (bit : Bool) (hbit : rho 2012 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX128 rho : Seg6.F), (seg6AccY128 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4768 : Seg6.F), (rho 4769 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX128 rho : Seg6.F), (seg6AccY128 rho : Seg6.F)⟩
        ⟨(rho 4768 : Seg6.F), (rho 4769 : Seg6.F)⟩
        ⟨(seg6AccX129 rho : Seg6.F), (seg6AccY129 rho : Seg6.F)⟩
        ⟨(rho 4781 : Seg6.F), (rho 4782 : Seg6.F)⟩ := by
    have hnextx : seg6AccX129 rho = seg6AccX128 rho + rho 4776 := by
      unfold seg6AccX129 seg6AccX128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 128]
      ring
    have hnexty : seg6AccY129 rho = seg6AccY128 rho + rho 4777 := by
      unfold seg6AccY129 seg6AccY128
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 128]
      ring
    have ha0 : (rho 4768 + rho 4769) * (seg6AccX128 rho + seg6AccY128 rho) = rho 4770 := by
      unfold seg6AccX128 seg6AccY128
      linear_combination r4377
    have ha1 : rho 4769 * seg6AccX128 rho = rho 4771 := by
      unfold seg6AccX128
      linear_combination r4378
    have ha2 : rho 4768 * seg6AccY128 rho = rho 4772 := by
      unfold seg6AccY128
      linear_combination r4379
    have ha3 : 3021 * rho 4771 * rho 4772 = rho 4773 := by
      linear_combination r4380
    have ha4 : rho 4774 * (1 + rho 4773) = rho 4771 + rho 4772 := by
      linear_combination r4381
    have ha5 : rho 4775 * (1 - rho 4773) = rho 4770 - rho 4771 - rho 4772 := by
      linear_combination r4382
    have haddx :
        rho 4774 * (1 + 3021 * (rho 4769 * seg6AccX128 rho) * (rho 4768 * seg6AccY128 rho)) =
          rho 4769 * seg6AccX128 rho + rho 4768 * seg6AccY128 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4775 * (1 - 3021 * (rho 4769 * seg6AccX128 rho) * (rho 4768 * seg6AccY128 rho)) =
          (-1) * (rho 4769 * seg6AccX128 rho) - rho 4768 * seg6AccY128 rho +
            (seg6AccY128 rho - seg6AccX128 rho * (-1)) * (rho 4768 + rho 4769) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4775 * (1 - rho 4773) = rho 4770 - rho 4771 - rho 4772 := ha5
        _ = (-1) * rho 4771 - rho 4772 + (seg6AccY128 rho - seg6AccX128 rho * (-1)) * (rho 4768 + rho 4769) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX129 rho = seg6AccX128 rho - Bool.toZMod bit * (seg6AccX128 rho - rho 4774) := by
      have hd : rho 4776 = Bool.toZMod bit * (rho 4774 - seg6AccX128 rho) := by
        rw [← hbit]
        unfold seg6AccX128
        linear_combination -r4383
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY129 rho = seg6AccY128 rho - Bool.toZMod bit * (seg6AccY128 rho - rho 4775) := by
      have hd : rho 4777 = Bool.toZMod bit * (rho 4775 - seg6AccY128 rho) := by
        rw [← hbit]
        unfold seg6AccY128
        linear_combination -r4384
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4768 * rho 4769 = rho 4778 := by linear_combination r4385
    have hd1 : rho 4768 * rho 4768 = rho 4779 := by linear_combination r4386
    have hd2 : rho 4769 * rho 4769 = rho 4780 := by linear_combination r4387
    have hd3 : rho 4781 * (rho 4769 * rho 4769 + rho 4768 * rho 4768 * (-1)) = 2 * (rho 4768 * rho 4769) := by
      rw [hd0, hd1, hd2]
      linear_combination r4388
    have hd4 : rho 4782 * (2 - (rho 4769 * rho 4769 + rho 4768 * rho 4768 * (-1))) = rho 4769 * rho 4769 - rho 4768 * rho 4768 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4389
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX128 rho : Seg6.F), (seg6AccY128 rho : Seg6.F)⟩
      ⟨(rho 4768 : Seg6.F), (rho 4769 : Seg6.F)⟩
      ⟨(rho 4774 : Seg6.F), (rho 4775 : Seg6.F)⟩
      ⟨(seg6AccX129 rho : Seg6.F), (seg6AccY129 rho : Seg6.F)⟩
      ⟨(rho 4781 : Seg6.F), (rho 4782 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung128

theorem seg6_rows129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4390 rho ∧ Seg6.relationRow4391 rho ∧ Seg6.relationRow4392 rho ∧ Seg6.relationRow4393 rho ∧ Seg6.relationRow4394 rho ∧ Seg6.relationRow4395 rho ∧ Seg6.relationRow4396 rho ∧ Seg6.relationRow4397 rho ∧ Seg6.relationRow4398 rho ∧ Seg6.relationRow4399 rho ∧ Seg6.relationRow4400 rho ∧ Seg6.relationRow4401 rho ∧ Seg6.relationRow4402 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg6.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402⟩

theorem seg6_rung129 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2013 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX129 rho : Seg6.F), (seg6AccY129 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4781 : Seg6.F), (rho 4782 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX129 rho : Seg6.F), (seg6AccY129 rho : Seg6.F)⟩
        ⟨(rho 4781 : Seg6.F), (rho 4782 : Seg6.F)⟩
        ⟨(seg6AccX130 rho : Seg6.F), (seg6AccY130 rho : Seg6.F)⟩
        ⟨(rho 4794 : Seg6.F), (rho 4795 : Seg6.F)⟩ := by
  obtain ⟨r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402⟩ := seg6_rows129 rho h
  unfold Seg6.relationRow4390 Seg6.relationLc733 at r4390
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4390
  unfold Seg6.relationRow4391 Seg6.relationLc734 at r4391
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4391
  unfold Seg6.relationRow4392 Seg6.relationLc735 at r4392
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4392
  unfold Seg6.relationRow4393 at r4393
  unfold Seg6.relationRow4394 at r4394
  unfold Seg6.relationRow4395 at r4395
  unfold Seg6.relationRow4396 Seg6.relationLc736 at r4396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4396
  unfold Seg6.relationRow4397 Seg6.relationLc737 at r4397
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4397
  unfold Seg6.relationRow4398 at r4398
  unfold Seg6.relationRow4399 at r4399
  unfold Seg6.relationRow4400 at r4400
  unfold Seg6.relationRow4401 at r4401
  unfold Seg6.relationRow4402 at r4402
  have hrung129 (bit : Bool) (hbit : rho 2013 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX129 rho : Seg6.F), (seg6AccY129 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4781 : Seg6.F), (rho 4782 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX129 rho : Seg6.F), (seg6AccY129 rho : Seg6.F)⟩
        ⟨(rho 4781 : Seg6.F), (rho 4782 : Seg6.F)⟩
        ⟨(seg6AccX130 rho : Seg6.F), (seg6AccY130 rho : Seg6.F)⟩
        ⟨(rho 4794 : Seg6.F), (rho 4795 : Seg6.F)⟩ := by
    have hnextx : seg6AccX130 rho = seg6AccX129 rho + rho 4789 := by
      unfold seg6AccX130 seg6AccX129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 129]
      ring
    have hnexty : seg6AccY130 rho = seg6AccY129 rho + rho 4790 := by
      unfold seg6AccY130 seg6AccY129
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 129]
      ring
    have ha0 : (rho 4781 + rho 4782) * (seg6AccX129 rho + seg6AccY129 rho) = rho 4783 := by
      unfold seg6AccX129 seg6AccY129
      linear_combination r4390
    have ha1 : rho 4782 * seg6AccX129 rho = rho 4784 := by
      unfold seg6AccX129
      linear_combination r4391
    have ha2 : rho 4781 * seg6AccY129 rho = rho 4785 := by
      unfold seg6AccY129
      linear_combination r4392
    have ha3 : 3021 * rho 4784 * rho 4785 = rho 4786 := by
      linear_combination r4393
    have ha4 : rho 4787 * (1 + rho 4786) = rho 4784 + rho 4785 := by
      linear_combination r4394
    have ha5 : rho 4788 * (1 - rho 4786) = rho 4783 - rho 4784 - rho 4785 := by
      linear_combination r4395
    have haddx :
        rho 4787 * (1 + 3021 * (rho 4782 * seg6AccX129 rho) * (rho 4781 * seg6AccY129 rho)) =
          rho 4782 * seg6AccX129 rho + rho 4781 * seg6AccY129 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4788 * (1 - 3021 * (rho 4782 * seg6AccX129 rho) * (rho 4781 * seg6AccY129 rho)) =
          (-1) * (rho 4782 * seg6AccX129 rho) - rho 4781 * seg6AccY129 rho +
            (seg6AccY129 rho - seg6AccX129 rho * (-1)) * (rho 4781 + rho 4782) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4788 * (1 - rho 4786) = rho 4783 - rho 4784 - rho 4785 := ha5
        _ = (-1) * rho 4784 - rho 4785 + (seg6AccY129 rho - seg6AccX129 rho * (-1)) * (rho 4781 + rho 4782) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX130 rho = seg6AccX129 rho - Bool.toZMod bit * (seg6AccX129 rho - rho 4787) := by
      have hd : rho 4789 = Bool.toZMod bit * (rho 4787 - seg6AccX129 rho) := by
        rw [← hbit]
        unfold seg6AccX129
        linear_combination -r4396
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY130 rho = seg6AccY129 rho - Bool.toZMod bit * (seg6AccY129 rho - rho 4788) := by
      have hd : rho 4790 = Bool.toZMod bit * (rho 4788 - seg6AccY129 rho) := by
        rw [← hbit]
        unfold seg6AccY129
        linear_combination -r4397
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4781 * rho 4782 = rho 4791 := by linear_combination r4398
    have hd1 : rho 4781 * rho 4781 = rho 4792 := by linear_combination r4399
    have hd2 : rho 4782 * rho 4782 = rho 4793 := by linear_combination r4400
    have hd3 : rho 4794 * (rho 4782 * rho 4782 + rho 4781 * rho 4781 * (-1)) = 2 * (rho 4781 * rho 4782) := by
      rw [hd0, hd1, hd2]
      linear_combination r4401
    have hd4 : rho 4795 * (2 - (rho 4782 * rho 4782 + rho 4781 * rho 4781 * (-1))) = rho 4782 * rho 4782 - rho 4781 * rho 4781 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4402
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX129 rho : Seg6.F), (seg6AccY129 rho : Seg6.F)⟩
      ⟨(rho 4781 : Seg6.F), (rho 4782 : Seg6.F)⟩
      ⟨(rho 4787 : Seg6.F), (rho 4788 : Seg6.F)⟩
      ⟨(seg6AccX130 rho : Seg6.F), (seg6AccY130 rho : Seg6.F)⟩
      ⟨(rho 4794 : Seg6.F), (rho 4795 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung129

theorem seg6_rows130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4403 rho ∧ Seg6.relationRow4404 rho ∧ Seg6.relationRow4405 rho ∧ Seg6.relationRow4406 rho ∧ Seg6.relationRow4407 rho ∧ Seg6.relationRow4408 rho ∧ Seg6.relationRow4409 rho ∧ Seg6.relationRow4410 rho ∧ Seg6.relationRow4411 rho ∧ Seg6.relationRow4412 rho ∧ Seg6.relationRow4413 rho ∧ Seg6.relationRow4414 rho ∧ Seg6.relationRow4415 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart55 at p55
  rcases p55 with ⟨_, _, _, r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415⟩

theorem seg6_rung130 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2014 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX130 rho : Seg6.F), (seg6AccY130 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4794 : Seg6.F), (rho 4795 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX130 rho : Seg6.F), (seg6AccY130 rho : Seg6.F)⟩
        ⟨(rho 4794 : Seg6.F), (rho 4795 : Seg6.F)⟩
        ⟨(seg6AccX131 rho : Seg6.F), (seg6AccY131 rho : Seg6.F)⟩
        ⟨(rho 4807 : Seg6.F), (rho 4808 : Seg6.F)⟩ := by
  obtain ⟨r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415⟩ := seg6_rows130 rho h
  unfold Seg6.relationRow4403 Seg6.relationLc738 at r4403
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4403
  unfold Seg6.relationRow4404 Seg6.relationLc739 at r4404
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4404
  unfold Seg6.relationRow4405 Seg6.relationLc740 at r4405
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4405
  unfold Seg6.relationRow4406 at r4406
  unfold Seg6.relationRow4407 at r4407
  unfold Seg6.relationRow4408 at r4408
  unfold Seg6.relationRow4409 Seg6.relationLc741 at r4409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4409
  unfold Seg6.relationRow4410 Seg6.relationLc742 at r4410
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4410
  unfold Seg6.relationRow4411 at r4411
  unfold Seg6.relationRow4412 at r4412
  unfold Seg6.relationRow4413 at r4413
  unfold Seg6.relationRow4414 at r4414
  unfold Seg6.relationRow4415 at r4415
  have hrung130 (bit : Bool) (hbit : rho 2014 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX130 rho : Seg6.F), (seg6AccY130 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4794 : Seg6.F), (rho 4795 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX130 rho : Seg6.F), (seg6AccY130 rho : Seg6.F)⟩
        ⟨(rho 4794 : Seg6.F), (rho 4795 : Seg6.F)⟩
        ⟨(seg6AccX131 rho : Seg6.F), (seg6AccY131 rho : Seg6.F)⟩
        ⟨(rho 4807 : Seg6.F), (rho 4808 : Seg6.F)⟩ := by
    have hnextx : seg6AccX131 rho = seg6AccX130 rho + rho 4802 := by
      unfold seg6AccX131 seg6AccX130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 130]
      ring
    have hnexty : seg6AccY131 rho = seg6AccY130 rho + rho 4803 := by
      unfold seg6AccY131 seg6AccY130
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 130]
      ring
    have ha0 : (rho 4794 + rho 4795) * (seg6AccX130 rho + seg6AccY130 rho) = rho 4796 := by
      unfold seg6AccX130 seg6AccY130
      linear_combination r4403
    have ha1 : rho 4795 * seg6AccX130 rho = rho 4797 := by
      unfold seg6AccX130
      linear_combination r4404
    have ha2 : rho 4794 * seg6AccY130 rho = rho 4798 := by
      unfold seg6AccY130
      linear_combination r4405
    have ha3 : 3021 * rho 4797 * rho 4798 = rho 4799 := by
      linear_combination r4406
    have ha4 : rho 4800 * (1 + rho 4799) = rho 4797 + rho 4798 := by
      linear_combination r4407
    have ha5 : rho 4801 * (1 - rho 4799) = rho 4796 - rho 4797 - rho 4798 := by
      linear_combination r4408
    have haddx :
        rho 4800 * (1 + 3021 * (rho 4795 * seg6AccX130 rho) * (rho 4794 * seg6AccY130 rho)) =
          rho 4795 * seg6AccX130 rho + rho 4794 * seg6AccY130 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4801 * (1 - 3021 * (rho 4795 * seg6AccX130 rho) * (rho 4794 * seg6AccY130 rho)) =
          (-1) * (rho 4795 * seg6AccX130 rho) - rho 4794 * seg6AccY130 rho +
            (seg6AccY130 rho - seg6AccX130 rho * (-1)) * (rho 4794 + rho 4795) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4801 * (1 - rho 4799) = rho 4796 - rho 4797 - rho 4798 := ha5
        _ = (-1) * rho 4797 - rho 4798 + (seg6AccY130 rho - seg6AccX130 rho * (-1)) * (rho 4794 + rho 4795) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX131 rho = seg6AccX130 rho - Bool.toZMod bit * (seg6AccX130 rho - rho 4800) := by
      have hd : rho 4802 = Bool.toZMod bit * (rho 4800 - seg6AccX130 rho) := by
        rw [← hbit]
        unfold seg6AccX130
        linear_combination -r4409
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY131 rho = seg6AccY130 rho - Bool.toZMod bit * (seg6AccY130 rho - rho 4801) := by
      have hd : rho 4803 = Bool.toZMod bit * (rho 4801 - seg6AccY130 rho) := by
        rw [← hbit]
        unfold seg6AccY130
        linear_combination -r4410
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4794 * rho 4795 = rho 4804 := by linear_combination r4411
    have hd1 : rho 4794 * rho 4794 = rho 4805 := by linear_combination r4412
    have hd2 : rho 4795 * rho 4795 = rho 4806 := by linear_combination r4413
    have hd3 : rho 4807 * (rho 4795 * rho 4795 + rho 4794 * rho 4794 * (-1)) = 2 * (rho 4794 * rho 4795) := by
      rw [hd0, hd1, hd2]
      linear_combination r4414
    have hd4 : rho 4808 * (2 - (rho 4795 * rho 4795 + rho 4794 * rho 4794 * (-1))) = rho 4795 * rho 4795 - rho 4794 * rho 4794 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4415
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX130 rho : Seg6.F), (seg6AccY130 rho : Seg6.F)⟩
      ⟨(rho 4794 : Seg6.F), (rho 4795 : Seg6.F)⟩
      ⟨(rho 4800 : Seg6.F), (rho 4801 : Seg6.F)⟩
      ⟨(seg6AccX131 rho : Seg6.F), (seg6AccY131 rho : Seg6.F)⟩
      ⟨(rho 4807 : Seg6.F), (rho 4808 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung130

theorem seg6_rows131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4416 rho ∧ Seg6.relationRow4417 rho ∧ Seg6.relationRow4418 rho ∧ Seg6.relationRow4419 rho ∧ Seg6.relationRow4420 rho ∧ Seg6.relationRow4421 rho ∧ Seg6.relationRow4422 rho ∧ Seg6.relationRow4423 rho ∧ Seg6.relationRow4424 rho ∧ Seg6.relationRow4425 rho ∧ Seg6.relationRow4426 rho ∧ Seg6.relationRow4427 rho ∧ Seg6.relationRow4428 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428⟩

theorem seg6_rung131 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2015 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX131 rho : Seg6.F), (seg6AccY131 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4807 : Seg6.F), (rho 4808 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX131 rho : Seg6.F), (seg6AccY131 rho : Seg6.F)⟩
        ⟨(rho 4807 : Seg6.F), (rho 4808 : Seg6.F)⟩
        ⟨(seg6AccX132 rho : Seg6.F), (seg6AccY132 rho : Seg6.F)⟩
        ⟨(rho 4820 : Seg6.F), (rho 4821 : Seg6.F)⟩ := by
  obtain ⟨r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428⟩ := seg6_rows131 rho h
  unfold Seg6.relationRow4416 Seg6.relationLc743 at r4416
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4416
  unfold Seg6.relationRow4417 Seg6.relationLc744 at r4417
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4417
  unfold Seg6.relationRow4418 Seg6.relationLc745 at r4418
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4418
  unfold Seg6.relationRow4419 at r4419
  unfold Seg6.relationRow4420 at r4420
  unfold Seg6.relationRow4421 at r4421
  unfold Seg6.relationRow4422 Seg6.relationLc746 at r4422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4422
  unfold Seg6.relationRow4423 Seg6.relationLc747 at r4423
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4423
  unfold Seg6.relationRow4424 at r4424
  unfold Seg6.relationRow4425 at r4425
  unfold Seg6.relationRow4426 at r4426
  unfold Seg6.relationRow4427 at r4427
  unfold Seg6.relationRow4428 at r4428
  have hrung131 (bit : Bool) (hbit : rho 2015 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX131 rho : Seg6.F), (seg6AccY131 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4807 : Seg6.F), (rho 4808 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX131 rho : Seg6.F), (seg6AccY131 rho : Seg6.F)⟩
        ⟨(rho 4807 : Seg6.F), (rho 4808 : Seg6.F)⟩
        ⟨(seg6AccX132 rho : Seg6.F), (seg6AccY132 rho : Seg6.F)⟩
        ⟨(rho 4820 : Seg6.F), (rho 4821 : Seg6.F)⟩ := by
    have hnextx : seg6AccX132 rho = seg6AccX131 rho + rho 4815 := by
      unfold seg6AccX132 seg6AccX131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 131]
      ring
    have hnexty : seg6AccY132 rho = seg6AccY131 rho + rho 4816 := by
      unfold seg6AccY132 seg6AccY131
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 131]
      ring
    have ha0 : (rho 4807 + rho 4808) * (seg6AccX131 rho + seg6AccY131 rho) = rho 4809 := by
      unfold seg6AccX131 seg6AccY131
      linear_combination r4416
    have ha1 : rho 4808 * seg6AccX131 rho = rho 4810 := by
      unfold seg6AccX131
      linear_combination r4417
    have ha2 : rho 4807 * seg6AccY131 rho = rho 4811 := by
      unfold seg6AccY131
      linear_combination r4418
    have ha3 : 3021 * rho 4810 * rho 4811 = rho 4812 := by
      linear_combination r4419
    have ha4 : rho 4813 * (1 + rho 4812) = rho 4810 + rho 4811 := by
      linear_combination r4420
    have ha5 : rho 4814 * (1 - rho 4812) = rho 4809 - rho 4810 - rho 4811 := by
      linear_combination r4421
    have haddx :
        rho 4813 * (1 + 3021 * (rho 4808 * seg6AccX131 rho) * (rho 4807 * seg6AccY131 rho)) =
          rho 4808 * seg6AccX131 rho + rho 4807 * seg6AccY131 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4814 * (1 - 3021 * (rho 4808 * seg6AccX131 rho) * (rho 4807 * seg6AccY131 rho)) =
          (-1) * (rho 4808 * seg6AccX131 rho) - rho 4807 * seg6AccY131 rho +
            (seg6AccY131 rho - seg6AccX131 rho * (-1)) * (rho 4807 + rho 4808) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4814 * (1 - rho 4812) = rho 4809 - rho 4810 - rho 4811 := ha5
        _ = (-1) * rho 4810 - rho 4811 + (seg6AccY131 rho - seg6AccX131 rho * (-1)) * (rho 4807 + rho 4808) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX132 rho = seg6AccX131 rho - Bool.toZMod bit * (seg6AccX131 rho - rho 4813) := by
      have hd : rho 4815 = Bool.toZMod bit * (rho 4813 - seg6AccX131 rho) := by
        rw [← hbit]
        unfold seg6AccX131
        linear_combination -r4422
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY132 rho = seg6AccY131 rho - Bool.toZMod bit * (seg6AccY131 rho - rho 4814) := by
      have hd : rho 4816 = Bool.toZMod bit * (rho 4814 - seg6AccY131 rho) := by
        rw [← hbit]
        unfold seg6AccY131
        linear_combination -r4423
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4807 * rho 4808 = rho 4817 := by linear_combination r4424
    have hd1 : rho 4807 * rho 4807 = rho 4818 := by linear_combination r4425
    have hd2 : rho 4808 * rho 4808 = rho 4819 := by linear_combination r4426
    have hd3 : rho 4820 * (rho 4808 * rho 4808 + rho 4807 * rho 4807 * (-1)) = 2 * (rho 4807 * rho 4808) := by
      rw [hd0, hd1, hd2]
      linear_combination r4427
    have hd4 : rho 4821 * (2 - (rho 4808 * rho 4808 + rho 4807 * rho 4807 * (-1))) = rho 4808 * rho 4808 - rho 4807 * rho 4807 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4428
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX131 rho : Seg6.F), (seg6AccY131 rho : Seg6.F)⟩
      ⟨(rho 4807 : Seg6.F), (rho 4808 : Seg6.F)⟩
      ⟨(rho 4813 : Seg6.F), (rho 4814 : Seg6.F)⟩
      ⟨(seg6AccX132 rho : Seg6.F), (seg6AccY132 rho : Seg6.F)⟩
      ⟨(rho 4820 : Seg6.F), (rho 4821 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung131

theorem seg6_hstep_c11 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1884 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 132 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg6_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg6_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg6_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg6_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg6_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg6_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur
  · exact seg6_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc hcur
  · exact seg6_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc hcur
  · exact seg6_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc hcur
  · exact seg6_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

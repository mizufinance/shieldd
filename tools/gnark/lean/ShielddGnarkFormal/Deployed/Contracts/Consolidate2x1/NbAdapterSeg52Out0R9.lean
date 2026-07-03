import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6406 rho ∧ Seg52.relationRow6407 rho ∧ Seg52.relationRow6408 rho ∧ Seg52.relationRow6409 rho ∧ Seg52.relationRow6410 rho ∧ Seg52.relationRow6411 rho ∧ Seg52.relationRow6412 rho ∧ Seg52.relationRow6413 rho ∧ Seg52.relationRow6414 rho ∧ Seg52.relationRow6415 rho ∧ Seg52.relationRow6416 rho ∧ Seg52.relationRow6417 rho ∧ Seg52.relationRow6418 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, r6406, r6407, r6408, r6409, r6410, r6411, r6412, r6413, r6414, r6415, r6416, r6417, r6418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6406, r6407, r6408, r6409, r6410, r6411, r6412, r6413, r6414, r6415, r6416, r6417, r6418⟩

theorem seg52Out0_rung99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49485 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50793, rho 50794⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ ⟨rho 50793, rho 50794⟩
        ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ ⟨rho 50806, rho 50807⟩ := by
  obtain ⟨r6406, r6407, r6408, r6409, r6410, r6411, r6412, r6413, r6414, r6415, r6416, r6417, r6418⟩ := seg52Out0_rows99 rho h
  unfold Seg52.relationRow6406 at r6406

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6406

  unfold Seg52.relationRow6407 at r6407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6407

  unfold Seg52.relationRow6408 at r6408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6408

  unfold Seg52.relationRow6409 at r6409

  unfold Seg52.relationRow6410 at r6410

  unfold Seg52.relationRow6411 at r6411

  unfold Seg52.relationRow6412 at r6412

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6412

  unfold Seg52.relationRow6413 at r6413

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6413

  unfold Seg52.relationRow6414 at r6414

  unfold Seg52.relationRow6415 at r6415

  unfold Seg52.relationRow6416 at r6416

  unfold Seg52.relationRow6417 at r6417

  unfold Seg52.relationRow6418 at r6418

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX100 rho = seg52Out0AccX99 rho + rho 50801 := by
    unfold seg52Out0AccX100 seg52Out0AccX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 99]

    ring

  have hnexty : seg52Out0AccY100 rho = seg52Out0AccY99 rho + rho 50802 := by
    unfold seg52Out0AccY100 seg52Out0AccY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 99]

    ring

  have ha0 : (rho 50793 + rho 50794) * (seg52Out0AccX99 rho + seg52Out0AccY99 rho) = rho 50795 := by
    unfold seg52Out0AccX99 seg52Out0AccY99
    linear_combination r6406
  have ha1 : rho 50794 * seg52Out0AccX99 rho = rho 50796 := by
    unfold seg52Out0AccX99
    linear_combination r6407
  have ha2 : rho 50793 * seg52Out0AccY99 rho = rho 50797 := by
    unfold seg52Out0AccY99
    linear_combination r6408
  have ha3 : 3021 * rho 50796 * rho 50797 = rho 50798 := by
    linear_combination r6409
  have ha4 : rho 50799 * (1 + rho 50798) = rho 50796 + rho 50797 := by
    linear_combination r6410
  have ha5 : rho 50800 * (1 - rho 50798) = rho 50795 - rho 50796 - rho 50797 := by
    linear_combination r6411
  have haddx :
      rho 50799 * (1 + 3021 * (rho 50794 * seg52Out0AccX99 rho) * (rho 50793 * seg52Out0AccY99 rho)) =
        rho 50794 * seg52Out0AccX99 rho + rho 50793 * seg52Out0AccY99 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50800 * (1 - 3021 * (rho 50794 * seg52Out0AccX99 rho) * (rho 50793 * seg52Out0AccY99 rho)) =
        (-1) * (rho 50794 * seg52Out0AccX99 rho) - rho 50793 * seg52Out0AccY99 rho +
          (seg52Out0AccY99 rho - seg52Out0AccX99 rho * (-1)) * (rho 50793 + rho 50794) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50800 * (1 - rho 50798) = rho 50795 - rho 50796 - rho 50797 := ha5
      _ = (-1) * rho 50796 - rho 50797 + (seg52Out0AccY99 rho - seg52Out0AccX99 rho * (-1)) *
          (rho 50793 + rho 50794) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX100 rho = seg52Out0AccX99 rho - Bool.toZMod bit * (seg52Out0AccX99 rho - rho 50799) := by
    have hd : rho 50801 = Bool.toZMod bit * (rho 50799 - seg52Out0AccX99 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX99
      linear_combination -r6412
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY100 rho = seg52Out0AccY99 rho - Bool.toZMod bit * (seg52Out0AccY99 rho - rho 50800) := by
    have hd : rho 50802 = Bool.toZMod bit * (rho 50800 - seg52Out0AccY99 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY99
      linear_combination -r6413
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50793 * rho 50794 = rho 50803 := by linear_combination r6414
  have hd1 : rho 50793 * rho 50793 = rho 50804 := by linear_combination r6415
  have hd2 : rho 50794 * rho 50794 = rho 50805 := by linear_combination r6416
  have hd3 : rho 50806 * (rho 50794 * rho 50794 + rho 50793 * rho 50793 * (-1)) =
      2 * (rho 50793 * rho 50794) := by
    rw [hd0, hd1, hd2]
    linear_combination r6417
  have hd4 : rho 50807 * (2 - (rho 50794 * rho 50794 + rho 50793 * rho 50793 * (-1))) =
      rho 50794 * rho 50794 - rho 50793 * rho 50793 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6418
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ ⟨rho 50793, rho 50794⟩
    ⟨rho 50799, rho 50800⟩ ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ ⟨rho 50806, rho 50807⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6419 rho ∧ Seg52.relationRow6420 rho ∧ Seg52.relationRow6421 rho ∧ Seg52.relationRow6422 rho ∧ Seg52.relationRow6423 rho ∧ Seg52.relationRow6424 rho ∧ Seg52.relationRow6425 rho ∧ Seg52.relationRow6426 rho ∧ Seg52.relationRow6427 rho ∧ Seg52.relationRow6428 rho ∧ Seg52.relationRow6429 rho ∧ Seg52.relationRow6430 rho ∧ Seg52.relationRow6431 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6419, r6420, r6421, r6422, r6423, r6424, r6425, r6426, r6427, r6428, r6429, r6430, r6431, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6419, r6420, r6421, r6422, r6423, r6424, r6425, r6426, r6427, r6428, r6429, r6430, r6431⟩

theorem seg52Out0_rung100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49486 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50806, rho 50807⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ ⟨rho 50806, rho 50807⟩
        ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ ⟨rho 50819, rho 50820⟩ := by
  obtain ⟨r6419, r6420, r6421, r6422, r6423, r6424, r6425, r6426, r6427, r6428, r6429, r6430, r6431⟩ := seg52Out0_rows100 rho h
  unfold Seg52.relationRow6419 at r6419

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6419

  unfold Seg52.relationRow6420 at r6420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6420

  unfold Seg52.relationRow6421 at r6421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6421

  unfold Seg52.relationRow6422 at r6422

  unfold Seg52.relationRow6423 at r6423

  unfold Seg52.relationRow6424 at r6424

  unfold Seg52.relationRow6425 at r6425

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6425

  unfold Seg52.relationRow6426 at r6426

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6426

  unfold Seg52.relationRow6427 at r6427

  unfold Seg52.relationRow6428 at r6428

  unfold Seg52.relationRow6429 at r6429

  unfold Seg52.relationRow6430 at r6430

  unfold Seg52.relationRow6431 at r6431

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX101 rho = seg52Out0AccX100 rho + rho 50814 := by
    unfold seg52Out0AccX101 seg52Out0AccX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 100]

    ring

  have hnexty : seg52Out0AccY101 rho = seg52Out0AccY100 rho + rho 50815 := by
    unfold seg52Out0AccY101 seg52Out0AccY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 100]

    ring

  have ha0 : (rho 50806 + rho 50807) * (seg52Out0AccX100 rho + seg52Out0AccY100 rho) = rho 50808 := by
    unfold seg52Out0AccX100 seg52Out0AccY100
    linear_combination r6419
  have ha1 : rho 50807 * seg52Out0AccX100 rho = rho 50809 := by
    unfold seg52Out0AccX100
    linear_combination r6420
  have ha2 : rho 50806 * seg52Out0AccY100 rho = rho 50810 := by
    unfold seg52Out0AccY100
    linear_combination r6421
  have ha3 : 3021 * rho 50809 * rho 50810 = rho 50811 := by
    linear_combination r6422
  have ha4 : rho 50812 * (1 + rho 50811) = rho 50809 + rho 50810 := by
    linear_combination r6423
  have ha5 : rho 50813 * (1 - rho 50811) = rho 50808 - rho 50809 - rho 50810 := by
    linear_combination r6424
  have haddx :
      rho 50812 * (1 + 3021 * (rho 50807 * seg52Out0AccX100 rho) * (rho 50806 * seg52Out0AccY100 rho)) =
        rho 50807 * seg52Out0AccX100 rho + rho 50806 * seg52Out0AccY100 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50813 * (1 - 3021 * (rho 50807 * seg52Out0AccX100 rho) * (rho 50806 * seg52Out0AccY100 rho)) =
        (-1) * (rho 50807 * seg52Out0AccX100 rho) - rho 50806 * seg52Out0AccY100 rho +
          (seg52Out0AccY100 rho - seg52Out0AccX100 rho * (-1)) * (rho 50806 + rho 50807) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50813 * (1 - rho 50811) = rho 50808 - rho 50809 - rho 50810 := ha5
      _ = (-1) * rho 50809 - rho 50810 + (seg52Out0AccY100 rho - seg52Out0AccX100 rho * (-1)) *
          (rho 50806 + rho 50807) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX101 rho = seg52Out0AccX100 rho - Bool.toZMod bit * (seg52Out0AccX100 rho - rho 50812) := by
    have hd : rho 50814 = Bool.toZMod bit * (rho 50812 - seg52Out0AccX100 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX100
      linear_combination -r6425
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY101 rho = seg52Out0AccY100 rho - Bool.toZMod bit * (seg52Out0AccY100 rho - rho 50813) := by
    have hd : rho 50815 = Bool.toZMod bit * (rho 50813 - seg52Out0AccY100 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY100
      linear_combination -r6426
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50806 * rho 50807 = rho 50816 := by linear_combination r6427
  have hd1 : rho 50806 * rho 50806 = rho 50817 := by linear_combination r6428
  have hd2 : rho 50807 * rho 50807 = rho 50818 := by linear_combination r6429
  have hd3 : rho 50819 * (rho 50807 * rho 50807 + rho 50806 * rho 50806 * (-1)) =
      2 * (rho 50806 * rho 50807) := by
    rw [hd0, hd1, hd2]
    linear_combination r6430
  have hd4 : rho 50820 * (2 - (rho 50807 * rho 50807 + rho 50806 * rho 50806 * (-1))) =
      rho 50807 * rho 50807 - rho 50806 * rho 50806 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6431
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX100 rho, seg52Out0AccY100 rho⟩ ⟨rho 50806, rho 50807⟩
    ⟨rho 50812, rho 50813⟩ ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ ⟨rho 50819, rho 50820⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6432 rho ∧ Seg52.relationRow6433 rho ∧ Seg52.relationRow6434 rho ∧ Seg52.relationRow6435 rho ∧ Seg52.relationRow6436 rho ∧ Seg52.relationRow6437 rho ∧ Seg52.relationRow6438 rho ∧ Seg52.relationRow6439 rho ∧ Seg52.relationRow6440 rho ∧ Seg52.relationRow6441 rho ∧ Seg52.relationRow6442 rho ∧ Seg52.relationRow6443 rho ∧ Seg52.relationRow6444 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6432, r6433, r6434, r6435, r6436, r6437, r6438, r6439, r6440, r6441, r6442, r6443, r6444, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6432, r6433, r6434, r6435, r6436, r6437, r6438, r6439, r6440, r6441, r6442, r6443, r6444⟩

theorem seg52Out0_rung101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49487 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50819, rho 50820⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ ⟨rho 50819, rho 50820⟩
        ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ ⟨rho 50832, rho 50833⟩ := by
  obtain ⟨r6432, r6433, r6434, r6435, r6436, r6437, r6438, r6439, r6440, r6441, r6442, r6443, r6444⟩ := seg52Out0_rows101 rho h
  unfold Seg52.relationRow6432 at r6432

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6432

  unfold Seg52.relationRow6433 at r6433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6433

  unfold Seg52.relationRow6434 at r6434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6434

  unfold Seg52.relationRow6435 at r6435

  unfold Seg52.relationRow6436 at r6436

  unfold Seg52.relationRow6437 at r6437

  unfold Seg52.relationRow6438 at r6438

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6438

  unfold Seg52.relationRow6439 at r6439

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6439

  unfold Seg52.relationRow6440 at r6440

  unfold Seg52.relationRow6441 at r6441

  unfold Seg52.relationRow6442 at r6442

  unfold Seg52.relationRow6443 at r6443

  unfold Seg52.relationRow6444 at r6444

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX102 rho = seg52Out0AccX101 rho + rho 50827 := by
    unfold seg52Out0AccX102 seg52Out0AccX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 101]

    ring

  have hnexty : seg52Out0AccY102 rho = seg52Out0AccY101 rho + rho 50828 := by
    unfold seg52Out0AccY102 seg52Out0AccY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 101]

    ring

  have ha0 : (rho 50819 + rho 50820) * (seg52Out0AccX101 rho + seg52Out0AccY101 rho) = rho 50821 := by
    unfold seg52Out0AccX101 seg52Out0AccY101
    linear_combination r6432
  have ha1 : rho 50820 * seg52Out0AccX101 rho = rho 50822 := by
    unfold seg52Out0AccX101
    linear_combination r6433
  have ha2 : rho 50819 * seg52Out0AccY101 rho = rho 50823 := by
    unfold seg52Out0AccY101
    linear_combination r6434
  have ha3 : 3021 * rho 50822 * rho 50823 = rho 50824 := by
    linear_combination r6435
  have ha4 : rho 50825 * (1 + rho 50824) = rho 50822 + rho 50823 := by
    linear_combination r6436
  have ha5 : rho 50826 * (1 - rho 50824) = rho 50821 - rho 50822 - rho 50823 := by
    linear_combination r6437
  have haddx :
      rho 50825 * (1 + 3021 * (rho 50820 * seg52Out0AccX101 rho) * (rho 50819 * seg52Out0AccY101 rho)) =
        rho 50820 * seg52Out0AccX101 rho + rho 50819 * seg52Out0AccY101 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50826 * (1 - 3021 * (rho 50820 * seg52Out0AccX101 rho) * (rho 50819 * seg52Out0AccY101 rho)) =
        (-1) * (rho 50820 * seg52Out0AccX101 rho) - rho 50819 * seg52Out0AccY101 rho +
          (seg52Out0AccY101 rho - seg52Out0AccX101 rho * (-1)) * (rho 50819 + rho 50820) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50826 * (1 - rho 50824) = rho 50821 - rho 50822 - rho 50823 := ha5
      _ = (-1) * rho 50822 - rho 50823 + (seg52Out0AccY101 rho - seg52Out0AccX101 rho * (-1)) *
          (rho 50819 + rho 50820) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX102 rho = seg52Out0AccX101 rho - Bool.toZMod bit * (seg52Out0AccX101 rho - rho 50825) := by
    have hd : rho 50827 = Bool.toZMod bit * (rho 50825 - seg52Out0AccX101 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX101
      linear_combination -r6438
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY102 rho = seg52Out0AccY101 rho - Bool.toZMod bit * (seg52Out0AccY101 rho - rho 50826) := by
    have hd : rho 50828 = Bool.toZMod bit * (rho 50826 - seg52Out0AccY101 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY101
      linear_combination -r6439
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50819 * rho 50820 = rho 50829 := by linear_combination r6440
  have hd1 : rho 50819 * rho 50819 = rho 50830 := by linear_combination r6441
  have hd2 : rho 50820 * rho 50820 = rho 50831 := by linear_combination r6442
  have hd3 : rho 50832 * (rho 50820 * rho 50820 + rho 50819 * rho 50819 * (-1)) =
      2 * (rho 50819 * rho 50820) := by
    rw [hd0, hd1, hd2]
    linear_combination r6443
  have hd4 : rho 50833 * (2 - (rho 50820 * rho 50820 + rho 50819 * rho 50819 * (-1))) =
      rho 50820 * rho 50820 - rho 50819 * rho 50819 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6444
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX101 rho, seg52Out0AccY101 rho⟩ ⟨rho 50819, rho 50820⟩
    ⟨rho 50825, rho 50826⟩ ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ ⟨rho 50832, rho 50833⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6445 rho ∧ Seg52.relationRow6446 rho ∧ Seg52.relationRow6447 rho ∧ Seg52.relationRow6448 rho ∧ Seg52.relationRow6449 rho ∧ Seg52.relationRow6450 rho ∧ Seg52.relationRow6451 rho ∧ Seg52.relationRow6452 rho ∧ Seg52.relationRow6453 rho ∧ Seg52.relationRow6454 rho ∧ Seg52.relationRow6455 rho ∧ Seg52.relationRow6456 rho ∧ Seg52.relationRow6457 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6445, r6446, r6447, r6448, r6449, r6450, r6451, r6452, r6453, r6454, r6455, r6456, r6457, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6445, r6446, r6447, r6448, r6449, r6450, r6451, r6452, r6453, r6454, r6455, r6456, r6457⟩

theorem seg52Out0_rung102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49488 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50832, rho 50833⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ ⟨rho 50832, rho 50833⟩
        ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ ⟨rho 50845, rho 50846⟩ := by
  obtain ⟨r6445, r6446, r6447, r6448, r6449, r6450, r6451, r6452, r6453, r6454, r6455, r6456, r6457⟩ := seg52Out0_rows102 rho h
  unfold Seg52.relationRow6445 at r6445

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6445

  unfold Seg52.relationRow6446 at r6446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6446

  unfold Seg52.relationRow6447 at r6447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6447

  unfold Seg52.relationRow6448 at r6448

  unfold Seg52.relationRow6449 at r6449

  unfold Seg52.relationRow6450 at r6450

  unfold Seg52.relationRow6451 at r6451

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6451

  unfold Seg52.relationRow6452 at r6452

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6452

  unfold Seg52.relationRow6453 at r6453

  unfold Seg52.relationRow6454 at r6454

  unfold Seg52.relationRow6455 at r6455

  unfold Seg52.relationRow6456 at r6456

  unfold Seg52.relationRow6457 at r6457

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX103 rho = seg52Out0AccX102 rho + rho 50840 := by
    unfold seg52Out0AccX103 seg52Out0AccX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 102]

    ring

  have hnexty : seg52Out0AccY103 rho = seg52Out0AccY102 rho + rho 50841 := by
    unfold seg52Out0AccY103 seg52Out0AccY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 102]

    ring

  have ha0 : (rho 50832 + rho 50833) * (seg52Out0AccX102 rho + seg52Out0AccY102 rho) = rho 50834 := by
    unfold seg52Out0AccX102 seg52Out0AccY102
    linear_combination r6445
  have ha1 : rho 50833 * seg52Out0AccX102 rho = rho 50835 := by
    unfold seg52Out0AccX102
    linear_combination r6446
  have ha2 : rho 50832 * seg52Out0AccY102 rho = rho 50836 := by
    unfold seg52Out0AccY102
    linear_combination r6447
  have ha3 : 3021 * rho 50835 * rho 50836 = rho 50837 := by
    linear_combination r6448
  have ha4 : rho 50838 * (1 + rho 50837) = rho 50835 + rho 50836 := by
    linear_combination r6449
  have ha5 : rho 50839 * (1 - rho 50837) = rho 50834 - rho 50835 - rho 50836 := by
    linear_combination r6450
  have haddx :
      rho 50838 * (1 + 3021 * (rho 50833 * seg52Out0AccX102 rho) * (rho 50832 * seg52Out0AccY102 rho)) =
        rho 50833 * seg52Out0AccX102 rho + rho 50832 * seg52Out0AccY102 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50839 * (1 - 3021 * (rho 50833 * seg52Out0AccX102 rho) * (rho 50832 * seg52Out0AccY102 rho)) =
        (-1) * (rho 50833 * seg52Out0AccX102 rho) - rho 50832 * seg52Out0AccY102 rho +
          (seg52Out0AccY102 rho - seg52Out0AccX102 rho * (-1)) * (rho 50832 + rho 50833) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50839 * (1 - rho 50837) = rho 50834 - rho 50835 - rho 50836 := ha5
      _ = (-1) * rho 50835 - rho 50836 + (seg52Out0AccY102 rho - seg52Out0AccX102 rho * (-1)) *
          (rho 50832 + rho 50833) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX103 rho = seg52Out0AccX102 rho - Bool.toZMod bit * (seg52Out0AccX102 rho - rho 50838) := by
    have hd : rho 50840 = Bool.toZMod bit * (rho 50838 - seg52Out0AccX102 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX102
      linear_combination -r6451
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY103 rho = seg52Out0AccY102 rho - Bool.toZMod bit * (seg52Out0AccY102 rho - rho 50839) := by
    have hd : rho 50841 = Bool.toZMod bit * (rho 50839 - seg52Out0AccY102 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY102
      linear_combination -r6452
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50832 * rho 50833 = rho 50842 := by linear_combination r6453
  have hd1 : rho 50832 * rho 50832 = rho 50843 := by linear_combination r6454
  have hd2 : rho 50833 * rho 50833 = rho 50844 := by linear_combination r6455
  have hd3 : rho 50845 * (rho 50833 * rho 50833 + rho 50832 * rho 50832 * (-1)) =
      2 * (rho 50832 * rho 50833) := by
    rw [hd0, hd1, hd2]
    linear_combination r6456
  have hd4 : rho 50846 * (2 - (rho 50833 * rho 50833 + rho 50832 * rho 50832 * (-1))) =
      rho 50833 * rho 50833 - rho 50832 * rho 50832 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6457
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX102 rho, seg52Out0AccY102 rho⟩ ⟨rho 50832, rho 50833⟩
    ⟨rho 50838, rho 50839⟩ ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ ⟨rho 50845, rho 50846⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6458 rho ∧ Seg52.relationRow6459 rho ∧ Seg52.relationRow6460 rho ∧ Seg52.relationRow6461 rho ∧ Seg52.relationRow6462 rho ∧ Seg52.relationRow6463 rho ∧ Seg52.relationRow6464 rho ∧ Seg52.relationRow6465 rho ∧ Seg52.relationRow6466 rho ∧ Seg52.relationRow6467 rho ∧ Seg52.relationRow6468 rho ∧ Seg52.relationRow6469 rho ∧ Seg52.relationRow6470 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6458, r6459, r6460, r6461, r6462, r6463, r6464, r6465, r6466, r6467, r6468, r6469, r6470, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6458, r6459, r6460, r6461, r6462, r6463, r6464, r6465, r6466, r6467, r6468, r6469, r6470⟩

theorem seg52Out0_rung103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49489 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50845, rho 50846⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ ⟨rho 50845, rho 50846⟩
        ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ ⟨rho 50858, rho 50859⟩ := by
  obtain ⟨r6458, r6459, r6460, r6461, r6462, r6463, r6464, r6465, r6466, r6467, r6468, r6469, r6470⟩ := seg52Out0_rows103 rho h
  unfold Seg52.relationRow6458 at r6458

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6458

  unfold Seg52.relationRow6459 at r6459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6459

  unfold Seg52.relationRow6460 at r6460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6460

  unfold Seg52.relationRow6461 at r6461

  unfold Seg52.relationRow6462 at r6462

  unfold Seg52.relationRow6463 at r6463

  unfold Seg52.relationRow6464 at r6464

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6464

  unfold Seg52.relationRow6465 at r6465

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6465

  unfold Seg52.relationRow6466 at r6466

  unfold Seg52.relationRow6467 at r6467

  unfold Seg52.relationRow6468 at r6468

  unfold Seg52.relationRow6469 at r6469

  unfold Seg52.relationRow6470 at r6470

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX104 rho = seg52Out0AccX103 rho + rho 50853 := by
    unfold seg52Out0AccX104 seg52Out0AccX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 103]

    ring

  have hnexty : seg52Out0AccY104 rho = seg52Out0AccY103 rho + rho 50854 := by
    unfold seg52Out0AccY104 seg52Out0AccY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 103]

    ring

  have ha0 : (rho 50845 + rho 50846) * (seg52Out0AccX103 rho + seg52Out0AccY103 rho) = rho 50847 := by
    unfold seg52Out0AccX103 seg52Out0AccY103
    linear_combination r6458
  have ha1 : rho 50846 * seg52Out0AccX103 rho = rho 50848 := by
    unfold seg52Out0AccX103
    linear_combination r6459
  have ha2 : rho 50845 * seg52Out0AccY103 rho = rho 50849 := by
    unfold seg52Out0AccY103
    linear_combination r6460
  have ha3 : 3021 * rho 50848 * rho 50849 = rho 50850 := by
    linear_combination r6461
  have ha4 : rho 50851 * (1 + rho 50850) = rho 50848 + rho 50849 := by
    linear_combination r6462
  have ha5 : rho 50852 * (1 - rho 50850) = rho 50847 - rho 50848 - rho 50849 := by
    linear_combination r6463
  have haddx :
      rho 50851 * (1 + 3021 * (rho 50846 * seg52Out0AccX103 rho) * (rho 50845 * seg52Out0AccY103 rho)) =
        rho 50846 * seg52Out0AccX103 rho + rho 50845 * seg52Out0AccY103 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50852 * (1 - 3021 * (rho 50846 * seg52Out0AccX103 rho) * (rho 50845 * seg52Out0AccY103 rho)) =
        (-1) * (rho 50846 * seg52Out0AccX103 rho) - rho 50845 * seg52Out0AccY103 rho +
          (seg52Out0AccY103 rho - seg52Out0AccX103 rho * (-1)) * (rho 50845 + rho 50846) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50852 * (1 - rho 50850) = rho 50847 - rho 50848 - rho 50849 := ha5
      _ = (-1) * rho 50848 - rho 50849 + (seg52Out0AccY103 rho - seg52Out0AccX103 rho * (-1)) *
          (rho 50845 + rho 50846) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX104 rho = seg52Out0AccX103 rho - Bool.toZMod bit * (seg52Out0AccX103 rho - rho 50851) := by
    have hd : rho 50853 = Bool.toZMod bit * (rho 50851 - seg52Out0AccX103 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX103
      linear_combination -r6464
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY104 rho = seg52Out0AccY103 rho - Bool.toZMod bit * (seg52Out0AccY103 rho - rho 50852) := by
    have hd : rho 50854 = Bool.toZMod bit * (rho 50852 - seg52Out0AccY103 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY103
      linear_combination -r6465
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50845 * rho 50846 = rho 50855 := by linear_combination r6466
  have hd1 : rho 50845 * rho 50845 = rho 50856 := by linear_combination r6467
  have hd2 : rho 50846 * rho 50846 = rho 50857 := by linear_combination r6468
  have hd3 : rho 50858 * (rho 50846 * rho 50846 + rho 50845 * rho 50845 * (-1)) =
      2 * (rho 50845 * rho 50846) := by
    rw [hd0, hd1, hd2]
    linear_combination r6469
  have hd4 : rho 50859 * (2 - (rho 50846 * rho 50846 + rho 50845 * rho 50845 * (-1))) =
      rho 50846 * rho 50846 - rho 50845 * rho 50845 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6470
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX103 rho, seg52Out0AccY103 rho⟩ ⟨rho 50845, rho 50846⟩
    ⟨rho 50851, rho 50852⟩ ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ ⟨rho 50858, rho 50859⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6471 rho ∧ Seg52.relationRow6472 rho ∧ Seg52.relationRow6473 rho ∧ Seg52.relationRow6474 rho ∧ Seg52.relationRow6475 rho ∧ Seg52.relationRow6476 rho ∧ Seg52.relationRow6477 rho ∧ Seg52.relationRow6478 rho ∧ Seg52.relationRow6479 rho ∧ Seg52.relationRow6480 rho ∧ Seg52.relationRow6481 rho ∧ Seg52.relationRow6482 rho ∧ Seg52.relationRow6483 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p80, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6471, r6472, r6473, r6474, r6475, r6476, r6477, r6478, r6479⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨r6480, r6481, r6482, r6483, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6471, r6472, r6473, r6474, r6475, r6476, r6477, r6478, r6479, r6480, r6481, r6482, r6483⟩

theorem seg52Out0_rung104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49490 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50858, rho 50859⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ ⟨rho 50858, rho 50859⟩
        ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ ⟨rho 50871, rho 50872⟩ := by
  obtain ⟨r6471, r6472, r6473, r6474, r6475, r6476, r6477, r6478, r6479, r6480, r6481, r6482, r6483⟩ := seg52Out0_rows104 rho h
  unfold Seg52.relationRow6471 at r6471

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6471

  unfold Seg52.relationRow6472 at r6472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6472

  unfold Seg52.relationRow6473 at r6473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6473

  unfold Seg52.relationRow6474 at r6474

  unfold Seg52.relationRow6475 at r6475

  unfold Seg52.relationRow6476 at r6476

  unfold Seg52.relationRow6477 at r6477

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6477

  unfold Seg52.relationRow6478 at r6478

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6478

  unfold Seg52.relationRow6479 at r6479

  unfold Seg52.relationRow6480 at r6480

  unfold Seg52.relationRow6481 at r6481

  unfold Seg52.relationRow6482 at r6482

  unfold Seg52.relationRow6483 at r6483

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX105 rho = seg52Out0AccX104 rho + rho 50866 := by
    unfold seg52Out0AccX105 seg52Out0AccX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 104]

    ring

  have hnexty : seg52Out0AccY105 rho = seg52Out0AccY104 rho + rho 50867 := by
    unfold seg52Out0AccY105 seg52Out0AccY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 104]

    ring

  have ha0 : (rho 50858 + rho 50859) * (seg52Out0AccX104 rho + seg52Out0AccY104 rho) = rho 50860 := by
    unfold seg52Out0AccX104 seg52Out0AccY104
    linear_combination r6471
  have ha1 : rho 50859 * seg52Out0AccX104 rho = rho 50861 := by
    unfold seg52Out0AccX104
    linear_combination r6472
  have ha2 : rho 50858 * seg52Out0AccY104 rho = rho 50862 := by
    unfold seg52Out0AccY104
    linear_combination r6473
  have ha3 : 3021 * rho 50861 * rho 50862 = rho 50863 := by
    linear_combination r6474
  have ha4 : rho 50864 * (1 + rho 50863) = rho 50861 + rho 50862 := by
    linear_combination r6475
  have ha5 : rho 50865 * (1 - rho 50863) = rho 50860 - rho 50861 - rho 50862 := by
    linear_combination r6476
  have haddx :
      rho 50864 * (1 + 3021 * (rho 50859 * seg52Out0AccX104 rho) * (rho 50858 * seg52Out0AccY104 rho)) =
        rho 50859 * seg52Out0AccX104 rho + rho 50858 * seg52Out0AccY104 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50865 * (1 - 3021 * (rho 50859 * seg52Out0AccX104 rho) * (rho 50858 * seg52Out0AccY104 rho)) =
        (-1) * (rho 50859 * seg52Out0AccX104 rho) - rho 50858 * seg52Out0AccY104 rho +
          (seg52Out0AccY104 rho - seg52Out0AccX104 rho * (-1)) * (rho 50858 + rho 50859) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50865 * (1 - rho 50863) = rho 50860 - rho 50861 - rho 50862 := ha5
      _ = (-1) * rho 50861 - rho 50862 + (seg52Out0AccY104 rho - seg52Out0AccX104 rho * (-1)) *
          (rho 50858 + rho 50859) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX105 rho = seg52Out0AccX104 rho - Bool.toZMod bit * (seg52Out0AccX104 rho - rho 50864) := by
    have hd : rho 50866 = Bool.toZMod bit * (rho 50864 - seg52Out0AccX104 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX104
      linear_combination -r6477
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY105 rho = seg52Out0AccY104 rho - Bool.toZMod bit * (seg52Out0AccY104 rho - rho 50865) := by
    have hd : rho 50867 = Bool.toZMod bit * (rho 50865 - seg52Out0AccY104 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY104
      linear_combination -r6478
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50858 * rho 50859 = rho 50868 := by linear_combination r6479
  have hd1 : rho 50858 * rho 50858 = rho 50869 := by linear_combination r6480
  have hd2 : rho 50859 * rho 50859 = rho 50870 := by linear_combination r6481
  have hd3 : rho 50871 * (rho 50859 * rho 50859 + rho 50858 * rho 50858 * (-1)) =
      2 * (rho 50858 * rho 50859) := by
    rw [hd0, hd1, hd2]
    linear_combination r6482
  have hd4 : rho 50872 * (2 - (rho 50859 * rho 50859 + rho 50858 * rho 50858 * (-1))) =
      rho 50859 * rho 50859 - rho 50858 * rho 50858 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6483
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX104 rho, seg52Out0AccY104 rho⟩ ⟨rho 50858, rho 50859⟩
    ⟨rho 50864, rho 50865⟩ ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ ⟨rho 50871, rho 50872⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6484 rho ∧ Seg52.relationRow6485 rho ∧ Seg52.relationRow6486 rho ∧ Seg52.relationRow6487 rho ∧ Seg52.relationRow6488 rho ∧ Seg52.relationRow6489 rho ∧ Seg52.relationRow6490 rho ∧ Seg52.relationRow6491 rho ∧ Seg52.relationRow6492 rho ∧ Seg52.relationRow6493 rho ∧ Seg52.relationRow6494 rho ∧ Seg52.relationRow6495 rho ∧ Seg52.relationRow6496 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, r6484, r6485, r6486, r6487, r6488, r6489, r6490, r6491, r6492, r6493, r6494, r6495, r6496, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6484, r6485, r6486, r6487, r6488, r6489, r6490, r6491, r6492, r6493, r6494, r6495, r6496⟩

theorem seg52Out0_rung105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49491 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50871, rho 50872⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ ⟨rho 50871, rho 50872⟩
        ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ ⟨rho 50884, rho 50885⟩ := by
  obtain ⟨r6484, r6485, r6486, r6487, r6488, r6489, r6490, r6491, r6492, r6493, r6494, r6495, r6496⟩ := seg52Out0_rows105 rho h
  unfold Seg52.relationRow6484 at r6484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6484

  unfold Seg52.relationRow6485 at r6485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6485

  unfold Seg52.relationRow6486 at r6486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6486

  unfold Seg52.relationRow6487 at r6487

  unfold Seg52.relationRow6488 at r6488

  unfold Seg52.relationRow6489 at r6489

  unfold Seg52.relationRow6490 at r6490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6490

  unfold Seg52.relationRow6491 at r6491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6491

  unfold Seg52.relationRow6492 at r6492

  unfold Seg52.relationRow6493 at r6493

  unfold Seg52.relationRow6494 at r6494

  unfold Seg52.relationRow6495 at r6495

  unfold Seg52.relationRow6496 at r6496

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX106 rho = seg52Out0AccX105 rho + rho 50879 := by
    unfold seg52Out0AccX106 seg52Out0AccX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 105]

    ring

  have hnexty : seg52Out0AccY106 rho = seg52Out0AccY105 rho + rho 50880 := by
    unfold seg52Out0AccY106 seg52Out0AccY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 105]

    ring

  have ha0 : (rho 50871 + rho 50872) * (seg52Out0AccX105 rho + seg52Out0AccY105 rho) = rho 50873 := by
    unfold seg52Out0AccX105 seg52Out0AccY105
    linear_combination r6484
  have ha1 : rho 50872 * seg52Out0AccX105 rho = rho 50874 := by
    unfold seg52Out0AccX105
    linear_combination r6485
  have ha2 : rho 50871 * seg52Out0AccY105 rho = rho 50875 := by
    unfold seg52Out0AccY105
    linear_combination r6486
  have ha3 : 3021 * rho 50874 * rho 50875 = rho 50876 := by
    linear_combination r6487
  have ha4 : rho 50877 * (1 + rho 50876) = rho 50874 + rho 50875 := by
    linear_combination r6488
  have ha5 : rho 50878 * (1 - rho 50876) = rho 50873 - rho 50874 - rho 50875 := by
    linear_combination r6489
  have haddx :
      rho 50877 * (1 + 3021 * (rho 50872 * seg52Out0AccX105 rho) * (rho 50871 * seg52Out0AccY105 rho)) =
        rho 50872 * seg52Out0AccX105 rho + rho 50871 * seg52Out0AccY105 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50878 * (1 - 3021 * (rho 50872 * seg52Out0AccX105 rho) * (rho 50871 * seg52Out0AccY105 rho)) =
        (-1) * (rho 50872 * seg52Out0AccX105 rho) - rho 50871 * seg52Out0AccY105 rho +
          (seg52Out0AccY105 rho - seg52Out0AccX105 rho * (-1)) * (rho 50871 + rho 50872) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50878 * (1 - rho 50876) = rho 50873 - rho 50874 - rho 50875 := ha5
      _ = (-1) * rho 50874 - rho 50875 + (seg52Out0AccY105 rho - seg52Out0AccX105 rho * (-1)) *
          (rho 50871 + rho 50872) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX106 rho = seg52Out0AccX105 rho - Bool.toZMod bit * (seg52Out0AccX105 rho - rho 50877) := by
    have hd : rho 50879 = Bool.toZMod bit * (rho 50877 - seg52Out0AccX105 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX105
      linear_combination -r6490
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY106 rho = seg52Out0AccY105 rho - Bool.toZMod bit * (seg52Out0AccY105 rho - rho 50878) := by
    have hd : rho 50880 = Bool.toZMod bit * (rho 50878 - seg52Out0AccY105 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY105
      linear_combination -r6491
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50871 * rho 50872 = rho 50881 := by linear_combination r6492
  have hd1 : rho 50871 * rho 50871 = rho 50882 := by linear_combination r6493
  have hd2 : rho 50872 * rho 50872 = rho 50883 := by linear_combination r6494
  have hd3 : rho 50884 * (rho 50872 * rho 50872 + rho 50871 * rho 50871 * (-1)) =
      2 * (rho 50871 * rho 50872) := by
    rw [hd0, hd1, hd2]
    linear_combination r6495
  have hd4 : rho 50885 * (2 - (rho 50872 * rho 50872 + rho 50871 * rho 50871 * (-1))) =
      rho 50872 * rho 50872 - rho 50871 * rho 50871 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6496
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX105 rho, seg52Out0AccY105 rho⟩ ⟨rho 50871, rho 50872⟩
    ⟨rho 50877, rho 50878⟩ ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ ⟨rho 50884, rho 50885⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6497 rho ∧ Seg52.relationRow6498 rho ∧ Seg52.relationRow6499 rho ∧ Seg52.relationRow6500 rho ∧ Seg52.relationRow6501 rho ∧ Seg52.relationRow6502 rho ∧ Seg52.relationRow6503 rho ∧ Seg52.relationRow6504 rho ∧ Seg52.relationRow6505 rho ∧ Seg52.relationRow6506 rho ∧ Seg52.relationRow6507 rho ∧ Seg52.relationRow6508 rho ∧ Seg52.relationRow6509 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6497, r6498, r6499, r6500, r6501, r6502, r6503, r6504, r6505, r6506, r6507, r6508, r6509, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6497, r6498, r6499, r6500, r6501, r6502, r6503, r6504, r6505, r6506, r6507, r6508, r6509⟩

theorem seg52Out0_rung106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49492 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50884, rho 50885⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ ⟨rho 50884, rho 50885⟩
        ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ ⟨rho 50897, rho 50898⟩ := by
  obtain ⟨r6497, r6498, r6499, r6500, r6501, r6502, r6503, r6504, r6505, r6506, r6507, r6508, r6509⟩ := seg52Out0_rows106 rho h
  unfold Seg52.relationRow6497 at r6497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6497

  unfold Seg52.relationRow6498 at r6498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6498

  unfold Seg52.relationRow6499 at r6499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6499

  unfold Seg52.relationRow6500 at r6500

  unfold Seg52.relationRow6501 at r6501

  unfold Seg52.relationRow6502 at r6502

  unfold Seg52.relationRow6503 at r6503

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6503

  unfold Seg52.relationRow6504 at r6504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6504

  unfold Seg52.relationRow6505 at r6505

  unfold Seg52.relationRow6506 at r6506

  unfold Seg52.relationRow6507 at r6507

  unfold Seg52.relationRow6508 at r6508

  unfold Seg52.relationRow6509 at r6509

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX107 rho = seg52Out0AccX106 rho + rho 50892 := by
    unfold seg52Out0AccX107 seg52Out0AccX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 106]

    ring

  have hnexty : seg52Out0AccY107 rho = seg52Out0AccY106 rho + rho 50893 := by
    unfold seg52Out0AccY107 seg52Out0AccY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 106]

    ring

  have ha0 : (rho 50884 + rho 50885) * (seg52Out0AccX106 rho + seg52Out0AccY106 rho) = rho 50886 := by
    unfold seg52Out0AccX106 seg52Out0AccY106
    linear_combination r6497
  have ha1 : rho 50885 * seg52Out0AccX106 rho = rho 50887 := by
    unfold seg52Out0AccX106
    linear_combination r6498
  have ha2 : rho 50884 * seg52Out0AccY106 rho = rho 50888 := by
    unfold seg52Out0AccY106
    linear_combination r6499
  have ha3 : 3021 * rho 50887 * rho 50888 = rho 50889 := by
    linear_combination r6500
  have ha4 : rho 50890 * (1 + rho 50889) = rho 50887 + rho 50888 := by
    linear_combination r6501
  have ha5 : rho 50891 * (1 - rho 50889) = rho 50886 - rho 50887 - rho 50888 := by
    linear_combination r6502
  have haddx :
      rho 50890 * (1 + 3021 * (rho 50885 * seg52Out0AccX106 rho) * (rho 50884 * seg52Out0AccY106 rho)) =
        rho 50885 * seg52Out0AccX106 rho + rho 50884 * seg52Out0AccY106 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50891 * (1 - 3021 * (rho 50885 * seg52Out0AccX106 rho) * (rho 50884 * seg52Out0AccY106 rho)) =
        (-1) * (rho 50885 * seg52Out0AccX106 rho) - rho 50884 * seg52Out0AccY106 rho +
          (seg52Out0AccY106 rho - seg52Out0AccX106 rho * (-1)) * (rho 50884 + rho 50885) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50891 * (1 - rho 50889) = rho 50886 - rho 50887 - rho 50888 := ha5
      _ = (-1) * rho 50887 - rho 50888 + (seg52Out0AccY106 rho - seg52Out0AccX106 rho * (-1)) *
          (rho 50884 + rho 50885) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX107 rho = seg52Out0AccX106 rho - Bool.toZMod bit * (seg52Out0AccX106 rho - rho 50890) := by
    have hd : rho 50892 = Bool.toZMod bit * (rho 50890 - seg52Out0AccX106 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX106
      linear_combination -r6503
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY107 rho = seg52Out0AccY106 rho - Bool.toZMod bit * (seg52Out0AccY106 rho - rho 50891) := by
    have hd : rho 50893 = Bool.toZMod bit * (rho 50891 - seg52Out0AccY106 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY106
      linear_combination -r6504
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50884 * rho 50885 = rho 50894 := by linear_combination r6505
  have hd1 : rho 50884 * rho 50884 = rho 50895 := by linear_combination r6506
  have hd2 : rho 50885 * rho 50885 = rho 50896 := by linear_combination r6507
  have hd3 : rho 50897 * (rho 50885 * rho 50885 + rho 50884 * rho 50884 * (-1)) =
      2 * (rho 50884 * rho 50885) := by
    rw [hd0, hd1, hd2]
    linear_combination r6508
  have hd4 : rho 50898 * (2 - (rho 50885 * rho 50885 + rho 50884 * rho 50884 * (-1))) =
      rho 50885 * rho 50885 - rho 50884 * rho 50884 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6509
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX106 rho, seg52Out0AccY106 rho⟩ ⟨rho 50884, rho 50885⟩
    ⟨rho 50890, rho 50891⟩ ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ ⟨rho 50897, rho 50898⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6510 rho ∧ Seg52.relationRow6511 rho ∧ Seg52.relationRow6512 rho ∧ Seg52.relationRow6513 rho ∧ Seg52.relationRow6514 rho ∧ Seg52.relationRow6515 rho ∧ Seg52.relationRow6516 rho ∧ Seg52.relationRow6517 rho ∧ Seg52.relationRow6518 rho ∧ Seg52.relationRow6519 rho ∧ Seg52.relationRow6520 rho ∧ Seg52.relationRow6521 rho ∧ Seg52.relationRow6522 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6510, r6511, r6512, r6513, r6514, r6515, r6516, r6517, r6518, r6519, r6520, r6521, r6522, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6510, r6511, r6512, r6513, r6514, r6515, r6516, r6517, r6518, r6519, r6520, r6521, r6522⟩

theorem seg52Out0_rung107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49493 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50897, rho 50898⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ ⟨rho 50897, rho 50898⟩
        ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ ⟨rho 50910, rho 50911⟩ := by
  obtain ⟨r6510, r6511, r6512, r6513, r6514, r6515, r6516, r6517, r6518, r6519, r6520, r6521, r6522⟩ := seg52Out0_rows107 rho h
  unfold Seg52.relationRow6510 at r6510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6510

  unfold Seg52.relationRow6511 at r6511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6511

  unfold Seg52.relationRow6512 at r6512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6512

  unfold Seg52.relationRow6513 at r6513

  unfold Seg52.relationRow6514 at r6514

  unfold Seg52.relationRow6515 at r6515

  unfold Seg52.relationRow6516 at r6516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6516

  unfold Seg52.relationRow6517 at r6517

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6517

  unfold Seg52.relationRow6518 at r6518

  unfold Seg52.relationRow6519 at r6519

  unfold Seg52.relationRow6520 at r6520

  unfold Seg52.relationRow6521 at r6521

  unfold Seg52.relationRow6522 at r6522

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX108 rho = seg52Out0AccX107 rho + rho 50905 := by
    unfold seg52Out0AccX108 seg52Out0AccX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 107]

    ring

  have hnexty : seg52Out0AccY108 rho = seg52Out0AccY107 rho + rho 50906 := by
    unfold seg52Out0AccY108 seg52Out0AccY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 107]

    ring

  have ha0 : (rho 50897 + rho 50898) * (seg52Out0AccX107 rho + seg52Out0AccY107 rho) = rho 50899 := by
    unfold seg52Out0AccX107 seg52Out0AccY107
    linear_combination r6510
  have ha1 : rho 50898 * seg52Out0AccX107 rho = rho 50900 := by
    unfold seg52Out0AccX107
    linear_combination r6511
  have ha2 : rho 50897 * seg52Out0AccY107 rho = rho 50901 := by
    unfold seg52Out0AccY107
    linear_combination r6512
  have ha3 : 3021 * rho 50900 * rho 50901 = rho 50902 := by
    linear_combination r6513
  have ha4 : rho 50903 * (1 + rho 50902) = rho 50900 + rho 50901 := by
    linear_combination r6514
  have ha5 : rho 50904 * (1 - rho 50902) = rho 50899 - rho 50900 - rho 50901 := by
    linear_combination r6515
  have haddx :
      rho 50903 * (1 + 3021 * (rho 50898 * seg52Out0AccX107 rho) * (rho 50897 * seg52Out0AccY107 rho)) =
        rho 50898 * seg52Out0AccX107 rho + rho 50897 * seg52Out0AccY107 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50904 * (1 - 3021 * (rho 50898 * seg52Out0AccX107 rho) * (rho 50897 * seg52Out0AccY107 rho)) =
        (-1) * (rho 50898 * seg52Out0AccX107 rho) - rho 50897 * seg52Out0AccY107 rho +
          (seg52Out0AccY107 rho - seg52Out0AccX107 rho * (-1)) * (rho 50897 + rho 50898) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50904 * (1 - rho 50902) = rho 50899 - rho 50900 - rho 50901 := ha5
      _ = (-1) * rho 50900 - rho 50901 + (seg52Out0AccY107 rho - seg52Out0AccX107 rho * (-1)) *
          (rho 50897 + rho 50898) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX108 rho = seg52Out0AccX107 rho - Bool.toZMod bit * (seg52Out0AccX107 rho - rho 50903) := by
    have hd : rho 50905 = Bool.toZMod bit * (rho 50903 - seg52Out0AccX107 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX107
      linear_combination -r6516
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY108 rho = seg52Out0AccY107 rho - Bool.toZMod bit * (seg52Out0AccY107 rho - rho 50904) := by
    have hd : rho 50906 = Bool.toZMod bit * (rho 50904 - seg52Out0AccY107 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY107
      linear_combination -r6517
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50897 * rho 50898 = rho 50907 := by linear_combination r6518
  have hd1 : rho 50897 * rho 50897 = rho 50908 := by linear_combination r6519
  have hd2 : rho 50898 * rho 50898 = rho 50909 := by linear_combination r6520
  have hd3 : rho 50910 * (rho 50898 * rho 50898 + rho 50897 * rho 50897 * (-1)) =
      2 * (rho 50897 * rho 50898) := by
    rw [hd0, hd1, hd2]
    linear_combination r6521
  have hd4 : rho 50911 * (2 - (rho 50898 * rho 50898 + rho 50897 * rho 50897 * (-1))) =
      rho 50898 * rho 50898 - rho 50897 * rho 50897 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6522
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX107 rho, seg52Out0AccY107 rho⟩ ⟨rho 50897, rho 50898⟩
    ⟨rho 50903, rho 50904⟩ ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ ⟨rho 50910, rho 50911⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6523 rho ∧ Seg52.relationRow6524 rho ∧ Seg52.relationRow6525 rho ∧ Seg52.relationRow6526 rho ∧ Seg52.relationRow6527 rho ∧ Seg52.relationRow6528 rho ∧ Seg52.relationRow6529 rho ∧ Seg52.relationRow6530 rho ∧ Seg52.relationRow6531 rho ∧ Seg52.relationRow6532 rho ∧ Seg52.relationRow6533 rho ∧ Seg52.relationRow6534 rho ∧ Seg52.relationRow6535 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6523, r6524, r6525, r6526, r6527, r6528, r6529, r6530, r6531, r6532, r6533, r6534, r6535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6523, r6524, r6525, r6526, r6527, r6528, r6529, r6530, r6531, r6532, r6533, r6534, r6535⟩

theorem seg52Out0_rung108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49494 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50910, rho 50911⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ ⟨rho 50910, rho 50911⟩
        ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ ⟨rho 50923, rho 50924⟩ := by
  obtain ⟨r6523, r6524, r6525, r6526, r6527, r6528, r6529, r6530, r6531, r6532, r6533, r6534, r6535⟩ := seg52Out0_rows108 rho h
  unfold Seg52.relationRow6523 at r6523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6523

  unfold Seg52.relationRow6524 at r6524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6524

  unfold Seg52.relationRow6525 at r6525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6525

  unfold Seg52.relationRow6526 at r6526

  unfold Seg52.relationRow6527 at r6527

  unfold Seg52.relationRow6528 at r6528

  unfold Seg52.relationRow6529 at r6529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6529

  unfold Seg52.relationRow6530 at r6530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6530

  unfold Seg52.relationRow6531 at r6531

  unfold Seg52.relationRow6532 at r6532

  unfold Seg52.relationRow6533 at r6533

  unfold Seg52.relationRow6534 at r6534

  unfold Seg52.relationRow6535 at r6535

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX109 rho = seg52Out0AccX108 rho + rho 50918 := by
    unfold seg52Out0AccX109 seg52Out0AccX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 108]

    ring

  have hnexty : seg52Out0AccY109 rho = seg52Out0AccY108 rho + rho 50919 := by
    unfold seg52Out0AccY109 seg52Out0AccY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 108]

    ring

  have ha0 : (rho 50910 + rho 50911) * (seg52Out0AccX108 rho + seg52Out0AccY108 rho) = rho 50912 := by
    unfold seg52Out0AccX108 seg52Out0AccY108
    linear_combination r6523
  have ha1 : rho 50911 * seg52Out0AccX108 rho = rho 50913 := by
    unfold seg52Out0AccX108
    linear_combination r6524
  have ha2 : rho 50910 * seg52Out0AccY108 rho = rho 50914 := by
    unfold seg52Out0AccY108
    linear_combination r6525
  have ha3 : 3021 * rho 50913 * rho 50914 = rho 50915 := by
    linear_combination r6526
  have ha4 : rho 50916 * (1 + rho 50915) = rho 50913 + rho 50914 := by
    linear_combination r6527
  have ha5 : rho 50917 * (1 - rho 50915) = rho 50912 - rho 50913 - rho 50914 := by
    linear_combination r6528
  have haddx :
      rho 50916 * (1 + 3021 * (rho 50911 * seg52Out0AccX108 rho) * (rho 50910 * seg52Out0AccY108 rho)) =
        rho 50911 * seg52Out0AccX108 rho + rho 50910 * seg52Out0AccY108 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50917 * (1 - 3021 * (rho 50911 * seg52Out0AccX108 rho) * (rho 50910 * seg52Out0AccY108 rho)) =
        (-1) * (rho 50911 * seg52Out0AccX108 rho) - rho 50910 * seg52Out0AccY108 rho +
          (seg52Out0AccY108 rho - seg52Out0AccX108 rho * (-1)) * (rho 50910 + rho 50911) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50917 * (1 - rho 50915) = rho 50912 - rho 50913 - rho 50914 := ha5
      _ = (-1) * rho 50913 - rho 50914 + (seg52Out0AccY108 rho - seg52Out0AccX108 rho * (-1)) *
          (rho 50910 + rho 50911) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX109 rho = seg52Out0AccX108 rho - Bool.toZMod bit * (seg52Out0AccX108 rho - rho 50916) := by
    have hd : rho 50918 = Bool.toZMod bit * (rho 50916 - seg52Out0AccX108 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX108
      linear_combination -r6529
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY109 rho = seg52Out0AccY108 rho - Bool.toZMod bit * (seg52Out0AccY108 rho - rho 50917) := by
    have hd : rho 50919 = Bool.toZMod bit * (rho 50917 - seg52Out0AccY108 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY108
      linear_combination -r6530
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50910 * rho 50911 = rho 50920 := by linear_combination r6531
  have hd1 : rho 50910 * rho 50910 = rho 50921 := by linear_combination r6532
  have hd2 : rho 50911 * rho 50911 = rho 50922 := by linear_combination r6533
  have hd3 : rho 50923 * (rho 50911 * rho 50911 + rho 50910 * rho 50910 * (-1)) =
      2 * (rho 50910 * rho 50911) := by
    rw [hd0, hd1, hd2]
    linear_combination r6534
  have hd4 : rho 50924 * (2 - (rho 50911 * rho 50911 + rho 50910 * rho 50910 * (-1))) =
      rho 50911 * rho 50911 - rho 50910 * rho 50910 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6535
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX108 rho, seg52Out0AccY108 rho⟩ ⟨rho 50910, rho 50911⟩
    ⟨rho 50916, rho 50917⟩ ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ ⟨rho 50923, rho 50924⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6536 rho ∧ Seg52.relationRow6537 rho ∧ Seg52.relationRow6538 rho ∧ Seg52.relationRow6539 rho ∧ Seg52.relationRow6540 rho ∧ Seg52.relationRow6541 rho ∧ Seg52.relationRow6542 rho ∧ Seg52.relationRow6543 rho ∧ Seg52.relationRow6544 rho ∧ Seg52.relationRow6545 rho ∧ Seg52.relationRow6546 rho ∧ Seg52.relationRow6547 rho ∧ Seg52.relationRow6548 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6536, r6537, r6538, r6539, r6540, r6541, r6542, r6543, r6544, r6545, r6546, r6547, r6548, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6536, r6537, r6538, r6539, r6540, r6541, r6542, r6543, r6544, r6545, r6546, r6547, r6548⟩

theorem seg52Out0_rung109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49495 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50923, rho 50924⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ ⟨rho 50923, rho 50924⟩
        ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ ⟨rho 50936, rho 50937⟩ := by
  obtain ⟨r6536, r6537, r6538, r6539, r6540, r6541, r6542, r6543, r6544, r6545, r6546, r6547, r6548⟩ := seg52Out0_rows109 rho h
  unfold Seg52.relationRow6536 at r6536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6536

  unfold Seg52.relationRow6537 at r6537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6537

  unfold Seg52.relationRow6538 at r6538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6538

  unfold Seg52.relationRow6539 at r6539

  unfold Seg52.relationRow6540 at r6540

  unfold Seg52.relationRow6541 at r6541

  unfold Seg52.relationRow6542 at r6542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6542

  unfold Seg52.relationRow6543 at r6543

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6543

  unfold Seg52.relationRow6544 at r6544

  unfold Seg52.relationRow6545 at r6545

  unfold Seg52.relationRow6546 at r6546

  unfold Seg52.relationRow6547 at r6547

  unfold Seg52.relationRow6548 at r6548

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX110 rho = seg52Out0AccX109 rho + rho 50931 := by
    unfold seg52Out0AccX110 seg52Out0AccX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 109]

    ring

  have hnexty : seg52Out0AccY110 rho = seg52Out0AccY109 rho + rho 50932 := by
    unfold seg52Out0AccY110 seg52Out0AccY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 109]

    ring

  have ha0 : (rho 50923 + rho 50924) * (seg52Out0AccX109 rho + seg52Out0AccY109 rho) = rho 50925 := by
    unfold seg52Out0AccX109 seg52Out0AccY109
    linear_combination r6536
  have ha1 : rho 50924 * seg52Out0AccX109 rho = rho 50926 := by
    unfold seg52Out0AccX109
    linear_combination r6537
  have ha2 : rho 50923 * seg52Out0AccY109 rho = rho 50927 := by
    unfold seg52Out0AccY109
    linear_combination r6538
  have ha3 : 3021 * rho 50926 * rho 50927 = rho 50928 := by
    linear_combination r6539
  have ha4 : rho 50929 * (1 + rho 50928) = rho 50926 + rho 50927 := by
    linear_combination r6540
  have ha5 : rho 50930 * (1 - rho 50928) = rho 50925 - rho 50926 - rho 50927 := by
    linear_combination r6541
  have haddx :
      rho 50929 * (1 + 3021 * (rho 50924 * seg52Out0AccX109 rho) * (rho 50923 * seg52Out0AccY109 rho)) =
        rho 50924 * seg52Out0AccX109 rho + rho 50923 * seg52Out0AccY109 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50930 * (1 - 3021 * (rho 50924 * seg52Out0AccX109 rho) * (rho 50923 * seg52Out0AccY109 rho)) =
        (-1) * (rho 50924 * seg52Out0AccX109 rho) - rho 50923 * seg52Out0AccY109 rho +
          (seg52Out0AccY109 rho - seg52Out0AccX109 rho * (-1)) * (rho 50923 + rho 50924) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50930 * (1 - rho 50928) = rho 50925 - rho 50926 - rho 50927 := ha5
      _ = (-1) * rho 50926 - rho 50927 + (seg52Out0AccY109 rho - seg52Out0AccX109 rho * (-1)) *
          (rho 50923 + rho 50924) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX110 rho = seg52Out0AccX109 rho - Bool.toZMod bit * (seg52Out0AccX109 rho - rho 50929) := by
    have hd : rho 50931 = Bool.toZMod bit * (rho 50929 - seg52Out0AccX109 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX109
      linear_combination -r6542
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY110 rho = seg52Out0AccY109 rho - Bool.toZMod bit * (seg52Out0AccY109 rho - rho 50930) := by
    have hd : rho 50932 = Bool.toZMod bit * (rho 50930 - seg52Out0AccY109 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY109
      linear_combination -r6543
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50923 * rho 50924 = rho 50933 := by linear_combination r6544
  have hd1 : rho 50923 * rho 50923 = rho 50934 := by linear_combination r6545
  have hd2 : rho 50924 * rho 50924 = rho 50935 := by linear_combination r6546
  have hd3 : rho 50936 * (rho 50924 * rho 50924 + rho 50923 * rho 50923 * (-1)) =
      2 * (rho 50923 * rho 50924) := by
    rw [hd0, hd1, hd2]
    linear_combination r6547
  have hd4 : rho 50937 * (2 - (rho 50924 * rho 50924 + rho 50923 * rho 50923 * (-1))) =
      rho 50924 * rho 50924 - rho 50923 * rho 50923 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6548
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX109 rho, seg52Out0AccY109 rho⟩ ⟨rho 50923, rho 50924⟩
    ⟨rho 50929, rho 50930⟩ ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ ⟨rho 50936, rho 50937⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c9 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg52Out0_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg52Out0_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg52Out0_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg52Out0_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg52Out0_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg52Out0_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg52Out0_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg52Out0_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg52Out0_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg52Out0_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

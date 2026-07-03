import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5405 rho ∧ Seg52.relationRow5406 rho ∧ Seg52.relationRow5407 rho ∧ Seg52.relationRow5408 rho ∧ Seg52.relationRow5409 rho ∧ Seg52.relationRow5410 rho ∧ Seg52.relationRow5411 rho ∧ Seg52.relationRow5412 rho ∧ Seg52.relationRow5413 rho ∧ Seg52.relationRow5414 rho ∧ Seg52.relationRow5415 rho ∧ Seg52.relationRow5416 rho ∧ Seg52.relationRow5417 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p67, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417⟩

theorem seg52Out0_rung22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49408 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49792, rho 49793⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ ⟨rho 49792, rho 49793⟩
        ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ ⟨rho 49805, rho 49806⟩ := by
  obtain ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417⟩ := seg52Out0_rows22 rho h
  unfold Seg52.relationRow5405 at r5405

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5405

  unfold Seg52.relationRow5406 at r5406

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5406

  unfold Seg52.relationRow5407 at r5407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5407

  unfold Seg52.relationRow5408 at r5408

  unfold Seg52.relationRow5409 at r5409

  unfold Seg52.relationRow5410 at r5410

  unfold Seg52.relationRow5411 at r5411

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5411

  unfold Seg52.relationRow5412 at r5412

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5412

  unfold Seg52.relationRow5413 at r5413

  unfold Seg52.relationRow5414 at r5414

  unfold Seg52.relationRow5415 at r5415

  unfold Seg52.relationRow5416 at r5416

  unfold Seg52.relationRow5417 at r5417

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX23 rho = seg52Out0AccX22 rho + rho 49800 := by
    unfold seg52Out0AccX23 seg52Out0AccX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 22]

    ring

  have hnexty : seg52Out0AccY23 rho = seg52Out0AccY22 rho + rho 49801 := by
    unfold seg52Out0AccY23 seg52Out0AccY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 22]

    ring

  have ha0 : (rho 49792 + rho 49793) * (seg52Out0AccX22 rho + seg52Out0AccY22 rho) = rho 49794 := by
    unfold seg52Out0AccX22 seg52Out0AccY22
    linear_combination r5405
  have ha1 : rho 49793 * seg52Out0AccX22 rho = rho 49795 := by
    unfold seg52Out0AccX22
    linear_combination r5406
  have ha2 : rho 49792 * seg52Out0AccY22 rho = rho 49796 := by
    unfold seg52Out0AccY22
    linear_combination r5407
  have ha3 : 3021 * rho 49795 * rho 49796 = rho 49797 := by
    linear_combination r5408
  have ha4 : rho 49798 * (1 + rho 49797) = rho 49795 + rho 49796 := by
    linear_combination r5409
  have ha5 : rho 49799 * (1 - rho 49797) = rho 49794 - rho 49795 - rho 49796 := by
    linear_combination r5410
  have haddx :
      rho 49798 * (1 + 3021 * (rho 49793 * seg52Out0AccX22 rho) * (rho 49792 * seg52Out0AccY22 rho)) =
        rho 49793 * seg52Out0AccX22 rho + rho 49792 * seg52Out0AccY22 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49799 * (1 - 3021 * (rho 49793 * seg52Out0AccX22 rho) * (rho 49792 * seg52Out0AccY22 rho)) =
        (-1) * (rho 49793 * seg52Out0AccX22 rho) - rho 49792 * seg52Out0AccY22 rho +
          (seg52Out0AccY22 rho - seg52Out0AccX22 rho * (-1)) * (rho 49792 + rho 49793) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49799 * (1 - rho 49797) = rho 49794 - rho 49795 - rho 49796 := ha5
      _ = (-1) * rho 49795 - rho 49796 + (seg52Out0AccY22 rho - seg52Out0AccX22 rho * (-1)) *
          (rho 49792 + rho 49793) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX23 rho = seg52Out0AccX22 rho - Bool.toZMod bit * (seg52Out0AccX22 rho - rho 49798) := by
    have hd : rho 49800 = Bool.toZMod bit * (rho 49798 - seg52Out0AccX22 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX22
      linear_combination -r5411
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY23 rho = seg52Out0AccY22 rho - Bool.toZMod bit * (seg52Out0AccY22 rho - rho 49799) := by
    have hd : rho 49801 = Bool.toZMod bit * (rho 49799 - seg52Out0AccY22 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY22
      linear_combination -r5412
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49792 * rho 49793 = rho 49802 := by linear_combination r5413
  have hd1 : rho 49792 * rho 49792 = rho 49803 := by linear_combination r5414
  have hd2 : rho 49793 * rho 49793 = rho 49804 := by linear_combination r5415
  have hd3 : rho 49805 * (rho 49793 * rho 49793 + rho 49792 * rho 49792 * (-1)) =
      2 * (rho 49792 * rho 49793) := by
    rw [hd0, hd1, hd2]
    linear_combination r5416
  have hd4 : rho 49806 * (2 - (rho 49793 * rho 49793 + rho 49792 * rho 49792 * (-1))) =
      rho 49793 * rho 49793 - rho 49792 * rho 49792 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5417
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ ⟨rho 49792, rho 49793⟩
    ⟨rho 49798, rho 49799⟩ ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ ⟨rho 49805, rho 49806⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5418 rho ∧ Seg52.relationRow5419 rho ∧ Seg52.relationRow5420 rho ∧ Seg52.relationRow5421 rho ∧ Seg52.relationRow5422 rho ∧ Seg52.relationRow5423 rho ∧ Seg52.relationRow5424 rho ∧ Seg52.relationRow5425 rho ∧ Seg52.relationRow5426 rho ∧ Seg52.relationRow5427 rho ∧ Seg52.relationRow5428 rho ∧ Seg52.relationRow5429 rho ∧ Seg52.relationRow5430 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p67, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430⟩

theorem seg52Out0_rung23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49409 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49805, rho 49806⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ ⟨rho 49805, rho 49806⟩
        ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ ⟨rho 49818, rho 49819⟩ := by
  obtain ⟨r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430⟩ := seg52Out0_rows23 rho h
  unfold Seg52.relationRow5418 at r5418

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5418

  unfold Seg52.relationRow5419 at r5419

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5419

  unfold Seg52.relationRow5420 at r5420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5420

  unfold Seg52.relationRow5421 at r5421

  unfold Seg52.relationRow5422 at r5422

  unfold Seg52.relationRow5423 at r5423

  unfold Seg52.relationRow5424 at r5424

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5424

  unfold Seg52.relationRow5425 at r5425

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5425

  unfold Seg52.relationRow5426 at r5426

  unfold Seg52.relationRow5427 at r5427

  unfold Seg52.relationRow5428 at r5428

  unfold Seg52.relationRow5429 at r5429

  unfold Seg52.relationRow5430 at r5430

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX24 rho = seg52Out0AccX23 rho + rho 49813 := by
    unfold seg52Out0AccX24 seg52Out0AccX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 23]

    ring

  have hnexty : seg52Out0AccY24 rho = seg52Out0AccY23 rho + rho 49814 := by
    unfold seg52Out0AccY24 seg52Out0AccY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 23]

    ring

  have ha0 : (rho 49805 + rho 49806) * (seg52Out0AccX23 rho + seg52Out0AccY23 rho) = rho 49807 := by
    unfold seg52Out0AccX23 seg52Out0AccY23
    linear_combination r5418
  have ha1 : rho 49806 * seg52Out0AccX23 rho = rho 49808 := by
    unfold seg52Out0AccX23
    linear_combination r5419
  have ha2 : rho 49805 * seg52Out0AccY23 rho = rho 49809 := by
    unfold seg52Out0AccY23
    linear_combination r5420
  have ha3 : 3021 * rho 49808 * rho 49809 = rho 49810 := by
    linear_combination r5421
  have ha4 : rho 49811 * (1 + rho 49810) = rho 49808 + rho 49809 := by
    linear_combination r5422
  have ha5 : rho 49812 * (1 - rho 49810) = rho 49807 - rho 49808 - rho 49809 := by
    linear_combination r5423
  have haddx :
      rho 49811 * (1 + 3021 * (rho 49806 * seg52Out0AccX23 rho) * (rho 49805 * seg52Out0AccY23 rho)) =
        rho 49806 * seg52Out0AccX23 rho + rho 49805 * seg52Out0AccY23 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49812 * (1 - 3021 * (rho 49806 * seg52Out0AccX23 rho) * (rho 49805 * seg52Out0AccY23 rho)) =
        (-1) * (rho 49806 * seg52Out0AccX23 rho) - rho 49805 * seg52Out0AccY23 rho +
          (seg52Out0AccY23 rho - seg52Out0AccX23 rho * (-1)) * (rho 49805 + rho 49806) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49812 * (1 - rho 49810) = rho 49807 - rho 49808 - rho 49809 := ha5
      _ = (-1) * rho 49808 - rho 49809 + (seg52Out0AccY23 rho - seg52Out0AccX23 rho * (-1)) *
          (rho 49805 + rho 49806) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX24 rho = seg52Out0AccX23 rho - Bool.toZMod bit * (seg52Out0AccX23 rho - rho 49811) := by
    have hd : rho 49813 = Bool.toZMod bit * (rho 49811 - seg52Out0AccX23 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX23
      linear_combination -r5424
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY24 rho = seg52Out0AccY23 rho - Bool.toZMod bit * (seg52Out0AccY23 rho - rho 49812) := by
    have hd : rho 49814 = Bool.toZMod bit * (rho 49812 - seg52Out0AccY23 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY23
      linear_combination -r5425
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49805 * rho 49806 = rho 49815 := by linear_combination r5426
  have hd1 : rho 49805 * rho 49805 = rho 49816 := by linear_combination r5427
  have hd2 : rho 49806 * rho 49806 = rho 49817 := by linear_combination r5428
  have hd3 : rho 49818 * (rho 49806 * rho 49806 + rho 49805 * rho 49805 * (-1)) =
      2 * (rho 49805 * rho 49806) := by
    rw [hd0, hd1, hd2]
    linear_combination r5429
  have hd4 : rho 49819 * (2 - (rho 49806 * rho 49806 + rho 49805 * rho 49805 * (-1))) =
      rho 49806 * rho 49806 - rho 49805 * rho 49805 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5430
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX23 rho, seg52Out0AccY23 rho⟩ ⟨rho 49805, rho 49806⟩
    ⟨rho 49811, rho 49812⟩ ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ ⟨rho 49818, rho 49819⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5431 rho ∧ Seg52.relationRow5432 rho ∧ Seg52.relationRow5433 rho ∧ Seg52.relationRow5434 rho ∧ Seg52.relationRow5435 rho ∧ Seg52.relationRow5436 rho ∧ Seg52.relationRow5437 rho ∧ Seg52.relationRow5438 rho ∧ Seg52.relationRow5439 rho ∧ Seg52.relationRow5440 rho ∧ Seg52.relationRow5441 rho ∧ Seg52.relationRow5442 rho ∧ Seg52.relationRow5443 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p67, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨r5440, r5441, r5442, r5443, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443⟩

theorem seg52Out0_rung24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49410 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49818, rho 49819⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ ⟨rho 49818, rho 49819⟩
        ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ ⟨rho 49831, rho 49832⟩ := by
  obtain ⟨r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443⟩ := seg52Out0_rows24 rho h
  unfold Seg52.relationRow5431 at r5431

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5431

  unfold Seg52.relationRow5432 at r5432

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5432

  unfold Seg52.relationRow5433 at r5433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5433

  unfold Seg52.relationRow5434 at r5434

  unfold Seg52.relationRow5435 at r5435

  unfold Seg52.relationRow5436 at r5436

  unfold Seg52.relationRow5437 at r5437

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5437

  unfold Seg52.relationRow5438 at r5438

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5438

  unfold Seg52.relationRow5439 at r5439

  unfold Seg52.relationRow5440 at r5440

  unfold Seg52.relationRow5441 at r5441

  unfold Seg52.relationRow5442 at r5442

  unfold Seg52.relationRow5443 at r5443

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX25 rho = seg52Out0AccX24 rho + rho 49826 := by
    unfold seg52Out0AccX25 seg52Out0AccX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 24]

    ring

  have hnexty : seg52Out0AccY25 rho = seg52Out0AccY24 rho + rho 49827 := by
    unfold seg52Out0AccY25 seg52Out0AccY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 24]

    ring

  have ha0 : (rho 49818 + rho 49819) * (seg52Out0AccX24 rho + seg52Out0AccY24 rho) = rho 49820 := by
    unfold seg52Out0AccX24 seg52Out0AccY24
    linear_combination r5431
  have ha1 : rho 49819 * seg52Out0AccX24 rho = rho 49821 := by
    unfold seg52Out0AccX24
    linear_combination r5432
  have ha2 : rho 49818 * seg52Out0AccY24 rho = rho 49822 := by
    unfold seg52Out0AccY24
    linear_combination r5433
  have ha3 : 3021 * rho 49821 * rho 49822 = rho 49823 := by
    linear_combination r5434
  have ha4 : rho 49824 * (1 + rho 49823) = rho 49821 + rho 49822 := by
    linear_combination r5435
  have ha5 : rho 49825 * (1 - rho 49823) = rho 49820 - rho 49821 - rho 49822 := by
    linear_combination r5436
  have haddx :
      rho 49824 * (1 + 3021 * (rho 49819 * seg52Out0AccX24 rho) * (rho 49818 * seg52Out0AccY24 rho)) =
        rho 49819 * seg52Out0AccX24 rho + rho 49818 * seg52Out0AccY24 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49825 * (1 - 3021 * (rho 49819 * seg52Out0AccX24 rho) * (rho 49818 * seg52Out0AccY24 rho)) =
        (-1) * (rho 49819 * seg52Out0AccX24 rho) - rho 49818 * seg52Out0AccY24 rho +
          (seg52Out0AccY24 rho - seg52Out0AccX24 rho * (-1)) * (rho 49818 + rho 49819) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49825 * (1 - rho 49823) = rho 49820 - rho 49821 - rho 49822 := ha5
      _ = (-1) * rho 49821 - rho 49822 + (seg52Out0AccY24 rho - seg52Out0AccX24 rho * (-1)) *
          (rho 49818 + rho 49819) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX25 rho = seg52Out0AccX24 rho - Bool.toZMod bit * (seg52Out0AccX24 rho - rho 49824) := by
    have hd : rho 49826 = Bool.toZMod bit * (rho 49824 - seg52Out0AccX24 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX24
      linear_combination -r5437
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY25 rho = seg52Out0AccY24 rho - Bool.toZMod bit * (seg52Out0AccY24 rho - rho 49825) := by
    have hd : rho 49827 = Bool.toZMod bit * (rho 49825 - seg52Out0AccY24 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY24
      linear_combination -r5438
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49818 * rho 49819 = rho 49828 := by linear_combination r5439
  have hd1 : rho 49818 * rho 49818 = rho 49829 := by linear_combination r5440
  have hd2 : rho 49819 * rho 49819 = rho 49830 := by linear_combination r5441
  have hd3 : rho 49831 * (rho 49819 * rho 49819 + rho 49818 * rho 49818 * (-1)) =
      2 * (rho 49818 * rho 49819) := by
    rw [hd0, hd1, hd2]
    linear_combination r5442
  have hd4 : rho 49832 * (2 - (rho 49819 * rho 49819 + rho 49818 * rho 49818 * (-1))) =
      rho 49819 * rho 49819 - rho 49818 * rho 49818 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5443
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX24 rho, seg52Out0AccY24 rho⟩ ⟨rho 49818, rho 49819⟩
    ⟨rho 49824, rho 49825⟩ ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ ⟨rho 49831, rho 49832⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5444 rho ∧ Seg52.relationRow5445 rho ∧ Seg52.relationRow5446 rho ∧ Seg52.relationRow5447 rho ∧ Seg52.relationRow5448 rho ∧ Seg52.relationRow5449 rho ∧ Seg52.relationRow5450 rho ∧ Seg52.relationRow5451 rho ∧ Seg52.relationRow5452 rho ∧ Seg52.relationRow5453 rho ∧ Seg52.relationRow5454 rho ∧ Seg52.relationRow5455 rho ∧ Seg52.relationRow5456 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456⟩

theorem seg52Out0_rung25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49411 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49831, rho 49832⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ ⟨rho 49831, rho 49832⟩
        ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ ⟨rho 49844, rho 49845⟩ := by
  obtain ⟨r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456⟩ := seg52Out0_rows25 rho h
  unfold Seg52.relationRow5444 at r5444

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5444

  unfold Seg52.relationRow5445 at r5445

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5445

  unfold Seg52.relationRow5446 at r5446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5446

  unfold Seg52.relationRow5447 at r5447

  unfold Seg52.relationRow5448 at r5448

  unfold Seg52.relationRow5449 at r5449

  unfold Seg52.relationRow5450 at r5450

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5450

  unfold Seg52.relationRow5451 at r5451

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5451

  unfold Seg52.relationRow5452 at r5452

  unfold Seg52.relationRow5453 at r5453

  unfold Seg52.relationRow5454 at r5454

  unfold Seg52.relationRow5455 at r5455

  unfold Seg52.relationRow5456 at r5456

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX26 rho = seg52Out0AccX25 rho + rho 49839 := by
    unfold seg52Out0AccX26 seg52Out0AccX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 25]

    ring

  have hnexty : seg52Out0AccY26 rho = seg52Out0AccY25 rho + rho 49840 := by
    unfold seg52Out0AccY26 seg52Out0AccY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 25]

    ring

  have ha0 : (rho 49831 + rho 49832) * (seg52Out0AccX25 rho + seg52Out0AccY25 rho) = rho 49833 := by
    unfold seg52Out0AccX25 seg52Out0AccY25
    linear_combination r5444
  have ha1 : rho 49832 * seg52Out0AccX25 rho = rho 49834 := by
    unfold seg52Out0AccX25
    linear_combination r5445
  have ha2 : rho 49831 * seg52Out0AccY25 rho = rho 49835 := by
    unfold seg52Out0AccY25
    linear_combination r5446
  have ha3 : 3021 * rho 49834 * rho 49835 = rho 49836 := by
    linear_combination r5447
  have ha4 : rho 49837 * (1 + rho 49836) = rho 49834 + rho 49835 := by
    linear_combination r5448
  have ha5 : rho 49838 * (1 - rho 49836) = rho 49833 - rho 49834 - rho 49835 := by
    linear_combination r5449
  have haddx :
      rho 49837 * (1 + 3021 * (rho 49832 * seg52Out0AccX25 rho) * (rho 49831 * seg52Out0AccY25 rho)) =
        rho 49832 * seg52Out0AccX25 rho + rho 49831 * seg52Out0AccY25 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49838 * (1 - 3021 * (rho 49832 * seg52Out0AccX25 rho) * (rho 49831 * seg52Out0AccY25 rho)) =
        (-1) * (rho 49832 * seg52Out0AccX25 rho) - rho 49831 * seg52Out0AccY25 rho +
          (seg52Out0AccY25 rho - seg52Out0AccX25 rho * (-1)) * (rho 49831 + rho 49832) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49838 * (1 - rho 49836) = rho 49833 - rho 49834 - rho 49835 := ha5
      _ = (-1) * rho 49834 - rho 49835 + (seg52Out0AccY25 rho - seg52Out0AccX25 rho * (-1)) *
          (rho 49831 + rho 49832) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX26 rho = seg52Out0AccX25 rho - Bool.toZMod bit * (seg52Out0AccX25 rho - rho 49837) := by
    have hd : rho 49839 = Bool.toZMod bit * (rho 49837 - seg52Out0AccX25 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX25
      linear_combination -r5450
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY26 rho = seg52Out0AccY25 rho - Bool.toZMod bit * (seg52Out0AccY25 rho - rho 49838) := by
    have hd : rho 49840 = Bool.toZMod bit * (rho 49838 - seg52Out0AccY25 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY25
      linear_combination -r5451
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49831 * rho 49832 = rho 49841 := by linear_combination r5452
  have hd1 : rho 49831 * rho 49831 = rho 49842 := by linear_combination r5453
  have hd2 : rho 49832 * rho 49832 = rho 49843 := by linear_combination r5454
  have hd3 : rho 49844 * (rho 49832 * rho 49832 + rho 49831 * rho 49831 * (-1)) =
      2 * (rho 49831 * rho 49832) := by
    rw [hd0, hd1, hd2]
    linear_combination r5455
  have hd4 : rho 49845 * (2 - (rho 49832 * rho 49832 + rho 49831 * rho 49831 * (-1))) =
      rho 49832 * rho 49832 - rho 49831 * rho 49831 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5456
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX25 rho, seg52Out0AccY25 rho⟩ ⟨rho 49831, rho 49832⟩
    ⟨rho 49837, rho 49838⟩ ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ ⟨rho 49844, rho 49845⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5457 rho ∧ Seg52.relationRow5458 rho ∧ Seg52.relationRow5459 rho ∧ Seg52.relationRow5460 rho ∧ Seg52.relationRow5461 rho ∧ Seg52.relationRow5462 rho ∧ Seg52.relationRow5463 rho ∧ Seg52.relationRow5464 rho ∧ Seg52.relationRow5465 rho ∧ Seg52.relationRow5466 rho ∧ Seg52.relationRow5467 rho ∧ Seg52.relationRow5468 rho ∧ Seg52.relationRow5469 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469⟩

theorem seg52Out0_rung26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49412 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49844, rho 49845⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ ⟨rho 49844, rho 49845⟩
        ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ ⟨rho 49857, rho 49858⟩ := by
  obtain ⟨r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469⟩ := seg52Out0_rows26 rho h
  unfold Seg52.relationRow5457 at r5457

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5457

  unfold Seg52.relationRow5458 at r5458

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5458

  unfold Seg52.relationRow5459 at r5459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5459

  unfold Seg52.relationRow5460 at r5460

  unfold Seg52.relationRow5461 at r5461

  unfold Seg52.relationRow5462 at r5462

  unfold Seg52.relationRow5463 at r5463

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5463

  unfold Seg52.relationRow5464 at r5464

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5464

  unfold Seg52.relationRow5465 at r5465

  unfold Seg52.relationRow5466 at r5466

  unfold Seg52.relationRow5467 at r5467

  unfold Seg52.relationRow5468 at r5468

  unfold Seg52.relationRow5469 at r5469

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX27 rho = seg52Out0AccX26 rho + rho 49852 := by
    unfold seg52Out0AccX27 seg52Out0AccX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 26]

    ring

  have hnexty : seg52Out0AccY27 rho = seg52Out0AccY26 rho + rho 49853 := by
    unfold seg52Out0AccY27 seg52Out0AccY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 26]

    ring

  have ha0 : (rho 49844 + rho 49845) * (seg52Out0AccX26 rho + seg52Out0AccY26 rho) = rho 49846 := by
    unfold seg52Out0AccX26 seg52Out0AccY26
    linear_combination r5457
  have ha1 : rho 49845 * seg52Out0AccX26 rho = rho 49847 := by
    unfold seg52Out0AccX26
    linear_combination r5458
  have ha2 : rho 49844 * seg52Out0AccY26 rho = rho 49848 := by
    unfold seg52Out0AccY26
    linear_combination r5459
  have ha3 : 3021 * rho 49847 * rho 49848 = rho 49849 := by
    linear_combination r5460
  have ha4 : rho 49850 * (1 + rho 49849) = rho 49847 + rho 49848 := by
    linear_combination r5461
  have ha5 : rho 49851 * (1 - rho 49849) = rho 49846 - rho 49847 - rho 49848 := by
    linear_combination r5462
  have haddx :
      rho 49850 * (1 + 3021 * (rho 49845 * seg52Out0AccX26 rho) * (rho 49844 * seg52Out0AccY26 rho)) =
        rho 49845 * seg52Out0AccX26 rho + rho 49844 * seg52Out0AccY26 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49851 * (1 - 3021 * (rho 49845 * seg52Out0AccX26 rho) * (rho 49844 * seg52Out0AccY26 rho)) =
        (-1) * (rho 49845 * seg52Out0AccX26 rho) - rho 49844 * seg52Out0AccY26 rho +
          (seg52Out0AccY26 rho - seg52Out0AccX26 rho * (-1)) * (rho 49844 + rho 49845) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49851 * (1 - rho 49849) = rho 49846 - rho 49847 - rho 49848 := ha5
      _ = (-1) * rho 49847 - rho 49848 + (seg52Out0AccY26 rho - seg52Out0AccX26 rho * (-1)) *
          (rho 49844 + rho 49845) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX27 rho = seg52Out0AccX26 rho - Bool.toZMod bit * (seg52Out0AccX26 rho - rho 49850) := by
    have hd : rho 49852 = Bool.toZMod bit * (rho 49850 - seg52Out0AccX26 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX26
      linear_combination -r5463
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY27 rho = seg52Out0AccY26 rho - Bool.toZMod bit * (seg52Out0AccY26 rho - rho 49851) := by
    have hd : rho 49853 = Bool.toZMod bit * (rho 49851 - seg52Out0AccY26 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY26
      linear_combination -r5464
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49844 * rho 49845 = rho 49854 := by linear_combination r5465
  have hd1 : rho 49844 * rho 49844 = rho 49855 := by linear_combination r5466
  have hd2 : rho 49845 * rho 49845 = rho 49856 := by linear_combination r5467
  have hd3 : rho 49857 * (rho 49845 * rho 49845 + rho 49844 * rho 49844 * (-1)) =
      2 * (rho 49844 * rho 49845) := by
    rw [hd0, hd1, hd2]
    linear_combination r5468
  have hd4 : rho 49858 * (2 - (rho 49845 * rho 49845 + rho 49844 * rho 49844 * (-1))) =
      rho 49845 * rho 49845 - rho 49844 * rho 49844 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5469
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX26 rho, seg52Out0AccY26 rho⟩ ⟨rho 49844, rho 49845⟩
    ⟨rho 49850, rho 49851⟩ ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ ⟨rho 49857, rho 49858⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5470 rho ∧ Seg52.relationRow5471 rho ∧ Seg52.relationRow5472 rho ∧ Seg52.relationRow5473 rho ∧ Seg52.relationRow5474 rho ∧ Seg52.relationRow5475 rho ∧ Seg52.relationRow5476 rho ∧ Seg52.relationRow5477 rho ∧ Seg52.relationRow5478 rho ∧ Seg52.relationRow5479 rho ∧ Seg52.relationRow5480 rho ∧ Seg52.relationRow5481 rho ∧ Seg52.relationRow5482 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482⟩

theorem seg52Out0_rung27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49413 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49857, rho 49858⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ ⟨rho 49857, rho 49858⟩
        ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ ⟨rho 49870, rho 49871⟩ := by
  obtain ⟨r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482⟩ := seg52Out0_rows27 rho h
  unfold Seg52.relationRow5470 at r5470

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5470

  unfold Seg52.relationRow5471 at r5471

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5471

  unfold Seg52.relationRow5472 at r5472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5472

  unfold Seg52.relationRow5473 at r5473

  unfold Seg52.relationRow5474 at r5474

  unfold Seg52.relationRow5475 at r5475

  unfold Seg52.relationRow5476 at r5476

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5476

  unfold Seg52.relationRow5477 at r5477

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5477

  unfold Seg52.relationRow5478 at r5478

  unfold Seg52.relationRow5479 at r5479

  unfold Seg52.relationRow5480 at r5480

  unfold Seg52.relationRow5481 at r5481

  unfold Seg52.relationRow5482 at r5482

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX28 rho = seg52Out0AccX27 rho + rho 49865 := by
    unfold seg52Out0AccX28 seg52Out0AccX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 27]

    ring

  have hnexty : seg52Out0AccY28 rho = seg52Out0AccY27 rho + rho 49866 := by
    unfold seg52Out0AccY28 seg52Out0AccY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 27]

    ring

  have ha0 : (rho 49857 + rho 49858) * (seg52Out0AccX27 rho + seg52Out0AccY27 rho) = rho 49859 := by
    unfold seg52Out0AccX27 seg52Out0AccY27
    linear_combination r5470
  have ha1 : rho 49858 * seg52Out0AccX27 rho = rho 49860 := by
    unfold seg52Out0AccX27
    linear_combination r5471
  have ha2 : rho 49857 * seg52Out0AccY27 rho = rho 49861 := by
    unfold seg52Out0AccY27
    linear_combination r5472
  have ha3 : 3021 * rho 49860 * rho 49861 = rho 49862 := by
    linear_combination r5473
  have ha4 : rho 49863 * (1 + rho 49862) = rho 49860 + rho 49861 := by
    linear_combination r5474
  have ha5 : rho 49864 * (1 - rho 49862) = rho 49859 - rho 49860 - rho 49861 := by
    linear_combination r5475
  have haddx :
      rho 49863 * (1 + 3021 * (rho 49858 * seg52Out0AccX27 rho) * (rho 49857 * seg52Out0AccY27 rho)) =
        rho 49858 * seg52Out0AccX27 rho + rho 49857 * seg52Out0AccY27 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49864 * (1 - 3021 * (rho 49858 * seg52Out0AccX27 rho) * (rho 49857 * seg52Out0AccY27 rho)) =
        (-1) * (rho 49858 * seg52Out0AccX27 rho) - rho 49857 * seg52Out0AccY27 rho +
          (seg52Out0AccY27 rho - seg52Out0AccX27 rho * (-1)) * (rho 49857 + rho 49858) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49864 * (1 - rho 49862) = rho 49859 - rho 49860 - rho 49861 := ha5
      _ = (-1) * rho 49860 - rho 49861 + (seg52Out0AccY27 rho - seg52Out0AccX27 rho * (-1)) *
          (rho 49857 + rho 49858) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX28 rho = seg52Out0AccX27 rho - Bool.toZMod bit * (seg52Out0AccX27 rho - rho 49863) := by
    have hd : rho 49865 = Bool.toZMod bit * (rho 49863 - seg52Out0AccX27 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX27
      linear_combination -r5476
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY28 rho = seg52Out0AccY27 rho - Bool.toZMod bit * (seg52Out0AccY27 rho - rho 49864) := by
    have hd : rho 49866 = Bool.toZMod bit * (rho 49864 - seg52Out0AccY27 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY27
      linear_combination -r5477
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49857 * rho 49858 = rho 49867 := by linear_combination r5478
  have hd1 : rho 49857 * rho 49857 = rho 49868 := by linear_combination r5479
  have hd2 : rho 49858 * rho 49858 = rho 49869 := by linear_combination r5480
  have hd3 : rho 49870 * (rho 49858 * rho 49858 + rho 49857 * rho 49857 * (-1)) =
      2 * (rho 49857 * rho 49858) := by
    rw [hd0, hd1, hd2]
    linear_combination r5481
  have hd4 : rho 49871 * (2 - (rho 49858 * rho 49858 + rho 49857 * rho 49857 * (-1))) =
      rho 49858 * rho 49858 - rho 49857 * rho 49857 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5482
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX27 rho, seg52Out0AccY27 rho⟩ ⟨rho 49857, rho 49858⟩
    ⟨rho 49863, rho 49864⟩ ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ ⟨rho 49870, rho 49871⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5483 rho ∧ Seg52.relationRow5484 rho ∧ Seg52.relationRow5485 rho ∧ Seg52.relationRow5486 rho ∧ Seg52.relationRow5487 rho ∧ Seg52.relationRow5488 rho ∧ Seg52.relationRow5489 rho ∧ Seg52.relationRow5490 rho ∧ Seg52.relationRow5491 rho ∧ Seg52.relationRow5492 rho ∧ Seg52.relationRow5493 rho ∧ Seg52.relationRow5494 rho ∧ Seg52.relationRow5495 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492, r5493, r5494, r5495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492, r5493, r5494, r5495⟩

theorem seg52Out0_rung28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49414 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49870, rho 49871⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ ⟨rho 49870, rho 49871⟩
        ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ ⟨rho 49883, rho 49884⟩ := by
  obtain ⟨r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492, r5493, r5494, r5495⟩ := seg52Out0_rows28 rho h
  unfold Seg52.relationRow5483 at r5483

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5483

  unfold Seg52.relationRow5484 at r5484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5484

  unfold Seg52.relationRow5485 at r5485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5485

  unfold Seg52.relationRow5486 at r5486

  unfold Seg52.relationRow5487 at r5487

  unfold Seg52.relationRow5488 at r5488

  unfold Seg52.relationRow5489 at r5489

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5489

  unfold Seg52.relationRow5490 at r5490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5490

  unfold Seg52.relationRow5491 at r5491

  unfold Seg52.relationRow5492 at r5492

  unfold Seg52.relationRow5493 at r5493

  unfold Seg52.relationRow5494 at r5494

  unfold Seg52.relationRow5495 at r5495

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX29 rho = seg52Out0AccX28 rho + rho 49878 := by
    unfold seg52Out0AccX29 seg52Out0AccX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 28]

    ring

  have hnexty : seg52Out0AccY29 rho = seg52Out0AccY28 rho + rho 49879 := by
    unfold seg52Out0AccY29 seg52Out0AccY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 28]

    ring

  have ha0 : (rho 49870 + rho 49871) * (seg52Out0AccX28 rho + seg52Out0AccY28 rho) = rho 49872 := by
    unfold seg52Out0AccX28 seg52Out0AccY28
    linear_combination r5483
  have ha1 : rho 49871 * seg52Out0AccX28 rho = rho 49873 := by
    unfold seg52Out0AccX28
    linear_combination r5484
  have ha2 : rho 49870 * seg52Out0AccY28 rho = rho 49874 := by
    unfold seg52Out0AccY28
    linear_combination r5485
  have ha3 : 3021 * rho 49873 * rho 49874 = rho 49875 := by
    linear_combination r5486
  have ha4 : rho 49876 * (1 + rho 49875) = rho 49873 + rho 49874 := by
    linear_combination r5487
  have ha5 : rho 49877 * (1 - rho 49875) = rho 49872 - rho 49873 - rho 49874 := by
    linear_combination r5488
  have haddx :
      rho 49876 * (1 + 3021 * (rho 49871 * seg52Out0AccX28 rho) * (rho 49870 * seg52Out0AccY28 rho)) =
        rho 49871 * seg52Out0AccX28 rho + rho 49870 * seg52Out0AccY28 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49877 * (1 - 3021 * (rho 49871 * seg52Out0AccX28 rho) * (rho 49870 * seg52Out0AccY28 rho)) =
        (-1) * (rho 49871 * seg52Out0AccX28 rho) - rho 49870 * seg52Out0AccY28 rho +
          (seg52Out0AccY28 rho - seg52Out0AccX28 rho * (-1)) * (rho 49870 + rho 49871) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49877 * (1 - rho 49875) = rho 49872 - rho 49873 - rho 49874 := ha5
      _ = (-1) * rho 49873 - rho 49874 + (seg52Out0AccY28 rho - seg52Out0AccX28 rho * (-1)) *
          (rho 49870 + rho 49871) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX29 rho = seg52Out0AccX28 rho - Bool.toZMod bit * (seg52Out0AccX28 rho - rho 49876) := by
    have hd : rho 49878 = Bool.toZMod bit * (rho 49876 - seg52Out0AccX28 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX28
      linear_combination -r5489
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY29 rho = seg52Out0AccY28 rho - Bool.toZMod bit * (seg52Out0AccY28 rho - rho 49877) := by
    have hd : rho 49879 = Bool.toZMod bit * (rho 49877 - seg52Out0AccY28 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY28
      linear_combination -r5490
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49870 * rho 49871 = rho 49880 := by linear_combination r5491
  have hd1 : rho 49870 * rho 49870 = rho 49881 := by linear_combination r5492
  have hd2 : rho 49871 * rho 49871 = rho 49882 := by linear_combination r5493
  have hd3 : rho 49883 * (rho 49871 * rho 49871 + rho 49870 * rho 49870 * (-1)) =
      2 * (rho 49870 * rho 49871) := by
    rw [hd0, hd1, hd2]
    linear_combination r5494
  have hd4 : rho 49884 * (2 - (rho 49871 * rho 49871 + rho 49870 * rho 49870 * (-1))) =
      rho 49871 * rho 49871 - rho 49870 * rho 49870 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5495
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX28 rho, seg52Out0AccY28 rho⟩ ⟨rho 49870, rho 49871⟩
    ⟨rho 49876, rho 49877⟩ ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ ⟨rho 49883, rho 49884⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5496 rho ∧ Seg52.relationRow5497 rho ∧ Seg52.relationRow5498 rho ∧ Seg52.relationRow5499 rho ∧ Seg52.relationRow5500 rho ∧ Seg52.relationRow5501 rho ∧ Seg52.relationRow5502 rho ∧ Seg52.relationRow5503 rho ∧ Seg52.relationRow5504 rho ∧ Seg52.relationRow5505 rho ∧ Seg52.relationRow5506 rho ∧ Seg52.relationRow5507 rho ∧ Seg52.relationRow5508 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505, r5506, r5507, r5508, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505, r5506, r5507, r5508⟩

theorem seg52Out0_rung29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49415 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49883, rho 49884⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ ⟨rho 49883, rho 49884⟩
        ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ ⟨rho 49896, rho 49897⟩ := by
  obtain ⟨r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505, r5506, r5507, r5508⟩ := seg52Out0_rows29 rho h
  unfold Seg52.relationRow5496 at r5496

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5496

  unfold Seg52.relationRow5497 at r5497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5497

  unfold Seg52.relationRow5498 at r5498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5498

  unfold Seg52.relationRow5499 at r5499

  unfold Seg52.relationRow5500 at r5500

  unfold Seg52.relationRow5501 at r5501

  unfold Seg52.relationRow5502 at r5502

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5502

  unfold Seg52.relationRow5503 at r5503

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5503

  unfold Seg52.relationRow5504 at r5504

  unfold Seg52.relationRow5505 at r5505

  unfold Seg52.relationRow5506 at r5506

  unfold Seg52.relationRow5507 at r5507

  unfold Seg52.relationRow5508 at r5508

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX30 rho = seg52Out0AccX29 rho + rho 49891 := by
    unfold seg52Out0AccX30 seg52Out0AccX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 29]

    ring

  have hnexty : seg52Out0AccY30 rho = seg52Out0AccY29 rho + rho 49892 := by
    unfold seg52Out0AccY30 seg52Out0AccY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 29]

    ring

  have ha0 : (rho 49883 + rho 49884) * (seg52Out0AccX29 rho + seg52Out0AccY29 rho) = rho 49885 := by
    unfold seg52Out0AccX29 seg52Out0AccY29
    linear_combination r5496
  have ha1 : rho 49884 * seg52Out0AccX29 rho = rho 49886 := by
    unfold seg52Out0AccX29
    linear_combination r5497
  have ha2 : rho 49883 * seg52Out0AccY29 rho = rho 49887 := by
    unfold seg52Out0AccY29
    linear_combination r5498
  have ha3 : 3021 * rho 49886 * rho 49887 = rho 49888 := by
    linear_combination r5499
  have ha4 : rho 49889 * (1 + rho 49888) = rho 49886 + rho 49887 := by
    linear_combination r5500
  have ha5 : rho 49890 * (1 - rho 49888) = rho 49885 - rho 49886 - rho 49887 := by
    linear_combination r5501
  have haddx :
      rho 49889 * (1 + 3021 * (rho 49884 * seg52Out0AccX29 rho) * (rho 49883 * seg52Out0AccY29 rho)) =
        rho 49884 * seg52Out0AccX29 rho + rho 49883 * seg52Out0AccY29 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49890 * (1 - 3021 * (rho 49884 * seg52Out0AccX29 rho) * (rho 49883 * seg52Out0AccY29 rho)) =
        (-1) * (rho 49884 * seg52Out0AccX29 rho) - rho 49883 * seg52Out0AccY29 rho +
          (seg52Out0AccY29 rho - seg52Out0AccX29 rho * (-1)) * (rho 49883 + rho 49884) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49890 * (1 - rho 49888) = rho 49885 - rho 49886 - rho 49887 := ha5
      _ = (-1) * rho 49886 - rho 49887 + (seg52Out0AccY29 rho - seg52Out0AccX29 rho * (-1)) *
          (rho 49883 + rho 49884) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX30 rho = seg52Out0AccX29 rho - Bool.toZMod bit * (seg52Out0AccX29 rho - rho 49889) := by
    have hd : rho 49891 = Bool.toZMod bit * (rho 49889 - seg52Out0AccX29 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX29
      linear_combination -r5502
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY30 rho = seg52Out0AccY29 rho - Bool.toZMod bit * (seg52Out0AccY29 rho - rho 49890) := by
    have hd : rho 49892 = Bool.toZMod bit * (rho 49890 - seg52Out0AccY29 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY29
      linear_combination -r5503
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49883 * rho 49884 = rho 49893 := by linear_combination r5504
  have hd1 : rho 49883 * rho 49883 = rho 49894 := by linear_combination r5505
  have hd2 : rho 49884 * rho 49884 = rho 49895 := by linear_combination r5506
  have hd3 : rho 49896 * (rho 49884 * rho 49884 + rho 49883 * rho 49883 * (-1)) =
      2 * (rho 49883 * rho 49884) := by
    rw [hd0, hd1, hd2]
    linear_combination r5507
  have hd4 : rho 49897 * (2 - (rho 49884 * rho 49884 + rho 49883 * rho 49883 * (-1))) =
      rho 49884 * rho 49884 - rho 49883 * rho 49883 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5508
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX29 rho, seg52Out0AccY29 rho⟩ ⟨rho 49883, rho 49884⟩
    ⟨rho 49889, rho 49890⟩ ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ ⟨rho 49896, rho 49897⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5509 rho ∧ Seg52.relationRow5510 rho ∧ Seg52.relationRow5511 rho ∧ Seg52.relationRow5512 rho ∧ Seg52.relationRow5513 rho ∧ Seg52.relationRow5514 rho ∧ Seg52.relationRow5515 rho ∧ Seg52.relationRow5516 rho ∧ Seg52.relationRow5517 rho ∧ Seg52.relationRow5518 rho ∧ Seg52.relationRow5519 rho ∧ Seg52.relationRow5520 rho ∧ Seg52.relationRow5521 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, r5519⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨r5520, r5521, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, r5519, r5520, r5521⟩

theorem seg52Out0_rung30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49416 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49896, rho 49897⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ ⟨rho 49896, rho 49897⟩
        ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ ⟨rho 49909, rho 49910⟩ := by
  obtain ⟨r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, r5519, r5520, r5521⟩ := seg52Out0_rows30 rho h
  unfold Seg52.relationRow5509 at r5509

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5509

  unfold Seg52.relationRow5510 at r5510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5510

  unfold Seg52.relationRow5511 at r5511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5511

  unfold Seg52.relationRow5512 at r5512

  unfold Seg52.relationRow5513 at r5513

  unfold Seg52.relationRow5514 at r5514

  unfold Seg52.relationRow5515 at r5515

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5515

  unfold Seg52.relationRow5516 at r5516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5516

  unfold Seg52.relationRow5517 at r5517

  unfold Seg52.relationRow5518 at r5518

  unfold Seg52.relationRow5519 at r5519

  unfold Seg52.relationRow5520 at r5520

  unfold Seg52.relationRow5521 at r5521

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX31 rho = seg52Out0AccX30 rho + rho 49904 := by
    unfold seg52Out0AccX31 seg52Out0AccX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 30]

    ring

  have hnexty : seg52Out0AccY31 rho = seg52Out0AccY30 rho + rho 49905 := by
    unfold seg52Out0AccY31 seg52Out0AccY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 30]

    ring

  have ha0 : (rho 49896 + rho 49897) * (seg52Out0AccX30 rho + seg52Out0AccY30 rho) = rho 49898 := by
    unfold seg52Out0AccX30 seg52Out0AccY30
    linear_combination r5509
  have ha1 : rho 49897 * seg52Out0AccX30 rho = rho 49899 := by
    unfold seg52Out0AccX30
    linear_combination r5510
  have ha2 : rho 49896 * seg52Out0AccY30 rho = rho 49900 := by
    unfold seg52Out0AccY30
    linear_combination r5511
  have ha3 : 3021 * rho 49899 * rho 49900 = rho 49901 := by
    linear_combination r5512
  have ha4 : rho 49902 * (1 + rho 49901) = rho 49899 + rho 49900 := by
    linear_combination r5513
  have ha5 : rho 49903 * (1 - rho 49901) = rho 49898 - rho 49899 - rho 49900 := by
    linear_combination r5514
  have haddx :
      rho 49902 * (1 + 3021 * (rho 49897 * seg52Out0AccX30 rho) * (rho 49896 * seg52Out0AccY30 rho)) =
        rho 49897 * seg52Out0AccX30 rho + rho 49896 * seg52Out0AccY30 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49903 * (1 - 3021 * (rho 49897 * seg52Out0AccX30 rho) * (rho 49896 * seg52Out0AccY30 rho)) =
        (-1) * (rho 49897 * seg52Out0AccX30 rho) - rho 49896 * seg52Out0AccY30 rho +
          (seg52Out0AccY30 rho - seg52Out0AccX30 rho * (-1)) * (rho 49896 + rho 49897) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49903 * (1 - rho 49901) = rho 49898 - rho 49899 - rho 49900 := ha5
      _ = (-1) * rho 49899 - rho 49900 + (seg52Out0AccY30 rho - seg52Out0AccX30 rho * (-1)) *
          (rho 49896 + rho 49897) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX31 rho = seg52Out0AccX30 rho - Bool.toZMod bit * (seg52Out0AccX30 rho - rho 49902) := by
    have hd : rho 49904 = Bool.toZMod bit * (rho 49902 - seg52Out0AccX30 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX30
      linear_combination -r5515
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY31 rho = seg52Out0AccY30 rho - Bool.toZMod bit * (seg52Out0AccY30 rho - rho 49903) := by
    have hd : rho 49905 = Bool.toZMod bit * (rho 49903 - seg52Out0AccY30 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY30
      linear_combination -r5516
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49896 * rho 49897 = rho 49906 := by linear_combination r5517
  have hd1 : rho 49896 * rho 49896 = rho 49907 := by linear_combination r5518
  have hd2 : rho 49897 * rho 49897 = rho 49908 := by linear_combination r5519
  have hd3 : rho 49909 * (rho 49897 * rho 49897 + rho 49896 * rho 49896 * (-1)) =
      2 * (rho 49896 * rho 49897) := by
    rw [hd0, hd1, hd2]
    linear_combination r5520
  have hd4 : rho 49910 * (2 - (rho 49897 * rho 49897 + rho 49896 * rho 49896 * (-1))) =
      rho 49897 * rho 49897 - rho 49896 * rho 49896 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5521
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX30 rho, seg52Out0AccY30 rho⟩ ⟨rho 49896, rho 49897⟩
    ⟨rho 49902, rho 49903⟩ ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ ⟨rho 49909, rho 49910⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5522 rho ∧ Seg52.relationRow5523 rho ∧ Seg52.relationRow5524 rho ∧ Seg52.relationRow5525 rho ∧ Seg52.relationRow5526 rho ∧ Seg52.relationRow5527 rho ∧ Seg52.relationRow5528 rho ∧ Seg52.relationRow5529 rho ∧ Seg52.relationRow5530 rho ∧ Seg52.relationRow5531 rho ∧ Seg52.relationRow5532 rho ∧ Seg52.relationRow5533 rho ∧ Seg52.relationRow5534 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531, r5532, r5533, r5534, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531, r5532, r5533, r5534⟩

theorem seg52Out0_rung31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49417 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49909, rho 49910⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ ⟨rho 49909, rho 49910⟩
        ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ ⟨rho 49922, rho 49923⟩ := by
  obtain ⟨r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531, r5532, r5533, r5534⟩ := seg52Out0_rows31 rho h
  unfold Seg52.relationRow5522 at r5522

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5522

  unfold Seg52.relationRow5523 at r5523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5523

  unfold Seg52.relationRow5524 at r5524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5524

  unfold Seg52.relationRow5525 at r5525

  unfold Seg52.relationRow5526 at r5526

  unfold Seg52.relationRow5527 at r5527

  unfold Seg52.relationRow5528 at r5528

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5528

  unfold Seg52.relationRow5529 at r5529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5529

  unfold Seg52.relationRow5530 at r5530

  unfold Seg52.relationRow5531 at r5531

  unfold Seg52.relationRow5532 at r5532

  unfold Seg52.relationRow5533 at r5533

  unfold Seg52.relationRow5534 at r5534

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX32 rho = seg52Out0AccX31 rho + rho 49917 := by
    unfold seg52Out0AccX32 seg52Out0AccX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 31]

    ring

  have hnexty : seg52Out0AccY32 rho = seg52Out0AccY31 rho + rho 49918 := by
    unfold seg52Out0AccY32 seg52Out0AccY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 31]

    ring

  have ha0 : (rho 49909 + rho 49910) * (seg52Out0AccX31 rho + seg52Out0AccY31 rho) = rho 49911 := by
    unfold seg52Out0AccX31 seg52Out0AccY31
    linear_combination r5522
  have ha1 : rho 49910 * seg52Out0AccX31 rho = rho 49912 := by
    unfold seg52Out0AccX31
    linear_combination r5523
  have ha2 : rho 49909 * seg52Out0AccY31 rho = rho 49913 := by
    unfold seg52Out0AccY31
    linear_combination r5524
  have ha3 : 3021 * rho 49912 * rho 49913 = rho 49914 := by
    linear_combination r5525
  have ha4 : rho 49915 * (1 + rho 49914) = rho 49912 + rho 49913 := by
    linear_combination r5526
  have ha5 : rho 49916 * (1 - rho 49914) = rho 49911 - rho 49912 - rho 49913 := by
    linear_combination r5527
  have haddx :
      rho 49915 * (1 + 3021 * (rho 49910 * seg52Out0AccX31 rho) * (rho 49909 * seg52Out0AccY31 rho)) =
        rho 49910 * seg52Out0AccX31 rho + rho 49909 * seg52Out0AccY31 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49916 * (1 - 3021 * (rho 49910 * seg52Out0AccX31 rho) * (rho 49909 * seg52Out0AccY31 rho)) =
        (-1) * (rho 49910 * seg52Out0AccX31 rho) - rho 49909 * seg52Out0AccY31 rho +
          (seg52Out0AccY31 rho - seg52Out0AccX31 rho * (-1)) * (rho 49909 + rho 49910) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49916 * (1 - rho 49914) = rho 49911 - rho 49912 - rho 49913 := ha5
      _ = (-1) * rho 49912 - rho 49913 + (seg52Out0AccY31 rho - seg52Out0AccX31 rho * (-1)) *
          (rho 49909 + rho 49910) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX32 rho = seg52Out0AccX31 rho - Bool.toZMod bit * (seg52Out0AccX31 rho - rho 49915) := by
    have hd : rho 49917 = Bool.toZMod bit * (rho 49915 - seg52Out0AccX31 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX31
      linear_combination -r5528
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY32 rho = seg52Out0AccY31 rho - Bool.toZMod bit * (seg52Out0AccY31 rho - rho 49916) := by
    have hd : rho 49918 = Bool.toZMod bit * (rho 49916 - seg52Out0AccY31 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY31
      linear_combination -r5529
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49909 * rho 49910 = rho 49919 := by linear_combination r5530
  have hd1 : rho 49909 * rho 49909 = rho 49920 := by linear_combination r5531
  have hd2 : rho 49910 * rho 49910 = rho 49921 := by linear_combination r5532
  have hd3 : rho 49922 * (rho 49910 * rho 49910 + rho 49909 * rho 49909 * (-1)) =
      2 * (rho 49909 * rho 49910) := by
    rw [hd0, hd1, hd2]
    linear_combination r5533
  have hd4 : rho 49923 * (2 - (rho 49910 * rho 49910 + rho 49909 * rho 49909 * (-1))) =
      rho 49910 * rho 49910 - rho 49909 * rho 49909 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5534
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX31 rho, seg52Out0AccY31 rho⟩ ⟨rho 49909, rho 49910⟩
    ⟨rho 49915, rho 49916⟩ ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ ⟨rho 49922, rho 49923⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5535 rho ∧ Seg52.relationRow5536 rho ∧ Seg52.relationRow5537 rho ∧ Seg52.relationRow5538 rho ∧ Seg52.relationRow5539 rho ∧ Seg52.relationRow5540 rho ∧ Seg52.relationRow5541 rho ∧ Seg52.relationRow5542 rho ∧ Seg52.relationRow5543 rho ∧ Seg52.relationRow5544 rho ∧ Seg52.relationRow5545 rho ∧ Seg52.relationRow5546 rho ∧ Seg52.relationRow5547 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, r5545, r5546, r5547, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, r5545, r5546, r5547⟩

theorem seg52Out0_rung32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49418 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49922, rho 49923⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ ⟨rho 49922, rho 49923⟩
        ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ ⟨rho 49935, rho 49936⟩ := by
  obtain ⟨r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, r5545, r5546, r5547⟩ := seg52Out0_rows32 rho h
  unfold Seg52.relationRow5535 at r5535

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5535

  unfold Seg52.relationRow5536 at r5536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5536

  unfold Seg52.relationRow5537 at r5537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5537

  unfold Seg52.relationRow5538 at r5538

  unfold Seg52.relationRow5539 at r5539

  unfold Seg52.relationRow5540 at r5540

  unfold Seg52.relationRow5541 at r5541

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5541

  unfold Seg52.relationRow5542 at r5542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5542

  unfold Seg52.relationRow5543 at r5543

  unfold Seg52.relationRow5544 at r5544

  unfold Seg52.relationRow5545 at r5545

  unfold Seg52.relationRow5546 at r5546

  unfold Seg52.relationRow5547 at r5547

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX33 rho = seg52Out0AccX32 rho + rho 49930 := by
    unfold seg52Out0AccX33 seg52Out0AccX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 32]

    ring

  have hnexty : seg52Out0AccY33 rho = seg52Out0AccY32 rho + rho 49931 := by
    unfold seg52Out0AccY33 seg52Out0AccY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 32]

    ring

  have ha0 : (rho 49922 + rho 49923) * (seg52Out0AccX32 rho + seg52Out0AccY32 rho) = rho 49924 := by
    unfold seg52Out0AccX32 seg52Out0AccY32
    linear_combination r5535
  have ha1 : rho 49923 * seg52Out0AccX32 rho = rho 49925 := by
    unfold seg52Out0AccX32
    linear_combination r5536
  have ha2 : rho 49922 * seg52Out0AccY32 rho = rho 49926 := by
    unfold seg52Out0AccY32
    linear_combination r5537
  have ha3 : 3021 * rho 49925 * rho 49926 = rho 49927 := by
    linear_combination r5538
  have ha4 : rho 49928 * (1 + rho 49927) = rho 49925 + rho 49926 := by
    linear_combination r5539
  have ha5 : rho 49929 * (1 - rho 49927) = rho 49924 - rho 49925 - rho 49926 := by
    linear_combination r5540
  have haddx :
      rho 49928 * (1 + 3021 * (rho 49923 * seg52Out0AccX32 rho) * (rho 49922 * seg52Out0AccY32 rho)) =
        rho 49923 * seg52Out0AccX32 rho + rho 49922 * seg52Out0AccY32 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49929 * (1 - 3021 * (rho 49923 * seg52Out0AccX32 rho) * (rho 49922 * seg52Out0AccY32 rho)) =
        (-1) * (rho 49923 * seg52Out0AccX32 rho) - rho 49922 * seg52Out0AccY32 rho +
          (seg52Out0AccY32 rho - seg52Out0AccX32 rho * (-1)) * (rho 49922 + rho 49923) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49929 * (1 - rho 49927) = rho 49924 - rho 49925 - rho 49926 := ha5
      _ = (-1) * rho 49925 - rho 49926 + (seg52Out0AccY32 rho - seg52Out0AccX32 rho * (-1)) *
          (rho 49922 + rho 49923) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX33 rho = seg52Out0AccX32 rho - Bool.toZMod bit * (seg52Out0AccX32 rho - rho 49928) := by
    have hd : rho 49930 = Bool.toZMod bit * (rho 49928 - seg52Out0AccX32 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX32
      linear_combination -r5541
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY33 rho = seg52Out0AccY32 rho - Bool.toZMod bit * (seg52Out0AccY32 rho - rho 49929) := by
    have hd : rho 49931 = Bool.toZMod bit * (rho 49929 - seg52Out0AccY32 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY32
      linear_combination -r5542
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49922 * rho 49923 = rho 49932 := by linear_combination r5543
  have hd1 : rho 49922 * rho 49922 = rho 49933 := by linear_combination r5544
  have hd2 : rho 49923 * rho 49923 = rho 49934 := by linear_combination r5545
  have hd3 : rho 49935 * (rho 49923 * rho 49923 + rho 49922 * rho 49922 * (-1)) =
      2 * (rho 49922 * rho 49923) := by
    rw [hd0, hd1, hd2]
    linear_combination r5546
  have hd4 : rho 49936 * (2 - (rho 49923 * rho 49923 + rho 49922 * rho 49922 * (-1))) =
      rho 49923 * rho 49923 - rho 49922 * rho 49922 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5547
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX32 rho, seg52Out0AccY32 rho⟩ ⟨rho 49922, rho 49923⟩
    ⟨rho 49928, rho 49929⟩ ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ ⟨rho 49935, rho 49936⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c2 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg52Out0_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg52Out0_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg52Out0_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg52Out0_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg52Out0_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg52Out0_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg52Out0_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg52Out0_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg52Out0_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg52Out0_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

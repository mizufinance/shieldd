import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows0 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4485 rho ∧ Seg48.relationRow4486 rho ∧ Seg48.relationRow4487 rho ∧ Seg48.relationRow4488 rho ∧ Seg48.relationRow4489 rho ∧ Seg48.relationRow4490 rho ∧ Seg48.relationRow4491 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, r4485, r4486, r4487, r4488, r4489, r4490, r4491, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4485, r4486, r4487, r4488, r4489, r4490, r4491⟩

theorem seg48Out0_rung0 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37114 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX0 rho, seg48Out0AccY0 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33530, rho 33532⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX0 rho, seg48Out0AccY0 rho⟩ ⟨rho 33530, rho 33532⟩
        ⟨seg48Out0AccX1 rho, seg48Out0AccY1 rho⟩ ⟨rho 37247, rho 37248⟩ := by
  obtain ⟨r4485, r4486, r4487, r4488, r4489, r4490, r4491⟩ := seg48Out0_rows0 rho h
  unfold Seg48.relationRow4485 at r4485

  unfold Seg48.relationRow4486 at r4486

  unfold Seg48.relationRow4487 at r4487

  unfold Seg48.relationRow4488 at r4488

  unfold Seg48.relationRow4489 at r4489

  unfold Seg48.relationRow4490 at r4490

  unfold Seg48.relationRow4491 at r4491

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX1 rho = seg48Out0AccX0 rho + rho 37242 := by
    unfold seg48Out0AccX1 seg48Out0AccX0
    ring

  have hnexty : seg48Out0AccY1 rho = seg48Out0AccY0 rho + rho 37243 := by
    unfold seg48Out0AccY1 seg48Out0AccY0
    ring

  have haddx :
      rho 33530 * (1 + 3021 * (rho 33532 * seg48Out0AccX0 rho) * (rho 33530 * seg48Out0AccY0 rho)) =
        rho 33532 * seg48Out0AccX0 rho + rho 33530 * seg48Out0AccY0 rho := by
    unfold seg48Out0AccX0 seg48Out0AccY0
    ring
  have haddy :
      rho 33532 * (1 - 3021 * (rho 33532 * seg48Out0AccX0 rho) * (rho 33530 * seg48Out0AccY0 rho)) =
        (-1) * (rho 33532 * seg48Out0AccX0 rho) - rho 33530 * seg48Out0AccY0 rho +
          (seg48Out0AccY0 rho - seg48Out0AccX0 rho * (-1)) * (rho 33530 + rho 33532) := by
    unfold seg48Out0AccX0 seg48Out0AccY0
    ring
  have hselx : seg48Out0AccX1 rho = seg48Out0AccX0 rho - Bool.toZMod bit * (seg48Out0AccX0 rho - rho 33530) := by
    have hd : rho 37242 = Bool.toZMod bit * (rho 33530 - seg48Out0AccX0 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX0
      linear_combination -r4485
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY1 rho = seg48Out0AccY0 rho - Bool.toZMod bit * (seg48Out0AccY0 rho - rho 33532) := by
    have hd : rho 37243 = Bool.toZMod bit * (rho 33532 - seg48Out0AccY0 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY0
      linear_combination -r4486
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33530 * rho 33532 = rho 37244 := by linear_combination r4487
  have hd1 : rho 33530 * rho 33530 = rho 37245 := by linear_combination r4488
  have hd2 : rho 33532 * rho 33532 = rho 37246 := by linear_combination r4489
  have hd3 : rho 37247 * (rho 33532 * rho 33532 + rho 33530 * rho 33530 * (-1)) =
      2 * (rho 33530 * rho 33532) := by
    rw [hd0, hd1, hd2]
    linear_combination r4490
  have hd4 : rho 37248 * (2 - (rho 33532 * rho 33532 + rho 33530 * rho 33530 * (-1))) =
      rho 33532 * rho 33532 - rho 33530 * rho 33530 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4491
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX0 rho, seg48Out0AccY0 rho⟩ ⟨rho 33530, rho 33532⟩
    ⟨rho 33530, rho 33532⟩ ⟨seg48Out0AccX1 rho, seg48Out0AccY1 rho⟩ ⟨rho 37247, rho 37248⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4492 rho ∧ Seg48.relationRow4493 rho ∧ Seg48.relationRow4494 rho ∧ Seg48.relationRow4495 rho ∧ Seg48.relationRow4496 rho ∧ Seg48.relationRow4497 rho ∧ Seg48.relationRow4498 rho ∧ Seg48.relationRow4499 rho ∧ Seg48.relationRow4500 rho ∧ Seg48.relationRow4501 rho ∧ Seg48.relationRow4502 rho ∧ Seg48.relationRow4503 rho ∧ Seg48.relationRow4504 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504⟩

theorem seg48Out0_rung1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37115 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX1 rho, seg48Out0AccY1 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37247, rho 37248⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX1 rho, seg48Out0AccY1 rho⟩ ⟨rho 37247, rho 37248⟩
        ⟨seg48Out0AccX2 rho, seg48Out0AccY2 rho⟩ ⟨rho 37260, rho 37261⟩ := by
  obtain ⟨r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504⟩ := seg48Out0_rows1 rho h
  unfold Seg48.relationRow4492 at r4492

  unfold Seg48.relationRow4493 at r4493

  unfold Seg48.relationRow4494 at r4494

  unfold Seg48.relationRow4495 at r4495

  unfold Seg48.relationRow4496 at r4496

  unfold Seg48.relationRow4497 at r4497

  unfold Seg48.relationRow4498 at r4498

  unfold Seg48.relationRow4499 at r4499

  unfold Seg48.relationRow4500 at r4500

  unfold Seg48.relationRow4501 at r4501

  unfold Seg48.relationRow4502 at r4502

  unfold Seg48.relationRow4503 at r4503

  unfold Seg48.relationRow4504 at r4504

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX2 rho = seg48Out0AccX1 rho + rho 37255 := by
    unfold seg48Out0AccX2 seg48Out0AccX1
    ring

  have hnexty : seg48Out0AccY2 rho = seg48Out0AccY1 rho + rho 37256 := by
    unfold seg48Out0AccY2 seg48Out0AccY1
    ring

  have ha0 : (rho 37247 + rho 37248) * (seg48Out0AccX1 rho + seg48Out0AccY1 rho) = rho 37249 := by
    unfold seg48Out0AccX1 seg48Out0AccY1
    linear_combination r4492
  have ha1 : rho 37248 * seg48Out0AccX1 rho = rho 37250 := by
    unfold seg48Out0AccX1
    linear_combination r4493
  have ha2 : rho 37247 * seg48Out0AccY1 rho = rho 37251 := by
    unfold seg48Out0AccY1
    linear_combination r4494
  have ha3 : 3021 * rho 37250 * rho 37251 = rho 37252 := by
    linear_combination r4495
  have ha4 : rho 37253 * (1 + rho 37252) = rho 37250 + rho 37251 := by
    linear_combination r4496
  have ha5 : rho 37254 * (1 - rho 37252) = rho 37249 - rho 37250 - rho 37251 := by
    linear_combination r4497
  have haddx :
      rho 37253 * (1 + 3021 * (rho 37248 * seg48Out0AccX1 rho) * (rho 37247 * seg48Out0AccY1 rho)) =
        rho 37248 * seg48Out0AccX1 rho + rho 37247 * seg48Out0AccY1 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37254 * (1 - 3021 * (rho 37248 * seg48Out0AccX1 rho) * (rho 37247 * seg48Out0AccY1 rho)) =
        (-1) * (rho 37248 * seg48Out0AccX1 rho) - rho 37247 * seg48Out0AccY1 rho +
          (seg48Out0AccY1 rho - seg48Out0AccX1 rho * (-1)) * (rho 37247 + rho 37248) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37254 * (1 - rho 37252) = rho 37249 - rho 37250 - rho 37251 := ha5
      _ = (-1) * rho 37250 - rho 37251 + (seg48Out0AccY1 rho - seg48Out0AccX1 rho * (-1)) *
          (rho 37247 + rho 37248) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX2 rho = seg48Out0AccX1 rho - Bool.toZMod bit * (seg48Out0AccX1 rho - rho 37253) := by
    have hd : rho 37255 = Bool.toZMod bit * (rho 37253 - seg48Out0AccX1 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX1
      linear_combination -r4498
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY2 rho = seg48Out0AccY1 rho - Bool.toZMod bit * (seg48Out0AccY1 rho - rho 37254) := by
    have hd : rho 37256 = Bool.toZMod bit * (rho 37254 - seg48Out0AccY1 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY1
      linear_combination -r4499
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37247 * rho 37248 = rho 37257 := by linear_combination r4500
  have hd1 : rho 37247 * rho 37247 = rho 37258 := by linear_combination r4501
  have hd2 : rho 37248 * rho 37248 = rho 37259 := by linear_combination r4502
  have hd3 : rho 37260 * (rho 37248 * rho 37248 + rho 37247 * rho 37247 * (-1)) =
      2 * (rho 37247 * rho 37248) := by
    rw [hd0, hd1, hd2]
    linear_combination r4503
  have hd4 : rho 37261 * (2 - (rho 37248 * rho 37248 + rho 37247 * rho 37247 * (-1))) =
      rho 37248 * rho 37248 - rho 37247 * rho 37247 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4504
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX1 rho, seg48Out0AccY1 rho⟩ ⟨rho 37247, rho 37248⟩
    ⟨rho 37253, rho 37254⟩ ⟨seg48Out0AccX2 rho, seg48Out0AccY2 rho⟩ ⟨rho 37260, rho 37261⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4505 rho ∧ Seg48.relationRow4506 rho ∧ Seg48.relationRow4507 rho ∧ Seg48.relationRow4508 rho ∧ Seg48.relationRow4509 rho ∧ Seg48.relationRow4510 rho ∧ Seg48.relationRow4511 rho ∧ Seg48.relationRow4512 rho ∧ Seg48.relationRow4513 rho ∧ Seg48.relationRow4514 rho ∧ Seg48.relationRow4515 rho ∧ Seg48.relationRow4516 rho ∧ Seg48.relationRow4517 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517⟩

theorem seg48Out0_rung2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37116 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX2 rho, seg48Out0AccY2 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37260, rho 37261⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX2 rho, seg48Out0AccY2 rho⟩ ⟨rho 37260, rho 37261⟩
        ⟨seg48Out0AccX3 rho, seg48Out0AccY3 rho⟩ ⟨rho 37273, rho 37274⟩ := by
  obtain ⟨r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517⟩ := seg48Out0_rows2 rho h
  unfold Seg48.relationRow4505 at r4505

  unfold Seg48.relationRow4506 at r4506

  unfold Seg48.relationRow4507 at r4507

  unfold Seg48.relationRow4508 at r4508

  unfold Seg48.relationRow4509 at r4509

  unfold Seg48.relationRow4510 at r4510

  unfold Seg48.relationRow4511 at r4511

  unfold Seg48.relationRow4512 at r4512

  unfold Seg48.relationRow4513 at r4513

  unfold Seg48.relationRow4514 at r4514

  unfold Seg48.relationRow4515 at r4515

  unfold Seg48.relationRow4516 at r4516

  unfold Seg48.relationRow4517 at r4517

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX3 rho = seg48Out0AccX2 rho + rho 37268 := by
    unfold seg48Out0AccX3 seg48Out0AccX2
    ring

  have hnexty : seg48Out0AccY3 rho = seg48Out0AccY2 rho + rho 37269 := by
    unfold seg48Out0AccY3 seg48Out0AccY2
    ring

  have ha0 : (rho 37260 + rho 37261) * (seg48Out0AccX2 rho + seg48Out0AccY2 rho) = rho 37262 := by
    unfold seg48Out0AccX2 seg48Out0AccY2
    linear_combination r4505
  have ha1 : rho 37261 * seg48Out0AccX2 rho = rho 37263 := by
    unfold seg48Out0AccX2
    linear_combination r4506
  have ha2 : rho 37260 * seg48Out0AccY2 rho = rho 37264 := by
    unfold seg48Out0AccY2
    linear_combination r4507
  have ha3 : 3021 * rho 37263 * rho 37264 = rho 37265 := by
    linear_combination r4508
  have ha4 : rho 37266 * (1 + rho 37265) = rho 37263 + rho 37264 := by
    linear_combination r4509
  have ha5 : rho 37267 * (1 - rho 37265) = rho 37262 - rho 37263 - rho 37264 := by
    linear_combination r4510
  have haddx :
      rho 37266 * (1 + 3021 * (rho 37261 * seg48Out0AccX2 rho) * (rho 37260 * seg48Out0AccY2 rho)) =
        rho 37261 * seg48Out0AccX2 rho + rho 37260 * seg48Out0AccY2 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37267 * (1 - 3021 * (rho 37261 * seg48Out0AccX2 rho) * (rho 37260 * seg48Out0AccY2 rho)) =
        (-1) * (rho 37261 * seg48Out0AccX2 rho) - rho 37260 * seg48Out0AccY2 rho +
          (seg48Out0AccY2 rho - seg48Out0AccX2 rho * (-1)) * (rho 37260 + rho 37261) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37267 * (1 - rho 37265) = rho 37262 - rho 37263 - rho 37264 := ha5
      _ = (-1) * rho 37263 - rho 37264 + (seg48Out0AccY2 rho - seg48Out0AccX2 rho * (-1)) *
          (rho 37260 + rho 37261) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX3 rho = seg48Out0AccX2 rho - Bool.toZMod bit * (seg48Out0AccX2 rho - rho 37266) := by
    have hd : rho 37268 = Bool.toZMod bit * (rho 37266 - seg48Out0AccX2 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX2
      linear_combination -r4511
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY3 rho = seg48Out0AccY2 rho - Bool.toZMod bit * (seg48Out0AccY2 rho - rho 37267) := by
    have hd : rho 37269 = Bool.toZMod bit * (rho 37267 - seg48Out0AccY2 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY2
      linear_combination -r4512
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37260 * rho 37261 = rho 37270 := by linear_combination r4513
  have hd1 : rho 37260 * rho 37260 = rho 37271 := by linear_combination r4514
  have hd2 : rho 37261 * rho 37261 = rho 37272 := by linear_combination r4515
  have hd3 : rho 37273 * (rho 37261 * rho 37261 + rho 37260 * rho 37260 * (-1)) =
      2 * (rho 37260 * rho 37261) := by
    rw [hd0, hd1, hd2]
    linear_combination r4516
  have hd4 : rho 37274 * (2 - (rho 37261 * rho 37261 + rho 37260 * rho 37260 * (-1))) =
      rho 37261 * rho 37261 - rho 37260 * rho 37260 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4517
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX2 rho, seg48Out0AccY2 rho⟩ ⟨rho 37260, rho 37261⟩
    ⟨rho 37266, rho 37267⟩ ⟨seg48Out0AccX3 rho, seg48Out0AccY3 rho⟩ ⟨rho 37273, rho 37274⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows3 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4518 rho ∧ Seg48.relationRow4519 rho ∧ Seg48.relationRow4520 rho ∧ Seg48.relationRow4521 rho ∧ Seg48.relationRow4522 rho ∧ Seg48.relationRow4523 rho ∧ Seg48.relationRow4524 rho ∧ Seg48.relationRow4525 rho ∧ Seg48.relationRow4526 rho ∧ Seg48.relationRow4527 rho ∧ Seg48.relationRow4528 rho ∧ Seg48.relationRow4529 rho ∧ Seg48.relationRow4530 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530⟩

theorem seg48Out0_rung3 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37117 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX3 rho, seg48Out0AccY3 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37273, rho 37274⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX3 rho, seg48Out0AccY3 rho⟩ ⟨rho 37273, rho 37274⟩
        ⟨seg48Out0AccX4 rho, seg48Out0AccY4 rho⟩ ⟨rho 37286, rho 37287⟩ := by
  obtain ⟨r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530⟩ := seg48Out0_rows3 rho h
  unfold Seg48.relationRow4518 at r4518

  unfold Seg48.relationRow4519 at r4519

  unfold Seg48.relationRow4520 at r4520

  unfold Seg48.relationRow4521 at r4521

  unfold Seg48.relationRow4522 at r4522

  unfold Seg48.relationRow4523 at r4523

  unfold Seg48.relationRow4524 at r4524

  unfold Seg48.relationRow4525 at r4525

  unfold Seg48.relationRow4526 at r4526

  unfold Seg48.relationRow4527 at r4527

  unfold Seg48.relationRow4528 at r4528

  unfold Seg48.relationRow4529 at r4529

  unfold Seg48.relationRow4530 at r4530

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX4 rho = seg48Out0AccX3 rho + rho 37281 := by
    unfold seg48Out0AccX4 seg48Out0AccX3
    ring

  have hnexty : seg48Out0AccY4 rho = seg48Out0AccY3 rho + rho 37282 := by
    unfold seg48Out0AccY4 seg48Out0AccY3
    ring

  have ha0 : (rho 37273 + rho 37274) * (seg48Out0AccX3 rho + seg48Out0AccY3 rho) = rho 37275 := by
    unfold seg48Out0AccX3 seg48Out0AccY3
    linear_combination r4518
  have ha1 : rho 37274 * seg48Out0AccX3 rho = rho 37276 := by
    unfold seg48Out0AccX3
    linear_combination r4519
  have ha2 : rho 37273 * seg48Out0AccY3 rho = rho 37277 := by
    unfold seg48Out0AccY3
    linear_combination r4520
  have ha3 : 3021 * rho 37276 * rho 37277 = rho 37278 := by
    linear_combination r4521
  have ha4 : rho 37279 * (1 + rho 37278) = rho 37276 + rho 37277 := by
    linear_combination r4522
  have ha5 : rho 37280 * (1 - rho 37278) = rho 37275 - rho 37276 - rho 37277 := by
    linear_combination r4523
  have haddx :
      rho 37279 * (1 + 3021 * (rho 37274 * seg48Out0AccX3 rho) * (rho 37273 * seg48Out0AccY3 rho)) =
        rho 37274 * seg48Out0AccX3 rho + rho 37273 * seg48Out0AccY3 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37280 * (1 - 3021 * (rho 37274 * seg48Out0AccX3 rho) * (rho 37273 * seg48Out0AccY3 rho)) =
        (-1) * (rho 37274 * seg48Out0AccX3 rho) - rho 37273 * seg48Out0AccY3 rho +
          (seg48Out0AccY3 rho - seg48Out0AccX3 rho * (-1)) * (rho 37273 + rho 37274) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37280 * (1 - rho 37278) = rho 37275 - rho 37276 - rho 37277 := ha5
      _ = (-1) * rho 37276 - rho 37277 + (seg48Out0AccY3 rho - seg48Out0AccX3 rho * (-1)) *
          (rho 37273 + rho 37274) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX4 rho = seg48Out0AccX3 rho - Bool.toZMod bit * (seg48Out0AccX3 rho - rho 37279) := by
    have hd : rho 37281 = Bool.toZMod bit * (rho 37279 - seg48Out0AccX3 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX3
      linear_combination -r4524
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY4 rho = seg48Out0AccY3 rho - Bool.toZMod bit * (seg48Out0AccY3 rho - rho 37280) := by
    have hd : rho 37282 = Bool.toZMod bit * (rho 37280 - seg48Out0AccY3 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY3
      linear_combination -r4525
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37273 * rho 37274 = rho 37283 := by linear_combination r4526
  have hd1 : rho 37273 * rho 37273 = rho 37284 := by linear_combination r4527
  have hd2 : rho 37274 * rho 37274 = rho 37285 := by linear_combination r4528
  have hd3 : rho 37286 * (rho 37274 * rho 37274 + rho 37273 * rho 37273 * (-1)) =
      2 * (rho 37273 * rho 37274) := by
    rw [hd0, hd1, hd2]
    linear_combination r4529
  have hd4 : rho 37287 * (2 - (rho 37274 * rho 37274 + rho 37273 * rho 37273 * (-1))) =
      rho 37274 * rho 37274 - rho 37273 * rho 37273 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4530
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX3 rho, seg48Out0AccY3 rho⟩ ⟨rho 37273, rho 37274⟩
    ⟨rho 37279, rho 37280⟩ ⟨seg48Out0AccX4 rho, seg48Out0AccY4 rho⟩ ⟨rho 37286, rho 37287⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows4 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4531 rho ∧ Seg48.relationRow4532 rho ∧ Seg48.relationRow4533 rho ∧ Seg48.relationRow4534 rho ∧ Seg48.relationRow4535 rho ∧ Seg48.relationRow4536 rho ∧ Seg48.relationRow4537 rho ∧ Seg48.relationRow4538 rho ∧ Seg48.relationRow4539 rho ∧ Seg48.relationRow4540 rho ∧ Seg48.relationRow4541 rho ∧ Seg48.relationRow4542 rho ∧ Seg48.relationRow4543 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543⟩

theorem seg48Out0_rung4 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37118 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX4 rho, seg48Out0AccY4 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37286, rho 37287⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX4 rho, seg48Out0AccY4 rho⟩ ⟨rho 37286, rho 37287⟩
        ⟨seg48Out0AccX5 rho, seg48Out0AccY5 rho⟩ ⟨rho 37299, rho 37300⟩ := by
  obtain ⟨r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543⟩ := seg48Out0_rows4 rho h
  unfold Seg48.relationRow4531 at r4531

  unfold Seg48.relationRow4532 at r4532

  unfold Seg48.relationRow4533 at r4533

  unfold Seg48.relationRow4534 at r4534

  unfold Seg48.relationRow4535 at r4535

  unfold Seg48.relationRow4536 at r4536

  unfold Seg48.relationRow4537 at r4537

  unfold Seg48.relationRow4538 at r4538

  unfold Seg48.relationRow4539 at r4539

  unfold Seg48.relationRow4540 at r4540

  unfold Seg48.relationRow4541 at r4541

  unfold Seg48.relationRow4542 at r4542

  unfold Seg48.relationRow4543 at r4543

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX5 rho = seg48Out0AccX4 rho + rho 37294 := by
    unfold seg48Out0AccX5 seg48Out0AccX4
    ring

  have hnexty : seg48Out0AccY5 rho = seg48Out0AccY4 rho + rho 37295 := by
    unfold seg48Out0AccY5 seg48Out0AccY4
    ring

  have ha0 : (rho 37286 + rho 37287) * (seg48Out0AccX4 rho + seg48Out0AccY4 rho) = rho 37288 := by
    unfold seg48Out0AccX4 seg48Out0AccY4
    linear_combination r4531
  have ha1 : rho 37287 * seg48Out0AccX4 rho = rho 37289 := by
    unfold seg48Out0AccX4
    linear_combination r4532
  have ha2 : rho 37286 * seg48Out0AccY4 rho = rho 37290 := by
    unfold seg48Out0AccY4
    linear_combination r4533
  have ha3 : 3021 * rho 37289 * rho 37290 = rho 37291 := by
    linear_combination r4534
  have ha4 : rho 37292 * (1 + rho 37291) = rho 37289 + rho 37290 := by
    linear_combination r4535
  have ha5 : rho 37293 * (1 - rho 37291) = rho 37288 - rho 37289 - rho 37290 := by
    linear_combination r4536
  have haddx :
      rho 37292 * (1 + 3021 * (rho 37287 * seg48Out0AccX4 rho) * (rho 37286 * seg48Out0AccY4 rho)) =
        rho 37287 * seg48Out0AccX4 rho + rho 37286 * seg48Out0AccY4 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37293 * (1 - 3021 * (rho 37287 * seg48Out0AccX4 rho) * (rho 37286 * seg48Out0AccY4 rho)) =
        (-1) * (rho 37287 * seg48Out0AccX4 rho) - rho 37286 * seg48Out0AccY4 rho +
          (seg48Out0AccY4 rho - seg48Out0AccX4 rho * (-1)) * (rho 37286 + rho 37287) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37293 * (1 - rho 37291) = rho 37288 - rho 37289 - rho 37290 := ha5
      _ = (-1) * rho 37289 - rho 37290 + (seg48Out0AccY4 rho - seg48Out0AccX4 rho * (-1)) *
          (rho 37286 + rho 37287) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX5 rho = seg48Out0AccX4 rho - Bool.toZMod bit * (seg48Out0AccX4 rho - rho 37292) := by
    have hd : rho 37294 = Bool.toZMod bit * (rho 37292 - seg48Out0AccX4 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX4
      linear_combination -r4537
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY5 rho = seg48Out0AccY4 rho - Bool.toZMod bit * (seg48Out0AccY4 rho - rho 37293) := by
    have hd : rho 37295 = Bool.toZMod bit * (rho 37293 - seg48Out0AccY4 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY4
      linear_combination -r4538
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37286 * rho 37287 = rho 37296 := by linear_combination r4539
  have hd1 : rho 37286 * rho 37286 = rho 37297 := by linear_combination r4540
  have hd2 : rho 37287 * rho 37287 = rho 37298 := by linear_combination r4541
  have hd3 : rho 37299 * (rho 37287 * rho 37287 + rho 37286 * rho 37286 * (-1)) =
      2 * (rho 37286 * rho 37287) := by
    rw [hd0, hd1, hd2]
    linear_combination r4542
  have hd4 : rho 37300 * (2 - (rho 37287 * rho 37287 + rho 37286 * rho 37286 * (-1))) =
      rho 37287 * rho 37287 - rho 37286 * rho 37286 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4543
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX4 rho, seg48Out0AccY4 rho⟩ ⟨rho 37286, rho 37287⟩
    ⟨rho 37292, rho 37293⟩ ⟨seg48Out0AccX5 rho, seg48Out0AccY5 rho⟩ ⟨rho 37299, rho 37300⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4544 rho ∧ Seg48.relationRow4545 rho ∧ Seg48.relationRow4546 rho ∧ Seg48.relationRow4547 rho ∧ Seg48.relationRow4548 rho ∧ Seg48.relationRow4549 rho ∧ Seg48.relationRow4550 rho ∧ Seg48.relationRow4551 rho ∧ Seg48.relationRow4552 rho ∧ Seg48.relationRow4553 rho ∧ Seg48.relationRow4554 rho ∧ Seg48.relationRow4555 rho ∧ Seg48.relationRow4556 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, _, _, _⟩

  exact ⟨r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556⟩

theorem seg48Out0_rung5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37119 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX5 rho, seg48Out0AccY5 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37299, rho 37300⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX5 rho, seg48Out0AccY5 rho⟩ ⟨rho 37299, rho 37300⟩
        ⟨seg48Out0AccX6 rho, seg48Out0AccY6 rho⟩ ⟨rho 37312, rho 37313⟩ := by
  obtain ⟨r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556⟩ := seg48Out0_rows5 rho h
  unfold Seg48.relationRow4544 at r4544

  unfold Seg48.relationRow4545 at r4545

  unfold Seg48.relationRow4546 at r4546

  unfold Seg48.relationRow4547 at r4547

  unfold Seg48.relationRow4548 at r4548

  unfold Seg48.relationRow4549 at r4549

  unfold Seg48.relationRow4550 at r4550

  unfold Seg48.relationRow4551 at r4551

  unfold Seg48.relationRow4552 at r4552

  unfold Seg48.relationRow4553 at r4553

  unfold Seg48.relationRow4554 at r4554

  unfold Seg48.relationRow4555 at r4555

  unfold Seg48.relationRow4556 at r4556

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX6 rho = seg48Out0AccX5 rho + rho 37307 := by
    unfold seg48Out0AccX6 seg48Out0AccX5
    ring

  have hnexty : seg48Out0AccY6 rho = seg48Out0AccY5 rho + rho 37308 := by
    unfold seg48Out0AccY6 seg48Out0AccY5
    ring

  have ha0 : (rho 37299 + rho 37300) * (seg48Out0AccX5 rho + seg48Out0AccY5 rho) = rho 37301 := by
    unfold seg48Out0AccX5 seg48Out0AccY5
    linear_combination r4544
  have ha1 : rho 37300 * seg48Out0AccX5 rho = rho 37302 := by
    unfold seg48Out0AccX5
    linear_combination r4545
  have ha2 : rho 37299 * seg48Out0AccY5 rho = rho 37303 := by
    unfold seg48Out0AccY5
    linear_combination r4546
  have ha3 : 3021 * rho 37302 * rho 37303 = rho 37304 := by
    linear_combination r4547
  have ha4 : rho 37305 * (1 + rho 37304) = rho 37302 + rho 37303 := by
    linear_combination r4548
  have ha5 : rho 37306 * (1 - rho 37304) = rho 37301 - rho 37302 - rho 37303 := by
    linear_combination r4549
  have haddx :
      rho 37305 * (1 + 3021 * (rho 37300 * seg48Out0AccX5 rho) * (rho 37299 * seg48Out0AccY5 rho)) =
        rho 37300 * seg48Out0AccX5 rho + rho 37299 * seg48Out0AccY5 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37306 * (1 - 3021 * (rho 37300 * seg48Out0AccX5 rho) * (rho 37299 * seg48Out0AccY5 rho)) =
        (-1) * (rho 37300 * seg48Out0AccX5 rho) - rho 37299 * seg48Out0AccY5 rho +
          (seg48Out0AccY5 rho - seg48Out0AccX5 rho * (-1)) * (rho 37299 + rho 37300) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37306 * (1 - rho 37304) = rho 37301 - rho 37302 - rho 37303 := ha5
      _ = (-1) * rho 37302 - rho 37303 + (seg48Out0AccY5 rho - seg48Out0AccX5 rho * (-1)) *
          (rho 37299 + rho 37300) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX6 rho = seg48Out0AccX5 rho - Bool.toZMod bit * (seg48Out0AccX5 rho - rho 37305) := by
    have hd : rho 37307 = Bool.toZMod bit * (rho 37305 - seg48Out0AccX5 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX5
      linear_combination -r4550
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY6 rho = seg48Out0AccY5 rho - Bool.toZMod bit * (seg48Out0AccY5 rho - rho 37306) := by
    have hd : rho 37308 = Bool.toZMod bit * (rho 37306 - seg48Out0AccY5 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY5
      linear_combination -r4551
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37299 * rho 37300 = rho 37309 := by linear_combination r4552
  have hd1 : rho 37299 * rho 37299 = rho 37310 := by linear_combination r4553
  have hd2 : rho 37300 * rho 37300 = rho 37311 := by linear_combination r4554
  have hd3 : rho 37312 * (rho 37300 * rho 37300 + rho 37299 * rho 37299 * (-1)) =
      2 * (rho 37299 * rho 37300) := by
    rw [hd0, hd1, hd2]
    linear_combination r4555
  have hd4 : rho 37313 * (2 - (rho 37300 * rho 37300 + rho 37299 * rho 37299 * (-1))) =
      rho 37300 * rho 37300 - rho 37299 * rho 37299 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4556
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX5 rho, seg48Out0AccY5 rho⟩ ⟨rho 37299, rho 37300⟩
    ⟨rho 37305, rho 37306⟩ ⟨seg48Out0AccX6 rho, seg48Out0AccY6 rho⟩ ⟨rho 37312, rho 37313⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4557 rho ∧ Seg48.relationRow4558 rho ∧ Seg48.relationRow4559 rho ∧ Seg48.relationRow4560 rho ∧ Seg48.relationRow4561 rho ∧ Seg48.relationRow4562 rho ∧ Seg48.relationRow4563 rho ∧ Seg48.relationRow4564 rho ∧ Seg48.relationRow4565 rho ∧ Seg48.relationRow4566 rho ∧ Seg48.relationRow4567 rho ∧ Seg48.relationRow4568 rho ∧ Seg48.relationRow4569 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4557, r4558, r4559⟩

  unfold Seg48.relationPart57 at p57

  rcases p57 with ⟨r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4557, r4558, r4559, r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569⟩

theorem seg48Out0_rung6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37120 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX6 rho, seg48Out0AccY6 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37312, rho 37313⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX6 rho, seg48Out0AccY6 rho⟩ ⟨rho 37312, rho 37313⟩
        ⟨seg48Out0AccX7 rho, seg48Out0AccY7 rho⟩ ⟨rho 37325, rho 37326⟩ := by
  obtain ⟨r4557, r4558, r4559, r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569⟩ := seg48Out0_rows6 rho h
  unfold Seg48.relationRow4557 at r4557

  unfold Seg48.relationRow4558 at r4558

  unfold Seg48.relationRow4559 at r4559

  unfold Seg48.relationRow4560 at r4560

  unfold Seg48.relationRow4561 at r4561

  unfold Seg48.relationRow4562 at r4562

  unfold Seg48.relationRow4563 at r4563

  unfold Seg48.relationRow4564 at r4564

  unfold Seg48.relationRow4565 at r4565

  unfold Seg48.relationRow4566 at r4566

  unfold Seg48.relationRow4567 at r4567

  unfold Seg48.relationRow4568 at r4568

  unfold Seg48.relationRow4569 at r4569

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX7 rho = seg48Out0AccX6 rho + rho 37320 := by
    unfold seg48Out0AccX7 seg48Out0AccX6
    ring

  have hnexty : seg48Out0AccY7 rho = seg48Out0AccY6 rho + rho 37321 := by
    unfold seg48Out0AccY7 seg48Out0AccY6
    ring

  have ha0 : (rho 37312 + rho 37313) * (seg48Out0AccX6 rho + seg48Out0AccY6 rho) = rho 37314 := by
    unfold seg48Out0AccX6 seg48Out0AccY6
    linear_combination r4557
  have ha1 : rho 37313 * seg48Out0AccX6 rho = rho 37315 := by
    unfold seg48Out0AccX6
    linear_combination r4558
  have ha2 : rho 37312 * seg48Out0AccY6 rho = rho 37316 := by
    unfold seg48Out0AccY6
    linear_combination r4559
  have ha3 : 3021 * rho 37315 * rho 37316 = rho 37317 := by
    linear_combination r4560
  have ha4 : rho 37318 * (1 + rho 37317) = rho 37315 + rho 37316 := by
    linear_combination r4561
  have ha5 : rho 37319 * (1 - rho 37317) = rho 37314 - rho 37315 - rho 37316 := by
    linear_combination r4562
  have haddx :
      rho 37318 * (1 + 3021 * (rho 37313 * seg48Out0AccX6 rho) * (rho 37312 * seg48Out0AccY6 rho)) =
        rho 37313 * seg48Out0AccX6 rho + rho 37312 * seg48Out0AccY6 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37319 * (1 - 3021 * (rho 37313 * seg48Out0AccX6 rho) * (rho 37312 * seg48Out0AccY6 rho)) =
        (-1) * (rho 37313 * seg48Out0AccX6 rho) - rho 37312 * seg48Out0AccY6 rho +
          (seg48Out0AccY6 rho - seg48Out0AccX6 rho * (-1)) * (rho 37312 + rho 37313) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37319 * (1 - rho 37317) = rho 37314 - rho 37315 - rho 37316 := ha5
      _ = (-1) * rho 37315 - rho 37316 + (seg48Out0AccY6 rho - seg48Out0AccX6 rho * (-1)) *
          (rho 37312 + rho 37313) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX7 rho = seg48Out0AccX6 rho - Bool.toZMod bit * (seg48Out0AccX6 rho - rho 37318) := by
    have hd : rho 37320 = Bool.toZMod bit * (rho 37318 - seg48Out0AccX6 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX6
      linear_combination -r4563
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY7 rho = seg48Out0AccY6 rho - Bool.toZMod bit * (seg48Out0AccY6 rho - rho 37319) := by
    have hd : rho 37321 = Bool.toZMod bit * (rho 37319 - seg48Out0AccY6 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY6
      linear_combination -r4564
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37312 * rho 37313 = rho 37322 := by linear_combination r4565
  have hd1 : rho 37312 * rho 37312 = rho 37323 := by linear_combination r4566
  have hd2 : rho 37313 * rho 37313 = rho 37324 := by linear_combination r4567
  have hd3 : rho 37325 * (rho 37313 * rho 37313 + rho 37312 * rho 37312 * (-1)) =
      2 * (rho 37312 * rho 37313) := by
    rw [hd0, hd1, hd2]
    linear_combination r4568
  have hd4 : rho 37326 * (2 - (rho 37313 * rho 37313 + rho 37312 * rho 37312 * (-1))) =
      rho 37313 * rho 37313 - rho 37312 * rho 37312 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4569
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX6 rho, seg48Out0AccY6 rho⟩ ⟨rho 37312, rho 37313⟩
    ⟨rho 37318, rho 37319⟩ ⟨seg48Out0AccX7 rho, seg48Out0AccY7 rho⟩ ⟨rho 37325, rho 37326⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4570 rho ∧ Seg48.relationRow4571 rho ∧ Seg48.relationRow4572 rho ∧ Seg48.relationRow4573 rho ∧ Seg48.relationRow4574 rho ∧ Seg48.relationRow4575 rho ∧ Seg48.relationRow4576 rho ∧ Seg48.relationRow4577 rho ∧ Seg48.relationRow4578 rho ∧ Seg48.relationRow4579 rho ∧ Seg48.relationRow4580 rho ∧ Seg48.relationRow4581 rho ∧ Seg48.relationRow4582 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582⟩

theorem seg48Out0_rung7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37121 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX7 rho, seg48Out0AccY7 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37325, rho 37326⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX7 rho, seg48Out0AccY7 rho⟩ ⟨rho 37325, rho 37326⟩
        ⟨seg48Out0AccX8 rho, seg48Out0AccY8 rho⟩ ⟨rho 37338, rho 37339⟩ := by
  obtain ⟨r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582⟩ := seg48Out0_rows7 rho h
  unfold Seg48.relationRow4570 at r4570

  unfold Seg48.relationRow4571 at r4571

  unfold Seg48.relationRow4572 at r4572

  unfold Seg48.relationRow4573 at r4573

  unfold Seg48.relationRow4574 at r4574

  unfold Seg48.relationRow4575 at r4575

  unfold Seg48.relationRow4576 at r4576

  unfold Seg48.relationRow4577 at r4577

  unfold Seg48.relationRow4578 at r4578

  unfold Seg48.relationRow4579 at r4579

  unfold Seg48.relationRow4580 at r4580

  unfold Seg48.relationRow4581 at r4581

  unfold Seg48.relationRow4582 at r4582

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX8 rho = seg48Out0AccX7 rho + rho 37333 := by
    unfold seg48Out0AccX8 seg48Out0AccX7
    ring

  have hnexty : seg48Out0AccY8 rho = seg48Out0AccY7 rho + rho 37334 := by
    unfold seg48Out0AccY8 seg48Out0AccY7
    ring

  have ha0 : (rho 37325 + rho 37326) * (seg48Out0AccX7 rho + seg48Out0AccY7 rho) = rho 37327 := by
    unfold seg48Out0AccX7 seg48Out0AccY7
    linear_combination r4570
  have ha1 : rho 37326 * seg48Out0AccX7 rho = rho 37328 := by
    unfold seg48Out0AccX7
    linear_combination r4571
  have ha2 : rho 37325 * seg48Out0AccY7 rho = rho 37329 := by
    unfold seg48Out0AccY7
    linear_combination r4572
  have ha3 : 3021 * rho 37328 * rho 37329 = rho 37330 := by
    linear_combination r4573
  have ha4 : rho 37331 * (1 + rho 37330) = rho 37328 + rho 37329 := by
    linear_combination r4574
  have ha5 : rho 37332 * (1 - rho 37330) = rho 37327 - rho 37328 - rho 37329 := by
    linear_combination r4575
  have haddx :
      rho 37331 * (1 + 3021 * (rho 37326 * seg48Out0AccX7 rho) * (rho 37325 * seg48Out0AccY7 rho)) =
        rho 37326 * seg48Out0AccX7 rho + rho 37325 * seg48Out0AccY7 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37332 * (1 - 3021 * (rho 37326 * seg48Out0AccX7 rho) * (rho 37325 * seg48Out0AccY7 rho)) =
        (-1) * (rho 37326 * seg48Out0AccX7 rho) - rho 37325 * seg48Out0AccY7 rho +
          (seg48Out0AccY7 rho - seg48Out0AccX7 rho * (-1)) * (rho 37325 + rho 37326) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37332 * (1 - rho 37330) = rho 37327 - rho 37328 - rho 37329 := ha5
      _ = (-1) * rho 37328 - rho 37329 + (seg48Out0AccY7 rho - seg48Out0AccX7 rho * (-1)) *
          (rho 37325 + rho 37326) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX8 rho = seg48Out0AccX7 rho - Bool.toZMod bit * (seg48Out0AccX7 rho - rho 37331) := by
    have hd : rho 37333 = Bool.toZMod bit * (rho 37331 - seg48Out0AccX7 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX7
      linear_combination -r4576
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY8 rho = seg48Out0AccY7 rho - Bool.toZMod bit * (seg48Out0AccY7 rho - rho 37332) := by
    have hd : rho 37334 = Bool.toZMod bit * (rho 37332 - seg48Out0AccY7 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY7
      linear_combination -r4577
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37325 * rho 37326 = rho 37335 := by linear_combination r4578
  have hd1 : rho 37325 * rho 37325 = rho 37336 := by linear_combination r4579
  have hd2 : rho 37326 * rho 37326 = rho 37337 := by linear_combination r4580
  have hd3 : rho 37338 * (rho 37326 * rho 37326 + rho 37325 * rho 37325 * (-1)) =
      2 * (rho 37325 * rho 37326) := by
    rw [hd0, hd1, hd2]
    linear_combination r4581
  have hd4 : rho 37339 * (2 - (rho 37326 * rho 37326 + rho 37325 * rho 37325 * (-1))) =
      rho 37326 * rho 37326 - rho 37325 * rho 37325 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4582
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX7 rho, seg48Out0AccY7 rho⟩ ⟨rho 37325, rho 37326⟩
    ⟨rho 37331, rho 37332⟩ ⟨seg48Out0AccX8 rho, seg48Out0AccY8 rho⟩ ⟨rho 37338, rho 37339⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4583 rho ∧ Seg48.relationRow4584 rho ∧ Seg48.relationRow4585 rho ∧ Seg48.relationRow4586 rho ∧ Seg48.relationRow4587 rho ∧ Seg48.relationRow4588 rho ∧ Seg48.relationRow4589 rho ∧ Seg48.relationRow4590 rho ∧ Seg48.relationRow4591 rho ∧ Seg48.relationRow4592 rho ∧ Seg48.relationRow4593 rho ∧ Seg48.relationRow4594 rho ∧ Seg48.relationRow4595 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595⟩

theorem seg48Out0_rung8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37122 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX8 rho, seg48Out0AccY8 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37338, rho 37339⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX8 rho, seg48Out0AccY8 rho⟩ ⟨rho 37338, rho 37339⟩
        ⟨seg48Out0AccX9 rho, seg48Out0AccY9 rho⟩ ⟨rho 37351, rho 37352⟩ := by
  obtain ⟨r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595⟩ := seg48Out0_rows8 rho h
  unfold Seg48.relationRow4583 at r4583

  unfold Seg48.relationRow4584 at r4584

  unfold Seg48.relationRow4585 at r4585

  unfold Seg48.relationRow4586 at r4586

  unfold Seg48.relationRow4587 at r4587

  unfold Seg48.relationRow4588 at r4588

  unfold Seg48.relationRow4589 at r4589

  unfold Seg48.relationRow4590 at r4590

  unfold Seg48.relationRow4591 at r4591

  unfold Seg48.relationRow4592 at r4592

  unfold Seg48.relationRow4593 at r4593

  unfold Seg48.relationRow4594 at r4594

  unfold Seg48.relationRow4595 at r4595

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX9 rho = seg48Out0AccX8 rho + rho 37346 := by
    unfold seg48Out0AccX9 seg48Out0AccX8
    ring

  have hnexty : seg48Out0AccY9 rho = seg48Out0AccY8 rho + rho 37347 := by
    unfold seg48Out0AccY9 seg48Out0AccY8
    ring

  have ha0 : (rho 37338 + rho 37339) * (seg48Out0AccX8 rho + seg48Out0AccY8 rho) = rho 37340 := by
    unfold seg48Out0AccX8 seg48Out0AccY8
    linear_combination r4583
  have ha1 : rho 37339 * seg48Out0AccX8 rho = rho 37341 := by
    unfold seg48Out0AccX8
    linear_combination r4584
  have ha2 : rho 37338 * seg48Out0AccY8 rho = rho 37342 := by
    unfold seg48Out0AccY8
    linear_combination r4585
  have ha3 : 3021 * rho 37341 * rho 37342 = rho 37343 := by
    linear_combination r4586
  have ha4 : rho 37344 * (1 + rho 37343) = rho 37341 + rho 37342 := by
    linear_combination r4587
  have ha5 : rho 37345 * (1 - rho 37343) = rho 37340 - rho 37341 - rho 37342 := by
    linear_combination r4588
  have haddx :
      rho 37344 * (1 + 3021 * (rho 37339 * seg48Out0AccX8 rho) * (rho 37338 * seg48Out0AccY8 rho)) =
        rho 37339 * seg48Out0AccX8 rho + rho 37338 * seg48Out0AccY8 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37345 * (1 - 3021 * (rho 37339 * seg48Out0AccX8 rho) * (rho 37338 * seg48Out0AccY8 rho)) =
        (-1) * (rho 37339 * seg48Out0AccX8 rho) - rho 37338 * seg48Out0AccY8 rho +
          (seg48Out0AccY8 rho - seg48Out0AccX8 rho * (-1)) * (rho 37338 + rho 37339) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37345 * (1 - rho 37343) = rho 37340 - rho 37341 - rho 37342 := ha5
      _ = (-1) * rho 37341 - rho 37342 + (seg48Out0AccY8 rho - seg48Out0AccX8 rho * (-1)) *
          (rho 37338 + rho 37339) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX9 rho = seg48Out0AccX8 rho - Bool.toZMod bit * (seg48Out0AccX8 rho - rho 37344) := by
    have hd : rho 37346 = Bool.toZMod bit * (rho 37344 - seg48Out0AccX8 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX8
      linear_combination -r4589
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY9 rho = seg48Out0AccY8 rho - Bool.toZMod bit * (seg48Out0AccY8 rho - rho 37345) := by
    have hd : rho 37347 = Bool.toZMod bit * (rho 37345 - seg48Out0AccY8 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY8
      linear_combination -r4590
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37338 * rho 37339 = rho 37348 := by linear_combination r4591
  have hd1 : rho 37338 * rho 37338 = rho 37349 := by linear_combination r4592
  have hd2 : rho 37339 * rho 37339 = rho 37350 := by linear_combination r4593
  have hd3 : rho 37351 * (rho 37339 * rho 37339 + rho 37338 * rho 37338 * (-1)) =
      2 * (rho 37338 * rho 37339) := by
    rw [hd0, hd1, hd2]
    linear_combination r4594
  have hd4 : rho 37352 * (2 - (rho 37339 * rho 37339 + rho 37338 * rho 37338 * (-1))) =
      rho 37339 * rho 37339 - rho 37338 * rho 37338 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4595
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX8 rho, seg48Out0AccY8 rho⟩ ⟨rho 37338, rho 37339⟩
    ⟨rho 37344, rho 37345⟩ ⟨seg48Out0AccX9 rho, seg48Out0AccY9 rho⟩ ⟨rho 37351, rho 37352⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4596 rho ∧ Seg48.relationRow4597 rho ∧ Seg48.relationRow4598 rho ∧ Seg48.relationRow4599 rho ∧ Seg48.relationRow4600 rho ∧ Seg48.relationRow4601 rho ∧ Seg48.relationRow4602 rho ∧ Seg48.relationRow4603 rho ∧ Seg48.relationRow4604 rho ∧ Seg48.relationRow4605 rho ∧ Seg48.relationRow4606 rho ∧ Seg48.relationRow4607 rho ∧ Seg48.relationRow4608 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608⟩

theorem seg48Out0_rung9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37123 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX9 rho, seg48Out0AccY9 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37351, rho 37352⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX9 rho, seg48Out0AccY9 rho⟩ ⟨rho 37351, rho 37352⟩
        ⟨seg48Out0AccX10 rho, seg48Out0AccY10 rho⟩ ⟨rho 37364, rho 37365⟩ := by
  obtain ⟨r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608⟩ := seg48Out0_rows9 rho h
  unfold Seg48.relationRow4596 at r4596

  unfold Seg48.relationRow4597 at r4597

  unfold Seg48.relationRow4598 at r4598

  unfold Seg48.relationRow4599 at r4599

  unfold Seg48.relationRow4600 at r4600

  unfold Seg48.relationRow4601 at r4601

  unfold Seg48.relationRow4602 at r4602

  unfold Seg48.relationRow4603 at r4603

  unfold Seg48.relationRow4604 at r4604

  unfold Seg48.relationRow4605 at r4605

  unfold Seg48.relationRow4606 at r4606

  unfold Seg48.relationRow4607 at r4607

  unfold Seg48.relationRow4608 at r4608

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX10 rho = seg48Out0AccX9 rho + rho 37359 := by
    unfold seg48Out0AccX10 seg48Out0AccX9
    ring

  have hnexty : seg48Out0AccY10 rho = seg48Out0AccY9 rho + rho 37360 := by
    unfold seg48Out0AccY10 seg48Out0AccY9
    ring

  have ha0 : (rho 37351 + rho 37352) * (seg48Out0AccX9 rho + seg48Out0AccY9 rho) = rho 37353 := by
    unfold seg48Out0AccX9 seg48Out0AccY9
    linear_combination r4596
  have ha1 : rho 37352 * seg48Out0AccX9 rho = rho 37354 := by
    unfold seg48Out0AccX9
    linear_combination r4597
  have ha2 : rho 37351 * seg48Out0AccY9 rho = rho 37355 := by
    unfold seg48Out0AccY9
    linear_combination r4598
  have ha3 : 3021 * rho 37354 * rho 37355 = rho 37356 := by
    linear_combination r4599
  have ha4 : rho 37357 * (1 + rho 37356) = rho 37354 + rho 37355 := by
    linear_combination r4600
  have ha5 : rho 37358 * (1 - rho 37356) = rho 37353 - rho 37354 - rho 37355 := by
    linear_combination r4601
  have haddx :
      rho 37357 * (1 + 3021 * (rho 37352 * seg48Out0AccX9 rho) * (rho 37351 * seg48Out0AccY9 rho)) =
        rho 37352 * seg48Out0AccX9 rho + rho 37351 * seg48Out0AccY9 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37358 * (1 - 3021 * (rho 37352 * seg48Out0AccX9 rho) * (rho 37351 * seg48Out0AccY9 rho)) =
        (-1) * (rho 37352 * seg48Out0AccX9 rho) - rho 37351 * seg48Out0AccY9 rho +
          (seg48Out0AccY9 rho - seg48Out0AccX9 rho * (-1)) * (rho 37351 + rho 37352) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37358 * (1 - rho 37356) = rho 37353 - rho 37354 - rho 37355 := ha5
      _ = (-1) * rho 37354 - rho 37355 + (seg48Out0AccY9 rho - seg48Out0AccX9 rho * (-1)) *
          (rho 37351 + rho 37352) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX10 rho = seg48Out0AccX9 rho - Bool.toZMod bit * (seg48Out0AccX9 rho - rho 37357) := by
    have hd : rho 37359 = Bool.toZMod bit * (rho 37357 - seg48Out0AccX9 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX9
      linear_combination -r4602
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY10 rho = seg48Out0AccY9 rho - Bool.toZMod bit * (seg48Out0AccY9 rho - rho 37358) := by
    have hd : rho 37360 = Bool.toZMod bit * (rho 37358 - seg48Out0AccY9 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY9
      linear_combination -r4603
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37351 * rho 37352 = rho 37361 := by linear_combination r4604
  have hd1 : rho 37351 * rho 37351 = rho 37362 := by linear_combination r4605
  have hd2 : rho 37352 * rho 37352 = rho 37363 := by linear_combination r4606
  have hd3 : rho 37364 * (rho 37352 * rho 37352 + rho 37351 * rho 37351 * (-1)) =
      2 * (rho 37351 * rho 37352) := by
    rw [hd0, hd1, hd2]
    linear_combination r4607
  have hd4 : rho 37365 * (2 - (rho 37352 * rho 37352 + rho 37351 * rho 37351 * (-1))) =
      rho 37352 * rho 37352 - rho 37351 * rho 37351 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4608
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX9 rho, seg48Out0AccY9 rho⟩ ⟨rho 37351, rho 37352⟩
    ⟨rho 37357, rho 37358⟩ ⟨seg48Out0AccX10 rho, seg48Out0AccY10 rho⟩ ⟨rho 37364, rho 37365⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4609 rho ∧ Seg48.relationRow4610 rho ∧ Seg48.relationRow4611 rho ∧ Seg48.relationRow4612 rho ∧ Seg48.relationRow4613 rho ∧ Seg48.relationRow4614 rho ∧ Seg48.relationRow4615 rho ∧ Seg48.relationRow4616 rho ∧ Seg48.relationRow4617 rho ∧ Seg48.relationRow4618 rho ∧ Seg48.relationRow4619 rho ∧ Seg48.relationRow4620 rho ∧ Seg48.relationRow4621 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621⟩

theorem seg48Out0_rung10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37124 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX10 rho, seg48Out0AccY10 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37364, rho 37365⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX10 rho, seg48Out0AccY10 rho⟩ ⟨rho 37364, rho 37365⟩
        ⟨seg48Out0AccX11 rho, seg48Out0AccY11 rho⟩ ⟨rho 37377, rho 37378⟩ := by
  obtain ⟨r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621⟩ := seg48Out0_rows10 rho h
  unfold Seg48.relationRow4609 at r4609

  unfold Seg48.relationRow4610 at r4610

  unfold Seg48.relationRow4611 at r4611

  unfold Seg48.relationRow4612 at r4612

  unfold Seg48.relationRow4613 at r4613

  unfold Seg48.relationRow4614 at r4614

  unfold Seg48.relationRow4615 at r4615

  unfold Seg48.relationRow4616 at r4616

  unfold Seg48.relationRow4617 at r4617

  unfold Seg48.relationRow4618 at r4618

  unfold Seg48.relationRow4619 at r4619

  unfold Seg48.relationRow4620 at r4620

  unfold Seg48.relationRow4621 at r4621

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX11 rho = seg48Out0AccX10 rho + rho 37372 := by
    unfold seg48Out0AccX11 seg48Out0AccX10
    ring

  have hnexty : seg48Out0AccY11 rho = seg48Out0AccY10 rho + rho 37373 := by
    unfold seg48Out0AccY11 seg48Out0AccY10
    ring

  have ha0 : (rho 37364 + rho 37365) * (seg48Out0AccX10 rho + seg48Out0AccY10 rho) = rho 37366 := by
    unfold seg48Out0AccX10 seg48Out0AccY10
    linear_combination r4609
  have ha1 : rho 37365 * seg48Out0AccX10 rho = rho 37367 := by
    unfold seg48Out0AccX10
    linear_combination r4610
  have ha2 : rho 37364 * seg48Out0AccY10 rho = rho 37368 := by
    unfold seg48Out0AccY10
    linear_combination r4611
  have ha3 : 3021 * rho 37367 * rho 37368 = rho 37369 := by
    linear_combination r4612
  have ha4 : rho 37370 * (1 + rho 37369) = rho 37367 + rho 37368 := by
    linear_combination r4613
  have ha5 : rho 37371 * (1 - rho 37369) = rho 37366 - rho 37367 - rho 37368 := by
    linear_combination r4614
  have haddx :
      rho 37370 * (1 + 3021 * (rho 37365 * seg48Out0AccX10 rho) * (rho 37364 * seg48Out0AccY10 rho)) =
        rho 37365 * seg48Out0AccX10 rho + rho 37364 * seg48Out0AccY10 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37371 * (1 - 3021 * (rho 37365 * seg48Out0AccX10 rho) * (rho 37364 * seg48Out0AccY10 rho)) =
        (-1) * (rho 37365 * seg48Out0AccX10 rho) - rho 37364 * seg48Out0AccY10 rho +
          (seg48Out0AccY10 rho - seg48Out0AccX10 rho * (-1)) * (rho 37364 + rho 37365) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37371 * (1 - rho 37369) = rho 37366 - rho 37367 - rho 37368 := ha5
      _ = (-1) * rho 37367 - rho 37368 + (seg48Out0AccY10 rho - seg48Out0AccX10 rho * (-1)) *
          (rho 37364 + rho 37365) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX11 rho = seg48Out0AccX10 rho - Bool.toZMod bit * (seg48Out0AccX10 rho - rho 37370) := by
    have hd : rho 37372 = Bool.toZMod bit * (rho 37370 - seg48Out0AccX10 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX10
      linear_combination -r4615
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY11 rho = seg48Out0AccY10 rho - Bool.toZMod bit * (seg48Out0AccY10 rho - rho 37371) := by
    have hd : rho 37373 = Bool.toZMod bit * (rho 37371 - seg48Out0AccY10 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY10
      linear_combination -r4616
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37364 * rho 37365 = rho 37374 := by linear_combination r4617
  have hd1 : rho 37364 * rho 37364 = rho 37375 := by linear_combination r4618
  have hd2 : rho 37365 * rho 37365 = rho 37376 := by linear_combination r4619
  have hd3 : rho 37377 * (rho 37365 * rho 37365 + rho 37364 * rho 37364 * (-1)) =
      2 * (rho 37364 * rho 37365) := by
    rw [hd0, hd1, hd2]
    linear_combination r4620
  have hd4 : rho 37378 * (2 - (rho 37365 * rho 37365 + rho 37364 * rho 37364 * (-1))) =
      rho 37365 * rho 37365 - rho 37364 * rho 37364 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4621
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX10 rho, seg48Out0AccY10 rho⟩ ⟨rho 37364, rho 37365⟩
    ⟨rho 37370, rho 37371⟩ ⟨seg48Out0AccX11 rho, seg48Out0AccY11 rho⟩ ⟨rho 37377, rho 37378⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c0 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg48Out0_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg48Out0_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg48Out0_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg48Out0_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg48Out0_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg48Out0_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg48Out0_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg48Out0_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg48Out0_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg48Out0_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

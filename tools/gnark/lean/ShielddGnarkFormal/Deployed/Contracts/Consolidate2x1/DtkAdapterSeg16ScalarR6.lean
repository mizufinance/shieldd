import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rung192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15484 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
        ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩
        ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
        ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, _, _, _⟩
  unfold Seg16.relationRow5503 Seg16.relationLc995 Seg16.relationLc995Part0 Seg16.relationLc995Part1 Seg16.relationLc995Part2 Seg16.relationLc995Part3 Seg16.relationLc995Part4 Seg16.relationLc995Part5 Seg16.relationLc995Part6 Seg16.relationLc995Part7 Seg16.relationLc995Part8 Seg16.relationLc995Part9 Seg16.relationLc995Part10 Seg16.relationLc995Part11 Seg16.relationLc995Part12 at r5503
  unfold Seg16.relationRow5504 at r5504
  unfold Seg16.relationRow5505 Seg16.relationLc996 Seg16.relationLc996Part0 Seg16.relationLc996Part1 Seg16.relationLc996Part2 Seg16.relationLc996Part3 Seg16.relationLc996Part4 Seg16.relationLc996Part5 at r5505
  unfold Seg16.relationRow5506 Seg16.relationLc997 Seg16.relationLc997Part0 Seg16.relationLc997Part1 Seg16.relationLc997Part2 Seg16.relationLc997Part3 Seg16.relationLc997Part4 Seg16.relationLc997Part5 Seg16.relationLc997Part6 at r5506
  unfold Seg16.relationRow5507 at r5507
  unfold Seg16.relationRow5508 at r5508
  unfold Seg16.relationRow5509 at r5509
  unfold Seg16.relationRow5510 Seg16.relationLc998 Seg16.relationLc998Part0 Seg16.relationLc998Part1 Seg16.relationLc998Part2 Seg16.relationLc998Part3 Seg16.relationLc998Part4 Seg16.relationLc998Part5 Seg16.relationLc998Part6 at r5510
  unfold Seg16.relationRow5511 Seg16.relationLc999 Seg16.relationLc999Part0 Seg16.relationLc999Part1 Seg16.relationLc999Part2 Seg16.relationLc999Part3 Seg16.relationLc999Part4 Seg16.relationLc999Part5 Seg16.relationLc999Part6 at r5511
  unfold Seg16.relationRow5512 at r5512
  unfold Seg16.relationRow5513 at r5513
  unfold Seg16.relationRow5514 at r5514
  unfold Seg16.relationRow5515 at r5515
  unfold Seg16.relationRow5516 at r5516
  have hrung192 (bit : Bool) (hbit : rho 15484 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
        ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩
        ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
        ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩ := by
    have hsum : seg16AccX192 rho + seg16AccY192 rho = rho 18075 := by
      rw [seg16LadderFlatX192_eq, seg16LadderFlatY192_eq]
      unfold seg16LadderFlatX192 seg16LadderFlatY192
      linear_combination r5503
    have ha0 : (rho 18073 + rho 18074) * (seg16AccX192 rho + seg16AccY192 rho) = rho 18076 := by
      rw [hsum]
      linear_combination r5504
    have ha1 : rho 18074 * seg16AccX192 rho = rho 18077 := by
      rw [seg16LadderFlatX192_eq]
      unfold seg16LadderFlatX192
      linear_combination r5505
    have ha2 : rho 18073 * seg16AccY192 rho = rho 18078 := by
      rw [seg16LadderFlatY192_eq]
      unfold seg16LadderFlatY192
      linear_combination r5506
    have ha3 : 3021 * rho 18077 * rho 18078 = rho 18079 := by
      linear_combination r5507
    have ha4 : rho 18080 * (1 + rho 18079) = rho 18077 + rho 18078 := by
      linear_combination r5508
    have ha5 : rho 18081 * (1 - rho 18079) = rho 18076 - rho 18077 - rho 18078 := by
      linear_combination r5509
    have haddx :
        rho 18080 * (1 + 3021 * (rho 18074 * seg16AccX192 rho) * (rho 18073 * seg16AccY192 rho)) =
          rho 18074 * seg16AccX192 rho + rho 18073 * seg16AccY192 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18081 * (1 - 3021 * (rho 18074 * seg16AccX192 rho) * (rho 18073 * seg16AccY192 rho)) =
          (-1) * (rho 18074 * seg16AccX192 rho) - rho 18073 * seg16AccY192 rho +
            (seg16AccY192 rho - seg16AccX192 rho * (-1)) * (rho 18073 + rho 18074) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18081 * (1 - rho 18079) = rho 18076 - rho 18077 - rho 18078 := ha5
        _ = (-1) * rho 18077 - rho 18078 + (seg16AccY192 rho - seg16AccX192 rho * (-1)) * (rho 18073 + rho 18074) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX193 rho = seg16AccX192 rho - Bool.toZMod bit * (seg16AccX192 rho - rho 18080) := by
      have hd : rho 18082 = Bool.toZMod bit * (rho 18080 - seg16AccX192 rho) := by
        rw [← hbit, seg16LadderFlatX192_eq]
        unfold seg16LadderFlatX192
        linear_combination -r5510
      unfold seg16AccX193
      linear_combination hd
    have hsely : seg16AccY193 rho = seg16AccY192 rho - Bool.toZMod bit * (seg16AccY192 rho - rho 18081) := by
      have hd : rho 18083 = Bool.toZMod bit * (rho 18081 - seg16AccY192 rho) := by
        rw [← hbit, seg16LadderFlatY192_eq]
        unfold seg16LadderFlatY192
        linear_combination -r5511
      unfold seg16AccY193
      linear_combination hd
    have hd0 : rho 18073 * rho 18074 = rho 18084 := by linear_combination r5512
    have hd1 : rho 18073 * rho 18073 = rho 18085 := by linear_combination r5513
    have hd2 : rho 18074 * rho 18074 = rho 18086 := by linear_combination r5514
    have hd3 : rho 18087 * (rho 18074 * rho 18074 + rho 18073 * rho 18073 * (-1)) = 2 * (rho 18073 * rho 18074) := by
      rw [hd0, hd1, hd2]
      linear_combination r5515
    have hd4 : rho 18088 * (2 - (rho 18074 * rho 18074 + rho 18073 * rho 18073 * (-1))) = rho 18074 * rho 18074 - rho 18073 * rho 18073 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5516
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
      ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩
      ⟨(rho 18080 : Seg16.F), (rho 18081 : Seg16.F)⟩
      ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
      ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung192

theorem seg16_rung193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15485 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
        ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩
        ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
        ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5517, r5518, r5519⟩
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5517 Seg16.relationLc1000 Seg16.relationLc1000Part0 Seg16.relationLc1000Part1 Seg16.relationLc1000Part2 Seg16.relationLc1000Part3 Seg16.relationLc1000Part4 Seg16.relationLc1000Part5 Seg16.relationLc1000Part6 Seg16.relationLc1000Part7 Seg16.relationLc1000Part8 Seg16.relationLc1000Part9 Seg16.relationLc1000Part10 Seg16.relationLc1000Part11 Seg16.relationLc1000Part12 at r5517
  unfold Seg16.relationRow5518 at r5518
  unfold Seg16.relationRow5519 Seg16.relationLc1001 Seg16.relationLc1001Part0 Seg16.relationLc1001Part1 Seg16.relationLc1001Part2 Seg16.relationLc1001Part3 Seg16.relationLc1001Part4 Seg16.relationLc1001Part5 Seg16.relationLc1001Part6 at r5519
  unfold Seg16.relationRow5520 Seg16.relationLc1002 Seg16.relationLc1002Part0 Seg16.relationLc1002Part1 Seg16.relationLc1002Part2 Seg16.relationLc1002Part3 Seg16.relationLc1002Part4 Seg16.relationLc1002Part5 Seg16.relationLc1002Part6 at r5520
  unfold Seg16.relationRow5521 at r5521
  unfold Seg16.relationRow5522 at r5522
  unfold Seg16.relationRow5523 at r5523
  unfold Seg16.relationRow5524 Seg16.relationLc1003 Seg16.relationLc1003Part0 Seg16.relationLc1003Part1 Seg16.relationLc1003Part2 Seg16.relationLc1003Part3 Seg16.relationLc1003Part4 Seg16.relationLc1003Part5 Seg16.relationLc1003Part6 at r5524
  unfold Seg16.relationRow5525 Seg16.relationLc1004 Seg16.relationLc1004Part0 Seg16.relationLc1004Part1 Seg16.relationLc1004Part2 Seg16.relationLc1004Part3 Seg16.relationLc1004Part4 Seg16.relationLc1004Part5 Seg16.relationLc1004Part6 at r5525
  unfold Seg16.relationRow5526 at r5526
  unfold Seg16.relationRow5527 at r5527
  unfold Seg16.relationRow5528 at r5528
  unfold Seg16.relationRow5529 at r5529
  unfold Seg16.relationRow5530 at r5530
  have hrung193 (bit : Bool) (hbit : rho 15485 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
        ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩
        ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
        ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩ := by
    have hsum : seg16AccX193 rho + seg16AccY193 rho = rho 18089 := by
      rw [seg16LadderFlatX193_eq, seg16LadderFlatY193_eq]
      unfold seg16LadderFlatX193 seg16LadderFlatY193
      linear_combination r5517
    have ha0 : (rho 18087 + rho 18088) * (seg16AccX193 rho + seg16AccY193 rho) = rho 18090 := by
      rw [hsum]
      linear_combination r5518
    have ha1 : rho 18088 * seg16AccX193 rho = rho 18091 := by
      rw [seg16LadderFlatX193_eq]
      unfold seg16LadderFlatX193
      linear_combination r5519
    have ha2 : rho 18087 * seg16AccY193 rho = rho 18092 := by
      rw [seg16LadderFlatY193_eq]
      unfold seg16LadderFlatY193
      linear_combination r5520
    have ha3 : 3021 * rho 18091 * rho 18092 = rho 18093 := by
      linear_combination r5521
    have ha4 : rho 18094 * (1 + rho 18093) = rho 18091 + rho 18092 := by
      linear_combination r5522
    have ha5 : rho 18095 * (1 - rho 18093) = rho 18090 - rho 18091 - rho 18092 := by
      linear_combination r5523
    have haddx :
        rho 18094 * (1 + 3021 * (rho 18088 * seg16AccX193 rho) * (rho 18087 * seg16AccY193 rho)) =
          rho 18088 * seg16AccX193 rho + rho 18087 * seg16AccY193 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18095 * (1 - 3021 * (rho 18088 * seg16AccX193 rho) * (rho 18087 * seg16AccY193 rho)) =
          (-1) * (rho 18088 * seg16AccX193 rho) - rho 18087 * seg16AccY193 rho +
            (seg16AccY193 rho - seg16AccX193 rho * (-1)) * (rho 18087 + rho 18088) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18095 * (1 - rho 18093) = rho 18090 - rho 18091 - rho 18092 := ha5
        _ = (-1) * rho 18091 - rho 18092 + (seg16AccY193 rho - seg16AccX193 rho * (-1)) * (rho 18087 + rho 18088) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX194 rho = seg16AccX193 rho - Bool.toZMod bit * (seg16AccX193 rho - rho 18094) := by
      have hd : rho 18096 = Bool.toZMod bit * (rho 18094 - seg16AccX193 rho) := by
        rw [← hbit, seg16LadderFlatX193_eq]
        unfold seg16LadderFlatX193
        linear_combination -r5524
      unfold seg16AccX194
      linear_combination hd
    have hsely : seg16AccY194 rho = seg16AccY193 rho - Bool.toZMod bit * (seg16AccY193 rho - rho 18095) := by
      have hd : rho 18097 = Bool.toZMod bit * (rho 18095 - seg16AccY193 rho) := by
        rw [← hbit, seg16LadderFlatY193_eq]
        unfold seg16LadderFlatY193
        linear_combination -r5525
      unfold seg16AccY194
      linear_combination hd
    have hd0 : rho 18087 * rho 18088 = rho 18098 := by linear_combination r5526
    have hd1 : rho 18087 * rho 18087 = rho 18099 := by linear_combination r5527
    have hd2 : rho 18088 * rho 18088 = rho 18100 := by linear_combination r5528
    have hd3 : rho 18101 * (rho 18088 * rho 18088 + rho 18087 * rho 18087 * (-1)) = 2 * (rho 18087 * rho 18088) := by
      rw [hd0, hd1, hd2]
      linear_combination r5529
    have hd4 : rho 18102 * (2 - (rho 18088 * rho 18088 + rho 18087 * rho 18087 * (-1))) = rho 18088 * rho 18088 - rho 18087 * rho 18087 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5530
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
      ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩
      ⟨(rho 18094 : Seg16.F), (rho 18095 : Seg16.F)⟩
      ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
      ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung193

theorem seg16_rung194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15486 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
        ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩
        ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
        ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5531 Seg16.relationLc1005 Seg16.relationLc1005Part0 Seg16.relationLc1005Part1 Seg16.relationLc1005Part2 Seg16.relationLc1005Part3 Seg16.relationLc1005Part4 Seg16.relationLc1005Part5 Seg16.relationLc1005Part6 Seg16.relationLc1005Part7 Seg16.relationLc1005Part8 Seg16.relationLc1005Part9 Seg16.relationLc1005Part10 Seg16.relationLc1005Part11 Seg16.relationLc1005Part12 at r5531
  unfold Seg16.relationRow5532 at r5532
  unfold Seg16.relationRow5533 Seg16.relationLc1006 Seg16.relationLc1006Part0 Seg16.relationLc1006Part1 Seg16.relationLc1006Part2 Seg16.relationLc1006Part3 Seg16.relationLc1006Part4 Seg16.relationLc1006Part5 Seg16.relationLc1006Part6 at r5533
  unfold Seg16.relationRow5534 Seg16.relationLc1007 Seg16.relationLc1007Part0 Seg16.relationLc1007Part1 Seg16.relationLc1007Part2 Seg16.relationLc1007Part3 Seg16.relationLc1007Part4 Seg16.relationLc1007Part5 Seg16.relationLc1007Part6 at r5534
  unfold Seg16.relationRow5535 at r5535
  unfold Seg16.relationRow5536 at r5536
  unfold Seg16.relationRow5537 at r5537
  unfold Seg16.relationRow5538 Seg16.relationLc1008 Seg16.relationLc1008Part0 Seg16.relationLc1008Part1 Seg16.relationLc1008Part2 Seg16.relationLc1008Part3 Seg16.relationLc1008Part4 Seg16.relationLc1008Part5 Seg16.relationLc1008Part6 at r5538
  unfold Seg16.relationRow5539 Seg16.relationLc1009 Seg16.relationLc1009Part0 Seg16.relationLc1009Part1 Seg16.relationLc1009Part2 Seg16.relationLc1009Part3 Seg16.relationLc1009Part4 Seg16.relationLc1009Part5 Seg16.relationLc1009Part6 at r5539
  unfold Seg16.relationRow5540 at r5540
  unfold Seg16.relationRow5541 at r5541
  unfold Seg16.relationRow5542 at r5542
  unfold Seg16.relationRow5543 at r5543
  unfold Seg16.relationRow5544 at r5544
  have hrung194 (bit : Bool) (hbit : rho 15486 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
        ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩
        ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
        ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩ := by
    have hsum : seg16AccX194 rho + seg16AccY194 rho = rho 18103 := by
      rw [seg16LadderFlatX194_eq, seg16LadderFlatY194_eq]
      unfold seg16LadderFlatX194 seg16LadderFlatY194
      linear_combination r5531
    have ha0 : (rho 18101 + rho 18102) * (seg16AccX194 rho + seg16AccY194 rho) = rho 18104 := by
      rw [hsum]
      linear_combination r5532
    have ha1 : rho 18102 * seg16AccX194 rho = rho 18105 := by
      rw [seg16LadderFlatX194_eq]
      unfold seg16LadderFlatX194
      linear_combination r5533
    have ha2 : rho 18101 * seg16AccY194 rho = rho 18106 := by
      rw [seg16LadderFlatY194_eq]
      unfold seg16LadderFlatY194
      linear_combination r5534
    have ha3 : 3021 * rho 18105 * rho 18106 = rho 18107 := by
      linear_combination r5535
    have ha4 : rho 18108 * (1 + rho 18107) = rho 18105 + rho 18106 := by
      linear_combination r5536
    have ha5 : rho 18109 * (1 - rho 18107) = rho 18104 - rho 18105 - rho 18106 := by
      linear_combination r5537
    have haddx :
        rho 18108 * (1 + 3021 * (rho 18102 * seg16AccX194 rho) * (rho 18101 * seg16AccY194 rho)) =
          rho 18102 * seg16AccX194 rho + rho 18101 * seg16AccY194 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18109 * (1 - 3021 * (rho 18102 * seg16AccX194 rho) * (rho 18101 * seg16AccY194 rho)) =
          (-1) * (rho 18102 * seg16AccX194 rho) - rho 18101 * seg16AccY194 rho +
            (seg16AccY194 rho - seg16AccX194 rho * (-1)) * (rho 18101 + rho 18102) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18109 * (1 - rho 18107) = rho 18104 - rho 18105 - rho 18106 := ha5
        _ = (-1) * rho 18105 - rho 18106 + (seg16AccY194 rho - seg16AccX194 rho * (-1)) * (rho 18101 + rho 18102) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX195 rho = seg16AccX194 rho - Bool.toZMod bit * (seg16AccX194 rho - rho 18108) := by
      have hd : rho 18110 = Bool.toZMod bit * (rho 18108 - seg16AccX194 rho) := by
        rw [← hbit, seg16LadderFlatX194_eq]
        unfold seg16LadderFlatX194
        linear_combination -r5538
      unfold seg16AccX195
      linear_combination hd
    have hsely : seg16AccY195 rho = seg16AccY194 rho - Bool.toZMod bit * (seg16AccY194 rho - rho 18109) := by
      have hd : rho 18111 = Bool.toZMod bit * (rho 18109 - seg16AccY194 rho) := by
        rw [← hbit, seg16LadderFlatY194_eq]
        unfold seg16LadderFlatY194
        linear_combination -r5539
      unfold seg16AccY195
      linear_combination hd
    have hd0 : rho 18101 * rho 18102 = rho 18112 := by linear_combination r5540
    have hd1 : rho 18101 * rho 18101 = rho 18113 := by linear_combination r5541
    have hd2 : rho 18102 * rho 18102 = rho 18114 := by linear_combination r5542
    have hd3 : rho 18115 * (rho 18102 * rho 18102 + rho 18101 * rho 18101 * (-1)) = 2 * (rho 18101 * rho 18102) := by
      rw [hd0, hd1, hd2]
      linear_combination r5543
    have hd4 : rho 18116 * (2 - (rho 18102 * rho 18102 + rho 18101 * rho 18101 * (-1))) = rho 18102 * rho 18102 - rho 18101 * rho 18101 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
      ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩
      ⟨(rho 18108 : Seg16.F), (rho 18109 : Seg16.F)⟩
      ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
      ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung194

theorem seg16_rung195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15487 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
        ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩
        ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
        ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5545 Seg16.relationLc1010 Seg16.relationLc1010Part0 Seg16.relationLc1010Part1 Seg16.relationLc1010Part2 Seg16.relationLc1010Part3 Seg16.relationLc1010Part4 Seg16.relationLc1010Part5 Seg16.relationLc1010Part6 Seg16.relationLc1010Part7 Seg16.relationLc1010Part8 Seg16.relationLc1010Part9 Seg16.relationLc1010Part10 Seg16.relationLc1010Part11 Seg16.relationLc1010Part12 at r5545
  unfold Seg16.relationRow5546 at r5546
  unfold Seg16.relationRow5547 Seg16.relationLc1011 Seg16.relationLc1011Part0 Seg16.relationLc1011Part1 Seg16.relationLc1011Part2 Seg16.relationLc1011Part3 Seg16.relationLc1011Part4 Seg16.relationLc1011Part5 Seg16.relationLc1011Part6 at r5547
  unfold Seg16.relationRow5548 Seg16.relationLc1012 Seg16.relationLc1012Part0 Seg16.relationLc1012Part1 Seg16.relationLc1012Part2 Seg16.relationLc1012Part3 Seg16.relationLc1012Part4 Seg16.relationLc1012Part5 Seg16.relationLc1012Part6 at r5548
  unfold Seg16.relationRow5549 at r5549
  unfold Seg16.relationRow5550 at r5550
  unfold Seg16.relationRow5551 at r5551
  unfold Seg16.relationRow5552 Seg16.relationLc1013 Seg16.relationLc1013Part0 Seg16.relationLc1013Part1 Seg16.relationLc1013Part2 Seg16.relationLc1013Part3 Seg16.relationLc1013Part4 Seg16.relationLc1013Part5 Seg16.relationLc1013Part6 at r5552
  unfold Seg16.relationRow5553 Seg16.relationLc1014 Seg16.relationLc1014Part0 Seg16.relationLc1014Part1 Seg16.relationLc1014Part2 Seg16.relationLc1014Part3 Seg16.relationLc1014Part4 Seg16.relationLc1014Part5 Seg16.relationLc1014Part6 at r5553
  unfold Seg16.relationRow5554 at r5554
  unfold Seg16.relationRow5555 at r5555
  unfold Seg16.relationRow5556 at r5556
  unfold Seg16.relationRow5557 at r5557
  unfold Seg16.relationRow5558 at r5558
  have hrung195 (bit : Bool) (hbit : rho 15487 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
        ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩
        ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
        ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩ := by
    have hsum : seg16AccX195 rho + seg16AccY195 rho = rho 18117 := by
      rw [seg16LadderFlatX195_eq, seg16LadderFlatY195_eq]
      unfold seg16LadderFlatX195 seg16LadderFlatY195
      linear_combination r5545
    have ha0 : (rho 18115 + rho 18116) * (seg16AccX195 rho + seg16AccY195 rho) = rho 18118 := by
      rw [hsum]
      linear_combination r5546
    have ha1 : rho 18116 * seg16AccX195 rho = rho 18119 := by
      rw [seg16LadderFlatX195_eq]
      unfold seg16LadderFlatX195
      linear_combination r5547
    have ha2 : rho 18115 * seg16AccY195 rho = rho 18120 := by
      rw [seg16LadderFlatY195_eq]
      unfold seg16LadderFlatY195
      linear_combination r5548
    have ha3 : 3021 * rho 18119 * rho 18120 = rho 18121 := by
      linear_combination r5549
    have ha4 : rho 18122 * (1 + rho 18121) = rho 18119 + rho 18120 := by
      linear_combination r5550
    have ha5 : rho 18123 * (1 - rho 18121) = rho 18118 - rho 18119 - rho 18120 := by
      linear_combination r5551
    have haddx :
        rho 18122 * (1 + 3021 * (rho 18116 * seg16AccX195 rho) * (rho 18115 * seg16AccY195 rho)) =
          rho 18116 * seg16AccX195 rho + rho 18115 * seg16AccY195 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18123 * (1 - 3021 * (rho 18116 * seg16AccX195 rho) * (rho 18115 * seg16AccY195 rho)) =
          (-1) * (rho 18116 * seg16AccX195 rho) - rho 18115 * seg16AccY195 rho +
            (seg16AccY195 rho - seg16AccX195 rho * (-1)) * (rho 18115 + rho 18116) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18123 * (1 - rho 18121) = rho 18118 - rho 18119 - rho 18120 := ha5
        _ = (-1) * rho 18119 - rho 18120 + (seg16AccY195 rho - seg16AccX195 rho * (-1)) * (rho 18115 + rho 18116) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX196 rho = seg16AccX195 rho - Bool.toZMod bit * (seg16AccX195 rho - rho 18122) := by
      have hd : rho 18124 = Bool.toZMod bit * (rho 18122 - seg16AccX195 rho) := by
        rw [← hbit, seg16LadderFlatX195_eq]
        unfold seg16LadderFlatX195
        linear_combination -r5552
      unfold seg16AccX196
      linear_combination hd
    have hsely : seg16AccY196 rho = seg16AccY195 rho - Bool.toZMod bit * (seg16AccY195 rho - rho 18123) := by
      have hd : rho 18125 = Bool.toZMod bit * (rho 18123 - seg16AccY195 rho) := by
        rw [← hbit, seg16LadderFlatY195_eq]
        unfold seg16LadderFlatY195
        linear_combination -r5553
      unfold seg16AccY196
      linear_combination hd
    have hd0 : rho 18115 * rho 18116 = rho 18126 := by linear_combination r5554
    have hd1 : rho 18115 * rho 18115 = rho 18127 := by linear_combination r5555
    have hd2 : rho 18116 * rho 18116 = rho 18128 := by linear_combination r5556
    have hd3 : rho 18129 * (rho 18116 * rho 18116 + rho 18115 * rho 18115 * (-1)) = 2 * (rho 18115 * rho 18116) := by
      rw [hd0, hd1, hd2]
      linear_combination r5557
    have hd4 : rho 18130 * (2 - (rho 18116 * rho 18116 + rho 18115 * rho 18115 * (-1))) = rho 18116 * rho 18116 - rho 18115 * rho 18115 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
      ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩
      ⟨(rho 18122 : Seg16.F), (rho 18123 : Seg16.F)⟩
      ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
      ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung195

theorem seg16_rung196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15488 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
        ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩
        ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
        ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5559 Seg16.relationLc1015 Seg16.relationLc1015Part0 Seg16.relationLc1015Part1 Seg16.relationLc1015Part2 Seg16.relationLc1015Part3 Seg16.relationLc1015Part4 Seg16.relationLc1015Part5 Seg16.relationLc1015Part6 Seg16.relationLc1015Part7 Seg16.relationLc1015Part8 Seg16.relationLc1015Part9 Seg16.relationLc1015Part10 Seg16.relationLc1015Part11 Seg16.relationLc1015Part12 at r5559
  unfold Seg16.relationRow5560 at r5560
  unfold Seg16.relationRow5561 Seg16.relationLc1016 Seg16.relationLc1016Part0 Seg16.relationLc1016Part1 Seg16.relationLc1016Part2 Seg16.relationLc1016Part3 Seg16.relationLc1016Part4 Seg16.relationLc1016Part5 Seg16.relationLc1016Part6 at r5561
  unfold Seg16.relationRow5562 Seg16.relationLc1017 Seg16.relationLc1017Part0 Seg16.relationLc1017Part1 Seg16.relationLc1017Part2 Seg16.relationLc1017Part3 Seg16.relationLc1017Part4 Seg16.relationLc1017Part5 Seg16.relationLc1017Part6 at r5562
  unfold Seg16.relationRow5563 at r5563
  unfold Seg16.relationRow5564 at r5564
  unfold Seg16.relationRow5565 at r5565
  unfold Seg16.relationRow5566 Seg16.relationLc1018 Seg16.relationLc1018Part0 Seg16.relationLc1018Part1 Seg16.relationLc1018Part2 Seg16.relationLc1018Part3 Seg16.relationLc1018Part4 Seg16.relationLc1018Part5 Seg16.relationLc1018Part6 at r5566
  unfold Seg16.relationRow5567 Seg16.relationLc1019 Seg16.relationLc1019Part0 Seg16.relationLc1019Part1 Seg16.relationLc1019Part2 Seg16.relationLc1019Part3 Seg16.relationLc1019Part4 Seg16.relationLc1019Part5 Seg16.relationLc1019Part6 at r5567
  unfold Seg16.relationRow5568 at r5568
  unfold Seg16.relationRow5569 at r5569
  unfold Seg16.relationRow5570 at r5570
  unfold Seg16.relationRow5571 at r5571
  unfold Seg16.relationRow5572 at r5572
  have hrung196 (bit : Bool) (hbit : rho 15488 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
        ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩
        ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
        ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩ := by
    have hsum : seg16AccX196 rho + seg16AccY196 rho = rho 18131 := by
      rw [seg16LadderFlatX196_eq, seg16LadderFlatY196_eq]
      unfold seg16LadderFlatX196 seg16LadderFlatY196
      linear_combination r5559
    have ha0 : (rho 18129 + rho 18130) * (seg16AccX196 rho + seg16AccY196 rho) = rho 18132 := by
      rw [hsum]
      linear_combination r5560
    have ha1 : rho 18130 * seg16AccX196 rho = rho 18133 := by
      rw [seg16LadderFlatX196_eq]
      unfold seg16LadderFlatX196
      linear_combination r5561
    have ha2 : rho 18129 * seg16AccY196 rho = rho 18134 := by
      rw [seg16LadderFlatY196_eq]
      unfold seg16LadderFlatY196
      linear_combination r5562
    have ha3 : 3021 * rho 18133 * rho 18134 = rho 18135 := by
      linear_combination r5563
    have ha4 : rho 18136 * (1 + rho 18135) = rho 18133 + rho 18134 := by
      linear_combination r5564
    have ha5 : rho 18137 * (1 - rho 18135) = rho 18132 - rho 18133 - rho 18134 := by
      linear_combination r5565
    have haddx :
        rho 18136 * (1 + 3021 * (rho 18130 * seg16AccX196 rho) * (rho 18129 * seg16AccY196 rho)) =
          rho 18130 * seg16AccX196 rho + rho 18129 * seg16AccY196 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18137 * (1 - 3021 * (rho 18130 * seg16AccX196 rho) * (rho 18129 * seg16AccY196 rho)) =
          (-1) * (rho 18130 * seg16AccX196 rho) - rho 18129 * seg16AccY196 rho +
            (seg16AccY196 rho - seg16AccX196 rho * (-1)) * (rho 18129 + rho 18130) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18137 * (1 - rho 18135) = rho 18132 - rho 18133 - rho 18134 := ha5
        _ = (-1) * rho 18133 - rho 18134 + (seg16AccY196 rho - seg16AccX196 rho * (-1)) * (rho 18129 + rho 18130) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX197 rho = seg16AccX196 rho - Bool.toZMod bit * (seg16AccX196 rho - rho 18136) := by
      have hd : rho 18138 = Bool.toZMod bit * (rho 18136 - seg16AccX196 rho) := by
        rw [← hbit, seg16LadderFlatX196_eq]
        unfold seg16LadderFlatX196
        linear_combination -r5566
      unfold seg16AccX197
      linear_combination hd
    have hsely : seg16AccY197 rho = seg16AccY196 rho - Bool.toZMod bit * (seg16AccY196 rho - rho 18137) := by
      have hd : rho 18139 = Bool.toZMod bit * (rho 18137 - seg16AccY196 rho) := by
        rw [← hbit, seg16LadderFlatY196_eq]
        unfold seg16LadderFlatY196
        linear_combination -r5567
      unfold seg16AccY197
      linear_combination hd
    have hd0 : rho 18129 * rho 18130 = rho 18140 := by linear_combination r5568
    have hd1 : rho 18129 * rho 18129 = rho 18141 := by linear_combination r5569
    have hd2 : rho 18130 * rho 18130 = rho 18142 := by linear_combination r5570
    have hd3 : rho 18143 * (rho 18130 * rho 18130 + rho 18129 * rho 18129 * (-1)) = 2 * (rho 18129 * rho 18130) := by
      rw [hd0, hd1, hd2]
      linear_combination r5571
    have hd4 : rho 18144 * (2 - (rho 18130 * rho 18130 + rho 18129 * rho 18129 * (-1))) = rho 18130 * rho 18130 - rho 18129 * rho 18129 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5572
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
      ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩
      ⟨(rho 18136 : Seg16.F), (rho 18137 : Seg16.F)⟩
      ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
      ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung196

theorem seg16_rung197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15489 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
        ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩
        ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
        ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5573 Seg16.relationLc1020 Seg16.relationLc1020Part0 Seg16.relationLc1020Part1 Seg16.relationLc1020Part2 Seg16.relationLc1020Part3 Seg16.relationLc1020Part4 Seg16.relationLc1020Part5 Seg16.relationLc1020Part6 Seg16.relationLc1020Part7 Seg16.relationLc1020Part8 Seg16.relationLc1020Part9 Seg16.relationLc1020Part10 Seg16.relationLc1020Part11 Seg16.relationLc1020Part12 at r5573
  unfold Seg16.relationRow5574 at r5574
  unfold Seg16.relationRow5575 Seg16.relationLc1021 Seg16.relationLc1021Part0 Seg16.relationLc1021Part1 Seg16.relationLc1021Part2 Seg16.relationLc1021Part3 Seg16.relationLc1021Part4 Seg16.relationLc1021Part5 Seg16.relationLc1021Part6 at r5575
  unfold Seg16.relationRow5576 Seg16.relationLc1022 Seg16.relationLc1022Part0 Seg16.relationLc1022Part1 Seg16.relationLc1022Part2 Seg16.relationLc1022Part3 Seg16.relationLc1022Part4 Seg16.relationLc1022Part5 Seg16.relationLc1022Part6 at r5576
  unfold Seg16.relationRow5577 at r5577
  unfold Seg16.relationRow5578 at r5578
  unfold Seg16.relationRow5579 at r5579
  unfold Seg16.relationRow5580 Seg16.relationLc1023 Seg16.relationLc1023Part0 Seg16.relationLc1023Part1 Seg16.relationLc1023Part2 Seg16.relationLc1023Part3 Seg16.relationLc1023Part4 Seg16.relationLc1023Part5 Seg16.relationLc1023Part6 at r5580
  unfold Seg16.relationRow5581 Seg16.relationLc1024 Seg16.relationLc1024Part0 Seg16.relationLc1024Part1 Seg16.relationLc1024Part2 Seg16.relationLc1024Part3 Seg16.relationLc1024Part4 Seg16.relationLc1024Part5 Seg16.relationLc1024Part6 at r5581
  unfold Seg16.relationRow5582 at r5582
  unfold Seg16.relationRow5583 at r5583
  unfold Seg16.relationRow5584 at r5584
  unfold Seg16.relationRow5585 at r5585
  unfold Seg16.relationRow5586 at r5586
  have hrung197 (bit : Bool) (hbit : rho 15489 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
        ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩
        ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
        ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩ := by
    have hsum : seg16AccX197 rho + seg16AccY197 rho = rho 18145 := by
      rw [seg16LadderFlatX197_eq, seg16LadderFlatY197_eq]
      unfold seg16LadderFlatX197 seg16LadderFlatY197
      linear_combination r5573
    have ha0 : (rho 18143 + rho 18144) * (seg16AccX197 rho + seg16AccY197 rho) = rho 18146 := by
      rw [hsum]
      linear_combination r5574
    have ha1 : rho 18144 * seg16AccX197 rho = rho 18147 := by
      rw [seg16LadderFlatX197_eq]
      unfold seg16LadderFlatX197
      linear_combination r5575
    have ha2 : rho 18143 * seg16AccY197 rho = rho 18148 := by
      rw [seg16LadderFlatY197_eq]
      unfold seg16LadderFlatY197
      linear_combination r5576
    have ha3 : 3021 * rho 18147 * rho 18148 = rho 18149 := by
      linear_combination r5577
    have ha4 : rho 18150 * (1 + rho 18149) = rho 18147 + rho 18148 := by
      linear_combination r5578
    have ha5 : rho 18151 * (1 - rho 18149) = rho 18146 - rho 18147 - rho 18148 := by
      linear_combination r5579
    have haddx :
        rho 18150 * (1 + 3021 * (rho 18144 * seg16AccX197 rho) * (rho 18143 * seg16AccY197 rho)) =
          rho 18144 * seg16AccX197 rho + rho 18143 * seg16AccY197 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18151 * (1 - 3021 * (rho 18144 * seg16AccX197 rho) * (rho 18143 * seg16AccY197 rho)) =
          (-1) * (rho 18144 * seg16AccX197 rho) - rho 18143 * seg16AccY197 rho +
            (seg16AccY197 rho - seg16AccX197 rho * (-1)) * (rho 18143 + rho 18144) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18151 * (1 - rho 18149) = rho 18146 - rho 18147 - rho 18148 := ha5
        _ = (-1) * rho 18147 - rho 18148 + (seg16AccY197 rho - seg16AccX197 rho * (-1)) * (rho 18143 + rho 18144) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX198 rho = seg16AccX197 rho - Bool.toZMod bit * (seg16AccX197 rho - rho 18150) := by
      have hd : rho 18152 = Bool.toZMod bit * (rho 18150 - seg16AccX197 rho) := by
        rw [← hbit, seg16LadderFlatX197_eq]
        unfold seg16LadderFlatX197
        linear_combination -r5580
      unfold seg16AccX198
      linear_combination hd
    have hsely : seg16AccY198 rho = seg16AccY197 rho - Bool.toZMod bit * (seg16AccY197 rho - rho 18151) := by
      have hd : rho 18153 = Bool.toZMod bit * (rho 18151 - seg16AccY197 rho) := by
        rw [← hbit, seg16LadderFlatY197_eq]
        unfold seg16LadderFlatY197
        linear_combination -r5581
      unfold seg16AccY198
      linear_combination hd
    have hd0 : rho 18143 * rho 18144 = rho 18154 := by linear_combination r5582
    have hd1 : rho 18143 * rho 18143 = rho 18155 := by linear_combination r5583
    have hd2 : rho 18144 * rho 18144 = rho 18156 := by linear_combination r5584
    have hd3 : rho 18157 * (rho 18144 * rho 18144 + rho 18143 * rho 18143 * (-1)) = 2 * (rho 18143 * rho 18144) := by
      rw [hd0, hd1, hd2]
      linear_combination r5585
    have hd4 : rho 18158 * (2 - (rho 18144 * rho 18144 + rho 18143 * rho 18143 * (-1))) = rho 18144 * rho 18144 - rho 18143 * rho 18143 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5586
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
      ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩
      ⟨(rho 18150 : Seg16.F), (rho 18151 : Seg16.F)⟩
      ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
      ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung197

theorem seg16_rung198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15490 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
        ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩
        ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
        ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨r5600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5587 Seg16.relationLc1025 Seg16.relationLc1025Part0 Seg16.relationLc1025Part1 Seg16.relationLc1025Part2 Seg16.relationLc1025Part3 Seg16.relationLc1025Part4 Seg16.relationLc1025Part5 Seg16.relationLc1025Part6 Seg16.relationLc1025Part7 Seg16.relationLc1025Part8 Seg16.relationLc1025Part9 Seg16.relationLc1025Part10 Seg16.relationLc1025Part11 Seg16.relationLc1025Part12 at r5587
  unfold Seg16.relationRow5588 at r5588
  unfold Seg16.relationRow5589 Seg16.relationLc1026 Seg16.relationLc1026Part0 Seg16.relationLc1026Part1 Seg16.relationLc1026Part2 Seg16.relationLc1026Part3 Seg16.relationLc1026Part4 Seg16.relationLc1026Part5 Seg16.relationLc1026Part6 at r5589
  unfold Seg16.relationRow5590 Seg16.relationLc1027 Seg16.relationLc1027Part0 Seg16.relationLc1027Part1 Seg16.relationLc1027Part2 Seg16.relationLc1027Part3 Seg16.relationLc1027Part4 Seg16.relationLc1027Part5 Seg16.relationLc1027Part6 at r5590
  unfold Seg16.relationRow5591 at r5591
  unfold Seg16.relationRow5592 at r5592
  unfold Seg16.relationRow5593 at r5593
  unfold Seg16.relationRow5594 Seg16.relationLc1028 Seg16.relationLc1028Part0 Seg16.relationLc1028Part1 Seg16.relationLc1028Part2 Seg16.relationLc1028Part3 Seg16.relationLc1028Part4 Seg16.relationLc1028Part5 Seg16.relationLc1028Part6 at r5594
  unfold Seg16.relationRow5595 Seg16.relationLc1029 Seg16.relationLc1029Part0 Seg16.relationLc1029Part1 Seg16.relationLc1029Part2 Seg16.relationLc1029Part3 Seg16.relationLc1029Part4 Seg16.relationLc1029Part5 Seg16.relationLc1029Part6 at r5595
  unfold Seg16.relationRow5596 at r5596
  unfold Seg16.relationRow5597 at r5597
  unfold Seg16.relationRow5598 at r5598
  unfold Seg16.relationRow5599 at r5599
  unfold Seg16.relationRow5600 at r5600
  have hrung198 (bit : Bool) (hbit : rho 15490 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
        ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩
        ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
        ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩ := by
    have hsum : seg16AccX198 rho + seg16AccY198 rho = rho 18159 := by
      rw [seg16LadderFlatX198_eq, seg16LadderFlatY198_eq]
      unfold seg16LadderFlatX198 seg16LadderFlatY198
      linear_combination r5587
    have ha0 : (rho 18157 + rho 18158) * (seg16AccX198 rho + seg16AccY198 rho) = rho 18160 := by
      rw [hsum]
      linear_combination r5588
    have ha1 : rho 18158 * seg16AccX198 rho = rho 18161 := by
      rw [seg16LadderFlatX198_eq]
      unfold seg16LadderFlatX198
      linear_combination r5589
    have ha2 : rho 18157 * seg16AccY198 rho = rho 18162 := by
      rw [seg16LadderFlatY198_eq]
      unfold seg16LadderFlatY198
      linear_combination r5590
    have ha3 : 3021 * rho 18161 * rho 18162 = rho 18163 := by
      linear_combination r5591
    have ha4 : rho 18164 * (1 + rho 18163) = rho 18161 + rho 18162 := by
      linear_combination r5592
    have ha5 : rho 18165 * (1 - rho 18163) = rho 18160 - rho 18161 - rho 18162 := by
      linear_combination r5593
    have haddx :
        rho 18164 * (1 + 3021 * (rho 18158 * seg16AccX198 rho) * (rho 18157 * seg16AccY198 rho)) =
          rho 18158 * seg16AccX198 rho + rho 18157 * seg16AccY198 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18165 * (1 - 3021 * (rho 18158 * seg16AccX198 rho) * (rho 18157 * seg16AccY198 rho)) =
          (-1) * (rho 18158 * seg16AccX198 rho) - rho 18157 * seg16AccY198 rho +
            (seg16AccY198 rho - seg16AccX198 rho * (-1)) * (rho 18157 + rho 18158) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18165 * (1 - rho 18163) = rho 18160 - rho 18161 - rho 18162 := ha5
        _ = (-1) * rho 18161 - rho 18162 + (seg16AccY198 rho - seg16AccX198 rho * (-1)) * (rho 18157 + rho 18158) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX199 rho = seg16AccX198 rho - Bool.toZMod bit * (seg16AccX198 rho - rho 18164) := by
      have hd : rho 18166 = Bool.toZMod bit * (rho 18164 - seg16AccX198 rho) := by
        rw [← hbit, seg16LadderFlatX198_eq]
        unfold seg16LadderFlatX198
        linear_combination -r5594
      unfold seg16AccX199
      linear_combination hd
    have hsely : seg16AccY199 rho = seg16AccY198 rho - Bool.toZMod bit * (seg16AccY198 rho - rho 18165) := by
      have hd : rho 18167 = Bool.toZMod bit * (rho 18165 - seg16AccY198 rho) := by
        rw [← hbit, seg16LadderFlatY198_eq]
        unfold seg16LadderFlatY198
        linear_combination -r5595
      unfold seg16AccY199
      linear_combination hd
    have hd0 : rho 18157 * rho 18158 = rho 18168 := by linear_combination r5596
    have hd1 : rho 18157 * rho 18157 = rho 18169 := by linear_combination r5597
    have hd2 : rho 18158 * rho 18158 = rho 18170 := by linear_combination r5598
    have hd3 : rho 18171 * (rho 18158 * rho 18158 + rho 18157 * rho 18157 * (-1)) = 2 * (rho 18157 * rho 18158) := by
      rw [hd0, hd1, hd2]
      linear_combination r5599
    have hd4 : rho 18172 * (2 - (rho 18158 * rho 18158 + rho 18157 * rho 18157 * (-1))) = rho 18158 * rho 18158 - rho 18157 * rho 18157 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5600
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
      ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩
      ⟨(rho 18164 : Seg16.F), (rho 18165 : Seg16.F)⟩
      ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
      ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung198

theorem seg16_rung199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15491 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
        ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩
        ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
        ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5601 Seg16.relationLc1030 Seg16.relationLc1030Part0 Seg16.relationLc1030Part1 Seg16.relationLc1030Part2 Seg16.relationLc1030Part3 Seg16.relationLc1030Part4 Seg16.relationLc1030Part5 Seg16.relationLc1030Part6 Seg16.relationLc1030Part7 Seg16.relationLc1030Part8 Seg16.relationLc1030Part9 Seg16.relationLc1030Part10 Seg16.relationLc1030Part11 Seg16.relationLc1030Part12 at r5601
  unfold Seg16.relationRow5602 at r5602
  unfold Seg16.relationRow5603 Seg16.relationLc1031 Seg16.relationLc1031Part0 Seg16.relationLc1031Part1 Seg16.relationLc1031Part2 Seg16.relationLc1031Part3 Seg16.relationLc1031Part4 Seg16.relationLc1031Part5 Seg16.relationLc1031Part6 at r5603
  unfold Seg16.relationRow5604 Seg16.relationLc1032 Seg16.relationLc1032Part0 Seg16.relationLc1032Part1 Seg16.relationLc1032Part2 Seg16.relationLc1032Part3 Seg16.relationLc1032Part4 Seg16.relationLc1032Part5 Seg16.relationLc1032Part6 at r5604
  unfold Seg16.relationRow5605 at r5605
  unfold Seg16.relationRow5606 at r5606
  unfold Seg16.relationRow5607 at r5607
  unfold Seg16.relationRow5608 Seg16.relationLc1033 Seg16.relationLc1033Part0 Seg16.relationLc1033Part1 Seg16.relationLc1033Part2 Seg16.relationLc1033Part3 Seg16.relationLc1033Part4 Seg16.relationLc1033Part5 Seg16.relationLc1033Part6 at r5608
  unfold Seg16.relationRow5609 Seg16.relationLc1034 Seg16.relationLc1034Part0 Seg16.relationLc1034Part1 Seg16.relationLc1034Part2 Seg16.relationLc1034Part3 Seg16.relationLc1034Part4 Seg16.relationLc1034Part5 Seg16.relationLc1034Part6 at r5609
  unfold Seg16.relationRow5610 at r5610
  unfold Seg16.relationRow5611 at r5611
  unfold Seg16.relationRow5612 at r5612
  unfold Seg16.relationRow5613 at r5613
  unfold Seg16.relationRow5614 at r5614
  have hrung199 (bit : Bool) (hbit : rho 15491 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
        ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩
        ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
        ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩ := by
    have hsum : seg16AccX199 rho + seg16AccY199 rho = rho 18173 := by
      rw [seg16LadderFlatX199_eq, seg16LadderFlatY199_eq]
      unfold seg16LadderFlatX199 seg16LadderFlatY199
      linear_combination r5601
    have ha0 : (rho 18171 + rho 18172) * (seg16AccX199 rho + seg16AccY199 rho) = rho 18174 := by
      rw [hsum]
      linear_combination r5602
    have ha1 : rho 18172 * seg16AccX199 rho = rho 18175 := by
      rw [seg16LadderFlatX199_eq]
      unfold seg16LadderFlatX199
      linear_combination r5603
    have ha2 : rho 18171 * seg16AccY199 rho = rho 18176 := by
      rw [seg16LadderFlatY199_eq]
      unfold seg16LadderFlatY199
      linear_combination r5604
    have ha3 : 3021 * rho 18175 * rho 18176 = rho 18177 := by
      linear_combination r5605
    have ha4 : rho 18178 * (1 + rho 18177) = rho 18175 + rho 18176 := by
      linear_combination r5606
    have ha5 : rho 18179 * (1 - rho 18177) = rho 18174 - rho 18175 - rho 18176 := by
      linear_combination r5607
    have haddx :
        rho 18178 * (1 + 3021 * (rho 18172 * seg16AccX199 rho) * (rho 18171 * seg16AccY199 rho)) =
          rho 18172 * seg16AccX199 rho + rho 18171 * seg16AccY199 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18179 * (1 - 3021 * (rho 18172 * seg16AccX199 rho) * (rho 18171 * seg16AccY199 rho)) =
          (-1) * (rho 18172 * seg16AccX199 rho) - rho 18171 * seg16AccY199 rho +
            (seg16AccY199 rho - seg16AccX199 rho * (-1)) * (rho 18171 + rho 18172) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18179 * (1 - rho 18177) = rho 18174 - rho 18175 - rho 18176 := ha5
        _ = (-1) * rho 18175 - rho 18176 + (seg16AccY199 rho - seg16AccX199 rho * (-1)) * (rho 18171 + rho 18172) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX200 rho = seg16AccX199 rho - Bool.toZMod bit * (seg16AccX199 rho - rho 18178) := by
      have hd : rho 18180 = Bool.toZMod bit * (rho 18178 - seg16AccX199 rho) := by
        rw [← hbit, seg16LadderFlatX199_eq]
        unfold seg16LadderFlatX199
        linear_combination -r5608
      unfold seg16AccX200
      linear_combination hd
    have hsely : seg16AccY200 rho = seg16AccY199 rho - Bool.toZMod bit * (seg16AccY199 rho - rho 18179) := by
      have hd : rho 18181 = Bool.toZMod bit * (rho 18179 - seg16AccY199 rho) := by
        rw [← hbit, seg16LadderFlatY199_eq]
        unfold seg16LadderFlatY199
        linear_combination -r5609
      unfold seg16AccY200
      linear_combination hd
    have hd0 : rho 18171 * rho 18172 = rho 18182 := by linear_combination r5610
    have hd1 : rho 18171 * rho 18171 = rho 18183 := by linear_combination r5611
    have hd2 : rho 18172 * rho 18172 = rho 18184 := by linear_combination r5612
    have hd3 : rho 18185 * (rho 18172 * rho 18172 + rho 18171 * rho 18171 * (-1)) = 2 * (rho 18171 * rho 18172) := by
      rw [hd0, hd1, hd2]
      linear_combination r5613
    have hd4 : rho 18186 * (2 - (rho 18172 * rho 18172 + rho 18171 * rho 18171 * (-1))) = rho 18172 * rho 18172 - rho 18171 * rho 18171 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5614
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX199 rho : Seg16.F), (seg16AccY199 rho : Seg16.F)⟩
      ⟨(rho 18171 : Seg16.F), (rho 18172 : Seg16.F)⟩
      ⟨(rho 18178 : Seg16.F), (rho 18179 : Seg16.F)⟩
      ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
      ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung199

theorem seg16_rung200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15492 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
        ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩
        ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
        ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5615 Seg16.relationLc1035 Seg16.relationLc1035Part0 Seg16.relationLc1035Part1 Seg16.relationLc1035Part2 Seg16.relationLc1035Part3 Seg16.relationLc1035Part4 Seg16.relationLc1035Part5 Seg16.relationLc1035Part6 Seg16.relationLc1035Part7 Seg16.relationLc1035Part8 Seg16.relationLc1035Part9 Seg16.relationLc1035Part10 Seg16.relationLc1035Part11 Seg16.relationLc1035Part12 at r5615
  unfold Seg16.relationRow5616 at r5616
  unfold Seg16.relationRow5617 Seg16.relationLc1036 Seg16.relationLc1036Part0 Seg16.relationLc1036Part1 Seg16.relationLc1036Part2 Seg16.relationLc1036Part3 Seg16.relationLc1036Part4 Seg16.relationLc1036Part5 Seg16.relationLc1036Part6 at r5617
  unfold Seg16.relationRow5618 Seg16.relationLc1037 Seg16.relationLc1037Part0 Seg16.relationLc1037Part1 Seg16.relationLc1037Part2 Seg16.relationLc1037Part3 Seg16.relationLc1037Part4 Seg16.relationLc1037Part5 Seg16.relationLc1037Part6 at r5618
  unfold Seg16.relationRow5619 at r5619
  unfold Seg16.relationRow5620 at r5620
  unfold Seg16.relationRow5621 at r5621
  unfold Seg16.relationRow5622 Seg16.relationLc1038 Seg16.relationLc1038Part0 Seg16.relationLc1038Part1 Seg16.relationLc1038Part2 Seg16.relationLc1038Part3 Seg16.relationLc1038Part4 Seg16.relationLc1038Part5 Seg16.relationLc1038Part6 at r5622
  unfold Seg16.relationRow5623 Seg16.relationLc1039 Seg16.relationLc1039Part0 Seg16.relationLc1039Part1 Seg16.relationLc1039Part2 Seg16.relationLc1039Part3 Seg16.relationLc1039Part4 Seg16.relationLc1039Part5 Seg16.relationLc1039Part6 at r5623
  unfold Seg16.relationRow5624 at r5624
  unfold Seg16.relationRow5625 at r5625
  unfold Seg16.relationRow5626 at r5626
  unfold Seg16.relationRow5627 at r5627
  unfold Seg16.relationRow5628 at r5628
  have hrung200 (bit : Bool) (hbit : rho 15492 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
        ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩
        ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
        ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩ := by
    have hsum : seg16AccX200 rho + seg16AccY200 rho = rho 18187 := by
      rw [seg16LadderFlatX200_eq, seg16LadderFlatY200_eq]
      unfold seg16LadderFlatX200 seg16LadderFlatY200
      linear_combination r5615
    have ha0 : (rho 18185 + rho 18186) * (seg16AccX200 rho + seg16AccY200 rho) = rho 18188 := by
      rw [hsum]
      linear_combination r5616
    have ha1 : rho 18186 * seg16AccX200 rho = rho 18189 := by
      rw [seg16LadderFlatX200_eq]
      unfold seg16LadderFlatX200
      linear_combination r5617
    have ha2 : rho 18185 * seg16AccY200 rho = rho 18190 := by
      rw [seg16LadderFlatY200_eq]
      unfold seg16LadderFlatY200
      linear_combination r5618
    have ha3 : 3021 * rho 18189 * rho 18190 = rho 18191 := by
      linear_combination r5619
    have ha4 : rho 18192 * (1 + rho 18191) = rho 18189 + rho 18190 := by
      linear_combination r5620
    have ha5 : rho 18193 * (1 - rho 18191) = rho 18188 - rho 18189 - rho 18190 := by
      linear_combination r5621
    have haddx :
        rho 18192 * (1 + 3021 * (rho 18186 * seg16AccX200 rho) * (rho 18185 * seg16AccY200 rho)) =
          rho 18186 * seg16AccX200 rho + rho 18185 * seg16AccY200 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18193 * (1 - 3021 * (rho 18186 * seg16AccX200 rho) * (rho 18185 * seg16AccY200 rho)) =
          (-1) * (rho 18186 * seg16AccX200 rho) - rho 18185 * seg16AccY200 rho +
            (seg16AccY200 rho - seg16AccX200 rho * (-1)) * (rho 18185 + rho 18186) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18193 * (1 - rho 18191) = rho 18188 - rho 18189 - rho 18190 := ha5
        _ = (-1) * rho 18189 - rho 18190 + (seg16AccY200 rho - seg16AccX200 rho * (-1)) * (rho 18185 + rho 18186) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX201 rho = seg16AccX200 rho - Bool.toZMod bit * (seg16AccX200 rho - rho 18192) := by
      have hd : rho 18194 = Bool.toZMod bit * (rho 18192 - seg16AccX200 rho) := by
        rw [← hbit, seg16LadderFlatX200_eq]
        unfold seg16LadderFlatX200
        linear_combination -r5622
      unfold seg16AccX201
      linear_combination hd
    have hsely : seg16AccY201 rho = seg16AccY200 rho - Bool.toZMod bit * (seg16AccY200 rho - rho 18193) := by
      have hd : rho 18195 = Bool.toZMod bit * (rho 18193 - seg16AccY200 rho) := by
        rw [← hbit, seg16LadderFlatY200_eq]
        unfold seg16LadderFlatY200
        linear_combination -r5623
      unfold seg16AccY201
      linear_combination hd
    have hd0 : rho 18185 * rho 18186 = rho 18196 := by linear_combination r5624
    have hd1 : rho 18185 * rho 18185 = rho 18197 := by linear_combination r5625
    have hd2 : rho 18186 * rho 18186 = rho 18198 := by linear_combination r5626
    have hd3 : rho 18199 * (rho 18186 * rho 18186 + rho 18185 * rho 18185 * (-1)) = 2 * (rho 18185 * rho 18186) := by
      rw [hd0, hd1, hd2]
      linear_combination r5627
    have hd4 : rho 18200 * (2 - (rho 18186 * rho 18186 + rho 18185 * rho 18185 * (-1))) = rho 18186 * rho 18186 - rho 18185 * rho 18185 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX200 rho : Seg16.F), (seg16AccY200 rho : Seg16.F)⟩
      ⟨(rho 18185 : Seg16.F), (rho 18186 : Seg16.F)⟩
      ⟨(rho 18192 : Seg16.F), (rho 18193 : Seg16.F)⟩
      ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
      ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung200

theorem seg16_rung201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15493 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
        ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩
        ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
        ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5629 Seg16.relationLc1040 Seg16.relationLc1040Part0 Seg16.relationLc1040Part1 Seg16.relationLc1040Part2 Seg16.relationLc1040Part3 Seg16.relationLc1040Part4 Seg16.relationLc1040Part5 Seg16.relationLc1040Part6 Seg16.relationLc1040Part7 Seg16.relationLc1040Part8 Seg16.relationLc1040Part9 Seg16.relationLc1040Part10 Seg16.relationLc1040Part11 Seg16.relationLc1040Part12 at r5629
  unfold Seg16.relationRow5630 at r5630
  unfold Seg16.relationRow5631 Seg16.relationLc1041 Seg16.relationLc1041Part0 Seg16.relationLc1041Part1 Seg16.relationLc1041Part2 Seg16.relationLc1041Part3 Seg16.relationLc1041Part4 Seg16.relationLc1041Part5 Seg16.relationLc1041Part6 at r5631
  unfold Seg16.relationRow5632 Seg16.relationLc1042 Seg16.relationLc1042Part0 Seg16.relationLc1042Part1 Seg16.relationLc1042Part2 Seg16.relationLc1042Part3 Seg16.relationLc1042Part4 Seg16.relationLc1042Part5 Seg16.relationLc1042Part6 at r5632
  unfold Seg16.relationRow5633 at r5633
  unfold Seg16.relationRow5634 at r5634
  unfold Seg16.relationRow5635 at r5635
  unfold Seg16.relationRow5636 Seg16.relationLc1043 Seg16.relationLc1043Part0 Seg16.relationLc1043Part1 Seg16.relationLc1043Part2 Seg16.relationLc1043Part3 Seg16.relationLc1043Part4 Seg16.relationLc1043Part5 Seg16.relationLc1043Part6 at r5636
  unfold Seg16.relationRow5637 Seg16.relationLc1044 Seg16.relationLc1044Part0 Seg16.relationLc1044Part1 Seg16.relationLc1044Part2 Seg16.relationLc1044Part3 Seg16.relationLc1044Part4 Seg16.relationLc1044Part5 Seg16.relationLc1044Part6 at r5637
  unfold Seg16.relationRow5638 at r5638
  unfold Seg16.relationRow5639 at r5639
  unfold Seg16.relationRow5640 at r5640
  unfold Seg16.relationRow5641 at r5641
  unfold Seg16.relationRow5642 at r5642
  have hrung201 (bit : Bool) (hbit : rho 15493 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
        ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩
        ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
        ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩ := by
    have hsum : seg16AccX201 rho + seg16AccY201 rho = rho 18201 := by
      rw [seg16LadderFlatX201_eq, seg16LadderFlatY201_eq]
      unfold seg16LadderFlatX201 seg16LadderFlatY201
      linear_combination r5629
    have ha0 : (rho 18199 + rho 18200) * (seg16AccX201 rho + seg16AccY201 rho) = rho 18202 := by
      rw [hsum]
      linear_combination r5630
    have ha1 : rho 18200 * seg16AccX201 rho = rho 18203 := by
      rw [seg16LadderFlatX201_eq]
      unfold seg16LadderFlatX201
      linear_combination r5631
    have ha2 : rho 18199 * seg16AccY201 rho = rho 18204 := by
      rw [seg16LadderFlatY201_eq]
      unfold seg16LadderFlatY201
      linear_combination r5632
    have ha3 : 3021 * rho 18203 * rho 18204 = rho 18205 := by
      linear_combination r5633
    have ha4 : rho 18206 * (1 + rho 18205) = rho 18203 + rho 18204 := by
      linear_combination r5634
    have ha5 : rho 18207 * (1 - rho 18205) = rho 18202 - rho 18203 - rho 18204 := by
      linear_combination r5635
    have haddx :
        rho 18206 * (1 + 3021 * (rho 18200 * seg16AccX201 rho) * (rho 18199 * seg16AccY201 rho)) =
          rho 18200 * seg16AccX201 rho + rho 18199 * seg16AccY201 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18207 * (1 - 3021 * (rho 18200 * seg16AccX201 rho) * (rho 18199 * seg16AccY201 rho)) =
          (-1) * (rho 18200 * seg16AccX201 rho) - rho 18199 * seg16AccY201 rho +
            (seg16AccY201 rho - seg16AccX201 rho * (-1)) * (rho 18199 + rho 18200) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18207 * (1 - rho 18205) = rho 18202 - rho 18203 - rho 18204 := ha5
        _ = (-1) * rho 18203 - rho 18204 + (seg16AccY201 rho - seg16AccX201 rho * (-1)) * (rho 18199 + rho 18200) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX202 rho = seg16AccX201 rho - Bool.toZMod bit * (seg16AccX201 rho - rho 18206) := by
      have hd : rho 18208 = Bool.toZMod bit * (rho 18206 - seg16AccX201 rho) := by
        rw [← hbit, seg16LadderFlatX201_eq]
        unfold seg16LadderFlatX201
        linear_combination -r5636
      unfold seg16AccX202
      linear_combination hd
    have hsely : seg16AccY202 rho = seg16AccY201 rho - Bool.toZMod bit * (seg16AccY201 rho - rho 18207) := by
      have hd : rho 18209 = Bool.toZMod bit * (rho 18207 - seg16AccY201 rho) := by
        rw [← hbit, seg16LadderFlatY201_eq]
        unfold seg16LadderFlatY201
        linear_combination -r5637
      unfold seg16AccY202
      linear_combination hd
    have hd0 : rho 18199 * rho 18200 = rho 18210 := by linear_combination r5638
    have hd1 : rho 18199 * rho 18199 = rho 18211 := by linear_combination r5639
    have hd2 : rho 18200 * rho 18200 = rho 18212 := by linear_combination r5640
    have hd3 : rho 18213 * (rho 18200 * rho 18200 + rho 18199 * rho 18199 * (-1)) = 2 * (rho 18199 * rho 18200) := by
      rw [hd0, hd1, hd2]
      linear_combination r5641
    have hd4 : rho 18214 * (2 - (rho 18200 * rho 18200 + rho 18199 * rho 18199 * (-1))) = rho 18200 * rho 18200 - rho 18199 * rho 18199 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5642
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX201 rho : Seg16.F), (seg16AccY201 rho : Seg16.F)⟩
      ⟨(rho 18199 : Seg16.F), (rho 18200 : Seg16.F)⟩
      ⟨(rho 18206 : Seg16.F), (rho 18207 : Seg16.F)⟩
      ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
      ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung201

theorem seg16_rung202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15494 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
        ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩
        ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
        ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5643 Seg16.relationLc1045 Seg16.relationLc1045Part0 Seg16.relationLc1045Part1 Seg16.relationLc1045Part2 Seg16.relationLc1045Part3 Seg16.relationLc1045Part4 Seg16.relationLc1045Part5 Seg16.relationLc1045Part6 Seg16.relationLc1045Part7 Seg16.relationLc1045Part8 Seg16.relationLc1045Part9 Seg16.relationLc1045Part10 Seg16.relationLc1045Part11 Seg16.relationLc1045Part12 at r5643
  unfold Seg16.relationRow5644 at r5644
  unfold Seg16.relationRow5645 Seg16.relationLc1046 Seg16.relationLc1046Part0 Seg16.relationLc1046Part1 Seg16.relationLc1046Part2 Seg16.relationLc1046Part3 Seg16.relationLc1046Part4 Seg16.relationLc1046Part5 Seg16.relationLc1046Part6 at r5645
  unfold Seg16.relationRow5646 Seg16.relationLc1047 Seg16.relationLc1047Part0 Seg16.relationLc1047Part1 Seg16.relationLc1047Part2 Seg16.relationLc1047Part3 Seg16.relationLc1047Part4 Seg16.relationLc1047Part5 Seg16.relationLc1047Part6 at r5646
  unfold Seg16.relationRow5647 at r5647
  unfold Seg16.relationRow5648 at r5648
  unfold Seg16.relationRow5649 at r5649
  unfold Seg16.relationRow5650 Seg16.relationLc1048 Seg16.relationLc1048Part0 Seg16.relationLc1048Part1 Seg16.relationLc1048Part2 Seg16.relationLc1048Part3 Seg16.relationLc1048Part4 Seg16.relationLc1048Part5 Seg16.relationLc1048Part6 at r5650
  unfold Seg16.relationRow5651 Seg16.relationLc1049 Seg16.relationLc1049Part0 Seg16.relationLc1049Part1 Seg16.relationLc1049Part2 Seg16.relationLc1049Part3 Seg16.relationLc1049Part4 Seg16.relationLc1049Part5 Seg16.relationLc1049Part6 at r5651
  unfold Seg16.relationRow5652 at r5652
  unfold Seg16.relationRow5653 at r5653
  unfold Seg16.relationRow5654 at r5654
  unfold Seg16.relationRow5655 at r5655
  unfold Seg16.relationRow5656 at r5656
  have hrung202 (bit : Bool) (hbit : rho 15494 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
        ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩
        ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
        ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩ := by
    have hsum : seg16AccX202 rho + seg16AccY202 rho = rho 18215 := by
      rw [seg16LadderFlatX202_eq, seg16LadderFlatY202_eq]
      unfold seg16LadderFlatX202 seg16LadderFlatY202
      linear_combination r5643
    have ha0 : (rho 18213 + rho 18214) * (seg16AccX202 rho + seg16AccY202 rho) = rho 18216 := by
      rw [hsum]
      linear_combination r5644
    have ha1 : rho 18214 * seg16AccX202 rho = rho 18217 := by
      rw [seg16LadderFlatX202_eq]
      unfold seg16LadderFlatX202
      linear_combination r5645
    have ha2 : rho 18213 * seg16AccY202 rho = rho 18218 := by
      rw [seg16LadderFlatY202_eq]
      unfold seg16LadderFlatY202
      linear_combination r5646
    have ha3 : 3021 * rho 18217 * rho 18218 = rho 18219 := by
      linear_combination r5647
    have ha4 : rho 18220 * (1 + rho 18219) = rho 18217 + rho 18218 := by
      linear_combination r5648
    have ha5 : rho 18221 * (1 - rho 18219) = rho 18216 - rho 18217 - rho 18218 := by
      linear_combination r5649
    have haddx :
        rho 18220 * (1 + 3021 * (rho 18214 * seg16AccX202 rho) * (rho 18213 * seg16AccY202 rho)) =
          rho 18214 * seg16AccX202 rho + rho 18213 * seg16AccY202 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18221 * (1 - 3021 * (rho 18214 * seg16AccX202 rho) * (rho 18213 * seg16AccY202 rho)) =
          (-1) * (rho 18214 * seg16AccX202 rho) - rho 18213 * seg16AccY202 rho +
            (seg16AccY202 rho - seg16AccX202 rho * (-1)) * (rho 18213 + rho 18214) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18221 * (1 - rho 18219) = rho 18216 - rho 18217 - rho 18218 := ha5
        _ = (-1) * rho 18217 - rho 18218 + (seg16AccY202 rho - seg16AccX202 rho * (-1)) * (rho 18213 + rho 18214) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX203 rho = seg16AccX202 rho - Bool.toZMod bit * (seg16AccX202 rho - rho 18220) := by
      have hd : rho 18222 = Bool.toZMod bit * (rho 18220 - seg16AccX202 rho) := by
        rw [← hbit, seg16LadderFlatX202_eq]
        unfold seg16LadderFlatX202
        linear_combination -r5650
      unfold seg16AccX203
      linear_combination hd
    have hsely : seg16AccY203 rho = seg16AccY202 rho - Bool.toZMod bit * (seg16AccY202 rho - rho 18221) := by
      have hd : rho 18223 = Bool.toZMod bit * (rho 18221 - seg16AccY202 rho) := by
        rw [← hbit, seg16LadderFlatY202_eq]
        unfold seg16LadderFlatY202
        linear_combination -r5651
      unfold seg16AccY203
      linear_combination hd
    have hd0 : rho 18213 * rho 18214 = rho 18224 := by linear_combination r5652
    have hd1 : rho 18213 * rho 18213 = rho 18225 := by linear_combination r5653
    have hd2 : rho 18214 * rho 18214 = rho 18226 := by linear_combination r5654
    have hd3 : rho 18227 * (rho 18214 * rho 18214 + rho 18213 * rho 18213 * (-1)) = 2 * (rho 18213 * rho 18214) := by
      rw [hd0, hd1, hd2]
      linear_combination r5655
    have hd4 : rho 18228 * (2 - (rho 18214 * rho 18214 + rho 18213 * rho 18213 * (-1))) = rho 18214 * rho 18214 - rho 18213 * rho 18213 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5656
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX202 rho : Seg16.F), (seg16AccY202 rho : Seg16.F)⟩
      ⟨(rho 18213 : Seg16.F), (rho 18214 : Seg16.F)⟩
      ⟨(rho 18220 : Seg16.F), (rho 18221 : Seg16.F)⟩
      ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
      ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung202

theorem seg16_rung203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15495 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
        ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩
        ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
        ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5657 Seg16.relationLc1050 Seg16.relationLc1050Part0 Seg16.relationLc1050Part1 Seg16.relationLc1050Part2 Seg16.relationLc1050Part3 Seg16.relationLc1050Part4 Seg16.relationLc1050Part5 Seg16.relationLc1050Part6 Seg16.relationLc1050Part7 Seg16.relationLc1050Part8 Seg16.relationLc1050Part9 Seg16.relationLc1050Part10 Seg16.relationLc1050Part11 Seg16.relationLc1050Part12 at r5657
  unfold Seg16.relationRow5658 at r5658
  unfold Seg16.relationRow5659 Seg16.relationLc1051 Seg16.relationLc1051Part0 Seg16.relationLc1051Part1 Seg16.relationLc1051Part2 Seg16.relationLc1051Part3 Seg16.relationLc1051Part4 Seg16.relationLc1051Part5 Seg16.relationLc1051Part6 at r5659
  unfold Seg16.relationRow5660 Seg16.relationLc1052 Seg16.relationLc1052Part0 Seg16.relationLc1052Part1 Seg16.relationLc1052Part2 Seg16.relationLc1052Part3 Seg16.relationLc1052Part4 Seg16.relationLc1052Part5 Seg16.relationLc1052Part6 at r5660
  unfold Seg16.relationRow5661 at r5661
  unfold Seg16.relationRow5662 at r5662
  unfold Seg16.relationRow5663 at r5663
  unfold Seg16.relationRow5664 Seg16.relationLc1053 Seg16.relationLc1053Part0 Seg16.relationLc1053Part1 Seg16.relationLc1053Part2 Seg16.relationLc1053Part3 Seg16.relationLc1053Part4 Seg16.relationLc1053Part5 Seg16.relationLc1053Part6 at r5664
  unfold Seg16.relationRow5665 Seg16.relationLc1054 Seg16.relationLc1054Part0 Seg16.relationLc1054Part1 Seg16.relationLc1054Part2 Seg16.relationLc1054Part3 Seg16.relationLc1054Part4 Seg16.relationLc1054Part5 Seg16.relationLc1054Part6 at r5665
  unfold Seg16.relationRow5666 at r5666
  unfold Seg16.relationRow5667 at r5667
  unfold Seg16.relationRow5668 at r5668
  unfold Seg16.relationRow5669 at r5669
  unfold Seg16.relationRow5670 at r5670
  have hrung203 (bit : Bool) (hbit : rho 15495 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
        ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩
        ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
        ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩ := by
    have hsum : seg16AccX203 rho + seg16AccY203 rho = rho 18229 := by
      rw [seg16LadderFlatX203_eq, seg16LadderFlatY203_eq]
      unfold seg16LadderFlatX203 seg16LadderFlatY203
      linear_combination r5657
    have ha0 : (rho 18227 + rho 18228) * (seg16AccX203 rho + seg16AccY203 rho) = rho 18230 := by
      rw [hsum]
      linear_combination r5658
    have ha1 : rho 18228 * seg16AccX203 rho = rho 18231 := by
      rw [seg16LadderFlatX203_eq]
      unfold seg16LadderFlatX203
      linear_combination r5659
    have ha2 : rho 18227 * seg16AccY203 rho = rho 18232 := by
      rw [seg16LadderFlatY203_eq]
      unfold seg16LadderFlatY203
      linear_combination r5660
    have ha3 : 3021 * rho 18231 * rho 18232 = rho 18233 := by
      linear_combination r5661
    have ha4 : rho 18234 * (1 + rho 18233) = rho 18231 + rho 18232 := by
      linear_combination r5662
    have ha5 : rho 18235 * (1 - rho 18233) = rho 18230 - rho 18231 - rho 18232 := by
      linear_combination r5663
    have haddx :
        rho 18234 * (1 + 3021 * (rho 18228 * seg16AccX203 rho) * (rho 18227 * seg16AccY203 rho)) =
          rho 18228 * seg16AccX203 rho + rho 18227 * seg16AccY203 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18235 * (1 - 3021 * (rho 18228 * seg16AccX203 rho) * (rho 18227 * seg16AccY203 rho)) =
          (-1) * (rho 18228 * seg16AccX203 rho) - rho 18227 * seg16AccY203 rho +
            (seg16AccY203 rho - seg16AccX203 rho * (-1)) * (rho 18227 + rho 18228) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18235 * (1 - rho 18233) = rho 18230 - rho 18231 - rho 18232 := ha5
        _ = (-1) * rho 18231 - rho 18232 + (seg16AccY203 rho - seg16AccX203 rho * (-1)) * (rho 18227 + rho 18228) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX204 rho = seg16AccX203 rho - Bool.toZMod bit * (seg16AccX203 rho - rho 18234) := by
      have hd : rho 18236 = Bool.toZMod bit * (rho 18234 - seg16AccX203 rho) := by
        rw [← hbit, seg16LadderFlatX203_eq]
        unfold seg16LadderFlatX203
        linear_combination -r5664
      unfold seg16AccX204
      linear_combination hd
    have hsely : seg16AccY204 rho = seg16AccY203 rho - Bool.toZMod bit * (seg16AccY203 rho - rho 18235) := by
      have hd : rho 18237 = Bool.toZMod bit * (rho 18235 - seg16AccY203 rho) := by
        rw [← hbit, seg16LadderFlatY203_eq]
        unfold seg16LadderFlatY203
        linear_combination -r5665
      unfold seg16AccY204
      linear_combination hd
    have hd0 : rho 18227 * rho 18228 = rho 18238 := by linear_combination r5666
    have hd1 : rho 18227 * rho 18227 = rho 18239 := by linear_combination r5667
    have hd2 : rho 18228 * rho 18228 = rho 18240 := by linear_combination r5668
    have hd3 : rho 18241 * (rho 18228 * rho 18228 + rho 18227 * rho 18227 * (-1)) = 2 * (rho 18227 * rho 18228) := by
      rw [hd0, hd1, hd2]
      linear_combination r5669
    have hd4 : rho 18242 * (2 - (rho 18228 * rho 18228 + rho 18227 * rho 18227 * (-1))) = rho 18228 * rho 18228 - rho 18227 * rho 18227 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5670
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX203 rho : Seg16.F), (seg16AccY203 rho : Seg16.F)⟩
      ⟨(rho 18227 : Seg16.F), (rho 18228 : Seg16.F)⟩
      ⟨(rho 18234 : Seg16.F), (rho 18235 : Seg16.F)⟩
      ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
      ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung203

theorem seg16_rung204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15496 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
        ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩
        ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
        ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5671 Seg16.relationLc1055 Seg16.relationLc1055Part0 Seg16.relationLc1055Part1 Seg16.relationLc1055Part2 Seg16.relationLc1055Part3 Seg16.relationLc1055Part4 Seg16.relationLc1055Part5 Seg16.relationLc1055Part6 Seg16.relationLc1055Part7 Seg16.relationLc1055Part8 Seg16.relationLc1055Part9 Seg16.relationLc1055Part10 Seg16.relationLc1055Part11 Seg16.relationLc1055Part12 at r5671
  unfold Seg16.relationRow5672 at r5672
  unfold Seg16.relationRow5673 Seg16.relationLc1056 Seg16.relationLc1056Part0 Seg16.relationLc1056Part1 Seg16.relationLc1056Part2 Seg16.relationLc1056Part3 Seg16.relationLc1056Part4 Seg16.relationLc1056Part5 Seg16.relationLc1056Part6 at r5673
  unfold Seg16.relationRow5674 Seg16.relationLc1057 Seg16.relationLc1057Part0 Seg16.relationLc1057Part1 Seg16.relationLc1057Part2 Seg16.relationLc1057Part3 Seg16.relationLc1057Part4 Seg16.relationLc1057Part5 Seg16.relationLc1057Part6 at r5674
  unfold Seg16.relationRow5675 at r5675
  unfold Seg16.relationRow5676 at r5676
  unfold Seg16.relationRow5677 at r5677
  unfold Seg16.relationRow5678 Seg16.relationLc1058 Seg16.relationLc1058Part0 Seg16.relationLc1058Part1 Seg16.relationLc1058Part2 Seg16.relationLc1058Part3 Seg16.relationLc1058Part4 Seg16.relationLc1058Part5 Seg16.relationLc1058Part6 at r5678
  unfold Seg16.relationRow5679 Seg16.relationLc1059 Seg16.relationLc1059Part0 Seg16.relationLc1059Part1 Seg16.relationLc1059Part2 Seg16.relationLc1059Part3 Seg16.relationLc1059Part4 Seg16.relationLc1059Part5 Seg16.relationLc1059Part6 at r5679
  unfold Seg16.relationRow5680 at r5680
  unfold Seg16.relationRow5681 at r5681
  unfold Seg16.relationRow5682 at r5682
  unfold Seg16.relationRow5683 at r5683
  unfold Seg16.relationRow5684 at r5684
  have hrung204 (bit : Bool) (hbit : rho 15496 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
        ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩
        ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
        ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩ := by
    have hsum : seg16AccX204 rho + seg16AccY204 rho = rho 18243 := by
      rw [seg16LadderFlatX204_eq, seg16LadderFlatY204_eq]
      unfold seg16LadderFlatX204 seg16LadderFlatY204
      linear_combination r5671
    have ha0 : (rho 18241 + rho 18242) * (seg16AccX204 rho + seg16AccY204 rho) = rho 18244 := by
      rw [hsum]
      linear_combination r5672
    have ha1 : rho 18242 * seg16AccX204 rho = rho 18245 := by
      rw [seg16LadderFlatX204_eq]
      unfold seg16LadderFlatX204
      linear_combination r5673
    have ha2 : rho 18241 * seg16AccY204 rho = rho 18246 := by
      rw [seg16LadderFlatY204_eq]
      unfold seg16LadderFlatY204
      linear_combination r5674
    have ha3 : 3021 * rho 18245 * rho 18246 = rho 18247 := by
      linear_combination r5675
    have ha4 : rho 18248 * (1 + rho 18247) = rho 18245 + rho 18246 := by
      linear_combination r5676
    have ha5 : rho 18249 * (1 - rho 18247) = rho 18244 - rho 18245 - rho 18246 := by
      linear_combination r5677
    have haddx :
        rho 18248 * (1 + 3021 * (rho 18242 * seg16AccX204 rho) * (rho 18241 * seg16AccY204 rho)) =
          rho 18242 * seg16AccX204 rho + rho 18241 * seg16AccY204 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18249 * (1 - 3021 * (rho 18242 * seg16AccX204 rho) * (rho 18241 * seg16AccY204 rho)) =
          (-1) * (rho 18242 * seg16AccX204 rho) - rho 18241 * seg16AccY204 rho +
            (seg16AccY204 rho - seg16AccX204 rho * (-1)) * (rho 18241 + rho 18242) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18249 * (1 - rho 18247) = rho 18244 - rho 18245 - rho 18246 := ha5
        _ = (-1) * rho 18245 - rho 18246 + (seg16AccY204 rho - seg16AccX204 rho * (-1)) * (rho 18241 + rho 18242) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX205 rho = seg16AccX204 rho - Bool.toZMod bit * (seg16AccX204 rho - rho 18248) := by
      have hd : rho 18250 = Bool.toZMod bit * (rho 18248 - seg16AccX204 rho) := by
        rw [← hbit, seg16LadderFlatX204_eq]
        unfold seg16LadderFlatX204
        linear_combination -r5678
      unfold seg16AccX205
      linear_combination hd
    have hsely : seg16AccY205 rho = seg16AccY204 rho - Bool.toZMod bit * (seg16AccY204 rho - rho 18249) := by
      have hd : rho 18251 = Bool.toZMod bit * (rho 18249 - seg16AccY204 rho) := by
        rw [← hbit, seg16LadderFlatY204_eq]
        unfold seg16LadderFlatY204
        linear_combination -r5679
      unfold seg16AccY205
      linear_combination hd
    have hd0 : rho 18241 * rho 18242 = rho 18252 := by linear_combination r5680
    have hd1 : rho 18241 * rho 18241 = rho 18253 := by linear_combination r5681
    have hd2 : rho 18242 * rho 18242 = rho 18254 := by linear_combination r5682
    have hd3 : rho 18255 * (rho 18242 * rho 18242 + rho 18241 * rho 18241 * (-1)) = 2 * (rho 18241 * rho 18242) := by
      rw [hd0, hd1, hd2]
      linear_combination r5683
    have hd4 : rho 18256 * (2 - (rho 18242 * rho 18242 + rho 18241 * rho 18241 * (-1))) = rho 18242 * rho 18242 - rho 18241 * rho 18241 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5684
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX204 rho : Seg16.F), (seg16AccY204 rho : Seg16.F)⟩
      ⟨(rho 18241 : Seg16.F), (rho 18242 : Seg16.F)⟩
      ⟨(rho 18248 : Seg16.F), (rho 18249 : Seg16.F)⟩
      ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
      ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung204

theorem seg16_rung205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15497 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
        ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩
        ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
        ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5685 Seg16.relationLc1060 Seg16.relationLc1060Part0 Seg16.relationLc1060Part1 Seg16.relationLc1060Part2 Seg16.relationLc1060Part3 Seg16.relationLc1060Part4 Seg16.relationLc1060Part5 Seg16.relationLc1060Part6 Seg16.relationLc1060Part7 Seg16.relationLc1060Part8 Seg16.relationLc1060Part9 Seg16.relationLc1060Part10 Seg16.relationLc1060Part11 Seg16.relationLc1060Part12 at r5685
  unfold Seg16.relationRow5686 at r5686
  unfold Seg16.relationRow5687 Seg16.relationLc1061 Seg16.relationLc1061Part0 Seg16.relationLc1061Part1 Seg16.relationLc1061Part2 Seg16.relationLc1061Part3 Seg16.relationLc1061Part4 Seg16.relationLc1061Part5 Seg16.relationLc1061Part6 at r5687
  unfold Seg16.relationRow5688 Seg16.relationLc1062 Seg16.relationLc1062Part0 Seg16.relationLc1062Part1 Seg16.relationLc1062Part2 Seg16.relationLc1062Part3 Seg16.relationLc1062Part4 Seg16.relationLc1062Part5 Seg16.relationLc1062Part6 at r5688
  unfold Seg16.relationRow5689 at r5689
  unfold Seg16.relationRow5690 at r5690
  unfold Seg16.relationRow5691 at r5691
  unfold Seg16.relationRow5692 Seg16.relationLc1063 Seg16.relationLc1063Part0 Seg16.relationLc1063Part1 Seg16.relationLc1063Part2 Seg16.relationLc1063Part3 Seg16.relationLc1063Part4 Seg16.relationLc1063Part5 Seg16.relationLc1063Part6 at r5692
  unfold Seg16.relationRow5693 Seg16.relationLc1064 Seg16.relationLc1064Part0 Seg16.relationLc1064Part1 Seg16.relationLc1064Part2 Seg16.relationLc1064Part3 Seg16.relationLc1064Part4 Seg16.relationLc1064Part5 Seg16.relationLc1064Part6 at r5693
  unfold Seg16.relationRow5694 at r5694
  unfold Seg16.relationRow5695 at r5695
  unfold Seg16.relationRow5696 at r5696
  unfold Seg16.relationRow5697 at r5697
  unfold Seg16.relationRow5698 at r5698
  have hrung205 (bit : Bool) (hbit : rho 15497 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
        ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩
        ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
        ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩ := by
    have hsum : seg16AccX205 rho + seg16AccY205 rho = rho 18257 := by
      rw [seg16LadderFlatX205_eq, seg16LadderFlatY205_eq]
      unfold seg16LadderFlatX205 seg16LadderFlatY205
      linear_combination r5685
    have ha0 : (rho 18255 + rho 18256) * (seg16AccX205 rho + seg16AccY205 rho) = rho 18258 := by
      rw [hsum]
      linear_combination r5686
    have ha1 : rho 18256 * seg16AccX205 rho = rho 18259 := by
      rw [seg16LadderFlatX205_eq]
      unfold seg16LadderFlatX205
      linear_combination r5687
    have ha2 : rho 18255 * seg16AccY205 rho = rho 18260 := by
      rw [seg16LadderFlatY205_eq]
      unfold seg16LadderFlatY205
      linear_combination r5688
    have ha3 : 3021 * rho 18259 * rho 18260 = rho 18261 := by
      linear_combination r5689
    have ha4 : rho 18262 * (1 + rho 18261) = rho 18259 + rho 18260 := by
      linear_combination r5690
    have ha5 : rho 18263 * (1 - rho 18261) = rho 18258 - rho 18259 - rho 18260 := by
      linear_combination r5691
    have haddx :
        rho 18262 * (1 + 3021 * (rho 18256 * seg16AccX205 rho) * (rho 18255 * seg16AccY205 rho)) =
          rho 18256 * seg16AccX205 rho + rho 18255 * seg16AccY205 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18263 * (1 - 3021 * (rho 18256 * seg16AccX205 rho) * (rho 18255 * seg16AccY205 rho)) =
          (-1) * (rho 18256 * seg16AccX205 rho) - rho 18255 * seg16AccY205 rho +
            (seg16AccY205 rho - seg16AccX205 rho * (-1)) * (rho 18255 + rho 18256) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18263 * (1 - rho 18261) = rho 18258 - rho 18259 - rho 18260 := ha5
        _ = (-1) * rho 18259 - rho 18260 + (seg16AccY205 rho - seg16AccX205 rho * (-1)) * (rho 18255 + rho 18256) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX206 rho = seg16AccX205 rho - Bool.toZMod bit * (seg16AccX205 rho - rho 18262) := by
      have hd : rho 18264 = Bool.toZMod bit * (rho 18262 - seg16AccX205 rho) := by
        rw [← hbit, seg16LadderFlatX205_eq]
        unfold seg16LadderFlatX205
        linear_combination -r5692
      unfold seg16AccX206
      linear_combination hd
    have hsely : seg16AccY206 rho = seg16AccY205 rho - Bool.toZMod bit * (seg16AccY205 rho - rho 18263) := by
      have hd : rho 18265 = Bool.toZMod bit * (rho 18263 - seg16AccY205 rho) := by
        rw [← hbit, seg16LadderFlatY205_eq]
        unfold seg16LadderFlatY205
        linear_combination -r5693
      unfold seg16AccY206
      linear_combination hd
    have hd0 : rho 18255 * rho 18256 = rho 18266 := by linear_combination r5694
    have hd1 : rho 18255 * rho 18255 = rho 18267 := by linear_combination r5695
    have hd2 : rho 18256 * rho 18256 = rho 18268 := by linear_combination r5696
    have hd3 : rho 18269 * (rho 18256 * rho 18256 + rho 18255 * rho 18255 * (-1)) = 2 * (rho 18255 * rho 18256) := by
      rw [hd0, hd1, hd2]
      linear_combination r5697
    have hd4 : rho 18270 * (2 - (rho 18256 * rho 18256 + rho 18255 * rho 18255 * (-1))) = rho 18256 * rho 18256 - rho 18255 * rho 18255 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5698
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX205 rho : Seg16.F), (seg16AccY205 rho : Seg16.F)⟩
      ⟨(rho 18255 : Seg16.F), (rho 18256 : Seg16.F)⟩
      ⟨(rho 18262 : Seg16.F), (rho 18263 : Seg16.F)⟩
      ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
      ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung205

theorem seg16_rung206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15498 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
        ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩
        ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
        ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5699 Seg16.relationLc1065 Seg16.relationLc1065Part0 Seg16.relationLc1065Part1 Seg16.relationLc1065Part2 Seg16.relationLc1065Part3 Seg16.relationLc1065Part4 Seg16.relationLc1065Part5 Seg16.relationLc1065Part6 Seg16.relationLc1065Part7 Seg16.relationLc1065Part8 Seg16.relationLc1065Part9 Seg16.relationLc1065Part10 Seg16.relationLc1065Part11 Seg16.relationLc1065Part12 at r5699
  unfold Seg16.relationRow5700 at r5700
  unfold Seg16.relationRow5701 Seg16.relationLc1066 Seg16.relationLc1066Part0 Seg16.relationLc1066Part1 Seg16.relationLc1066Part2 Seg16.relationLc1066Part3 Seg16.relationLc1066Part4 Seg16.relationLc1066Part5 Seg16.relationLc1066Part6 at r5701
  unfold Seg16.relationRow5702 Seg16.relationLc1067 Seg16.relationLc1067Part0 Seg16.relationLc1067Part1 Seg16.relationLc1067Part2 Seg16.relationLc1067Part3 Seg16.relationLc1067Part4 Seg16.relationLc1067Part5 Seg16.relationLc1067Part6 at r5702
  unfold Seg16.relationRow5703 at r5703
  unfold Seg16.relationRow5704 at r5704
  unfold Seg16.relationRow5705 at r5705
  unfold Seg16.relationRow5706 Seg16.relationLc1068 Seg16.relationLc1068Part0 Seg16.relationLc1068Part1 Seg16.relationLc1068Part2 Seg16.relationLc1068Part3 Seg16.relationLc1068Part4 Seg16.relationLc1068Part5 Seg16.relationLc1068Part6 at r5706
  unfold Seg16.relationRow5707 Seg16.relationLc1069 Seg16.relationLc1069Part0 Seg16.relationLc1069Part1 Seg16.relationLc1069Part2 Seg16.relationLc1069Part3 Seg16.relationLc1069Part4 Seg16.relationLc1069Part5 Seg16.relationLc1069Part6 at r5707
  unfold Seg16.relationRow5708 at r5708
  unfold Seg16.relationRow5709 at r5709
  unfold Seg16.relationRow5710 at r5710
  unfold Seg16.relationRow5711 at r5711
  unfold Seg16.relationRow5712 at r5712
  have hrung206 (bit : Bool) (hbit : rho 15498 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
        ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩
        ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
        ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩ := by
    have hsum : seg16AccX206 rho + seg16AccY206 rho = rho 18271 := by
      rw [seg16LadderFlatX206_eq, seg16LadderFlatY206_eq]
      unfold seg16LadderFlatX206 seg16LadderFlatY206
      linear_combination r5699
    have ha0 : (rho 18269 + rho 18270) * (seg16AccX206 rho + seg16AccY206 rho) = rho 18272 := by
      rw [hsum]
      linear_combination r5700
    have ha1 : rho 18270 * seg16AccX206 rho = rho 18273 := by
      rw [seg16LadderFlatX206_eq]
      unfold seg16LadderFlatX206
      linear_combination r5701
    have ha2 : rho 18269 * seg16AccY206 rho = rho 18274 := by
      rw [seg16LadderFlatY206_eq]
      unfold seg16LadderFlatY206
      linear_combination r5702
    have ha3 : 3021 * rho 18273 * rho 18274 = rho 18275 := by
      linear_combination r5703
    have ha4 : rho 18276 * (1 + rho 18275) = rho 18273 + rho 18274 := by
      linear_combination r5704
    have ha5 : rho 18277 * (1 - rho 18275) = rho 18272 - rho 18273 - rho 18274 := by
      linear_combination r5705
    have haddx :
        rho 18276 * (1 + 3021 * (rho 18270 * seg16AccX206 rho) * (rho 18269 * seg16AccY206 rho)) =
          rho 18270 * seg16AccX206 rho + rho 18269 * seg16AccY206 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18277 * (1 - 3021 * (rho 18270 * seg16AccX206 rho) * (rho 18269 * seg16AccY206 rho)) =
          (-1) * (rho 18270 * seg16AccX206 rho) - rho 18269 * seg16AccY206 rho +
            (seg16AccY206 rho - seg16AccX206 rho * (-1)) * (rho 18269 + rho 18270) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18277 * (1 - rho 18275) = rho 18272 - rho 18273 - rho 18274 := ha5
        _ = (-1) * rho 18273 - rho 18274 + (seg16AccY206 rho - seg16AccX206 rho * (-1)) * (rho 18269 + rho 18270) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX207 rho = seg16AccX206 rho - Bool.toZMod bit * (seg16AccX206 rho - rho 18276) := by
      have hd : rho 18278 = Bool.toZMod bit * (rho 18276 - seg16AccX206 rho) := by
        rw [← hbit, seg16LadderFlatX206_eq]
        unfold seg16LadderFlatX206
        linear_combination -r5706
      unfold seg16AccX207
      linear_combination hd
    have hsely : seg16AccY207 rho = seg16AccY206 rho - Bool.toZMod bit * (seg16AccY206 rho - rho 18277) := by
      have hd : rho 18279 = Bool.toZMod bit * (rho 18277 - seg16AccY206 rho) := by
        rw [← hbit, seg16LadderFlatY206_eq]
        unfold seg16LadderFlatY206
        linear_combination -r5707
      unfold seg16AccY207
      linear_combination hd
    have hd0 : rho 18269 * rho 18270 = rho 18280 := by linear_combination r5708
    have hd1 : rho 18269 * rho 18269 = rho 18281 := by linear_combination r5709
    have hd2 : rho 18270 * rho 18270 = rho 18282 := by linear_combination r5710
    have hd3 : rho 18283 * (rho 18270 * rho 18270 + rho 18269 * rho 18269 * (-1)) = 2 * (rho 18269 * rho 18270) := by
      rw [hd0, hd1, hd2]
      linear_combination r5711
    have hd4 : rho 18284 * (2 - (rho 18270 * rho 18270 + rho 18269 * rho 18269 * (-1))) = rho 18270 * rho 18270 - rho 18269 * rho 18269 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5712
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX206 rho : Seg16.F), (seg16AccY206 rho : Seg16.F)⟩
      ⟨(rho 18269 : Seg16.F), (rho 18270 : Seg16.F)⟩
      ⟨(rho 18276 : Seg16.F), (rho 18277 : Seg16.F)⟩
      ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
      ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung206

theorem seg16_rung207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15499 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
        ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩
        ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
        ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5713 Seg16.relationLc1070 Seg16.relationLc1070Part0 Seg16.relationLc1070Part1 Seg16.relationLc1070Part2 Seg16.relationLc1070Part3 Seg16.relationLc1070Part4 Seg16.relationLc1070Part5 Seg16.relationLc1070Part6 Seg16.relationLc1070Part7 Seg16.relationLc1070Part8 Seg16.relationLc1070Part9 Seg16.relationLc1070Part10 Seg16.relationLc1070Part11 Seg16.relationLc1070Part12 at r5713
  unfold Seg16.relationRow5714 at r5714
  unfold Seg16.relationRow5715 Seg16.relationLc1071 Seg16.relationLc1071Part0 Seg16.relationLc1071Part1 Seg16.relationLc1071Part2 Seg16.relationLc1071Part3 Seg16.relationLc1071Part4 Seg16.relationLc1071Part5 Seg16.relationLc1071Part6 at r5715
  unfold Seg16.relationRow5716 Seg16.relationLc1072 Seg16.relationLc1072Part0 Seg16.relationLc1072Part1 Seg16.relationLc1072Part2 Seg16.relationLc1072Part3 Seg16.relationLc1072Part4 Seg16.relationLc1072Part5 Seg16.relationLc1072Part6 at r5716
  unfold Seg16.relationRow5717 at r5717
  unfold Seg16.relationRow5718 at r5718
  unfold Seg16.relationRow5719 at r5719
  unfold Seg16.relationRow5720 Seg16.relationLc1073 Seg16.relationLc1073Part0 Seg16.relationLc1073Part1 Seg16.relationLc1073Part2 Seg16.relationLc1073Part3 Seg16.relationLc1073Part4 Seg16.relationLc1073Part5 Seg16.relationLc1073Part6 at r5720
  unfold Seg16.relationRow5721 Seg16.relationLc1074 Seg16.relationLc1074Part0 Seg16.relationLc1074Part1 Seg16.relationLc1074Part2 Seg16.relationLc1074Part3 Seg16.relationLc1074Part4 Seg16.relationLc1074Part5 Seg16.relationLc1074Part6 at r5721
  unfold Seg16.relationRow5722 at r5722
  unfold Seg16.relationRow5723 at r5723
  unfold Seg16.relationRow5724 at r5724
  unfold Seg16.relationRow5725 at r5725
  unfold Seg16.relationRow5726 at r5726
  have hrung207 (bit : Bool) (hbit : rho 15499 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
        ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩
        ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
        ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩ := by
    have hsum : seg16AccX207 rho + seg16AccY207 rho = rho 18285 := by
      rw [seg16LadderFlatX207_eq, seg16LadderFlatY207_eq]
      unfold seg16LadderFlatX207 seg16LadderFlatY207
      linear_combination r5713
    have ha0 : (rho 18283 + rho 18284) * (seg16AccX207 rho + seg16AccY207 rho) = rho 18286 := by
      rw [hsum]
      linear_combination r5714
    have ha1 : rho 18284 * seg16AccX207 rho = rho 18287 := by
      rw [seg16LadderFlatX207_eq]
      unfold seg16LadderFlatX207
      linear_combination r5715
    have ha2 : rho 18283 * seg16AccY207 rho = rho 18288 := by
      rw [seg16LadderFlatY207_eq]
      unfold seg16LadderFlatY207
      linear_combination r5716
    have ha3 : 3021 * rho 18287 * rho 18288 = rho 18289 := by
      linear_combination r5717
    have ha4 : rho 18290 * (1 + rho 18289) = rho 18287 + rho 18288 := by
      linear_combination r5718
    have ha5 : rho 18291 * (1 - rho 18289) = rho 18286 - rho 18287 - rho 18288 := by
      linear_combination r5719
    have haddx :
        rho 18290 * (1 + 3021 * (rho 18284 * seg16AccX207 rho) * (rho 18283 * seg16AccY207 rho)) =
          rho 18284 * seg16AccX207 rho + rho 18283 * seg16AccY207 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18291 * (1 - 3021 * (rho 18284 * seg16AccX207 rho) * (rho 18283 * seg16AccY207 rho)) =
          (-1) * (rho 18284 * seg16AccX207 rho) - rho 18283 * seg16AccY207 rho +
            (seg16AccY207 rho - seg16AccX207 rho * (-1)) * (rho 18283 + rho 18284) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18291 * (1 - rho 18289) = rho 18286 - rho 18287 - rho 18288 := ha5
        _ = (-1) * rho 18287 - rho 18288 + (seg16AccY207 rho - seg16AccX207 rho * (-1)) * (rho 18283 + rho 18284) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX208 rho = seg16AccX207 rho - Bool.toZMod bit * (seg16AccX207 rho - rho 18290) := by
      have hd : rho 18292 = Bool.toZMod bit * (rho 18290 - seg16AccX207 rho) := by
        rw [← hbit, seg16LadderFlatX207_eq]
        unfold seg16LadderFlatX207
        linear_combination -r5720
      unfold seg16AccX208
      linear_combination hd
    have hsely : seg16AccY208 rho = seg16AccY207 rho - Bool.toZMod bit * (seg16AccY207 rho - rho 18291) := by
      have hd : rho 18293 = Bool.toZMod bit * (rho 18291 - seg16AccY207 rho) := by
        rw [← hbit, seg16LadderFlatY207_eq]
        unfold seg16LadderFlatY207
        linear_combination -r5721
      unfold seg16AccY208
      linear_combination hd
    have hd0 : rho 18283 * rho 18284 = rho 18294 := by linear_combination r5722
    have hd1 : rho 18283 * rho 18283 = rho 18295 := by linear_combination r5723
    have hd2 : rho 18284 * rho 18284 = rho 18296 := by linear_combination r5724
    have hd3 : rho 18297 * (rho 18284 * rho 18284 + rho 18283 * rho 18283 * (-1)) = 2 * (rho 18283 * rho 18284) := by
      rw [hd0, hd1, hd2]
      linear_combination r5725
    have hd4 : rho 18298 * (2 - (rho 18284 * rho 18284 + rho 18283 * rho 18283 * (-1))) = rho 18284 * rho 18284 - rho 18283 * rho 18283 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5726
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX207 rho : Seg16.F), (seg16AccY207 rho : Seg16.F)⟩
      ⟨(rho 18283 : Seg16.F), (rho 18284 : Seg16.F)⟩
      ⟨(rho 18290 : Seg16.F), (rho 18291 : Seg16.F)⟩
      ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
      ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung207

theorem seg16_rung208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15500 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
        ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩
        ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
        ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5727 Seg16.relationLc1075 Seg16.relationLc1075Part0 Seg16.relationLc1075Part1 Seg16.relationLc1075Part2 Seg16.relationLc1075Part3 Seg16.relationLc1075Part4 Seg16.relationLc1075Part5 Seg16.relationLc1075Part6 Seg16.relationLc1075Part7 Seg16.relationLc1075Part8 Seg16.relationLc1075Part9 Seg16.relationLc1075Part10 Seg16.relationLc1075Part11 Seg16.relationLc1075Part12 Seg16.relationLc1075Part13 at r5727
  unfold Seg16.relationRow5728 at r5728
  unfold Seg16.relationRow5729 Seg16.relationLc1076 Seg16.relationLc1076Part0 Seg16.relationLc1076Part1 Seg16.relationLc1076Part2 Seg16.relationLc1076Part3 Seg16.relationLc1076Part4 Seg16.relationLc1076Part5 Seg16.relationLc1076Part6 at r5729
  unfold Seg16.relationRow5730 Seg16.relationLc1077 Seg16.relationLc1077Part0 Seg16.relationLc1077Part1 Seg16.relationLc1077Part2 Seg16.relationLc1077Part3 Seg16.relationLc1077Part4 Seg16.relationLc1077Part5 Seg16.relationLc1077Part6 at r5730
  unfold Seg16.relationRow5731 at r5731
  unfold Seg16.relationRow5732 at r5732
  unfold Seg16.relationRow5733 at r5733
  unfold Seg16.relationRow5734 Seg16.relationLc1078 Seg16.relationLc1078Part0 Seg16.relationLc1078Part1 Seg16.relationLc1078Part2 Seg16.relationLc1078Part3 Seg16.relationLc1078Part4 Seg16.relationLc1078Part5 Seg16.relationLc1078Part6 at r5734
  unfold Seg16.relationRow5735 Seg16.relationLc1079 Seg16.relationLc1079Part0 Seg16.relationLc1079Part1 Seg16.relationLc1079Part2 Seg16.relationLc1079Part3 Seg16.relationLc1079Part4 Seg16.relationLc1079Part5 Seg16.relationLc1079Part6 at r5735
  unfold Seg16.relationRow5736 at r5736
  unfold Seg16.relationRow5737 at r5737
  unfold Seg16.relationRow5738 at r5738
  unfold Seg16.relationRow5739 at r5739
  unfold Seg16.relationRow5740 at r5740
  have hrung208 (bit : Bool) (hbit : rho 15500 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
        ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩
        ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
        ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩ := by
    have hsum : seg16AccX208 rho + seg16AccY208 rho = rho 18299 := by
      rw [seg16LadderFlatX208_eq, seg16LadderFlatY208_eq]
      unfold seg16LadderFlatX208 seg16LadderFlatY208
      linear_combination r5727
    have ha0 : (rho 18297 + rho 18298) * (seg16AccX208 rho + seg16AccY208 rho) = rho 18300 := by
      rw [hsum]
      linear_combination r5728
    have ha1 : rho 18298 * seg16AccX208 rho = rho 18301 := by
      rw [seg16LadderFlatX208_eq]
      unfold seg16LadderFlatX208
      linear_combination r5729
    have ha2 : rho 18297 * seg16AccY208 rho = rho 18302 := by
      rw [seg16LadderFlatY208_eq]
      unfold seg16LadderFlatY208
      linear_combination r5730
    have ha3 : 3021 * rho 18301 * rho 18302 = rho 18303 := by
      linear_combination r5731
    have ha4 : rho 18304 * (1 + rho 18303) = rho 18301 + rho 18302 := by
      linear_combination r5732
    have ha5 : rho 18305 * (1 - rho 18303) = rho 18300 - rho 18301 - rho 18302 := by
      linear_combination r5733
    have haddx :
        rho 18304 * (1 + 3021 * (rho 18298 * seg16AccX208 rho) * (rho 18297 * seg16AccY208 rho)) =
          rho 18298 * seg16AccX208 rho + rho 18297 * seg16AccY208 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18305 * (1 - 3021 * (rho 18298 * seg16AccX208 rho) * (rho 18297 * seg16AccY208 rho)) =
          (-1) * (rho 18298 * seg16AccX208 rho) - rho 18297 * seg16AccY208 rho +
            (seg16AccY208 rho - seg16AccX208 rho * (-1)) * (rho 18297 + rho 18298) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18305 * (1 - rho 18303) = rho 18300 - rho 18301 - rho 18302 := ha5
        _ = (-1) * rho 18301 - rho 18302 + (seg16AccY208 rho - seg16AccX208 rho * (-1)) * (rho 18297 + rho 18298) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX209 rho = seg16AccX208 rho - Bool.toZMod bit * (seg16AccX208 rho - rho 18304) := by
      have hd : rho 18306 = Bool.toZMod bit * (rho 18304 - seg16AccX208 rho) := by
        rw [← hbit, seg16LadderFlatX208_eq]
        unfold seg16LadderFlatX208
        linear_combination -r5734
      unfold seg16AccX209
      linear_combination hd
    have hsely : seg16AccY209 rho = seg16AccY208 rho - Bool.toZMod bit * (seg16AccY208 rho - rho 18305) := by
      have hd : rho 18307 = Bool.toZMod bit * (rho 18305 - seg16AccY208 rho) := by
        rw [← hbit, seg16LadderFlatY208_eq]
        unfold seg16LadderFlatY208
        linear_combination -r5735
      unfold seg16AccY209
      linear_combination hd
    have hd0 : rho 18297 * rho 18298 = rho 18308 := by linear_combination r5736
    have hd1 : rho 18297 * rho 18297 = rho 18309 := by linear_combination r5737
    have hd2 : rho 18298 * rho 18298 = rho 18310 := by linear_combination r5738
    have hd3 : rho 18311 * (rho 18298 * rho 18298 + rho 18297 * rho 18297 * (-1)) = 2 * (rho 18297 * rho 18298) := by
      rw [hd0, hd1, hd2]
      linear_combination r5739
    have hd4 : rho 18312 * (2 - (rho 18298 * rho 18298 + rho 18297 * rho 18297 * (-1))) = rho 18298 * rho 18298 - rho 18297 * rho 18297 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5740
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX208 rho : Seg16.F), (seg16AccY208 rho : Seg16.F)⟩
      ⟨(rho 18297 : Seg16.F), (rho 18298 : Seg16.F)⟩
      ⟨(rho 18304 : Seg16.F), (rho 18305 : Seg16.F)⟩
      ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
      ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung208

theorem seg16_rung209 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15501 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
        ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩
        ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
        ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, _, _, _, _, _⟩
  unfold Seg16.relationRow5741 Seg16.relationLc1080 Seg16.relationLc1080Part0 Seg16.relationLc1080Part1 Seg16.relationLc1080Part2 Seg16.relationLc1080Part3 Seg16.relationLc1080Part4 Seg16.relationLc1080Part5 Seg16.relationLc1080Part6 Seg16.relationLc1080Part7 Seg16.relationLc1080Part8 Seg16.relationLc1080Part9 Seg16.relationLc1080Part10 Seg16.relationLc1080Part11 Seg16.relationLc1080Part12 Seg16.relationLc1080Part13 at r5741
  unfold Seg16.relationRow5742 at r5742
  unfold Seg16.relationRow5743 Seg16.relationLc1081 Seg16.relationLc1081Part0 Seg16.relationLc1081Part1 Seg16.relationLc1081Part2 Seg16.relationLc1081Part3 Seg16.relationLc1081Part4 Seg16.relationLc1081Part5 Seg16.relationLc1081Part6 at r5743
  unfold Seg16.relationRow5744 Seg16.relationLc1082 Seg16.relationLc1082Part0 Seg16.relationLc1082Part1 Seg16.relationLc1082Part2 Seg16.relationLc1082Part3 Seg16.relationLc1082Part4 Seg16.relationLc1082Part5 Seg16.relationLc1082Part6 at r5744
  unfold Seg16.relationRow5745 at r5745
  unfold Seg16.relationRow5746 at r5746
  unfold Seg16.relationRow5747 at r5747
  unfold Seg16.relationRow5748 Seg16.relationLc1083 Seg16.relationLc1083Part0 Seg16.relationLc1083Part1 Seg16.relationLc1083Part2 Seg16.relationLc1083Part3 Seg16.relationLc1083Part4 Seg16.relationLc1083Part5 Seg16.relationLc1083Part6 at r5748
  unfold Seg16.relationRow5749 Seg16.relationLc1084 Seg16.relationLc1084Part0 Seg16.relationLc1084Part1 Seg16.relationLc1084Part2 Seg16.relationLc1084Part3 Seg16.relationLc1084Part4 Seg16.relationLc1084Part5 Seg16.relationLc1084Part6 at r5749
  unfold Seg16.relationRow5750 at r5750
  unfold Seg16.relationRow5751 at r5751
  unfold Seg16.relationRow5752 at r5752
  unfold Seg16.relationRow5753 at r5753
  unfold Seg16.relationRow5754 at r5754
  have hrung209 (bit : Bool) (hbit : rho 15501 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
        ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩
        ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
        ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩ := by
    have hsum : seg16AccX209 rho + seg16AccY209 rho = rho 18313 := by
      rw [seg16LadderFlatX209_eq, seg16LadderFlatY209_eq]
      unfold seg16LadderFlatX209 seg16LadderFlatY209
      linear_combination r5741
    have ha0 : (rho 18311 + rho 18312) * (seg16AccX209 rho + seg16AccY209 rho) = rho 18314 := by
      rw [hsum]
      linear_combination r5742
    have ha1 : rho 18312 * seg16AccX209 rho = rho 18315 := by
      rw [seg16LadderFlatX209_eq]
      unfold seg16LadderFlatX209
      linear_combination r5743
    have ha2 : rho 18311 * seg16AccY209 rho = rho 18316 := by
      rw [seg16LadderFlatY209_eq]
      unfold seg16LadderFlatY209
      linear_combination r5744
    have ha3 : 3021 * rho 18315 * rho 18316 = rho 18317 := by
      linear_combination r5745
    have ha4 : rho 18318 * (1 + rho 18317) = rho 18315 + rho 18316 := by
      linear_combination r5746
    have ha5 : rho 18319 * (1 - rho 18317) = rho 18314 - rho 18315 - rho 18316 := by
      linear_combination r5747
    have haddx :
        rho 18318 * (1 + 3021 * (rho 18312 * seg16AccX209 rho) * (rho 18311 * seg16AccY209 rho)) =
          rho 18312 * seg16AccX209 rho + rho 18311 * seg16AccY209 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18319 * (1 - 3021 * (rho 18312 * seg16AccX209 rho) * (rho 18311 * seg16AccY209 rho)) =
          (-1) * (rho 18312 * seg16AccX209 rho) - rho 18311 * seg16AccY209 rho +
            (seg16AccY209 rho - seg16AccX209 rho * (-1)) * (rho 18311 + rho 18312) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18319 * (1 - rho 18317) = rho 18314 - rho 18315 - rho 18316 := ha5
        _ = (-1) * rho 18315 - rho 18316 + (seg16AccY209 rho - seg16AccX209 rho * (-1)) * (rho 18311 + rho 18312) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX210 rho = seg16AccX209 rho - Bool.toZMod bit * (seg16AccX209 rho - rho 18318) := by
      have hd : rho 18320 = Bool.toZMod bit * (rho 18318 - seg16AccX209 rho) := by
        rw [← hbit, seg16LadderFlatX209_eq]
        unfold seg16LadderFlatX209
        linear_combination -r5748
      unfold seg16AccX210
      linear_combination hd
    have hsely : seg16AccY210 rho = seg16AccY209 rho - Bool.toZMod bit * (seg16AccY209 rho - rho 18319) := by
      have hd : rho 18321 = Bool.toZMod bit * (rho 18319 - seg16AccY209 rho) := by
        rw [← hbit, seg16LadderFlatY209_eq]
        unfold seg16LadderFlatY209
        linear_combination -r5749
      unfold seg16AccY210
      linear_combination hd
    have hd0 : rho 18311 * rho 18312 = rho 18322 := by linear_combination r5750
    have hd1 : rho 18311 * rho 18311 = rho 18323 := by linear_combination r5751
    have hd2 : rho 18312 * rho 18312 = rho 18324 := by linear_combination r5752
    have hd3 : rho 18325 * (rho 18312 * rho 18312 + rho 18311 * rho 18311 * (-1)) = 2 * (rho 18311 * rho 18312) := by
      rw [hd0, hd1, hd2]
      linear_combination r5753
    have hd4 : rho 18326 * (2 - (rho 18312 * rho 18312 + rho 18311 * rho 18311 * (-1))) = rho 18312 * rho 18312 - rho 18311 * rho 18311 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5754
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX209 rho : Seg16.F), (seg16AccY209 rho : Seg16.F)⟩
      ⟨(rho 18311 : Seg16.F), (rho 18312 : Seg16.F)⟩
      ⟨(rho 18318 : Seg16.F), (rho 18319 : Seg16.F)⟩
      ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
      ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung209

theorem seg16_rung210 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15502 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
        ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩
        ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
        ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5755, r5756, r5757, r5758, r5759⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5755 Seg16.relationLc1085 Seg16.relationLc1085Part0 Seg16.relationLc1085Part1 Seg16.relationLc1085Part2 Seg16.relationLc1085Part3 Seg16.relationLc1085Part4 Seg16.relationLc1085Part5 Seg16.relationLc1085Part6 Seg16.relationLc1085Part7 Seg16.relationLc1085Part8 Seg16.relationLc1085Part9 Seg16.relationLc1085Part10 Seg16.relationLc1085Part11 Seg16.relationLc1085Part12 Seg16.relationLc1085Part13 at r5755
  unfold Seg16.relationRow5756 at r5756
  unfold Seg16.relationRow5757 Seg16.relationLc1086 Seg16.relationLc1086Part0 Seg16.relationLc1086Part1 Seg16.relationLc1086Part2 Seg16.relationLc1086Part3 Seg16.relationLc1086Part4 Seg16.relationLc1086Part5 Seg16.relationLc1086Part6 at r5757
  unfold Seg16.relationRow5758 Seg16.relationLc1087 Seg16.relationLc1087Part0 Seg16.relationLc1087Part1 Seg16.relationLc1087Part2 Seg16.relationLc1087Part3 Seg16.relationLc1087Part4 Seg16.relationLc1087Part5 Seg16.relationLc1087Part6 at r5758
  unfold Seg16.relationRow5759 at r5759
  unfold Seg16.relationRow5760 at r5760
  unfold Seg16.relationRow5761 at r5761
  unfold Seg16.relationRow5762 Seg16.relationLc1088 Seg16.relationLc1088Part0 Seg16.relationLc1088Part1 Seg16.relationLc1088Part2 Seg16.relationLc1088Part3 Seg16.relationLc1088Part4 Seg16.relationLc1088Part5 Seg16.relationLc1088Part6 at r5762
  unfold Seg16.relationRow5763 Seg16.relationLc1089 Seg16.relationLc1089Part0 Seg16.relationLc1089Part1 Seg16.relationLc1089Part2 Seg16.relationLc1089Part3 Seg16.relationLc1089Part4 Seg16.relationLc1089Part5 Seg16.relationLc1089Part6 at r5763
  unfold Seg16.relationRow5764 at r5764
  unfold Seg16.relationRow5765 at r5765
  unfold Seg16.relationRow5766 at r5766
  unfold Seg16.relationRow5767 at r5767
  unfold Seg16.relationRow5768 at r5768
  have hrung210 (bit : Bool) (hbit : rho 15502 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
        ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩
        ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
        ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩ := by
    have hsum : seg16AccX210 rho + seg16AccY210 rho = rho 18327 := by
      rw [seg16LadderFlatX210_eq, seg16LadderFlatY210_eq]
      unfold seg16LadderFlatX210 seg16LadderFlatY210
      linear_combination r5755
    have ha0 : (rho 18325 + rho 18326) * (seg16AccX210 rho + seg16AccY210 rho) = rho 18328 := by
      rw [hsum]
      linear_combination r5756
    have ha1 : rho 18326 * seg16AccX210 rho = rho 18329 := by
      rw [seg16LadderFlatX210_eq]
      unfold seg16LadderFlatX210
      linear_combination r5757
    have ha2 : rho 18325 * seg16AccY210 rho = rho 18330 := by
      rw [seg16LadderFlatY210_eq]
      unfold seg16LadderFlatY210
      linear_combination r5758
    have ha3 : 3021 * rho 18329 * rho 18330 = rho 18331 := by
      linear_combination r5759
    have ha4 : rho 18332 * (1 + rho 18331) = rho 18329 + rho 18330 := by
      linear_combination r5760
    have ha5 : rho 18333 * (1 - rho 18331) = rho 18328 - rho 18329 - rho 18330 := by
      linear_combination r5761
    have haddx :
        rho 18332 * (1 + 3021 * (rho 18326 * seg16AccX210 rho) * (rho 18325 * seg16AccY210 rho)) =
          rho 18326 * seg16AccX210 rho + rho 18325 * seg16AccY210 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18333 * (1 - 3021 * (rho 18326 * seg16AccX210 rho) * (rho 18325 * seg16AccY210 rho)) =
          (-1) * (rho 18326 * seg16AccX210 rho) - rho 18325 * seg16AccY210 rho +
            (seg16AccY210 rho - seg16AccX210 rho * (-1)) * (rho 18325 + rho 18326) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18333 * (1 - rho 18331) = rho 18328 - rho 18329 - rho 18330 := ha5
        _ = (-1) * rho 18329 - rho 18330 + (seg16AccY210 rho - seg16AccX210 rho * (-1)) * (rho 18325 + rho 18326) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX211 rho = seg16AccX210 rho - Bool.toZMod bit * (seg16AccX210 rho - rho 18332) := by
      have hd : rho 18334 = Bool.toZMod bit * (rho 18332 - seg16AccX210 rho) := by
        rw [← hbit, seg16LadderFlatX210_eq]
        unfold seg16LadderFlatX210
        linear_combination -r5762
      unfold seg16AccX211
      linear_combination hd
    have hsely : seg16AccY211 rho = seg16AccY210 rho - Bool.toZMod bit * (seg16AccY210 rho - rho 18333) := by
      have hd : rho 18335 = Bool.toZMod bit * (rho 18333 - seg16AccY210 rho) := by
        rw [← hbit, seg16LadderFlatY210_eq]
        unfold seg16LadderFlatY210
        linear_combination -r5763
      unfold seg16AccY211
      linear_combination hd
    have hd0 : rho 18325 * rho 18326 = rho 18336 := by linear_combination r5764
    have hd1 : rho 18325 * rho 18325 = rho 18337 := by linear_combination r5765
    have hd2 : rho 18326 * rho 18326 = rho 18338 := by linear_combination r5766
    have hd3 : rho 18339 * (rho 18326 * rho 18326 + rho 18325 * rho 18325 * (-1)) = 2 * (rho 18325 * rho 18326) := by
      rw [hd0, hd1, hd2]
      linear_combination r5767
    have hd4 : rho 18340 * (2 - (rho 18326 * rho 18326 + rho 18325 * rho 18325 * (-1))) = rho 18326 * rho 18326 - rho 18325 * rho 18325 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5768
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX210 rho : Seg16.F), (seg16AccY210 rho : Seg16.F)⟩
      ⟨(rho 18325 : Seg16.F), (rho 18326 : Seg16.F)⟩
      ⟨(rho 18332 : Seg16.F), (rho 18333 : Seg16.F)⟩
      ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
      ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung210

theorem seg16_rung211 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15503 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
        ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩
        ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
        ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5769 Seg16.relationLc1090 Seg16.relationLc1090Part0 Seg16.relationLc1090Part1 Seg16.relationLc1090Part2 Seg16.relationLc1090Part3 Seg16.relationLc1090Part4 Seg16.relationLc1090Part5 Seg16.relationLc1090Part6 Seg16.relationLc1090Part7 Seg16.relationLc1090Part8 Seg16.relationLc1090Part9 Seg16.relationLc1090Part10 Seg16.relationLc1090Part11 Seg16.relationLc1090Part12 Seg16.relationLc1090Part13 at r5769
  unfold Seg16.relationRow5770 at r5770
  unfold Seg16.relationRow5771 Seg16.relationLc1091 Seg16.relationLc1091Part0 Seg16.relationLc1091Part1 Seg16.relationLc1091Part2 Seg16.relationLc1091Part3 Seg16.relationLc1091Part4 Seg16.relationLc1091Part5 Seg16.relationLc1091Part6 at r5771
  unfold Seg16.relationRow5772 Seg16.relationLc1092 Seg16.relationLc1092Part0 Seg16.relationLc1092Part1 Seg16.relationLc1092Part2 Seg16.relationLc1092Part3 Seg16.relationLc1092Part4 Seg16.relationLc1092Part5 Seg16.relationLc1092Part6 at r5772
  unfold Seg16.relationRow5773 at r5773
  unfold Seg16.relationRow5774 at r5774
  unfold Seg16.relationRow5775 at r5775
  unfold Seg16.relationRow5776 Seg16.relationLc1093 Seg16.relationLc1093Part0 Seg16.relationLc1093Part1 Seg16.relationLc1093Part2 Seg16.relationLc1093Part3 Seg16.relationLc1093Part4 Seg16.relationLc1093Part5 Seg16.relationLc1093Part6 at r5776
  unfold Seg16.relationRow5777 Seg16.relationLc1094 Seg16.relationLc1094Part0 Seg16.relationLc1094Part1 Seg16.relationLc1094Part2 Seg16.relationLc1094Part3 Seg16.relationLc1094Part4 Seg16.relationLc1094Part5 Seg16.relationLc1094Part6 at r5777
  unfold Seg16.relationRow5778 at r5778
  unfold Seg16.relationRow5779 at r5779
  unfold Seg16.relationRow5780 at r5780
  unfold Seg16.relationRow5781 at r5781
  unfold Seg16.relationRow5782 at r5782
  have hrung211 (bit : Bool) (hbit : rho 15503 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
        ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩
        ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
        ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩ := by
    have hsum : seg16AccX211 rho + seg16AccY211 rho = rho 18341 := by
      rw [seg16LadderFlatX211_eq, seg16LadderFlatY211_eq]
      unfold seg16LadderFlatX211 seg16LadderFlatY211
      linear_combination r5769
    have ha0 : (rho 18339 + rho 18340) * (seg16AccX211 rho + seg16AccY211 rho) = rho 18342 := by
      rw [hsum]
      linear_combination r5770
    have ha1 : rho 18340 * seg16AccX211 rho = rho 18343 := by
      rw [seg16LadderFlatX211_eq]
      unfold seg16LadderFlatX211
      linear_combination r5771
    have ha2 : rho 18339 * seg16AccY211 rho = rho 18344 := by
      rw [seg16LadderFlatY211_eq]
      unfold seg16LadderFlatY211
      linear_combination r5772
    have ha3 : 3021 * rho 18343 * rho 18344 = rho 18345 := by
      linear_combination r5773
    have ha4 : rho 18346 * (1 + rho 18345) = rho 18343 + rho 18344 := by
      linear_combination r5774
    have ha5 : rho 18347 * (1 - rho 18345) = rho 18342 - rho 18343 - rho 18344 := by
      linear_combination r5775
    have haddx :
        rho 18346 * (1 + 3021 * (rho 18340 * seg16AccX211 rho) * (rho 18339 * seg16AccY211 rho)) =
          rho 18340 * seg16AccX211 rho + rho 18339 * seg16AccY211 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18347 * (1 - 3021 * (rho 18340 * seg16AccX211 rho) * (rho 18339 * seg16AccY211 rho)) =
          (-1) * (rho 18340 * seg16AccX211 rho) - rho 18339 * seg16AccY211 rho +
            (seg16AccY211 rho - seg16AccX211 rho * (-1)) * (rho 18339 + rho 18340) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18347 * (1 - rho 18345) = rho 18342 - rho 18343 - rho 18344 := ha5
        _ = (-1) * rho 18343 - rho 18344 + (seg16AccY211 rho - seg16AccX211 rho * (-1)) * (rho 18339 + rho 18340) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX212 rho = seg16AccX211 rho - Bool.toZMod bit * (seg16AccX211 rho - rho 18346) := by
      have hd : rho 18348 = Bool.toZMod bit * (rho 18346 - seg16AccX211 rho) := by
        rw [← hbit, seg16LadderFlatX211_eq]
        unfold seg16LadderFlatX211
        linear_combination -r5776
      unfold seg16AccX212
      linear_combination hd
    have hsely : seg16AccY212 rho = seg16AccY211 rho - Bool.toZMod bit * (seg16AccY211 rho - rho 18347) := by
      have hd : rho 18349 = Bool.toZMod bit * (rho 18347 - seg16AccY211 rho) := by
        rw [← hbit, seg16LadderFlatY211_eq]
        unfold seg16LadderFlatY211
        linear_combination -r5777
      unfold seg16AccY212
      linear_combination hd
    have hd0 : rho 18339 * rho 18340 = rho 18350 := by linear_combination r5778
    have hd1 : rho 18339 * rho 18339 = rho 18351 := by linear_combination r5779
    have hd2 : rho 18340 * rho 18340 = rho 18352 := by linear_combination r5780
    have hd3 : rho 18353 * (rho 18340 * rho 18340 + rho 18339 * rho 18339 * (-1)) = 2 * (rho 18339 * rho 18340) := by
      rw [hd0, hd1, hd2]
      linear_combination r5781
    have hd4 : rho 18354 * (2 - (rho 18340 * rho 18340 + rho 18339 * rho 18339 * (-1))) = rho 18340 * rho 18340 - rho 18339 * rho 18339 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5782
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX211 rho : Seg16.F), (seg16AccY211 rho : Seg16.F)⟩
      ⟨(rho 18339 : Seg16.F), (rho 18340 : Seg16.F)⟩
      ⟨(rho 18346 : Seg16.F), (rho 18347 : Seg16.F)⟩
      ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
      ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung211

theorem seg16_rung212 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15504 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
        ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩
        ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
        ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5783 Seg16.relationLc1095 Seg16.relationLc1095Part0 Seg16.relationLc1095Part1 Seg16.relationLc1095Part2 Seg16.relationLc1095Part3 Seg16.relationLc1095Part4 Seg16.relationLc1095Part5 Seg16.relationLc1095Part6 Seg16.relationLc1095Part7 Seg16.relationLc1095Part8 Seg16.relationLc1095Part9 Seg16.relationLc1095Part10 Seg16.relationLc1095Part11 Seg16.relationLc1095Part12 Seg16.relationLc1095Part13 at r5783
  unfold Seg16.relationRow5784 at r5784
  unfold Seg16.relationRow5785 Seg16.relationLc1096 Seg16.relationLc1096Part0 Seg16.relationLc1096Part1 Seg16.relationLc1096Part2 Seg16.relationLc1096Part3 Seg16.relationLc1096Part4 Seg16.relationLc1096Part5 Seg16.relationLc1096Part6 at r5785
  unfold Seg16.relationRow5786 Seg16.relationLc1097 Seg16.relationLc1097Part0 Seg16.relationLc1097Part1 Seg16.relationLc1097Part2 Seg16.relationLc1097Part3 Seg16.relationLc1097Part4 Seg16.relationLc1097Part5 Seg16.relationLc1097Part6 at r5786
  unfold Seg16.relationRow5787 at r5787
  unfold Seg16.relationRow5788 at r5788
  unfold Seg16.relationRow5789 at r5789
  unfold Seg16.relationRow5790 Seg16.relationLc1098 Seg16.relationLc1098Part0 Seg16.relationLc1098Part1 Seg16.relationLc1098Part2 Seg16.relationLc1098Part3 Seg16.relationLc1098Part4 Seg16.relationLc1098Part5 Seg16.relationLc1098Part6 at r5790
  unfold Seg16.relationRow5791 Seg16.relationLc1099 Seg16.relationLc1099Part0 Seg16.relationLc1099Part1 Seg16.relationLc1099Part2 Seg16.relationLc1099Part3 Seg16.relationLc1099Part4 Seg16.relationLc1099Part5 Seg16.relationLc1099Part6 at r5791
  unfold Seg16.relationRow5792 at r5792
  unfold Seg16.relationRow5793 at r5793
  unfold Seg16.relationRow5794 at r5794
  unfold Seg16.relationRow5795 at r5795
  unfold Seg16.relationRow5796 at r5796
  have hrung212 (bit : Bool) (hbit : rho 15504 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
        ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩
        ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
        ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩ := by
    have hsum : seg16AccX212 rho + seg16AccY212 rho = rho 18355 := by
      rw [seg16LadderFlatX212_eq, seg16LadderFlatY212_eq]
      unfold seg16LadderFlatX212 seg16LadderFlatY212
      linear_combination r5783
    have ha0 : (rho 18353 + rho 18354) * (seg16AccX212 rho + seg16AccY212 rho) = rho 18356 := by
      rw [hsum]
      linear_combination r5784
    have ha1 : rho 18354 * seg16AccX212 rho = rho 18357 := by
      rw [seg16LadderFlatX212_eq]
      unfold seg16LadderFlatX212
      linear_combination r5785
    have ha2 : rho 18353 * seg16AccY212 rho = rho 18358 := by
      rw [seg16LadderFlatY212_eq]
      unfold seg16LadderFlatY212
      linear_combination r5786
    have ha3 : 3021 * rho 18357 * rho 18358 = rho 18359 := by
      linear_combination r5787
    have ha4 : rho 18360 * (1 + rho 18359) = rho 18357 + rho 18358 := by
      linear_combination r5788
    have ha5 : rho 18361 * (1 - rho 18359) = rho 18356 - rho 18357 - rho 18358 := by
      linear_combination r5789
    have haddx :
        rho 18360 * (1 + 3021 * (rho 18354 * seg16AccX212 rho) * (rho 18353 * seg16AccY212 rho)) =
          rho 18354 * seg16AccX212 rho + rho 18353 * seg16AccY212 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18361 * (1 - 3021 * (rho 18354 * seg16AccX212 rho) * (rho 18353 * seg16AccY212 rho)) =
          (-1) * (rho 18354 * seg16AccX212 rho) - rho 18353 * seg16AccY212 rho +
            (seg16AccY212 rho - seg16AccX212 rho * (-1)) * (rho 18353 + rho 18354) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18361 * (1 - rho 18359) = rho 18356 - rho 18357 - rho 18358 := ha5
        _ = (-1) * rho 18357 - rho 18358 + (seg16AccY212 rho - seg16AccX212 rho * (-1)) * (rho 18353 + rho 18354) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX213 rho = seg16AccX212 rho - Bool.toZMod bit * (seg16AccX212 rho - rho 18360) := by
      have hd : rho 18362 = Bool.toZMod bit * (rho 18360 - seg16AccX212 rho) := by
        rw [← hbit, seg16LadderFlatX212_eq]
        unfold seg16LadderFlatX212
        linear_combination -r5790
      unfold seg16AccX213
      linear_combination hd
    have hsely : seg16AccY213 rho = seg16AccY212 rho - Bool.toZMod bit * (seg16AccY212 rho - rho 18361) := by
      have hd : rho 18363 = Bool.toZMod bit * (rho 18361 - seg16AccY212 rho) := by
        rw [← hbit, seg16LadderFlatY212_eq]
        unfold seg16LadderFlatY212
        linear_combination -r5791
      unfold seg16AccY213
      linear_combination hd
    have hd0 : rho 18353 * rho 18354 = rho 18364 := by linear_combination r5792
    have hd1 : rho 18353 * rho 18353 = rho 18365 := by linear_combination r5793
    have hd2 : rho 18354 * rho 18354 = rho 18366 := by linear_combination r5794
    have hd3 : rho 18367 * (rho 18354 * rho 18354 + rho 18353 * rho 18353 * (-1)) = 2 * (rho 18353 * rho 18354) := by
      rw [hd0, hd1, hd2]
      linear_combination r5795
    have hd4 : rho 18368 * (2 - (rho 18354 * rho 18354 + rho 18353 * rho 18353 * (-1))) = rho 18354 * rho 18354 - rho 18353 * rho 18353 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5796
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX212 rho : Seg16.F), (seg16AccY212 rho : Seg16.F)⟩
      ⟨(rho 18353 : Seg16.F), (rho 18354 : Seg16.F)⟩
      ⟨(rho 18360 : Seg16.F), (rho 18361 : Seg16.F)⟩
      ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
      ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung212

theorem seg16_rung213 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15505 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
        ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩
        ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
        ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5797 Seg16.relationLc1100 Seg16.relationLc1100Part0 Seg16.relationLc1100Part1 Seg16.relationLc1100Part2 Seg16.relationLc1100Part3 Seg16.relationLc1100Part4 Seg16.relationLc1100Part5 Seg16.relationLc1100Part6 Seg16.relationLc1100Part7 Seg16.relationLc1100Part8 Seg16.relationLc1100Part9 Seg16.relationLc1100Part10 Seg16.relationLc1100Part11 Seg16.relationLc1100Part12 Seg16.relationLc1100Part13 at r5797
  unfold Seg16.relationRow5798 at r5798
  unfold Seg16.relationRow5799 Seg16.relationLc1101 Seg16.relationLc1101Part0 Seg16.relationLc1101Part1 Seg16.relationLc1101Part2 Seg16.relationLc1101Part3 Seg16.relationLc1101Part4 Seg16.relationLc1101Part5 Seg16.relationLc1101Part6 at r5799
  unfold Seg16.relationRow5800 Seg16.relationLc1102 Seg16.relationLc1102Part0 Seg16.relationLc1102Part1 Seg16.relationLc1102Part2 Seg16.relationLc1102Part3 Seg16.relationLc1102Part4 Seg16.relationLc1102Part5 Seg16.relationLc1102Part6 at r5800
  unfold Seg16.relationRow5801 at r5801
  unfold Seg16.relationRow5802 at r5802
  unfold Seg16.relationRow5803 at r5803
  unfold Seg16.relationRow5804 Seg16.relationLc1103 Seg16.relationLc1103Part0 Seg16.relationLc1103Part1 Seg16.relationLc1103Part2 Seg16.relationLc1103Part3 Seg16.relationLc1103Part4 Seg16.relationLc1103Part5 Seg16.relationLc1103Part6 at r5804
  unfold Seg16.relationRow5805 Seg16.relationLc1104 Seg16.relationLc1104Part0 Seg16.relationLc1104Part1 Seg16.relationLc1104Part2 Seg16.relationLc1104Part3 Seg16.relationLc1104Part4 Seg16.relationLc1104Part5 Seg16.relationLc1104Part6 at r5805
  unfold Seg16.relationRow5806 at r5806
  unfold Seg16.relationRow5807 at r5807
  unfold Seg16.relationRow5808 at r5808
  unfold Seg16.relationRow5809 at r5809
  unfold Seg16.relationRow5810 at r5810
  have hrung213 (bit : Bool) (hbit : rho 15505 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
        ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩
        ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
        ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩ := by
    have hsum : seg16AccX213 rho + seg16AccY213 rho = rho 18369 := by
      rw [seg16LadderFlatX213_eq, seg16LadderFlatY213_eq]
      unfold seg16LadderFlatX213 seg16LadderFlatY213
      linear_combination r5797
    have ha0 : (rho 18367 + rho 18368) * (seg16AccX213 rho + seg16AccY213 rho) = rho 18370 := by
      rw [hsum]
      linear_combination r5798
    have ha1 : rho 18368 * seg16AccX213 rho = rho 18371 := by
      rw [seg16LadderFlatX213_eq]
      unfold seg16LadderFlatX213
      linear_combination r5799
    have ha2 : rho 18367 * seg16AccY213 rho = rho 18372 := by
      rw [seg16LadderFlatY213_eq]
      unfold seg16LadderFlatY213
      linear_combination r5800
    have ha3 : 3021 * rho 18371 * rho 18372 = rho 18373 := by
      linear_combination r5801
    have ha4 : rho 18374 * (1 + rho 18373) = rho 18371 + rho 18372 := by
      linear_combination r5802
    have ha5 : rho 18375 * (1 - rho 18373) = rho 18370 - rho 18371 - rho 18372 := by
      linear_combination r5803
    have haddx :
        rho 18374 * (1 + 3021 * (rho 18368 * seg16AccX213 rho) * (rho 18367 * seg16AccY213 rho)) =
          rho 18368 * seg16AccX213 rho + rho 18367 * seg16AccY213 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18375 * (1 - 3021 * (rho 18368 * seg16AccX213 rho) * (rho 18367 * seg16AccY213 rho)) =
          (-1) * (rho 18368 * seg16AccX213 rho) - rho 18367 * seg16AccY213 rho +
            (seg16AccY213 rho - seg16AccX213 rho * (-1)) * (rho 18367 + rho 18368) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18375 * (1 - rho 18373) = rho 18370 - rho 18371 - rho 18372 := ha5
        _ = (-1) * rho 18371 - rho 18372 + (seg16AccY213 rho - seg16AccX213 rho * (-1)) * (rho 18367 + rho 18368) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX214 rho = seg16AccX213 rho - Bool.toZMod bit * (seg16AccX213 rho - rho 18374) := by
      have hd : rho 18376 = Bool.toZMod bit * (rho 18374 - seg16AccX213 rho) := by
        rw [← hbit, seg16LadderFlatX213_eq]
        unfold seg16LadderFlatX213
        linear_combination -r5804
      unfold seg16AccX214
      linear_combination hd
    have hsely : seg16AccY214 rho = seg16AccY213 rho - Bool.toZMod bit * (seg16AccY213 rho - rho 18375) := by
      have hd : rho 18377 = Bool.toZMod bit * (rho 18375 - seg16AccY213 rho) := by
        rw [← hbit, seg16LadderFlatY213_eq]
        unfold seg16LadderFlatY213
        linear_combination -r5805
      unfold seg16AccY214
      linear_combination hd
    have hd0 : rho 18367 * rho 18368 = rho 18378 := by linear_combination r5806
    have hd1 : rho 18367 * rho 18367 = rho 18379 := by linear_combination r5807
    have hd2 : rho 18368 * rho 18368 = rho 18380 := by linear_combination r5808
    have hd3 : rho 18381 * (rho 18368 * rho 18368 + rho 18367 * rho 18367 * (-1)) = 2 * (rho 18367 * rho 18368) := by
      rw [hd0, hd1, hd2]
      linear_combination r5809
    have hd4 : rho 18382 * (2 - (rho 18368 * rho 18368 + rho 18367 * rho 18367 * (-1))) = rho 18368 * rho 18368 - rho 18367 * rho 18367 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX213 rho : Seg16.F), (seg16AccY213 rho : Seg16.F)⟩
      ⟨(rho 18367 : Seg16.F), (rho 18368 : Seg16.F)⟩
      ⟨(rho 18374 : Seg16.F), (rho 18375 : Seg16.F)⟩
      ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
      ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung213

theorem seg16_rung214 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15506 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
        ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩
        ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
        ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5811 Seg16.relationLc1105 Seg16.relationLc1105Part0 Seg16.relationLc1105Part1 Seg16.relationLc1105Part2 Seg16.relationLc1105Part3 Seg16.relationLc1105Part4 Seg16.relationLc1105Part5 Seg16.relationLc1105Part6 Seg16.relationLc1105Part7 Seg16.relationLc1105Part8 Seg16.relationLc1105Part9 Seg16.relationLc1105Part10 Seg16.relationLc1105Part11 Seg16.relationLc1105Part12 Seg16.relationLc1105Part13 at r5811
  unfold Seg16.relationRow5812 at r5812
  unfold Seg16.relationRow5813 Seg16.relationLc1106 Seg16.relationLc1106Part0 Seg16.relationLc1106Part1 Seg16.relationLc1106Part2 Seg16.relationLc1106Part3 Seg16.relationLc1106Part4 Seg16.relationLc1106Part5 Seg16.relationLc1106Part6 at r5813
  unfold Seg16.relationRow5814 Seg16.relationLc1107 Seg16.relationLc1107Part0 Seg16.relationLc1107Part1 Seg16.relationLc1107Part2 Seg16.relationLc1107Part3 Seg16.relationLc1107Part4 Seg16.relationLc1107Part5 Seg16.relationLc1107Part6 at r5814
  unfold Seg16.relationRow5815 at r5815
  unfold Seg16.relationRow5816 at r5816
  unfold Seg16.relationRow5817 at r5817
  unfold Seg16.relationRow5818 Seg16.relationLc1108 Seg16.relationLc1108Part0 Seg16.relationLc1108Part1 Seg16.relationLc1108Part2 Seg16.relationLc1108Part3 Seg16.relationLc1108Part4 Seg16.relationLc1108Part5 Seg16.relationLc1108Part6 at r5818
  unfold Seg16.relationRow5819 Seg16.relationLc1109 Seg16.relationLc1109Part0 Seg16.relationLc1109Part1 Seg16.relationLc1109Part2 Seg16.relationLc1109Part3 Seg16.relationLc1109Part4 Seg16.relationLc1109Part5 Seg16.relationLc1109Part6 at r5819
  unfold Seg16.relationRow5820 at r5820
  unfold Seg16.relationRow5821 at r5821
  unfold Seg16.relationRow5822 at r5822
  unfold Seg16.relationRow5823 at r5823
  unfold Seg16.relationRow5824 at r5824
  have hrung214 (bit : Bool) (hbit : rho 15506 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
        ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩
        ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
        ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩ := by
    have hsum : seg16AccX214 rho + seg16AccY214 rho = rho 18383 := by
      rw [seg16LadderFlatX214_eq, seg16LadderFlatY214_eq]
      unfold seg16LadderFlatX214 seg16LadderFlatY214
      linear_combination r5811
    have ha0 : (rho 18381 + rho 18382) * (seg16AccX214 rho + seg16AccY214 rho) = rho 18384 := by
      rw [hsum]
      linear_combination r5812
    have ha1 : rho 18382 * seg16AccX214 rho = rho 18385 := by
      rw [seg16LadderFlatX214_eq]
      unfold seg16LadderFlatX214
      linear_combination r5813
    have ha2 : rho 18381 * seg16AccY214 rho = rho 18386 := by
      rw [seg16LadderFlatY214_eq]
      unfold seg16LadderFlatY214
      linear_combination r5814
    have ha3 : 3021 * rho 18385 * rho 18386 = rho 18387 := by
      linear_combination r5815
    have ha4 : rho 18388 * (1 + rho 18387) = rho 18385 + rho 18386 := by
      linear_combination r5816
    have ha5 : rho 18389 * (1 - rho 18387) = rho 18384 - rho 18385 - rho 18386 := by
      linear_combination r5817
    have haddx :
        rho 18388 * (1 + 3021 * (rho 18382 * seg16AccX214 rho) * (rho 18381 * seg16AccY214 rho)) =
          rho 18382 * seg16AccX214 rho + rho 18381 * seg16AccY214 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18389 * (1 - 3021 * (rho 18382 * seg16AccX214 rho) * (rho 18381 * seg16AccY214 rho)) =
          (-1) * (rho 18382 * seg16AccX214 rho) - rho 18381 * seg16AccY214 rho +
            (seg16AccY214 rho - seg16AccX214 rho * (-1)) * (rho 18381 + rho 18382) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18389 * (1 - rho 18387) = rho 18384 - rho 18385 - rho 18386 := ha5
        _ = (-1) * rho 18385 - rho 18386 + (seg16AccY214 rho - seg16AccX214 rho * (-1)) * (rho 18381 + rho 18382) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX215 rho = seg16AccX214 rho - Bool.toZMod bit * (seg16AccX214 rho - rho 18388) := by
      have hd : rho 18390 = Bool.toZMod bit * (rho 18388 - seg16AccX214 rho) := by
        rw [← hbit, seg16LadderFlatX214_eq]
        unfold seg16LadderFlatX214
        linear_combination -r5818
      unfold seg16AccX215
      linear_combination hd
    have hsely : seg16AccY215 rho = seg16AccY214 rho - Bool.toZMod bit * (seg16AccY214 rho - rho 18389) := by
      have hd : rho 18391 = Bool.toZMod bit * (rho 18389 - seg16AccY214 rho) := by
        rw [← hbit, seg16LadderFlatY214_eq]
        unfold seg16LadderFlatY214
        linear_combination -r5819
      unfold seg16AccY215
      linear_combination hd
    have hd0 : rho 18381 * rho 18382 = rho 18392 := by linear_combination r5820
    have hd1 : rho 18381 * rho 18381 = rho 18393 := by linear_combination r5821
    have hd2 : rho 18382 * rho 18382 = rho 18394 := by linear_combination r5822
    have hd3 : rho 18395 * (rho 18382 * rho 18382 + rho 18381 * rho 18381 * (-1)) = 2 * (rho 18381 * rho 18382) := by
      rw [hd0, hd1, hd2]
      linear_combination r5823
    have hd4 : rho 18396 * (2 - (rho 18382 * rho 18382 + rho 18381 * rho 18381 * (-1))) = rho 18382 * rho 18382 - rho 18381 * rho 18381 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5824
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX214 rho : Seg16.F), (seg16AccY214 rho : Seg16.F)⟩
      ⟨(rho 18381 : Seg16.F), (rho 18382 : Seg16.F)⟩
      ⟨(rho 18388 : Seg16.F), (rho 18389 : Seg16.F)⟩
      ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
      ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung214

theorem seg16_rung215 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15507 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
        ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩
        ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
        ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, _⟩
  unfold Seg16.relationRow5825 Seg16.relationLc1110 Seg16.relationLc1110Part0 Seg16.relationLc1110Part1 Seg16.relationLc1110Part2 Seg16.relationLc1110Part3 Seg16.relationLc1110Part4 Seg16.relationLc1110Part5 Seg16.relationLc1110Part6 Seg16.relationLc1110Part7 Seg16.relationLc1110Part8 Seg16.relationLc1110Part9 Seg16.relationLc1110Part10 Seg16.relationLc1110Part11 Seg16.relationLc1110Part12 Seg16.relationLc1110Part13 at r5825
  unfold Seg16.relationRow5826 at r5826
  unfold Seg16.relationRow5827 Seg16.relationLc1111 Seg16.relationLc1111Part0 Seg16.relationLc1111Part1 Seg16.relationLc1111Part2 Seg16.relationLc1111Part3 Seg16.relationLc1111Part4 Seg16.relationLc1111Part5 Seg16.relationLc1111Part6 at r5827
  unfold Seg16.relationRow5828 Seg16.relationLc1112 Seg16.relationLc1112Part0 Seg16.relationLc1112Part1 Seg16.relationLc1112Part2 Seg16.relationLc1112Part3 Seg16.relationLc1112Part4 Seg16.relationLc1112Part5 Seg16.relationLc1112Part6 at r5828
  unfold Seg16.relationRow5829 at r5829
  unfold Seg16.relationRow5830 at r5830
  unfold Seg16.relationRow5831 at r5831
  unfold Seg16.relationRow5832 Seg16.relationLc1113 Seg16.relationLc1113Part0 Seg16.relationLc1113Part1 Seg16.relationLc1113Part2 Seg16.relationLc1113Part3 Seg16.relationLc1113Part4 Seg16.relationLc1113Part5 Seg16.relationLc1113Part6 at r5832
  unfold Seg16.relationRow5833 Seg16.relationLc1114 Seg16.relationLc1114Part0 Seg16.relationLc1114Part1 Seg16.relationLc1114Part2 Seg16.relationLc1114Part3 Seg16.relationLc1114Part4 Seg16.relationLc1114Part5 Seg16.relationLc1114Part6 at r5833
  unfold Seg16.relationRow5834 at r5834
  unfold Seg16.relationRow5835 at r5835
  unfold Seg16.relationRow5836 at r5836
  unfold Seg16.relationRow5837 at r5837
  unfold Seg16.relationRow5838 at r5838
  have hrung215 (bit : Bool) (hbit : rho 15507 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
        ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩
        ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
        ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩ := by
    have hsum : seg16AccX215 rho + seg16AccY215 rho = rho 18397 := by
      rw [seg16LadderFlatX215_eq, seg16LadderFlatY215_eq]
      unfold seg16LadderFlatX215 seg16LadderFlatY215
      linear_combination r5825
    have ha0 : (rho 18395 + rho 18396) * (seg16AccX215 rho + seg16AccY215 rho) = rho 18398 := by
      rw [hsum]
      linear_combination r5826
    have ha1 : rho 18396 * seg16AccX215 rho = rho 18399 := by
      rw [seg16LadderFlatX215_eq]
      unfold seg16LadderFlatX215
      linear_combination r5827
    have ha2 : rho 18395 * seg16AccY215 rho = rho 18400 := by
      rw [seg16LadderFlatY215_eq]
      unfold seg16LadderFlatY215
      linear_combination r5828
    have ha3 : 3021 * rho 18399 * rho 18400 = rho 18401 := by
      linear_combination r5829
    have ha4 : rho 18402 * (1 + rho 18401) = rho 18399 + rho 18400 := by
      linear_combination r5830
    have ha5 : rho 18403 * (1 - rho 18401) = rho 18398 - rho 18399 - rho 18400 := by
      linear_combination r5831
    have haddx :
        rho 18402 * (1 + 3021 * (rho 18396 * seg16AccX215 rho) * (rho 18395 * seg16AccY215 rho)) =
          rho 18396 * seg16AccX215 rho + rho 18395 * seg16AccY215 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18403 * (1 - 3021 * (rho 18396 * seg16AccX215 rho) * (rho 18395 * seg16AccY215 rho)) =
          (-1) * (rho 18396 * seg16AccX215 rho) - rho 18395 * seg16AccY215 rho +
            (seg16AccY215 rho - seg16AccX215 rho * (-1)) * (rho 18395 + rho 18396) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18403 * (1 - rho 18401) = rho 18398 - rho 18399 - rho 18400 := ha5
        _ = (-1) * rho 18399 - rho 18400 + (seg16AccY215 rho - seg16AccX215 rho * (-1)) * (rho 18395 + rho 18396) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX216 rho = seg16AccX215 rho - Bool.toZMod bit * (seg16AccX215 rho - rho 18402) := by
      have hd : rho 18404 = Bool.toZMod bit * (rho 18402 - seg16AccX215 rho) := by
        rw [← hbit, seg16LadderFlatX215_eq]
        unfold seg16LadderFlatX215
        linear_combination -r5832
      unfold seg16AccX216
      linear_combination hd
    have hsely : seg16AccY216 rho = seg16AccY215 rho - Bool.toZMod bit * (seg16AccY215 rho - rho 18403) := by
      have hd : rho 18405 = Bool.toZMod bit * (rho 18403 - seg16AccY215 rho) := by
        rw [← hbit, seg16LadderFlatY215_eq]
        unfold seg16LadderFlatY215
        linear_combination -r5833
      unfold seg16AccY216
      linear_combination hd
    have hd0 : rho 18395 * rho 18396 = rho 18406 := by linear_combination r5834
    have hd1 : rho 18395 * rho 18395 = rho 18407 := by linear_combination r5835
    have hd2 : rho 18396 * rho 18396 = rho 18408 := by linear_combination r5836
    have hd3 : rho 18409 * (rho 18396 * rho 18396 + rho 18395 * rho 18395 * (-1)) = 2 * (rho 18395 * rho 18396) := by
      rw [hd0, hd1, hd2]
      linear_combination r5837
    have hd4 : rho 18410 * (2 - (rho 18396 * rho 18396 + rho 18395 * rho 18395 * (-1))) = rho 18396 * rho 18396 - rho 18395 * rho 18395 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5838
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX215 rho : Seg16.F), (seg16AccY215 rho : Seg16.F)⟩
      ⟨(rho 18395 : Seg16.F), (rho 18396 : Seg16.F)⟩
      ⟨(rho 18402 : Seg16.F), (rho 18403 : Seg16.F)⟩
      ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
      ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung215

theorem seg16_rung216 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15508 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
        ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩
        ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
        ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p72, p73, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart72 at p72
  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5839⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5839 Seg16.relationLc1115 Seg16.relationLc1115Part0 Seg16.relationLc1115Part1 Seg16.relationLc1115Part2 Seg16.relationLc1115Part3 Seg16.relationLc1115Part4 Seg16.relationLc1115Part5 Seg16.relationLc1115Part6 Seg16.relationLc1115Part7 Seg16.relationLc1115Part8 Seg16.relationLc1115Part9 Seg16.relationLc1115Part10 Seg16.relationLc1115Part11 Seg16.relationLc1115Part12 Seg16.relationLc1115Part13 at r5839
  unfold Seg16.relationRow5840 at r5840
  unfold Seg16.relationRow5841 Seg16.relationLc1116 Seg16.relationLc1116Part0 Seg16.relationLc1116Part1 Seg16.relationLc1116Part2 Seg16.relationLc1116Part3 Seg16.relationLc1116Part4 Seg16.relationLc1116Part5 Seg16.relationLc1116Part6 at r5841
  unfold Seg16.relationRow5842 Seg16.relationLc1117 Seg16.relationLc1117Part0 Seg16.relationLc1117Part1 Seg16.relationLc1117Part2 Seg16.relationLc1117Part3 Seg16.relationLc1117Part4 Seg16.relationLc1117Part5 Seg16.relationLc1117Part6 at r5842
  unfold Seg16.relationRow5843 at r5843
  unfold Seg16.relationRow5844 at r5844
  unfold Seg16.relationRow5845 at r5845
  unfold Seg16.relationRow5846 Seg16.relationLc1118 Seg16.relationLc1118Part0 Seg16.relationLc1118Part1 Seg16.relationLc1118Part2 Seg16.relationLc1118Part3 Seg16.relationLc1118Part4 Seg16.relationLc1118Part5 Seg16.relationLc1118Part6 at r5846
  unfold Seg16.relationRow5847 Seg16.relationLc1119 Seg16.relationLc1119Part0 Seg16.relationLc1119Part1 Seg16.relationLc1119Part2 Seg16.relationLc1119Part3 Seg16.relationLc1119Part4 Seg16.relationLc1119Part5 Seg16.relationLc1119Part6 at r5847
  unfold Seg16.relationRow5848 at r5848
  unfold Seg16.relationRow5849 at r5849
  unfold Seg16.relationRow5850 at r5850
  unfold Seg16.relationRow5851 at r5851
  unfold Seg16.relationRow5852 at r5852
  have hrung216 (bit : Bool) (hbit : rho 15508 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
        ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩
        ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
        ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩ := by
    have hsum : seg16AccX216 rho + seg16AccY216 rho = rho 18411 := by
      rw [seg16LadderFlatX216_eq, seg16LadderFlatY216_eq]
      unfold seg16LadderFlatX216 seg16LadderFlatY216
      linear_combination r5839
    have ha0 : (rho 18409 + rho 18410) * (seg16AccX216 rho + seg16AccY216 rho) = rho 18412 := by
      rw [hsum]
      linear_combination r5840
    have ha1 : rho 18410 * seg16AccX216 rho = rho 18413 := by
      rw [seg16LadderFlatX216_eq]
      unfold seg16LadderFlatX216
      linear_combination r5841
    have ha2 : rho 18409 * seg16AccY216 rho = rho 18414 := by
      rw [seg16LadderFlatY216_eq]
      unfold seg16LadderFlatY216
      linear_combination r5842
    have ha3 : 3021 * rho 18413 * rho 18414 = rho 18415 := by
      linear_combination r5843
    have ha4 : rho 18416 * (1 + rho 18415) = rho 18413 + rho 18414 := by
      linear_combination r5844
    have ha5 : rho 18417 * (1 - rho 18415) = rho 18412 - rho 18413 - rho 18414 := by
      linear_combination r5845
    have haddx :
        rho 18416 * (1 + 3021 * (rho 18410 * seg16AccX216 rho) * (rho 18409 * seg16AccY216 rho)) =
          rho 18410 * seg16AccX216 rho + rho 18409 * seg16AccY216 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18417 * (1 - 3021 * (rho 18410 * seg16AccX216 rho) * (rho 18409 * seg16AccY216 rho)) =
          (-1) * (rho 18410 * seg16AccX216 rho) - rho 18409 * seg16AccY216 rho +
            (seg16AccY216 rho - seg16AccX216 rho * (-1)) * (rho 18409 + rho 18410) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18417 * (1 - rho 18415) = rho 18412 - rho 18413 - rho 18414 := ha5
        _ = (-1) * rho 18413 - rho 18414 + (seg16AccY216 rho - seg16AccX216 rho * (-1)) * (rho 18409 + rho 18410) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX217 rho = seg16AccX216 rho - Bool.toZMod bit * (seg16AccX216 rho - rho 18416) := by
      have hd : rho 18418 = Bool.toZMod bit * (rho 18416 - seg16AccX216 rho) := by
        rw [← hbit, seg16LadderFlatX216_eq]
        unfold seg16LadderFlatX216
        linear_combination -r5846
      unfold seg16AccX217
      linear_combination hd
    have hsely : seg16AccY217 rho = seg16AccY216 rho - Bool.toZMod bit * (seg16AccY216 rho - rho 18417) := by
      have hd : rho 18419 = Bool.toZMod bit * (rho 18417 - seg16AccY216 rho) := by
        rw [← hbit, seg16LadderFlatY216_eq]
        unfold seg16LadderFlatY216
        linear_combination -r5847
      unfold seg16AccY217
      linear_combination hd
    have hd0 : rho 18409 * rho 18410 = rho 18420 := by linear_combination r5848
    have hd1 : rho 18409 * rho 18409 = rho 18421 := by linear_combination r5849
    have hd2 : rho 18410 * rho 18410 = rho 18422 := by linear_combination r5850
    have hd3 : rho 18423 * (rho 18410 * rho 18410 + rho 18409 * rho 18409 * (-1)) = 2 * (rho 18409 * rho 18410) := by
      rw [hd0, hd1, hd2]
      linear_combination r5851
    have hd4 : rho 18424 * (2 - (rho 18410 * rho 18410 + rho 18409 * rho 18409 * (-1))) = rho 18410 * rho 18410 - rho 18409 * rho 18409 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5852
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX216 rho : Seg16.F), (seg16AccY216 rho : Seg16.F)⟩
      ⟨(rho 18409 : Seg16.F), (rho 18410 : Seg16.F)⟩
      ⟨(rho 18416 : Seg16.F), (rho 18417 : Seg16.F)⟩
      ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
      ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung216

theorem seg16_rung217 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15509 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
        ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩
        ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
        ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5853 Seg16.relationLc1120 Seg16.relationLc1120Part0 Seg16.relationLc1120Part1 Seg16.relationLc1120Part2 Seg16.relationLc1120Part3 Seg16.relationLc1120Part4 Seg16.relationLc1120Part5 Seg16.relationLc1120Part6 Seg16.relationLc1120Part7 Seg16.relationLc1120Part8 Seg16.relationLc1120Part9 Seg16.relationLc1120Part10 Seg16.relationLc1120Part11 Seg16.relationLc1120Part12 Seg16.relationLc1120Part13 at r5853
  unfold Seg16.relationRow5854 at r5854
  unfold Seg16.relationRow5855 Seg16.relationLc1121 Seg16.relationLc1121Part0 Seg16.relationLc1121Part1 Seg16.relationLc1121Part2 Seg16.relationLc1121Part3 Seg16.relationLc1121Part4 Seg16.relationLc1121Part5 Seg16.relationLc1121Part6 at r5855
  unfold Seg16.relationRow5856 Seg16.relationLc1122 Seg16.relationLc1122Part0 Seg16.relationLc1122Part1 Seg16.relationLc1122Part2 Seg16.relationLc1122Part3 Seg16.relationLc1122Part4 Seg16.relationLc1122Part5 Seg16.relationLc1122Part6 at r5856
  unfold Seg16.relationRow5857 at r5857
  unfold Seg16.relationRow5858 at r5858
  unfold Seg16.relationRow5859 at r5859
  unfold Seg16.relationRow5860 Seg16.relationLc1123 Seg16.relationLc1123Part0 Seg16.relationLc1123Part1 Seg16.relationLc1123Part2 Seg16.relationLc1123Part3 Seg16.relationLc1123Part4 Seg16.relationLc1123Part5 Seg16.relationLc1123Part6 at r5860
  unfold Seg16.relationRow5861 Seg16.relationLc1124 Seg16.relationLc1124Part0 Seg16.relationLc1124Part1 Seg16.relationLc1124Part2 Seg16.relationLc1124Part3 Seg16.relationLc1124Part4 Seg16.relationLc1124Part5 Seg16.relationLc1124Part6 at r5861
  unfold Seg16.relationRow5862 at r5862
  unfold Seg16.relationRow5863 at r5863
  unfold Seg16.relationRow5864 at r5864
  unfold Seg16.relationRow5865 at r5865
  unfold Seg16.relationRow5866 at r5866
  have hrung217 (bit : Bool) (hbit : rho 15509 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
        ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩
        ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
        ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩ := by
    have hsum : seg16AccX217 rho + seg16AccY217 rho = rho 18425 := by
      rw [seg16LadderFlatX217_eq, seg16LadderFlatY217_eq]
      unfold seg16LadderFlatX217 seg16LadderFlatY217
      linear_combination r5853
    have ha0 : (rho 18423 + rho 18424) * (seg16AccX217 rho + seg16AccY217 rho) = rho 18426 := by
      rw [hsum]
      linear_combination r5854
    have ha1 : rho 18424 * seg16AccX217 rho = rho 18427 := by
      rw [seg16LadderFlatX217_eq]
      unfold seg16LadderFlatX217
      linear_combination r5855
    have ha2 : rho 18423 * seg16AccY217 rho = rho 18428 := by
      rw [seg16LadderFlatY217_eq]
      unfold seg16LadderFlatY217
      linear_combination r5856
    have ha3 : 3021 * rho 18427 * rho 18428 = rho 18429 := by
      linear_combination r5857
    have ha4 : rho 18430 * (1 + rho 18429) = rho 18427 + rho 18428 := by
      linear_combination r5858
    have ha5 : rho 18431 * (1 - rho 18429) = rho 18426 - rho 18427 - rho 18428 := by
      linear_combination r5859
    have haddx :
        rho 18430 * (1 + 3021 * (rho 18424 * seg16AccX217 rho) * (rho 18423 * seg16AccY217 rho)) =
          rho 18424 * seg16AccX217 rho + rho 18423 * seg16AccY217 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18431 * (1 - 3021 * (rho 18424 * seg16AccX217 rho) * (rho 18423 * seg16AccY217 rho)) =
          (-1) * (rho 18424 * seg16AccX217 rho) - rho 18423 * seg16AccY217 rho +
            (seg16AccY217 rho - seg16AccX217 rho * (-1)) * (rho 18423 + rho 18424) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18431 * (1 - rho 18429) = rho 18426 - rho 18427 - rho 18428 := ha5
        _ = (-1) * rho 18427 - rho 18428 + (seg16AccY217 rho - seg16AccX217 rho * (-1)) * (rho 18423 + rho 18424) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX218 rho = seg16AccX217 rho - Bool.toZMod bit * (seg16AccX217 rho - rho 18430) := by
      have hd : rho 18432 = Bool.toZMod bit * (rho 18430 - seg16AccX217 rho) := by
        rw [← hbit, seg16LadderFlatX217_eq]
        unfold seg16LadderFlatX217
        linear_combination -r5860
      unfold seg16AccX218
      linear_combination hd
    have hsely : seg16AccY218 rho = seg16AccY217 rho - Bool.toZMod bit * (seg16AccY217 rho - rho 18431) := by
      have hd : rho 18433 = Bool.toZMod bit * (rho 18431 - seg16AccY217 rho) := by
        rw [← hbit, seg16LadderFlatY217_eq]
        unfold seg16LadderFlatY217
        linear_combination -r5861
      unfold seg16AccY218
      linear_combination hd
    have hd0 : rho 18423 * rho 18424 = rho 18434 := by linear_combination r5862
    have hd1 : rho 18423 * rho 18423 = rho 18435 := by linear_combination r5863
    have hd2 : rho 18424 * rho 18424 = rho 18436 := by linear_combination r5864
    have hd3 : rho 18437 * (rho 18424 * rho 18424 + rho 18423 * rho 18423 * (-1)) = 2 * (rho 18423 * rho 18424) := by
      rw [hd0, hd1, hd2]
      linear_combination r5865
    have hd4 : rho 18438 * (2 - (rho 18424 * rho 18424 + rho 18423 * rho 18423 * (-1))) = rho 18424 * rho 18424 - rho 18423 * rho 18423 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5866
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX217 rho : Seg16.F), (seg16AccY217 rho : Seg16.F)⟩
      ⟨(rho 18423 : Seg16.F), (rho 18424 : Seg16.F)⟩
      ⟨(rho 18430 : Seg16.F), (rho 18431 : Seg16.F)⟩
      ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
      ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung217

theorem seg16_rung218 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15510 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
        ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩
        ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
        ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5867 Seg16.relationLc1125 Seg16.relationLc1125Part0 Seg16.relationLc1125Part1 Seg16.relationLc1125Part2 Seg16.relationLc1125Part3 Seg16.relationLc1125Part4 Seg16.relationLc1125Part5 Seg16.relationLc1125Part6 Seg16.relationLc1125Part7 Seg16.relationLc1125Part8 Seg16.relationLc1125Part9 Seg16.relationLc1125Part10 Seg16.relationLc1125Part11 Seg16.relationLc1125Part12 Seg16.relationLc1125Part13 at r5867
  unfold Seg16.relationRow5868 at r5868
  unfold Seg16.relationRow5869 Seg16.relationLc1126 Seg16.relationLc1126Part0 Seg16.relationLc1126Part1 Seg16.relationLc1126Part2 Seg16.relationLc1126Part3 Seg16.relationLc1126Part4 Seg16.relationLc1126Part5 Seg16.relationLc1126Part6 at r5869
  unfold Seg16.relationRow5870 Seg16.relationLc1127 Seg16.relationLc1127Part0 Seg16.relationLc1127Part1 Seg16.relationLc1127Part2 Seg16.relationLc1127Part3 Seg16.relationLc1127Part4 Seg16.relationLc1127Part5 Seg16.relationLc1127Part6 at r5870
  unfold Seg16.relationRow5871 at r5871
  unfold Seg16.relationRow5872 at r5872
  unfold Seg16.relationRow5873 at r5873
  unfold Seg16.relationRow5874 Seg16.relationLc1128 Seg16.relationLc1128Part0 Seg16.relationLc1128Part1 Seg16.relationLc1128Part2 Seg16.relationLc1128Part3 Seg16.relationLc1128Part4 Seg16.relationLc1128Part5 Seg16.relationLc1128Part6 at r5874
  unfold Seg16.relationRow5875 Seg16.relationLc1129 Seg16.relationLc1129Part0 Seg16.relationLc1129Part1 Seg16.relationLc1129Part2 Seg16.relationLc1129Part3 Seg16.relationLc1129Part4 Seg16.relationLc1129Part5 Seg16.relationLc1129Part6 at r5875
  unfold Seg16.relationRow5876 at r5876
  unfold Seg16.relationRow5877 at r5877
  unfold Seg16.relationRow5878 at r5878
  unfold Seg16.relationRow5879 at r5879
  unfold Seg16.relationRow5880 at r5880
  have hrung218 (bit : Bool) (hbit : rho 15510 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
        ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩
        ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
        ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩ := by
    have hsum : seg16AccX218 rho + seg16AccY218 rho = rho 18439 := by
      rw [seg16LadderFlatX218_eq, seg16LadderFlatY218_eq]
      unfold seg16LadderFlatX218 seg16LadderFlatY218
      linear_combination r5867
    have ha0 : (rho 18437 + rho 18438) * (seg16AccX218 rho + seg16AccY218 rho) = rho 18440 := by
      rw [hsum]
      linear_combination r5868
    have ha1 : rho 18438 * seg16AccX218 rho = rho 18441 := by
      rw [seg16LadderFlatX218_eq]
      unfold seg16LadderFlatX218
      linear_combination r5869
    have ha2 : rho 18437 * seg16AccY218 rho = rho 18442 := by
      rw [seg16LadderFlatY218_eq]
      unfold seg16LadderFlatY218
      linear_combination r5870
    have ha3 : 3021 * rho 18441 * rho 18442 = rho 18443 := by
      linear_combination r5871
    have ha4 : rho 18444 * (1 + rho 18443) = rho 18441 + rho 18442 := by
      linear_combination r5872
    have ha5 : rho 18445 * (1 - rho 18443) = rho 18440 - rho 18441 - rho 18442 := by
      linear_combination r5873
    have haddx :
        rho 18444 * (1 + 3021 * (rho 18438 * seg16AccX218 rho) * (rho 18437 * seg16AccY218 rho)) =
          rho 18438 * seg16AccX218 rho + rho 18437 * seg16AccY218 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18445 * (1 - 3021 * (rho 18438 * seg16AccX218 rho) * (rho 18437 * seg16AccY218 rho)) =
          (-1) * (rho 18438 * seg16AccX218 rho) - rho 18437 * seg16AccY218 rho +
            (seg16AccY218 rho - seg16AccX218 rho * (-1)) * (rho 18437 + rho 18438) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18445 * (1 - rho 18443) = rho 18440 - rho 18441 - rho 18442 := ha5
        _ = (-1) * rho 18441 - rho 18442 + (seg16AccY218 rho - seg16AccX218 rho * (-1)) * (rho 18437 + rho 18438) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX219 rho = seg16AccX218 rho - Bool.toZMod bit * (seg16AccX218 rho - rho 18444) := by
      have hd : rho 18446 = Bool.toZMod bit * (rho 18444 - seg16AccX218 rho) := by
        rw [← hbit, seg16LadderFlatX218_eq]
        unfold seg16LadderFlatX218
        linear_combination -r5874
      unfold seg16AccX219
      linear_combination hd
    have hsely : seg16AccY219 rho = seg16AccY218 rho - Bool.toZMod bit * (seg16AccY218 rho - rho 18445) := by
      have hd : rho 18447 = Bool.toZMod bit * (rho 18445 - seg16AccY218 rho) := by
        rw [← hbit, seg16LadderFlatY218_eq]
        unfold seg16LadderFlatY218
        linear_combination -r5875
      unfold seg16AccY219
      linear_combination hd
    have hd0 : rho 18437 * rho 18438 = rho 18448 := by linear_combination r5876
    have hd1 : rho 18437 * rho 18437 = rho 18449 := by linear_combination r5877
    have hd2 : rho 18438 * rho 18438 = rho 18450 := by linear_combination r5878
    have hd3 : rho 18451 * (rho 18438 * rho 18438 + rho 18437 * rho 18437 * (-1)) = 2 * (rho 18437 * rho 18438) := by
      rw [hd0, hd1, hd2]
      linear_combination r5879
    have hd4 : rho 18452 * (2 - (rho 18438 * rho 18438 + rho 18437 * rho 18437 * (-1))) = rho 18438 * rho 18438 - rho 18437 * rho 18437 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5880
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX218 rho : Seg16.F), (seg16AccY218 rho : Seg16.F)⟩
      ⟨(rho 18437 : Seg16.F), (rho 18438 : Seg16.F)⟩
      ⟨(rho 18444 : Seg16.F), (rho 18445 : Seg16.F)⟩
      ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
      ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung218

theorem seg16_rung219 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15511 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
        ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩
        ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
        ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5881 Seg16.relationLc1130 Seg16.relationLc1130Part0 Seg16.relationLc1130Part1 Seg16.relationLc1130Part2 Seg16.relationLc1130Part3 Seg16.relationLc1130Part4 Seg16.relationLc1130Part5 Seg16.relationLc1130Part6 Seg16.relationLc1130Part7 Seg16.relationLc1130Part8 Seg16.relationLc1130Part9 Seg16.relationLc1130Part10 Seg16.relationLc1130Part11 Seg16.relationLc1130Part12 Seg16.relationLc1130Part13 at r5881
  unfold Seg16.relationRow5882 at r5882
  unfold Seg16.relationRow5883 Seg16.relationLc1131 Seg16.relationLc1131Part0 Seg16.relationLc1131Part1 Seg16.relationLc1131Part2 Seg16.relationLc1131Part3 Seg16.relationLc1131Part4 Seg16.relationLc1131Part5 Seg16.relationLc1131Part6 at r5883
  unfold Seg16.relationRow5884 Seg16.relationLc1132 Seg16.relationLc1132Part0 Seg16.relationLc1132Part1 Seg16.relationLc1132Part2 Seg16.relationLc1132Part3 Seg16.relationLc1132Part4 Seg16.relationLc1132Part5 Seg16.relationLc1132Part6 at r5884
  unfold Seg16.relationRow5885 at r5885
  unfold Seg16.relationRow5886 at r5886
  unfold Seg16.relationRow5887 at r5887
  unfold Seg16.relationRow5888 Seg16.relationLc1133 Seg16.relationLc1133Part0 Seg16.relationLc1133Part1 Seg16.relationLc1133Part2 Seg16.relationLc1133Part3 Seg16.relationLc1133Part4 Seg16.relationLc1133Part5 Seg16.relationLc1133Part6 at r5888
  unfold Seg16.relationRow5889 Seg16.relationLc1134 Seg16.relationLc1134Part0 Seg16.relationLc1134Part1 Seg16.relationLc1134Part2 Seg16.relationLc1134Part3 Seg16.relationLc1134Part4 Seg16.relationLc1134Part5 Seg16.relationLc1134Part6 at r5889
  unfold Seg16.relationRow5890 at r5890
  unfold Seg16.relationRow5891 at r5891
  unfold Seg16.relationRow5892 at r5892
  unfold Seg16.relationRow5893 at r5893
  unfold Seg16.relationRow5894 at r5894
  have hrung219 (bit : Bool) (hbit : rho 15511 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
        ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩
        ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
        ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩ := by
    have hsum : seg16AccX219 rho + seg16AccY219 rho = rho 18453 := by
      rw [seg16LadderFlatX219_eq, seg16LadderFlatY219_eq]
      unfold seg16LadderFlatX219 seg16LadderFlatY219
      linear_combination r5881
    have ha0 : (rho 18451 + rho 18452) * (seg16AccX219 rho + seg16AccY219 rho) = rho 18454 := by
      rw [hsum]
      linear_combination r5882
    have ha1 : rho 18452 * seg16AccX219 rho = rho 18455 := by
      rw [seg16LadderFlatX219_eq]
      unfold seg16LadderFlatX219
      linear_combination r5883
    have ha2 : rho 18451 * seg16AccY219 rho = rho 18456 := by
      rw [seg16LadderFlatY219_eq]
      unfold seg16LadderFlatY219
      linear_combination r5884
    have ha3 : 3021 * rho 18455 * rho 18456 = rho 18457 := by
      linear_combination r5885
    have ha4 : rho 18458 * (1 + rho 18457) = rho 18455 + rho 18456 := by
      linear_combination r5886
    have ha5 : rho 18459 * (1 - rho 18457) = rho 18454 - rho 18455 - rho 18456 := by
      linear_combination r5887
    have haddx :
        rho 18458 * (1 + 3021 * (rho 18452 * seg16AccX219 rho) * (rho 18451 * seg16AccY219 rho)) =
          rho 18452 * seg16AccX219 rho + rho 18451 * seg16AccY219 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18459 * (1 - 3021 * (rho 18452 * seg16AccX219 rho) * (rho 18451 * seg16AccY219 rho)) =
          (-1) * (rho 18452 * seg16AccX219 rho) - rho 18451 * seg16AccY219 rho +
            (seg16AccY219 rho - seg16AccX219 rho * (-1)) * (rho 18451 + rho 18452) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18459 * (1 - rho 18457) = rho 18454 - rho 18455 - rho 18456 := ha5
        _ = (-1) * rho 18455 - rho 18456 + (seg16AccY219 rho - seg16AccX219 rho * (-1)) * (rho 18451 + rho 18452) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX220 rho = seg16AccX219 rho - Bool.toZMod bit * (seg16AccX219 rho - rho 18458) := by
      have hd : rho 18460 = Bool.toZMod bit * (rho 18458 - seg16AccX219 rho) := by
        rw [← hbit, seg16LadderFlatX219_eq]
        unfold seg16LadderFlatX219
        linear_combination -r5888
      unfold seg16AccX220
      linear_combination hd
    have hsely : seg16AccY220 rho = seg16AccY219 rho - Bool.toZMod bit * (seg16AccY219 rho - rho 18459) := by
      have hd : rho 18461 = Bool.toZMod bit * (rho 18459 - seg16AccY219 rho) := by
        rw [← hbit, seg16LadderFlatY219_eq]
        unfold seg16LadderFlatY219
        linear_combination -r5889
      unfold seg16AccY220
      linear_combination hd
    have hd0 : rho 18451 * rho 18452 = rho 18462 := by linear_combination r5890
    have hd1 : rho 18451 * rho 18451 = rho 18463 := by linear_combination r5891
    have hd2 : rho 18452 * rho 18452 = rho 18464 := by linear_combination r5892
    have hd3 : rho 18465 * (rho 18452 * rho 18452 + rho 18451 * rho 18451 * (-1)) = 2 * (rho 18451 * rho 18452) := by
      rw [hd0, hd1, hd2]
      linear_combination r5893
    have hd4 : rho 18466 * (2 - (rho 18452 * rho 18452 + rho 18451 * rho 18451 * (-1))) = rho 18452 * rho 18452 - rho 18451 * rho 18451 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5894
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX219 rho : Seg16.F), (seg16AccY219 rho : Seg16.F)⟩
      ⟨(rho 18451 : Seg16.F), (rho 18452 : Seg16.F)⟩
      ⟨(rho 18458 : Seg16.F), (rho 18459 : Seg16.F)⟩
      ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
      ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung219

theorem seg16_rung220 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15512 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
        ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩
        ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
        ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5895 Seg16.relationLc1135 Seg16.relationLc1135Part0 Seg16.relationLc1135Part1 Seg16.relationLc1135Part2 Seg16.relationLc1135Part3 Seg16.relationLc1135Part4 Seg16.relationLc1135Part5 Seg16.relationLc1135Part6 Seg16.relationLc1135Part7 Seg16.relationLc1135Part8 Seg16.relationLc1135Part9 Seg16.relationLc1135Part10 Seg16.relationLc1135Part11 Seg16.relationLc1135Part12 Seg16.relationLc1135Part13 at r5895
  unfold Seg16.relationRow5896 at r5896
  unfold Seg16.relationRow5897 Seg16.relationLc1136 Seg16.relationLc1136Part0 Seg16.relationLc1136Part1 Seg16.relationLc1136Part2 Seg16.relationLc1136Part3 Seg16.relationLc1136Part4 Seg16.relationLc1136Part5 Seg16.relationLc1136Part6 at r5897
  unfold Seg16.relationRow5898 Seg16.relationLc1137 Seg16.relationLc1137Part0 Seg16.relationLc1137Part1 Seg16.relationLc1137Part2 Seg16.relationLc1137Part3 Seg16.relationLc1137Part4 Seg16.relationLc1137Part5 Seg16.relationLc1137Part6 at r5898
  unfold Seg16.relationRow5899 at r5899
  unfold Seg16.relationRow5900 at r5900
  unfold Seg16.relationRow5901 at r5901
  unfold Seg16.relationRow5902 Seg16.relationLc1138 Seg16.relationLc1138Part0 Seg16.relationLc1138Part1 Seg16.relationLc1138Part2 Seg16.relationLc1138Part3 Seg16.relationLc1138Part4 Seg16.relationLc1138Part5 Seg16.relationLc1138Part6 at r5902
  unfold Seg16.relationRow5903 Seg16.relationLc1139 Seg16.relationLc1139Part0 Seg16.relationLc1139Part1 Seg16.relationLc1139Part2 Seg16.relationLc1139Part3 Seg16.relationLc1139Part4 Seg16.relationLc1139Part5 Seg16.relationLc1139Part6 at r5903
  unfold Seg16.relationRow5904 at r5904
  unfold Seg16.relationRow5905 at r5905
  unfold Seg16.relationRow5906 at r5906
  unfold Seg16.relationRow5907 at r5907
  unfold Seg16.relationRow5908 at r5908
  have hrung220 (bit : Bool) (hbit : rho 15512 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
        ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩
        ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
        ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩ := by
    have hsum : seg16AccX220 rho + seg16AccY220 rho = rho 18467 := by
      rw [seg16LadderFlatX220_eq, seg16LadderFlatY220_eq]
      unfold seg16LadderFlatX220 seg16LadderFlatY220
      linear_combination r5895
    have ha0 : (rho 18465 + rho 18466) * (seg16AccX220 rho + seg16AccY220 rho) = rho 18468 := by
      rw [hsum]
      linear_combination r5896
    have ha1 : rho 18466 * seg16AccX220 rho = rho 18469 := by
      rw [seg16LadderFlatX220_eq]
      unfold seg16LadderFlatX220
      linear_combination r5897
    have ha2 : rho 18465 * seg16AccY220 rho = rho 18470 := by
      rw [seg16LadderFlatY220_eq]
      unfold seg16LadderFlatY220
      linear_combination r5898
    have ha3 : 3021 * rho 18469 * rho 18470 = rho 18471 := by
      linear_combination r5899
    have ha4 : rho 18472 * (1 + rho 18471) = rho 18469 + rho 18470 := by
      linear_combination r5900
    have ha5 : rho 18473 * (1 - rho 18471) = rho 18468 - rho 18469 - rho 18470 := by
      linear_combination r5901
    have haddx :
        rho 18472 * (1 + 3021 * (rho 18466 * seg16AccX220 rho) * (rho 18465 * seg16AccY220 rho)) =
          rho 18466 * seg16AccX220 rho + rho 18465 * seg16AccY220 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18473 * (1 - 3021 * (rho 18466 * seg16AccX220 rho) * (rho 18465 * seg16AccY220 rho)) =
          (-1) * (rho 18466 * seg16AccX220 rho) - rho 18465 * seg16AccY220 rho +
            (seg16AccY220 rho - seg16AccX220 rho * (-1)) * (rho 18465 + rho 18466) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18473 * (1 - rho 18471) = rho 18468 - rho 18469 - rho 18470 := ha5
        _ = (-1) * rho 18469 - rho 18470 + (seg16AccY220 rho - seg16AccX220 rho * (-1)) * (rho 18465 + rho 18466) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX221 rho = seg16AccX220 rho - Bool.toZMod bit * (seg16AccX220 rho - rho 18472) := by
      have hd : rho 18474 = Bool.toZMod bit * (rho 18472 - seg16AccX220 rho) := by
        rw [← hbit, seg16LadderFlatX220_eq]
        unfold seg16LadderFlatX220
        linear_combination -r5902
      unfold seg16AccX221
      linear_combination hd
    have hsely : seg16AccY221 rho = seg16AccY220 rho - Bool.toZMod bit * (seg16AccY220 rho - rho 18473) := by
      have hd : rho 18475 = Bool.toZMod bit * (rho 18473 - seg16AccY220 rho) := by
        rw [← hbit, seg16LadderFlatY220_eq]
        unfold seg16LadderFlatY220
        linear_combination -r5903
      unfold seg16AccY221
      linear_combination hd
    have hd0 : rho 18465 * rho 18466 = rho 18476 := by linear_combination r5904
    have hd1 : rho 18465 * rho 18465 = rho 18477 := by linear_combination r5905
    have hd2 : rho 18466 * rho 18466 = rho 18478 := by linear_combination r5906
    have hd3 : rho 18479 * (rho 18466 * rho 18466 + rho 18465 * rho 18465 * (-1)) = 2 * (rho 18465 * rho 18466) := by
      rw [hd0, hd1, hd2]
      linear_combination r5907
    have hd4 : rho 18480 * (2 - (rho 18466 * rho 18466 + rho 18465 * rho 18465 * (-1))) = rho 18466 * rho 18466 - rho 18465 * rho 18465 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX220 rho : Seg16.F), (seg16AccY220 rho : Seg16.F)⟩
      ⟨(rho 18465 : Seg16.F), (rho 18466 : Seg16.F)⟩
      ⟨(rho 18472 : Seg16.F), (rho 18473 : Seg16.F)⟩
      ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
      ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung220

theorem seg16_rung221 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15513 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
        ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩
        ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
        ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p73, p74, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart73 at p73
  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5909 Seg16.relationLc1140 Seg16.relationLc1140Part0 Seg16.relationLc1140Part1 Seg16.relationLc1140Part2 Seg16.relationLc1140Part3 Seg16.relationLc1140Part4 Seg16.relationLc1140Part5 Seg16.relationLc1140Part6 Seg16.relationLc1140Part7 Seg16.relationLc1140Part8 Seg16.relationLc1140Part9 Seg16.relationLc1140Part10 Seg16.relationLc1140Part11 Seg16.relationLc1140Part12 Seg16.relationLc1140Part13 at r5909
  unfold Seg16.relationRow5910 at r5910
  unfold Seg16.relationRow5911 Seg16.relationLc1141 Seg16.relationLc1141Part0 Seg16.relationLc1141Part1 Seg16.relationLc1141Part2 Seg16.relationLc1141Part3 Seg16.relationLc1141Part4 Seg16.relationLc1141Part5 Seg16.relationLc1141Part6 at r5911
  unfold Seg16.relationRow5912 Seg16.relationLc1142 Seg16.relationLc1142Part0 Seg16.relationLc1142Part1 Seg16.relationLc1142Part2 Seg16.relationLc1142Part3 Seg16.relationLc1142Part4 Seg16.relationLc1142Part5 Seg16.relationLc1142Part6 at r5912
  unfold Seg16.relationRow5913 at r5913
  unfold Seg16.relationRow5914 at r5914
  unfold Seg16.relationRow5915 at r5915
  unfold Seg16.relationRow5916 Seg16.relationLc1143 Seg16.relationLc1143Part0 Seg16.relationLc1143Part1 Seg16.relationLc1143Part2 Seg16.relationLc1143Part3 Seg16.relationLc1143Part4 Seg16.relationLc1143Part5 Seg16.relationLc1143Part6 at r5916
  unfold Seg16.relationRow5917 Seg16.relationLc1144 Seg16.relationLc1144Part0 Seg16.relationLc1144Part1 Seg16.relationLc1144Part2 Seg16.relationLc1144Part3 Seg16.relationLc1144Part4 Seg16.relationLc1144Part5 Seg16.relationLc1144Part6 at r5917
  unfold Seg16.relationRow5918 at r5918
  unfold Seg16.relationRow5919 at r5919
  unfold Seg16.relationRow5920 at r5920
  unfold Seg16.relationRow5921 at r5921
  unfold Seg16.relationRow5922 at r5922
  have hrung221 (bit : Bool) (hbit : rho 15513 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
        ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩
        ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
        ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩ := by
    have hsum : seg16AccX221 rho + seg16AccY221 rho = rho 18481 := by
      rw [seg16LadderFlatX221_eq, seg16LadderFlatY221_eq]
      unfold seg16LadderFlatX221 seg16LadderFlatY221
      linear_combination r5909
    have ha0 : (rho 18479 + rho 18480) * (seg16AccX221 rho + seg16AccY221 rho) = rho 18482 := by
      rw [hsum]
      linear_combination r5910
    have ha1 : rho 18480 * seg16AccX221 rho = rho 18483 := by
      rw [seg16LadderFlatX221_eq]
      unfold seg16LadderFlatX221
      linear_combination r5911
    have ha2 : rho 18479 * seg16AccY221 rho = rho 18484 := by
      rw [seg16LadderFlatY221_eq]
      unfold seg16LadderFlatY221
      linear_combination r5912
    have ha3 : 3021 * rho 18483 * rho 18484 = rho 18485 := by
      linear_combination r5913
    have ha4 : rho 18486 * (1 + rho 18485) = rho 18483 + rho 18484 := by
      linear_combination r5914
    have ha5 : rho 18487 * (1 - rho 18485) = rho 18482 - rho 18483 - rho 18484 := by
      linear_combination r5915
    have haddx :
        rho 18486 * (1 + 3021 * (rho 18480 * seg16AccX221 rho) * (rho 18479 * seg16AccY221 rho)) =
          rho 18480 * seg16AccX221 rho + rho 18479 * seg16AccY221 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18487 * (1 - 3021 * (rho 18480 * seg16AccX221 rho) * (rho 18479 * seg16AccY221 rho)) =
          (-1) * (rho 18480 * seg16AccX221 rho) - rho 18479 * seg16AccY221 rho +
            (seg16AccY221 rho - seg16AccX221 rho * (-1)) * (rho 18479 + rho 18480) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18487 * (1 - rho 18485) = rho 18482 - rho 18483 - rho 18484 := ha5
        _ = (-1) * rho 18483 - rho 18484 + (seg16AccY221 rho - seg16AccX221 rho * (-1)) * (rho 18479 + rho 18480) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX222 rho = seg16AccX221 rho - Bool.toZMod bit * (seg16AccX221 rho - rho 18486) := by
      have hd : rho 18488 = Bool.toZMod bit * (rho 18486 - seg16AccX221 rho) := by
        rw [← hbit, seg16LadderFlatX221_eq]
        unfold seg16LadderFlatX221
        linear_combination -r5916
      unfold seg16AccX222
      linear_combination hd
    have hsely : seg16AccY222 rho = seg16AccY221 rho - Bool.toZMod bit * (seg16AccY221 rho - rho 18487) := by
      have hd : rho 18489 = Bool.toZMod bit * (rho 18487 - seg16AccY221 rho) := by
        rw [← hbit, seg16LadderFlatY221_eq]
        unfold seg16LadderFlatY221
        linear_combination -r5917
      unfold seg16AccY222
      linear_combination hd
    have hd0 : rho 18479 * rho 18480 = rho 18490 := by linear_combination r5918
    have hd1 : rho 18479 * rho 18479 = rho 18491 := by linear_combination r5919
    have hd2 : rho 18480 * rho 18480 = rho 18492 := by linear_combination r5920
    have hd3 : rho 18493 * (rho 18480 * rho 18480 + rho 18479 * rho 18479 * (-1)) = 2 * (rho 18479 * rho 18480) := by
      rw [hd0, hd1, hd2]
      linear_combination r5921
    have hd4 : rho 18494 * (2 - (rho 18480 * rho 18480 + rho 18479 * rho 18479 * (-1))) = rho 18480 * rho 18480 - rho 18479 * rho 18479 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5922
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX221 rho : Seg16.F), (seg16AccY221 rho : Seg16.F)⟩
      ⟨(rho 18479 : Seg16.F), (rho 18480 : Seg16.F)⟩
      ⟨(rho 18486 : Seg16.F), (rho 18487 : Seg16.F)⟩
      ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
      ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung221

theorem seg16_rung222 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15514 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
        ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩
        ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
        ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨_, _, _, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5923 Seg16.relationLc1145 Seg16.relationLc1145Part0 Seg16.relationLc1145Part1 Seg16.relationLc1145Part2 Seg16.relationLc1145Part3 Seg16.relationLc1145Part4 Seg16.relationLc1145Part5 Seg16.relationLc1145Part6 Seg16.relationLc1145Part7 Seg16.relationLc1145Part8 Seg16.relationLc1145Part9 Seg16.relationLc1145Part10 Seg16.relationLc1145Part11 Seg16.relationLc1145Part12 Seg16.relationLc1145Part13 at r5923
  unfold Seg16.relationRow5924 at r5924
  unfold Seg16.relationRow5925 Seg16.relationLc1146 Seg16.relationLc1146Part0 Seg16.relationLc1146Part1 Seg16.relationLc1146Part2 Seg16.relationLc1146Part3 Seg16.relationLc1146Part4 Seg16.relationLc1146Part5 Seg16.relationLc1146Part6 at r5925
  unfold Seg16.relationRow5926 Seg16.relationLc1147 Seg16.relationLc1147Part0 Seg16.relationLc1147Part1 Seg16.relationLc1147Part2 Seg16.relationLc1147Part3 Seg16.relationLc1147Part4 Seg16.relationLc1147Part5 Seg16.relationLc1147Part6 at r5926
  unfold Seg16.relationRow5927 at r5927
  unfold Seg16.relationRow5928 at r5928
  unfold Seg16.relationRow5929 at r5929
  unfold Seg16.relationRow5930 Seg16.relationLc1148 Seg16.relationLc1148Part0 Seg16.relationLc1148Part1 Seg16.relationLc1148Part2 Seg16.relationLc1148Part3 Seg16.relationLc1148Part4 Seg16.relationLc1148Part5 Seg16.relationLc1148Part6 at r5930
  unfold Seg16.relationRow5931 Seg16.relationLc1149 Seg16.relationLc1149Part0 Seg16.relationLc1149Part1 Seg16.relationLc1149Part2 Seg16.relationLc1149Part3 Seg16.relationLc1149Part4 Seg16.relationLc1149Part5 Seg16.relationLc1149Part6 at r5931
  unfold Seg16.relationRow5932 at r5932
  unfold Seg16.relationRow5933 at r5933
  unfold Seg16.relationRow5934 at r5934
  unfold Seg16.relationRow5935 at r5935
  unfold Seg16.relationRow5936 at r5936
  have hrung222 (bit : Bool) (hbit : rho 15514 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
        ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩
        ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
        ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩ := by
    have hsum : seg16AccX222 rho + seg16AccY222 rho = rho 18495 := by
      rw [seg16LadderFlatX222_eq, seg16LadderFlatY222_eq]
      unfold seg16LadderFlatX222 seg16LadderFlatY222
      linear_combination r5923
    have ha0 : (rho 18493 + rho 18494) * (seg16AccX222 rho + seg16AccY222 rho) = rho 18496 := by
      rw [hsum]
      linear_combination r5924
    have ha1 : rho 18494 * seg16AccX222 rho = rho 18497 := by
      rw [seg16LadderFlatX222_eq]
      unfold seg16LadderFlatX222
      linear_combination r5925
    have ha2 : rho 18493 * seg16AccY222 rho = rho 18498 := by
      rw [seg16LadderFlatY222_eq]
      unfold seg16LadderFlatY222
      linear_combination r5926
    have ha3 : 3021 * rho 18497 * rho 18498 = rho 18499 := by
      linear_combination r5927
    have ha4 : rho 18500 * (1 + rho 18499) = rho 18497 + rho 18498 := by
      linear_combination r5928
    have ha5 : rho 18501 * (1 - rho 18499) = rho 18496 - rho 18497 - rho 18498 := by
      linear_combination r5929
    have haddx :
        rho 18500 * (1 + 3021 * (rho 18494 * seg16AccX222 rho) * (rho 18493 * seg16AccY222 rho)) =
          rho 18494 * seg16AccX222 rho + rho 18493 * seg16AccY222 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18501 * (1 - 3021 * (rho 18494 * seg16AccX222 rho) * (rho 18493 * seg16AccY222 rho)) =
          (-1) * (rho 18494 * seg16AccX222 rho) - rho 18493 * seg16AccY222 rho +
            (seg16AccY222 rho - seg16AccX222 rho * (-1)) * (rho 18493 + rho 18494) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18501 * (1 - rho 18499) = rho 18496 - rho 18497 - rho 18498 := ha5
        _ = (-1) * rho 18497 - rho 18498 + (seg16AccY222 rho - seg16AccX222 rho * (-1)) * (rho 18493 + rho 18494) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX223 rho = seg16AccX222 rho - Bool.toZMod bit * (seg16AccX222 rho - rho 18500) := by
      have hd : rho 18502 = Bool.toZMod bit * (rho 18500 - seg16AccX222 rho) := by
        rw [← hbit, seg16LadderFlatX222_eq]
        unfold seg16LadderFlatX222
        linear_combination -r5930
      unfold seg16AccX223
      linear_combination hd
    have hsely : seg16AccY223 rho = seg16AccY222 rho - Bool.toZMod bit * (seg16AccY222 rho - rho 18501) := by
      have hd : rho 18503 = Bool.toZMod bit * (rho 18501 - seg16AccY222 rho) := by
        rw [← hbit, seg16LadderFlatY222_eq]
        unfold seg16LadderFlatY222
        linear_combination -r5931
      unfold seg16AccY223
      linear_combination hd
    have hd0 : rho 18493 * rho 18494 = rho 18504 := by linear_combination r5932
    have hd1 : rho 18493 * rho 18493 = rho 18505 := by linear_combination r5933
    have hd2 : rho 18494 * rho 18494 = rho 18506 := by linear_combination r5934
    have hd3 : rho 18507 * (rho 18494 * rho 18494 + rho 18493 * rho 18493 * (-1)) = 2 * (rho 18493 * rho 18494) := by
      rw [hd0, hd1, hd2]
      linear_combination r5935
    have hd4 : rho 18508 * (2 - (rho 18494 * rho 18494 + rho 18493 * rho 18493 * (-1))) = rho 18494 * rho 18494 - rho 18493 * rho 18493 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5936
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX222 rho : Seg16.F), (seg16AccY222 rho : Seg16.F)⟩
      ⟨(rho 18493 : Seg16.F), (rho 18494 : Seg16.F)⟩
      ⟨(rho 18500 : Seg16.F), (rho 18501 : Seg16.F)⟩
      ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
      ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung222

theorem seg16_rung223 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15515 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
        ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩
        ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
        ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5937 Seg16.relationLc1150 Seg16.relationLc1150Part0 Seg16.relationLc1150Part1 Seg16.relationLc1150Part2 Seg16.relationLc1150Part3 Seg16.relationLc1150Part4 Seg16.relationLc1150Part5 Seg16.relationLc1150Part6 Seg16.relationLc1150Part7 Seg16.relationLc1150Part8 Seg16.relationLc1150Part9 Seg16.relationLc1150Part10 Seg16.relationLc1150Part11 Seg16.relationLc1150Part12 Seg16.relationLc1150Part13 at r5937
  unfold Seg16.relationRow5938 at r5938
  unfold Seg16.relationRow5939 Seg16.relationLc1151 Seg16.relationLc1151Part0 Seg16.relationLc1151Part1 Seg16.relationLc1151Part2 Seg16.relationLc1151Part3 Seg16.relationLc1151Part4 Seg16.relationLc1151Part5 Seg16.relationLc1151Part6 at r5939
  unfold Seg16.relationRow5940 Seg16.relationLc1152 Seg16.relationLc1152Part0 Seg16.relationLc1152Part1 Seg16.relationLc1152Part2 Seg16.relationLc1152Part3 Seg16.relationLc1152Part4 Seg16.relationLc1152Part5 Seg16.relationLc1152Part6 at r5940
  unfold Seg16.relationRow5941 at r5941
  unfold Seg16.relationRow5942 at r5942
  unfold Seg16.relationRow5943 at r5943
  unfold Seg16.relationRow5944 Seg16.relationLc1153 Seg16.relationLc1153Part0 Seg16.relationLc1153Part1 Seg16.relationLc1153Part2 Seg16.relationLc1153Part3 Seg16.relationLc1153Part4 Seg16.relationLc1153Part5 Seg16.relationLc1153Part6 at r5944
  unfold Seg16.relationRow5945 Seg16.relationLc1154 Seg16.relationLc1154Part0 Seg16.relationLc1154Part1 Seg16.relationLc1154Part2 Seg16.relationLc1154Part3 Seg16.relationLc1154Part4 Seg16.relationLc1154Part5 Seg16.relationLc1154Part6 Seg16.relationLc1154Part7 at r5945
  unfold Seg16.relationRow5946 at r5946
  unfold Seg16.relationRow5947 at r5947
  unfold Seg16.relationRow5948 at r5948
  unfold Seg16.relationRow5949 at r5949
  unfold Seg16.relationRow5950 at r5950
  have hrung223 (bit : Bool) (hbit : rho 15515 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
        ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩
        ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
        ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩ := by
    have hsum : seg16AccX223 rho + seg16AccY223 rho = rho 18509 := by
      rw [seg16LadderFlatX223_eq, seg16LadderFlatY223_eq]
      unfold seg16LadderFlatX223 seg16LadderFlatY223
      linear_combination r5937
    have ha0 : (rho 18507 + rho 18508) * (seg16AccX223 rho + seg16AccY223 rho) = rho 18510 := by
      rw [hsum]
      linear_combination r5938
    have ha1 : rho 18508 * seg16AccX223 rho = rho 18511 := by
      rw [seg16LadderFlatX223_eq]
      unfold seg16LadderFlatX223
      linear_combination r5939
    have ha2 : rho 18507 * seg16AccY223 rho = rho 18512 := by
      rw [seg16LadderFlatY223_eq]
      unfold seg16LadderFlatY223
      linear_combination r5940
    have ha3 : 3021 * rho 18511 * rho 18512 = rho 18513 := by
      linear_combination r5941
    have ha4 : rho 18514 * (1 + rho 18513) = rho 18511 + rho 18512 := by
      linear_combination r5942
    have ha5 : rho 18515 * (1 - rho 18513) = rho 18510 - rho 18511 - rho 18512 := by
      linear_combination r5943
    have haddx :
        rho 18514 * (1 + 3021 * (rho 18508 * seg16AccX223 rho) * (rho 18507 * seg16AccY223 rho)) =
          rho 18508 * seg16AccX223 rho + rho 18507 * seg16AccY223 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18515 * (1 - 3021 * (rho 18508 * seg16AccX223 rho) * (rho 18507 * seg16AccY223 rho)) =
          (-1) * (rho 18508 * seg16AccX223 rho) - rho 18507 * seg16AccY223 rho +
            (seg16AccY223 rho - seg16AccX223 rho * (-1)) * (rho 18507 + rho 18508) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18515 * (1 - rho 18513) = rho 18510 - rho 18511 - rho 18512 := ha5
        _ = (-1) * rho 18511 - rho 18512 + (seg16AccY223 rho - seg16AccX223 rho * (-1)) * (rho 18507 + rho 18508) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX224 rho = seg16AccX223 rho - Bool.toZMod bit * (seg16AccX223 rho - rho 18514) := by
      have hd : rho 18516 = Bool.toZMod bit * (rho 18514 - seg16AccX223 rho) := by
        rw [← hbit, seg16LadderFlatX223_eq]
        unfold seg16LadderFlatX223
        linear_combination -r5944
      unfold seg16AccX224
      linear_combination hd
    have hsely : seg16AccY224 rho = seg16AccY223 rho - Bool.toZMod bit * (seg16AccY223 rho - rho 18515) := by
      have hd : rho 18517 = Bool.toZMod bit * (rho 18515 - seg16AccY223 rho) := by
        rw [← hbit, seg16LadderFlatY223_eq]
        unfold seg16LadderFlatY223
        linear_combination -r5945
      unfold seg16AccY224
      linear_combination hd
    have hd0 : rho 18507 * rho 18508 = rho 18518 := by linear_combination r5946
    have hd1 : rho 18507 * rho 18507 = rho 18519 := by linear_combination r5947
    have hd2 : rho 18508 * rho 18508 = rho 18520 := by linear_combination r5948
    have hd3 : rho 18521 * (rho 18508 * rho 18508 + rho 18507 * rho 18507 * (-1)) = 2 * (rho 18507 * rho 18508) := by
      rw [hd0, hd1, hd2]
      linear_combination r5949
    have hd4 : rho 18522 * (2 - (rho 18508 * rho 18508 + rho 18507 * rho 18507 * (-1))) = rho 18508 * rho 18508 - rho 18507 * rho 18507 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5950
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX223 rho : Seg16.F), (seg16AccY223 rho : Seg16.F)⟩
      ⟨(rho 18507 : Seg16.F), (rho 18508 : Seg16.F)⟩
      ⟨(rho 18514 : Seg16.F), (rho 18515 : Seg16.F)⟩
      ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
      ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung223

theorem seg16_hstep_c6 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 192 ≤ i → i < 224 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc hcur
  · exact seg16_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc hcur
  · exact seg16_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc hcur
  · exact seg16_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc hcur
  · exact seg16_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc hcur
  · exact seg16_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc hcur
  · exact seg16_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc hcur
  · exact seg16_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc hcur
  · exact seg16_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc hcur
  · exact seg16_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc hcur
  · exact seg16_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc hcur
  · exact seg16_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc hcur
  · exact seg16_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc hcur
  · exact seg16_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc hcur
  · exact seg16_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc hcur
  · exact seg16_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc hcur
  · exact seg16_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc hcur
  · exact seg16_rung209 rho h bits[209]! (hbitAt 209 (by omega)) hacc hcur
  · exact seg16_rung210 rho h bits[210]! (hbitAt 210 (by omega)) hacc hcur
  · exact seg16_rung211 rho h bits[211]! (hbitAt 211 (by omega)) hacc hcur
  · exact seg16_rung212 rho h bits[212]! (hbitAt 212 (by omega)) hacc hcur
  · exact seg16_rung213 rho h bits[213]! (hbitAt 213 (by omega)) hacc hcur
  · exact seg16_rung214 rho h bits[214]! (hbitAt 214 (by omega)) hacc hcur
  · exact seg16_rung215 rho h bits[215]! (hbitAt 215 (by omega)) hacc hcur
  · exact seg16_rung216 rho h bits[216]! (hbitAt 216 (by omega)) hacc hcur
  · exact seg16_rung217 rho h bits[217]! (hbitAt 217 (by omega)) hacc hcur
  · exact seg16_rung218 rho h bits[218]! (hbitAt 218 (by omega)) hacc hcur
  · exact seg16_rung219 rho h bits[219]! (hbitAt 219 (by omega)) hacc hcur
  · exact seg16_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc hcur
  · exact seg16_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc hcur
  · exact seg16_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc hcur
  · exact seg16_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

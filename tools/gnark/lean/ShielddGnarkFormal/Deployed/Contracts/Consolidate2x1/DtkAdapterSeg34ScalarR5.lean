import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rung160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34152 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
        ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩
        ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
        ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5055 Seg34.relationLc835 Seg34.relationLc835Part0 Seg34.relationLc835Part1 Seg34.relationLc835Part2 Seg34.relationLc835Part3 Seg34.relationLc835Part4 Seg34.relationLc835Part5 Seg34.relationLc835Part6 Seg34.relationLc835Part7 Seg34.relationLc835Part8 Seg34.relationLc835Part9 Seg34.relationLc835Part10 at r5055
  unfold Seg34.relationRow5056 at r5056
  unfold Seg34.relationRow5057 Seg34.relationLc836 Seg34.relationLc836Part0 Seg34.relationLc836Part1 Seg34.relationLc836Part2 Seg34.relationLc836Part3 Seg34.relationLc836Part4 at r5057
  unfold Seg34.relationRow5058 Seg34.relationLc837 Seg34.relationLc837Part0 Seg34.relationLc837Part1 Seg34.relationLc837Part2 Seg34.relationLc837Part3 Seg34.relationLc837Part4 Seg34.relationLc837Part5 at r5058
  unfold Seg34.relationRow5059 at r5059
  unfold Seg34.relationRow5060 at r5060
  unfold Seg34.relationRow5061 at r5061
  unfold Seg34.relationRow5062 Seg34.relationLc838 Seg34.relationLc838Part0 Seg34.relationLc838Part1 Seg34.relationLc838Part2 Seg34.relationLc838Part3 Seg34.relationLc838Part4 Seg34.relationLc838Part5 at r5062
  unfold Seg34.relationRow5063 Seg34.relationLc839 Seg34.relationLc839Part0 Seg34.relationLc839Part1 Seg34.relationLc839Part2 Seg34.relationLc839Part3 Seg34.relationLc839Part4 Seg34.relationLc839Part5 at r5063
  unfold Seg34.relationRow5064 at r5064
  unfold Seg34.relationRow5065 at r5065
  unfold Seg34.relationRow5066 at r5066
  unfold Seg34.relationRow5067 at r5067
  unfold Seg34.relationRow5068 at r5068
  have hrung160 (bit : Bool) (hbit : rho 34152 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
        ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩
        ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
        ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩ := by
    have hsum : seg34AccX160 rho + seg34AccY160 rho = rho 36327 := by
      rw [seg34LadderFlatX160_eq, seg34LadderFlatY160_eq]
      unfold seg34LadderFlatX160 seg34LadderFlatY160
      linear_combination r5055
    have ha0 : (rho 36325 + rho 36326) * (seg34AccX160 rho + seg34AccY160 rho) = rho 36328 := by
      rw [hsum]
      linear_combination r5056
    have ha1 : rho 36326 * seg34AccX160 rho = rho 36329 := by
      rw [seg34LadderFlatX160_eq]
      unfold seg34LadderFlatX160
      linear_combination r5057
    have ha2 : rho 36325 * seg34AccY160 rho = rho 36330 := by
      rw [seg34LadderFlatY160_eq]
      unfold seg34LadderFlatY160
      linear_combination r5058
    have ha3 : 3021 * rho 36329 * rho 36330 = rho 36331 := by
      linear_combination r5059
    have ha4 : rho 36332 * (1 + rho 36331) = rho 36329 + rho 36330 := by
      linear_combination r5060
    have ha5 : rho 36333 * (1 - rho 36331) = rho 36328 - rho 36329 - rho 36330 := by
      linear_combination r5061
    have haddx :
        rho 36332 * (1 + 3021 * (rho 36326 * seg34AccX160 rho) * (rho 36325 * seg34AccY160 rho)) =
          rho 36326 * seg34AccX160 rho + rho 36325 * seg34AccY160 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36333 * (1 - 3021 * (rho 36326 * seg34AccX160 rho) * (rho 36325 * seg34AccY160 rho)) =
          (-1) * (rho 36326 * seg34AccX160 rho) - rho 36325 * seg34AccY160 rho +
            (seg34AccY160 rho - seg34AccX160 rho * (-1)) * (rho 36325 + rho 36326) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36333 * (1 - rho 36331) = rho 36328 - rho 36329 - rho 36330 := ha5
        _ = (-1) * rho 36329 - rho 36330 + (seg34AccY160 rho - seg34AccX160 rho * (-1)) * (rho 36325 + rho 36326) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX161 rho = seg34AccX160 rho - Bool.toZMod bit * (seg34AccX160 rho - rho 36332) := by
      have hd : rho 36334 = Bool.toZMod bit * (rho 36332 - seg34AccX160 rho) := by
        rw [← hbit, seg34LadderFlatX160_eq]
        unfold seg34LadderFlatX160
        linear_combination -r5062
      unfold seg34AccX161
      linear_combination hd
    have hsely : seg34AccY161 rho = seg34AccY160 rho - Bool.toZMod bit * (seg34AccY160 rho - rho 36333) := by
      have hd : rho 36335 = Bool.toZMod bit * (rho 36333 - seg34AccY160 rho) := by
        rw [← hbit, seg34LadderFlatY160_eq]
        unfold seg34LadderFlatY160
        linear_combination -r5063
      unfold seg34AccY161
      linear_combination hd
    have hd0 : rho 36325 * rho 36326 = rho 36336 := by linear_combination r5064
    have hd1 : rho 36325 * rho 36325 = rho 36337 := by linear_combination r5065
    have hd2 : rho 36326 * rho 36326 = rho 36338 := by linear_combination r5066
    have hd3 : rho 36339 * (rho 36326 * rho 36326 + rho 36325 * rho 36325 * (-1)) = 2 * (rho 36325 * rho 36326) := by
      rw [hd0, hd1, hd2]
      linear_combination r5067
    have hd4 : rho 36340 * (2 - (rho 36326 * rho 36326 + rho 36325 * rho 36325 * (-1))) = rho 36326 * rho 36326 - rho 36325 * rho 36325 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
      ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩
      ⟨(rho 36332 : Seg34.F), (rho 36333 : Seg34.F)⟩
      ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
      ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung160

theorem seg34_rung161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34153 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
        ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩
        ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
        ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5069 Seg34.relationLc840 Seg34.relationLc840Part0 Seg34.relationLc840Part1 Seg34.relationLc840Part2 Seg34.relationLc840Part3 Seg34.relationLc840Part4 Seg34.relationLc840Part5 Seg34.relationLc840Part6 Seg34.relationLc840Part7 Seg34.relationLc840Part8 Seg34.relationLc840Part9 Seg34.relationLc840Part10 at r5069
  unfold Seg34.relationRow5070 at r5070
  unfold Seg34.relationRow5071 Seg34.relationLc841 Seg34.relationLc841Part0 Seg34.relationLc841Part1 Seg34.relationLc841Part2 Seg34.relationLc841Part3 Seg34.relationLc841Part4 Seg34.relationLc841Part5 at r5071
  unfold Seg34.relationRow5072 Seg34.relationLc842 Seg34.relationLc842Part0 Seg34.relationLc842Part1 Seg34.relationLc842Part2 Seg34.relationLc842Part3 Seg34.relationLc842Part4 Seg34.relationLc842Part5 at r5072
  unfold Seg34.relationRow5073 at r5073
  unfold Seg34.relationRow5074 at r5074
  unfold Seg34.relationRow5075 at r5075
  unfold Seg34.relationRow5076 Seg34.relationLc843 Seg34.relationLc843Part0 Seg34.relationLc843Part1 Seg34.relationLc843Part2 Seg34.relationLc843Part3 Seg34.relationLc843Part4 Seg34.relationLc843Part5 at r5076
  unfold Seg34.relationRow5077 Seg34.relationLc844 Seg34.relationLc844Part0 Seg34.relationLc844Part1 Seg34.relationLc844Part2 Seg34.relationLc844Part3 Seg34.relationLc844Part4 Seg34.relationLc844Part5 at r5077
  unfold Seg34.relationRow5078 at r5078
  unfold Seg34.relationRow5079 at r5079
  unfold Seg34.relationRow5080 at r5080
  unfold Seg34.relationRow5081 at r5081
  unfold Seg34.relationRow5082 at r5082
  have hrung161 (bit : Bool) (hbit : rho 34153 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
        ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩
        ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
        ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩ := by
    have hsum : seg34AccX161 rho + seg34AccY161 rho = rho 36341 := by
      rw [seg34LadderFlatX161_eq, seg34LadderFlatY161_eq]
      unfold seg34LadderFlatX161 seg34LadderFlatY161
      linear_combination r5069
    have ha0 : (rho 36339 + rho 36340) * (seg34AccX161 rho + seg34AccY161 rho) = rho 36342 := by
      rw [hsum]
      linear_combination r5070
    have ha1 : rho 36340 * seg34AccX161 rho = rho 36343 := by
      rw [seg34LadderFlatX161_eq]
      unfold seg34LadderFlatX161
      linear_combination r5071
    have ha2 : rho 36339 * seg34AccY161 rho = rho 36344 := by
      rw [seg34LadderFlatY161_eq]
      unfold seg34LadderFlatY161
      linear_combination r5072
    have ha3 : 3021 * rho 36343 * rho 36344 = rho 36345 := by
      linear_combination r5073
    have ha4 : rho 36346 * (1 + rho 36345) = rho 36343 + rho 36344 := by
      linear_combination r5074
    have ha5 : rho 36347 * (1 - rho 36345) = rho 36342 - rho 36343 - rho 36344 := by
      linear_combination r5075
    have haddx :
        rho 36346 * (1 + 3021 * (rho 36340 * seg34AccX161 rho) * (rho 36339 * seg34AccY161 rho)) =
          rho 36340 * seg34AccX161 rho + rho 36339 * seg34AccY161 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36347 * (1 - 3021 * (rho 36340 * seg34AccX161 rho) * (rho 36339 * seg34AccY161 rho)) =
          (-1) * (rho 36340 * seg34AccX161 rho) - rho 36339 * seg34AccY161 rho +
            (seg34AccY161 rho - seg34AccX161 rho * (-1)) * (rho 36339 + rho 36340) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36347 * (1 - rho 36345) = rho 36342 - rho 36343 - rho 36344 := ha5
        _ = (-1) * rho 36343 - rho 36344 + (seg34AccY161 rho - seg34AccX161 rho * (-1)) * (rho 36339 + rho 36340) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX162 rho = seg34AccX161 rho - Bool.toZMod bit * (seg34AccX161 rho - rho 36346) := by
      have hd : rho 36348 = Bool.toZMod bit * (rho 36346 - seg34AccX161 rho) := by
        rw [← hbit, seg34LadderFlatX161_eq]
        unfold seg34LadderFlatX161
        linear_combination -r5076
      unfold seg34AccX162
      linear_combination hd
    have hsely : seg34AccY162 rho = seg34AccY161 rho - Bool.toZMod bit * (seg34AccY161 rho - rho 36347) := by
      have hd : rho 36349 = Bool.toZMod bit * (rho 36347 - seg34AccY161 rho) := by
        rw [← hbit, seg34LadderFlatY161_eq]
        unfold seg34LadderFlatY161
        linear_combination -r5077
      unfold seg34AccY162
      linear_combination hd
    have hd0 : rho 36339 * rho 36340 = rho 36350 := by linear_combination r5078
    have hd1 : rho 36339 * rho 36339 = rho 36351 := by linear_combination r5079
    have hd2 : rho 36340 * rho 36340 = rho 36352 := by linear_combination r5080
    have hd3 : rho 36353 * (rho 36340 * rho 36340 + rho 36339 * rho 36339 * (-1)) = 2 * (rho 36339 * rho 36340) := by
      rw [hd0, hd1, hd2]
      linear_combination r5081
    have hd4 : rho 36354 * (2 - (rho 36340 * rho 36340 + rho 36339 * rho 36339 * (-1))) = rho 36340 * rho 36340 - rho 36339 * rho 36339 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
      ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩
      ⟨(rho 36346 : Seg34.F), (rho 36347 : Seg34.F)⟩
      ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
      ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung161

theorem seg34_rung162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34154 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
        ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩
        ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
        ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5083 Seg34.relationLc845 Seg34.relationLc845Part0 Seg34.relationLc845Part1 Seg34.relationLc845Part2 Seg34.relationLc845Part3 Seg34.relationLc845Part4 Seg34.relationLc845Part5 Seg34.relationLc845Part6 Seg34.relationLc845Part7 Seg34.relationLc845Part8 Seg34.relationLc845Part9 Seg34.relationLc845Part10 at r5083
  unfold Seg34.relationRow5084 at r5084
  unfold Seg34.relationRow5085 Seg34.relationLc846 Seg34.relationLc846Part0 Seg34.relationLc846Part1 Seg34.relationLc846Part2 Seg34.relationLc846Part3 Seg34.relationLc846Part4 Seg34.relationLc846Part5 at r5085
  unfold Seg34.relationRow5086 Seg34.relationLc847 Seg34.relationLc847Part0 Seg34.relationLc847Part1 Seg34.relationLc847Part2 Seg34.relationLc847Part3 Seg34.relationLc847Part4 Seg34.relationLc847Part5 at r5086
  unfold Seg34.relationRow5087 at r5087
  unfold Seg34.relationRow5088 at r5088
  unfold Seg34.relationRow5089 at r5089
  unfold Seg34.relationRow5090 Seg34.relationLc848 Seg34.relationLc848Part0 Seg34.relationLc848Part1 Seg34.relationLc848Part2 Seg34.relationLc848Part3 Seg34.relationLc848Part4 Seg34.relationLc848Part5 at r5090
  unfold Seg34.relationRow5091 Seg34.relationLc849 Seg34.relationLc849Part0 Seg34.relationLc849Part1 Seg34.relationLc849Part2 Seg34.relationLc849Part3 Seg34.relationLc849Part4 Seg34.relationLc849Part5 at r5091
  unfold Seg34.relationRow5092 at r5092
  unfold Seg34.relationRow5093 at r5093
  unfold Seg34.relationRow5094 at r5094
  unfold Seg34.relationRow5095 at r5095
  unfold Seg34.relationRow5096 at r5096
  have hrung162 (bit : Bool) (hbit : rho 34154 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
        ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩
        ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
        ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩ := by
    have hsum : seg34AccX162 rho + seg34AccY162 rho = rho 36355 := by
      rw [seg34LadderFlatX162_eq, seg34LadderFlatY162_eq]
      unfold seg34LadderFlatX162 seg34LadderFlatY162
      linear_combination r5083
    have ha0 : (rho 36353 + rho 36354) * (seg34AccX162 rho + seg34AccY162 rho) = rho 36356 := by
      rw [hsum]
      linear_combination r5084
    have ha1 : rho 36354 * seg34AccX162 rho = rho 36357 := by
      rw [seg34LadderFlatX162_eq]
      unfold seg34LadderFlatX162
      linear_combination r5085
    have ha2 : rho 36353 * seg34AccY162 rho = rho 36358 := by
      rw [seg34LadderFlatY162_eq]
      unfold seg34LadderFlatY162
      linear_combination r5086
    have ha3 : 3021 * rho 36357 * rho 36358 = rho 36359 := by
      linear_combination r5087
    have ha4 : rho 36360 * (1 + rho 36359) = rho 36357 + rho 36358 := by
      linear_combination r5088
    have ha5 : rho 36361 * (1 - rho 36359) = rho 36356 - rho 36357 - rho 36358 := by
      linear_combination r5089
    have haddx :
        rho 36360 * (1 + 3021 * (rho 36354 * seg34AccX162 rho) * (rho 36353 * seg34AccY162 rho)) =
          rho 36354 * seg34AccX162 rho + rho 36353 * seg34AccY162 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36361 * (1 - 3021 * (rho 36354 * seg34AccX162 rho) * (rho 36353 * seg34AccY162 rho)) =
          (-1) * (rho 36354 * seg34AccX162 rho) - rho 36353 * seg34AccY162 rho +
            (seg34AccY162 rho - seg34AccX162 rho * (-1)) * (rho 36353 + rho 36354) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36361 * (1 - rho 36359) = rho 36356 - rho 36357 - rho 36358 := ha5
        _ = (-1) * rho 36357 - rho 36358 + (seg34AccY162 rho - seg34AccX162 rho * (-1)) * (rho 36353 + rho 36354) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX163 rho = seg34AccX162 rho - Bool.toZMod bit * (seg34AccX162 rho - rho 36360) := by
      have hd : rho 36362 = Bool.toZMod bit * (rho 36360 - seg34AccX162 rho) := by
        rw [← hbit, seg34LadderFlatX162_eq]
        unfold seg34LadderFlatX162
        linear_combination -r5090
      unfold seg34AccX163
      linear_combination hd
    have hsely : seg34AccY163 rho = seg34AccY162 rho - Bool.toZMod bit * (seg34AccY162 rho - rho 36361) := by
      have hd : rho 36363 = Bool.toZMod bit * (rho 36361 - seg34AccY162 rho) := by
        rw [← hbit, seg34LadderFlatY162_eq]
        unfold seg34LadderFlatY162
        linear_combination -r5091
      unfold seg34AccY163
      linear_combination hd
    have hd0 : rho 36353 * rho 36354 = rho 36364 := by linear_combination r5092
    have hd1 : rho 36353 * rho 36353 = rho 36365 := by linear_combination r5093
    have hd2 : rho 36354 * rho 36354 = rho 36366 := by linear_combination r5094
    have hd3 : rho 36367 * (rho 36354 * rho 36354 + rho 36353 * rho 36353 * (-1)) = 2 * (rho 36353 * rho 36354) := by
      rw [hd0, hd1, hd2]
      linear_combination r5095
    have hd4 : rho 36368 * (2 - (rho 36354 * rho 36354 + rho 36353 * rho 36353 * (-1))) = rho 36354 * rho 36354 - rho 36353 * rho 36353 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5096
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
      ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩
      ⟨(rho 36360 : Seg34.F), (rho 36361 : Seg34.F)⟩
      ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
      ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung162

theorem seg34_rung163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34155 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
        ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩
        ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
        ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5097 Seg34.relationLc850 Seg34.relationLc850Part0 Seg34.relationLc850Part1 Seg34.relationLc850Part2 Seg34.relationLc850Part3 Seg34.relationLc850Part4 Seg34.relationLc850Part5 Seg34.relationLc850Part6 Seg34.relationLc850Part7 Seg34.relationLc850Part8 Seg34.relationLc850Part9 Seg34.relationLc850Part10 at r5097
  unfold Seg34.relationRow5098 at r5098
  unfold Seg34.relationRow5099 Seg34.relationLc851 Seg34.relationLc851Part0 Seg34.relationLc851Part1 Seg34.relationLc851Part2 Seg34.relationLc851Part3 Seg34.relationLc851Part4 Seg34.relationLc851Part5 at r5099
  unfold Seg34.relationRow5100 Seg34.relationLc852 Seg34.relationLc852Part0 Seg34.relationLc852Part1 Seg34.relationLc852Part2 Seg34.relationLc852Part3 Seg34.relationLc852Part4 Seg34.relationLc852Part5 at r5100
  unfold Seg34.relationRow5101 at r5101
  unfold Seg34.relationRow5102 at r5102
  unfold Seg34.relationRow5103 at r5103
  unfold Seg34.relationRow5104 Seg34.relationLc853 Seg34.relationLc853Part0 Seg34.relationLc853Part1 Seg34.relationLc853Part2 Seg34.relationLc853Part3 Seg34.relationLc853Part4 Seg34.relationLc853Part5 at r5104
  unfold Seg34.relationRow5105 Seg34.relationLc854 Seg34.relationLc854Part0 Seg34.relationLc854Part1 Seg34.relationLc854Part2 Seg34.relationLc854Part3 Seg34.relationLc854Part4 Seg34.relationLc854Part5 at r5105
  unfold Seg34.relationRow5106 at r5106
  unfold Seg34.relationRow5107 at r5107
  unfold Seg34.relationRow5108 at r5108
  unfold Seg34.relationRow5109 at r5109
  unfold Seg34.relationRow5110 at r5110
  have hrung163 (bit : Bool) (hbit : rho 34155 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
        ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩
        ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
        ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩ := by
    have hsum : seg34AccX163 rho + seg34AccY163 rho = rho 36369 := by
      rw [seg34LadderFlatX163_eq, seg34LadderFlatY163_eq]
      unfold seg34LadderFlatX163 seg34LadderFlatY163
      linear_combination r5097
    have ha0 : (rho 36367 + rho 36368) * (seg34AccX163 rho + seg34AccY163 rho) = rho 36370 := by
      rw [hsum]
      linear_combination r5098
    have ha1 : rho 36368 * seg34AccX163 rho = rho 36371 := by
      rw [seg34LadderFlatX163_eq]
      unfold seg34LadderFlatX163
      linear_combination r5099
    have ha2 : rho 36367 * seg34AccY163 rho = rho 36372 := by
      rw [seg34LadderFlatY163_eq]
      unfold seg34LadderFlatY163
      linear_combination r5100
    have ha3 : 3021 * rho 36371 * rho 36372 = rho 36373 := by
      linear_combination r5101
    have ha4 : rho 36374 * (1 + rho 36373) = rho 36371 + rho 36372 := by
      linear_combination r5102
    have ha5 : rho 36375 * (1 - rho 36373) = rho 36370 - rho 36371 - rho 36372 := by
      linear_combination r5103
    have haddx :
        rho 36374 * (1 + 3021 * (rho 36368 * seg34AccX163 rho) * (rho 36367 * seg34AccY163 rho)) =
          rho 36368 * seg34AccX163 rho + rho 36367 * seg34AccY163 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36375 * (1 - 3021 * (rho 36368 * seg34AccX163 rho) * (rho 36367 * seg34AccY163 rho)) =
          (-1) * (rho 36368 * seg34AccX163 rho) - rho 36367 * seg34AccY163 rho +
            (seg34AccY163 rho - seg34AccX163 rho * (-1)) * (rho 36367 + rho 36368) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36375 * (1 - rho 36373) = rho 36370 - rho 36371 - rho 36372 := ha5
        _ = (-1) * rho 36371 - rho 36372 + (seg34AccY163 rho - seg34AccX163 rho * (-1)) * (rho 36367 + rho 36368) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX164 rho = seg34AccX163 rho - Bool.toZMod bit * (seg34AccX163 rho - rho 36374) := by
      have hd : rho 36376 = Bool.toZMod bit * (rho 36374 - seg34AccX163 rho) := by
        rw [← hbit, seg34LadderFlatX163_eq]
        unfold seg34LadderFlatX163
        linear_combination -r5104
      unfold seg34AccX164
      linear_combination hd
    have hsely : seg34AccY164 rho = seg34AccY163 rho - Bool.toZMod bit * (seg34AccY163 rho - rho 36375) := by
      have hd : rho 36377 = Bool.toZMod bit * (rho 36375 - seg34AccY163 rho) := by
        rw [← hbit, seg34LadderFlatY163_eq]
        unfold seg34LadderFlatY163
        linear_combination -r5105
      unfold seg34AccY164
      linear_combination hd
    have hd0 : rho 36367 * rho 36368 = rho 36378 := by linear_combination r5106
    have hd1 : rho 36367 * rho 36367 = rho 36379 := by linear_combination r5107
    have hd2 : rho 36368 * rho 36368 = rho 36380 := by linear_combination r5108
    have hd3 : rho 36381 * (rho 36368 * rho 36368 + rho 36367 * rho 36367 * (-1)) = 2 * (rho 36367 * rho 36368) := by
      rw [hd0, hd1, hd2]
      linear_combination r5109
    have hd4 : rho 36382 * (2 - (rho 36368 * rho 36368 + rho 36367 * rho 36367 * (-1))) = rho 36368 * rho 36368 - rho 36367 * rho 36367 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5110
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
      ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩
      ⟨(rho 36374 : Seg34.F), (rho 36375 : Seg34.F)⟩
      ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
      ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung163

theorem seg34_rung164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34156 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
        ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩
        ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
        ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5111 Seg34.relationLc855 Seg34.relationLc855Part0 Seg34.relationLc855Part1 Seg34.relationLc855Part2 Seg34.relationLc855Part3 Seg34.relationLc855Part4 Seg34.relationLc855Part5 Seg34.relationLc855Part6 Seg34.relationLc855Part7 Seg34.relationLc855Part8 Seg34.relationLc855Part9 Seg34.relationLc855Part10 at r5111
  unfold Seg34.relationRow5112 at r5112
  unfold Seg34.relationRow5113 Seg34.relationLc856 Seg34.relationLc856Part0 Seg34.relationLc856Part1 Seg34.relationLc856Part2 Seg34.relationLc856Part3 Seg34.relationLc856Part4 Seg34.relationLc856Part5 at r5113
  unfold Seg34.relationRow5114 Seg34.relationLc857 Seg34.relationLc857Part0 Seg34.relationLc857Part1 Seg34.relationLc857Part2 Seg34.relationLc857Part3 Seg34.relationLc857Part4 Seg34.relationLc857Part5 at r5114
  unfold Seg34.relationRow5115 at r5115
  unfold Seg34.relationRow5116 at r5116
  unfold Seg34.relationRow5117 at r5117
  unfold Seg34.relationRow5118 Seg34.relationLc858 Seg34.relationLc858Part0 Seg34.relationLc858Part1 Seg34.relationLc858Part2 Seg34.relationLc858Part3 Seg34.relationLc858Part4 Seg34.relationLc858Part5 at r5118
  unfold Seg34.relationRow5119 Seg34.relationLc859 Seg34.relationLc859Part0 Seg34.relationLc859Part1 Seg34.relationLc859Part2 Seg34.relationLc859Part3 Seg34.relationLc859Part4 Seg34.relationLc859Part5 at r5119
  unfold Seg34.relationRow5120 at r5120
  unfold Seg34.relationRow5121 at r5121
  unfold Seg34.relationRow5122 at r5122
  unfold Seg34.relationRow5123 at r5123
  unfold Seg34.relationRow5124 at r5124
  have hrung164 (bit : Bool) (hbit : rho 34156 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
        ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩
        ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
        ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩ := by
    have hsum : seg34AccX164 rho + seg34AccY164 rho = rho 36383 := by
      rw [seg34LadderFlatX164_eq, seg34LadderFlatY164_eq]
      unfold seg34LadderFlatX164 seg34LadderFlatY164
      linear_combination r5111
    have ha0 : (rho 36381 + rho 36382) * (seg34AccX164 rho + seg34AccY164 rho) = rho 36384 := by
      rw [hsum]
      linear_combination r5112
    have ha1 : rho 36382 * seg34AccX164 rho = rho 36385 := by
      rw [seg34LadderFlatX164_eq]
      unfold seg34LadderFlatX164
      linear_combination r5113
    have ha2 : rho 36381 * seg34AccY164 rho = rho 36386 := by
      rw [seg34LadderFlatY164_eq]
      unfold seg34LadderFlatY164
      linear_combination r5114
    have ha3 : 3021 * rho 36385 * rho 36386 = rho 36387 := by
      linear_combination r5115
    have ha4 : rho 36388 * (1 + rho 36387) = rho 36385 + rho 36386 := by
      linear_combination r5116
    have ha5 : rho 36389 * (1 - rho 36387) = rho 36384 - rho 36385 - rho 36386 := by
      linear_combination r5117
    have haddx :
        rho 36388 * (1 + 3021 * (rho 36382 * seg34AccX164 rho) * (rho 36381 * seg34AccY164 rho)) =
          rho 36382 * seg34AccX164 rho + rho 36381 * seg34AccY164 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36389 * (1 - 3021 * (rho 36382 * seg34AccX164 rho) * (rho 36381 * seg34AccY164 rho)) =
          (-1) * (rho 36382 * seg34AccX164 rho) - rho 36381 * seg34AccY164 rho +
            (seg34AccY164 rho - seg34AccX164 rho * (-1)) * (rho 36381 + rho 36382) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36389 * (1 - rho 36387) = rho 36384 - rho 36385 - rho 36386 := ha5
        _ = (-1) * rho 36385 - rho 36386 + (seg34AccY164 rho - seg34AccX164 rho * (-1)) * (rho 36381 + rho 36382) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX165 rho = seg34AccX164 rho - Bool.toZMod bit * (seg34AccX164 rho - rho 36388) := by
      have hd : rho 36390 = Bool.toZMod bit * (rho 36388 - seg34AccX164 rho) := by
        rw [← hbit, seg34LadderFlatX164_eq]
        unfold seg34LadderFlatX164
        linear_combination -r5118
      unfold seg34AccX165
      linear_combination hd
    have hsely : seg34AccY165 rho = seg34AccY164 rho - Bool.toZMod bit * (seg34AccY164 rho - rho 36389) := by
      have hd : rho 36391 = Bool.toZMod bit * (rho 36389 - seg34AccY164 rho) := by
        rw [← hbit, seg34LadderFlatY164_eq]
        unfold seg34LadderFlatY164
        linear_combination -r5119
      unfold seg34AccY165
      linear_combination hd
    have hd0 : rho 36381 * rho 36382 = rho 36392 := by linear_combination r5120
    have hd1 : rho 36381 * rho 36381 = rho 36393 := by linear_combination r5121
    have hd2 : rho 36382 * rho 36382 = rho 36394 := by linear_combination r5122
    have hd3 : rho 36395 * (rho 36382 * rho 36382 + rho 36381 * rho 36381 * (-1)) = 2 * (rho 36381 * rho 36382) := by
      rw [hd0, hd1, hd2]
      linear_combination r5123
    have hd4 : rho 36396 * (2 - (rho 36382 * rho 36382 + rho 36381 * rho 36381 * (-1))) = rho 36382 * rho 36382 - rho 36381 * rho 36381 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5124
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
      ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩
      ⟨(rho 36388 : Seg34.F), (rho 36389 : Seg34.F)⟩
      ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
      ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung164

theorem seg34_rung165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34157 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
        ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩
        ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
        ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5125 Seg34.relationLc860 Seg34.relationLc860Part0 Seg34.relationLc860Part1 Seg34.relationLc860Part2 Seg34.relationLc860Part3 Seg34.relationLc860Part4 Seg34.relationLc860Part5 Seg34.relationLc860Part6 Seg34.relationLc860Part7 Seg34.relationLc860Part8 Seg34.relationLc860Part9 Seg34.relationLc860Part10 at r5125
  unfold Seg34.relationRow5126 at r5126
  unfold Seg34.relationRow5127 Seg34.relationLc861 Seg34.relationLc861Part0 Seg34.relationLc861Part1 Seg34.relationLc861Part2 Seg34.relationLc861Part3 Seg34.relationLc861Part4 Seg34.relationLc861Part5 at r5127
  unfold Seg34.relationRow5128 Seg34.relationLc862 Seg34.relationLc862Part0 Seg34.relationLc862Part1 Seg34.relationLc862Part2 Seg34.relationLc862Part3 Seg34.relationLc862Part4 Seg34.relationLc862Part5 at r5128
  unfold Seg34.relationRow5129 at r5129
  unfold Seg34.relationRow5130 at r5130
  unfold Seg34.relationRow5131 at r5131
  unfold Seg34.relationRow5132 Seg34.relationLc863 Seg34.relationLc863Part0 Seg34.relationLc863Part1 Seg34.relationLc863Part2 Seg34.relationLc863Part3 Seg34.relationLc863Part4 Seg34.relationLc863Part5 at r5132
  unfold Seg34.relationRow5133 Seg34.relationLc864 Seg34.relationLc864Part0 Seg34.relationLc864Part1 Seg34.relationLc864Part2 Seg34.relationLc864Part3 Seg34.relationLc864Part4 Seg34.relationLc864Part5 at r5133
  unfold Seg34.relationRow5134 at r5134
  unfold Seg34.relationRow5135 at r5135
  unfold Seg34.relationRow5136 at r5136
  unfold Seg34.relationRow5137 at r5137
  unfold Seg34.relationRow5138 at r5138
  have hrung165 (bit : Bool) (hbit : rho 34157 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
        ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩
        ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
        ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩ := by
    have hsum : seg34AccX165 rho + seg34AccY165 rho = rho 36397 := by
      rw [seg34LadderFlatX165_eq, seg34LadderFlatY165_eq]
      unfold seg34LadderFlatX165 seg34LadderFlatY165
      linear_combination r5125
    have ha0 : (rho 36395 + rho 36396) * (seg34AccX165 rho + seg34AccY165 rho) = rho 36398 := by
      rw [hsum]
      linear_combination r5126
    have ha1 : rho 36396 * seg34AccX165 rho = rho 36399 := by
      rw [seg34LadderFlatX165_eq]
      unfold seg34LadderFlatX165
      linear_combination r5127
    have ha2 : rho 36395 * seg34AccY165 rho = rho 36400 := by
      rw [seg34LadderFlatY165_eq]
      unfold seg34LadderFlatY165
      linear_combination r5128
    have ha3 : 3021 * rho 36399 * rho 36400 = rho 36401 := by
      linear_combination r5129
    have ha4 : rho 36402 * (1 + rho 36401) = rho 36399 + rho 36400 := by
      linear_combination r5130
    have ha5 : rho 36403 * (1 - rho 36401) = rho 36398 - rho 36399 - rho 36400 := by
      linear_combination r5131
    have haddx :
        rho 36402 * (1 + 3021 * (rho 36396 * seg34AccX165 rho) * (rho 36395 * seg34AccY165 rho)) =
          rho 36396 * seg34AccX165 rho + rho 36395 * seg34AccY165 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36403 * (1 - 3021 * (rho 36396 * seg34AccX165 rho) * (rho 36395 * seg34AccY165 rho)) =
          (-1) * (rho 36396 * seg34AccX165 rho) - rho 36395 * seg34AccY165 rho +
            (seg34AccY165 rho - seg34AccX165 rho * (-1)) * (rho 36395 + rho 36396) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36403 * (1 - rho 36401) = rho 36398 - rho 36399 - rho 36400 := ha5
        _ = (-1) * rho 36399 - rho 36400 + (seg34AccY165 rho - seg34AccX165 rho * (-1)) * (rho 36395 + rho 36396) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX166 rho = seg34AccX165 rho - Bool.toZMod bit * (seg34AccX165 rho - rho 36402) := by
      have hd : rho 36404 = Bool.toZMod bit * (rho 36402 - seg34AccX165 rho) := by
        rw [← hbit, seg34LadderFlatX165_eq]
        unfold seg34LadderFlatX165
        linear_combination -r5132
      unfold seg34AccX166
      linear_combination hd
    have hsely : seg34AccY166 rho = seg34AccY165 rho - Bool.toZMod bit * (seg34AccY165 rho - rho 36403) := by
      have hd : rho 36405 = Bool.toZMod bit * (rho 36403 - seg34AccY165 rho) := by
        rw [← hbit, seg34LadderFlatY165_eq]
        unfold seg34LadderFlatY165
        linear_combination -r5133
      unfold seg34AccY166
      linear_combination hd
    have hd0 : rho 36395 * rho 36396 = rho 36406 := by linear_combination r5134
    have hd1 : rho 36395 * rho 36395 = rho 36407 := by linear_combination r5135
    have hd2 : rho 36396 * rho 36396 = rho 36408 := by linear_combination r5136
    have hd3 : rho 36409 * (rho 36396 * rho 36396 + rho 36395 * rho 36395 * (-1)) = 2 * (rho 36395 * rho 36396) := by
      rw [hd0, hd1, hd2]
      linear_combination r5137
    have hd4 : rho 36410 * (2 - (rho 36396 * rho 36396 + rho 36395 * rho 36395 * (-1))) = rho 36396 * rho 36396 - rho 36395 * rho 36395 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5138
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
      ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩
      ⟨(rho 36402 : Seg34.F), (rho 36403 : Seg34.F)⟩
      ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
      ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung165

theorem seg34_rung166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34158 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
        ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩
        ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
        ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5139 Seg34.relationLc865 Seg34.relationLc865Part0 Seg34.relationLc865Part1 Seg34.relationLc865Part2 Seg34.relationLc865Part3 Seg34.relationLc865Part4 Seg34.relationLc865Part5 Seg34.relationLc865Part6 Seg34.relationLc865Part7 Seg34.relationLc865Part8 Seg34.relationLc865Part9 Seg34.relationLc865Part10 at r5139
  unfold Seg34.relationRow5140 at r5140
  unfold Seg34.relationRow5141 Seg34.relationLc866 Seg34.relationLc866Part0 Seg34.relationLc866Part1 Seg34.relationLc866Part2 Seg34.relationLc866Part3 Seg34.relationLc866Part4 Seg34.relationLc866Part5 at r5141
  unfold Seg34.relationRow5142 Seg34.relationLc867 Seg34.relationLc867Part0 Seg34.relationLc867Part1 Seg34.relationLc867Part2 Seg34.relationLc867Part3 Seg34.relationLc867Part4 Seg34.relationLc867Part5 at r5142
  unfold Seg34.relationRow5143 at r5143
  unfold Seg34.relationRow5144 at r5144
  unfold Seg34.relationRow5145 at r5145
  unfold Seg34.relationRow5146 Seg34.relationLc868 Seg34.relationLc868Part0 Seg34.relationLc868Part1 Seg34.relationLc868Part2 Seg34.relationLc868Part3 Seg34.relationLc868Part4 Seg34.relationLc868Part5 at r5146
  unfold Seg34.relationRow5147 Seg34.relationLc869 Seg34.relationLc869Part0 Seg34.relationLc869Part1 Seg34.relationLc869Part2 Seg34.relationLc869Part3 Seg34.relationLc869Part4 Seg34.relationLc869Part5 at r5147
  unfold Seg34.relationRow5148 at r5148
  unfold Seg34.relationRow5149 at r5149
  unfold Seg34.relationRow5150 at r5150
  unfold Seg34.relationRow5151 at r5151
  unfold Seg34.relationRow5152 at r5152
  have hrung166 (bit : Bool) (hbit : rho 34158 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
        ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩
        ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
        ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩ := by
    have hsum : seg34AccX166 rho + seg34AccY166 rho = rho 36411 := by
      rw [seg34LadderFlatX166_eq, seg34LadderFlatY166_eq]
      unfold seg34LadderFlatX166 seg34LadderFlatY166
      linear_combination r5139
    have ha0 : (rho 36409 + rho 36410) * (seg34AccX166 rho + seg34AccY166 rho) = rho 36412 := by
      rw [hsum]
      linear_combination r5140
    have ha1 : rho 36410 * seg34AccX166 rho = rho 36413 := by
      rw [seg34LadderFlatX166_eq]
      unfold seg34LadderFlatX166
      linear_combination r5141
    have ha2 : rho 36409 * seg34AccY166 rho = rho 36414 := by
      rw [seg34LadderFlatY166_eq]
      unfold seg34LadderFlatY166
      linear_combination r5142
    have ha3 : 3021 * rho 36413 * rho 36414 = rho 36415 := by
      linear_combination r5143
    have ha4 : rho 36416 * (1 + rho 36415) = rho 36413 + rho 36414 := by
      linear_combination r5144
    have ha5 : rho 36417 * (1 - rho 36415) = rho 36412 - rho 36413 - rho 36414 := by
      linear_combination r5145
    have haddx :
        rho 36416 * (1 + 3021 * (rho 36410 * seg34AccX166 rho) * (rho 36409 * seg34AccY166 rho)) =
          rho 36410 * seg34AccX166 rho + rho 36409 * seg34AccY166 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36417 * (1 - 3021 * (rho 36410 * seg34AccX166 rho) * (rho 36409 * seg34AccY166 rho)) =
          (-1) * (rho 36410 * seg34AccX166 rho) - rho 36409 * seg34AccY166 rho +
            (seg34AccY166 rho - seg34AccX166 rho * (-1)) * (rho 36409 + rho 36410) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36417 * (1 - rho 36415) = rho 36412 - rho 36413 - rho 36414 := ha5
        _ = (-1) * rho 36413 - rho 36414 + (seg34AccY166 rho - seg34AccX166 rho * (-1)) * (rho 36409 + rho 36410) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX167 rho = seg34AccX166 rho - Bool.toZMod bit * (seg34AccX166 rho - rho 36416) := by
      have hd : rho 36418 = Bool.toZMod bit * (rho 36416 - seg34AccX166 rho) := by
        rw [← hbit, seg34LadderFlatX166_eq]
        unfold seg34LadderFlatX166
        linear_combination -r5146
      unfold seg34AccX167
      linear_combination hd
    have hsely : seg34AccY167 rho = seg34AccY166 rho - Bool.toZMod bit * (seg34AccY166 rho - rho 36417) := by
      have hd : rho 36419 = Bool.toZMod bit * (rho 36417 - seg34AccY166 rho) := by
        rw [← hbit, seg34LadderFlatY166_eq]
        unfold seg34LadderFlatY166
        linear_combination -r5147
      unfold seg34AccY167
      linear_combination hd
    have hd0 : rho 36409 * rho 36410 = rho 36420 := by linear_combination r5148
    have hd1 : rho 36409 * rho 36409 = rho 36421 := by linear_combination r5149
    have hd2 : rho 36410 * rho 36410 = rho 36422 := by linear_combination r5150
    have hd3 : rho 36423 * (rho 36410 * rho 36410 + rho 36409 * rho 36409 * (-1)) = 2 * (rho 36409 * rho 36410) := by
      rw [hd0, hd1, hd2]
      linear_combination r5151
    have hd4 : rho 36424 * (2 - (rho 36410 * rho 36410 + rho 36409 * rho 36409 * (-1))) = rho 36410 * rho 36410 - rho 36409 * rho 36409 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5152
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
      ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩
      ⟨(rho 36416 : Seg34.F), (rho 36417 : Seg34.F)⟩
      ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
      ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung166

theorem seg34_rung167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34159 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
        ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩
        ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
        ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5153 Seg34.relationLc870 Seg34.relationLc870Part0 Seg34.relationLc870Part1 Seg34.relationLc870Part2 Seg34.relationLc870Part3 Seg34.relationLc870Part4 Seg34.relationLc870Part5 Seg34.relationLc870Part6 Seg34.relationLc870Part7 Seg34.relationLc870Part8 Seg34.relationLc870Part9 Seg34.relationLc870Part10 at r5153
  unfold Seg34.relationRow5154 at r5154
  unfold Seg34.relationRow5155 Seg34.relationLc871 Seg34.relationLc871Part0 Seg34.relationLc871Part1 Seg34.relationLc871Part2 Seg34.relationLc871Part3 Seg34.relationLc871Part4 Seg34.relationLc871Part5 at r5155
  unfold Seg34.relationRow5156 Seg34.relationLc872 Seg34.relationLc872Part0 Seg34.relationLc872Part1 Seg34.relationLc872Part2 Seg34.relationLc872Part3 Seg34.relationLc872Part4 Seg34.relationLc872Part5 at r5156
  unfold Seg34.relationRow5157 at r5157
  unfold Seg34.relationRow5158 at r5158
  unfold Seg34.relationRow5159 at r5159
  unfold Seg34.relationRow5160 Seg34.relationLc873 Seg34.relationLc873Part0 Seg34.relationLc873Part1 Seg34.relationLc873Part2 Seg34.relationLc873Part3 Seg34.relationLc873Part4 Seg34.relationLc873Part5 at r5160
  unfold Seg34.relationRow5161 Seg34.relationLc874 Seg34.relationLc874Part0 Seg34.relationLc874Part1 Seg34.relationLc874Part2 Seg34.relationLc874Part3 Seg34.relationLc874Part4 Seg34.relationLc874Part5 at r5161
  unfold Seg34.relationRow5162 at r5162
  unfold Seg34.relationRow5163 at r5163
  unfold Seg34.relationRow5164 at r5164
  unfold Seg34.relationRow5165 at r5165
  unfold Seg34.relationRow5166 at r5166
  have hrung167 (bit : Bool) (hbit : rho 34159 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
        ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩
        ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
        ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩ := by
    have hsum : seg34AccX167 rho + seg34AccY167 rho = rho 36425 := by
      rw [seg34LadderFlatX167_eq, seg34LadderFlatY167_eq]
      unfold seg34LadderFlatX167 seg34LadderFlatY167
      linear_combination r5153
    have ha0 : (rho 36423 + rho 36424) * (seg34AccX167 rho + seg34AccY167 rho) = rho 36426 := by
      rw [hsum]
      linear_combination r5154
    have ha1 : rho 36424 * seg34AccX167 rho = rho 36427 := by
      rw [seg34LadderFlatX167_eq]
      unfold seg34LadderFlatX167
      linear_combination r5155
    have ha2 : rho 36423 * seg34AccY167 rho = rho 36428 := by
      rw [seg34LadderFlatY167_eq]
      unfold seg34LadderFlatY167
      linear_combination r5156
    have ha3 : 3021 * rho 36427 * rho 36428 = rho 36429 := by
      linear_combination r5157
    have ha4 : rho 36430 * (1 + rho 36429) = rho 36427 + rho 36428 := by
      linear_combination r5158
    have ha5 : rho 36431 * (1 - rho 36429) = rho 36426 - rho 36427 - rho 36428 := by
      linear_combination r5159
    have haddx :
        rho 36430 * (1 + 3021 * (rho 36424 * seg34AccX167 rho) * (rho 36423 * seg34AccY167 rho)) =
          rho 36424 * seg34AccX167 rho + rho 36423 * seg34AccY167 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36431 * (1 - 3021 * (rho 36424 * seg34AccX167 rho) * (rho 36423 * seg34AccY167 rho)) =
          (-1) * (rho 36424 * seg34AccX167 rho) - rho 36423 * seg34AccY167 rho +
            (seg34AccY167 rho - seg34AccX167 rho * (-1)) * (rho 36423 + rho 36424) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36431 * (1 - rho 36429) = rho 36426 - rho 36427 - rho 36428 := ha5
        _ = (-1) * rho 36427 - rho 36428 + (seg34AccY167 rho - seg34AccX167 rho * (-1)) * (rho 36423 + rho 36424) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX168 rho = seg34AccX167 rho - Bool.toZMod bit * (seg34AccX167 rho - rho 36430) := by
      have hd : rho 36432 = Bool.toZMod bit * (rho 36430 - seg34AccX167 rho) := by
        rw [← hbit, seg34LadderFlatX167_eq]
        unfold seg34LadderFlatX167
        linear_combination -r5160
      unfold seg34AccX168
      linear_combination hd
    have hsely : seg34AccY168 rho = seg34AccY167 rho - Bool.toZMod bit * (seg34AccY167 rho - rho 36431) := by
      have hd : rho 36433 = Bool.toZMod bit * (rho 36431 - seg34AccY167 rho) := by
        rw [← hbit, seg34LadderFlatY167_eq]
        unfold seg34LadderFlatY167
        linear_combination -r5161
      unfold seg34AccY168
      linear_combination hd
    have hd0 : rho 36423 * rho 36424 = rho 36434 := by linear_combination r5162
    have hd1 : rho 36423 * rho 36423 = rho 36435 := by linear_combination r5163
    have hd2 : rho 36424 * rho 36424 = rho 36436 := by linear_combination r5164
    have hd3 : rho 36437 * (rho 36424 * rho 36424 + rho 36423 * rho 36423 * (-1)) = 2 * (rho 36423 * rho 36424) := by
      rw [hd0, hd1, hd2]
      linear_combination r5165
    have hd4 : rho 36438 * (2 - (rho 36424 * rho 36424 + rho 36423 * rho 36423 * (-1))) = rho 36424 * rho 36424 - rho 36423 * rho 36423 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5166
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
      ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩
      ⟨(rho 36430 : Seg34.F), (rho 36431 : Seg34.F)⟩
      ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
      ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung167

theorem seg34_rung168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34160 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
        ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩
        ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
        ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5167 Seg34.relationLc875 Seg34.relationLc875Part0 Seg34.relationLc875Part1 Seg34.relationLc875Part2 Seg34.relationLc875Part3 Seg34.relationLc875Part4 Seg34.relationLc875Part5 Seg34.relationLc875Part6 Seg34.relationLc875Part7 Seg34.relationLc875Part8 Seg34.relationLc875Part9 Seg34.relationLc875Part10 at r5167
  unfold Seg34.relationRow5168 at r5168
  unfold Seg34.relationRow5169 Seg34.relationLc876 Seg34.relationLc876Part0 Seg34.relationLc876Part1 Seg34.relationLc876Part2 Seg34.relationLc876Part3 Seg34.relationLc876Part4 Seg34.relationLc876Part5 at r5169
  unfold Seg34.relationRow5170 Seg34.relationLc877 Seg34.relationLc877Part0 Seg34.relationLc877Part1 Seg34.relationLc877Part2 Seg34.relationLc877Part3 Seg34.relationLc877Part4 Seg34.relationLc877Part5 at r5170
  unfold Seg34.relationRow5171 at r5171
  unfold Seg34.relationRow5172 at r5172
  unfold Seg34.relationRow5173 at r5173
  unfold Seg34.relationRow5174 Seg34.relationLc878 Seg34.relationLc878Part0 Seg34.relationLc878Part1 Seg34.relationLc878Part2 Seg34.relationLc878Part3 Seg34.relationLc878Part4 Seg34.relationLc878Part5 at r5174
  unfold Seg34.relationRow5175 Seg34.relationLc879 Seg34.relationLc879Part0 Seg34.relationLc879Part1 Seg34.relationLc879Part2 Seg34.relationLc879Part3 Seg34.relationLc879Part4 Seg34.relationLc879Part5 at r5175
  unfold Seg34.relationRow5176 at r5176
  unfold Seg34.relationRow5177 at r5177
  unfold Seg34.relationRow5178 at r5178
  unfold Seg34.relationRow5179 at r5179
  unfold Seg34.relationRow5180 at r5180
  have hrung168 (bit : Bool) (hbit : rho 34160 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
        ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩
        ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
        ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩ := by
    have hsum : seg34AccX168 rho + seg34AccY168 rho = rho 36439 := by
      rw [seg34LadderFlatX168_eq, seg34LadderFlatY168_eq]
      unfold seg34LadderFlatX168 seg34LadderFlatY168
      linear_combination r5167
    have ha0 : (rho 36437 + rho 36438) * (seg34AccX168 rho + seg34AccY168 rho) = rho 36440 := by
      rw [hsum]
      linear_combination r5168
    have ha1 : rho 36438 * seg34AccX168 rho = rho 36441 := by
      rw [seg34LadderFlatX168_eq]
      unfold seg34LadderFlatX168
      linear_combination r5169
    have ha2 : rho 36437 * seg34AccY168 rho = rho 36442 := by
      rw [seg34LadderFlatY168_eq]
      unfold seg34LadderFlatY168
      linear_combination r5170
    have ha3 : 3021 * rho 36441 * rho 36442 = rho 36443 := by
      linear_combination r5171
    have ha4 : rho 36444 * (1 + rho 36443) = rho 36441 + rho 36442 := by
      linear_combination r5172
    have ha5 : rho 36445 * (1 - rho 36443) = rho 36440 - rho 36441 - rho 36442 := by
      linear_combination r5173
    have haddx :
        rho 36444 * (1 + 3021 * (rho 36438 * seg34AccX168 rho) * (rho 36437 * seg34AccY168 rho)) =
          rho 36438 * seg34AccX168 rho + rho 36437 * seg34AccY168 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36445 * (1 - 3021 * (rho 36438 * seg34AccX168 rho) * (rho 36437 * seg34AccY168 rho)) =
          (-1) * (rho 36438 * seg34AccX168 rho) - rho 36437 * seg34AccY168 rho +
            (seg34AccY168 rho - seg34AccX168 rho * (-1)) * (rho 36437 + rho 36438) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36445 * (1 - rho 36443) = rho 36440 - rho 36441 - rho 36442 := ha5
        _ = (-1) * rho 36441 - rho 36442 + (seg34AccY168 rho - seg34AccX168 rho * (-1)) * (rho 36437 + rho 36438) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX169 rho = seg34AccX168 rho - Bool.toZMod bit * (seg34AccX168 rho - rho 36444) := by
      have hd : rho 36446 = Bool.toZMod bit * (rho 36444 - seg34AccX168 rho) := by
        rw [← hbit, seg34LadderFlatX168_eq]
        unfold seg34LadderFlatX168
        linear_combination -r5174
      unfold seg34AccX169
      linear_combination hd
    have hsely : seg34AccY169 rho = seg34AccY168 rho - Bool.toZMod bit * (seg34AccY168 rho - rho 36445) := by
      have hd : rho 36447 = Bool.toZMod bit * (rho 36445 - seg34AccY168 rho) := by
        rw [← hbit, seg34LadderFlatY168_eq]
        unfold seg34LadderFlatY168
        linear_combination -r5175
      unfold seg34AccY169
      linear_combination hd
    have hd0 : rho 36437 * rho 36438 = rho 36448 := by linear_combination r5176
    have hd1 : rho 36437 * rho 36437 = rho 36449 := by linear_combination r5177
    have hd2 : rho 36438 * rho 36438 = rho 36450 := by linear_combination r5178
    have hd3 : rho 36451 * (rho 36438 * rho 36438 + rho 36437 * rho 36437 * (-1)) = 2 * (rho 36437 * rho 36438) := by
      rw [hd0, hd1, hd2]
      linear_combination r5179
    have hd4 : rho 36452 * (2 - (rho 36438 * rho 36438 + rho 36437 * rho 36437 * (-1))) = rho 36438 * rho 36438 - rho 36437 * rho 36437 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
      ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩
      ⟨(rho 36444 : Seg34.F), (rho 36445 : Seg34.F)⟩
      ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
      ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung168

theorem seg34_rung169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34161 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
        ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩
        ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
        ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, _, _, _, _, _⟩
  unfold Seg34.relationRow5181 Seg34.relationLc880 Seg34.relationLc880Part0 Seg34.relationLc880Part1 Seg34.relationLc880Part2 Seg34.relationLc880Part3 Seg34.relationLc880Part4 Seg34.relationLc880Part5 Seg34.relationLc880Part6 Seg34.relationLc880Part7 Seg34.relationLc880Part8 Seg34.relationLc880Part9 Seg34.relationLc880Part10 at r5181
  unfold Seg34.relationRow5182 at r5182
  unfold Seg34.relationRow5183 Seg34.relationLc881 Seg34.relationLc881Part0 Seg34.relationLc881Part1 Seg34.relationLc881Part2 Seg34.relationLc881Part3 Seg34.relationLc881Part4 Seg34.relationLc881Part5 at r5183
  unfold Seg34.relationRow5184 Seg34.relationLc882 Seg34.relationLc882Part0 Seg34.relationLc882Part1 Seg34.relationLc882Part2 Seg34.relationLc882Part3 Seg34.relationLc882Part4 Seg34.relationLc882Part5 at r5184
  unfold Seg34.relationRow5185 at r5185
  unfold Seg34.relationRow5186 at r5186
  unfold Seg34.relationRow5187 at r5187
  unfold Seg34.relationRow5188 Seg34.relationLc883 Seg34.relationLc883Part0 Seg34.relationLc883Part1 Seg34.relationLc883Part2 Seg34.relationLc883Part3 Seg34.relationLc883Part4 Seg34.relationLc883Part5 at r5188
  unfold Seg34.relationRow5189 Seg34.relationLc884 Seg34.relationLc884Part0 Seg34.relationLc884Part1 Seg34.relationLc884Part2 Seg34.relationLc884Part3 Seg34.relationLc884Part4 Seg34.relationLc884Part5 at r5189
  unfold Seg34.relationRow5190 at r5190
  unfold Seg34.relationRow5191 at r5191
  unfold Seg34.relationRow5192 at r5192
  unfold Seg34.relationRow5193 at r5193
  unfold Seg34.relationRow5194 at r5194
  have hrung169 (bit : Bool) (hbit : rho 34161 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
        ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩
        ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
        ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩ := by
    have hsum : seg34AccX169 rho + seg34AccY169 rho = rho 36453 := by
      rw [seg34LadderFlatX169_eq, seg34LadderFlatY169_eq]
      unfold seg34LadderFlatX169 seg34LadderFlatY169
      linear_combination r5181
    have ha0 : (rho 36451 + rho 36452) * (seg34AccX169 rho + seg34AccY169 rho) = rho 36454 := by
      rw [hsum]
      linear_combination r5182
    have ha1 : rho 36452 * seg34AccX169 rho = rho 36455 := by
      rw [seg34LadderFlatX169_eq]
      unfold seg34LadderFlatX169
      linear_combination r5183
    have ha2 : rho 36451 * seg34AccY169 rho = rho 36456 := by
      rw [seg34LadderFlatY169_eq]
      unfold seg34LadderFlatY169
      linear_combination r5184
    have ha3 : 3021 * rho 36455 * rho 36456 = rho 36457 := by
      linear_combination r5185
    have ha4 : rho 36458 * (1 + rho 36457) = rho 36455 + rho 36456 := by
      linear_combination r5186
    have ha5 : rho 36459 * (1 - rho 36457) = rho 36454 - rho 36455 - rho 36456 := by
      linear_combination r5187
    have haddx :
        rho 36458 * (1 + 3021 * (rho 36452 * seg34AccX169 rho) * (rho 36451 * seg34AccY169 rho)) =
          rho 36452 * seg34AccX169 rho + rho 36451 * seg34AccY169 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36459 * (1 - 3021 * (rho 36452 * seg34AccX169 rho) * (rho 36451 * seg34AccY169 rho)) =
          (-1) * (rho 36452 * seg34AccX169 rho) - rho 36451 * seg34AccY169 rho +
            (seg34AccY169 rho - seg34AccX169 rho * (-1)) * (rho 36451 + rho 36452) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36459 * (1 - rho 36457) = rho 36454 - rho 36455 - rho 36456 := ha5
        _ = (-1) * rho 36455 - rho 36456 + (seg34AccY169 rho - seg34AccX169 rho * (-1)) * (rho 36451 + rho 36452) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX170 rho = seg34AccX169 rho - Bool.toZMod bit * (seg34AccX169 rho - rho 36458) := by
      have hd : rho 36460 = Bool.toZMod bit * (rho 36458 - seg34AccX169 rho) := by
        rw [← hbit, seg34LadderFlatX169_eq]
        unfold seg34LadderFlatX169
        linear_combination -r5188
      unfold seg34AccX170
      linear_combination hd
    have hsely : seg34AccY170 rho = seg34AccY169 rho - Bool.toZMod bit * (seg34AccY169 rho - rho 36459) := by
      have hd : rho 36461 = Bool.toZMod bit * (rho 36459 - seg34AccY169 rho) := by
        rw [← hbit, seg34LadderFlatY169_eq]
        unfold seg34LadderFlatY169
        linear_combination -r5189
      unfold seg34AccY170
      linear_combination hd
    have hd0 : rho 36451 * rho 36452 = rho 36462 := by linear_combination r5190
    have hd1 : rho 36451 * rho 36451 = rho 36463 := by linear_combination r5191
    have hd2 : rho 36452 * rho 36452 = rho 36464 := by linear_combination r5192
    have hd3 : rho 36465 * (rho 36452 * rho 36452 + rho 36451 * rho 36451 * (-1)) = 2 * (rho 36451 * rho 36452) := by
      rw [hd0, hd1, hd2]
      linear_combination r5193
    have hd4 : rho 36466 * (2 - (rho 36452 * rho 36452 + rho 36451 * rho 36451 * (-1))) = rho 36452 * rho 36452 - rho 36451 * rho 36451 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
      ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩
      ⟨(rho 36458 : Seg34.F), (rho 36459 : Seg34.F)⟩
      ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
      ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung169

theorem seg34_rung170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34162 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
        ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩
        ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
        ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5195 Seg34.relationLc885 Seg34.relationLc885Part0 Seg34.relationLc885Part1 Seg34.relationLc885Part2 Seg34.relationLc885Part3 Seg34.relationLc885Part4 Seg34.relationLc885Part5 Seg34.relationLc885Part6 Seg34.relationLc885Part7 Seg34.relationLc885Part8 Seg34.relationLc885Part9 Seg34.relationLc885Part10 at r5195
  unfold Seg34.relationRow5196 at r5196
  unfold Seg34.relationRow5197 Seg34.relationLc886 Seg34.relationLc886Part0 Seg34.relationLc886Part1 Seg34.relationLc886Part2 Seg34.relationLc886Part3 Seg34.relationLc886Part4 Seg34.relationLc886Part5 at r5197
  unfold Seg34.relationRow5198 Seg34.relationLc887 Seg34.relationLc887Part0 Seg34.relationLc887Part1 Seg34.relationLc887Part2 Seg34.relationLc887Part3 Seg34.relationLc887Part4 Seg34.relationLc887Part5 at r5198
  unfold Seg34.relationRow5199 at r5199
  unfold Seg34.relationRow5200 at r5200
  unfold Seg34.relationRow5201 at r5201
  unfold Seg34.relationRow5202 Seg34.relationLc888 Seg34.relationLc888Part0 Seg34.relationLc888Part1 Seg34.relationLc888Part2 Seg34.relationLc888Part3 Seg34.relationLc888Part4 Seg34.relationLc888Part5 at r5202
  unfold Seg34.relationRow5203 Seg34.relationLc889 Seg34.relationLc889Part0 Seg34.relationLc889Part1 Seg34.relationLc889Part2 Seg34.relationLc889Part3 Seg34.relationLc889Part4 Seg34.relationLc889Part5 at r5203
  unfold Seg34.relationRow5204 at r5204
  unfold Seg34.relationRow5205 at r5205
  unfold Seg34.relationRow5206 at r5206
  unfold Seg34.relationRow5207 at r5207
  unfold Seg34.relationRow5208 at r5208
  have hrung170 (bit : Bool) (hbit : rho 34162 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
        ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩
        ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
        ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩ := by
    have hsum : seg34AccX170 rho + seg34AccY170 rho = rho 36467 := by
      rw [seg34LadderFlatX170_eq, seg34LadderFlatY170_eq]
      unfold seg34LadderFlatX170 seg34LadderFlatY170
      linear_combination r5195
    have ha0 : (rho 36465 + rho 36466) * (seg34AccX170 rho + seg34AccY170 rho) = rho 36468 := by
      rw [hsum]
      linear_combination r5196
    have ha1 : rho 36466 * seg34AccX170 rho = rho 36469 := by
      rw [seg34LadderFlatX170_eq]
      unfold seg34LadderFlatX170
      linear_combination r5197
    have ha2 : rho 36465 * seg34AccY170 rho = rho 36470 := by
      rw [seg34LadderFlatY170_eq]
      unfold seg34LadderFlatY170
      linear_combination r5198
    have ha3 : 3021 * rho 36469 * rho 36470 = rho 36471 := by
      linear_combination r5199
    have ha4 : rho 36472 * (1 + rho 36471) = rho 36469 + rho 36470 := by
      linear_combination r5200
    have ha5 : rho 36473 * (1 - rho 36471) = rho 36468 - rho 36469 - rho 36470 := by
      linear_combination r5201
    have haddx :
        rho 36472 * (1 + 3021 * (rho 36466 * seg34AccX170 rho) * (rho 36465 * seg34AccY170 rho)) =
          rho 36466 * seg34AccX170 rho + rho 36465 * seg34AccY170 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36473 * (1 - 3021 * (rho 36466 * seg34AccX170 rho) * (rho 36465 * seg34AccY170 rho)) =
          (-1) * (rho 36466 * seg34AccX170 rho) - rho 36465 * seg34AccY170 rho +
            (seg34AccY170 rho - seg34AccX170 rho * (-1)) * (rho 36465 + rho 36466) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36473 * (1 - rho 36471) = rho 36468 - rho 36469 - rho 36470 := ha5
        _ = (-1) * rho 36469 - rho 36470 + (seg34AccY170 rho - seg34AccX170 rho * (-1)) * (rho 36465 + rho 36466) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX171 rho = seg34AccX170 rho - Bool.toZMod bit * (seg34AccX170 rho - rho 36472) := by
      have hd : rho 36474 = Bool.toZMod bit * (rho 36472 - seg34AccX170 rho) := by
        rw [← hbit, seg34LadderFlatX170_eq]
        unfold seg34LadderFlatX170
        linear_combination -r5202
      unfold seg34AccX171
      linear_combination hd
    have hsely : seg34AccY171 rho = seg34AccY170 rho - Bool.toZMod bit * (seg34AccY170 rho - rho 36473) := by
      have hd : rho 36475 = Bool.toZMod bit * (rho 36473 - seg34AccY170 rho) := by
        rw [← hbit, seg34LadderFlatY170_eq]
        unfold seg34LadderFlatY170
        linear_combination -r5203
      unfold seg34AccY171
      linear_combination hd
    have hd0 : rho 36465 * rho 36466 = rho 36476 := by linear_combination r5204
    have hd1 : rho 36465 * rho 36465 = rho 36477 := by linear_combination r5205
    have hd2 : rho 36466 * rho 36466 = rho 36478 := by linear_combination r5206
    have hd3 : rho 36479 * (rho 36466 * rho 36466 + rho 36465 * rho 36465 * (-1)) = 2 * (rho 36465 * rho 36466) := by
      rw [hd0, hd1, hd2]
      linear_combination r5207
    have hd4 : rho 36480 * (2 - (rho 36466 * rho 36466 + rho 36465 * rho 36465 * (-1))) = rho 36466 * rho 36466 - rho 36465 * rho 36465 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5208
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
      ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩
      ⟨(rho 36472 : Seg34.F), (rho 36473 : Seg34.F)⟩
      ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
      ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung170

theorem seg34_rung171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34163 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
        ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩
        ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
        ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5209 Seg34.relationLc890 Seg34.relationLc890Part0 Seg34.relationLc890Part1 Seg34.relationLc890Part2 Seg34.relationLc890Part3 Seg34.relationLc890Part4 Seg34.relationLc890Part5 Seg34.relationLc890Part6 Seg34.relationLc890Part7 Seg34.relationLc890Part8 Seg34.relationLc890Part9 Seg34.relationLc890Part10 at r5209
  unfold Seg34.relationRow5210 at r5210
  unfold Seg34.relationRow5211 Seg34.relationLc891 Seg34.relationLc891Part0 Seg34.relationLc891Part1 Seg34.relationLc891Part2 Seg34.relationLc891Part3 Seg34.relationLc891Part4 Seg34.relationLc891Part5 at r5211
  unfold Seg34.relationRow5212 Seg34.relationLc892 Seg34.relationLc892Part0 Seg34.relationLc892Part1 Seg34.relationLc892Part2 Seg34.relationLc892Part3 Seg34.relationLc892Part4 Seg34.relationLc892Part5 at r5212
  unfold Seg34.relationRow5213 at r5213
  unfold Seg34.relationRow5214 at r5214
  unfold Seg34.relationRow5215 at r5215
  unfold Seg34.relationRow5216 Seg34.relationLc893 Seg34.relationLc893Part0 Seg34.relationLc893Part1 Seg34.relationLc893Part2 Seg34.relationLc893Part3 Seg34.relationLc893Part4 Seg34.relationLc893Part5 at r5216
  unfold Seg34.relationRow5217 Seg34.relationLc894 Seg34.relationLc894Part0 Seg34.relationLc894Part1 Seg34.relationLc894Part2 Seg34.relationLc894Part3 Seg34.relationLc894Part4 Seg34.relationLc894Part5 at r5217
  unfold Seg34.relationRow5218 at r5218
  unfold Seg34.relationRow5219 at r5219
  unfold Seg34.relationRow5220 at r5220
  unfold Seg34.relationRow5221 at r5221
  unfold Seg34.relationRow5222 at r5222
  have hrung171 (bit : Bool) (hbit : rho 34163 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
        ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩
        ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
        ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩ := by
    have hsum : seg34AccX171 rho + seg34AccY171 rho = rho 36481 := by
      rw [seg34LadderFlatX171_eq, seg34LadderFlatY171_eq]
      unfold seg34LadderFlatX171 seg34LadderFlatY171
      linear_combination r5209
    have ha0 : (rho 36479 + rho 36480) * (seg34AccX171 rho + seg34AccY171 rho) = rho 36482 := by
      rw [hsum]
      linear_combination r5210
    have ha1 : rho 36480 * seg34AccX171 rho = rho 36483 := by
      rw [seg34LadderFlatX171_eq]
      unfold seg34LadderFlatX171
      linear_combination r5211
    have ha2 : rho 36479 * seg34AccY171 rho = rho 36484 := by
      rw [seg34LadderFlatY171_eq]
      unfold seg34LadderFlatY171
      linear_combination r5212
    have ha3 : 3021 * rho 36483 * rho 36484 = rho 36485 := by
      linear_combination r5213
    have ha4 : rho 36486 * (1 + rho 36485) = rho 36483 + rho 36484 := by
      linear_combination r5214
    have ha5 : rho 36487 * (1 - rho 36485) = rho 36482 - rho 36483 - rho 36484 := by
      linear_combination r5215
    have haddx :
        rho 36486 * (1 + 3021 * (rho 36480 * seg34AccX171 rho) * (rho 36479 * seg34AccY171 rho)) =
          rho 36480 * seg34AccX171 rho + rho 36479 * seg34AccY171 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36487 * (1 - 3021 * (rho 36480 * seg34AccX171 rho) * (rho 36479 * seg34AccY171 rho)) =
          (-1) * (rho 36480 * seg34AccX171 rho) - rho 36479 * seg34AccY171 rho +
            (seg34AccY171 rho - seg34AccX171 rho * (-1)) * (rho 36479 + rho 36480) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36487 * (1 - rho 36485) = rho 36482 - rho 36483 - rho 36484 := ha5
        _ = (-1) * rho 36483 - rho 36484 + (seg34AccY171 rho - seg34AccX171 rho * (-1)) * (rho 36479 + rho 36480) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX172 rho = seg34AccX171 rho - Bool.toZMod bit * (seg34AccX171 rho - rho 36486) := by
      have hd : rho 36488 = Bool.toZMod bit * (rho 36486 - seg34AccX171 rho) := by
        rw [← hbit, seg34LadderFlatX171_eq]
        unfold seg34LadderFlatX171
        linear_combination -r5216
      unfold seg34AccX172
      linear_combination hd
    have hsely : seg34AccY172 rho = seg34AccY171 rho - Bool.toZMod bit * (seg34AccY171 rho - rho 36487) := by
      have hd : rho 36489 = Bool.toZMod bit * (rho 36487 - seg34AccY171 rho) := by
        rw [← hbit, seg34LadderFlatY171_eq]
        unfold seg34LadderFlatY171
        linear_combination -r5217
      unfold seg34AccY172
      linear_combination hd
    have hd0 : rho 36479 * rho 36480 = rho 36490 := by linear_combination r5218
    have hd1 : rho 36479 * rho 36479 = rho 36491 := by linear_combination r5219
    have hd2 : rho 36480 * rho 36480 = rho 36492 := by linear_combination r5220
    have hd3 : rho 36493 * (rho 36480 * rho 36480 + rho 36479 * rho 36479 * (-1)) = 2 * (rho 36479 * rho 36480) := by
      rw [hd0, hd1, hd2]
      linear_combination r5221
    have hd4 : rho 36494 * (2 - (rho 36480 * rho 36480 + rho 36479 * rho 36479 * (-1))) = rho 36480 * rho 36480 - rho 36479 * rho 36479 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5222
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
      ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩
      ⟨(rho 36486 : Seg34.F), (rho 36487 : Seg34.F)⟩
      ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
      ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung171

theorem seg34_rung172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34164 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
        ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩
        ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
        ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5223 Seg34.relationLc895 Seg34.relationLc895Part0 Seg34.relationLc895Part1 Seg34.relationLc895Part2 Seg34.relationLc895Part3 Seg34.relationLc895Part4 Seg34.relationLc895Part5 Seg34.relationLc895Part6 Seg34.relationLc895Part7 Seg34.relationLc895Part8 Seg34.relationLc895Part9 Seg34.relationLc895Part10 at r5223
  unfold Seg34.relationRow5224 at r5224
  unfold Seg34.relationRow5225 Seg34.relationLc896 Seg34.relationLc896Part0 Seg34.relationLc896Part1 Seg34.relationLc896Part2 Seg34.relationLc896Part3 Seg34.relationLc896Part4 Seg34.relationLc896Part5 at r5225
  unfold Seg34.relationRow5226 Seg34.relationLc897 Seg34.relationLc897Part0 Seg34.relationLc897Part1 Seg34.relationLc897Part2 Seg34.relationLc897Part3 Seg34.relationLc897Part4 Seg34.relationLc897Part5 at r5226
  unfold Seg34.relationRow5227 at r5227
  unfold Seg34.relationRow5228 at r5228
  unfold Seg34.relationRow5229 at r5229
  unfold Seg34.relationRow5230 Seg34.relationLc898 Seg34.relationLc898Part0 Seg34.relationLc898Part1 Seg34.relationLc898Part2 Seg34.relationLc898Part3 Seg34.relationLc898Part4 Seg34.relationLc898Part5 at r5230
  unfold Seg34.relationRow5231 Seg34.relationLc899 Seg34.relationLc899Part0 Seg34.relationLc899Part1 Seg34.relationLc899Part2 Seg34.relationLc899Part3 Seg34.relationLc899Part4 Seg34.relationLc899Part5 at r5231
  unfold Seg34.relationRow5232 at r5232
  unfold Seg34.relationRow5233 at r5233
  unfold Seg34.relationRow5234 at r5234
  unfold Seg34.relationRow5235 at r5235
  unfold Seg34.relationRow5236 at r5236
  have hrung172 (bit : Bool) (hbit : rho 34164 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
        ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩
        ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
        ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩ := by
    have hsum : seg34AccX172 rho + seg34AccY172 rho = rho 36495 := by
      rw [seg34LadderFlatX172_eq, seg34LadderFlatY172_eq]
      unfold seg34LadderFlatX172 seg34LadderFlatY172
      linear_combination r5223
    have ha0 : (rho 36493 + rho 36494) * (seg34AccX172 rho + seg34AccY172 rho) = rho 36496 := by
      rw [hsum]
      linear_combination r5224
    have ha1 : rho 36494 * seg34AccX172 rho = rho 36497 := by
      rw [seg34LadderFlatX172_eq]
      unfold seg34LadderFlatX172
      linear_combination r5225
    have ha2 : rho 36493 * seg34AccY172 rho = rho 36498 := by
      rw [seg34LadderFlatY172_eq]
      unfold seg34LadderFlatY172
      linear_combination r5226
    have ha3 : 3021 * rho 36497 * rho 36498 = rho 36499 := by
      linear_combination r5227
    have ha4 : rho 36500 * (1 + rho 36499) = rho 36497 + rho 36498 := by
      linear_combination r5228
    have ha5 : rho 36501 * (1 - rho 36499) = rho 36496 - rho 36497 - rho 36498 := by
      linear_combination r5229
    have haddx :
        rho 36500 * (1 + 3021 * (rho 36494 * seg34AccX172 rho) * (rho 36493 * seg34AccY172 rho)) =
          rho 36494 * seg34AccX172 rho + rho 36493 * seg34AccY172 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36501 * (1 - 3021 * (rho 36494 * seg34AccX172 rho) * (rho 36493 * seg34AccY172 rho)) =
          (-1) * (rho 36494 * seg34AccX172 rho) - rho 36493 * seg34AccY172 rho +
            (seg34AccY172 rho - seg34AccX172 rho * (-1)) * (rho 36493 + rho 36494) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36501 * (1 - rho 36499) = rho 36496 - rho 36497 - rho 36498 := ha5
        _ = (-1) * rho 36497 - rho 36498 + (seg34AccY172 rho - seg34AccX172 rho * (-1)) * (rho 36493 + rho 36494) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX173 rho = seg34AccX172 rho - Bool.toZMod bit * (seg34AccX172 rho - rho 36500) := by
      have hd : rho 36502 = Bool.toZMod bit * (rho 36500 - seg34AccX172 rho) := by
        rw [← hbit, seg34LadderFlatX172_eq]
        unfold seg34LadderFlatX172
        linear_combination -r5230
      unfold seg34AccX173
      linear_combination hd
    have hsely : seg34AccY173 rho = seg34AccY172 rho - Bool.toZMod bit * (seg34AccY172 rho - rho 36501) := by
      have hd : rho 36503 = Bool.toZMod bit * (rho 36501 - seg34AccY172 rho) := by
        rw [← hbit, seg34LadderFlatY172_eq]
        unfold seg34LadderFlatY172
        linear_combination -r5231
      unfold seg34AccY173
      linear_combination hd
    have hd0 : rho 36493 * rho 36494 = rho 36504 := by linear_combination r5232
    have hd1 : rho 36493 * rho 36493 = rho 36505 := by linear_combination r5233
    have hd2 : rho 36494 * rho 36494 = rho 36506 := by linear_combination r5234
    have hd3 : rho 36507 * (rho 36494 * rho 36494 + rho 36493 * rho 36493 * (-1)) = 2 * (rho 36493 * rho 36494) := by
      rw [hd0, hd1, hd2]
      linear_combination r5235
    have hd4 : rho 36508 * (2 - (rho 36494 * rho 36494 + rho 36493 * rho 36493 * (-1))) = rho 36494 * rho 36494 - rho 36493 * rho 36493 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5236
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
      ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩
      ⟨(rho 36500 : Seg34.F), (rho 36501 : Seg34.F)⟩
      ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
      ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung172

theorem seg34_rung173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34165 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
        ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩
        ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
        ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5237 Seg34.relationLc900 Seg34.relationLc900Part0 Seg34.relationLc900Part1 Seg34.relationLc900Part2 Seg34.relationLc900Part3 Seg34.relationLc900Part4 Seg34.relationLc900Part5 Seg34.relationLc900Part6 Seg34.relationLc900Part7 Seg34.relationLc900Part8 Seg34.relationLc900Part9 Seg34.relationLc900Part10 at r5237
  unfold Seg34.relationRow5238 at r5238
  unfold Seg34.relationRow5239 Seg34.relationLc901 Seg34.relationLc901Part0 Seg34.relationLc901Part1 Seg34.relationLc901Part2 Seg34.relationLc901Part3 Seg34.relationLc901Part4 Seg34.relationLc901Part5 at r5239
  unfold Seg34.relationRow5240 Seg34.relationLc902 Seg34.relationLc902Part0 Seg34.relationLc902Part1 Seg34.relationLc902Part2 Seg34.relationLc902Part3 Seg34.relationLc902Part4 Seg34.relationLc902Part5 at r5240
  unfold Seg34.relationRow5241 at r5241
  unfold Seg34.relationRow5242 at r5242
  unfold Seg34.relationRow5243 at r5243
  unfold Seg34.relationRow5244 Seg34.relationLc903 Seg34.relationLc903Part0 Seg34.relationLc903Part1 Seg34.relationLc903Part2 Seg34.relationLc903Part3 Seg34.relationLc903Part4 Seg34.relationLc903Part5 at r5244
  unfold Seg34.relationRow5245 Seg34.relationLc904 Seg34.relationLc904Part0 Seg34.relationLc904Part1 Seg34.relationLc904Part2 Seg34.relationLc904Part3 Seg34.relationLc904Part4 Seg34.relationLc904Part5 at r5245
  unfold Seg34.relationRow5246 at r5246
  unfold Seg34.relationRow5247 at r5247
  unfold Seg34.relationRow5248 at r5248
  unfold Seg34.relationRow5249 at r5249
  unfold Seg34.relationRow5250 at r5250
  have hrung173 (bit : Bool) (hbit : rho 34165 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
        ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩
        ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
        ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩ := by
    have hsum : seg34AccX173 rho + seg34AccY173 rho = rho 36509 := by
      rw [seg34LadderFlatX173_eq, seg34LadderFlatY173_eq]
      unfold seg34LadderFlatX173 seg34LadderFlatY173
      linear_combination r5237
    have ha0 : (rho 36507 + rho 36508) * (seg34AccX173 rho + seg34AccY173 rho) = rho 36510 := by
      rw [hsum]
      linear_combination r5238
    have ha1 : rho 36508 * seg34AccX173 rho = rho 36511 := by
      rw [seg34LadderFlatX173_eq]
      unfold seg34LadderFlatX173
      linear_combination r5239
    have ha2 : rho 36507 * seg34AccY173 rho = rho 36512 := by
      rw [seg34LadderFlatY173_eq]
      unfold seg34LadderFlatY173
      linear_combination r5240
    have ha3 : 3021 * rho 36511 * rho 36512 = rho 36513 := by
      linear_combination r5241
    have ha4 : rho 36514 * (1 + rho 36513) = rho 36511 + rho 36512 := by
      linear_combination r5242
    have ha5 : rho 36515 * (1 - rho 36513) = rho 36510 - rho 36511 - rho 36512 := by
      linear_combination r5243
    have haddx :
        rho 36514 * (1 + 3021 * (rho 36508 * seg34AccX173 rho) * (rho 36507 * seg34AccY173 rho)) =
          rho 36508 * seg34AccX173 rho + rho 36507 * seg34AccY173 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36515 * (1 - 3021 * (rho 36508 * seg34AccX173 rho) * (rho 36507 * seg34AccY173 rho)) =
          (-1) * (rho 36508 * seg34AccX173 rho) - rho 36507 * seg34AccY173 rho +
            (seg34AccY173 rho - seg34AccX173 rho * (-1)) * (rho 36507 + rho 36508) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36515 * (1 - rho 36513) = rho 36510 - rho 36511 - rho 36512 := ha5
        _ = (-1) * rho 36511 - rho 36512 + (seg34AccY173 rho - seg34AccX173 rho * (-1)) * (rho 36507 + rho 36508) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX174 rho = seg34AccX173 rho - Bool.toZMod bit * (seg34AccX173 rho - rho 36514) := by
      have hd : rho 36516 = Bool.toZMod bit * (rho 36514 - seg34AccX173 rho) := by
        rw [← hbit, seg34LadderFlatX173_eq]
        unfold seg34LadderFlatX173
        linear_combination -r5244
      unfold seg34AccX174
      linear_combination hd
    have hsely : seg34AccY174 rho = seg34AccY173 rho - Bool.toZMod bit * (seg34AccY173 rho - rho 36515) := by
      have hd : rho 36517 = Bool.toZMod bit * (rho 36515 - seg34AccY173 rho) := by
        rw [← hbit, seg34LadderFlatY173_eq]
        unfold seg34LadderFlatY173
        linear_combination -r5245
      unfold seg34AccY174
      linear_combination hd
    have hd0 : rho 36507 * rho 36508 = rho 36518 := by linear_combination r5246
    have hd1 : rho 36507 * rho 36507 = rho 36519 := by linear_combination r5247
    have hd2 : rho 36508 * rho 36508 = rho 36520 := by linear_combination r5248
    have hd3 : rho 36521 * (rho 36508 * rho 36508 + rho 36507 * rho 36507 * (-1)) = 2 * (rho 36507 * rho 36508) := by
      rw [hd0, hd1, hd2]
      linear_combination r5249
    have hd4 : rho 36522 * (2 - (rho 36508 * rho 36508 + rho 36507 * rho 36507 * (-1))) = rho 36508 * rho 36508 - rho 36507 * rho 36507 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
      ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩
      ⟨(rho 36514 : Seg34.F), (rho 36515 : Seg34.F)⟩
      ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
      ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung173

theorem seg34_rung174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34166 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
        ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩
        ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
        ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5251 Seg34.relationLc905 Seg34.relationLc905Part0 Seg34.relationLc905Part1 Seg34.relationLc905Part2 Seg34.relationLc905Part3 Seg34.relationLc905Part4 Seg34.relationLc905Part5 Seg34.relationLc905Part6 Seg34.relationLc905Part7 Seg34.relationLc905Part8 Seg34.relationLc905Part9 Seg34.relationLc905Part10 at r5251
  unfold Seg34.relationRow5252 at r5252
  unfold Seg34.relationRow5253 Seg34.relationLc906 Seg34.relationLc906Part0 Seg34.relationLc906Part1 Seg34.relationLc906Part2 Seg34.relationLc906Part3 Seg34.relationLc906Part4 Seg34.relationLc906Part5 at r5253
  unfold Seg34.relationRow5254 Seg34.relationLc907 Seg34.relationLc907Part0 Seg34.relationLc907Part1 Seg34.relationLc907Part2 Seg34.relationLc907Part3 Seg34.relationLc907Part4 Seg34.relationLc907Part5 at r5254
  unfold Seg34.relationRow5255 at r5255
  unfold Seg34.relationRow5256 at r5256
  unfold Seg34.relationRow5257 at r5257
  unfold Seg34.relationRow5258 Seg34.relationLc908 Seg34.relationLc908Part0 Seg34.relationLc908Part1 Seg34.relationLc908Part2 Seg34.relationLc908Part3 Seg34.relationLc908Part4 Seg34.relationLc908Part5 at r5258
  unfold Seg34.relationRow5259 Seg34.relationLc909 Seg34.relationLc909Part0 Seg34.relationLc909Part1 Seg34.relationLc909Part2 Seg34.relationLc909Part3 Seg34.relationLc909Part4 Seg34.relationLc909Part5 at r5259
  unfold Seg34.relationRow5260 at r5260
  unfold Seg34.relationRow5261 at r5261
  unfold Seg34.relationRow5262 at r5262
  unfold Seg34.relationRow5263 at r5263
  unfold Seg34.relationRow5264 at r5264
  have hrung174 (bit : Bool) (hbit : rho 34166 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
        ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩
        ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
        ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩ := by
    have hsum : seg34AccX174 rho + seg34AccY174 rho = rho 36523 := by
      rw [seg34LadderFlatX174_eq, seg34LadderFlatY174_eq]
      unfold seg34LadderFlatX174 seg34LadderFlatY174
      linear_combination r5251
    have ha0 : (rho 36521 + rho 36522) * (seg34AccX174 rho + seg34AccY174 rho) = rho 36524 := by
      rw [hsum]
      linear_combination r5252
    have ha1 : rho 36522 * seg34AccX174 rho = rho 36525 := by
      rw [seg34LadderFlatX174_eq]
      unfold seg34LadderFlatX174
      linear_combination r5253
    have ha2 : rho 36521 * seg34AccY174 rho = rho 36526 := by
      rw [seg34LadderFlatY174_eq]
      unfold seg34LadderFlatY174
      linear_combination r5254
    have ha3 : 3021 * rho 36525 * rho 36526 = rho 36527 := by
      linear_combination r5255
    have ha4 : rho 36528 * (1 + rho 36527) = rho 36525 + rho 36526 := by
      linear_combination r5256
    have ha5 : rho 36529 * (1 - rho 36527) = rho 36524 - rho 36525 - rho 36526 := by
      linear_combination r5257
    have haddx :
        rho 36528 * (1 + 3021 * (rho 36522 * seg34AccX174 rho) * (rho 36521 * seg34AccY174 rho)) =
          rho 36522 * seg34AccX174 rho + rho 36521 * seg34AccY174 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36529 * (1 - 3021 * (rho 36522 * seg34AccX174 rho) * (rho 36521 * seg34AccY174 rho)) =
          (-1) * (rho 36522 * seg34AccX174 rho) - rho 36521 * seg34AccY174 rho +
            (seg34AccY174 rho - seg34AccX174 rho * (-1)) * (rho 36521 + rho 36522) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36529 * (1 - rho 36527) = rho 36524 - rho 36525 - rho 36526 := ha5
        _ = (-1) * rho 36525 - rho 36526 + (seg34AccY174 rho - seg34AccX174 rho * (-1)) * (rho 36521 + rho 36522) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX175 rho = seg34AccX174 rho - Bool.toZMod bit * (seg34AccX174 rho - rho 36528) := by
      have hd : rho 36530 = Bool.toZMod bit * (rho 36528 - seg34AccX174 rho) := by
        rw [← hbit, seg34LadderFlatX174_eq]
        unfold seg34LadderFlatX174
        linear_combination -r5258
      unfold seg34AccX175
      linear_combination hd
    have hsely : seg34AccY175 rho = seg34AccY174 rho - Bool.toZMod bit * (seg34AccY174 rho - rho 36529) := by
      have hd : rho 36531 = Bool.toZMod bit * (rho 36529 - seg34AccY174 rho) := by
        rw [← hbit, seg34LadderFlatY174_eq]
        unfold seg34LadderFlatY174
        linear_combination -r5259
      unfold seg34AccY175
      linear_combination hd
    have hd0 : rho 36521 * rho 36522 = rho 36532 := by linear_combination r5260
    have hd1 : rho 36521 * rho 36521 = rho 36533 := by linear_combination r5261
    have hd2 : rho 36522 * rho 36522 = rho 36534 := by linear_combination r5262
    have hd3 : rho 36535 * (rho 36522 * rho 36522 + rho 36521 * rho 36521 * (-1)) = 2 * (rho 36521 * rho 36522) := by
      rw [hd0, hd1, hd2]
      linear_combination r5263
    have hd4 : rho 36536 * (2 - (rho 36522 * rho 36522 + rho 36521 * rho 36521 * (-1))) = rho 36522 * rho 36522 - rho 36521 * rho 36521 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
      ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩
      ⟨(rho 36528 : Seg34.F), (rho 36529 : Seg34.F)⟩
      ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
      ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung174

theorem seg34_rung175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34167 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
        ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩
        ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
        ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, _⟩
  unfold Seg34.relationRow5265 Seg34.relationLc910 Seg34.relationLc910Part0 Seg34.relationLc910Part1 Seg34.relationLc910Part2 Seg34.relationLc910Part3 Seg34.relationLc910Part4 Seg34.relationLc910Part5 Seg34.relationLc910Part6 Seg34.relationLc910Part7 Seg34.relationLc910Part8 Seg34.relationLc910Part9 Seg34.relationLc910Part10 at r5265
  unfold Seg34.relationRow5266 at r5266
  unfold Seg34.relationRow5267 Seg34.relationLc911 Seg34.relationLc911Part0 Seg34.relationLc911Part1 Seg34.relationLc911Part2 Seg34.relationLc911Part3 Seg34.relationLc911Part4 Seg34.relationLc911Part5 at r5267
  unfold Seg34.relationRow5268 Seg34.relationLc912 Seg34.relationLc912Part0 Seg34.relationLc912Part1 Seg34.relationLc912Part2 Seg34.relationLc912Part3 Seg34.relationLc912Part4 Seg34.relationLc912Part5 at r5268
  unfold Seg34.relationRow5269 at r5269
  unfold Seg34.relationRow5270 at r5270
  unfold Seg34.relationRow5271 at r5271
  unfold Seg34.relationRow5272 Seg34.relationLc913 Seg34.relationLc913Part0 Seg34.relationLc913Part1 Seg34.relationLc913Part2 Seg34.relationLc913Part3 Seg34.relationLc913Part4 Seg34.relationLc913Part5 at r5272
  unfold Seg34.relationRow5273 Seg34.relationLc914 Seg34.relationLc914Part0 Seg34.relationLc914Part1 Seg34.relationLc914Part2 Seg34.relationLc914Part3 Seg34.relationLc914Part4 Seg34.relationLc914Part5 at r5273
  unfold Seg34.relationRow5274 at r5274
  unfold Seg34.relationRow5275 at r5275
  unfold Seg34.relationRow5276 at r5276
  unfold Seg34.relationRow5277 at r5277
  unfold Seg34.relationRow5278 at r5278
  have hrung175 (bit : Bool) (hbit : rho 34167 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
        ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩
        ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
        ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩ := by
    have hsum : seg34AccX175 rho + seg34AccY175 rho = rho 36537 := by
      rw [seg34LadderFlatX175_eq, seg34LadderFlatY175_eq]
      unfold seg34LadderFlatX175 seg34LadderFlatY175
      linear_combination r5265
    have ha0 : (rho 36535 + rho 36536) * (seg34AccX175 rho + seg34AccY175 rho) = rho 36538 := by
      rw [hsum]
      linear_combination r5266
    have ha1 : rho 36536 * seg34AccX175 rho = rho 36539 := by
      rw [seg34LadderFlatX175_eq]
      unfold seg34LadderFlatX175
      linear_combination r5267
    have ha2 : rho 36535 * seg34AccY175 rho = rho 36540 := by
      rw [seg34LadderFlatY175_eq]
      unfold seg34LadderFlatY175
      linear_combination r5268
    have ha3 : 3021 * rho 36539 * rho 36540 = rho 36541 := by
      linear_combination r5269
    have ha4 : rho 36542 * (1 + rho 36541) = rho 36539 + rho 36540 := by
      linear_combination r5270
    have ha5 : rho 36543 * (1 - rho 36541) = rho 36538 - rho 36539 - rho 36540 := by
      linear_combination r5271
    have haddx :
        rho 36542 * (1 + 3021 * (rho 36536 * seg34AccX175 rho) * (rho 36535 * seg34AccY175 rho)) =
          rho 36536 * seg34AccX175 rho + rho 36535 * seg34AccY175 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36543 * (1 - 3021 * (rho 36536 * seg34AccX175 rho) * (rho 36535 * seg34AccY175 rho)) =
          (-1) * (rho 36536 * seg34AccX175 rho) - rho 36535 * seg34AccY175 rho +
            (seg34AccY175 rho - seg34AccX175 rho * (-1)) * (rho 36535 + rho 36536) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36543 * (1 - rho 36541) = rho 36538 - rho 36539 - rho 36540 := ha5
        _ = (-1) * rho 36539 - rho 36540 + (seg34AccY175 rho - seg34AccX175 rho * (-1)) * (rho 36535 + rho 36536) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX176 rho = seg34AccX175 rho - Bool.toZMod bit * (seg34AccX175 rho - rho 36542) := by
      have hd : rho 36544 = Bool.toZMod bit * (rho 36542 - seg34AccX175 rho) := by
        rw [← hbit, seg34LadderFlatX175_eq]
        unfold seg34LadderFlatX175
        linear_combination -r5272
      unfold seg34AccX176
      linear_combination hd
    have hsely : seg34AccY176 rho = seg34AccY175 rho - Bool.toZMod bit * (seg34AccY175 rho - rho 36543) := by
      have hd : rho 36545 = Bool.toZMod bit * (rho 36543 - seg34AccY175 rho) := by
        rw [← hbit, seg34LadderFlatY175_eq]
        unfold seg34LadderFlatY175
        linear_combination -r5273
      unfold seg34AccY176
      linear_combination hd
    have hd0 : rho 36535 * rho 36536 = rho 36546 := by linear_combination r5274
    have hd1 : rho 36535 * rho 36535 = rho 36547 := by linear_combination r5275
    have hd2 : rho 36536 * rho 36536 = rho 36548 := by linear_combination r5276
    have hd3 : rho 36549 * (rho 36536 * rho 36536 + rho 36535 * rho 36535 * (-1)) = 2 * (rho 36535 * rho 36536) := by
      rw [hd0, hd1, hd2]
      linear_combination r5277
    have hd4 : rho 36550 * (2 - (rho 36536 * rho 36536 + rho 36535 * rho 36535 * (-1))) = rho 36536 * rho 36536 - rho 36535 * rho 36535 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5278
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
      ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩
      ⟨(rho 36542 : Seg34.F), (rho 36543 : Seg34.F)⟩
      ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
      ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung175

theorem seg34_rung176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34168 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
        ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩
        ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
        ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5279⟩
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5279 Seg34.relationLc915 Seg34.relationLc915Part0 Seg34.relationLc915Part1 Seg34.relationLc915Part2 Seg34.relationLc915Part3 Seg34.relationLc915Part4 Seg34.relationLc915Part5 Seg34.relationLc915Part6 Seg34.relationLc915Part7 Seg34.relationLc915Part8 Seg34.relationLc915Part9 Seg34.relationLc915Part10 Seg34.relationLc915Part11 at r5279
  unfold Seg34.relationRow5280 at r5280
  unfold Seg34.relationRow5281 Seg34.relationLc916 Seg34.relationLc916Part0 Seg34.relationLc916Part1 Seg34.relationLc916Part2 Seg34.relationLc916Part3 Seg34.relationLc916Part4 Seg34.relationLc916Part5 at r5281
  unfold Seg34.relationRow5282 Seg34.relationLc917 Seg34.relationLc917Part0 Seg34.relationLc917Part1 Seg34.relationLc917Part2 Seg34.relationLc917Part3 Seg34.relationLc917Part4 Seg34.relationLc917Part5 at r5282
  unfold Seg34.relationRow5283 at r5283
  unfold Seg34.relationRow5284 at r5284
  unfold Seg34.relationRow5285 at r5285
  unfold Seg34.relationRow5286 Seg34.relationLc918 Seg34.relationLc918Part0 Seg34.relationLc918Part1 Seg34.relationLc918Part2 Seg34.relationLc918Part3 Seg34.relationLc918Part4 Seg34.relationLc918Part5 at r5286
  unfold Seg34.relationRow5287 Seg34.relationLc919 Seg34.relationLc919Part0 Seg34.relationLc919Part1 Seg34.relationLc919Part2 Seg34.relationLc919Part3 Seg34.relationLc919Part4 Seg34.relationLc919Part5 at r5287
  unfold Seg34.relationRow5288 at r5288
  unfold Seg34.relationRow5289 at r5289
  unfold Seg34.relationRow5290 at r5290
  unfold Seg34.relationRow5291 at r5291
  unfold Seg34.relationRow5292 at r5292
  have hrung176 (bit : Bool) (hbit : rho 34168 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
        ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩
        ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
        ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩ := by
    have hsum : seg34AccX176 rho + seg34AccY176 rho = rho 36551 := by
      rw [seg34LadderFlatX176_eq, seg34LadderFlatY176_eq]
      unfold seg34LadderFlatX176 seg34LadderFlatY176
      linear_combination r5279
    have ha0 : (rho 36549 + rho 36550) * (seg34AccX176 rho + seg34AccY176 rho) = rho 36552 := by
      rw [hsum]
      linear_combination r5280
    have ha1 : rho 36550 * seg34AccX176 rho = rho 36553 := by
      rw [seg34LadderFlatX176_eq]
      unfold seg34LadderFlatX176
      linear_combination r5281
    have ha2 : rho 36549 * seg34AccY176 rho = rho 36554 := by
      rw [seg34LadderFlatY176_eq]
      unfold seg34LadderFlatY176
      linear_combination r5282
    have ha3 : 3021 * rho 36553 * rho 36554 = rho 36555 := by
      linear_combination r5283
    have ha4 : rho 36556 * (1 + rho 36555) = rho 36553 + rho 36554 := by
      linear_combination r5284
    have ha5 : rho 36557 * (1 - rho 36555) = rho 36552 - rho 36553 - rho 36554 := by
      linear_combination r5285
    have haddx :
        rho 36556 * (1 + 3021 * (rho 36550 * seg34AccX176 rho) * (rho 36549 * seg34AccY176 rho)) =
          rho 36550 * seg34AccX176 rho + rho 36549 * seg34AccY176 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36557 * (1 - 3021 * (rho 36550 * seg34AccX176 rho) * (rho 36549 * seg34AccY176 rho)) =
          (-1) * (rho 36550 * seg34AccX176 rho) - rho 36549 * seg34AccY176 rho +
            (seg34AccY176 rho - seg34AccX176 rho * (-1)) * (rho 36549 + rho 36550) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36557 * (1 - rho 36555) = rho 36552 - rho 36553 - rho 36554 := ha5
        _ = (-1) * rho 36553 - rho 36554 + (seg34AccY176 rho - seg34AccX176 rho * (-1)) * (rho 36549 + rho 36550) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX177 rho = seg34AccX176 rho - Bool.toZMod bit * (seg34AccX176 rho - rho 36556) := by
      have hd : rho 36558 = Bool.toZMod bit * (rho 36556 - seg34AccX176 rho) := by
        rw [← hbit, seg34LadderFlatX176_eq]
        unfold seg34LadderFlatX176
        linear_combination -r5286
      unfold seg34AccX177
      linear_combination hd
    have hsely : seg34AccY177 rho = seg34AccY176 rho - Bool.toZMod bit * (seg34AccY176 rho - rho 36557) := by
      have hd : rho 36559 = Bool.toZMod bit * (rho 36557 - seg34AccY176 rho) := by
        rw [← hbit, seg34LadderFlatY176_eq]
        unfold seg34LadderFlatY176
        linear_combination -r5287
      unfold seg34AccY177
      linear_combination hd
    have hd0 : rho 36549 * rho 36550 = rho 36560 := by linear_combination r5288
    have hd1 : rho 36549 * rho 36549 = rho 36561 := by linear_combination r5289
    have hd2 : rho 36550 * rho 36550 = rho 36562 := by linear_combination r5290
    have hd3 : rho 36563 * (rho 36550 * rho 36550 + rho 36549 * rho 36549 * (-1)) = 2 * (rho 36549 * rho 36550) := by
      rw [hd0, hd1, hd2]
      linear_combination r5291
    have hd4 : rho 36564 * (2 - (rho 36550 * rho 36550 + rho 36549 * rho 36549 * (-1))) = rho 36550 * rho 36550 - rho 36549 * rho 36549 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5292
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
      ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩
      ⟨(rho 36556 : Seg34.F), (rho 36557 : Seg34.F)⟩
      ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
      ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung176

theorem seg34_rung177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34169 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
        ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩
        ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
        ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5293 Seg34.relationLc920 Seg34.relationLc920Part0 Seg34.relationLc920Part1 Seg34.relationLc920Part2 Seg34.relationLc920Part3 Seg34.relationLc920Part4 Seg34.relationLc920Part5 Seg34.relationLc920Part6 Seg34.relationLc920Part7 Seg34.relationLc920Part8 Seg34.relationLc920Part9 Seg34.relationLc920Part10 Seg34.relationLc920Part11 at r5293
  unfold Seg34.relationRow5294 at r5294
  unfold Seg34.relationRow5295 Seg34.relationLc921 Seg34.relationLc921Part0 Seg34.relationLc921Part1 Seg34.relationLc921Part2 Seg34.relationLc921Part3 Seg34.relationLc921Part4 Seg34.relationLc921Part5 at r5295
  unfold Seg34.relationRow5296 Seg34.relationLc922 Seg34.relationLc922Part0 Seg34.relationLc922Part1 Seg34.relationLc922Part2 Seg34.relationLc922Part3 Seg34.relationLc922Part4 Seg34.relationLc922Part5 at r5296
  unfold Seg34.relationRow5297 at r5297
  unfold Seg34.relationRow5298 at r5298
  unfold Seg34.relationRow5299 at r5299
  unfold Seg34.relationRow5300 Seg34.relationLc923 Seg34.relationLc923Part0 Seg34.relationLc923Part1 Seg34.relationLc923Part2 Seg34.relationLc923Part3 Seg34.relationLc923Part4 Seg34.relationLc923Part5 at r5300
  unfold Seg34.relationRow5301 Seg34.relationLc924 Seg34.relationLc924Part0 Seg34.relationLc924Part1 Seg34.relationLc924Part2 Seg34.relationLc924Part3 Seg34.relationLc924Part4 Seg34.relationLc924Part5 at r5301
  unfold Seg34.relationRow5302 at r5302
  unfold Seg34.relationRow5303 at r5303
  unfold Seg34.relationRow5304 at r5304
  unfold Seg34.relationRow5305 at r5305
  unfold Seg34.relationRow5306 at r5306
  have hrung177 (bit : Bool) (hbit : rho 34169 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
        ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩
        ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
        ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩ := by
    have hsum : seg34AccX177 rho + seg34AccY177 rho = rho 36565 := by
      rw [seg34LadderFlatX177_eq, seg34LadderFlatY177_eq]
      unfold seg34LadderFlatX177 seg34LadderFlatY177
      linear_combination r5293
    have ha0 : (rho 36563 + rho 36564) * (seg34AccX177 rho + seg34AccY177 rho) = rho 36566 := by
      rw [hsum]
      linear_combination r5294
    have ha1 : rho 36564 * seg34AccX177 rho = rho 36567 := by
      rw [seg34LadderFlatX177_eq]
      unfold seg34LadderFlatX177
      linear_combination r5295
    have ha2 : rho 36563 * seg34AccY177 rho = rho 36568 := by
      rw [seg34LadderFlatY177_eq]
      unfold seg34LadderFlatY177
      linear_combination r5296
    have ha3 : 3021 * rho 36567 * rho 36568 = rho 36569 := by
      linear_combination r5297
    have ha4 : rho 36570 * (1 + rho 36569) = rho 36567 + rho 36568 := by
      linear_combination r5298
    have ha5 : rho 36571 * (1 - rho 36569) = rho 36566 - rho 36567 - rho 36568 := by
      linear_combination r5299
    have haddx :
        rho 36570 * (1 + 3021 * (rho 36564 * seg34AccX177 rho) * (rho 36563 * seg34AccY177 rho)) =
          rho 36564 * seg34AccX177 rho + rho 36563 * seg34AccY177 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36571 * (1 - 3021 * (rho 36564 * seg34AccX177 rho) * (rho 36563 * seg34AccY177 rho)) =
          (-1) * (rho 36564 * seg34AccX177 rho) - rho 36563 * seg34AccY177 rho +
            (seg34AccY177 rho - seg34AccX177 rho * (-1)) * (rho 36563 + rho 36564) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36571 * (1 - rho 36569) = rho 36566 - rho 36567 - rho 36568 := ha5
        _ = (-1) * rho 36567 - rho 36568 + (seg34AccY177 rho - seg34AccX177 rho * (-1)) * (rho 36563 + rho 36564) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX178 rho = seg34AccX177 rho - Bool.toZMod bit * (seg34AccX177 rho - rho 36570) := by
      have hd : rho 36572 = Bool.toZMod bit * (rho 36570 - seg34AccX177 rho) := by
        rw [← hbit, seg34LadderFlatX177_eq]
        unfold seg34LadderFlatX177
        linear_combination -r5300
      unfold seg34AccX178
      linear_combination hd
    have hsely : seg34AccY178 rho = seg34AccY177 rho - Bool.toZMod bit * (seg34AccY177 rho - rho 36571) := by
      have hd : rho 36573 = Bool.toZMod bit * (rho 36571 - seg34AccY177 rho) := by
        rw [← hbit, seg34LadderFlatY177_eq]
        unfold seg34LadderFlatY177
        linear_combination -r5301
      unfold seg34AccY178
      linear_combination hd
    have hd0 : rho 36563 * rho 36564 = rho 36574 := by linear_combination r5302
    have hd1 : rho 36563 * rho 36563 = rho 36575 := by linear_combination r5303
    have hd2 : rho 36564 * rho 36564 = rho 36576 := by linear_combination r5304
    have hd3 : rho 36577 * (rho 36564 * rho 36564 + rho 36563 * rho 36563 * (-1)) = 2 * (rho 36563 * rho 36564) := by
      rw [hd0, hd1, hd2]
      linear_combination r5305
    have hd4 : rho 36578 * (2 - (rho 36564 * rho 36564 + rho 36563 * rho 36563 * (-1))) = rho 36564 * rho 36564 - rho 36563 * rho 36563 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5306
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX177 rho : Seg34.F), (seg34AccY177 rho : Seg34.F)⟩
      ⟨(rho 36563 : Seg34.F), (rho 36564 : Seg34.F)⟩
      ⟨(rho 36570 : Seg34.F), (rho 36571 : Seg34.F)⟩
      ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
      ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung177

theorem seg34_rung178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34170 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
        ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩
        ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
        ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5307 Seg34.relationLc925 Seg34.relationLc925Part0 Seg34.relationLc925Part1 Seg34.relationLc925Part2 Seg34.relationLc925Part3 Seg34.relationLc925Part4 Seg34.relationLc925Part5 Seg34.relationLc925Part6 Seg34.relationLc925Part7 Seg34.relationLc925Part8 Seg34.relationLc925Part9 Seg34.relationLc925Part10 Seg34.relationLc925Part11 at r5307
  unfold Seg34.relationRow5308 at r5308
  unfold Seg34.relationRow5309 Seg34.relationLc926 Seg34.relationLc926Part0 Seg34.relationLc926Part1 Seg34.relationLc926Part2 Seg34.relationLc926Part3 Seg34.relationLc926Part4 Seg34.relationLc926Part5 at r5309
  unfold Seg34.relationRow5310 Seg34.relationLc927 Seg34.relationLc927Part0 Seg34.relationLc927Part1 Seg34.relationLc927Part2 Seg34.relationLc927Part3 Seg34.relationLc927Part4 Seg34.relationLc927Part5 at r5310
  unfold Seg34.relationRow5311 at r5311
  unfold Seg34.relationRow5312 at r5312
  unfold Seg34.relationRow5313 at r5313
  unfold Seg34.relationRow5314 Seg34.relationLc928 Seg34.relationLc928Part0 Seg34.relationLc928Part1 Seg34.relationLc928Part2 Seg34.relationLc928Part3 Seg34.relationLc928Part4 Seg34.relationLc928Part5 at r5314
  unfold Seg34.relationRow5315 Seg34.relationLc929 Seg34.relationLc929Part0 Seg34.relationLc929Part1 Seg34.relationLc929Part2 Seg34.relationLc929Part3 Seg34.relationLc929Part4 Seg34.relationLc929Part5 at r5315
  unfold Seg34.relationRow5316 at r5316
  unfold Seg34.relationRow5317 at r5317
  unfold Seg34.relationRow5318 at r5318
  unfold Seg34.relationRow5319 at r5319
  unfold Seg34.relationRow5320 at r5320
  have hrung178 (bit : Bool) (hbit : rho 34170 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
        ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩
        ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
        ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩ := by
    have hsum : seg34AccX178 rho + seg34AccY178 rho = rho 36579 := by
      rw [seg34LadderFlatX178_eq, seg34LadderFlatY178_eq]
      unfold seg34LadderFlatX178 seg34LadderFlatY178
      linear_combination r5307
    have ha0 : (rho 36577 + rho 36578) * (seg34AccX178 rho + seg34AccY178 rho) = rho 36580 := by
      rw [hsum]
      linear_combination r5308
    have ha1 : rho 36578 * seg34AccX178 rho = rho 36581 := by
      rw [seg34LadderFlatX178_eq]
      unfold seg34LadderFlatX178
      linear_combination r5309
    have ha2 : rho 36577 * seg34AccY178 rho = rho 36582 := by
      rw [seg34LadderFlatY178_eq]
      unfold seg34LadderFlatY178
      linear_combination r5310
    have ha3 : 3021 * rho 36581 * rho 36582 = rho 36583 := by
      linear_combination r5311
    have ha4 : rho 36584 * (1 + rho 36583) = rho 36581 + rho 36582 := by
      linear_combination r5312
    have ha5 : rho 36585 * (1 - rho 36583) = rho 36580 - rho 36581 - rho 36582 := by
      linear_combination r5313
    have haddx :
        rho 36584 * (1 + 3021 * (rho 36578 * seg34AccX178 rho) * (rho 36577 * seg34AccY178 rho)) =
          rho 36578 * seg34AccX178 rho + rho 36577 * seg34AccY178 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36585 * (1 - 3021 * (rho 36578 * seg34AccX178 rho) * (rho 36577 * seg34AccY178 rho)) =
          (-1) * (rho 36578 * seg34AccX178 rho) - rho 36577 * seg34AccY178 rho +
            (seg34AccY178 rho - seg34AccX178 rho * (-1)) * (rho 36577 + rho 36578) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36585 * (1 - rho 36583) = rho 36580 - rho 36581 - rho 36582 := ha5
        _ = (-1) * rho 36581 - rho 36582 + (seg34AccY178 rho - seg34AccX178 rho * (-1)) * (rho 36577 + rho 36578) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX179 rho = seg34AccX178 rho - Bool.toZMod bit * (seg34AccX178 rho - rho 36584) := by
      have hd : rho 36586 = Bool.toZMod bit * (rho 36584 - seg34AccX178 rho) := by
        rw [← hbit, seg34LadderFlatX178_eq]
        unfold seg34LadderFlatX178
        linear_combination -r5314
      unfold seg34AccX179
      linear_combination hd
    have hsely : seg34AccY179 rho = seg34AccY178 rho - Bool.toZMod bit * (seg34AccY178 rho - rho 36585) := by
      have hd : rho 36587 = Bool.toZMod bit * (rho 36585 - seg34AccY178 rho) := by
        rw [← hbit, seg34LadderFlatY178_eq]
        unfold seg34LadderFlatY178
        linear_combination -r5315
      unfold seg34AccY179
      linear_combination hd
    have hd0 : rho 36577 * rho 36578 = rho 36588 := by linear_combination r5316
    have hd1 : rho 36577 * rho 36577 = rho 36589 := by linear_combination r5317
    have hd2 : rho 36578 * rho 36578 = rho 36590 := by linear_combination r5318
    have hd3 : rho 36591 * (rho 36578 * rho 36578 + rho 36577 * rho 36577 * (-1)) = 2 * (rho 36577 * rho 36578) := by
      rw [hd0, hd1, hd2]
      linear_combination r5319
    have hd4 : rho 36592 * (2 - (rho 36578 * rho 36578 + rho 36577 * rho 36577 * (-1))) = rho 36578 * rho 36578 - rho 36577 * rho 36577 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5320
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX178 rho : Seg34.F), (seg34AccY178 rho : Seg34.F)⟩
      ⟨(rho 36577 : Seg34.F), (rho 36578 : Seg34.F)⟩
      ⟨(rho 36584 : Seg34.F), (rho 36585 : Seg34.F)⟩
      ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
      ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung178

theorem seg34_rung179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34171 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
        ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩
        ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
        ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5321 Seg34.relationLc930 Seg34.relationLc930Part0 Seg34.relationLc930Part1 Seg34.relationLc930Part2 Seg34.relationLc930Part3 Seg34.relationLc930Part4 Seg34.relationLc930Part5 Seg34.relationLc930Part6 Seg34.relationLc930Part7 Seg34.relationLc930Part8 Seg34.relationLc930Part9 Seg34.relationLc930Part10 Seg34.relationLc930Part11 at r5321
  unfold Seg34.relationRow5322 at r5322
  unfold Seg34.relationRow5323 Seg34.relationLc931 Seg34.relationLc931Part0 Seg34.relationLc931Part1 Seg34.relationLc931Part2 Seg34.relationLc931Part3 Seg34.relationLc931Part4 Seg34.relationLc931Part5 at r5323
  unfold Seg34.relationRow5324 Seg34.relationLc932 Seg34.relationLc932Part0 Seg34.relationLc932Part1 Seg34.relationLc932Part2 Seg34.relationLc932Part3 Seg34.relationLc932Part4 Seg34.relationLc932Part5 at r5324
  unfold Seg34.relationRow5325 at r5325
  unfold Seg34.relationRow5326 at r5326
  unfold Seg34.relationRow5327 at r5327
  unfold Seg34.relationRow5328 Seg34.relationLc933 Seg34.relationLc933Part0 Seg34.relationLc933Part1 Seg34.relationLc933Part2 Seg34.relationLc933Part3 Seg34.relationLc933Part4 Seg34.relationLc933Part5 at r5328
  unfold Seg34.relationRow5329 Seg34.relationLc934 Seg34.relationLc934Part0 Seg34.relationLc934Part1 Seg34.relationLc934Part2 Seg34.relationLc934Part3 Seg34.relationLc934Part4 Seg34.relationLc934Part5 at r5329
  unfold Seg34.relationRow5330 at r5330
  unfold Seg34.relationRow5331 at r5331
  unfold Seg34.relationRow5332 at r5332
  unfold Seg34.relationRow5333 at r5333
  unfold Seg34.relationRow5334 at r5334
  have hrung179 (bit : Bool) (hbit : rho 34171 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
        ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩
        ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
        ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩ := by
    have hsum : seg34AccX179 rho + seg34AccY179 rho = rho 36593 := by
      rw [seg34LadderFlatX179_eq, seg34LadderFlatY179_eq]
      unfold seg34LadderFlatX179 seg34LadderFlatY179
      linear_combination r5321
    have ha0 : (rho 36591 + rho 36592) * (seg34AccX179 rho + seg34AccY179 rho) = rho 36594 := by
      rw [hsum]
      linear_combination r5322
    have ha1 : rho 36592 * seg34AccX179 rho = rho 36595 := by
      rw [seg34LadderFlatX179_eq]
      unfold seg34LadderFlatX179
      linear_combination r5323
    have ha2 : rho 36591 * seg34AccY179 rho = rho 36596 := by
      rw [seg34LadderFlatY179_eq]
      unfold seg34LadderFlatY179
      linear_combination r5324
    have ha3 : 3021 * rho 36595 * rho 36596 = rho 36597 := by
      linear_combination r5325
    have ha4 : rho 36598 * (1 + rho 36597) = rho 36595 + rho 36596 := by
      linear_combination r5326
    have ha5 : rho 36599 * (1 - rho 36597) = rho 36594 - rho 36595 - rho 36596 := by
      linear_combination r5327
    have haddx :
        rho 36598 * (1 + 3021 * (rho 36592 * seg34AccX179 rho) * (rho 36591 * seg34AccY179 rho)) =
          rho 36592 * seg34AccX179 rho + rho 36591 * seg34AccY179 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36599 * (1 - 3021 * (rho 36592 * seg34AccX179 rho) * (rho 36591 * seg34AccY179 rho)) =
          (-1) * (rho 36592 * seg34AccX179 rho) - rho 36591 * seg34AccY179 rho +
            (seg34AccY179 rho - seg34AccX179 rho * (-1)) * (rho 36591 + rho 36592) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36599 * (1 - rho 36597) = rho 36594 - rho 36595 - rho 36596 := ha5
        _ = (-1) * rho 36595 - rho 36596 + (seg34AccY179 rho - seg34AccX179 rho * (-1)) * (rho 36591 + rho 36592) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX180 rho = seg34AccX179 rho - Bool.toZMod bit * (seg34AccX179 rho - rho 36598) := by
      have hd : rho 36600 = Bool.toZMod bit * (rho 36598 - seg34AccX179 rho) := by
        rw [← hbit, seg34LadderFlatX179_eq]
        unfold seg34LadderFlatX179
        linear_combination -r5328
      unfold seg34AccX180
      linear_combination hd
    have hsely : seg34AccY180 rho = seg34AccY179 rho - Bool.toZMod bit * (seg34AccY179 rho - rho 36599) := by
      have hd : rho 36601 = Bool.toZMod bit * (rho 36599 - seg34AccY179 rho) := by
        rw [← hbit, seg34LadderFlatY179_eq]
        unfold seg34LadderFlatY179
        linear_combination -r5329
      unfold seg34AccY180
      linear_combination hd
    have hd0 : rho 36591 * rho 36592 = rho 36602 := by linear_combination r5330
    have hd1 : rho 36591 * rho 36591 = rho 36603 := by linear_combination r5331
    have hd2 : rho 36592 * rho 36592 = rho 36604 := by linear_combination r5332
    have hd3 : rho 36605 * (rho 36592 * rho 36592 + rho 36591 * rho 36591 * (-1)) = 2 * (rho 36591 * rho 36592) := by
      rw [hd0, hd1, hd2]
      linear_combination r5333
    have hd4 : rho 36606 * (2 - (rho 36592 * rho 36592 + rho 36591 * rho 36591 * (-1))) = rho 36592 * rho 36592 - rho 36591 * rho 36591 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5334
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX179 rho : Seg34.F), (seg34AccY179 rho : Seg34.F)⟩
      ⟨(rho 36591 : Seg34.F), (rho 36592 : Seg34.F)⟩
      ⟨(rho 36598 : Seg34.F), (rho 36599 : Seg34.F)⟩
      ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
      ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung179

theorem seg34_rung180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34172 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
        ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩
        ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
        ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5335 Seg34.relationLc935 Seg34.relationLc935Part0 Seg34.relationLc935Part1 Seg34.relationLc935Part2 Seg34.relationLc935Part3 Seg34.relationLc935Part4 Seg34.relationLc935Part5 Seg34.relationLc935Part6 Seg34.relationLc935Part7 Seg34.relationLc935Part8 Seg34.relationLc935Part9 Seg34.relationLc935Part10 Seg34.relationLc935Part11 at r5335
  unfold Seg34.relationRow5336 at r5336
  unfold Seg34.relationRow5337 Seg34.relationLc936 Seg34.relationLc936Part0 Seg34.relationLc936Part1 Seg34.relationLc936Part2 Seg34.relationLc936Part3 Seg34.relationLc936Part4 Seg34.relationLc936Part5 at r5337
  unfold Seg34.relationRow5338 Seg34.relationLc937 Seg34.relationLc937Part0 Seg34.relationLc937Part1 Seg34.relationLc937Part2 Seg34.relationLc937Part3 Seg34.relationLc937Part4 Seg34.relationLc937Part5 at r5338
  unfold Seg34.relationRow5339 at r5339
  unfold Seg34.relationRow5340 at r5340
  unfold Seg34.relationRow5341 at r5341
  unfold Seg34.relationRow5342 Seg34.relationLc938 Seg34.relationLc938Part0 Seg34.relationLc938Part1 Seg34.relationLc938Part2 Seg34.relationLc938Part3 Seg34.relationLc938Part4 Seg34.relationLc938Part5 at r5342
  unfold Seg34.relationRow5343 Seg34.relationLc939 Seg34.relationLc939Part0 Seg34.relationLc939Part1 Seg34.relationLc939Part2 Seg34.relationLc939Part3 Seg34.relationLc939Part4 Seg34.relationLc939Part5 at r5343
  unfold Seg34.relationRow5344 at r5344
  unfold Seg34.relationRow5345 at r5345
  unfold Seg34.relationRow5346 at r5346
  unfold Seg34.relationRow5347 at r5347
  unfold Seg34.relationRow5348 at r5348
  have hrung180 (bit : Bool) (hbit : rho 34172 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
        ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩
        ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
        ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩ := by
    have hsum : seg34AccX180 rho + seg34AccY180 rho = rho 36607 := by
      rw [seg34LadderFlatX180_eq, seg34LadderFlatY180_eq]
      unfold seg34LadderFlatX180 seg34LadderFlatY180
      linear_combination r5335
    have ha0 : (rho 36605 + rho 36606) * (seg34AccX180 rho + seg34AccY180 rho) = rho 36608 := by
      rw [hsum]
      linear_combination r5336
    have ha1 : rho 36606 * seg34AccX180 rho = rho 36609 := by
      rw [seg34LadderFlatX180_eq]
      unfold seg34LadderFlatX180
      linear_combination r5337
    have ha2 : rho 36605 * seg34AccY180 rho = rho 36610 := by
      rw [seg34LadderFlatY180_eq]
      unfold seg34LadderFlatY180
      linear_combination r5338
    have ha3 : 3021 * rho 36609 * rho 36610 = rho 36611 := by
      linear_combination r5339
    have ha4 : rho 36612 * (1 + rho 36611) = rho 36609 + rho 36610 := by
      linear_combination r5340
    have ha5 : rho 36613 * (1 - rho 36611) = rho 36608 - rho 36609 - rho 36610 := by
      linear_combination r5341
    have haddx :
        rho 36612 * (1 + 3021 * (rho 36606 * seg34AccX180 rho) * (rho 36605 * seg34AccY180 rho)) =
          rho 36606 * seg34AccX180 rho + rho 36605 * seg34AccY180 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36613 * (1 - 3021 * (rho 36606 * seg34AccX180 rho) * (rho 36605 * seg34AccY180 rho)) =
          (-1) * (rho 36606 * seg34AccX180 rho) - rho 36605 * seg34AccY180 rho +
            (seg34AccY180 rho - seg34AccX180 rho * (-1)) * (rho 36605 + rho 36606) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36613 * (1 - rho 36611) = rho 36608 - rho 36609 - rho 36610 := ha5
        _ = (-1) * rho 36609 - rho 36610 + (seg34AccY180 rho - seg34AccX180 rho * (-1)) * (rho 36605 + rho 36606) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX181 rho = seg34AccX180 rho - Bool.toZMod bit * (seg34AccX180 rho - rho 36612) := by
      have hd : rho 36614 = Bool.toZMod bit * (rho 36612 - seg34AccX180 rho) := by
        rw [← hbit, seg34LadderFlatX180_eq]
        unfold seg34LadderFlatX180
        linear_combination -r5342
      unfold seg34AccX181
      linear_combination hd
    have hsely : seg34AccY181 rho = seg34AccY180 rho - Bool.toZMod bit * (seg34AccY180 rho - rho 36613) := by
      have hd : rho 36615 = Bool.toZMod bit * (rho 36613 - seg34AccY180 rho) := by
        rw [← hbit, seg34LadderFlatY180_eq]
        unfold seg34LadderFlatY180
        linear_combination -r5343
      unfold seg34AccY181
      linear_combination hd
    have hd0 : rho 36605 * rho 36606 = rho 36616 := by linear_combination r5344
    have hd1 : rho 36605 * rho 36605 = rho 36617 := by linear_combination r5345
    have hd2 : rho 36606 * rho 36606 = rho 36618 := by linear_combination r5346
    have hd3 : rho 36619 * (rho 36606 * rho 36606 + rho 36605 * rho 36605 * (-1)) = 2 * (rho 36605 * rho 36606) := by
      rw [hd0, hd1, hd2]
      linear_combination r5347
    have hd4 : rho 36620 * (2 - (rho 36606 * rho 36606 + rho 36605 * rho 36605 * (-1))) = rho 36606 * rho 36606 - rho 36605 * rho 36605 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5348
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX180 rho : Seg34.F), (seg34AccY180 rho : Seg34.F)⟩
      ⟨(rho 36605 : Seg34.F), (rho 36606 : Seg34.F)⟩
      ⟨(rho 36612 : Seg34.F), (rho 36613 : Seg34.F)⟩
      ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
      ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung180

theorem seg34_rung181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34173 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
        ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩
        ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
        ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5349 Seg34.relationLc940 Seg34.relationLc940Part0 Seg34.relationLc940Part1 Seg34.relationLc940Part2 Seg34.relationLc940Part3 Seg34.relationLc940Part4 Seg34.relationLc940Part5 Seg34.relationLc940Part6 Seg34.relationLc940Part7 Seg34.relationLc940Part8 Seg34.relationLc940Part9 Seg34.relationLc940Part10 Seg34.relationLc940Part11 at r5349
  unfold Seg34.relationRow5350 at r5350
  unfold Seg34.relationRow5351 Seg34.relationLc941 Seg34.relationLc941Part0 Seg34.relationLc941Part1 Seg34.relationLc941Part2 Seg34.relationLc941Part3 Seg34.relationLc941Part4 Seg34.relationLc941Part5 at r5351
  unfold Seg34.relationRow5352 Seg34.relationLc942 Seg34.relationLc942Part0 Seg34.relationLc942Part1 Seg34.relationLc942Part2 Seg34.relationLc942Part3 Seg34.relationLc942Part4 Seg34.relationLc942Part5 at r5352
  unfold Seg34.relationRow5353 at r5353
  unfold Seg34.relationRow5354 at r5354
  unfold Seg34.relationRow5355 at r5355
  unfold Seg34.relationRow5356 Seg34.relationLc943 Seg34.relationLc943Part0 Seg34.relationLc943Part1 Seg34.relationLc943Part2 Seg34.relationLc943Part3 Seg34.relationLc943Part4 Seg34.relationLc943Part5 at r5356
  unfold Seg34.relationRow5357 Seg34.relationLc944 Seg34.relationLc944Part0 Seg34.relationLc944Part1 Seg34.relationLc944Part2 Seg34.relationLc944Part3 Seg34.relationLc944Part4 Seg34.relationLc944Part5 at r5357
  unfold Seg34.relationRow5358 at r5358
  unfold Seg34.relationRow5359 at r5359
  unfold Seg34.relationRow5360 at r5360
  unfold Seg34.relationRow5361 at r5361
  unfold Seg34.relationRow5362 at r5362
  have hrung181 (bit : Bool) (hbit : rho 34173 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
        ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩
        ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
        ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩ := by
    have hsum : seg34AccX181 rho + seg34AccY181 rho = rho 36621 := by
      rw [seg34LadderFlatX181_eq, seg34LadderFlatY181_eq]
      unfold seg34LadderFlatX181 seg34LadderFlatY181
      linear_combination r5349
    have ha0 : (rho 36619 + rho 36620) * (seg34AccX181 rho + seg34AccY181 rho) = rho 36622 := by
      rw [hsum]
      linear_combination r5350
    have ha1 : rho 36620 * seg34AccX181 rho = rho 36623 := by
      rw [seg34LadderFlatX181_eq]
      unfold seg34LadderFlatX181
      linear_combination r5351
    have ha2 : rho 36619 * seg34AccY181 rho = rho 36624 := by
      rw [seg34LadderFlatY181_eq]
      unfold seg34LadderFlatY181
      linear_combination r5352
    have ha3 : 3021 * rho 36623 * rho 36624 = rho 36625 := by
      linear_combination r5353
    have ha4 : rho 36626 * (1 + rho 36625) = rho 36623 + rho 36624 := by
      linear_combination r5354
    have ha5 : rho 36627 * (1 - rho 36625) = rho 36622 - rho 36623 - rho 36624 := by
      linear_combination r5355
    have haddx :
        rho 36626 * (1 + 3021 * (rho 36620 * seg34AccX181 rho) * (rho 36619 * seg34AccY181 rho)) =
          rho 36620 * seg34AccX181 rho + rho 36619 * seg34AccY181 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36627 * (1 - 3021 * (rho 36620 * seg34AccX181 rho) * (rho 36619 * seg34AccY181 rho)) =
          (-1) * (rho 36620 * seg34AccX181 rho) - rho 36619 * seg34AccY181 rho +
            (seg34AccY181 rho - seg34AccX181 rho * (-1)) * (rho 36619 + rho 36620) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36627 * (1 - rho 36625) = rho 36622 - rho 36623 - rho 36624 := ha5
        _ = (-1) * rho 36623 - rho 36624 + (seg34AccY181 rho - seg34AccX181 rho * (-1)) * (rho 36619 + rho 36620) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX182 rho = seg34AccX181 rho - Bool.toZMod bit * (seg34AccX181 rho - rho 36626) := by
      have hd : rho 36628 = Bool.toZMod bit * (rho 36626 - seg34AccX181 rho) := by
        rw [← hbit, seg34LadderFlatX181_eq]
        unfold seg34LadderFlatX181
        linear_combination -r5356
      unfold seg34AccX182
      linear_combination hd
    have hsely : seg34AccY182 rho = seg34AccY181 rho - Bool.toZMod bit * (seg34AccY181 rho - rho 36627) := by
      have hd : rho 36629 = Bool.toZMod bit * (rho 36627 - seg34AccY181 rho) := by
        rw [← hbit, seg34LadderFlatY181_eq]
        unfold seg34LadderFlatY181
        linear_combination -r5357
      unfold seg34AccY182
      linear_combination hd
    have hd0 : rho 36619 * rho 36620 = rho 36630 := by linear_combination r5358
    have hd1 : rho 36619 * rho 36619 = rho 36631 := by linear_combination r5359
    have hd2 : rho 36620 * rho 36620 = rho 36632 := by linear_combination r5360
    have hd3 : rho 36633 * (rho 36620 * rho 36620 + rho 36619 * rho 36619 * (-1)) = 2 * (rho 36619 * rho 36620) := by
      rw [hd0, hd1, hd2]
      linear_combination r5361
    have hd4 : rho 36634 * (2 - (rho 36620 * rho 36620 + rho 36619 * rho 36619 * (-1))) = rho 36620 * rho 36620 - rho 36619 * rho 36619 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX181 rho : Seg34.F), (seg34AccY181 rho : Seg34.F)⟩
      ⟨(rho 36619 : Seg34.F), (rho 36620 : Seg34.F)⟩
      ⟨(rho 36626 : Seg34.F), (rho 36627 : Seg34.F)⟩
      ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
      ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung181

theorem seg34_rung182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34174 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
        ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩
        ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
        ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5363 Seg34.relationLc945 Seg34.relationLc945Part0 Seg34.relationLc945Part1 Seg34.relationLc945Part2 Seg34.relationLc945Part3 Seg34.relationLc945Part4 Seg34.relationLc945Part5 Seg34.relationLc945Part6 Seg34.relationLc945Part7 Seg34.relationLc945Part8 Seg34.relationLc945Part9 Seg34.relationLc945Part10 Seg34.relationLc945Part11 at r5363
  unfold Seg34.relationRow5364 at r5364
  unfold Seg34.relationRow5365 Seg34.relationLc946 Seg34.relationLc946Part0 Seg34.relationLc946Part1 Seg34.relationLc946Part2 Seg34.relationLc946Part3 Seg34.relationLc946Part4 Seg34.relationLc946Part5 at r5365
  unfold Seg34.relationRow5366 Seg34.relationLc947 Seg34.relationLc947Part0 Seg34.relationLc947Part1 Seg34.relationLc947Part2 Seg34.relationLc947Part3 Seg34.relationLc947Part4 Seg34.relationLc947Part5 at r5366
  unfold Seg34.relationRow5367 at r5367
  unfold Seg34.relationRow5368 at r5368
  unfold Seg34.relationRow5369 at r5369
  unfold Seg34.relationRow5370 Seg34.relationLc948 Seg34.relationLc948Part0 Seg34.relationLc948Part1 Seg34.relationLc948Part2 Seg34.relationLc948Part3 Seg34.relationLc948Part4 Seg34.relationLc948Part5 at r5370
  unfold Seg34.relationRow5371 Seg34.relationLc949 Seg34.relationLc949Part0 Seg34.relationLc949Part1 Seg34.relationLc949Part2 Seg34.relationLc949Part3 Seg34.relationLc949Part4 Seg34.relationLc949Part5 at r5371
  unfold Seg34.relationRow5372 at r5372
  unfold Seg34.relationRow5373 at r5373
  unfold Seg34.relationRow5374 at r5374
  unfold Seg34.relationRow5375 at r5375
  unfold Seg34.relationRow5376 at r5376
  have hrung182 (bit : Bool) (hbit : rho 34174 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
        ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩
        ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
        ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩ := by
    have hsum : seg34AccX182 rho + seg34AccY182 rho = rho 36635 := by
      rw [seg34LadderFlatX182_eq, seg34LadderFlatY182_eq]
      unfold seg34LadderFlatX182 seg34LadderFlatY182
      linear_combination r5363
    have ha0 : (rho 36633 + rho 36634) * (seg34AccX182 rho + seg34AccY182 rho) = rho 36636 := by
      rw [hsum]
      linear_combination r5364
    have ha1 : rho 36634 * seg34AccX182 rho = rho 36637 := by
      rw [seg34LadderFlatX182_eq]
      unfold seg34LadderFlatX182
      linear_combination r5365
    have ha2 : rho 36633 * seg34AccY182 rho = rho 36638 := by
      rw [seg34LadderFlatY182_eq]
      unfold seg34LadderFlatY182
      linear_combination r5366
    have ha3 : 3021 * rho 36637 * rho 36638 = rho 36639 := by
      linear_combination r5367
    have ha4 : rho 36640 * (1 + rho 36639) = rho 36637 + rho 36638 := by
      linear_combination r5368
    have ha5 : rho 36641 * (1 - rho 36639) = rho 36636 - rho 36637 - rho 36638 := by
      linear_combination r5369
    have haddx :
        rho 36640 * (1 + 3021 * (rho 36634 * seg34AccX182 rho) * (rho 36633 * seg34AccY182 rho)) =
          rho 36634 * seg34AccX182 rho + rho 36633 * seg34AccY182 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36641 * (1 - 3021 * (rho 36634 * seg34AccX182 rho) * (rho 36633 * seg34AccY182 rho)) =
          (-1) * (rho 36634 * seg34AccX182 rho) - rho 36633 * seg34AccY182 rho +
            (seg34AccY182 rho - seg34AccX182 rho * (-1)) * (rho 36633 + rho 36634) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36641 * (1 - rho 36639) = rho 36636 - rho 36637 - rho 36638 := ha5
        _ = (-1) * rho 36637 - rho 36638 + (seg34AccY182 rho - seg34AccX182 rho * (-1)) * (rho 36633 + rho 36634) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX183 rho = seg34AccX182 rho - Bool.toZMod bit * (seg34AccX182 rho - rho 36640) := by
      have hd : rho 36642 = Bool.toZMod bit * (rho 36640 - seg34AccX182 rho) := by
        rw [← hbit, seg34LadderFlatX182_eq]
        unfold seg34LadderFlatX182
        linear_combination -r5370
      unfold seg34AccX183
      linear_combination hd
    have hsely : seg34AccY183 rho = seg34AccY182 rho - Bool.toZMod bit * (seg34AccY182 rho - rho 36641) := by
      have hd : rho 36643 = Bool.toZMod bit * (rho 36641 - seg34AccY182 rho) := by
        rw [← hbit, seg34LadderFlatY182_eq]
        unfold seg34LadderFlatY182
        linear_combination -r5371
      unfold seg34AccY183
      linear_combination hd
    have hd0 : rho 36633 * rho 36634 = rho 36644 := by linear_combination r5372
    have hd1 : rho 36633 * rho 36633 = rho 36645 := by linear_combination r5373
    have hd2 : rho 36634 * rho 36634 = rho 36646 := by linear_combination r5374
    have hd3 : rho 36647 * (rho 36634 * rho 36634 + rho 36633 * rho 36633 * (-1)) = 2 * (rho 36633 * rho 36634) := by
      rw [hd0, hd1, hd2]
      linear_combination r5375
    have hd4 : rho 36648 * (2 - (rho 36634 * rho 36634 + rho 36633 * rho 36633 * (-1))) = rho 36634 * rho 36634 - rho 36633 * rho 36633 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX182 rho : Seg34.F), (seg34AccY182 rho : Seg34.F)⟩
      ⟨(rho 36633 : Seg34.F), (rho 36634 : Seg34.F)⟩
      ⟨(rho 36640 : Seg34.F), (rho 36641 : Seg34.F)⟩
      ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
      ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung182

theorem seg34_rung183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34175 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
        ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩
        ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
        ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5377 Seg34.relationLc950 Seg34.relationLc950Part0 Seg34.relationLc950Part1 Seg34.relationLc950Part2 Seg34.relationLc950Part3 Seg34.relationLc950Part4 Seg34.relationLc950Part5 Seg34.relationLc950Part6 Seg34.relationLc950Part7 Seg34.relationLc950Part8 Seg34.relationLc950Part9 Seg34.relationLc950Part10 Seg34.relationLc950Part11 at r5377
  unfold Seg34.relationRow5378 at r5378
  unfold Seg34.relationRow5379 Seg34.relationLc951 Seg34.relationLc951Part0 Seg34.relationLc951Part1 Seg34.relationLc951Part2 Seg34.relationLc951Part3 Seg34.relationLc951Part4 Seg34.relationLc951Part5 at r5379
  unfold Seg34.relationRow5380 Seg34.relationLc952 Seg34.relationLc952Part0 Seg34.relationLc952Part1 Seg34.relationLc952Part2 Seg34.relationLc952Part3 Seg34.relationLc952Part4 Seg34.relationLc952Part5 at r5380
  unfold Seg34.relationRow5381 at r5381
  unfold Seg34.relationRow5382 at r5382
  unfold Seg34.relationRow5383 at r5383
  unfold Seg34.relationRow5384 Seg34.relationLc953 Seg34.relationLc953Part0 Seg34.relationLc953Part1 Seg34.relationLc953Part2 Seg34.relationLc953Part3 Seg34.relationLc953Part4 Seg34.relationLc953Part5 at r5384
  unfold Seg34.relationRow5385 Seg34.relationLc954 Seg34.relationLc954Part0 Seg34.relationLc954Part1 Seg34.relationLc954Part2 Seg34.relationLc954Part3 Seg34.relationLc954Part4 Seg34.relationLc954Part5 at r5385
  unfold Seg34.relationRow5386 at r5386
  unfold Seg34.relationRow5387 at r5387
  unfold Seg34.relationRow5388 at r5388
  unfold Seg34.relationRow5389 at r5389
  unfold Seg34.relationRow5390 at r5390
  have hrung183 (bit : Bool) (hbit : rho 34175 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
        ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩
        ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
        ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩ := by
    have hsum : seg34AccX183 rho + seg34AccY183 rho = rho 36649 := by
      rw [seg34LadderFlatX183_eq, seg34LadderFlatY183_eq]
      unfold seg34LadderFlatX183 seg34LadderFlatY183
      linear_combination r5377
    have ha0 : (rho 36647 + rho 36648) * (seg34AccX183 rho + seg34AccY183 rho) = rho 36650 := by
      rw [hsum]
      linear_combination r5378
    have ha1 : rho 36648 * seg34AccX183 rho = rho 36651 := by
      rw [seg34LadderFlatX183_eq]
      unfold seg34LadderFlatX183
      linear_combination r5379
    have ha2 : rho 36647 * seg34AccY183 rho = rho 36652 := by
      rw [seg34LadderFlatY183_eq]
      unfold seg34LadderFlatY183
      linear_combination r5380
    have ha3 : 3021 * rho 36651 * rho 36652 = rho 36653 := by
      linear_combination r5381
    have ha4 : rho 36654 * (1 + rho 36653) = rho 36651 + rho 36652 := by
      linear_combination r5382
    have ha5 : rho 36655 * (1 - rho 36653) = rho 36650 - rho 36651 - rho 36652 := by
      linear_combination r5383
    have haddx :
        rho 36654 * (1 + 3021 * (rho 36648 * seg34AccX183 rho) * (rho 36647 * seg34AccY183 rho)) =
          rho 36648 * seg34AccX183 rho + rho 36647 * seg34AccY183 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36655 * (1 - 3021 * (rho 36648 * seg34AccX183 rho) * (rho 36647 * seg34AccY183 rho)) =
          (-1) * (rho 36648 * seg34AccX183 rho) - rho 36647 * seg34AccY183 rho +
            (seg34AccY183 rho - seg34AccX183 rho * (-1)) * (rho 36647 + rho 36648) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36655 * (1 - rho 36653) = rho 36650 - rho 36651 - rho 36652 := ha5
        _ = (-1) * rho 36651 - rho 36652 + (seg34AccY183 rho - seg34AccX183 rho * (-1)) * (rho 36647 + rho 36648) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX184 rho = seg34AccX183 rho - Bool.toZMod bit * (seg34AccX183 rho - rho 36654) := by
      have hd : rho 36656 = Bool.toZMod bit * (rho 36654 - seg34AccX183 rho) := by
        rw [← hbit, seg34LadderFlatX183_eq]
        unfold seg34LadderFlatX183
        linear_combination -r5384
      unfold seg34AccX184
      linear_combination hd
    have hsely : seg34AccY184 rho = seg34AccY183 rho - Bool.toZMod bit * (seg34AccY183 rho - rho 36655) := by
      have hd : rho 36657 = Bool.toZMod bit * (rho 36655 - seg34AccY183 rho) := by
        rw [← hbit, seg34LadderFlatY183_eq]
        unfold seg34LadderFlatY183
        linear_combination -r5385
      unfold seg34AccY184
      linear_combination hd
    have hd0 : rho 36647 * rho 36648 = rho 36658 := by linear_combination r5386
    have hd1 : rho 36647 * rho 36647 = rho 36659 := by linear_combination r5387
    have hd2 : rho 36648 * rho 36648 = rho 36660 := by linear_combination r5388
    have hd3 : rho 36661 * (rho 36648 * rho 36648 + rho 36647 * rho 36647 * (-1)) = 2 * (rho 36647 * rho 36648) := by
      rw [hd0, hd1, hd2]
      linear_combination r5389
    have hd4 : rho 36662 * (2 - (rho 36648 * rho 36648 + rho 36647 * rho 36647 * (-1))) = rho 36648 * rho 36648 - rho 36647 * rho 36647 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5390
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX183 rho : Seg34.F), (seg34AccY183 rho : Seg34.F)⟩
      ⟨(rho 36647 : Seg34.F), (rho 36648 : Seg34.F)⟩
      ⟨(rho 36654 : Seg34.F), (rho 36655 : Seg34.F)⟩
      ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
      ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung183

theorem seg34_rung184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34176 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
        ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩
        ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
        ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5391 Seg34.relationLc955 Seg34.relationLc955Part0 Seg34.relationLc955Part1 Seg34.relationLc955Part2 Seg34.relationLc955Part3 Seg34.relationLc955Part4 Seg34.relationLc955Part5 Seg34.relationLc955Part6 Seg34.relationLc955Part7 Seg34.relationLc955Part8 Seg34.relationLc955Part9 Seg34.relationLc955Part10 Seg34.relationLc955Part11 at r5391
  unfold Seg34.relationRow5392 at r5392
  unfold Seg34.relationRow5393 Seg34.relationLc956 Seg34.relationLc956Part0 Seg34.relationLc956Part1 Seg34.relationLc956Part2 Seg34.relationLc956Part3 Seg34.relationLc956Part4 Seg34.relationLc956Part5 at r5393
  unfold Seg34.relationRow5394 Seg34.relationLc957 Seg34.relationLc957Part0 Seg34.relationLc957Part1 Seg34.relationLc957Part2 Seg34.relationLc957Part3 Seg34.relationLc957Part4 Seg34.relationLc957Part5 at r5394
  unfold Seg34.relationRow5395 at r5395
  unfold Seg34.relationRow5396 at r5396
  unfold Seg34.relationRow5397 at r5397
  unfold Seg34.relationRow5398 Seg34.relationLc958 Seg34.relationLc958Part0 Seg34.relationLc958Part1 Seg34.relationLc958Part2 Seg34.relationLc958Part3 Seg34.relationLc958Part4 Seg34.relationLc958Part5 at r5398
  unfold Seg34.relationRow5399 Seg34.relationLc959 Seg34.relationLc959Part0 Seg34.relationLc959Part1 Seg34.relationLc959Part2 Seg34.relationLc959Part3 Seg34.relationLc959Part4 Seg34.relationLc959Part5 at r5399
  unfold Seg34.relationRow5400 at r5400
  unfold Seg34.relationRow5401 at r5401
  unfold Seg34.relationRow5402 at r5402
  unfold Seg34.relationRow5403 at r5403
  unfold Seg34.relationRow5404 at r5404
  have hrung184 (bit : Bool) (hbit : rho 34176 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
        ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩
        ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
        ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩ := by
    have hsum : seg34AccX184 rho + seg34AccY184 rho = rho 36663 := by
      rw [seg34LadderFlatX184_eq, seg34LadderFlatY184_eq]
      unfold seg34LadderFlatX184 seg34LadderFlatY184
      linear_combination r5391
    have ha0 : (rho 36661 + rho 36662) * (seg34AccX184 rho + seg34AccY184 rho) = rho 36664 := by
      rw [hsum]
      linear_combination r5392
    have ha1 : rho 36662 * seg34AccX184 rho = rho 36665 := by
      rw [seg34LadderFlatX184_eq]
      unfold seg34LadderFlatX184
      linear_combination r5393
    have ha2 : rho 36661 * seg34AccY184 rho = rho 36666 := by
      rw [seg34LadderFlatY184_eq]
      unfold seg34LadderFlatY184
      linear_combination r5394
    have ha3 : 3021 * rho 36665 * rho 36666 = rho 36667 := by
      linear_combination r5395
    have ha4 : rho 36668 * (1 + rho 36667) = rho 36665 + rho 36666 := by
      linear_combination r5396
    have ha5 : rho 36669 * (1 - rho 36667) = rho 36664 - rho 36665 - rho 36666 := by
      linear_combination r5397
    have haddx :
        rho 36668 * (1 + 3021 * (rho 36662 * seg34AccX184 rho) * (rho 36661 * seg34AccY184 rho)) =
          rho 36662 * seg34AccX184 rho + rho 36661 * seg34AccY184 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36669 * (1 - 3021 * (rho 36662 * seg34AccX184 rho) * (rho 36661 * seg34AccY184 rho)) =
          (-1) * (rho 36662 * seg34AccX184 rho) - rho 36661 * seg34AccY184 rho +
            (seg34AccY184 rho - seg34AccX184 rho * (-1)) * (rho 36661 + rho 36662) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36669 * (1 - rho 36667) = rho 36664 - rho 36665 - rho 36666 := ha5
        _ = (-1) * rho 36665 - rho 36666 + (seg34AccY184 rho - seg34AccX184 rho * (-1)) * (rho 36661 + rho 36662) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX185 rho = seg34AccX184 rho - Bool.toZMod bit * (seg34AccX184 rho - rho 36668) := by
      have hd : rho 36670 = Bool.toZMod bit * (rho 36668 - seg34AccX184 rho) := by
        rw [← hbit, seg34LadderFlatX184_eq]
        unfold seg34LadderFlatX184
        linear_combination -r5398
      unfold seg34AccX185
      linear_combination hd
    have hsely : seg34AccY185 rho = seg34AccY184 rho - Bool.toZMod bit * (seg34AccY184 rho - rho 36669) := by
      have hd : rho 36671 = Bool.toZMod bit * (rho 36669 - seg34AccY184 rho) := by
        rw [← hbit, seg34LadderFlatY184_eq]
        unfold seg34LadderFlatY184
        linear_combination -r5399
      unfold seg34AccY185
      linear_combination hd
    have hd0 : rho 36661 * rho 36662 = rho 36672 := by linear_combination r5400
    have hd1 : rho 36661 * rho 36661 = rho 36673 := by linear_combination r5401
    have hd2 : rho 36662 * rho 36662 = rho 36674 := by linear_combination r5402
    have hd3 : rho 36675 * (rho 36662 * rho 36662 + rho 36661 * rho 36661 * (-1)) = 2 * (rho 36661 * rho 36662) := by
      rw [hd0, hd1, hd2]
      linear_combination r5403
    have hd4 : rho 36676 * (2 - (rho 36662 * rho 36662 + rho 36661 * rho 36661 * (-1))) = rho 36662 * rho 36662 - rho 36661 * rho 36661 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5404
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX184 rho : Seg34.F), (seg34AccY184 rho : Seg34.F)⟩
      ⟨(rho 36661 : Seg34.F), (rho 36662 : Seg34.F)⟩
      ⟨(rho 36668 : Seg34.F), (rho 36669 : Seg34.F)⟩
      ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
      ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung184

theorem seg34_rung185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34177 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
        ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩
        ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
        ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5405 Seg34.relationLc960 Seg34.relationLc960Part0 Seg34.relationLc960Part1 Seg34.relationLc960Part2 Seg34.relationLc960Part3 Seg34.relationLc960Part4 Seg34.relationLc960Part5 Seg34.relationLc960Part6 Seg34.relationLc960Part7 Seg34.relationLc960Part8 Seg34.relationLc960Part9 Seg34.relationLc960Part10 Seg34.relationLc960Part11 at r5405
  unfold Seg34.relationRow5406 at r5406
  unfold Seg34.relationRow5407 Seg34.relationLc961 Seg34.relationLc961Part0 Seg34.relationLc961Part1 Seg34.relationLc961Part2 Seg34.relationLc961Part3 Seg34.relationLc961Part4 Seg34.relationLc961Part5 at r5407
  unfold Seg34.relationRow5408 Seg34.relationLc962 Seg34.relationLc962Part0 Seg34.relationLc962Part1 Seg34.relationLc962Part2 Seg34.relationLc962Part3 Seg34.relationLc962Part4 Seg34.relationLc962Part5 at r5408
  unfold Seg34.relationRow5409 at r5409
  unfold Seg34.relationRow5410 at r5410
  unfold Seg34.relationRow5411 at r5411
  unfold Seg34.relationRow5412 Seg34.relationLc963 Seg34.relationLc963Part0 Seg34.relationLc963Part1 Seg34.relationLc963Part2 Seg34.relationLc963Part3 Seg34.relationLc963Part4 Seg34.relationLc963Part5 at r5412
  unfold Seg34.relationRow5413 Seg34.relationLc964 Seg34.relationLc964Part0 Seg34.relationLc964Part1 Seg34.relationLc964Part2 Seg34.relationLc964Part3 Seg34.relationLc964Part4 Seg34.relationLc964Part5 at r5413
  unfold Seg34.relationRow5414 at r5414
  unfold Seg34.relationRow5415 at r5415
  unfold Seg34.relationRow5416 at r5416
  unfold Seg34.relationRow5417 at r5417
  unfold Seg34.relationRow5418 at r5418
  have hrung185 (bit : Bool) (hbit : rho 34177 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
        ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩
        ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
        ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩ := by
    have hsum : seg34AccX185 rho + seg34AccY185 rho = rho 36677 := by
      rw [seg34LadderFlatX185_eq, seg34LadderFlatY185_eq]
      unfold seg34LadderFlatX185 seg34LadderFlatY185
      linear_combination r5405
    have ha0 : (rho 36675 + rho 36676) * (seg34AccX185 rho + seg34AccY185 rho) = rho 36678 := by
      rw [hsum]
      linear_combination r5406
    have ha1 : rho 36676 * seg34AccX185 rho = rho 36679 := by
      rw [seg34LadderFlatX185_eq]
      unfold seg34LadderFlatX185
      linear_combination r5407
    have ha2 : rho 36675 * seg34AccY185 rho = rho 36680 := by
      rw [seg34LadderFlatY185_eq]
      unfold seg34LadderFlatY185
      linear_combination r5408
    have ha3 : 3021 * rho 36679 * rho 36680 = rho 36681 := by
      linear_combination r5409
    have ha4 : rho 36682 * (1 + rho 36681) = rho 36679 + rho 36680 := by
      linear_combination r5410
    have ha5 : rho 36683 * (1 - rho 36681) = rho 36678 - rho 36679 - rho 36680 := by
      linear_combination r5411
    have haddx :
        rho 36682 * (1 + 3021 * (rho 36676 * seg34AccX185 rho) * (rho 36675 * seg34AccY185 rho)) =
          rho 36676 * seg34AccX185 rho + rho 36675 * seg34AccY185 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36683 * (1 - 3021 * (rho 36676 * seg34AccX185 rho) * (rho 36675 * seg34AccY185 rho)) =
          (-1) * (rho 36676 * seg34AccX185 rho) - rho 36675 * seg34AccY185 rho +
            (seg34AccY185 rho - seg34AccX185 rho * (-1)) * (rho 36675 + rho 36676) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36683 * (1 - rho 36681) = rho 36678 - rho 36679 - rho 36680 := ha5
        _ = (-1) * rho 36679 - rho 36680 + (seg34AccY185 rho - seg34AccX185 rho * (-1)) * (rho 36675 + rho 36676) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX186 rho = seg34AccX185 rho - Bool.toZMod bit * (seg34AccX185 rho - rho 36682) := by
      have hd : rho 36684 = Bool.toZMod bit * (rho 36682 - seg34AccX185 rho) := by
        rw [← hbit, seg34LadderFlatX185_eq]
        unfold seg34LadderFlatX185
        linear_combination -r5412
      unfold seg34AccX186
      linear_combination hd
    have hsely : seg34AccY186 rho = seg34AccY185 rho - Bool.toZMod bit * (seg34AccY185 rho - rho 36683) := by
      have hd : rho 36685 = Bool.toZMod bit * (rho 36683 - seg34AccY185 rho) := by
        rw [← hbit, seg34LadderFlatY185_eq]
        unfold seg34LadderFlatY185
        linear_combination -r5413
      unfold seg34AccY186
      linear_combination hd
    have hd0 : rho 36675 * rho 36676 = rho 36686 := by linear_combination r5414
    have hd1 : rho 36675 * rho 36675 = rho 36687 := by linear_combination r5415
    have hd2 : rho 36676 * rho 36676 = rho 36688 := by linear_combination r5416
    have hd3 : rho 36689 * (rho 36676 * rho 36676 + rho 36675 * rho 36675 * (-1)) = 2 * (rho 36675 * rho 36676) := by
      rw [hd0, hd1, hd2]
      linear_combination r5417
    have hd4 : rho 36690 * (2 - (rho 36676 * rho 36676 + rho 36675 * rho 36675 * (-1))) = rho 36676 * rho 36676 - rho 36675 * rho 36675 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5418
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX185 rho : Seg34.F), (seg34AccY185 rho : Seg34.F)⟩
      ⟨(rho 36675 : Seg34.F), (rho 36676 : Seg34.F)⟩
      ⟨(rho 36682 : Seg34.F), (rho 36683 : Seg34.F)⟩
      ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
      ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung185

theorem seg34_rung186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34178 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
        ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩
        ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
        ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5419 Seg34.relationLc965 Seg34.relationLc965Part0 Seg34.relationLc965Part1 Seg34.relationLc965Part2 Seg34.relationLc965Part3 Seg34.relationLc965Part4 Seg34.relationLc965Part5 Seg34.relationLc965Part6 Seg34.relationLc965Part7 Seg34.relationLc965Part8 Seg34.relationLc965Part9 Seg34.relationLc965Part10 Seg34.relationLc965Part11 at r5419
  unfold Seg34.relationRow5420 at r5420
  unfold Seg34.relationRow5421 Seg34.relationLc966 Seg34.relationLc966Part0 Seg34.relationLc966Part1 Seg34.relationLc966Part2 Seg34.relationLc966Part3 Seg34.relationLc966Part4 Seg34.relationLc966Part5 at r5421
  unfold Seg34.relationRow5422 Seg34.relationLc967 Seg34.relationLc967Part0 Seg34.relationLc967Part1 Seg34.relationLc967Part2 Seg34.relationLc967Part3 Seg34.relationLc967Part4 Seg34.relationLc967Part5 at r5422
  unfold Seg34.relationRow5423 at r5423
  unfold Seg34.relationRow5424 at r5424
  unfold Seg34.relationRow5425 at r5425
  unfold Seg34.relationRow5426 Seg34.relationLc968 Seg34.relationLc968Part0 Seg34.relationLc968Part1 Seg34.relationLc968Part2 Seg34.relationLc968Part3 Seg34.relationLc968Part4 Seg34.relationLc968Part5 at r5426
  unfold Seg34.relationRow5427 Seg34.relationLc969 Seg34.relationLc969Part0 Seg34.relationLc969Part1 Seg34.relationLc969Part2 Seg34.relationLc969Part3 Seg34.relationLc969Part4 Seg34.relationLc969Part5 at r5427
  unfold Seg34.relationRow5428 at r5428
  unfold Seg34.relationRow5429 at r5429
  unfold Seg34.relationRow5430 at r5430
  unfold Seg34.relationRow5431 at r5431
  unfold Seg34.relationRow5432 at r5432
  have hrung186 (bit : Bool) (hbit : rho 34178 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
        ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩
        ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
        ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩ := by
    have hsum : seg34AccX186 rho + seg34AccY186 rho = rho 36691 := by
      rw [seg34LadderFlatX186_eq, seg34LadderFlatY186_eq]
      unfold seg34LadderFlatX186 seg34LadderFlatY186
      linear_combination r5419
    have ha0 : (rho 36689 + rho 36690) * (seg34AccX186 rho + seg34AccY186 rho) = rho 36692 := by
      rw [hsum]
      linear_combination r5420
    have ha1 : rho 36690 * seg34AccX186 rho = rho 36693 := by
      rw [seg34LadderFlatX186_eq]
      unfold seg34LadderFlatX186
      linear_combination r5421
    have ha2 : rho 36689 * seg34AccY186 rho = rho 36694 := by
      rw [seg34LadderFlatY186_eq]
      unfold seg34LadderFlatY186
      linear_combination r5422
    have ha3 : 3021 * rho 36693 * rho 36694 = rho 36695 := by
      linear_combination r5423
    have ha4 : rho 36696 * (1 + rho 36695) = rho 36693 + rho 36694 := by
      linear_combination r5424
    have ha5 : rho 36697 * (1 - rho 36695) = rho 36692 - rho 36693 - rho 36694 := by
      linear_combination r5425
    have haddx :
        rho 36696 * (1 + 3021 * (rho 36690 * seg34AccX186 rho) * (rho 36689 * seg34AccY186 rho)) =
          rho 36690 * seg34AccX186 rho + rho 36689 * seg34AccY186 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36697 * (1 - 3021 * (rho 36690 * seg34AccX186 rho) * (rho 36689 * seg34AccY186 rho)) =
          (-1) * (rho 36690 * seg34AccX186 rho) - rho 36689 * seg34AccY186 rho +
            (seg34AccY186 rho - seg34AccX186 rho * (-1)) * (rho 36689 + rho 36690) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36697 * (1 - rho 36695) = rho 36692 - rho 36693 - rho 36694 := ha5
        _ = (-1) * rho 36693 - rho 36694 + (seg34AccY186 rho - seg34AccX186 rho * (-1)) * (rho 36689 + rho 36690) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX187 rho = seg34AccX186 rho - Bool.toZMod bit * (seg34AccX186 rho - rho 36696) := by
      have hd : rho 36698 = Bool.toZMod bit * (rho 36696 - seg34AccX186 rho) := by
        rw [← hbit, seg34LadderFlatX186_eq]
        unfold seg34LadderFlatX186
        linear_combination -r5426
      unfold seg34AccX187
      linear_combination hd
    have hsely : seg34AccY187 rho = seg34AccY186 rho - Bool.toZMod bit * (seg34AccY186 rho - rho 36697) := by
      have hd : rho 36699 = Bool.toZMod bit * (rho 36697 - seg34AccY186 rho) := by
        rw [← hbit, seg34LadderFlatY186_eq]
        unfold seg34LadderFlatY186
        linear_combination -r5427
      unfold seg34AccY187
      linear_combination hd
    have hd0 : rho 36689 * rho 36690 = rho 36700 := by linear_combination r5428
    have hd1 : rho 36689 * rho 36689 = rho 36701 := by linear_combination r5429
    have hd2 : rho 36690 * rho 36690 = rho 36702 := by linear_combination r5430
    have hd3 : rho 36703 * (rho 36690 * rho 36690 + rho 36689 * rho 36689 * (-1)) = 2 * (rho 36689 * rho 36690) := by
      rw [hd0, hd1, hd2]
      linear_combination r5431
    have hd4 : rho 36704 * (2 - (rho 36690 * rho 36690 + rho 36689 * rho 36689 * (-1))) = rho 36690 * rho 36690 - rho 36689 * rho 36689 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX186 rho : Seg34.F), (seg34AccY186 rho : Seg34.F)⟩
      ⟨(rho 36689 : Seg34.F), (rho 36690 : Seg34.F)⟩
      ⟨(rho 36696 : Seg34.F), (rho 36697 : Seg34.F)⟩
      ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
      ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung186

theorem seg34_rung187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34179 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
        ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩
        ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
        ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5433 Seg34.relationLc970 Seg34.relationLc970Part0 Seg34.relationLc970Part1 Seg34.relationLc970Part2 Seg34.relationLc970Part3 Seg34.relationLc970Part4 Seg34.relationLc970Part5 Seg34.relationLc970Part6 Seg34.relationLc970Part7 Seg34.relationLc970Part8 Seg34.relationLc970Part9 Seg34.relationLc970Part10 Seg34.relationLc970Part11 at r5433
  unfold Seg34.relationRow5434 at r5434
  unfold Seg34.relationRow5435 Seg34.relationLc971 Seg34.relationLc971Part0 Seg34.relationLc971Part1 Seg34.relationLc971Part2 Seg34.relationLc971Part3 Seg34.relationLc971Part4 Seg34.relationLc971Part5 at r5435
  unfold Seg34.relationRow5436 Seg34.relationLc972 Seg34.relationLc972Part0 Seg34.relationLc972Part1 Seg34.relationLc972Part2 Seg34.relationLc972Part3 Seg34.relationLc972Part4 Seg34.relationLc972Part5 at r5436
  unfold Seg34.relationRow5437 at r5437
  unfold Seg34.relationRow5438 at r5438
  unfold Seg34.relationRow5439 at r5439
  unfold Seg34.relationRow5440 Seg34.relationLc973 Seg34.relationLc973Part0 Seg34.relationLc973Part1 Seg34.relationLc973Part2 Seg34.relationLc973Part3 Seg34.relationLc973Part4 Seg34.relationLc973Part5 at r5440
  unfold Seg34.relationRow5441 Seg34.relationLc974 Seg34.relationLc974Part0 Seg34.relationLc974Part1 Seg34.relationLc974Part2 Seg34.relationLc974Part3 Seg34.relationLc974Part4 Seg34.relationLc974Part5 at r5441
  unfold Seg34.relationRow5442 at r5442
  unfold Seg34.relationRow5443 at r5443
  unfold Seg34.relationRow5444 at r5444
  unfold Seg34.relationRow5445 at r5445
  unfold Seg34.relationRow5446 at r5446
  have hrung187 (bit : Bool) (hbit : rho 34179 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
        ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩
        ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
        ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩ := by
    have hsum : seg34AccX187 rho + seg34AccY187 rho = rho 36705 := by
      rw [seg34LadderFlatX187_eq, seg34LadderFlatY187_eq]
      unfold seg34LadderFlatX187 seg34LadderFlatY187
      linear_combination r5433
    have ha0 : (rho 36703 + rho 36704) * (seg34AccX187 rho + seg34AccY187 rho) = rho 36706 := by
      rw [hsum]
      linear_combination r5434
    have ha1 : rho 36704 * seg34AccX187 rho = rho 36707 := by
      rw [seg34LadderFlatX187_eq]
      unfold seg34LadderFlatX187
      linear_combination r5435
    have ha2 : rho 36703 * seg34AccY187 rho = rho 36708 := by
      rw [seg34LadderFlatY187_eq]
      unfold seg34LadderFlatY187
      linear_combination r5436
    have ha3 : 3021 * rho 36707 * rho 36708 = rho 36709 := by
      linear_combination r5437
    have ha4 : rho 36710 * (1 + rho 36709) = rho 36707 + rho 36708 := by
      linear_combination r5438
    have ha5 : rho 36711 * (1 - rho 36709) = rho 36706 - rho 36707 - rho 36708 := by
      linear_combination r5439
    have haddx :
        rho 36710 * (1 + 3021 * (rho 36704 * seg34AccX187 rho) * (rho 36703 * seg34AccY187 rho)) =
          rho 36704 * seg34AccX187 rho + rho 36703 * seg34AccY187 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36711 * (1 - 3021 * (rho 36704 * seg34AccX187 rho) * (rho 36703 * seg34AccY187 rho)) =
          (-1) * (rho 36704 * seg34AccX187 rho) - rho 36703 * seg34AccY187 rho +
            (seg34AccY187 rho - seg34AccX187 rho * (-1)) * (rho 36703 + rho 36704) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36711 * (1 - rho 36709) = rho 36706 - rho 36707 - rho 36708 := ha5
        _ = (-1) * rho 36707 - rho 36708 + (seg34AccY187 rho - seg34AccX187 rho * (-1)) * (rho 36703 + rho 36704) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX188 rho = seg34AccX187 rho - Bool.toZMod bit * (seg34AccX187 rho - rho 36710) := by
      have hd : rho 36712 = Bool.toZMod bit * (rho 36710 - seg34AccX187 rho) := by
        rw [← hbit, seg34LadderFlatX187_eq]
        unfold seg34LadderFlatX187
        linear_combination -r5440
      unfold seg34AccX188
      linear_combination hd
    have hsely : seg34AccY188 rho = seg34AccY187 rho - Bool.toZMod bit * (seg34AccY187 rho - rho 36711) := by
      have hd : rho 36713 = Bool.toZMod bit * (rho 36711 - seg34AccY187 rho) := by
        rw [← hbit, seg34LadderFlatY187_eq]
        unfold seg34LadderFlatY187
        linear_combination -r5441
      unfold seg34AccY188
      linear_combination hd
    have hd0 : rho 36703 * rho 36704 = rho 36714 := by linear_combination r5442
    have hd1 : rho 36703 * rho 36703 = rho 36715 := by linear_combination r5443
    have hd2 : rho 36704 * rho 36704 = rho 36716 := by linear_combination r5444
    have hd3 : rho 36717 * (rho 36704 * rho 36704 + rho 36703 * rho 36703 * (-1)) = 2 * (rho 36703 * rho 36704) := by
      rw [hd0, hd1, hd2]
      linear_combination r5445
    have hd4 : rho 36718 * (2 - (rho 36704 * rho 36704 + rho 36703 * rho 36703 * (-1))) = rho 36704 * rho 36704 - rho 36703 * rho 36703 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
      ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩
      ⟨(rho 36710 : Seg34.F), (rho 36711 : Seg34.F)⟩
      ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
      ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung187

theorem seg34_rung188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34180 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
        ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩
        ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
        ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5447 Seg34.relationLc975 Seg34.relationLc975Part0 Seg34.relationLc975Part1 Seg34.relationLc975Part2 Seg34.relationLc975Part3 Seg34.relationLc975Part4 Seg34.relationLc975Part5 Seg34.relationLc975Part6 Seg34.relationLc975Part7 Seg34.relationLc975Part8 Seg34.relationLc975Part9 Seg34.relationLc975Part10 Seg34.relationLc975Part11 at r5447
  unfold Seg34.relationRow5448 at r5448
  unfold Seg34.relationRow5449 Seg34.relationLc976 Seg34.relationLc976Part0 Seg34.relationLc976Part1 Seg34.relationLc976Part2 Seg34.relationLc976Part3 Seg34.relationLc976Part4 Seg34.relationLc976Part5 at r5449
  unfold Seg34.relationRow5450 Seg34.relationLc977 Seg34.relationLc977Part0 Seg34.relationLc977Part1 Seg34.relationLc977Part2 Seg34.relationLc977Part3 Seg34.relationLc977Part4 Seg34.relationLc977Part5 at r5450
  unfold Seg34.relationRow5451 at r5451
  unfold Seg34.relationRow5452 at r5452
  unfold Seg34.relationRow5453 at r5453
  unfold Seg34.relationRow5454 Seg34.relationLc978 Seg34.relationLc978Part0 Seg34.relationLc978Part1 Seg34.relationLc978Part2 Seg34.relationLc978Part3 Seg34.relationLc978Part4 Seg34.relationLc978Part5 at r5454
  unfold Seg34.relationRow5455 Seg34.relationLc979 Seg34.relationLc979Part0 Seg34.relationLc979Part1 Seg34.relationLc979Part2 Seg34.relationLc979Part3 Seg34.relationLc979Part4 Seg34.relationLc979Part5 at r5455
  unfold Seg34.relationRow5456 at r5456
  unfold Seg34.relationRow5457 at r5457
  unfold Seg34.relationRow5458 at r5458
  unfold Seg34.relationRow5459 at r5459
  unfold Seg34.relationRow5460 at r5460
  have hrung188 (bit : Bool) (hbit : rho 34180 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
        ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩
        ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
        ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩ := by
    have hsum : seg34AccX188 rho + seg34AccY188 rho = rho 36719 := by
      rw [seg34LadderFlatX188_eq, seg34LadderFlatY188_eq]
      unfold seg34LadderFlatX188 seg34LadderFlatY188
      linear_combination r5447
    have ha0 : (rho 36717 + rho 36718) * (seg34AccX188 rho + seg34AccY188 rho) = rho 36720 := by
      rw [hsum]
      linear_combination r5448
    have ha1 : rho 36718 * seg34AccX188 rho = rho 36721 := by
      rw [seg34LadderFlatX188_eq]
      unfold seg34LadderFlatX188
      linear_combination r5449
    have ha2 : rho 36717 * seg34AccY188 rho = rho 36722 := by
      rw [seg34LadderFlatY188_eq]
      unfold seg34LadderFlatY188
      linear_combination r5450
    have ha3 : 3021 * rho 36721 * rho 36722 = rho 36723 := by
      linear_combination r5451
    have ha4 : rho 36724 * (1 + rho 36723) = rho 36721 + rho 36722 := by
      linear_combination r5452
    have ha5 : rho 36725 * (1 - rho 36723) = rho 36720 - rho 36721 - rho 36722 := by
      linear_combination r5453
    have haddx :
        rho 36724 * (1 + 3021 * (rho 36718 * seg34AccX188 rho) * (rho 36717 * seg34AccY188 rho)) =
          rho 36718 * seg34AccX188 rho + rho 36717 * seg34AccY188 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36725 * (1 - 3021 * (rho 36718 * seg34AccX188 rho) * (rho 36717 * seg34AccY188 rho)) =
          (-1) * (rho 36718 * seg34AccX188 rho) - rho 36717 * seg34AccY188 rho +
            (seg34AccY188 rho - seg34AccX188 rho * (-1)) * (rho 36717 + rho 36718) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36725 * (1 - rho 36723) = rho 36720 - rho 36721 - rho 36722 := ha5
        _ = (-1) * rho 36721 - rho 36722 + (seg34AccY188 rho - seg34AccX188 rho * (-1)) * (rho 36717 + rho 36718) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX189 rho = seg34AccX188 rho - Bool.toZMod bit * (seg34AccX188 rho - rho 36724) := by
      have hd : rho 36726 = Bool.toZMod bit * (rho 36724 - seg34AccX188 rho) := by
        rw [← hbit, seg34LadderFlatX188_eq]
        unfold seg34LadderFlatX188
        linear_combination -r5454
      unfold seg34AccX189
      linear_combination hd
    have hsely : seg34AccY189 rho = seg34AccY188 rho - Bool.toZMod bit * (seg34AccY188 rho - rho 36725) := by
      have hd : rho 36727 = Bool.toZMod bit * (rho 36725 - seg34AccY188 rho) := by
        rw [← hbit, seg34LadderFlatY188_eq]
        unfold seg34LadderFlatY188
        linear_combination -r5455
      unfold seg34AccY189
      linear_combination hd
    have hd0 : rho 36717 * rho 36718 = rho 36728 := by linear_combination r5456
    have hd1 : rho 36717 * rho 36717 = rho 36729 := by linear_combination r5457
    have hd2 : rho 36718 * rho 36718 = rho 36730 := by linear_combination r5458
    have hd3 : rho 36731 * (rho 36718 * rho 36718 + rho 36717 * rho 36717 * (-1)) = 2 * (rho 36717 * rho 36718) := by
      rw [hd0, hd1, hd2]
      linear_combination r5459
    have hd4 : rho 36732 * (2 - (rho 36718 * rho 36718 + rho 36717 * rho 36717 * (-1))) = rho 36718 * rho 36718 - rho 36717 * rho 36717 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5460
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
      ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩
      ⟨(rho 36724 : Seg34.F), (rho 36725 : Seg34.F)⟩
      ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
      ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung188

theorem seg34_rung189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34181 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
        ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩
        ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
        ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5461 Seg34.relationLc980 Seg34.relationLc980Part0 Seg34.relationLc980Part1 Seg34.relationLc980Part2 Seg34.relationLc980Part3 Seg34.relationLc980Part4 Seg34.relationLc980Part5 Seg34.relationLc980Part6 Seg34.relationLc980Part7 Seg34.relationLc980Part8 Seg34.relationLc980Part9 Seg34.relationLc980Part10 Seg34.relationLc980Part11 at r5461
  unfold Seg34.relationRow5462 at r5462
  unfold Seg34.relationRow5463 Seg34.relationLc981 Seg34.relationLc981Part0 Seg34.relationLc981Part1 Seg34.relationLc981Part2 Seg34.relationLc981Part3 Seg34.relationLc981Part4 Seg34.relationLc981Part5 at r5463
  unfold Seg34.relationRow5464 Seg34.relationLc982 Seg34.relationLc982Part0 Seg34.relationLc982Part1 Seg34.relationLc982Part2 Seg34.relationLc982Part3 Seg34.relationLc982Part4 Seg34.relationLc982Part5 at r5464
  unfold Seg34.relationRow5465 at r5465
  unfold Seg34.relationRow5466 at r5466
  unfold Seg34.relationRow5467 at r5467
  unfold Seg34.relationRow5468 Seg34.relationLc983 Seg34.relationLc983Part0 Seg34.relationLc983Part1 Seg34.relationLc983Part2 Seg34.relationLc983Part3 Seg34.relationLc983Part4 Seg34.relationLc983Part5 at r5468
  unfold Seg34.relationRow5469 Seg34.relationLc984 Seg34.relationLc984Part0 Seg34.relationLc984Part1 Seg34.relationLc984Part2 Seg34.relationLc984Part3 Seg34.relationLc984Part4 Seg34.relationLc984Part5 at r5469
  unfold Seg34.relationRow5470 at r5470
  unfold Seg34.relationRow5471 at r5471
  unfold Seg34.relationRow5472 at r5472
  unfold Seg34.relationRow5473 at r5473
  unfold Seg34.relationRow5474 at r5474
  have hrung189 (bit : Bool) (hbit : rho 34181 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
        ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩
        ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
        ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩ := by
    have hsum : seg34AccX189 rho + seg34AccY189 rho = rho 36733 := by
      rw [seg34LadderFlatX189_eq, seg34LadderFlatY189_eq]
      unfold seg34LadderFlatX189 seg34LadderFlatY189
      linear_combination r5461
    have ha0 : (rho 36731 + rho 36732) * (seg34AccX189 rho + seg34AccY189 rho) = rho 36734 := by
      rw [hsum]
      linear_combination r5462
    have ha1 : rho 36732 * seg34AccX189 rho = rho 36735 := by
      rw [seg34LadderFlatX189_eq]
      unfold seg34LadderFlatX189
      linear_combination r5463
    have ha2 : rho 36731 * seg34AccY189 rho = rho 36736 := by
      rw [seg34LadderFlatY189_eq]
      unfold seg34LadderFlatY189
      linear_combination r5464
    have ha3 : 3021 * rho 36735 * rho 36736 = rho 36737 := by
      linear_combination r5465
    have ha4 : rho 36738 * (1 + rho 36737) = rho 36735 + rho 36736 := by
      linear_combination r5466
    have ha5 : rho 36739 * (1 - rho 36737) = rho 36734 - rho 36735 - rho 36736 := by
      linear_combination r5467
    have haddx :
        rho 36738 * (1 + 3021 * (rho 36732 * seg34AccX189 rho) * (rho 36731 * seg34AccY189 rho)) =
          rho 36732 * seg34AccX189 rho + rho 36731 * seg34AccY189 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36739 * (1 - 3021 * (rho 36732 * seg34AccX189 rho) * (rho 36731 * seg34AccY189 rho)) =
          (-1) * (rho 36732 * seg34AccX189 rho) - rho 36731 * seg34AccY189 rho +
            (seg34AccY189 rho - seg34AccX189 rho * (-1)) * (rho 36731 + rho 36732) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36739 * (1 - rho 36737) = rho 36734 - rho 36735 - rho 36736 := ha5
        _ = (-1) * rho 36735 - rho 36736 + (seg34AccY189 rho - seg34AccX189 rho * (-1)) * (rho 36731 + rho 36732) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX190 rho = seg34AccX189 rho - Bool.toZMod bit * (seg34AccX189 rho - rho 36738) := by
      have hd : rho 36740 = Bool.toZMod bit * (rho 36738 - seg34AccX189 rho) := by
        rw [← hbit, seg34LadderFlatX189_eq]
        unfold seg34LadderFlatX189
        linear_combination -r5468
      unfold seg34AccX190
      linear_combination hd
    have hsely : seg34AccY190 rho = seg34AccY189 rho - Bool.toZMod bit * (seg34AccY189 rho - rho 36739) := by
      have hd : rho 36741 = Bool.toZMod bit * (rho 36739 - seg34AccY189 rho) := by
        rw [← hbit, seg34LadderFlatY189_eq]
        unfold seg34LadderFlatY189
        linear_combination -r5469
      unfold seg34AccY190
      linear_combination hd
    have hd0 : rho 36731 * rho 36732 = rho 36742 := by linear_combination r5470
    have hd1 : rho 36731 * rho 36731 = rho 36743 := by linear_combination r5471
    have hd2 : rho 36732 * rho 36732 = rho 36744 := by linear_combination r5472
    have hd3 : rho 36745 * (rho 36732 * rho 36732 + rho 36731 * rho 36731 * (-1)) = 2 * (rho 36731 * rho 36732) := by
      rw [hd0, hd1, hd2]
      linear_combination r5473
    have hd4 : rho 36746 * (2 - (rho 36732 * rho 36732 + rho 36731 * rho 36731 * (-1))) = rho 36732 * rho 36732 - rho 36731 * rho 36731 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5474
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
      ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩
      ⟨(rho 36738 : Seg34.F), (rho 36739 : Seg34.F)⟩
      ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
      ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung189

theorem seg34_rung190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34182 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
        ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩
        ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
        ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5475 Seg34.relationLc985 Seg34.relationLc985Part0 Seg34.relationLc985Part1 Seg34.relationLc985Part2 Seg34.relationLc985Part3 Seg34.relationLc985Part4 Seg34.relationLc985Part5 Seg34.relationLc985Part6 Seg34.relationLc985Part7 Seg34.relationLc985Part8 Seg34.relationLc985Part9 Seg34.relationLc985Part10 Seg34.relationLc985Part11 at r5475
  unfold Seg34.relationRow5476 at r5476
  unfold Seg34.relationRow5477 Seg34.relationLc986 Seg34.relationLc986Part0 Seg34.relationLc986Part1 Seg34.relationLc986Part2 Seg34.relationLc986Part3 Seg34.relationLc986Part4 Seg34.relationLc986Part5 at r5477
  unfold Seg34.relationRow5478 Seg34.relationLc987 Seg34.relationLc987Part0 Seg34.relationLc987Part1 Seg34.relationLc987Part2 Seg34.relationLc987Part3 Seg34.relationLc987Part4 Seg34.relationLc987Part5 at r5478
  unfold Seg34.relationRow5479 at r5479
  unfold Seg34.relationRow5480 at r5480
  unfold Seg34.relationRow5481 at r5481
  unfold Seg34.relationRow5482 Seg34.relationLc988 Seg34.relationLc988Part0 Seg34.relationLc988Part1 Seg34.relationLc988Part2 Seg34.relationLc988Part3 Seg34.relationLc988Part4 Seg34.relationLc988Part5 at r5482
  unfold Seg34.relationRow5483 Seg34.relationLc989 Seg34.relationLc989Part0 Seg34.relationLc989Part1 Seg34.relationLc989Part2 Seg34.relationLc989Part3 Seg34.relationLc989Part4 Seg34.relationLc989Part5 at r5483
  unfold Seg34.relationRow5484 at r5484
  unfold Seg34.relationRow5485 at r5485
  unfold Seg34.relationRow5486 at r5486
  unfold Seg34.relationRow5487 at r5487
  unfold Seg34.relationRow5488 at r5488
  have hrung190 (bit : Bool) (hbit : rho 34182 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
        ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩
        ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
        ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩ := by
    have hsum : seg34AccX190 rho + seg34AccY190 rho = rho 36747 := by
      rw [seg34LadderFlatX190_eq, seg34LadderFlatY190_eq]
      unfold seg34LadderFlatX190 seg34LadderFlatY190
      linear_combination r5475
    have ha0 : (rho 36745 + rho 36746) * (seg34AccX190 rho + seg34AccY190 rho) = rho 36748 := by
      rw [hsum]
      linear_combination r5476
    have ha1 : rho 36746 * seg34AccX190 rho = rho 36749 := by
      rw [seg34LadderFlatX190_eq]
      unfold seg34LadderFlatX190
      linear_combination r5477
    have ha2 : rho 36745 * seg34AccY190 rho = rho 36750 := by
      rw [seg34LadderFlatY190_eq]
      unfold seg34LadderFlatY190
      linear_combination r5478
    have ha3 : 3021 * rho 36749 * rho 36750 = rho 36751 := by
      linear_combination r5479
    have ha4 : rho 36752 * (1 + rho 36751) = rho 36749 + rho 36750 := by
      linear_combination r5480
    have ha5 : rho 36753 * (1 - rho 36751) = rho 36748 - rho 36749 - rho 36750 := by
      linear_combination r5481
    have haddx :
        rho 36752 * (1 + 3021 * (rho 36746 * seg34AccX190 rho) * (rho 36745 * seg34AccY190 rho)) =
          rho 36746 * seg34AccX190 rho + rho 36745 * seg34AccY190 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36753 * (1 - 3021 * (rho 36746 * seg34AccX190 rho) * (rho 36745 * seg34AccY190 rho)) =
          (-1) * (rho 36746 * seg34AccX190 rho) - rho 36745 * seg34AccY190 rho +
            (seg34AccY190 rho - seg34AccX190 rho * (-1)) * (rho 36745 + rho 36746) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36753 * (1 - rho 36751) = rho 36748 - rho 36749 - rho 36750 := ha5
        _ = (-1) * rho 36749 - rho 36750 + (seg34AccY190 rho - seg34AccX190 rho * (-1)) * (rho 36745 + rho 36746) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX191 rho = seg34AccX190 rho - Bool.toZMod bit * (seg34AccX190 rho - rho 36752) := by
      have hd : rho 36754 = Bool.toZMod bit * (rho 36752 - seg34AccX190 rho) := by
        rw [← hbit, seg34LadderFlatX190_eq]
        unfold seg34LadderFlatX190
        linear_combination -r5482
      unfold seg34AccX191
      linear_combination hd
    have hsely : seg34AccY191 rho = seg34AccY190 rho - Bool.toZMod bit * (seg34AccY190 rho - rho 36753) := by
      have hd : rho 36755 = Bool.toZMod bit * (rho 36753 - seg34AccY190 rho) := by
        rw [← hbit, seg34LadderFlatY190_eq]
        unfold seg34LadderFlatY190
        linear_combination -r5483
      unfold seg34AccY191
      linear_combination hd
    have hd0 : rho 36745 * rho 36746 = rho 36756 := by linear_combination r5484
    have hd1 : rho 36745 * rho 36745 = rho 36757 := by linear_combination r5485
    have hd2 : rho 36746 * rho 36746 = rho 36758 := by linear_combination r5486
    have hd3 : rho 36759 * (rho 36746 * rho 36746 + rho 36745 * rho 36745 * (-1)) = 2 * (rho 36745 * rho 36746) := by
      rw [hd0, hd1, hd2]
      linear_combination r5487
    have hd4 : rho 36760 * (2 - (rho 36746 * rho 36746 + rho 36745 * rho 36745 * (-1))) = rho 36746 * rho 36746 - rho 36745 * rho 36745 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5488
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
      ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩
      ⟨(rho 36752 : Seg34.F), (rho 36753 : Seg34.F)⟩
      ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
      ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung190

theorem seg34_rung191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34183 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
        ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩
        ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
        ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5489 Seg34.relationLc990 Seg34.relationLc990Part0 Seg34.relationLc990Part1 Seg34.relationLc990Part2 Seg34.relationLc990Part3 Seg34.relationLc990Part4 Seg34.relationLc990Part5 Seg34.relationLc990Part6 Seg34.relationLc990Part7 Seg34.relationLc990Part8 Seg34.relationLc990Part9 Seg34.relationLc990Part10 Seg34.relationLc990Part11 at r5489
  unfold Seg34.relationRow5490 at r5490
  unfold Seg34.relationRow5491 Seg34.relationLc991 Seg34.relationLc991Part0 Seg34.relationLc991Part1 Seg34.relationLc991Part2 Seg34.relationLc991Part3 Seg34.relationLc991Part4 Seg34.relationLc991Part5 at r5491
  unfold Seg34.relationRow5492 Seg34.relationLc992 Seg34.relationLc992Part0 Seg34.relationLc992Part1 Seg34.relationLc992Part2 Seg34.relationLc992Part3 Seg34.relationLc992Part4 Seg34.relationLc992Part5 at r5492
  unfold Seg34.relationRow5493 at r5493
  unfold Seg34.relationRow5494 at r5494
  unfold Seg34.relationRow5495 at r5495
  unfold Seg34.relationRow5496 Seg34.relationLc993 Seg34.relationLc993Part0 Seg34.relationLc993Part1 Seg34.relationLc993Part2 Seg34.relationLc993Part3 Seg34.relationLc993Part4 Seg34.relationLc993Part5 at r5496
  unfold Seg34.relationRow5497 Seg34.relationLc994 Seg34.relationLc994Part0 Seg34.relationLc994Part1 Seg34.relationLc994Part2 Seg34.relationLc994Part3 Seg34.relationLc994Part4 Seg34.relationLc994Part5 Seg34.relationLc994Part6 at r5497
  unfold Seg34.relationRow5498 at r5498
  unfold Seg34.relationRow5499 at r5499
  unfold Seg34.relationRow5500 at r5500
  unfold Seg34.relationRow5501 at r5501
  unfold Seg34.relationRow5502 at r5502
  have hrung191 (bit : Bool) (hbit : rho 34183 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
        ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩
        ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
        ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩ := by
    have hsum : seg34AccX191 rho + seg34AccY191 rho = rho 36761 := by
      rw [seg34LadderFlatX191_eq, seg34LadderFlatY191_eq]
      unfold seg34LadderFlatX191 seg34LadderFlatY191
      linear_combination r5489
    have ha0 : (rho 36759 + rho 36760) * (seg34AccX191 rho + seg34AccY191 rho) = rho 36762 := by
      rw [hsum]
      linear_combination r5490
    have ha1 : rho 36760 * seg34AccX191 rho = rho 36763 := by
      rw [seg34LadderFlatX191_eq]
      unfold seg34LadderFlatX191
      linear_combination r5491
    have ha2 : rho 36759 * seg34AccY191 rho = rho 36764 := by
      rw [seg34LadderFlatY191_eq]
      unfold seg34LadderFlatY191
      linear_combination r5492
    have ha3 : 3021 * rho 36763 * rho 36764 = rho 36765 := by
      linear_combination r5493
    have ha4 : rho 36766 * (1 + rho 36765) = rho 36763 + rho 36764 := by
      linear_combination r5494
    have ha5 : rho 36767 * (1 - rho 36765) = rho 36762 - rho 36763 - rho 36764 := by
      linear_combination r5495
    have haddx :
        rho 36766 * (1 + 3021 * (rho 36760 * seg34AccX191 rho) * (rho 36759 * seg34AccY191 rho)) =
          rho 36760 * seg34AccX191 rho + rho 36759 * seg34AccY191 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36767 * (1 - 3021 * (rho 36760 * seg34AccX191 rho) * (rho 36759 * seg34AccY191 rho)) =
          (-1) * (rho 36760 * seg34AccX191 rho) - rho 36759 * seg34AccY191 rho +
            (seg34AccY191 rho - seg34AccX191 rho * (-1)) * (rho 36759 + rho 36760) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36767 * (1 - rho 36765) = rho 36762 - rho 36763 - rho 36764 := ha5
        _ = (-1) * rho 36763 - rho 36764 + (seg34AccY191 rho - seg34AccX191 rho * (-1)) * (rho 36759 + rho 36760) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX192 rho = seg34AccX191 rho - Bool.toZMod bit * (seg34AccX191 rho - rho 36766) := by
      have hd : rho 36768 = Bool.toZMod bit * (rho 36766 - seg34AccX191 rho) := by
        rw [← hbit, seg34LadderFlatX191_eq]
        unfold seg34LadderFlatX191
        linear_combination -r5496
      unfold seg34AccX192
      linear_combination hd
    have hsely : seg34AccY192 rho = seg34AccY191 rho - Bool.toZMod bit * (seg34AccY191 rho - rho 36767) := by
      have hd : rho 36769 = Bool.toZMod bit * (rho 36767 - seg34AccY191 rho) := by
        rw [← hbit, seg34LadderFlatY191_eq]
        unfold seg34LadderFlatY191
        linear_combination -r5497
      unfold seg34AccY192
      linear_combination hd
    have hd0 : rho 36759 * rho 36760 = rho 36770 := by linear_combination r5498
    have hd1 : rho 36759 * rho 36759 = rho 36771 := by linear_combination r5499
    have hd2 : rho 36760 * rho 36760 = rho 36772 := by linear_combination r5500
    have hd3 : rho 36773 * (rho 36760 * rho 36760 + rho 36759 * rho 36759 * (-1)) = 2 * (rho 36759 * rho 36760) := by
      rw [hd0, hd1, hd2]
      linear_combination r5501
    have hd4 : rho 36774 * (2 - (rho 36760 * rho 36760 + rho 36759 * rho 36759 * (-1))) = rho 36760 * rho 36760 - rho 36759 * rho 36759 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5502
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
      ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩
      ⟨(rho 36766 : Seg34.F), (rho 36767 : Seg34.F)⟩
      ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
      ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung191

theorem seg34_hstep_c5 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 160 ≤ i → i < 192 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc hcur
  · exact seg34_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc hcur
  · exact seg34_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc hcur
  · exact seg34_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc hcur
  · exact seg34_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc hcur
  · exact seg34_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc hcur
  · exact seg34_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc hcur
  · exact seg34_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc hcur
  · exact seg34_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc hcur
  · exact seg34_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc hcur
  · exact seg34_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc hcur
  · exact seg34_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc hcur
  · exact seg34_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc hcur
  · exact seg34_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc hcur
  · exact seg34_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc hcur
  · exact seg34_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc hcur
  · exact seg34_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc hcur
  · exact seg34_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc hcur
  · exact seg34_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc hcur
  · exact seg34_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc hcur
  · exact seg34_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc hcur
  · exact seg34_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc hcur
  · exact seg34_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc hcur
  · exact seg34_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc hcur
  · exact seg34_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc hcur
  · exact seg34_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc hcur
  · exact seg34_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc hcur
  · exact seg34_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc hcur
  · exact seg34_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc hcur
  · exact seg34_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc hcur
  · exact seg34_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc hcur
  · exact seg34_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

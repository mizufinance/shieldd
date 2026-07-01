import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rung160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41108 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX160 rho : Seg45.F), (seg45AccY160 rho : Seg45.F)⟩
        ⟨(rho 43281 : Seg45.F), (rho 43282 : Seg45.F)⟩
        ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩
        ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5055 Seg45.relationLc835 Seg45.relationLc835Part0 Seg45.relationLc835Part1 Seg45.relationLc835Part2 Seg45.relationLc835Part3 Seg45.relationLc835Part4 Seg45.relationLc835Part5 Seg45.relationLc835Part6 Seg45.relationLc835Part7 Seg45.relationLc835Part8 Seg45.relationLc835Part9 Seg45.relationLc835Part10 at r5055
  unfold Seg45.relationRow5056 at r5056
  unfold Seg45.relationRow5057 Seg45.relationLc836 Seg45.relationLc836Part0 Seg45.relationLc836Part1 Seg45.relationLc836Part2 Seg45.relationLc836Part3 Seg45.relationLc836Part4 at r5057
  unfold Seg45.relationRow5058 Seg45.relationLc837 Seg45.relationLc837Part0 Seg45.relationLc837Part1 Seg45.relationLc837Part2 Seg45.relationLc837Part3 Seg45.relationLc837Part4 Seg45.relationLc837Part5 at r5058
  unfold Seg45.relationRow5059 at r5059
  unfold Seg45.relationRow5060 at r5060
  unfold Seg45.relationRow5061 at r5061
  unfold Seg45.relationRow5062 Seg45.relationLc838 Seg45.relationLc838Part0 Seg45.relationLc838Part1 Seg45.relationLc838Part2 Seg45.relationLc838Part3 Seg45.relationLc838Part4 Seg45.relationLc838Part5 at r5062
  unfold Seg45.relationRow5063 Seg45.relationLc839 Seg45.relationLc839Part0 Seg45.relationLc839Part1 Seg45.relationLc839Part2 Seg45.relationLc839Part3 Seg45.relationLc839Part4 Seg45.relationLc839Part5 at r5063
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
    have hsum : seg45AccX160 rho + seg45AccY160 rho = rho 43283 := by
      rw [seg45LadderFlatX160_eq, seg45LadderFlatY160_eq]
      unfold seg45LadderFlatX160 seg45LadderFlatY160
      linear_combination r5055
    have ha0 : (rho 43281 + rho 43282) * (seg45AccX160 rho + seg45AccY160 rho) = rho 43284 := by
      rw [hsum]
      linear_combination r5056
    have ha1 : rho 43282 * seg45AccX160 rho = rho 43285 := by
      rw [seg45LadderFlatX160_eq]
      unfold seg45LadderFlatX160
      linear_combination r5057
    have ha2 : rho 43281 * seg45AccY160 rho = rho 43286 := by
      rw [seg45LadderFlatY160_eq]
      unfold seg45LadderFlatY160
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
        rw [← hbit, seg45LadderFlatX160_eq]
        unfold seg45LadderFlatX160
        linear_combination -r5062
      unfold seg45AccX161
      linear_combination hd
    have hsely : seg45AccY161 rho = seg45AccY160 rho - Bool.toZMod bit * (seg45AccY160 rho - rho 43289) := by
      have hd : rho 43291 = Bool.toZMod bit * (rho 43289 - seg45AccY160 rho) := by
        rw [← hbit, seg45LadderFlatY160_eq]
        unfold seg45LadderFlatY160
        linear_combination -r5063
      unfold seg45AccY161
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

theorem seg45_rung161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41109 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX161 rho : Seg45.F), (seg45AccY161 rho : Seg45.F)⟩
        ⟨(rho 43295 : Seg45.F), (rho 43296 : Seg45.F)⟩
        ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩
        ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5069 Seg45.relationLc840 Seg45.relationLc840Part0 Seg45.relationLc840Part1 Seg45.relationLc840Part2 Seg45.relationLc840Part3 Seg45.relationLc840Part4 Seg45.relationLc840Part5 Seg45.relationLc840Part6 Seg45.relationLc840Part7 Seg45.relationLc840Part8 Seg45.relationLc840Part9 Seg45.relationLc840Part10 at r5069
  unfold Seg45.relationRow5070 at r5070
  unfold Seg45.relationRow5071 Seg45.relationLc841 Seg45.relationLc841Part0 Seg45.relationLc841Part1 Seg45.relationLc841Part2 Seg45.relationLc841Part3 Seg45.relationLc841Part4 Seg45.relationLc841Part5 at r5071
  unfold Seg45.relationRow5072 Seg45.relationLc842 Seg45.relationLc842Part0 Seg45.relationLc842Part1 Seg45.relationLc842Part2 Seg45.relationLc842Part3 Seg45.relationLc842Part4 Seg45.relationLc842Part5 at r5072
  unfold Seg45.relationRow5073 at r5073
  unfold Seg45.relationRow5074 at r5074
  unfold Seg45.relationRow5075 at r5075
  unfold Seg45.relationRow5076 Seg45.relationLc843 Seg45.relationLc843Part0 Seg45.relationLc843Part1 Seg45.relationLc843Part2 Seg45.relationLc843Part3 Seg45.relationLc843Part4 Seg45.relationLc843Part5 at r5076
  unfold Seg45.relationRow5077 Seg45.relationLc844 Seg45.relationLc844Part0 Seg45.relationLc844Part1 Seg45.relationLc844Part2 Seg45.relationLc844Part3 Seg45.relationLc844Part4 Seg45.relationLc844Part5 at r5077
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
    have hsum : seg45AccX161 rho + seg45AccY161 rho = rho 43297 := by
      rw [seg45LadderFlatX161_eq, seg45LadderFlatY161_eq]
      unfold seg45LadderFlatX161 seg45LadderFlatY161
      linear_combination r5069
    have ha0 : (rho 43295 + rho 43296) * (seg45AccX161 rho + seg45AccY161 rho) = rho 43298 := by
      rw [hsum]
      linear_combination r5070
    have ha1 : rho 43296 * seg45AccX161 rho = rho 43299 := by
      rw [seg45LadderFlatX161_eq]
      unfold seg45LadderFlatX161
      linear_combination r5071
    have ha2 : rho 43295 * seg45AccY161 rho = rho 43300 := by
      rw [seg45LadderFlatY161_eq]
      unfold seg45LadderFlatY161
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
        rw [← hbit, seg45LadderFlatX161_eq]
        unfold seg45LadderFlatX161
        linear_combination -r5076
      unfold seg45AccX162
      linear_combination hd
    have hsely : seg45AccY162 rho = seg45AccY161 rho - Bool.toZMod bit * (seg45AccY161 rho - rho 43303) := by
      have hd : rho 43305 = Bool.toZMod bit * (rho 43303 - seg45AccY161 rho) := by
        rw [← hbit, seg45LadderFlatY161_eq]
        unfold seg45LadderFlatY161
        linear_combination -r5077
      unfold seg45AccY162
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

theorem seg45_rung162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41110 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX162 rho : Seg45.F), (seg45AccY162 rho : Seg45.F)⟩
        ⟨(rho 43309 : Seg45.F), (rho 43310 : Seg45.F)⟩
        ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩
        ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5083 Seg45.relationLc845 Seg45.relationLc845Part0 Seg45.relationLc845Part1 Seg45.relationLc845Part2 Seg45.relationLc845Part3 Seg45.relationLc845Part4 Seg45.relationLc845Part5 Seg45.relationLc845Part6 Seg45.relationLc845Part7 Seg45.relationLc845Part8 Seg45.relationLc845Part9 Seg45.relationLc845Part10 at r5083
  unfold Seg45.relationRow5084 at r5084
  unfold Seg45.relationRow5085 Seg45.relationLc846 Seg45.relationLc846Part0 Seg45.relationLc846Part1 Seg45.relationLc846Part2 Seg45.relationLc846Part3 Seg45.relationLc846Part4 Seg45.relationLc846Part5 at r5085
  unfold Seg45.relationRow5086 Seg45.relationLc847 Seg45.relationLc847Part0 Seg45.relationLc847Part1 Seg45.relationLc847Part2 Seg45.relationLc847Part3 Seg45.relationLc847Part4 Seg45.relationLc847Part5 at r5086
  unfold Seg45.relationRow5087 at r5087
  unfold Seg45.relationRow5088 at r5088
  unfold Seg45.relationRow5089 at r5089
  unfold Seg45.relationRow5090 Seg45.relationLc848 Seg45.relationLc848Part0 Seg45.relationLc848Part1 Seg45.relationLc848Part2 Seg45.relationLc848Part3 Seg45.relationLc848Part4 Seg45.relationLc848Part5 at r5090
  unfold Seg45.relationRow5091 Seg45.relationLc849 Seg45.relationLc849Part0 Seg45.relationLc849Part1 Seg45.relationLc849Part2 Seg45.relationLc849Part3 Seg45.relationLc849Part4 Seg45.relationLc849Part5 at r5091
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
    have hsum : seg45AccX162 rho + seg45AccY162 rho = rho 43311 := by
      rw [seg45LadderFlatX162_eq, seg45LadderFlatY162_eq]
      unfold seg45LadderFlatX162 seg45LadderFlatY162
      linear_combination r5083
    have ha0 : (rho 43309 + rho 43310) * (seg45AccX162 rho + seg45AccY162 rho) = rho 43312 := by
      rw [hsum]
      linear_combination r5084
    have ha1 : rho 43310 * seg45AccX162 rho = rho 43313 := by
      rw [seg45LadderFlatX162_eq]
      unfold seg45LadderFlatX162
      linear_combination r5085
    have ha2 : rho 43309 * seg45AccY162 rho = rho 43314 := by
      rw [seg45LadderFlatY162_eq]
      unfold seg45LadderFlatY162
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
        rw [← hbit, seg45LadderFlatX162_eq]
        unfold seg45LadderFlatX162
        linear_combination -r5090
      unfold seg45AccX163
      linear_combination hd
    have hsely : seg45AccY163 rho = seg45AccY162 rho - Bool.toZMod bit * (seg45AccY162 rho - rho 43317) := by
      have hd : rho 43319 = Bool.toZMod bit * (rho 43317 - seg45AccY162 rho) := by
        rw [← hbit, seg45LadderFlatY162_eq]
        unfold seg45LadderFlatY162
        linear_combination -r5091
      unfold seg45AccY163
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

theorem seg45_rung163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41111 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX163 rho : Seg45.F), (seg45AccY163 rho : Seg45.F)⟩
        ⟨(rho 43323 : Seg45.F), (rho 43324 : Seg45.F)⟩
        ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩
        ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5097 Seg45.relationLc850 Seg45.relationLc850Part0 Seg45.relationLc850Part1 Seg45.relationLc850Part2 Seg45.relationLc850Part3 Seg45.relationLc850Part4 Seg45.relationLc850Part5 Seg45.relationLc850Part6 Seg45.relationLc850Part7 Seg45.relationLc850Part8 Seg45.relationLc850Part9 Seg45.relationLc850Part10 at r5097
  unfold Seg45.relationRow5098 at r5098
  unfold Seg45.relationRow5099 Seg45.relationLc851 Seg45.relationLc851Part0 Seg45.relationLc851Part1 Seg45.relationLc851Part2 Seg45.relationLc851Part3 Seg45.relationLc851Part4 Seg45.relationLc851Part5 at r5099
  unfold Seg45.relationRow5100 Seg45.relationLc852 Seg45.relationLc852Part0 Seg45.relationLc852Part1 Seg45.relationLc852Part2 Seg45.relationLc852Part3 Seg45.relationLc852Part4 Seg45.relationLc852Part5 at r5100
  unfold Seg45.relationRow5101 at r5101
  unfold Seg45.relationRow5102 at r5102
  unfold Seg45.relationRow5103 at r5103
  unfold Seg45.relationRow5104 Seg45.relationLc853 Seg45.relationLc853Part0 Seg45.relationLc853Part1 Seg45.relationLc853Part2 Seg45.relationLc853Part3 Seg45.relationLc853Part4 Seg45.relationLc853Part5 at r5104
  unfold Seg45.relationRow5105 Seg45.relationLc854 Seg45.relationLc854Part0 Seg45.relationLc854Part1 Seg45.relationLc854Part2 Seg45.relationLc854Part3 Seg45.relationLc854Part4 Seg45.relationLc854Part5 at r5105
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
    have hsum : seg45AccX163 rho + seg45AccY163 rho = rho 43325 := by
      rw [seg45LadderFlatX163_eq, seg45LadderFlatY163_eq]
      unfold seg45LadderFlatX163 seg45LadderFlatY163
      linear_combination r5097
    have ha0 : (rho 43323 + rho 43324) * (seg45AccX163 rho + seg45AccY163 rho) = rho 43326 := by
      rw [hsum]
      linear_combination r5098
    have ha1 : rho 43324 * seg45AccX163 rho = rho 43327 := by
      rw [seg45LadderFlatX163_eq]
      unfold seg45LadderFlatX163
      linear_combination r5099
    have ha2 : rho 43323 * seg45AccY163 rho = rho 43328 := by
      rw [seg45LadderFlatY163_eq]
      unfold seg45LadderFlatY163
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
        rw [← hbit, seg45LadderFlatX163_eq]
        unfold seg45LadderFlatX163
        linear_combination -r5104
      unfold seg45AccX164
      linear_combination hd
    have hsely : seg45AccY164 rho = seg45AccY163 rho - Bool.toZMod bit * (seg45AccY163 rho - rho 43331) := by
      have hd : rho 43333 = Bool.toZMod bit * (rho 43331 - seg45AccY163 rho) := by
        rw [← hbit, seg45LadderFlatY163_eq]
        unfold seg45LadderFlatY163
        linear_combination -r5105
      unfold seg45AccY164
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

theorem seg45_rung164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41112 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX164 rho : Seg45.F), (seg45AccY164 rho : Seg45.F)⟩
        ⟨(rho 43337 : Seg45.F), (rho 43338 : Seg45.F)⟩
        ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
        ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩ := by
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
  unfold Seg45.relationRow5111 Seg45.relationLc855 Seg45.relationLc855Part0 Seg45.relationLc855Part1 Seg45.relationLc855Part2 Seg45.relationLc855Part3 Seg45.relationLc855Part4 Seg45.relationLc855Part5 Seg45.relationLc855Part6 Seg45.relationLc855Part7 Seg45.relationLc855Part8 Seg45.relationLc855Part9 Seg45.relationLc855Part10 at r5111
  unfold Seg45.relationRow5112 at r5112
  unfold Seg45.relationRow5113 Seg45.relationLc856 Seg45.relationLc856Part0 Seg45.relationLc856Part1 Seg45.relationLc856Part2 Seg45.relationLc856Part3 Seg45.relationLc856Part4 Seg45.relationLc856Part5 at r5113
  unfold Seg45.relationRow5114 Seg45.relationLc857 Seg45.relationLc857Part0 Seg45.relationLc857Part1 Seg45.relationLc857Part2 Seg45.relationLc857Part3 Seg45.relationLc857Part4 Seg45.relationLc857Part5 at r5114
  unfold Seg45.relationRow5115 at r5115
  unfold Seg45.relationRow5116 at r5116
  unfold Seg45.relationRow5117 at r5117
  unfold Seg45.relationRow5118 Seg45.relationLc858 Seg45.relationLc858Part0 Seg45.relationLc858Part1 Seg45.relationLc858Part2 Seg45.relationLc858Part3 Seg45.relationLc858Part4 Seg45.relationLc858Part5 at r5118
  unfold Seg45.relationRow5119 Seg45.relationLc859 Seg45.relationLc859Part0 Seg45.relationLc859Part1 Seg45.relationLc859Part2 Seg45.relationLc859Part3 Seg45.relationLc859Part4 Seg45.relationLc859Part5 at r5119
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
    have hsum : seg45AccX164 rho + seg45AccY164 rho = rho 43339 := by
      rw [seg45LadderFlatX164_eq, seg45LadderFlatY164_eq]
      unfold seg45LadderFlatX164 seg45LadderFlatY164
      linear_combination r5111
    have ha0 : (rho 43337 + rho 43338) * (seg45AccX164 rho + seg45AccY164 rho) = rho 43340 := by
      rw [hsum]
      linear_combination r5112
    have ha1 : rho 43338 * seg45AccX164 rho = rho 43341 := by
      rw [seg45LadderFlatX164_eq]
      unfold seg45LadderFlatX164
      linear_combination r5113
    have ha2 : rho 43337 * seg45AccY164 rho = rho 43342 := by
      rw [seg45LadderFlatY164_eq]
      unfold seg45LadderFlatY164
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
        rw [← hbit, seg45LadderFlatX164_eq]
        unfold seg45LadderFlatX164
        linear_combination -r5118
      unfold seg45AccX165
      linear_combination hd
    have hsely : seg45AccY165 rho = seg45AccY164 rho - Bool.toZMod bit * (seg45AccY164 rho - rho 43345) := by
      have hd : rho 43347 = Bool.toZMod bit * (rho 43345 - seg45AccY164 rho) := by
        rw [← hbit, seg45LadderFlatY164_eq]
        unfold seg45LadderFlatY164
        linear_combination -r5119
      unfold seg45AccY165
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

theorem seg45_rung165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41113 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
        ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩
        ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
        ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5125 Seg45.relationLc860 Seg45.relationLc860Part0 Seg45.relationLc860Part1 Seg45.relationLc860Part2 Seg45.relationLc860Part3 Seg45.relationLc860Part4 Seg45.relationLc860Part5 Seg45.relationLc860Part6 Seg45.relationLc860Part7 Seg45.relationLc860Part8 Seg45.relationLc860Part9 Seg45.relationLc860Part10 at r5125
  unfold Seg45.relationRow5126 at r5126
  unfold Seg45.relationRow5127 Seg45.relationLc861 Seg45.relationLc861Part0 Seg45.relationLc861Part1 Seg45.relationLc861Part2 Seg45.relationLc861Part3 Seg45.relationLc861Part4 Seg45.relationLc861Part5 at r5127
  unfold Seg45.relationRow5128 Seg45.relationLc862 Seg45.relationLc862Part0 Seg45.relationLc862Part1 Seg45.relationLc862Part2 Seg45.relationLc862Part3 Seg45.relationLc862Part4 Seg45.relationLc862Part5 at r5128
  unfold Seg45.relationRow5129 at r5129
  unfold Seg45.relationRow5130 at r5130
  unfold Seg45.relationRow5131 at r5131
  unfold Seg45.relationRow5132 Seg45.relationLc863 Seg45.relationLc863Part0 Seg45.relationLc863Part1 Seg45.relationLc863Part2 Seg45.relationLc863Part3 Seg45.relationLc863Part4 Seg45.relationLc863Part5 at r5132
  unfold Seg45.relationRow5133 Seg45.relationLc864 Seg45.relationLc864Part0 Seg45.relationLc864Part1 Seg45.relationLc864Part2 Seg45.relationLc864Part3 Seg45.relationLc864Part4 Seg45.relationLc864Part5 at r5133
  unfold Seg45.relationRow5134 at r5134
  unfold Seg45.relationRow5135 at r5135
  unfold Seg45.relationRow5136 at r5136
  unfold Seg45.relationRow5137 at r5137
  unfold Seg45.relationRow5138 at r5138
  have hrung165 (bit : Bool) (hbit : rho 41113 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
        ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩
        ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
        ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩ := by
    have hsum : seg45AccX165 rho + seg45AccY165 rho = rho 43353 := by
      rw [seg45LadderFlatX165_eq, seg45LadderFlatY165_eq]
      unfold seg45LadderFlatX165 seg45LadderFlatY165
      linear_combination r5125
    have ha0 : (rho 43351 + rho 43352) * (seg45AccX165 rho + seg45AccY165 rho) = rho 43354 := by
      rw [hsum]
      linear_combination r5126
    have ha1 : rho 43352 * seg45AccX165 rho = rho 43355 := by
      rw [seg45LadderFlatX165_eq]
      unfold seg45LadderFlatX165
      linear_combination r5127
    have ha2 : rho 43351 * seg45AccY165 rho = rho 43356 := by
      rw [seg45LadderFlatY165_eq]
      unfold seg45LadderFlatY165
      linear_combination r5128
    have ha3 : 3021 * rho 43355 * rho 43356 = rho 43357 := by
      linear_combination r5129
    have ha4 : rho 43358 * (1 + rho 43357) = rho 43355 + rho 43356 := by
      linear_combination r5130
    have ha5 : rho 43359 * (1 - rho 43357) = rho 43354 - rho 43355 - rho 43356 := by
      linear_combination r5131
    have haddx :
        rho 43358 * (1 + 3021 * (rho 43352 * seg45AccX165 rho) * (rho 43351 * seg45AccY165 rho)) =
          rho 43352 * seg45AccX165 rho + rho 43351 * seg45AccY165 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43359 * (1 - 3021 * (rho 43352 * seg45AccX165 rho) * (rho 43351 * seg45AccY165 rho)) =
          (-1) * (rho 43352 * seg45AccX165 rho) - rho 43351 * seg45AccY165 rho +
            (seg45AccY165 rho - seg45AccX165 rho * (-1)) * (rho 43351 + rho 43352) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43359 * (1 - rho 43357) = rho 43354 - rho 43355 - rho 43356 := ha5
        _ = (-1) * rho 43355 - rho 43356 + (seg45AccY165 rho - seg45AccX165 rho * (-1)) * (rho 43351 + rho 43352) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX166 rho = seg45AccX165 rho - Bool.toZMod bit * (seg45AccX165 rho - rho 43358) := by
      have hd : rho 43360 = Bool.toZMod bit * (rho 43358 - seg45AccX165 rho) := by
        rw [← hbit, seg45LadderFlatX165_eq]
        unfold seg45LadderFlatX165
        linear_combination -r5132
      unfold seg45AccX166
      linear_combination hd
    have hsely : seg45AccY166 rho = seg45AccY165 rho - Bool.toZMod bit * (seg45AccY165 rho - rho 43359) := by
      have hd : rho 43361 = Bool.toZMod bit * (rho 43359 - seg45AccY165 rho) := by
        rw [← hbit, seg45LadderFlatY165_eq]
        unfold seg45LadderFlatY165
        linear_combination -r5133
      unfold seg45AccY166
      linear_combination hd
    have hd0 : rho 43351 * rho 43352 = rho 43362 := by linear_combination r5134
    have hd1 : rho 43351 * rho 43351 = rho 43363 := by linear_combination r5135
    have hd2 : rho 43352 * rho 43352 = rho 43364 := by linear_combination r5136
    have hd3 : rho 43365 * (rho 43352 * rho 43352 + rho 43351 * rho 43351 * (-1)) = 2 * (rho 43351 * rho 43352) := by
      rw [hd0, hd1, hd2]
      linear_combination r5137
    have hd4 : rho 43366 * (2 - (rho 43352 * rho 43352 + rho 43351 * rho 43351 * (-1))) = rho 43352 * rho 43352 - rho 43351 * rho 43351 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5138
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
      ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩
      ⟨(rho 43358 : Seg45.F), (rho 43359 : Seg45.F)⟩
      ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
      ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung165

theorem seg45_rung166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41114 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
        ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩
        ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
        ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5139 Seg45.relationLc865 Seg45.relationLc865Part0 Seg45.relationLc865Part1 Seg45.relationLc865Part2 Seg45.relationLc865Part3 Seg45.relationLc865Part4 Seg45.relationLc865Part5 Seg45.relationLc865Part6 Seg45.relationLc865Part7 Seg45.relationLc865Part8 Seg45.relationLc865Part9 Seg45.relationLc865Part10 at r5139
  unfold Seg45.relationRow5140 at r5140
  unfold Seg45.relationRow5141 Seg45.relationLc866 Seg45.relationLc866Part0 Seg45.relationLc866Part1 Seg45.relationLc866Part2 Seg45.relationLc866Part3 Seg45.relationLc866Part4 Seg45.relationLc866Part5 at r5141
  unfold Seg45.relationRow5142 Seg45.relationLc867 Seg45.relationLc867Part0 Seg45.relationLc867Part1 Seg45.relationLc867Part2 Seg45.relationLc867Part3 Seg45.relationLc867Part4 Seg45.relationLc867Part5 at r5142
  unfold Seg45.relationRow5143 at r5143
  unfold Seg45.relationRow5144 at r5144
  unfold Seg45.relationRow5145 at r5145
  unfold Seg45.relationRow5146 Seg45.relationLc868 Seg45.relationLc868Part0 Seg45.relationLc868Part1 Seg45.relationLc868Part2 Seg45.relationLc868Part3 Seg45.relationLc868Part4 Seg45.relationLc868Part5 at r5146
  unfold Seg45.relationRow5147 Seg45.relationLc869 Seg45.relationLc869Part0 Seg45.relationLc869Part1 Seg45.relationLc869Part2 Seg45.relationLc869Part3 Seg45.relationLc869Part4 Seg45.relationLc869Part5 at r5147
  unfold Seg45.relationRow5148 at r5148
  unfold Seg45.relationRow5149 at r5149
  unfold Seg45.relationRow5150 at r5150
  unfold Seg45.relationRow5151 at r5151
  unfold Seg45.relationRow5152 at r5152
  have hrung166 (bit : Bool) (hbit : rho 41114 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
        ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩
        ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
        ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩ := by
    have hsum : seg45AccX166 rho + seg45AccY166 rho = rho 43367 := by
      rw [seg45LadderFlatX166_eq, seg45LadderFlatY166_eq]
      unfold seg45LadderFlatX166 seg45LadderFlatY166
      linear_combination r5139
    have ha0 : (rho 43365 + rho 43366) * (seg45AccX166 rho + seg45AccY166 rho) = rho 43368 := by
      rw [hsum]
      linear_combination r5140
    have ha1 : rho 43366 * seg45AccX166 rho = rho 43369 := by
      rw [seg45LadderFlatX166_eq]
      unfold seg45LadderFlatX166
      linear_combination r5141
    have ha2 : rho 43365 * seg45AccY166 rho = rho 43370 := by
      rw [seg45LadderFlatY166_eq]
      unfold seg45LadderFlatY166
      linear_combination r5142
    have ha3 : 3021 * rho 43369 * rho 43370 = rho 43371 := by
      linear_combination r5143
    have ha4 : rho 43372 * (1 + rho 43371) = rho 43369 + rho 43370 := by
      linear_combination r5144
    have ha5 : rho 43373 * (1 - rho 43371) = rho 43368 - rho 43369 - rho 43370 := by
      linear_combination r5145
    have haddx :
        rho 43372 * (1 + 3021 * (rho 43366 * seg45AccX166 rho) * (rho 43365 * seg45AccY166 rho)) =
          rho 43366 * seg45AccX166 rho + rho 43365 * seg45AccY166 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43373 * (1 - 3021 * (rho 43366 * seg45AccX166 rho) * (rho 43365 * seg45AccY166 rho)) =
          (-1) * (rho 43366 * seg45AccX166 rho) - rho 43365 * seg45AccY166 rho +
            (seg45AccY166 rho - seg45AccX166 rho * (-1)) * (rho 43365 + rho 43366) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43373 * (1 - rho 43371) = rho 43368 - rho 43369 - rho 43370 := ha5
        _ = (-1) * rho 43369 - rho 43370 + (seg45AccY166 rho - seg45AccX166 rho * (-1)) * (rho 43365 + rho 43366) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX167 rho = seg45AccX166 rho - Bool.toZMod bit * (seg45AccX166 rho - rho 43372) := by
      have hd : rho 43374 = Bool.toZMod bit * (rho 43372 - seg45AccX166 rho) := by
        rw [← hbit, seg45LadderFlatX166_eq]
        unfold seg45LadderFlatX166
        linear_combination -r5146
      unfold seg45AccX167
      linear_combination hd
    have hsely : seg45AccY167 rho = seg45AccY166 rho - Bool.toZMod bit * (seg45AccY166 rho - rho 43373) := by
      have hd : rho 43375 = Bool.toZMod bit * (rho 43373 - seg45AccY166 rho) := by
        rw [← hbit, seg45LadderFlatY166_eq]
        unfold seg45LadderFlatY166
        linear_combination -r5147
      unfold seg45AccY167
      linear_combination hd
    have hd0 : rho 43365 * rho 43366 = rho 43376 := by linear_combination r5148
    have hd1 : rho 43365 * rho 43365 = rho 43377 := by linear_combination r5149
    have hd2 : rho 43366 * rho 43366 = rho 43378 := by linear_combination r5150
    have hd3 : rho 43379 * (rho 43366 * rho 43366 + rho 43365 * rho 43365 * (-1)) = 2 * (rho 43365 * rho 43366) := by
      rw [hd0, hd1, hd2]
      linear_combination r5151
    have hd4 : rho 43380 * (2 - (rho 43366 * rho 43366 + rho 43365 * rho 43365 * (-1))) = rho 43366 * rho 43366 - rho 43365 * rho 43365 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5152
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
      ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩
      ⟨(rho 43372 : Seg45.F), (rho 43373 : Seg45.F)⟩
      ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
      ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung166

theorem seg45_rung167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41115 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
        ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩
        ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
        ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5153 Seg45.relationLc870 Seg45.relationLc870Part0 Seg45.relationLc870Part1 Seg45.relationLc870Part2 Seg45.relationLc870Part3 Seg45.relationLc870Part4 Seg45.relationLc870Part5 Seg45.relationLc870Part6 Seg45.relationLc870Part7 Seg45.relationLc870Part8 Seg45.relationLc870Part9 Seg45.relationLc870Part10 at r5153
  unfold Seg45.relationRow5154 at r5154
  unfold Seg45.relationRow5155 Seg45.relationLc871 Seg45.relationLc871Part0 Seg45.relationLc871Part1 Seg45.relationLc871Part2 Seg45.relationLc871Part3 Seg45.relationLc871Part4 Seg45.relationLc871Part5 at r5155
  unfold Seg45.relationRow5156 Seg45.relationLc872 Seg45.relationLc872Part0 Seg45.relationLc872Part1 Seg45.relationLc872Part2 Seg45.relationLc872Part3 Seg45.relationLc872Part4 Seg45.relationLc872Part5 at r5156
  unfold Seg45.relationRow5157 at r5157
  unfold Seg45.relationRow5158 at r5158
  unfold Seg45.relationRow5159 at r5159
  unfold Seg45.relationRow5160 Seg45.relationLc873 Seg45.relationLc873Part0 Seg45.relationLc873Part1 Seg45.relationLc873Part2 Seg45.relationLc873Part3 Seg45.relationLc873Part4 Seg45.relationLc873Part5 at r5160
  unfold Seg45.relationRow5161 Seg45.relationLc874 Seg45.relationLc874Part0 Seg45.relationLc874Part1 Seg45.relationLc874Part2 Seg45.relationLc874Part3 Seg45.relationLc874Part4 Seg45.relationLc874Part5 at r5161
  unfold Seg45.relationRow5162 at r5162
  unfold Seg45.relationRow5163 at r5163
  unfold Seg45.relationRow5164 at r5164
  unfold Seg45.relationRow5165 at r5165
  unfold Seg45.relationRow5166 at r5166
  have hrung167 (bit : Bool) (hbit : rho 41115 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
        ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩
        ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
        ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩ := by
    have hsum : seg45AccX167 rho + seg45AccY167 rho = rho 43381 := by
      rw [seg45LadderFlatX167_eq, seg45LadderFlatY167_eq]
      unfold seg45LadderFlatX167 seg45LadderFlatY167
      linear_combination r5153
    have ha0 : (rho 43379 + rho 43380) * (seg45AccX167 rho + seg45AccY167 rho) = rho 43382 := by
      rw [hsum]
      linear_combination r5154
    have ha1 : rho 43380 * seg45AccX167 rho = rho 43383 := by
      rw [seg45LadderFlatX167_eq]
      unfold seg45LadderFlatX167
      linear_combination r5155
    have ha2 : rho 43379 * seg45AccY167 rho = rho 43384 := by
      rw [seg45LadderFlatY167_eq]
      unfold seg45LadderFlatY167
      linear_combination r5156
    have ha3 : 3021 * rho 43383 * rho 43384 = rho 43385 := by
      linear_combination r5157
    have ha4 : rho 43386 * (1 + rho 43385) = rho 43383 + rho 43384 := by
      linear_combination r5158
    have ha5 : rho 43387 * (1 - rho 43385) = rho 43382 - rho 43383 - rho 43384 := by
      linear_combination r5159
    have haddx :
        rho 43386 * (1 + 3021 * (rho 43380 * seg45AccX167 rho) * (rho 43379 * seg45AccY167 rho)) =
          rho 43380 * seg45AccX167 rho + rho 43379 * seg45AccY167 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43387 * (1 - 3021 * (rho 43380 * seg45AccX167 rho) * (rho 43379 * seg45AccY167 rho)) =
          (-1) * (rho 43380 * seg45AccX167 rho) - rho 43379 * seg45AccY167 rho +
            (seg45AccY167 rho - seg45AccX167 rho * (-1)) * (rho 43379 + rho 43380) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43387 * (1 - rho 43385) = rho 43382 - rho 43383 - rho 43384 := ha5
        _ = (-1) * rho 43383 - rho 43384 + (seg45AccY167 rho - seg45AccX167 rho * (-1)) * (rho 43379 + rho 43380) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX168 rho = seg45AccX167 rho - Bool.toZMod bit * (seg45AccX167 rho - rho 43386) := by
      have hd : rho 43388 = Bool.toZMod bit * (rho 43386 - seg45AccX167 rho) := by
        rw [← hbit, seg45LadderFlatX167_eq]
        unfold seg45LadderFlatX167
        linear_combination -r5160
      unfold seg45AccX168
      linear_combination hd
    have hsely : seg45AccY168 rho = seg45AccY167 rho - Bool.toZMod bit * (seg45AccY167 rho - rho 43387) := by
      have hd : rho 43389 = Bool.toZMod bit * (rho 43387 - seg45AccY167 rho) := by
        rw [← hbit, seg45LadderFlatY167_eq]
        unfold seg45LadderFlatY167
        linear_combination -r5161
      unfold seg45AccY168
      linear_combination hd
    have hd0 : rho 43379 * rho 43380 = rho 43390 := by linear_combination r5162
    have hd1 : rho 43379 * rho 43379 = rho 43391 := by linear_combination r5163
    have hd2 : rho 43380 * rho 43380 = rho 43392 := by linear_combination r5164
    have hd3 : rho 43393 * (rho 43380 * rho 43380 + rho 43379 * rho 43379 * (-1)) = 2 * (rho 43379 * rho 43380) := by
      rw [hd0, hd1, hd2]
      linear_combination r5165
    have hd4 : rho 43394 * (2 - (rho 43380 * rho 43380 + rho 43379 * rho 43379 * (-1))) = rho 43380 * rho 43380 - rho 43379 * rho 43379 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5166
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
      ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩
      ⟨(rho 43386 : Seg45.F), (rho 43387 : Seg45.F)⟩
      ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
      ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung167

theorem seg45_rung168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41116 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
        ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩
        ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
        ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5167 Seg45.relationLc875 Seg45.relationLc875Part0 Seg45.relationLc875Part1 Seg45.relationLc875Part2 Seg45.relationLc875Part3 Seg45.relationLc875Part4 Seg45.relationLc875Part5 Seg45.relationLc875Part6 Seg45.relationLc875Part7 Seg45.relationLc875Part8 Seg45.relationLc875Part9 Seg45.relationLc875Part10 at r5167
  unfold Seg45.relationRow5168 at r5168
  unfold Seg45.relationRow5169 Seg45.relationLc876 Seg45.relationLc876Part0 Seg45.relationLc876Part1 Seg45.relationLc876Part2 Seg45.relationLc876Part3 Seg45.relationLc876Part4 Seg45.relationLc876Part5 at r5169
  unfold Seg45.relationRow5170 Seg45.relationLc877 Seg45.relationLc877Part0 Seg45.relationLc877Part1 Seg45.relationLc877Part2 Seg45.relationLc877Part3 Seg45.relationLc877Part4 Seg45.relationLc877Part5 at r5170
  unfold Seg45.relationRow5171 at r5171
  unfold Seg45.relationRow5172 at r5172
  unfold Seg45.relationRow5173 at r5173
  unfold Seg45.relationRow5174 Seg45.relationLc878 Seg45.relationLc878Part0 Seg45.relationLc878Part1 Seg45.relationLc878Part2 Seg45.relationLc878Part3 Seg45.relationLc878Part4 Seg45.relationLc878Part5 at r5174
  unfold Seg45.relationRow5175 Seg45.relationLc879 Seg45.relationLc879Part0 Seg45.relationLc879Part1 Seg45.relationLc879Part2 Seg45.relationLc879Part3 Seg45.relationLc879Part4 Seg45.relationLc879Part5 at r5175
  unfold Seg45.relationRow5176 at r5176
  unfold Seg45.relationRow5177 at r5177
  unfold Seg45.relationRow5178 at r5178
  unfold Seg45.relationRow5179 at r5179
  unfold Seg45.relationRow5180 at r5180
  have hrung168 (bit : Bool) (hbit : rho 41116 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
        ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩
        ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
        ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩ := by
    have hsum : seg45AccX168 rho + seg45AccY168 rho = rho 43395 := by
      rw [seg45LadderFlatX168_eq, seg45LadderFlatY168_eq]
      unfold seg45LadderFlatX168 seg45LadderFlatY168
      linear_combination r5167
    have ha0 : (rho 43393 + rho 43394) * (seg45AccX168 rho + seg45AccY168 rho) = rho 43396 := by
      rw [hsum]
      linear_combination r5168
    have ha1 : rho 43394 * seg45AccX168 rho = rho 43397 := by
      rw [seg45LadderFlatX168_eq]
      unfold seg45LadderFlatX168
      linear_combination r5169
    have ha2 : rho 43393 * seg45AccY168 rho = rho 43398 := by
      rw [seg45LadderFlatY168_eq]
      unfold seg45LadderFlatY168
      linear_combination r5170
    have ha3 : 3021 * rho 43397 * rho 43398 = rho 43399 := by
      linear_combination r5171
    have ha4 : rho 43400 * (1 + rho 43399) = rho 43397 + rho 43398 := by
      linear_combination r5172
    have ha5 : rho 43401 * (1 - rho 43399) = rho 43396 - rho 43397 - rho 43398 := by
      linear_combination r5173
    have haddx :
        rho 43400 * (1 + 3021 * (rho 43394 * seg45AccX168 rho) * (rho 43393 * seg45AccY168 rho)) =
          rho 43394 * seg45AccX168 rho + rho 43393 * seg45AccY168 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43401 * (1 - 3021 * (rho 43394 * seg45AccX168 rho) * (rho 43393 * seg45AccY168 rho)) =
          (-1) * (rho 43394 * seg45AccX168 rho) - rho 43393 * seg45AccY168 rho +
            (seg45AccY168 rho - seg45AccX168 rho * (-1)) * (rho 43393 + rho 43394) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43401 * (1 - rho 43399) = rho 43396 - rho 43397 - rho 43398 := ha5
        _ = (-1) * rho 43397 - rho 43398 + (seg45AccY168 rho - seg45AccX168 rho * (-1)) * (rho 43393 + rho 43394) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX169 rho = seg45AccX168 rho - Bool.toZMod bit * (seg45AccX168 rho - rho 43400) := by
      have hd : rho 43402 = Bool.toZMod bit * (rho 43400 - seg45AccX168 rho) := by
        rw [← hbit, seg45LadderFlatX168_eq]
        unfold seg45LadderFlatX168
        linear_combination -r5174
      unfold seg45AccX169
      linear_combination hd
    have hsely : seg45AccY169 rho = seg45AccY168 rho - Bool.toZMod bit * (seg45AccY168 rho - rho 43401) := by
      have hd : rho 43403 = Bool.toZMod bit * (rho 43401 - seg45AccY168 rho) := by
        rw [← hbit, seg45LadderFlatY168_eq]
        unfold seg45LadderFlatY168
        linear_combination -r5175
      unfold seg45AccY169
      linear_combination hd
    have hd0 : rho 43393 * rho 43394 = rho 43404 := by linear_combination r5176
    have hd1 : rho 43393 * rho 43393 = rho 43405 := by linear_combination r5177
    have hd2 : rho 43394 * rho 43394 = rho 43406 := by linear_combination r5178
    have hd3 : rho 43407 * (rho 43394 * rho 43394 + rho 43393 * rho 43393 * (-1)) = 2 * (rho 43393 * rho 43394) := by
      rw [hd0, hd1, hd2]
      linear_combination r5179
    have hd4 : rho 43408 * (2 - (rho 43394 * rho 43394 + rho 43393 * rho 43393 * (-1))) = rho 43394 * rho 43394 - rho 43393 * rho 43393 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
      ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩
      ⟨(rho 43400 : Seg45.F), (rho 43401 : Seg45.F)⟩
      ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
      ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung168

theorem seg45_rung169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41117 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
        ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩
        ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
        ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, _, _, _, _, _⟩
  unfold Seg45.relationRow5181 Seg45.relationLc880 Seg45.relationLc880Part0 Seg45.relationLc880Part1 Seg45.relationLc880Part2 Seg45.relationLc880Part3 Seg45.relationLc880Part4 Seg45.relationLc880Part5 Seg45.relationLc880Part6 Seg45.relationLc880Part7 Seg45.relationLc880Part8 Seg45.relationLc880Part9 Seg45.relationLc880Part10 at r5181
  unfold Seg45.relationRow5182 at r5182
  unfold Seg45.relationRow5183 Seg45.relationLc881 Seg45.relationLc881Part0 Seg45.relationLc881Part1 Seg45.relationLc881Part2 Seg45.relationLc881Part3 Seg45.relationLc881Part4 Seg45.relationLc881Part5 at r5183
  unfold Seg45.relationRow5184 Seg45.relationLc882 Seg45.relationLc882Part0 Seg45.relationLc882Part1 Seg45.relationLc882Part2 Seg45.relationLc882Part3 Seg45.relationLc882Part4 Seg45.relationLc882Part5 at r5184
  unfold Seg45.relationRow5185 at r5185
  unfold Seg45.relationRow5186 at r5186
  unfold Seg45.relationRow5187 at r5187
  unfold Seg45.relationRow5188 Seg45.relationLc883 Seg45.relationLc883Part0 Seg45.relationLc883Part1 Seg45.relationLc883Part2 Seg45.relationLc883Part3 Seg45.relationLc883Part4 Seg45.relationLc883Part5 at r5188
  unfold Seg45.relationRow5189 Seg45.relationLc884 Seg45.relationLc884Part0 Seg45.relationLc884Part1 Seg45.relationLc884Part2 Seg45.relationLc884Part3 Seg45.relationLc884Part4 Seg45.relationLc884Part5 at r5189
  unfold Seg45.relationRow5190 at r5190
  unfold Seg45.relationRow5191 at r5191
  unfold Seg45.relationRow5192 at r5192
  unfold Seg45.relationRow5193 at r5193
  unfold Seg45.relationRow5194 at r5194
  have hrung169 (bit : Bool) (hbit : rho 41117 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
        ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩
        ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
        ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩ := by
    have hsum : seg45AccX169 rho + seg45AccY169 rho = rho 43409 := by
      rw [seg45LadderFlatX169_eq, seg45LadderFlatY169_eq]
      unfold seg45LadderFlatX169 seg45LadderFlatY169
      linear_combination r5181
    have ha0 : (rho 43407 + rho 43408) * (seg45AccX169 rho + seg45AccY169 rho) = rho 43410 := by
      rw [hsum]
      linear_combination r5182
    have ha1 : rho 43408 * seg45AccX169 rho = rho 43411 := by
      rw [seg45LadderFlatX169_eq]
      unfold seg45LadderFlatX169
      linear_combination r5183
    have ha2 : rho 43407 * seg45AccY169 rho = rho 43412 := by
      rw [seg45LadderFlatY169_eq]
      unfold seg45LadderFlatY169
      linear_combination r5184
    have ha3 : 3021 * rho 43411 * rho 43412 = rho 43413 := by
      linear_combination r5185
    have ha4 : rho 43414 * (1 + rho 43413) = rho 43411 + rho 43412 := by
      linear_combination r5186
    have ha5 : rho 43415 * (1 - rho 43413) = rho 43410 - rho 43411 - rho 43412 := by
      linear_combination r5187
    have haddx :
        rho 43414 * (1 + 3021 * (rho 43408 * seg45AccX169 rho) * (rho 43407 * seg45AccY169 rho)) =
          rho 43408 * seg45AccX169 rho + rho 43407 * seg45AccY169 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43415 * (1 - 3021 * (rho 43408 * seg45AccX169 rho) * (rho 43407 * seg45AccY169 rho)) =
          (-1) * (rho 43408 * seg45AccX169 rho) - rho 43407 * seg45AccY169 rho +
            (seg45AccY169 rho - seg45AccX169 rho * (-1)) * (rho 43407 + rho 43408) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43415 * (1 - rho 43413) = rho 43410 - rho 43411 - rho 43412 := ha5
        _ = (-1) * rho 43411 - rho 43412 + (seg45AccY169 rho - seg45AccX169 rho * (-1)) * (rho 43407 + rho 43408) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX170 rho = seg45AccX169 rho - Bool.toZMod bit * (seg45AccX169 rho - rho 43414) := by
      have hd : rho 43416 = Bool.toZMod bit * (rho 43414 - seg45AccX169 rho) := by
        rw [← hbit, seg45LadderFlatX169_eq]
        unfold seg45LadderFlatX169
        linear_combination -r5188
      unfold seg45AccX170
      linear_combination hd
    have hsely : seg45AccY170 rho = seg45AccY169 rho - Bool.toZMod bit * (seg45AccY169 rho - rho 43415) := by
      have hd : rho 43417 = Bool.toZMod bit * (rho 43415 - seg45AccY169 rho) := by
        rw [← hbit, seg45LadderFlatY169_eq]
        unfold seg45LadderFlatY169
        linear_combination -r5189
      unfold seg45AccY170
      linear_combination hd
    have hd0 : rho 43407 * rho 43408 = rho 43418 := by linear_combination r5190
    have hd1 : rho 43407 * rho 43407 = rho 43419 := by linear_combination r5191
    have hd2 : rho 43408 * rho 43408 = rho 43420 := by linear_combination r5192
    have hd3 : rho 43421 * (rho 43408 * rho 43408 + rho 43407 * rho 43407 * (-1)) = 2 * (rho 43407 * rho 43408) := by
      rw [hd0, hd1, hd2]
      linear_combination r5193
    have hd4 : rho 43422 * (2 - (rho 43408 * rho 43408 + rho 43407 * rho 43407 * (-1))) = rho 43408 * rho 43408 - rho 43407 * rho 43407 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
      ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩
      ⟨(rho 43414 : Seg45.F), (rho 43415 : Seg45.F)⟩
      ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
      ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung169

theorem seg45_rung170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41118 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
        ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩
        ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
        ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5195 Seg45.relationLc885 Seg45.relationLc885Part0 Seg45.relationLc885Part1 Seg45.relationLc885Part2 Seg45.relationLc885Part3 Seg45.relationLc885Part4 Seg45.relationLc885Part5 Seg45.relationLc885Part6 Seg45.relationLc885Part7 Seg45.relationLc885Part8 Seg45.relationLc885Part9 Seg45.relationLc885Part10 at r5195
  unfold Seg45.relationRow5196 at r5196
  unfold Seg45.relationRow5197 Seg45.relationLc886 Seg45.relationLc886Part0 Seg45.relationLc886Part1 Seg45.relationLc886Part2 Seg45.relationLc886Part3 Seg45.relationLc886Part4 Seg45.relationLc886Part5 at r5197
  unfold Seg45.relationRow5198 Seg45.relationLc887 Seg45.relationLc887Part0 Seg45.relationLc887Part1 Seg45.relationLc887Part2 Seg45.relationLc887Part3 Seg45.relationLc887Part4 Seg45.relationLc887Part5 at r5198
  unfold Seg45.relationRow5199 at r5199
  unfold Seg45.relationRow5200 at r5200
  unfold Seg45.relationRow5201 at r5201
  unfold Seg45.relationRow5202 Seg45.relationLc888 Seg45.relationLc888Part0 Seg45.relationLc888Part1 Seg45.relationLc888Part2 Seg45.relationLc888Part3 Seg45.relationLc888Part4 Seg45.relationLc888Part5 at r5202
  unfold Seg45.relationRow5203 Seg45.relationLc889 Seg45.relationLc889Part0 Seg45.relationLc889Part1 Seg45.relationLc889Part2 Seg45.relationLc889Part3 Seg45.relationLc889Part4 Seg45.relationLc889Part5 at r5203
  unfold Seg45.relationRow5204 at r5204
  unfold Seg45.relationRow5205 at r5205
  unfold Seg45.relationRow5206 at r5206
  unfold Seg45.relationRow5207 at r5207
  unfold Seg45.relationRow5208 at r5208
  have hrung170 (bit : Bool) (hbit : rho 41118 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
        ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩
        ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
        ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩ := by
    have hsum : seg45AccX170 rho + seg45AccY170 rho = rho 43423 := by
      rw [seg45LadderFlatX170_eq, seg45LadderFlatY170_eq]
      unfold seg45LadderFlatX170 seg45LadderFlatY170
      linear_combination r5195
    have ha0 : (rho 43421 + rho 43422) * (seg45AccX170 rho + seg45AccY170 rho) = rho 43424 := by
      rw [hsum]
      linear_combination r5196
    have ha1 : rho 43422 * seg45AccX170 rho = rho 43425 := by
      rw [seg45LadderFlatX170_eq]
      unfold seg45LadderFlatX170
      linear_combination r5197
    have ha2 : rho 43421 * seg45AccY170 rho = rho 43426 := by
      rw [seg45LadderFlatY170_eq]
      unfold seg45LadderFlatY170
      linear_combination r5198
    have ha3 : 3021 * rho 43425 * rho 43426 = rho 43427 := by
      linear_combination r5199
    have ha4 : rho 43428 * (1 + rho 43427) = rho 43425 + rho 43426 := by
      linear_combination r5200
    have ha5 : rho 43429 * (1 - rho 43427) = rho 43424 - rho 43425 - rho 43426 := by
      linear_combination r5201
    have haddx :
        rho 43428 * (1 + 3021 * (rho 43422 * seg45AccX170 rho) * (rho 43421 * seg45AccY170 rho)) =
          rho 43422 * seg45AccX170 rho + rho 43421 * seg45AccY170 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43429 * (1 - 3021 * (rho 43422 * seg45AccX170 rho) * (rho 43421 * seg45AccY170 rho)) =
          (-1) * (rho 43422 * seg45AccX170 rho) - rho 43421 * seg45AccY170 rho +
            (seg45AccY170 rho - seg45AccX170 rho * (-1)) * (rho 43421 + rho 43422) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43429 * (1 - rho 43427) = rho 43424 - rho 43425 - rho 43426 := ha5
        _ = (-1) * rho 43425 - rho 43426 + (seg45AccY170 rho - seg45AccX170 rho * (-1)) * (rho 43421 + rho 43422) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX171 rho = seg45AccX170 rho - Bool.toZMod bit * (seg45AccX170 rho - rho 43428) := by
      have hd : rho 43430 = Bool.toZMod bit * (rho 43428 - seg45AccX170 rho) := by
        rw [← hbit, seg45LadderFlatX170_eq]
        unfold seg45LadderFlatX170
        linear_combination -r5202
      unfold seg45AccX171
      linear_combination hd
    have hsely : seg45AccY171 rho = seg45AccY170 rho - Bool.toZMod bit * (seg45AccY170 rho - rho 43429) := by
      have hd : rho 43431 = Bool.toZMod bit * (rho 43429 - seg45AccY170 rho) := by
        rw [← hbit, seg45LadderFlatY170_eq]
        unfold seg45LadderFlatY170
        linear_combination -r5203
      unfold seg45AccY171
      linear_combination hd
    have hd0 : rho 43421 * rho 43422 = rho 43432 := by linear_combination r5204
    have hd1 : rho 43421 * rho 43421 = rho 43433 := by linear_combination r5205
    have hd2 : rho 43422 * rho 43422 = rho 43434 := by linear_combination r5206
    have hd3 : rho 43435 * (rho 43422 * rho 43422 + rho 43421 * rho 43421 * (-1)) = 2 * (rho 43421 * rho 43422) := by
      rw [hd0, hd1, hd2]
      linear_combination r5207
    have hd4 : rho 43436 * (2 - (rho 43422 * rho 43422 + rho 43421 * rho 43421 * (-1))) = rho 43422 * rho 43422 - rho 43421 * rho 43421 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5208
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
      ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩
      ⟨(rho 43428 : Seg45.F), (rho 43429 : Seg45.F)⟩
      ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
      ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung170

theorem seg45_rung171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41119 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
        ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩
        ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
        ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5209 Seg45.relationLc890 Seg45.relationLc890Part0 Seg45.relationLc890Part1 Seg45.relationLc890Part2 Seg45.relationLc890Part3 Seg45.relationLc890Part4 Seg45.relationLc890Part5 Seg45.relationLc890Part6 Seg45.relationLc890Part7 Seg45.relationLc890Part8 Seg45.relationLc890Part9 Seg45.relationLc890Part10 at r5209
  unfold Seg45.relationRow5210 at r5210
  unfold Seg45.relationRow5211 Seg45.relationLc891 Seg45.relationLc891Part0 Seg45.relationLc891Part1 Seg45.relationLc891Part2 Seg45.relationLc891Part3 Seg45.relationLc891Part4 Seg45.relationLc891Part5 at r5211
  unfold Seg45.relationRow5212 Seg45.relationLc892 Seg45.relationLc892Part0 Seg45.relationLc892Part1 Seg45.relationLc892Part2 Seg45.relationLc892Part3 Seg45.relationLc892Part4 Seg45.relationLc892Part5 at r5212
  unfold Seg45.relationRow5213 at r5213
  unfold Seg45.relationRow5214 at r5214
  unfold Seg45.relationRow5215 at r5215
  unfold Seg45.relationRow5216 Seg45.relationLc893 Seg45.relationLc893Part0 Seg45.relationLc893Part1 Seg45.relationLc893Part2 Seg45.relationLc893Part3 Seg45.relationLc893Part4 Seg45.relationLc893Part5 at r5216
  unfold Seg45.relationRow5217 Seg45.relationLc894 Seg45.relationLc894Part0 Seg45.relationLc894Part1 Seg45.relationLc894Part2 Seg45.relationLc894Part3 Seg45.relationLc894Part4 Seg45.relationLc894Part5 at r5217
  unfold Seg45.relationRow5218 at r5218
  unfold Seg45.relationRow5219 at r5219
  unfold Seg45.relationRow5220 at r5220
  unfold Seg45.relationRow5221 at r5221
  unfold Seg45.relationRow5222 at r5222
  have hrung171 (bit : Bool) (hbit : rho 41119 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
        ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩
        ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
        ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩ := by
    have hsum : seg45AccX171 rho + seg45AccY171 rho = rho 43437 := by
      rw [seg45LadderFlatX171_eq, seg45LadderFlatY171_eq]
      unfold seg45LadderFlatX171 seg45LadderFlatY171
      linear_combination r5209
    have ha0 : (rho 43435 + rho 43436) * (seg45AccX171 rho + seg45AccY171 rho) = rho 43438 := by
      rw [hsum]
      linear_combination r5210
    have ha1 : rho 43436 * seg45AccX171 rho = rho 43439 := by
      rw [seg45LadderFlatX171_eq]
      unfold seg45LadderFlatX171
      linear_combination r5211
    have ha2 : rho 43435 * seg45AccY171 rho = rho 43440 := by
      rw [seg45LadderFlatY171_eq]
      unfold seg45LadderFlatY171
      linear_combination r5212
    have ha3 : 3021 * rho 43439 * rho 43440 = rho 43441 := by
      linear_combination r5213
    have ha4 : rho 43442 * (1 + rho 43441) = rho 43439 + rho 43440 := by
      linear_combination r5214
    have ha5 : rho 43443 * (1 - rho 43441) = rho 43438 - rho 43439 - rho 43440 := by
      linear_combination r5215
    have haddx :
        rho 43442 * (1 + 3021 * (rho 43436 * seg45AccX171 rho) * (rho 43435 * seg45AccY171 rho)) =
          rho 43436 * seg45AccX171 rho + rho 43435 * seg45AccY171 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43443 * (1 - 3021 * (rho 43436 * seg45AccX171 rho) * (rho 43435 * seg45AccY171 rho)) =
          (-1) * (rho 43436 * seg45AccX171 rho) - rho 43435 * seg45AccY171 rho +
            (seg45AccY171 rho - seg45AccX171 rho * (-1)) * (rho 43435 + rho 43436) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43443 * (1 - rho 43441) = rho 43438 - rho 43439 - rho 43440 := ha5
        _ = (-1) * rho 43439 - rho 43440 + (seg45AccY171 rho - seg45AccX171 rho * (-1)) * (rho 43435 + rho 43436) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX172 rho = seg45AccX171 rho - Bool.toZMod bit * (seg45AccX171 rho - rho 43442) := by
      have hd : rho 43444 = Bool.toZMod bit * (rho 43442 - seg45AccX171 rho) := by
        rw [← hbit, seg45LadderFlatX171_eq]
        unfold seg45LadderFlatX171
        linear_combination -r5216
      unfold seg45AccX172
      linear_combination hd
    have hsely : seg45AccY172 rho = seg45AccY171 rho - Bool.toZMod bit * (seg45AccY171 rho - rho 43443) := by
      have hd : rho 43445 = Bool.toZMod bit * (rho 43443 - seg45AccY171 rho) := by
        rw [← hbit, seg45LadderFlatY171_eq]
        unfold seg45LadderFlatY171
        linear_combination -r5217
      unfold seg45AccY172
      linear_combination hd
    have hd0 : rho 43435 * rho 43436 = rho 43446 := by linear_combination r5218
    have hd1 : rho 43435 * rho 43435 = rho 43447 := by linear_combination r5219
    have hd2 : rho 43436 * rho 43436 = rho 43448 := by linear_combination r5220
    have hd3 : rho 43449 * (rho 43436 * rho 43436 + rho 43435 * rho 43435 * (-1)) = 2 * (rho 43435 * rho 43436) := by
      rw [hd0, hd1, hd2]
      linear_combination r5221
    have hd4 : rho 43450 * (2 - (rho 43436 * rho 43436 + rho 43435 * rho 43435 * (-1))) = rho 43436 * rho 43436 - rho 43435 * rho 43435 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5222
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
      ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩
      ⟨(rho 43442 : Seg45.F), (rho 43443 : Seg45.F)⟩
      ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
      ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung171

theorem seg45_rung172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41120 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
        ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩
        ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
        ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5223 Seg45.relationLc895 Seg45.relationLc895Part0 Seg45.relationLc895Part1 Seg45.relationLc895Part2 Seg45.relationLc895Part3 Seg45.relationLc895Part4 Seg45.relationLc895Part5 Seg45.relationLc895Part6 Seg45.relationLc895Part7 Seg45.relationLc895Part8 Seg45.relationLc895Part9 Seg45.relationLc895Part10 at r5223
  unfold Seg45.relationRow5224 at r5224
  unfold Seg45.relationRow5225 Seg45.relationLc896 Seg45.relationLc896Part0 Seg45.relationLc896Part1 Seg45.relationLc896Part2 Seg45.relationLc896Part3 Seg45.relationLc896Part4 Seg45.relationLc896Part5 at r5225
  unfold Seg45.relationRow5226 Seg45.relationLc897 Seg45.relationLc897Part0 Seg45.relationLc897Part1 Seg45.relationLc897Part2 Seg45.relationLc897Part3 Seg45.relationLc897Part4 Seg45.relationLc897Part5 at r5226
  unfold Seg45.relationRow5227 at r5227
  unfold Seg45.relationRow5228 at r5228
  unfold Seg45.relationRow5229 at r5229
  unfold Seg45.relationRow5230 Seg45.relationLc898 Seg45.relationLc898Part0 Seg45.relationLc898Part1 Seg45.relationLc898Part2 Seg45.relationLc898Part3 Seg45.relationLc898Part4 Seg45.relationLc898Part5 at r5230
  unfold Seg45.relationRow5231 Seg45.relationLc899 Seg45.relationLc899Part0 Seg45.relationLc899Part1 Seg45.relationLc899Part2 Seg45.relationLc899Part3 Seg45.relationLc899Part4 Seg45.relationLc899Part5 at r5231
  unfold Seg45.relationRow5232 at r5232
  unfold Seg45.relationRow5233 at r5233
  unfold Seg45.relationRow5234 at r5234
  unfold Seg45.relationRow5235 at r5235
  unfold Seg45.relationRow5236 at r5236
  have hrung172 (bit : Bool) (hbit : rho 41120 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
        ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩
        ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
        ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩ := by
    have hsum : seg45AccX172 rho + seg45AccY172 rho = rho 43451 := by
      rw [seg45LadderFlatX172_eq, seg45LadderFlatY172_eq]
      unfold seg45LadderFlatX172 seg45LadderFlatY172
      linear_combination r5223
    have ha0 : (rho 43449 + rho 43450) * (seg45AccX172 rho + seg45AccY172 rho) = rho 43452 := by
      rw [hsum]
      linear_combination r5224
    have ha1 : rho 43450 * seg45AccX172 rho = rho 43453 := by
      rw [seg45LadderFlatX172_eq]
      unfold seg45LadderFlatX172
      linear_combination r5225
    have ha2 : rho 43449 * seg45AccY172 rho = rho 43454 := by
      rw [seg45LadderFlatY172_eq]
      unfold seg45LadderFlatY172
      linear_combination r5226
    have ha3 : 3021 * rho 43453 * rho 43454 = rho 43455 := by
      linear_combination r5227
    have ha4 : rho 43456 * (1 + rho 43455) = rho 43453 + rho 43454 := by
      linear_combination r5228
    have ha5 : rho 43457 * (1 - rho 43455) = rho 43452 - rho 43453 - rho 43454 := by
      linear_combination r5229
    have haddx :
        rho 43456 * (1 + 3021 * (rho 43450 * seg45AccX172 rho) * (rho 43449 * seg45AccY172 rho)) =
          rho 43450 * seg45AccX172 rho + rho 43449 * seg45AccY172 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43457 * (1 - 3021 * (rho 43450 * seg45AccX172 rho) * (rho 43449 * seg45AccY172 rho)) =
          (-1) * (rho 43450 * seg45AccX172 rho) - rho 43449 * seg45AccY172 rho +
            (seg45AccY172 rho - seg45AccX172 rho * (-1)) * (rho 43449 + rho 43450) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43457 * (1 - rho 43455) = rho 43452 - rho 43453 - rho 43454 := ha5
        _ = (-1) * rho 43453 - rho 43454 + (seg45AccY172 rho - seg45AccX172 rho * (-1)) * (rho 43449 + rho 43450) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX173 rho = seg45AccX172 rho - Bool.toZMod bit * (seg45AccX172 rho - rho 43456) := by
      have hd : rho 43458 = Bool.toZMod bit * (rho 43456 - seg45AccX172 rho) := by
        rw [← hbit, seg45LadderFlatX172_eq]
        unfold seg45LadderFlatX172
        linear_combination -r5230
      unfold seg45AccX173
      linear_combination hd
    have hsely : seg45AccY173 rho = seg45AccY172 rho - Bool.toZMod bit * (seg45AccY172 rho - rho 43457) := by
      have hd : rho 43459 = Bool.toZMod bit * (rho 43457 - seg45AccY172 rho) := by
        rw [← hbit, seg45LadderFlatY172_eq]
        unfold seg45LadderFlatY172
        linear_combination -r5231
      unfold seg45AccY173
      linear_combination hd
    have hd0 : rho 43449 * rho 43450 = rho 43460 := by linear_combination r5232
    have hd1 : rho 43449 * rho 43449 = rho 43461 := by linear_combination r5233
    have hd2 : rho 43450 * rho 43450 = rho 43462 := by linear_combination r5234
    have hd3 : rho 43463 * (rho 43450 * rho 43450 + rho 43449 * rho 43449 * (-1)) = 2 * (rho 43449 * rho 43450) := by
      rw [hd0, hd1, hd2]
      linear_combination r5235
    have hd4 : rho 43464 * (2 - (rho 43450 * rho 43450 + rho 43449 * rho 43449 * (-1))) = rho 43450 * rho 43450 - rho 43449 * rho 43449 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5236
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
      ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩
      ⟨(rho 43456 : Seg45.F), (rho 43457 : Seg45.F)⟩
      ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
      ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung172

theorem seg45_rung173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41121 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
        ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩
        ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
        ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5237 Seg45.relationLc900 Seg45.relationLc900Part0 Seg45.relationLc900Part1 Seg45.relationLc900Part2 Seg45.relationLc900Part3 Seg45.relationLc900Part4 Seg45.relationLc900Part5 Seg45.relationLc900Part6 Seg45.relationLc900Part7 Seg45.relationLc900Part8 Seg45.relationLc900Part9 Seg45.relationLc900Part10 at r5237
  unfold Seg45.relationRow5238 at r5238
  unfold Seg45.relationRow5239 Seg45.relationLc901 Seg45.relationLc901Part0 Seg45.relationLc901Part1 Seg45.relationLc901Part2 Seg45.relationLc901Part3 Seg45.relationLc901Part4 Seg45.relationLc901Part5 at r5239
  unfold Seg45.relationRow5240 Seg45.relationLc902 Seg45.relationLc902Part0 Seg45.relationLc902Part1 Seg45.relationLc902Part2 Seg45.relationLc902Part3 Seg45.relationLc902Part4 Seg45.relationLc902Part5 at r5240
  unfold Seg45.relationRow5241 at r5241
  unfold Seg45.relationRow5242 at r5242
  unfold Seg45.relationRow5243 at r5243
  unfold Seg45.relationRow5244 Seg45.relationLc903 Seg45.relationLc903Part0 Seg45.relationLc903Part1 Seg45.relationLc903Part2 Seg45.relationLc903Part3 Seg45.relationLc903Part4 Seg45.relationLc903Part5 at r5244
  unfold Seg45.relationRow5245 Seg45.relationLc904 Seg45.relationLc904Part0 Seg45.relationLc904Part1 Seg45.relationLc904Part2 Seg45.relationLc904Part3 Seg45.relationLc904Part4 Seg45.relationLc904Part5 at r5245
  unfold Seg45.relationRow5246 at r5246
  unfold Seg45.relationRow5247 at r5247
  unfold Seg45.relationRow5248 at r5248
  unfold Seg45.relationRow5249 at r5249
  unfold Seg45.relationRow5250 at r5250
  have hrung173 (bit : Bool) (hbit : rho 41121 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
        ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩
        ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
        ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩ := by
    have hsum : seg45AccX173 rho + seg45AccY173 rho = rho 43465 := by
      rw [seg45LadderFlatX173_eq, seg45LadderFlatY173_eq]
      unfold seg45LadderFlatX173 seg45LadderFlatY173
      linear_combination r5237
    have ha0 : (rho 43463 + rho 43464) * (seg45AccX173 rho + seg45AccY173 rho) = rho 43466 := by
      rw [hsum]
      linear_combination r5238
    have ha1 : rho 43464 * seg45AccX173 rho = rho 43467 := by
      rw [seg45LadderFlatX173_eq]
      unfold seg45LadderFlatX173
      linear_combination r5239
    have ha2 : rho 43463 * seg45AccY173 rho = rho 43468 := by
      rw [seg45LadderFlatY173_eq]
      unfold seg45LadderFlatY173
      linear_combination r5240
    have ha3 : 3021 * rho 43467 * rho 43468 = rho 43469 := by
      linear_combination r5241
    have ha4 : rho 43470 * (1 + rho 43469) = rho 43467 + rho 43468 := by
      linear_combination r5242
    have ha5 : rho 43471 * (1 - rho 43469) = rho 43466 - rho 43467 - rho 43468 := by
      linear_combination r5243
    have haddx :
        rho 43470 * (1 + 3021 * (rho 43464 * seg45AccX173 rho) * (rho 43463 * seg45AccY173 rho)) =
          rho 43464 * seg45AccX173 rho + rho 43463 * seg45AccY173 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43471 * (1 - 3021 * (rho 43464 * seg45AccX173 rho) * (rho 43463 * seg45AccY173 rho)) =
          (-1) * (rho 43464 * seg45AccX173 rho) - rho 43463 * seg45AccY173 rho +
            (seg45AccY173 rho - seg45AccX173 rho * (-1)) * (rho 43463 + rho 43464) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43471 * (1 - rho 43469) = rho 43466 - rho 43467 - rho 43468 := ha5
        _ = (-1) * rho 43467 - rho 43468 + (seg45AccY173 rho - seg45AccX173 rho * (-1)) * (rho 43463 + rho 43464) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX174 rho = seg45AccX173 rho - Bool.toZMod bit * (seg45AccX173 rho - rho 43470) := by
      have hd : rho 43472 = Bool.toZMod bit * (rho 43470 - seg45AccX173 rho) := by
        rw [← hbit, seg45LadderFlatX173_eq]
        unfold seg45LadderFlatX173
        linear_combination -r5244
      unfold seg45AccX174
      linear_combination hd
    have hsely : seg45AccY174 rho = seg45AccY173 rho - Bool.toZMod bit * (seg45AccY173 rho - rho 43471) := by
      have hd : rho 43473 = Bool.toZMod bit * (rho 43471 - seg45AccY173 rho) := by
        rw [← hbit, seg45LadderFlatY173_eq]
        unfold seg45LadderFlatY173
        linear_combination -r5245
      unfold seg45AccY174
      linear_combination hd
    have hd0 : rho 43463 * rho 43464 = rho 43474 := by linear_combination r5246
    have hd1 : rho 43463 * rho 43463 = rho 43475 := by linear_combination r5247
    have hd2 : rho 43464 * rho 43464 = rho 43476 := by linear_combination r5248
    have hd3 : rho 43477 * (rho 43464 * rho 43464 + rho 43463 * rho 43463 * (-1)) = 2 * (rho 43463 * rho 43464) := by
      rw [hd0, hd1, hd2]
      linear_combination r5249
    have hd4 : rho 43478 * (2 - (rho 43464 * rho 43464 + rho 43463 * rho 43463 * (-1))) = rho 43464 * rho 43464 - rho 43463 * rho 43463 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
      ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩
      ⟨(rho 43470 : Seg45.F), (rho 43471 : Seg45.F)⟩
      ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
      ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung173

theorem seg45_rung174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41122 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
        ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩
        ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
        ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5251 Seg45.relationLc905 Seg45.relationLc905Part0 Seg45.relationLc905Part1 Seg45.relationLc905Part2 Seg45.relationLc905Part3 Seg45.relationLc905Part4 Seg45.relationLc905Part5 Seg45.relationLc905Part6 Seg45.relationLc905Part7 Seg45.relationLc905Part8 Seg45.relationLc905Part9 Seg45.relationLc905Part10 at r5251
  unfold Seg45.relationRow5252 at r5252
  unfold Seg45.relationRow5253 Seg45.relationLc906 Seg45.relationLc906Part0 Seg45.relationLc906Part1 Seg45.relationLc906Part2 Seg45.relationLc906Part3 Seg45.relationLc906Part4 Seg45.relationLc906Part5 at r5253
  unfold Seg45.relationRow5254 Seg45.relationLc907 Seg45.relationLc907Part0 Seg45.relationLc907Part1 Seg45.relationLc907Part2 Seg45.relationLc907Part3 Seg45.relationLc907Part4 Seg45.relationLc907Part5 at r5254
  unfold Seg45.relationRow5255 at r5255
  unfold Seg45.relationRow5256 at r5256
  unfold Seg45.relationRow5257 at r5257
  unfold Seg45.relationRow5258 Seg45.relationLc908 Seg45.relationLc908Part0 Seg45.relationLc908Part1 Seg45.relationLc908Part2 Seg45.relationLc908Part3 Seg45.relationLc908Part4 Seg45.relationLc908Part5 at r5258
  unfold Seg45.relationRow5259 Seg45.relationLc909 Seg45.relationLc909Part0 Seg45.relationLc909Part1 Seg45.relationLc909Part2 Seg45.relationLc909Part3 Seg45.relationLc909Part4 Seg45.relationLc909Part5 at r5259
  unfold Seg45.relationRow5260 at r5260
  unfold Seg45.relationRow5261 at r5261
  unfold Seg45.relationRow5262 at r5262
  unfold Seg45.relationRow5263 at r5263
  unfold Seg45.relationRow5264 at r5264
  have hrung174 (bit : Bool) (hbit : rho 41122 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
        ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩
        ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
        ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩ := by
    have hsum : seg45AccX174 rho + seg45AccY174 rho = rho 43479 := by
      rw [seg45LadderFlatX174_eq, seg45LadderFlatY174_eq]
      unfold seg45LadderFlatX174 seg45LadderFlatY174
      linear_combination r5251
    have ha0 : (rho 43477 + rho 43478) * (seg45AccX174 rho + seg45AccY174 rho) = rho 43480 := by
      rw [hsum]
      linear_combination r5252
    have ha1 : rho 43478 * seg45AccX174 rho = rho 43481 := by
      rw [seg45LadderFlatX174_eq]
      unfold seg45LadderFlatX174
      linear_combination r5253
    have ha2 : rho 43477 * seg45AccY174 rho = rho 43482 := by
      rw [seg45LadderFlatY174_eq]
      unfold seg45LadderFlatY174
      linear_combination r5254
    have ha3 : 3021 * rho 43481 * rho 43482 = rho 43483 := by
      linear_combination r5255
    have ha4 : rho 43484 * (1 + rho 43483) = rho 43481 + rho 43482 := by
      linear_combination r5256
    have ha5 : rho 43485 * (1 - rho 43483) = rho 43480 - rho 43481 - rho 43482 := by
      linear_combination r5257
    have haddx :
        rho 43484 * (1 + 3021 * (rho 43478 * seg45AccX174 rho) * (rho 43477 * seg45AccY174 rho)) =
          rho 43478 * seg45AccX174 rho + rho 43477 * seg45AccY174 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43485 * (1 - 3021 * (rho 43478 * seg45AccX174 rho) * (rho 43477 * seg45AccY174 rho)) =
          (-1) * (rho 43478 * seg45AccX174 rho) - rho 43477 * seg45AccY174 rho +
            (seg45AccY174 rho - seg45AccX174 rho * (-1)) * (rho 43477 + rho 43478) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43485 * (1 - rho 43483) = rho 43480 - rho 43481 - rho 43482 := ha5
        _ = (-1) * rho 43481 - rho 43482 + (seg45AccY174 rho - seg45AccX174 rho * (-1)) * (rho 43477 + rho 43478) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX175 rho = seg45AccX174 rho - Bool.toZMod bit * (seg45AccX174 rho - rho 43484) := by
      have hd : rho 43486 = Bool.toZMod bit * (rho 43484 - seg45AccX174 rho) := by
        rw [← hbit, seg45LadderFlatX174_eq]
        unfold seg45LadderFlatX174
        linear_combination -r5258
      unfold seg45AccX175
      linear_combination hd
    have hsely : seg45AccY175 rho = seg45AccY174 rho - Bool.toZMod bit * (seg45AccY174 rho - rho 43485) := by
      have hd : rho 43487 = Bool.toZMod bit * (rho 43485 - seg45AccY174 rho) := by
        rw [← hbit, seg45LadderFlatY174_eq]
        unfold seg45LadderFlatY174
        linear_combination -r5259
      unfold seg45AccY175
      linear_combination hd
    have hd0 : rho 43477 * rho 43478 = rho 43488 := by linear_combination r5260
    have hd1 : rho 43477 * rho 43477 = rho 43489 := by linear_combination r5261
    have hd2 : rho 43478 * rho 43478 = rho 43490 := by linear_combination r5262
    have hd3 : rho 43491 * (rho 43478 * rho 43478 + rho 43477 * rho 43477 * (-1)) = 2 * (rho 43477 * rho 43478) := by
      rw [hd0, hd1, hd2]
      linear_combination r5263
    have hd4 : rho 43492 * (2 - (rho 43478 * rho 43478 + rho 43477 * rho 43477 * (-1))) = rho 43478 * rho 43478 - rho 43477 * rho 43477 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
      ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩
      ⟨(rho 43484 : Seg45.F), (rho 43485 : Seg45.F)⟩
      ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
      ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung174

theorem seg45_rung175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41123 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
        ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩
        ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
        ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, _⟩
  unfold Seg45.relationRow5265 Seg45.relationLc910 Seg45.relationLc910Part0 Seg45.relationLc910Part1 Seg45.relationLc910Part2 Seg45.relationLc910Part3 Seg45.relationLc910Part4 Seg45.relationLc910Part5 Seg45.relationLc910Part6 Seg45.relationLc910Part7 Seg45.relationLc910Part8 Seg45.relationLc910Part9 Seg45.relationLc910Part10 at r5265
  unfold Seg45.relationRow5266 at r5266
  unfold Seg45.relationRow5267 Seg45.relationLc911 Seg45.relationLc911Part0 Seg45.relationLc911Part1 Seg45.relationLc911Part2 Seg45.relationLc911Part3 Seg45.relationLc911Part4 Seg45.relationLc911Part5 at r5267
  unfold Seg45.relationRow5268 Seg45.relationLc912 Seg45.relationLc912Part0 Seg45.relationLc912Part1 Seg45.relationLc912Part2 Seg45.relationLc912Part3 Seg45.relationLc912Part4 Seg45.relationLc912Part5 at r5268
  unfold Seg45.relationRow5269 at r5269
  unfold Seg45.relationRow5270 at r5270
  unfold Seg45.relationRow5271 at r5271
  unfold Seg45.relationRow5272 Seg45.relationLc913 Seg45.relationLc913Part0 Seg45.relationLc913Part1 Seg45.relationLc913Part2 Seg45.relationLc913Part3 Seg45.relationLc913Part4 Seg45.relationLc913Part5 at r5272
  unfold Seg45.relationRow5273 Seg45.relationLc914 Seg45.relationLc914Part0 Seg45.relationLc914Part1 Seg45.relationLc914Part2 Seg45.relationLc914Part3 Seg45.relationLc914Part4 Seg45.relationLc914Part5 at r5273
  unfold Seg45.relationRow5274 at r5274
  unfold Seg45.relationRow5275 at r5275
  unfold Seg45.relationRow5276 at r5276
  unfold Seg45.relationRow5277 at r5277
  unfold Seg45.relationRow5278 at r5278
  have hrung175 (bit : Bool) (hbit : rho 41123 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
        ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩
        ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
        ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩ := by
    have hsum : seg45AccX175 rho + seg45AccY175 rho = rho 43493 := by
      rw [seg45LadderFlatX175_eq, seg45LadderFlatY175_eq]
      unfold seg45LadderFlatX175 seg45LadderFlatY175
      linear_combination r5265
    have ha0 : (rho 43491 + rho 43492) * (seg45AccX175 rho + seg45AccY175 rho) = rho 43494 := by
      rw [hsum]
      linear_combination r5266
    have ha1 : rho 43492 * seg45AccX175 rho = rho 43495 := by
      rw [seg45LadderFlatX175_eq]
      unfold seg45LadderFlatX175
      linear_combination r5267
    have ha2 : rho 43491 * seg45AccY175 rho = rho 43496 := by
      rw [seg45LadderFlatY175_eq]
      unfold seg45LadderFlatY175
      linear_combination r5268
    have ha3 : 3021 * rho 43495 * rho 43496 = rho 43497 := by
      linear_combination r5269
    have ha4 : rho 43498 * (1 + rho 43497) = rho 43495 + rho 43496 := by
      linear_combination r5270
    have ha5 : rho 43499 * (1 - rho 43497) = rho 43494 - rho 43495 - rho 43496 := by
      linear_combination r5271
    have haddx :
        rho 43498 * (1 + 3021 * (rho 43492 * seg45AccX175 rho) * (rho 43491 * seg45AccY175 rho)) =
          rho 43492 * seg45AccX175 rho + rho 43491 * seg45AccY175 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43499 * (1 - 3021 * (rho 43492 * seg45AccX175 rho) * (rho 43491 * seg45AccY175 rho)) =
          (-1) * (rho 43492 * seg45AccX175 rho) - rho 43491 * seg45AccY175 rho +
            (seg45AccY175 rho - seg45AccX175 rho * (-1)) * (rho 43491 + rho 43492) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43499 * (1 - rho 43497) = rho 43494 - rho 43495 - rho 43496 := ha5
        _ = (-1) * rho 43495 - rho 43496 + (seg45AccY175 rho - seg45AccX175 rho * (-1)) * (rho 43491 + rho 43492) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX176 rho = seg45AccX175 rho - Bool.toZMod bit * (seg45AccX175 rho - rho 43498) := by
      have hd : rho 43500 = Bool.toZMod bit * (rho 43498 - seg45AccX175 rho) := by
        rw [← hbit, seg45LadderFlatX175_eq]
        unfold seg45LadderFlatX175
        linear_combination -r5272
      unfold seg45AccX176
      linear_combination hd
    have hsely : seg45AccY176 rho = seg45AccY175 rho - Bool.toZMod bit * (seg45AccY175 rho - rho 43499) := by
      have hd : rho 43501 = Bool.toZMod bit * (rho 43499 - seg45AccY175 rho) := by
        rw [← hbit, seg45LadderFlatY175_eq]
        unfold seg45LadderFlatY175
        linear_combination -r5273
      unfold seg45AccY176
      linear_combination hd
    have hd0 : rho 43491 * rho 43492 = rho 43502 := by linear_combination r5274
    have hd1 : rho 43491 * rho 43491 = rho 43503 := by linear_combination r5275
    have hd2 : rho 43492 * rho 43492 = rho 43504 := by linear_combination r5276
    have hd3 : rho 43505 * (rho 43492 * rho 43492 + rho 43491 * rho 43491 * (-1)) = 2 * (rho 43491 * rho 43492) := by
      rw [hd0, hd1, hd2]
      linear_combination r5277
    have hd4 : rho 43506 * (2 - (rho 43492 * rho 43492 + rho 43491 * rho 43491 * (-1))) = rho 43492 * rho 43492 - rho 43491 * rho 43491 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5278
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
      ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩
      ⟨(rho 43498 : Seg45.F), (rho 43499 : Seg45.F)⟩
      ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
      ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung175

theorem seg45_rung176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41124 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
        ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩
        ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
        ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5279⟩
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5279 Seg45.relationLc915 Seg45.relationLc915Part0 Seg45.relationLc915Part1 Seg45.relationLc915Part2 Seg45.relationLc915Part3 Seg45.relationLc915Part4 Seg45.relationLc915Part5 Seg45.relationLc915Part6 Seg45.relationLc915Part7 Seg45.relationLc915Part8 Seg45.relationLc915Part9 Seg45.relationLc915Part10 Seg45.relationLc915Part11 at r5279
  unfold Seg45.relationRow5280 at r5280
  unfold Seg45.relationRow5281 Seg45.relationLc916 Seg45.relationLc916Part0 Seg45.relationLc916Part1 Seg45.relationLc916Part2 Seg45.relationLc916Part3 Seg45.relationLc916Part4 Seg45.relationLc916Part5 at r5281
  unfold Seg45.relationRow5282 Seg45.relationLc917 Seg45.relationLc917Part0 Seg45.relationLc917Part1 Seg45.relationLc917Part2 Seg45.relationLc917Part3 Seg45.relationLc917Part4 Seg45.relationLc917Part5 at r5282
  unfold Seg45.relationRow5283 at r5283
  unfold Seg45.relationRow5284 at r5284
  unfold Seg45.relationRow5285 at r5285
  unfold Seg45.relationRow5286 Seg45.relationLc918 Seg45.relationLc918Part0 Seg45.relationLc918Part1 Seg45.relationLc918Part2 Seg45.relationLc918Part3 Seg45.relationLc918Part4 Seg45.relationLc918Part5 at r5286
  unfold Seg45.relationRow5287 Seg45.relationLc919 Seg45.relationLc919Part0 Seg45.relationLc919Part1 Seg45.relationLc919Part2 Seg45.relationLc919Part3 Seg45.relationLc919Part4 Seg45.relationLc919Part5 at r5287
  unfold Seg45.relationRow5288 at r5288
  unfold Seg45.relationRow5289 at r5289
  unfold Seg45.relationRow5290 at r5290
  unfold Seg45.relationRow5291 at r5291
  unfold Seg45.relationRow5292 at r5292
  have hrung176 (bit : Bool) (hbit : rho 41124 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
        ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩
        ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
        ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩ := by
    have hsum : seg45AccX176 rho + seg45AccY176 rho = rho 43507 := by
      rw [seg45LadderFlatX176_eq, seg45LadderFlatY176_eq]
      unfold seg45LadderFlatX176 seg45LadderFlatY176
      linear_combination r5279
    have ha0 : (rho 43505 + rho 43506) * (seg45AccX176 rho + seg45AccY176 rho) = rho 43508 := by
      rw [hsum]
      linear_combination r5280
    have ha1 : rho 43506 * seg45AccX176 rho = rho 43509 := by
      rw [seg45LadderFlatX176_eq]
      unfold seg45LadderFlatX176
      linear_combination r5281
    have ha2 : rho 43505 * seg45AccY176 rho = rho 43510 := by
      rw [seg45LadderFlatY176_eq]
      unfold seg45LadderFlatY176
      linear_combination r5282
    have ha3 : 3021 * rho 43509 * rho 43510 = rho 43511 := by
      linear_combination r5283
    have ha4 : rho 43512 * (1 + rho 43511) = rho 43509 + rho 43510 := by
      linear_combination r5284
    have ha5 : rho 43513 * (1 - rho 43511) = rho 43508 - rho 43509 - rho 43510 := by
      linear_combination r5285
    have haddx :
        rho 43512 * (1 + 3021 * (rho 43506 * seg45AccX176 rho) * (rho 43505 * seg45AccY176 rho)) =
          rho 43506 * seg45AccX176 rho + rho 43505 * seg45AccY176 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43513 * (1 - 3021 * (rho 43506 * seg45AccX176 rho) * (rho 43505 * seg45AccY176 rho)) =
          (-1) * (rho 43506 * seg45AccX176 rho) - rho 43505 * seg45AccY176 rho +
            (seg45AccY176 rho - seg45AccX176 rho * (-1)) * (rho 43505 + rho 43506) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43513 * (1 - rho 43511) = rho 43508 - rho 43509 - rho 43510 := ha5
        _ = (-1) * rho 43509 - rho 43510 + (seg45AccY176 rho - seg45AccX176 rho * (-1)) * (rho 43505 + rho 43506) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX177 rho = seg45AccX176 rho - Bool.toZMod bit * (seg45AccX176 rho - rho 43512) := by
      have hd : rho 43514 = Bool.toZMod bit * (rho 43512 - seg45AccX176 rho) := by
        rw [← hbit, seg45LadderFlatX176_eq]
        unfold seg45LadderFlatX176
        linear_combination -r5286
      unfold seg45AccX177
      linear_combination hd
    have hsely : seg45AccY177 rho = seg45AccY176 rho - Bool.toZMod bit * (seg45AccY176 rho - rho 43513) := by
      have hd : rho 43515 = Bool.toZMod bit * (rho 43513 - seg45AccY176 rho) := by
        rw [← hbit, seg45LadderFlatY176_eq]
        unfold seg45LadderFlatY176
        linear_combination -r5287
      unfold seg45AccY177
      linear_combination hd
    have hd0 : rho 43505 * rho 43506 = rho 43516 := by linear_combination r5288
    have hd1 : rho 43505 * rho 43505 = rho 43517 := by linear_combination r5289
    have hd2 : rho 43506 * rho 43506 = rho 43518 := by linear_combination r5290
    have hd3 : rho 43519 * (rho 43506 * rho 43506 + rho 43505 * rho 43505 * (-1)) = 2 * (rho 43505 * rho 43506) := by
      rw [hd0, hd1, hd2]
      linear_combination r5291
    have hd4 : rho 43520 * (2 - (rho 43506 * rho 43506 + rho 43505 * rho 43505 * (-1))) = rho 43506 * rho 43506 - rho 43505 * rho 43505 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5292
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
      ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩
      ⟨(rho 43512 : Seg45.F), (rho 43513 : Seg45.F)⟩
      ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
      ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung176

theorem seg45_rung177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41125 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
        ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩
        ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
        ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5293 Seg45.relationLc920 Seg45.relationLc920Part0 Seg45.relationLc920Part1 Seg45.relationLc920Part2 Seg45.relationLc920Part3 Seg45.relationLc920Part4 Seg45.relationLc920Part5 Seg45.relationLc920Part6 Seg45.relationLc920Part7 Seg45.relationLc920Part8 Seg45.relationLc920Part9 Seg45.relationLc920Part10 Seg45.relationLc920Part11 at r5293
  unfold Seg45.relationRow5294 at r5294
  unfold Seg45.relationRow5295 Seg45.relationLc921 Seg45.relationLc921Part0 Seg45.relationLc921Part1 Seg45.relationLc921Part2 Seg45.relationLc921Part3 Seg45.relationLc921Part4 Seg45.relationLc921Part5 at r5295
  unfold Seg45.relationRow5296 Seg45.relationLc922 Seg45.relationLc922Part0 Seg45.relationLc922Part1 Seg45.relationLc922Part2 Seg45.relationLc922Part3 Seg45.relationLc922Part4 Seg45.relationLc922Part5 at r5296
  unfold Seg45.relationRow5297 at r5297
  unfold Seg45.relationRow5298 at r5298
  unfold Seg45.relationRow5299 at r5299
  unfold Seg45.relationRow5300 Seg45.relationLc923 Seg45.relationLc923Part0 Seg45.relationLc923Part1 Seg45.relationLc923Part2 Seg45.relationLc923Part3 Seg45.relationLc923Part4 Seg45.relationLc923Part5 at r5300
  unfold Seg45.relationRow5301 Seg45.relationLc924 Seg45.relationLc924Part0 Seg45.relationLc924Part1 Seg45.relationLc924Part2 Seg45.relationLc924Part3 Seg45.relationLc924Part4 Seg45.relationLc924Part5 at r5301
  unfold Seg45.relationRow5302 at r5302
  unfold Seg45.relationRow5303 at r5303
  unfold Seg45.relationRow5304 at r5304
  unfold Seg45.relationRow5305 at r5305
  unfold Seg45.relationRow5306 at r5306
  have hrung177 (bit : Bool) (hbit : rho 41125 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
        ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩
        ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
        ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩ := by
    have hsum : seg45AccX177 rho + seg45AccY177 rho = rho 43521 := by
      rw [seg45LadderFlatX177_eq, seg45LadderFlatY177_eq]
      unfold seg45LadderFlatX177 seg45LadderFlatY177
      linear_combination r5293
    have ha0 : (rho 43519 + rho 43520) * (seg45AccX177 rho + seg45AccY177 rho) = rho 43522 := by
      rw [hsum]
      linear_combination r5294
    have ha1 : rho 43520 * seg45AccX177 rho = rho 43523 := by
      rw [seg45LadderFlatX177_eq]
      unfold seg45LadderFlatX177
      linear_combination r5295
    have ha2 : rho 43519 * seg45AccY177 rho = rho 43524 := by
      rw [seg45LadderFlatY177_eq]
      unfold seg45LadderFlatY177
      linear_combination r5296
    have ha3 : 3021 * rho 43523 * rho 43524 = rho 43525 := by
      linear_combination r5297
    have ha4 : rho 43526 * (1 + rho 43525) = rho 43523 + rho 43524 := by
      linear_combination r5298
    have ha5 : rho 43527 * (1 - rho 43525) = rho 43522 - rho 43523 - rho 43524 := by
      linear_combination r5299
    have haddx :
        rho 43526 * (1 + 3021 * (rho 43520 * seg45AccX177 rho) * (rho 43519 * seg45AccY177 rho)) =
          rho 43520 * seg45AccX177 rho + rho 43519 * seg45AccY177 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43527 * (1 - 3021 * (rho 43520 * seg45AccX177 rho) * (rho 43519 * seg45AccY177 rho)) =
          (-1) * (rho 43520 * seg45AccX177 rho) - rho 43519 * seg45AccY177 rho +
            (seg45AccY177 rho - seg45AccX177 rho * (-1)) * (rho 43519 + rho 43520) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43527 * (1 - rho 43525) = rho 43522 - rho 43523 - rho 43524 := ha5
        _ = (-1) * rho 43523 - rho 43524 + (seg45AccY177 rho - seg45AccX177 rho * (-1)) * (rho 43519 + rho 43520) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX178 rho = seg45AccX177 rho - Bool.toZMod bit * (seg45AccX177 rho - rho 43526) := by
      have hd : rho 43528 = Bool.toZMod bit * (rho 43526 - seg45AccX177 rho) := by
        rw [← hbit, seg45LadderFlatX177_eq]
        unfold seg45LadderFlatX177
        linear_combination -r5300
      unfold seg45AccX178
      linear_combination hd
    have hsely : seg45AccY178 rho = seg45AccY177 rho - Bool.toZMod bit * (seg45AccY177 rho - rho 43527) := by
      have hd : rho 43529 = Bool.toZMod bit * (rho 43527 - seg45AccY177 rho) := by
        rw [← hbit, seg45LadderFlatY177_eq]
        unfold seg45LadderFlatY177
        linear_combination -r5301
      unfold seg45AccY178
      linear_combination hd
    have hd0 : rho 43519 * rho 43520 = rho 43530 := by linear_combination r5302
    have hd1 : rho 43519 * rho 43519 = rho 43531 := by linear_combination r5303
    have hd2 : rho 43520 * rho 43520 = rho 43532 := by linear_combination r5304
    have hd3 : rho 43533 * (rho 43520 * rho 43520 + rho 43519 * rho 43519 * (-1)) = 2 * (rho 43519 * rho 43520) := by
      rw [hd0, hd1, hd2]
      linear_combination r5305
    have hd4 : rho 43534 * (2 - (rho 43520 * rho 43520 + rho 43519 * rho 43519 * (-1))) = rho 43520 * rho 43520 - rho 43519 * rho 43519 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5306
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX177 rho : Seg45.F), (seg45AccY177 rho : Seg45.F)⟩
      ⟨(rho 43519 : Seg45.F), (rho 43520 : Seg45.F)⟩
      ⟨(rho 43526 : Seg45.F), (rho 43527 : Seg45.F)⟩
      ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
      ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung177

theorem seg45_rung178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41126 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
        ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩
        ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
        ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5307 Seg45.relationLc925 Seg45.relationLc925Part0 Seg45.relationLc925Part1 Seg45.relationLc925Part2 Seg45.relationLc925Part3 Seg45.relationLc925Part4 Seg45.relationLc925Part5 Seg45.relationLc925Part6 Seg45.relationLc925Part7 Seg45.relationLc925Part8 Seg45.relationLc925Part9 Seg45.relationLc925Part10 Seg45.relationLc925Part11 at r5307
  unfold Seg45.relationRow5308 at r5308
  unfold Seg45.relationRow5309 Seg45.relationLc926 Seg45.relationLc926Part0 Seg45.relationLc926Part1 Seg45.relationLc926Part2 Seg45.relationLc926Part3 Seg45.relationLc926Part4 Seg45.relationLc926Part5 at r5309
  unfold Seg45.relationRow5310 Seg45.relationLc927 Seg45.relationLc927Part0 Seg45.relationLc927Part1 Seg45.relationLc927Part2 Seg45.relationLc927Part3 Seg45.relationLc927Part4 Seg45.relationLc927Part5 at r5310
  unfold Seg45.relationRow5311 at r5311
  unfold Seg45.relationRow5312 at r5312
  unfold Seg45.relationRow5313 at r5313
  unfold Seg45.relationRow5314 Seg45.relationLc928 Seg45.relationLc928Part0 Seg45.relationLc928Part1 Seg45.relationLc928Part2 Seg45.relationLc928Part3 Seg45.relationLc928Part4 Seg45.relationLc928Part5 at r5314
  unfold Seg45.relationRow5315 Seg45.relationLc929 Seg45.relationLc929Part0 Seg45.relationLc929Part1 Seg45.relationLc929Part2 Seg45.relationLc929Part3 Seg45.relationLc929Part4 Seg45.relationLc929Part5 at r5315
  unfold Seg45.relationRow5316 at r5316
  unfold Seg45.relationRow5317 at r5317
  unfold Seg45.relationRow5318 at r5318
  unfold Seg45.relationRow5319 at r5319
  unfold Seg45.relationRow5320 at r5320
  have hrung178 (bit : Bool) (hbit : rho 41126 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
        ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩
        ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
        ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩ := by
    have hsum : seg45AccX178 rho + seg45AccY178 rho = rho 43535 := by
      rw [seg45LadderFlatX178_eq, seg45LadderFlatY178_eq]
      unfold seg45LadderFlatX178 seg45LadderFlatY178
      linear_combination r5307
    have ha0 : (rho 43533 + rho 43534) * (seg45AccX178 rho + seg45AccY178 rho) = rho 43536 := by
      rw [hsum]
      linear_combination r5308
    have ha1 : rho 43534 * seg45AccX178 rho = rho 43537 := by
      rw [seg45LadderFlatX178_eq]
      unfold seg45LadderFlatX178
      linear_combination r5309
    have ha2 : rho 43533 * seg45AccY178 rho = rho 43538 := by
      rw [seg45LadderFlatY178_eq]
      unfold seg45LadderFlatY178
      linear_combination r5310
    have ha3 : 3021 * rho 43537 * rho 43538 = rho 43539 := by
      linear_combination r5311
    have ha4 : rho 43540 * (1 + rho 43539) = rho 43537 + rho 43538 := by
      linear_combination r5312
    have ha5 : rho 43541 * (1 - rho 43539) = rho 43536 - rho 43537 - rho 43538 := by
      linear_combination r5313
    have haddx :
        rho 43540 * (1 + 3021 * (rho 43534 * seg45AccX178 rho) * (rho 43533 * seg45AccY178 rho)) =
          rho 43534 * seg45AccX178 rho + rho 43533 * seg45AccY178 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43541 * (1 - 3021 * (rho 43534 * seg45AccX178 rho) * (rho 43533 * seg45AccY178 rho)) =
          (-1) * (rho 43534 * seg45AccX178 rho) - rho 43533 * seg45AccY178 rho +
            (seg45AccY178 rho - seg45AccX178 rho * (-1)) * (rho 43533 + rho 43534) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43541 * (1 - rho 43539) = rho 43536 - rho 43537 - rho 43538 := ha5
        _ = (-1) * rho 43537 - rho 43538 + (seg45AccY178 rho - seg45AccX178 rho * (-1)) * (rho 43533 + rho 43534) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX179 rho = seg45AccX178 rho - Bool.toZMod bit * (seg45AccX178 rho - rho 43540) := by
      have hd : rho 43542 = Bool.toZMod bit * (rho 43540 - seg45AccX178 rho) := by
        rw [← hbit, seg45LadderFlatX178_eq]
        unfold seg45LadderFlatX178
        linear_combination -r5314
      unfold seg45AccX179
      linear_combination hd
    have hsely : seg45AccY179 rho = seg45AccY178 rho - Bool.toZMod bit * (seg45AccY178 rho - rho 43541) := by
      have hd : rho 43543 = Bool.toZMod bit * (rho 43541 - seg45AccY178 rho) := by
        rw [← hbit, seg45LadderFlatY178_eq]
        unfold seg45LadderFlatY178
        linear_combination -r5315
      unfold seg45AccY179
      linear_combination hd
    have hd0 : rho 43533 * rho 43534 = rho 43544 := by linear_combination r5316
    have hd1 : rho 43533 * rho 43533 = rho 43545 := by linear_combination r5317
    have hd2 : rho 43534 * rho 43534 = rho 43546 := by linear_combination r5318
    have hd3 : rho 43547 * (rho 43534 * rho 43534 + rho 43533 * rho 43533 * (-1)) = 2 * (rho 43533 * rho 43534) := by
      rw [hd0, hd1, hd2]
      linear_combination r5319
    have hd4 : rho 43548 * (2 - (rho 43534 * rho 43534 + rho 43533 * rho 43533 * (-1))) = rho 43534 * rho 43534 - rho 43533 * rho 43533 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5320
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX178 rho : Seg45.F), (seg45AccY178 rho : Seg45.F)⟩
      ⟨(rho 43533 : Seg45.F), (rho 43534 : Seg45.F)⟩
      ⟨(rho 43540 : Seg45.F), (rho 43541 : Seg45.F)⟩
      ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
      ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung178

theorem seg45_rung179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41127 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
        ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩
        ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
        ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5321 Seg45.relationLc930 Seg45.relationLc930Part0 Seg45.relationLc930Part1 Seg45.relationLc930Part2 Seg45.relationLc930Part3 Seg45.relationLc930Part4 Seg45.relationLc930Part5 Seg45.relationLc930Part6 Seg45.relationLc930Part7 Seg45.relationLc930Part8 Seg45.relationLc930Part9 Seg45.relationLc930Part10 Seg45.relationLc930Part11 at r5321
  unfold Seg45.relationRow5322 at r5322
  unfold Seg45.relationRow5323 Seg45.relationLc931 Seg45.relationLc931Part0 Seg45.relationLc931Part1 Seg45.relationLc931Part2 Seg45.relationLc931Part3 Seg45.relationLc931Part4 Seg45.relationLc931Part5 at r5323
  unfold Seg45.relationRow5324 Seg45.relationLc932 Seg45.relationLc932Part0 Seg45.relationLc932Part1 Seg45.relationLc932Part2 Seg45.relationLc932Part3 Seg45.relationLc932Part4 Seg45.relationLc932Part5 at r5324
  unfold Seg45.relationRow5325 at r5325
  unfold Seg45.relationRow5326 at r5326
  unfold Seg45.relationRow5327 at r5327
  unfold Seg45.relationRow5328 Seg45.relationLc933 Seg45.relationLc933Part0 Seg45.relationLc933Part1 Seg45.relationLc933Part2 Seg45.relationLc933Part3 Seg45.relationLc933Part4 Seg45.relationLc933Part5 at r5328
  unfold Seg45.relationRow5329 Seg45.relationLc934 Seg45.relationLc934Part0 Seg45.relationLc934Part1 Seg45.relationLc934Part2 Seg45.relationLc934Part3 Seg45.relationLc934Part4 Seg45.relationLc934Part5 at r5329
  unfold Seg45.relationRow5330 at r5330
  unfold Seg45.relationRow5331 at r5331
  unfold Seg45.relationRow5332 at r5332
  unfold Seg45.relationRow5333 at r5333
  unfold Seg45.relationRow5334 at r5334
  have hrung179 (bit : Bool) (hbit : rho 41127 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
        ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩
        ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
        ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩ := by
    have hsum : seg45AccX179 rho + seg45AccY179 rho = rho 43549 := by
      rw [seg45LadderFlatX179_eq, seg45LadderFlatY179_eq]
      unfold seg45LadderFlatX179 seg45LadderFlatY179
      linear_combination r5321
    have ha0 : (rho 43547 + rho 43548) * (seg45AccX179 rho + seg45AccY179 rho) = rho 43550 := by
      rw [hsum]
      linear_combination r5322
    have ha1 : rho 43548 * seg45AccX179 rho = rho 43551 := by
      rw [seg45LadderFlatX179_eq]
      unfold seg45LadderFlatX179
      linear_combination r5323
    have ha2 : rho 43547 * seg45AccY179 rho = rho 43552 := by
      rw [seg45LadderFlatY179_eq]
      unfold seg45LadderFlatY179
      linear_combination r5324
    have ha3 : 3021 * rho 43551 * rho 43552 = rho 43553 := by
      linear_combination r5325
    have ha4 : rho 43554 * (1 + rho 43553) = rho 43551 + rho 43552 := by
      linear_combination r5326
    have ha5 : rho 43555 * (1 - rho 43553) = rho 43550 - rho 43551 - rho 43552 := by
      linear_combination r5327
    have haddx :
        rho 43554 * (1 + 3021 * (rho 43548 * seg45AccX179 rho) * (rho 43547 * seg45AccY179 rho)) =
          rho 43548 * seg45AccX179 rho + rho 43547 * seg45AccY179 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43555 * (1 - 3021 * (rho 43548 * seg45AccX179 rho) * (rho 43547 * seg45AccY179 rho)) =
          (-1) * (rho 43548 * seg45AccX179 rho) - rho 43547 * seg45AccY179 rho +
            (seg45AccY179 rho - seg45AccX179 rho * (-1)) * (rho 43547 + rho 43548) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43555 * (1 - rho 43553) = rho 43550 - rho 43551 - rho 43552 := ha5
        _ = (-1) * rho 43551 - rho 43552 + (seg45AccY179 rho - seg45AccX179 rho * (-1)) * (rho 43547 + rho 43548) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX180 rho = seg45AccX179 rho - Bool.toZMod bit * (seg45AccX179 rho - rho 43554) := by
      have hd : rho 43556 = Bool.toZMod bit * (rho 43554 - seg45AccX179 rho) := by
        rw [← hbit, seg45LadderFlatX179_eq]
        unfold seg45LadderFlatX179
        linear_combination -r5328
      unfold seg45AccX180
      linear_combination hd
    have hsely : seg45AccY180 rho = seg45AccY179 rho - Bool.toZMod bit * (seg45AccY179 rho - rho 43555) := by
      have hd : rho 43557 = Bool.toZMod bit * (rho 43555 - seg45AccY179 rho) := by
        rw [← hbit, seg45LadderFlatY179_eq]
        unfold seg45LadderFlatY179
        linear_combination -r5329
      unfold seg45AccY180
      linear_combination hd
    have hd0 : rho 43547 * rho 43548 = rho 43558 := by linear_combination r5330
    have hd1 : rho 43547 * rho 43547 = rho 43559 := by linear_combination r5331
    have hd2 : rho 43548 * rho 43548 = rho 43560 := by linear_combination r5332
    have hd3 : rho 43561 * (rho 43548 * rho 43548 + rho 43547 * rho 43547 * (-1)) = 2 * (rho 43547 * rho 43548) := by
      rw [hd0, hd1, hd2]
      linear_combination r5333
    have hd4 : rho 43562 * (2 - (rho 43548 * rho 43548 + rho 43547 * rho 43547 * (-1))) = rho 43548 * rho 43548 - rho 43547 * rho 43547 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5334
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX179 rho : Seg45.F), (seg45AccY179 rho : Seg45.F)⟩
      ⟨(rho 43547 : Seg45.F), (rho 43548 : Seg45.F)⟩
      ⟨(rho 43554 : Seg45.F), (rho 43555 : Seg45.F)⟩
      ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
      ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung179

theorem seg45_rung180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41128 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
        ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩
        ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
        ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5335 Seg45.relationLc935 Seg45.relationLc935Part0 Seg45.relationLc935Part1 Seg45.relationLc935Part2 Seg45.relationLc935Part3 Seg45.relationLc935Part4 Seg45.relationLc935Part5 Seg45.relationLc935Part6 Seg45.relationLc935Part7 Seg45.relationLc935Part8 Seg45.relationLc935Part9 Seg45.relationLc935Part10 Seg45.relationLc935Part11 at r5335
  unfold Seg45.relationRow5336 at r5336
  unfold Seg45.relationRow5337 Seg45.relationLc936 Seg45.relationLc936Part0 Seg45.relationLc936Part1 Seg45.relationLc936Part2 Seg45.relationLc936Part3 Seg45.relationLc936Part4 Seg45.relationLc936Part5 at r5337
  unfold Seg45.relationRow5338 Seg45.relationLc937 Seg45.relationLc937Part0 Seg45.relationLc937Part1 Seg45.relationLc937Part2 Seg45.relationLc937Part3 Seg45.relationLc937Part4 Seg45.relationLc937Part5 at r5338
  unfold Seg45.relationRow5339 at r5339
  unfold Seg45.relationRow5340 at r5340
  unfold Seg45.relationRow5341 at r5341
  unfold Seg45.relationRow5342 Seg45.relationLc938 Seg45.relationLc938Part0 Seg45.relationLc938Part1 Seg45.relationLc938Part2 Seg45.relationLc938Part3 Seg45.relationLc938Part4 Seg45.relationLc938Part5 at r5342
  unfold Seg45.relationRow5343 Seg45.relationLc939 Seg45.relationLc939Part0 Seg45.relationLc939Part1 Seg45.relationLc939Part2 Seg45.relationLc939Part3 Seg45.relationLc939Part4 Seg45.relationLc939Part5 at r5343
  unfold Seg45.relationRow5344 at r5344
  unfold Seg45.relationRow5345 at r5345
  unfold Seg45.relationRow5346 at r5346
  unfold Seg45.relationRow5347 at r5347
  unfold Seg45.relationRow5348 at r5348
  have hrung180 (bit : Bool) (hbit : rho 41128 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
        ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩
        ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
        ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩ := by
    have hsum : seg45AccX180 rho + seg45AccY180 rho = rho 43563 := by
      rw [seg45LadderFlatX180_eq, seg45LadderFlatY180_eq]
      unfold seg45LadderFlatX180 seg45LadderFlatY180
      linear_combination r5335
    have ha0 : (rho 43561 + rho 43562) * (seg45AccX180 rho + seg45AccY180 rho) = rho 43564 := by
      rw [hsum]
      linear_combination r5336
    have ha1 : rho 43562 * seg45AccX180 rho = rho 43565 := by
      rw [seg45LadderFlatX180_eq]
      unfold seg45LadderFlatX180
      linear_combination r5337
    have ha2 : rho 43561 * seg45AccY180 rho = rho 43566 := by
      rw [seg45LadderFlatY180_eq]
      unfold seg45LadderFlatY180
      linear_combination r5338
    have ha3 : 3021 * rho 43565 * rho 43566 = rho 43567 := by
      linear_combination r5339
    have ha4 : rho 43568 * (1 + rho 43567) = rho 43565 + rho 43566 := by
      linear_combination r5340
    have ha5 : rho 43569 * (1 - rho 43567) = rho 43564 - rho 43565 - rho 43566 := by
      linear_combination r5341
    have haddx :
        rho 43568 * (1 + 3021 * (rho 43562 * seg45AccX180 rho) * (rho 43561 * seg45AccY180 rho)) =
          rho 43562 * seg45AccX180 rho + rho 43561 * seg45AccY180 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43569 * (1 - 3021 * (rho 43562 * seg45AccX180 rho) * (rho 43561 * seg45AccY180 rho)) =
          (-1) * (rho 43562 * seg45AccX180 rho) - rho 43561 * seg45AccY180 rho +
            (seg45AccY180 rho - seg45AccX180 rho * (-1)) * (rho 43561 + rho 43562) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43569 * (1 - rho 43567) = rho 43564 - rho 43565 - rho 43566 := ha5
        _ = (-1) * rho 43565 - rho 43566 + (seg45AccY180 rho - seg45AccX180 rho * (-1)) * (rho 43561 + rho 43562) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX181 rho = seg45AccX180 rho - Bool.toZMod bit * (seg45AccX180 rho - rho 43568) := by
      have hd : rho 43570 = Bool.toZMod bit * (rho 43568 - seg45AccX180 rho) := by
        rw [← hbit, seg45LadderFlatX180_eq]
        unfold seg45LadderFlatX180
        linear_combination -r5342
      unfold seg45AccX181
      linear_combination hd
    have hsely : seg45AccY181 rho = seg45AccY180 rho - Bool.toZMod bit * (seg45AccY180 rho - rho 43569) := by
      have hd : rho 43571 = Bool.toZMod bit * (rho 43569 - seg45AccY180 rho) := by
        rw [← hbit, seg45LadderFlatY180_eq]
        unfold seg45LadderFlatY180
        linear_combination -r5343
      unfold seg45AccY181
      linear_combination hd
    have hd0 : rho 43561 * rho 43562 = rho 43572 := by linear_combination r5344
    have hd1 : rho 43561 * rho 43561 = rho 43573 := by linear_combination r5345
    have hd2 : rho 43562 * rho 43562 = rho 43574 := by linear_combination r5346
    have hd3 : rho 43575 * (rho 43562 * rho 43562 + rho 43561 * rho 43561 * (-1)) = 2 * (rho 43561 * rho 43562) := by
      rw [hd0, hd1, hd2]
      linear_combination r5347
    have hd4 : rho 43576 * (2 - (rho 43562 * rho 43562 + rho 43561 * rho 43561 * (-1))) = rho 43562 * rho 43562 - rho 43561 * rho 43561 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5348
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX180 rho : Seg45.F), (seg45AccY180 rho : Seg45.F)⟩
      ⟨(rho 43561 : Seg45.F), (rho 43562 : Seg45.F)⟩
      ⟨(rho 43568 : Seg45.F), (rho 43569 : Seg45.F)⟩
      ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
      ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung180

theorem seg45_rung181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41129 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
        ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩
        ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
        ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5349 Seg45.relationLc940 Seg45.relationLc940Part0 Seg45.relationLc940Part1 Seg45.relationLc940Part2 Seg45.relationLc940Part3 Seg45.relationLc940Part4 Seg45.relationLc940Part5 Seg45.relationLc940Part6 Seg45.relationLc940Part7 Seg45.relationLc940Part8 Seg45.relationLc940Part9 Seg45.relationLc940Part10 Seg45.relationLc940Part11 at r5349
  unfold Seg45.relationRow5350 at r5350
  unfold Seg45.relationRow5351 Seg45.relationLc941 Seg45.relationLc941Part0 Seg45.relationLc941Part1 Seg45.relationLc941Part2 Seg45.relationLc941Part3 Seg45.relationLc941Part4 Seg45.relationLc941Part5 at r5351
  unfold Seg45.relationRow5352 Seg45.relationLc942 Seg45.relationLc942Part0 Seg45.relationLc942Part1 Seg45.relationLc942Part2 Seg45.relationLc942Part3 Seg45.relationLc942Part4 Seg45.relationLc942Part5 at r5352
  unfold Seg45.relationRow5353 at r5353
  unfold Seg45.relationRow5354 at r5354
  unfold Seg45.relationRow5355 at r5355
  unfold Seg45.relationRow5356 Seg45.relationLc943 Seg45.relationLc943Part0 Seg45.relationLc943Part1 Seg45.relationLc943Part2 Seg45.relationLc943Part3 Seg45.relationLc943Part4 Seg45.relationLc943Part5 at r5356
  unfold Seg45.relationRow5357 Seg45.relationLc944 Seg45.relationLc944Part0 Seg45.relationLc944Part1 Seg45.relationLc944Part2 Seg45.relationLc944Part3 Seg45.relationLc944Part4 Seg45.relationLc944Part5 at r5357
  unfold Seg45.relationRow5358 at r5358
  unfold Seg45.relationRow5359 at r5359
  unfold Seg45.relationRow5360 at r5360
  unfold Seg45.relationRow5361 at r5361
  unfold Seg45.relationRow5362 at r5362
  have hrung181 (bit : Bool) (hbit : rho 41129 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
        ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩
        ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
        ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩ := by
    have hsum : seg45AccX181 rho + seg45AccY181 rho = rho 43577 := by
      rw [seg45LadderFlatX181_eq, seg45LadderFlatY181_eq]
      unfold seg45LadderFlatX181 seg45LadderFlatY181
      linear_combination r5349
    have ha0 : (rho 43575 + rho 43576) * (seg45AccX181 rho + seg45AccY181 rho) = rho 43578 := by
      rw [hsum]
      linear_combination r5350
    have ha1 : rho 43576 * seg45AccX181 rho = rho 43579 := by
      rw [seg45LadderFlatX181_eq]
      unfold seg45LadderFlatX181
      linear_combination r5351
    have ha2 : rho 43575 * seg45AccY181 rho = rho 43580 := by
      rw [seg45LadderFlatY181_eq]
      unfold seg45LadderFlatY181
      linear_combination r5352
    have ha3 : 3021 * rho 43579 * rho 43580 = rho 43581 := by
      linear_combination r5353
    have ha4 : rho 43582 * (1 + rho 43581) = rho 43579 + rho 43580 := by
      linear_combination r5354
    have ha5 : rho 43583 * (1 - rho 43581) = rho 43578 - rho 43579 - rho 43580 := by
      linear_combination r5355
    have haddx :
        rho 43582 * (1 + 3021 * (rho 43576 * seg45AccX181 rho) * (rho 43575 * seg45AccY181 rho)) =
          rho 43576 * seg45AccX181 rho + rho 43575 * seg45AccY181 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43583 * (1 - 3021 * (rho 43576 * seg45AccX181 rho) * (rho 43575 * seg45AccY181 rho)) =
          (-1) * (rho 43576 * seg45AccX181 rho) - rho 43575 * seg45AccY181 rho +
            (seg45AccY181 rho - seg45AccX181 rho * (-1)) * (rho 43575 + rho 43576) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43583 * (1 - rho 43581) = rho 43578 - rho 43579 - rho 43580 := ha5
        _ = (-1) * rho 43579 - rho 43580 + (seg45AccY181 rho - seg45AccX181 rho * (-1)) * (rho 43575 + rho 43576) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX182 rho = seg45AccX181 rho - Bool.toZMod bit * (seg45AccX181 rho - rho 43582) := by
      have hd : rho 43584 = Bool.toZMod bit * (rho 43582 - seg45AccX181 rho) := by
        rw [← hbit, seg45LadderFlatX181_eq]
        unfold seg45LadderFlatX181
        linear_combination -r5356
      unfold seg45AccX182
      linear_combination hd
    have hsely : seg45AccY182 rho = seg45AccY181 rho - Bool.toZMod bit * (seg45AccY181 rho - rho 43583) := by
      have hd : rho 43585 = Bool.toZMod bit * (rho 43583 - seg45AccY181 rho) := by
        rw [← hbit, seg45LadderFlatY181_eq]
        unfold seg45LadderFlatY181
        linear_combination -r5357
      unfold seg45AccY182
      linear_combination hd
    have hd0 : rho 43575 * rho 43576 = rho 43586 := by linear_combination r5358
    have hd1 : rho 43575 * rho 43575 = rho 43587 := by linear_combination r5359
    have hd2 : rho 43576 * rho 43576 = rho 43588 := by linear_combination r5360
    have hd3 : rho 43589 * (rho 43576 * rho 43576 + rho 43575 * rho 43575 * (-1)) = 2 * (rho 43575 * rho 43576) := by
      rw [hd0, hd1, hd2]
      linear_combination r5361
    have hd4 : rho 43590 * (2 - (rho 43576 * rho 43576 + rho 43575 * rho 43575 * (-1))) = rho 43576 * rho 43576 - rho 43575 * rho 43575 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX181 rho : Seg45.F), (seg45AccY181 rho : Seg45.F)⟩
      ⟨(rho 43575 : Seg45.F), (rho 43576 : Seg45.F)⟩
      ⟨(rho 43582 : Seg45.F), (rho 43583 : Seg45.F)⟩
      ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
      ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung181

theorem seg45_rung182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41130 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
        ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩
        ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
        ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5363 Seg45.relationLc945 Seg45.relationLc945Part0 Seg45.relationLc945Part1 Seg45.relationLc945Part2 Seg45.relationLc945Part3 Seg45.relationLc945Part4 Seg45.relationLc945Part5 Seg45.relationLc945Part6 Seg45.relationLc945Part7 Seg45.relationLc945Part8 Seg45.relationLc945Part9 Seg45.relationLc945Part10 Seg45.relationLc945Part11 at r5363
  unfold Seg45.relationRow5364 at r5364
  unfold Seg45.relationRow5365 Seg45.relationLc946 Seg45.relationLc946Part0 Seg45.relationLc946Part1 Seg45.relationLc946Part2 Seg45.relationLc946Part3 Seg45.relationLc946Part4 Seg45.relationLc946Part5 at r5365
  unfold Seg45.relationRow5366 Seg45.relationLc947 Seg45.relationLc947Part0 Seg45.relationLc947Part1 Seg45.relationLc947Part2 Seg45.relationLc947Part3 Seg45.relationLc947Part4 Seg45.relationLc947Part5 at r5366
  unfold Seg45.relationRow5367 at r5367
  unfold Seg45.relationRow5368 at r5368
  unfold Seg45.relationRow5369 at r5369
  unfold Seg45.relationRow5370 Seg45.relationLc948 Seg45.relationLc948Part0 Seg45.relationLc948Part1 Seg45.relationLc948Part2 Seg45.relationLc948Part3 Seg45.relationLc948Part4 Seg45.relationLc948Part5 at r5370
  unfold Seg45.relationRow5371 Seg45.relationLc949 Seg45.relationLc949Part0 Seg45.relationLc949Part1 Seg45.relationLc949Part2 Seg45.relationLc949Part3 Seg45.relationLc949Part4 Seg45.relationLc949Part5 at r5371
  unfold Seg45.relationRow5372 at r5372
  unfold Seg45.relationRow5373 at r5373
  unfold Seg45.relationRow5374 at r5374
  unfold Seg45.relationRow5375 at r5375
  unfold Seg45.relationRow5376 at r5376
  have hrung182 (bit : Bool) (hbit : rho 41130 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
        ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩
        ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
        ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩ := by
    have hsum : seg45AccX182 rho + seg45AccY182 rho = rho 43591 := by
      rw [seg45LadderFlatX182_eq, seg45LadderFlatY182_eq]
      unfold seg45LadderFlatX182 seg45LadderFlatY182
      linear_combination r5363
    have ha0 : (rho 43589 + rho 43590) * (seg45AccX182 rho + seg45AccY182 rho) = rho 43592 := by
      rw [hsum]
      linear_combination r5364
    have ha1 : rho 43590 * seg45AccX182 rho = rho 43593 := by
      rw [seg45LadderFlatX182_eq]
      unfold seg45LadderFlatX182
      linear_combination r5365
    have ha2 : rho 43589 * seg45AccY182 rho = rho 43594 := by
      rw [seg45LadderFlatY182_eq]
      unfold seg45LadderFlatY182
      linear_combination r5366
    have ha3 : 3021 * rho 43593 * rho 43594 = rho 43595 := by
      linear_combination r5367
    have ha4 : rho 43596 * (1 + rho 43595) = rho 43593 + rho 43594 := by
      linear_combination r5368
    have ha5 : rho 43597 * (1 - rho 43595) = rho 43592 - rho 43593 - rho 43594 := by
      linear_combination r5369
    have haddx :
        rho 43596 * (1 + 3021 * (rho 43590 * seg45AccX182 rho) * (rho 43589 * seg45AccY182 rho)) =
          rho 43590 * seg45AccX182 rho + rho 43589 * seg45AccY182 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43597 * (1 - 3021 * (rho 43590 * seg45AccX182 rho) * (rho 43589 * seg45AccY182 rho)) =
          (-1) * (rho 43590 * seg45AccX182 rho) - rho 43589 * seg45AccY182 rho +
            (seg45AccY182 rho - seg45AccX182 rho * (-1)) * (rho 43589 + rho 43590) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43597 * (1 - rho 43595) = rho 43592 - rho 43593 - rho 43594 := ha5
        _ = (-1) * rho 43593 - rho 43594 + (seg45AccY182 rho - seg45AccX182 rho * (-1)) * (rho 43589 + rho 43590) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX183 rho = seg45AccX182 rho - Bool.toZMod bit * (seg45AccX182 rho - rho 43596) := by
      have hd : rho 43598 = Bool.toZMod bit * (rho 43596 - seg45AccX182 rho) := by
        rw [← hbit, seg45LadderFlatX182_eq]
        unfold seg45LadderFlatX182
        linear_combination -r5370
      unfold seg45AccX183
      linear_combination hd
    have hsely : seg45AccY183 rho = seg45AccY182 rho - Bool.toZMod bit * (seg45AccY182 rho - rho 43597) := by
      have hd : rho 43599 = Bool.toZMod bit * (rho 43597 - seg45AccY182 rho) := by
        rw [← hbit, seg45LadderFlatY182_eq]
        unfold seg45LadderFlatY182
        linear_combination -r5371
      unfold seg45AccY183
      linear_combination hd
    have hd0 : rho 43589 * rho 43590 = rho 43600 := by linear_combination r5372
    have hd1 : rho 43589 * rho 43589 = rho 43601 := by linear_combination r5373
    have hd2 : rho 43590 * rho 43590 = rho 43602 := by linear_combination r5374
    have hd3 : rho 43603 * (rho 43590 * rho 43590 + rho 43589 * rho 43589 * (-1)) = 2 * (rho 43589 * rho 43590) := by
      rw [hd0, hd1, hd2]
      linear_combination r5375
    have hd4 : rho 43604 * (2 - (rho 43590 * rho 43590 + rho 43589 * rho 43589 * (-1))) = rho 43590 * rho 43590 - rho 43589 * rho 43589 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX182 rho : Seg45.F), (seg45AccY182 rho : Seg45.F)⟩
      ⟨(rho 43589 : Seg45.F), (rho 43590 : Seg45.F)⟩
      ⟨(rho 43596 : Seg45.F), (rho 43597 : Seg45.F)⟩
      ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
      ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung182

theorem seg45_rung183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41131 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
        ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩
        ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
        ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5377 Seg45.relationLc950 Seg45.relationLc950Part0 Seg45.relationLc950Part1 Seg45.relationLc950Part2 Seg45.relationLc950Part3 Seg45.relationLc950Part4 Seg45.relationLc950Part5 Seg45.relationLc950Part6 Seg45.relationLc950Part7 Seg45.relationLc950Part8 Seg45.relationLc950Part9 Seg45.relationLc950Part10 Seg45.relationLc950Part11 at r5377
  unfold Seg45.relationRow5378 at r5378
  unfold Seg45.relationRow5379 Seg45.relationLc951 Seg45.relationLc951Part0 Seg45.relationLc951Part1 Seg45.relationLc951Part2 Seg45.relationLc951Part3 Seg45.relationLc951Part4 Seg45.relationLc951Part5 at r5379
  unfold Seg45.relationRow5380 Seg45.relationLc952 Seg45.relationLc952Part0 Seg45.relationLc952Part1 Seg45.relationLc952Part2 Seg45.relationLc952Part3 Seg45.relationLc952Part4 Seg45.relationLc952Part5 at r5380
  unfold Seg45.relationRow5381 at r5381
  unfold Seg45.relationRow5382 at r5382
  unfold Seg45.relationRow5383 at r5383
  unfold Seg45.relationRow5384 Seg45.relationLc953 Seg45.relationLc953Part0 Seg45.relationLc953Part1 Seg45.relationLc953Part2 Seg45.relationLc953Part3 Seg45.relationLc953Part4 Seg45.relationLc953Part5 at r5384
  unfold Seg45.relationRow5385 Seg45.relationLc954 Seg45.relationLc954Part0 Seg45.relationLc954Part1 Seg45.relationLc954Part2 Seg45.relationLc954Part3 Seg45.relationLc954Part4 Seg45.relationLc954Part5 at r5385
  unfold Seg45.relationRow5386 at r5386
  unfold Seg45.relationRow5387 at r5387
  unfold Seg45.relationRow5388 at r5388
  unfold Seg45.relationRow5389 at r5389
  unfold Seg45.relationRow5390 at r5390
  have hrung183 (bit : Bool) (hbit : rho 41131 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
        ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩
        ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
        ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩ := by
    have hsum : seg45AccX183 rho + seg45AccY183 rho = rho 43605 := by
      rw [seg45LadderFlatX183_eq, seg45LadderFlatY183_eq]
      unfold seg45LadderFlatX183 seg45LadderFlatY183
      linear_combination r5377
    have ha0 : (rho 43603 + rho 43604) * (seg45AccX183 rho + seg45AccY183 rho) = rho 43606 := by
      rw [hsum]
      linear_combination r5378
    have ha1 : rho 43604 * seg45AccX183 rho = rho 43607 := by
      rw [seg45LadderFlatX183_eq]
      unfold seg45LadderFlatX183
      linear_combination r5379
    have ha2 : rho 43603 * seg45AccY183 rho = rho 43608 := by
      rw [seg45LadderFlatY183_eq]
      unfold seg45LadderFlatY183
      linear_combination r5380
    have ha3 : 3021 * rho 43607 * rho 43608 = rho 43609 := by
      linear_combination r5381
    have ha4 : rho 43610 * (1 + rho 43609) = rho 43607 + rho 43608 := by
      linear_combination r5382
    have ha5 : rho 43611 * (1 - rho 43609) = rho 43606 - rho 43607 - rho 43608 := by
      linear_combination r5383
    have haddx :
        rho 43610 * (1 + 3021 * (rho 43604 * seg45AccX183 rho) * (rho 43603 * seg45AccY183 rho)) =
          rho 43604 * seg45AccX183 rho + rho 43603 * seg45AccY183 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43611 * (1 - 3021 * (rho 43604 * seg45AccX183 rho) * (rho 43603 * seg45AccY183 rho)) =
          (-1) * (rho 43604 * seg45AccX183 rho) - rho 43603 * seg45AccY183 rho +
            (seg45AccY183 rho - seg45AccX183 rho * (-1)) * (rho 43603 + rho 43604) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43611 * (1 - rho 43609) = rho 43606 - rho 43607 - rho 43608 := ha5
        _ = (-1) * rho 43607 - rho 43608 + (seg45AccY183 rho - seg45AccX183 rho * (-1)) * (rho 43603 + rho 43604) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX184 rho = seg45AccX183 rho - Bool.toZMod bit * (seg45AccX183 rho - rho 43610) := by
      have hd : rho 43612 = Bool.toZMod bit * (rho 43610 - seg45AccX183 rho) := by
        rw [← hbit, seg45LadderFlatX183_eq]
        unfold seg45LadderFlatX183
        linear_combination -r5384
      unfold seg45AccX184
      linear_combination hd
    have hsely : seg45AccY184 rho = seg45AccY183 rho - Bool.toZMod bit * (seg45AccY183 rho - rho 43611) := by
      have hd : rho 43613 = Bool.toZMod bit * (rho 43611 - seg45AccY183 rho) := by
        rw [← hbit, seg45LadderFlatY183_eq]
        unfold seg45LadderFlatY183
        linear_combination -r5385
      unfold seg45AccY184
      linear_combination hd
    have hd0 : rho 43603 * rho 43604 = rho 43614 := by linear_combination r5386
    have hd1 : rho 43603 * rho 43603 = rho 43615 := by linear_combination r5387
    have hd2 : rho 43604 * rho 43604 = rho 43616 := by linear_combination r5388
    have hd3 : rho 43617 * (rho 43604 * rho 43604 + rho 43603 * rho 43603 * (-1)) = 2 * (rho 43603 * rho 43604) := by
      rw [hd0, hd1, hd2]
      linear_combination r5389
    have hd4 : rho 43618 * (2 - (rho 43604 * rho 43604 + rho 43603 * rho 43603 * (-1))) = rho 43604 * rho 43604 - rho 43603 * rho 43603 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5390
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX183 rho : Seg45.F), (seg45AccY183 rho : Seg45.F)⟩
      ⟨(rho 43603 : Seg45.F), (rho 43604 : Seg45.F)⟩
      ⟨(rho 43610 : Seg45.F), (rho 43611 : Seg45.F)⟩
      ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
      ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung183

theorem seg45_rung184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41132 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
        ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩
        ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
        ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5391 Seg45.relationLc955 Seg45.relationLc955Part0 Seg45.relationLc955Part1 Seg45.relationLc955Part2 Seg45.relationLc955Part3 Seg45.relationLc955Part4 Seg45.relationLc955Part5 Seg45.relationLc955Part6 Seg45.relationLc955Part7 Seg45.relationLc955Part8 Seg45.relationLc955Part9 Seg45.relationLc955Part10 Seg45.relationLc955Part11 at r5391
  unfold Seg45.relationRow5392 at r5392
  unfold Seg45.relationRow5393 Seg45.relationLc956 Seg45.relationLc956Part0 Seg45.relationLc956Part1 Seg45.relationLc956Part2 Seg45.relationLc956Part3 Seg45.relationLc956Part4 Seg45.relationLc956Part5 at r5393
  unfold Seg45.relationRow5394 Seg45.relationLc957 Seg45.relationLc957Part0 Seg45.relationLc957Part1 Seg45.relationLc957Part2 Seg45.relationLc957Part3 Seg45.relationLc957Part4 Seg45.relationLc957Part5 at r5394
  unfold Seg45.relationRow5395 at r5395
  unfold Seg45.relationRow5396 at r5396
  unfold Seg45.relationRow5397 at r5397
  unfold Seg45.relationRow5398 Seg45.relationLc958 Seg45.relationLc958Part0 Seg45.relationLc958Part1 Seg45.relationLc958Part2 Seg45.relationLc958Part3 Seg45.relationLc958Part4 Seg45.relationLc958Part5 at r5398
  unfold Seg45.relationRow5399 Seg45.relationLc959 Seg45.relationLc959Part0 Seg45.relationLc959Part1 Seg45.relationLc959Part2 Seg45.relationLc959Part3 Seg45.relationLc959Part4 Seg45.relationLc959Part5 at r5399
  unfold Seg45.relationRow5400 at r5400
  unfold Seg45.relationRow5401 at r5401
  unfold Seg45.relationRow5402 at r5402
  unfold Seg45.relationRow5403 at r5403
  unfold Seg45.relationRow5404 at r5404
  have hrung184 (bit : Bool) (hbit : rho 41132 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
        ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩
        ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
        ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩ := by
    have hsum : seg45AccX184 rho + seg45AccY184 rho = rho 43619 := by
      rw [seg45LadderFlatX184_eq, seg45LadderFlatY184_eq]
      unfold seg45LadderFlatX184 seg45LadderFlatY184
      linear_combination r5391
    have ha0 : (rho 43617 + rho 43618) * (seg45AccX184 rho + seg45AccY184 rho) = rho 43620 := by
      rw [hsum]
      linear_combination r5392
    have ha1 : rho 43618 * seg45AccX184 rho = rho 43621 := by
      rw [seg45LadderFlatX184_eq]
      unfold seg45LadderFlatX184
      linear_combination r5393
    have ha2 : rho 43617 * seg45AccY184 rho = rho 43622 := by
      rw [seg45LadderFlatY184_eq]
      unfold seg45LadderFlatY184
      linear_combination r5394
    have ha3 : 3021 * rho 43621 * rho 43622 = rho 43623 := by
      linear_combination r5395
    have ha4 : rho 43624 * (1 + rho 43623) = rho 43621 + rho 43622 := by
      linear_combination r5396
    have ha5 : rho 43625 * (1 - rho 43623) = rho 43620 - rho 43621 - rho 43622 := by
      linear_combination r5397
    have haddx :
        rho 43624 * (1 + 3021 * (rho 43618 * seg45AccX184 rho) * (rho 43617 * seg45AccY184 rho)) =
          rho 43618 * seg45AccX184 rho + rho 43617 * seg45AccY184 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43625 * (1 - 3021 * (rho 43618 * seg45AccX184 rho) * (rho 43617 * seg45AccY184 rho)) =
          (-1) * (rho 43618 * seg45AccX184 rho) - rho 43617 * seg45AccY184 rho +
            (seg45AccY184 rho - seg45AccX184 rho * (-1)) * (rho 43617 + rho 43618) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43625 * (1 - rho 43623) = rho 43620 - rho 43621 - rho 43622 := ha5
        _ = (-1) * rho 43621 - rho 43622 + (seg45AccY184 rho - seg45AccX184 rho * (-1)) * (rho 43617 + rho 43618) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX185 rho = seg45AccX184 rho - Bool.toZMod bit * (seg45AccX184 rho - rho 43624) := by
      have hd : rho 43626 = Bool.toZMod bit * (rho 43624 - seg45AccX184 rho) := by
        rw [← hbit, seg45LadderFlatX184_eq]
        unfold seg45LadderFlatX184
        linear_combination -r5398
      unfold seg45AccX185
      linear_combination hd
    have hsely : seg45AccY185 rho = seg45AccY184 rho - Bool.toZMod bit * (seg45AccY184 rho - rho 43625) := by
      have hd : rho 43627 = Bool.toZMod bit * (rho 43625 - seg45AccY184 rho) := by
        rw [← hbit, seg45LadderFlatY184_eq]
        unfold seg45LadderFlatY184
        linear_combination -r5399
      unfold seg45AccY185
      linear_combination hd
    have hd0 : rho 43617 * rho 43618 = rho 43628 := by linear_combination r5400
    have hd1 : rho 43617 * rho 43617 = rho 43629 := by linear_combination r5401
    have hd2 : rho 43618 * rho 43618 = rho 43630 := by linear_combination r5402
    have hd3 : rho 43631 * (rho 43618 * rho 43618 + rho 43617 * rho 43617 * (-1)) = 2 * (rho 43617 * rho 43618) := by
      rw [hd0, hd1, hd2]
      linear_combination r5403
    have hd4 : rho 43632 * (2 - (rho 43618 * rho 43618 + rho 43617 * rho 43617 * (-1))) = rho 43618 * rho 43618 - rho 43617 * rho 43617 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5404
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX184 rho : Seg45.F), (seg45AccY184 rho : Seg45.F)⟩
      ⟨(rho 43617 : Seg45.F), (rho 43618 : Seg45.F)⟩
      ⟨(rho 43624 : Seg45.F), (rho 43625 : Seg45.F)⟩
      ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
      ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung184

theorem seg45_rung185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41133 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
        ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩
        ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
        ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5405 Seg45.relationLc960 Seg45.relationLc960Part0 Seg45.relationLc960Part1 Seg45.relationLc960Part2 Seg45.relationLc960Part3 Seg45.relationLc960Part4 Seg45.relationLc960Part5 Seg45.relationLc960Part6 Seg45.relationLc960Part7 Seg45.relationLc960Part8 Seg45.relationLc960Part9 Seg45.relationLc960Part10 Seg45.relationLc960Part11 at r5405
  unfold Seg45.relationRow5406 at r5406
  unfold Seg45.relationRow5407 Seg45.relationLc961 Seg45.relationLc961Part0 Seg45.relationLc961Part1 Seg45.relationLc961Part2 Seg45.relationLc961Part3 Seg45.relationLc961Part4 Seg45.relationLc961Part5 at r5407
  unfold Seg45.relationRow5408 Seg45.relationLc962 Seg45.relationLc962Part0 Seg45.relationLc962Part1 Seg45.relationLc962Part2 Seg45.relationLc962Part3 Seg45.relationLc962Part4 Seg45.relationLc962Part5 at r5408
  unfold Seg45.relationRow5409 at r5409
  unfold Seg45.relationRow5410 at r5410
  unfold Seg45.relationRow5411 at r5411
  unfold Seg45.relationRow5412 Seg45.relationLc963 Seg45.relationLc963Part0 Seg45.relationLc963Part1 Seg45.relationLc963Part2 Seg45.relationLc963Part3 Seg45.relationLc963Part4 Seg45.relationLc963Part5 at r5412
  unfold Seg45.relationRow5413 Seg45.relationLc964 Seg45.relationLc964Part0 Seg45.relationLc964Part1 Seg45.relationLc964Part2 Seg45.relationLc964Part3 Seg45.relationLc964Part4 Seg45.relationLc964Part5 at r5413
  unfold Seg45.relationRow5414 at r5414
  unfold Seg45.relationRow5415 at r5415
  unfold Seg45.relationRow5416 at r5416
  unfold Seg45.relationRow5417 at r5417
  unfold Seg45.relationRow5418 at r5418
  have hrung185 (bit : Bool) (hbit : rho 41133 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
        ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩
        ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
        ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩ := by
    have hsum : seg45AccX185 rho + seg45AccY185 rho = rho 43633 := by
      rw [seg45LadderFlatX185_eq, seg45LadderFlatY185_eq]
      unfold seg45LadderFlatX185 seg45LadderFlatY185
      linear_combination r5405
    have ha0 : (rho 43631 + rho 43632) * (seg45AccX185 rho + seg45AccY185 rho) = rho 43634 := by
      rw [hsum]
      linear_combination r5406
    have ha1 : rho 43632 * seg45AccX185 rho = rho 43635 := by
      rw [seg45LadderFlatX185_eq]
      unfold seg45LadderFlatX185
      linear_combination r5407
    have ha2 : rho 43631 * seg45AccY185 rho = rho 43636 := by
      rw [seg45LadderFlatY185_eq]
      unfold seg45LadderFlatY185
      linear_combination r5408
    have ha3 : 3021 * rho 43635 * rho 43636 = rho 43637 := by
      linear_combination r5409
    have ha4 : rho 43638 * (1 + rho 43637) = rho 43635 + rho 43636 := by
      linear_combination r5410
    have ha5 : rho 43639 * (1 - rho 43637) = rho 43634 - rho 43635 - rho 43636 := by
      linear_combination r5411
    have haddx :
        rho 43638 * (1 + 3021 * (rho 43632 * seg45AccX185 rho) * (rho 43631 * seg45AccY185 rho)) =
          rho 43632 * seg45AccX185 rho + rho 43631 * seg45AccY185 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43639 * (1 - 3021 * (rho 43632 * seg45AccX185 rho) * (rho 43631 * seg45AccY185 rho)) =
          (-1) * (rho 43632 * seg45AccX185 rho) - rho 43631 * seg45AccY185 rho +
            (seg45AccY185 rho - seg45AccX185 rho * (-1)) * (rho 43631 + rho 43632) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43639 * (1 - rho 43637) = rho 43634 - rho 43635 - rho 43636 := ha5
        _ = (-1) * rho 43635 - rho 43636 + (seg45AccY185 rho - seg45AccX185 rho * (-1)) * (rho 43631 + rho 43632) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX186 rho = seg45AccX185 rho - Bool.toZMod bit * (seg45AccX185 rho - rho 43638) := by
      have hd : rho 43640 = Bool.toZMod bit * (rho 43638 - seg45AccX185 rho) := by
        rw [← hbit, seg45LadderFlatX185_eq]
        unfold seg45LadderFlatX185
        linear_combination -r5412
      unfold seg45AccX186
      linear_combination hd
    have hsely : seg45AccY186 rho = seg45AccY185 rho - Bool.toZMod bit * (seg45AccY185 rho - rho 43639) := by
      have hd : rho 43641 = Bool.toZMod bit * (rho 43639 - seg45AccY185 rho) := by
        rw [← hbit, seg45LadderFlatY185_eq]
        unfold seg45LadderFlatY185
        linear_combination -r5413
      unfold seg45AccY186
      linear_combination hd
    have hd0 : rho 43631 * rho 43632 = rho 43642 := by linear_combination r5414
    have hd1 : rho 43631 * rho 43631 = rho 43643 := by linear_combination r5415
    have hd2 : rho 43632 * rho 43632 = rho 43644 := by linear_combination r5416
    have hd3 : rho 43645 * (rho 43632 * rho 43632 + rho 43631 * rho 43631 * (-1)) = 2 * (rho 43631 * rho 43632) := by
      rw [hd0, hd1, hd2]
      linear_combination r5417
    have hd4 : rho 43646 * (2 - (rho 43632 * rho 43632 + rho 43631 * rho 43631 * (-1))) = rho 43632 * rho 43632 - rho 43631 * rho 43631 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5418
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX185 rho : Seg45.F), (seg45AccY185 rho : Seg45.F)⟩
      ⟨(rho 43631 : Seg45.F), (rho 43632 : Seg45.F)⟩
      ⟨(rho 43638 : Seg45.F), (rho 43639 : Seg45.F)⟩
      ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
      ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung185

theorem seg45_rung186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41134 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
        ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩
        ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
        ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5419 Seg45.relationLc965 Seg45.relationLc965Part0 Seg45.relationLc965Part1 Seg45.relationLc965Part2 Seg45.relationLc965Part3 Seg45.relationLc965Part4 Seg45.relationLc965Part5 Seg45.relationLc965Part6 Seg45.relationLc965Part7 Seg45.relationLc965Part8 Seg45.relationLc965Part9 Seg45.relationLc965Part10 Seg45.relationLc965Part11 at r5419
  unfold Seg45.relationRow5420 at r5420
  unfold Seg45.relationRow5421 Seg45.relationLc966 Seg45.relationLc966Part0 Seg45.relationLc966Part1 Seg45.relationLc966Part2 Seg45.relationLc966Part3 Seg45.relationLc966Part4 Seg45.relationLc966Part5 at r5421
  unfold Seg45.relationRow5422 Seg45.relationLc967 Seg45.relationLc967Part0 Seg45.relationLc967Part1 Seg45.relationLc967Part2 Seg45.relationLc967Part3 Seg45.relationLc967Part4 Seg45.relationLc967Part5 at r5422
  unfold Seg45.relationRow5423 at r5423
  unfold Seg45.relationRow5424 at r5424
  unfold Seg45.relationRow5425 at r5425
  unfold Seg45.relationRow5426 Seg45.relationLc968 Seg45.relationLc968Part0 Seg45.relationLc968Part1 Seg45.relationLc968Part2 Seg45.relationLc968Part3 Seg45.relationLc968Part4 Seg45.relationLc968Part5 at r5426
  unfold Seg45.relationRow5427 Seg45.relationLc969 Seg45.relationLc969Part0 Seg45.relationLc969Part1 Seg45.relationLc969Part2 Seg45.relationLc969Part3 Seg45.relationLc969Part4 Seg45.relationLc969Part5 at r5427
  unfold Seg45.relationRow5428 at r5428
  unfold Seg45.relationRow5429 at r5429
  unfold Seg45.relationRow5430 at r5430
  unfold Seg45.relationRow5431 at r5431
  unfold Seg45.relationRow5432 at r5432
  have hrung186 (bit : Bool) (hbit : rho 41134 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
        ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩
        ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
        ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩ := by
    have hsum : seg45AccX186 rho + seg45AccY186 rho = rho 43647 := by
      rw [seg45LadderFlatX186_eq, seg45LadderFlatY186_eq]
      unfold seg45LadderFlatX186 seg45LadderFlatY186
      linear_combination r5419
    have ha0 : (rho 43645 + rho 43646) * (seg45AccX186 rho + seg45AccY186 rho) = rho 43648 := by
      rw [hsum]
      linear_combination r5420
    have ha1 : rho 43646 * seg45AccX186 rho = rho 43649 := by
      rw [seg45LadderFlatX186_eq]
      unfold seg45LadderFlatX186
      linear_combination r5421
    have ha2 : rho 43645 * seg45AccY186 rho = rho 43650 := by
      rw [seg45LadderFlatY186_eq]
      unfold seg45LadderFlatY186
      linear_combination r5422
    have ha3 : 3021 * rho 43649 * rho 43650 = rho 43651 := by
      linear_combination r5423
    have ha4 : rho 43652 * (1 + rho 43651) = rho 43649 + rho 43650 := by
      linear_combination r5424
    have ha5 : rho 43653 * (1 - rho 43651) = rho 43648 - rho 43649 - rho 43650 := by
      linear_combination r5425
    have haddx :
        rho 43652 * (1 + 3021 * (rho 43646 * seg45AccX186 rho) * (rho 43645 * seg45AccY186 rho)) =
          rho 43646 * seg45AccX186 rho + rho 43645 * seg45AccY186 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43653 * (1 - 3021 * (rho 43646 * seg45AccX186 rho) * (rho 43645 * seg45AccY186 rho)) =
          (-1) * (rho 43646 * seg45AccX186 rho) - rho 43645 * seg45AccY186 rho +
            (seg45AccY186 rho - seg45AccX186 rho * (-1)) * (rho 43645 + rho 43646) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43653 * (1 - rho 43651) = rho 43648 - rho 43649 - rho 43650 := ha5
        _ = (-1) * rho 43649 - rho 43650 + (seg45AccY186 rho - seg45AccX186 rho * (-1)) * (rho 43645 + rho 43646) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX187 rho = seg45AccX186 rho - Bool.toZMod bit * (seg45AccX186 rho - rho 43652) := by
      have hd : rho 43654 = Bool.toZMod bit * (rho 43652 - seg45AccX186 rho) := by
        rw [← hbit, seg45LadderFlatX186_eq]
        unfold seg45LadderFlatX186
        linear_combination -r5426
      unfold seg45AccX187
      linear_combination hd
    have hsely : seg45AccY187 rho = seg45AccY186 rho - Bool.toZMod bit * (seg45AccY186 rho - rho 43653) := by
      have hd : rho 43655 = Bool.toZMod bit * (rho 43653 - seg45AccY186 rho) := by
        rw [← hbit, seg45LadderFlatY186_eq]
        unfold seg45LadderFlatY186
        linear_combination -r5427
      unfold seg45AccY187
      linear_combination hd
    have hd0 : rho 43645 * rho 43646 = rho 43656 := by linear_combination r5428
    have hd1 : rho 43645 * rho 43645 = rho 43657 := by linear_combination r5429
    have hd2 : rho 43646 * rho 43646 = rho 43658 := by linear_combination r5430
    have hd3 : rho 43659 * (rho 43646 * rho 43646 + rho 43645 * rho 43645 * (-1)) = 2 * (rho 43645 * rho 43646) := by
      rw [hd0, hd1, hd2]
      linear_combination r5431
    have hd4 : rho 43660 * (2 - (rho 43646 * rho 43646 + rho 43645 * rho 43645 * (-1))) = rho 43646 * rho 43646 - rho 43645 * rho 43645 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX186 rho : Seg45.F), (seg45AccY186 rho : Seg45.F)⟩
      ⟨(rho 43645 : Seg45.F), (rho 43646 : Seg45.F)⟩
      ⟨(rho 43652 : Seg45.F), (rho 43653 : Seg45.F)⟩
      ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
      ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung186

theorem seg45_rung187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41135 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
        ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩
        ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
        ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5433 Seg45.relationLc970 Seg45.relationLc970Part0 Seg45.relationLc970Part1 Seg45.relationLc970Part2 Seg45.relationLc970Part3 Seg45.relationLc970Part4 Seg45.relationLc970Part5 Seg45.relationLc970Part6 Seg45.relationLc970Part7 Seg45.relationLc970Part8 Seg45.relationLc970Part9 Seg45.relationLc970Part10 Seg45.relationLc970Part11 at r5433
  unfold Seg45.relationRow5434 at r5434
  unfold Seg45.relationRow5435 Seg45.relationLc971 Seg45.relationLc971Part0 Seg45.relationLc971Part1 Seg45.relationLc971Part2 Seg45.relationLc971Part3 Seg45.relationLc971Part4 Seg45.relationLc971Part5 at r5435
  unfold Seg45.relationRow5436 Seg45.relationLc972 Seg45.relationLc972Part0 Seg45.relationLc972Part1 Seg45.relationLc972Part2 Seg45.relationLc972Part3 Seg45.relationLc972Part4 Seg45.relationLc972Part5 at r5436
  unfold Seg45.relationRow5437 at r5437
  unfold Seg45.relationRow5438 at r5438
  unfold Seg45.relationRow5439 at r5439
  unfold Seg45.relationRow5440 Seg45.relationLc973 Seg45.relationLc973Part0 Seg45.relationLc973Part1 Seg45.relationLc973Part2 Seg45.relationLc973Part3 Seg45.relationLc973Part4 Seg45.relationLc973Part5 at r5440
  unfold Seg45.relationRow5441 Seg45.relationLc974 Seg45.relationLc974Part0 Seg45.relationLc974Part1 Seg45.relationLc974Part2 Seg45.relationLc974Part3 Seg45.relationLc974Part4 Seg45.relationLc974Part5 at r5441
  unfold Seg45.relationRow5442 at r5442
  unfold Seg45.relationRow5443 at r5443
  unfold Seg45.relationRow5444 at r5444
  unfold Seg45.relationRow5445 at r5445
  unfold Seg45.relationRow5446 at r5446
  have hrung187 (bit : Bool) (hbit : rho 41135 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
        ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩
        ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
        ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩ := by
    have hsum : seg45AccX187 rho + seg45AccY187 rho = rho 43661 := by
      rw [seg45LadderFlatX187_eq, seg45LadderFlatY187_eq]
      unfold seg45LadderFlatX187 seg45LadderFlatY187
      linear_combination r5433
    have ha0 : (rho 43659 + rho 43660) * (seg45AccX187 rho + seg45AccY187 rho) = rho 43662 := by
      rw [hsum]
      linear_combination r5434
    have ha1 : rho 43660 * seg45AccX187 rho = rho 43663 := by
      rw [seg45LadderFlatX187_eq]
      unfold seg45LadderFlatX187
      linear_combination r5435
    have ha2 : rho 43659 * seg45AccY187 rho = rho 43664 := by
      rw [seg45LadderFlatY187_eq]
      unfold seg45LadderFlatY187
      linear_combination r5436
    have ha3 : 3021 * rho 43663 * rho 43664 = rho 43665 := by
      linear_combination r5437
    have ha4 : rho 43666 * (1 + rho 43665) = rho 43663 + rho 43664 := by
      linear_combination r5438
    have ha5 : rho 43667 * (1 - rho 43665) = rho 43662 - rho 43663 - rho 43664 := by
      linear_combination r5439
    have haddx :
        rho 43666 * (1 + 3021 * (rho 43660 * seg45AccX187 rho) * (rho 43659 * seg45AccY187 rho)) =
          rho 43660 * seg45AccX187 rho + rho 43659 * seg45AccY187 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43667 * (1 - 3021 * (rho 43660 * seg45AccX187 rho) * (rho 43659 * seg45AccY187 rho)) =
          (-1) * (rho 43660 * seg45AccX187 rho) - rho 43659 * seg45AccY187 rho +
            (seg45AccY187 rho - seg45AccX187 rho * (-1)) * (rho 43659 + rho 43660) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43667 * (1 - rho 43665) = rho 43662 - rho 43663 - rho 43664 := ha5
        _ = (-1) * rho 43663 - rho 43664 + (seg45AccY187 rho - seg45AccX187 rho * (-1)) * (rho 43659 + rho 43660) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX188 rho = seg45AccX187 rho - Bool.toZMod bit * (seg45AccX187 rho - rho 43666) := by
      have hd : rho 43668 = Bool.toZMod bit * (rho 43666 - seg45AccX187 rho) := by
        rw [← hbit, seg45LadderFlatX187_eq]
        unfold seg45LadderFlatX187
        linear_combination -r5440
      unfold seg45AccX188
      linear_combination hd
    have hsely : seg45AccY188 rho = seg45AccY187 rho - Bool.toZMod bit * (seg45AccY187 rho - rho 43667) := by
      have hd : rho 43669 = Bool.toZMod bit * (rho 43667 - seg45AccY187 rho) := by
        rw [← hbit, seg45LadderFlatY187_eq]
        unfold seg45LadderFlatY187
        linear_combination -r5441
      unfold seg45AccY188
      linear_combination hd
    have hd0 : rho 43659 * rho 43660 = rho 43670 := by linear_combination r5442
    have hd1 : rho 43659 * rho 43659 = rho 43671 := by linear_combination r5443
    have hd2 : rho 43660 * rho 43660 = rho 43672 := by linear_combination r5444
    have hd3 : rho 43673 * (rho 43660 * rho 43660 + rho 43659 * rho 43659 * (-1)) = 2 * (rho 43659 * rho 43660) := by
      rw [hd0, hd1, hd2]
      linear_combination r5445
    have hd4 : rho 43674 * (2 - (rho 43660 * rho 43660 + rho 43659 * rho 43659 * (-1))) = rho 43660 * rho 43660 - rho 43659 * rho 43659 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
      ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩
      ⟨(rho 43666 : Seg45.F), (rho 43667 : Seg45.F)⟩
      ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
      ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung187

theorem seg45_rung188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41136 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
        ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩
        ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
        ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5447 Seg45.relationLc975 Seg45.relationLc975Part0 Seg45.relationLc975Part1 Seg45.relationLc975Part2 Seg45.relationLc975Part3 Seg45.relationLc975Part4 Seg45.relationLc975Part5 Seg45.relationLc975Part6 Seg45.relationLc975Part7 Seg45.relationLc975Part8 Seg45.relationLc975Part9 Seg45.relationLc975Part10 Seg45.relationLc975Part11 at r5447
  unfold Seg45.relationRow5448 at r5448
  unfold Seg45.relationRow5449 Seg45.relationLc976 Seg45.relationLc976Part0 Seg45.relationLc976Part1 Seg45.relationLc976Part2 Seg45.relationLc976Part3 Seg45.relationLc976Part4 Seg45.relationLc976Part5 at r5449
  unfold Seg45.relationRow5450 Seg45.relationLc977 Seg45.relationLc977Part0 Seg45.relationLc977Part1 Seg45.relationLc977Part2 Seg45.relationLc977Part3 Seg45.relationLc977Part4 Seg45.relationLc977Part5 at r5450
  unfold Seg45.relationRow5451 at r5451
  unfold Seg45.relationRow5452 at r5452
  unfold Seg45.relationRow5453 at r5453
  unfold Seg45.relationRow5454 Seg45.relationLc978 Seg45.relationLc978Part0 Seg45.relationLc978Part1 Seg45.relationLc978Part2 Seg45.relationLc978Part3 Seg45.relationLc978Part4 Seg45.relationLc978Part5 at r5454
  unfold Seg45.relationRow5455 Seg45.relationLc979 Seg45.relationLc979Part0 Seg45.relationLc979Part1 Seg45.relationLc979Part2 Seg45.relationLc979Part3 Seg45.relationLc979Part4 Seg45.relationLc979Part5 at r5455
  unfold Seg45.relationRow5456 at r5456
  unfold Seg45.relationRow5457 at r5457
  unfold Seg45.relationRow5458 at r5458
  unfold Seg45.relationRow5459 at r5459
  unfold Seg45.relationRow5460 at r5460
  have hrung188 (bit : Bool) (hbit : rho 41136 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
        ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩
        ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
        ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩ := by
    have hsum : seg45AccX188 rho + seg45AccY188 rho = rho 43675 := by
      rw [seg45LadderFlatX188_eq, seg45LadderFlatY188_eq]
      unfold seg45LadderFlatX188 seg45LadderFlatY188
      linear_combination r5447
    have ha0 : (rho 43673 + rho 43674) * (seg45AccX188 rho + seg45AccY188 rho) = rho 43676 := by
      rw [hsum]
      linear_combination r5448
    have ha1 : rho 43674 * seg45AccX188 rho = rho 43677 := by
      rw [seg45LadderFlatX188_eq]
      unfold seg45LadderFlatX188
      linear_combination r5449
    have ha2 : rho 43673 * seg45AccY188 rho = rho 43678 := by
      rw [seg45LadderFlatY188_eq]
      unfold seg45LadderFlatY188
      linear_combination r5450
    have ha3 : 3021 * rho 43677 * rho 43678 = rho 43679 := by
      linear_combination r5451
    have ha4 : rho 43680 * (1 + rho 43679) = rho 43677 + rho 43678 := by
      linear_combination r5452
    have ha5 : rho 43681 * (1 - rho 43679) = rho 43676 - rho 43677 - rho 43678 := by
      linear_combination r5453
    have haddx :
        rho 43680 * (1 + 3021 * (rho 43674 * seg45AccX188 rho) * (rho 43673 * seg45AccY188 rho)) =
          rho 43674 * seg45AccX188 rho + rho 43673 * seg45AccY188 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43681 * (1 - 3021 * (rho 43674 * seg45AccX188 rho) * (rho 43673 * seg45AccY188 rho)) =
          (-1) * (rho 43674 * seg45AccX188 rho) - rho 43673 * seg45AccY188 rho +
            (seg45AccY188 rho - seg45AccX188 rho * (-1)) * (rho 43673 + rho 43674) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43681 * (1 - rho 43679) = rho 43676 - rho 43677 - rho 43678 := ha5
        _ = (-1) * rho 43677 - rho 43678 + (seg45AccY188 rho - seg45AccX188 rho * (-1)) * (rho 43673 + rho 43674) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX189 rho = seg45AccX188 rho - Bool.toZMod bit * (seg45AccX188 rho - rho 43680) := by
      have hd : rho 43682 = Bool.toZMod bit * (rho 43680 - seg45AccX188 rho) := by
        rw [← hbit, seg45LadderFlatX188_eq]
        unfold seg45LadderFlatX188
        linear_combination -r5454
      unfold seg45AccX189
      linear_combination hd
    have hsely : seg45AccY189 rho = seg45AccY188 rho - Bool.toZMod bit * (seg45AccY188 rho - rho 43681) := by
      have hd : rho 43683 = Bool.toZMod bit * (rho 43681 - seg45AccY188 rho) := by
        rw [← hbit, seg45LadderFlatY188_eq]
        unfold seg45LadderFlatY188
        linear_combination -r5455
      unfold seg45AccY189
      linear_combination hd
    have hd0 : rho 43673 * rho 43674 = rho 43684 := by linear_combination r5456
    have hd1 : rho 43673 * rho 43673 = rho 43685 := by linear_combination r5457
    have hd2 : rho 43674 * rho 43674 = rho 43686 := by linear_combination r5458
    have hd3 : rho 43687 * (rho 43674 * rho 43674 + rho 43673 * rho 43673 * (-1)) = 2 * (rho 43673 * rho 43674) := by
      rw [hd0, hd1, hd2]
      linear_combination r5459
    have hd4 : rho 43688 * (2 - (rho 43674 * rho 43674 + rho 43673 * rho 43673 * (-1))) = rho 43674 * rho 43674 - rho 43673 * rho 43673 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5460
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
      ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩
      ⟨(rho 43680 : Seg45.F), (rho 43681 : Seg45.F)⟩
      ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
      ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung188

theorem seg45_rung189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41137 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
        ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩
        ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
        ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5461 Seg45.relationLc980 Seg45.relationLc980Part0 Seg45.relationLc980Part1 Seg45.relationLc980Part2 Seg45.relationLc980Part3 Seg45.relationLc980Part4 Seg45.relationLc980Part5 Seg45.relationLc980Part6 Seg45.relationLc980Part7 Seg45.relationLc980Part8 Seg45.relationLc980Part9 Seg45.relationLc980Part10 Seg45.relationLc980Part11 at r5461
  unfold Seg45.relationRow5462 at r5462
  unfold Seg45.relationRow5463 Seg45.relationLc981 Seg45.relationLc981Part0 Seg45.relationLc981Part1 Seg45.relationLc981Part2 Seg45.relationLc981Part3 Seg45.relationLc981Part4 Seg45.relationLc981Part5 at r5463
  unfold Seg45.relationRow5464 Seg45.relationLc982 Seg45.relationLc982Part0 Seg45.relationLc982Part1 Seg45.relationLc982Part2 Seg45.relationLc982Part3 Seg45.relationLc982Part4 Seg45.relationLc982Part5 at r5464
  unfold Seg45.relationRow5465 at r5465
  unfold Seg45.relationRow5466 at r5466
  unfold Seg45.relationRow5467 at r5467
  unfold Seg45.relationRow5468 Seg45.relationLc983 Seg45.relationLc983Part0 Seg45.relationLc983Part1 Seg45.relationLc983Part2 Seg45.relationLc983Part3 Seg45.relationLc983Part4 Seg45.relationLc983Part5 at r5468
  unfold Seg45.relationRow5469 Seg45.relationLc984 Seg45.relationLc984Part0 Seg45.relationLc984Part1 Seg45.relationLc984Part2 Seg45.relationLc984Part3 Seg45.relationLc984Part4 Seg45.relationLc984Part5 at r5469
  unfold Seg45.relationRow5470 at r5470
  unfold Seg45.relationRow5471 at r5471
  unfold Seg45.relationRow5472 at r5472
  unfold Seg45.relationRow5473 at r5473
  unfold Seg45.relationRow5474 at r5474
  have hrung189 (bit : Bool) (hbit : rho 41137 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
        ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩
        ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
        ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩ := by
    have hsum : seg45AccX189 rho + seg45AccY189 rho = rho 43689 := by
      rw [seg45LadderFlatX189_eq, seg45LadderFlatY189_eq]
      unfold seg45LadderFlatX189 seg45LadderFlatY189
      linear_combination r5461
    have ha0 : (rho 43687 + rho 43688) * (seg45AccX189 rho + seg45AccY189 rho) = rho 43690 := by
      rw [hsum]
      linear_combination r5462
    have ha1 : rho 43688 * seg45AccX189 rho = rho 43691 := by
      rw [seg45LadderFlatX189_eq]
      unfold seg45LadderFlatX189
      linear_combination r5463
    have ha2 : rho 43687 * seg45AccY189 rho = rho 43692 := by
      rw [seg45LadderFlatY189_eq]
      unfold seg45LadderFlatY189
      linear_combination r5464
    have ha3 : 3021 * rho 43691 * rho 43692 = rho 43693 := by
      linear_combination r5465
    have ha4 : rho 43694 * (1 + rho 43693) = rho 43691 + rho 43692 := by
      linear_combination r5466
    have ha5 : rho 43695 * (1 - rho 43693) = rho 43690 - rho 43691 - rho 43692 := by
      linear_combination r5467
    have haddx :
        rho 43694 * (1 + 3021 * (rho 43688 * seg45AccX189 rho) * (rho 43687 * seg45AccY189 rho)) =
          rho 43688 * seg45AccX189 rho + rho 43687 * seg45AccY189 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43695 * (1 - 3021 * (rho 43688 * seg45AccX189 rho) * (rho 43687 * seg45AccY189 rho)) =
          (-1) * (rho 43688 * seg45AccX189 rho) - rho 43687 * seg45AccY189 rho +
            (seg45AccY189 rho - seg45AccX189 rho * (-1)) * (rho 43687 + rho 43688) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43695 * (1 - rho 43693) = rho 43690 - rho 43691 - rho 43692 := ha5
        _ = (-1) * rho 43691 - rho 43692 + (seg45AccY189 rho - seg45AccX189 rho * (-1)) * (rho 43687 + rho 43688) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX190 rho = seg45AccX189 rho - Bool.toZMod bit * (seg45AccX189 rho - rho 43694) := by
      have hd : rho 43696 = Bool.toZMod bit * (rho 43694 - seg45AccX189 rho) := by
        rw [← hbit, seg45LadderFlatX189_eq]
        unfold seg45LadderFlatX189
        linear_combination -r5468
      unfold seg45AccX190
      linear_combination hd
    have hsely : seg45AccY190 rho = seg45AccY189 rho - Bool.toZMod bit * (seg45AccY189 rho - rho 43695) := by
      have hd : rho 43697 = Bool.toZMod bit * (rho 43695 - seg45AccY189 rho) := by
        rw [← hbit, seg45LadderFlatY189_eq]
        unfold seg45LadderFlatY189
        linear_combination -r5469
      unfold seg45AccY190
      linear_combination hd
    have hd0 : rho 43687 * rho 43688 = rho 43698 := by linear_combination r5470
    have hd1 : rho 43687 * rho 43687 = rho 43699 := by linear_combination r5471
    have hd2 : rho 43688 * rho 43688 = rho 43700 := by linear_combination r5472
    have hd3 : rho 43701 * (rho 43688 * rho 43688 + rho 43687 * rho 43687 * (-1)) = 2 * (rho 43687 * rho 43688) := by
      rw [hd0, hd1, hd2]
      linear_combination r5473
    have hd4 : rho 43702 * (2 - (rho 43688 * rho 43688 + rho 43687 * rho 43687 * (-1))) = rho 43688 * rho 43688 - rho 43687 * rho 43687 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5474
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
      ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩
      ⟨(rho 43694 : Seg45.F), (rho 43695 : Seg45.F)⟩
      ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
      ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung189

theorem seg45_rung190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41138 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
        ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩
        ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
        ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5475 Seg45.relationLc985 Seg45.relationLc985Part0 Seg45.relationLc985Part1 Seg45.relationLc985Part2 Seg45.relationLc985Part3 Seg45.relationLc985Part4 Seg45.relationLc985Part5 Seg45.relationLc985Part6 Seg45.relationLc985Part7 Seg45.relationLc985Part8 Seg45.relationLc985Part9 Seg45.relationLc985Part10 Seg45.relationLc985Part11 at r5475
  unfold Seg45.relationRow5476 at r5476
  unfold Seg45.relationRow5477 Seg45.relationLc986 Seg45.relationLc986Part0 Seg45.relationLc986Part1 Seg45.relationLc986Part2 Seg45.relationLc986Part3 Seg45.relationLc986Part4 Seg45.relationLc986Part5 at r5477
  unfold Seg45.relationRow5478 Seg45.relationLc987 Seg45.relationLc987Part0 Seg45.relationLc987Part1 Seg45.relationLc987Part2 Seg45.relationLc987Part3 Seg45.relationLc987Part4 Seg45.relationLc987Part5 at r5478
  unfold Seg45.relationRow5479 at r5479
  unfold Seg45.relationRow5480 at r5480
  unfold Seg45.relationRow5481 at r5481
  unfold Seg45.relationRow5482 Seg45.relationLc988 Seg45.relationLc988Part0 Seg45.relationLc988Part1 Seg45.relationLc988Part2 Seg45.relationLc988Part3 Seg45.relationLc988Part4 Seg45.relationLc988Part5 at r5482
  unfold Seg45.relationRow5483 Seg45.relationLc989 Seg45.relationLc989Part0 Seg45.relationLc989Part1 Seg45.relationLc989Part2 Seg45.relationLc989Part3 Seg45.relationLc989Part4 Seg45.relationLc989Part5 at r5483
  unfold Seg45.relationRow5484 at r5484
  unfold Seg45.relationRow5485 at r5485
  unfold Seg45.relationRow5486 at r5486
  unfold Seg45.relationRow5487 at r5487
  unfold Seg45.relationRow5488 at r5488
  have hrung190 (bit : Bool) (hbit : rho 41138 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
        ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩
        ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
        ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩ := by
    have hsum : seg45AccX190 rho + seg45AccY190 rho = rho 43703 := by
      rw [seg45LadderFlatX190_eq, seg45LadderFlatY190_eq]
      unfold seg45LadderFlatX190 seg45LadderFlatY190
      linear_combination r5475
    have ha0 : (rho 43701 + rho 43702) * (seg45AccX190 rho + seg45AccY190 rho) = rho 43704 := by
      rw [hsum]
      linear_combination r5476
    have ha1 : rho 43702 * seg45AccX190 rho = rho 43705 := by
      rw [seg45LadderFlatX190_eq]
      unfold seg45LadderFlatX190
      linear_combination r5477
    have ha2 : rho 43701 * seg45AccY190 rho = rho 43706 := by
      rw [seg45LadderFlatY190_eq]
      unfold seg45LadderFlatY190
      linear_combination r5478
    have ha3 : 3021 * rho 43705 * rho 43706 = rho 43707 := by
      linear_combination r5479
    have ha4 : rho 43708 * (1 + rho 43707) = rho 43705 + rho 43706 := by
      linear_combination r5480
    have ha5 : rho 43709 * (1 - rho 43707) = rho 43704 - rho 43705 - rho 43706 := by
      linear_combination r5481
    have haddx :
        rho 43708 * (1 + 3021 * (rho 43702 * seg45AccX190 rho) * (rho 43701 * seg45AccY190 rho)) =
          rho 43702 * seg45AccX190 rho + rho 43701 * seg45AccY190 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43709 * (1 - 3021 * (rho 43702 * seg45AccX190 rho) * (rho 43701 * seg45AccY190 rho)) =
          (-1) * (rho 43702 * seg45AccX190 rho) - rho 43701 * seg45AccY190 rho +
            (seg45AccY190 rho - seg45AccX190 rho * (-1)) * (rho 43701 + rho 43702) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43709 * (1 - rho 43707) = rho 43704 - rho 43705 - rho 43706 := ha5
        _ = (-1) * rho 43705 - rho 43706 + (seg45AccY190 rho - seg45AccX190 rho * (-1)) * (rho 43701 + rho 43702) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX191 rho = seg45AccX190 rho - Bool.toZMod bit * (seg45AccX190 rho - rho 43708) := by
      have hd : rho 43710 = Bool.toZMod bit * (rho 43708 - seg45AccX190 rho) := by
        rw [← hbit, seg45LadderFlatX190_eq]
        unfold seg45LadderFlatX190
        linear_combination -r5482
      unfold seg45AccX191
      linear_combination hd
    have hsely : seg45AccY191 rho = seg45AccY190 rho - Bool.toZMod bit * (seg45AccY190 rho - rho 43709) := by
      have hd : rho 43711 = Bool.toZMod bit * (rho 43709 - seg45AccY190 rho) := by
        rw [← hbit, seg45LadderFlatY190_eq]
        unfold seg45LadderFlatY190
        linear_combination -r5483
      unfold seg45AccY191
      linear_combination hd
    have hd0 : rho 43701 * rho 43702 = rho 43712 := by linear_combination r5484
    have hd1 : rho 43701 * rho 43701 = rho 43713 := by linear_combination r5485
    have hd2 : rho 43702 * rho 43702 = rho 43714 := by linear_combination r5486
    have hd3 : rho 43715 * (rho 43702 * rho 43702 + rho 43701 * rho 43701 * (-1)) = 2 * (rho 43701 * rho 43702) := by
      rw [hd0, hd1, hd2]
      linear_combination r5487
    have hd4 : rho 43716 * (2 - (rho 43702 * rho 43702 + rho 43701 * rho 43701 * (-1))) = rho 43702 * rho 43702 - rho 43701 * rho 43701 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5488
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
      ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩
      ⟨(rho 43708 : Seg45.F), (rho 43709 : Seg45.F)⟩
      ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
      ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung190

theorem seg45_rung191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41139 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
        ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩
        ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
        ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5489 Seg45.relationLc990 Seg45.relationLc990Part0 Seg45.relationLc990Part1 Seg45.relationLc990Part2 Seg45.relationLc990Part3 Seg45.relationLc990Part4 Seg45.relationLc990Part5 Seg45.relationLc990Part6 Seg45.relationLc990Part7 Seg45.relationLc990Part8 Seg45.relationLc990Part9 Seg45.relationLc990Part10 Seg45.relationLc990Part11 at r5489
  unfold Seg45.relationRow5490 at r5490
  unfold Seg45.relationRow5491 Seg45.relationLc991 Seg45.relationLc991Part0 Seg45.relationLc991Part1 Seg45.relationLc991Part2 Seg45.relationLc991Part3 Seg45.relationLc991Part4 Seg45.relationLc991Part5 at r5491
  unfold Seg45.relationRow5492 Seg45.relationLc992 Seg45.relationLc992Part0 Seg45.relationLc992Part1 Seg45.relationLc992Part2 Seg45.relationLc992Part3 Seg45.relationLc992Part4 Seg45.relationLc992Part5 at r5492
  unfold Seg45.relationRow5493 at r5493
  unfold Seg45.relationRow5494 at r5494
  unfold Seg45.relationRow5495 at r5495
  unfold Seg45.relationRow5496 Seg45.relationLc993 Seg45.relationLc993Part0 Seg45.relationLc993Part1 Seg45.relationLc993Part2 Seg45.relationLc993Part3 Seg45.relationLc993Part4 Seg45.relationLc993Part5 at r5496
  unfold Seg45.relationRow5497 Seg45.relationLc994 Seg45.relationLc994Part0 Seg45.relationLc994Part1 Seg45.relationLc994Part2 Seg45.relationLc994Part3 Seg45.relationLc994Part4 Seg45.relationLc994Part5 Seg45.relationLc994Part6 at r5497
  unfold Seg45.relationRow5498 at r5498
  unfold Seg45.relationRow5499 at r5499
  unfold Seg45.relationRow5500 at r5500
  unfold Seg45.relationRow5501 at r5501
  unfold Seg45.relationRow5502 at r5502
  have hrung191 (bit : Bool) (hbit : rho 41139 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
        ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩
        ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
        ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩ := by
    have hsum : seg45AccX191 rho + seg45AccY191 rho = rho 43717 := by
      rw [seg45LadderFlatX191_eq, seg45LadderFlatY191_eq]
      unfold seg45LadderFlatX191 seg45LadderFlatY191
      linear_combination r5489
    have ha0 : (rho 43715 + rho 43716) * (seg45AccX191 rho + seg45AccY191 rho) = rho 43718 := by
      rw [hsum]
      linear_combination r5490
    have ha1 : rho 43716 * seg45AccX191 rho = rho 43719 := by
      rw [seg45LadderFlatX191_eq]
      unfold seg45LadderFlatX191
      linear_combination r5491
    have ha2 : rho 43715 * seg45AccY191 rho = rho 43720 := by
      rw [seg45LadderFlatY191_eq]
      unfold seg45LadderFlatY191
      linear_combination r5492
    have ha3 : 3021 * rho 43719 * rho 43720 = rho 43721 := by
      linear_combination r5493
    have ha4 : rho 43722 * (1 + rho 43721) = rho 43719 + rho 43720 := by
      linear_combination r5494
    have ha5 : rho 43723 * (1 - rho 43721) = rho 43718 - rho 43719 - rho 43720 := by
      linear_combination r5495
    have haddx :
        rho 43722 * (1 + 3021 * (rho 43716 * seg45AccX191 rho) * (rho 43715 * seg45AccY191 rho)) =
          rho 43716 * seg45AccX191 rho + rho 43715 * seg45AccY191 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43723 * (1 - 3021 * (rho 43716 * seg45AccX191 rho) * (rho 43715 * seg45AccY191 rho)) =
          (-1) * (rho 43716 * seg45AccX191 rho) - rho 43715 * seg45AccY191 rho +
            (seg45AccY191 rho - seg45AccX191 rho * (-1)) * (rho 43715 + rho 43716) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43723 * (1 - rho 43721) = rho 43718 - rho 43719 - rho 43720 := ha5
        _ = (-1) * rho 43719 - rho 43720 + (seg45AccY191 rho - seg45AccX191 rho * (-1)) * (rho 43715 + rho 43716) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX192 rho = seg45AccX191 rho - Bool.toZMod bit * (seg45AccX191 rho - rho 43722) := by
      have hd : rho 43724 = Bool.toZMod bit * (rho 43722 - seg45AccX191 rho) := by
        rw [← hbit, seg45LadderFlatX191_eq]
        unfold seg45LadderFlatX191
        linear_combination -r5496
      unfold seg45AccX192
      linear_combination hd
    have hsely : seg45AccY192 rho = seg45AccY191 rho - Bool.toZMod bit * (seg45AccY191 rho - rho 43723) := by
      have hd : rho 43725 = Bool.toZMod bit * (rho 43723 - seg45AccY191 rho) := by
        rw [← hbit, seg45LadderFlatY191_eq]
        unfold seg45LadderFlatY191
        linear_combination -r5497
      unfold seg45AccY192
      linear_combination hd
    have hd0 : rho 43715 * rho 43716 = rho 43726 := by linear_combination r5498
    have hd1 : rho 43715 * rho 43715 = rho 43727 := by linear_combination r5499
    have hd2 : rho 43716 * rho 43716 = rho 43728 := by linear_combination r5500
    have hd3 : rho 43729 * (rho 43716 * rho 43716 + rho 43715 * rho 43715 * (-1)) = 2 * (rho 43715 * rho 43716) := by
      rw [hd0, hd1, hd2]
      linear_combination r5501
    have hd4 : rho 43730 * (2 - (rho 43716 * rho 43716 + rho 43715 * rho 43715 * (-1))) = rho 43716 * rho 43716 - rho 43715 * rho 43715 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5502
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
      ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩
      ⟨(rho 43722 : Seg45.F), (rho 43723 : Seg45.F)⟩
      ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
      ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung191

theorem seg45_hstep_c5 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 160 ≤ i → i < 192 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc hcur
  · exact seg45_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc hcur
  · exact seg45_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc hcur
  · exact seg45_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc hcur
  · exact seg45_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc hcur
  · exact seg45_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc hcur
  · exact seg45_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc hcur
  · exact seg45_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc hcur
  · exact seg45_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc hcur
  · exact seg45_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc hcur
  · exact seg45_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc hcur
  · exact seg45_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc hcur
  · exact seg45_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc hcur
  · exact seg45_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc hcur
  · exact seg45_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc hcur
  · exact seg45_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc hcur
  · exact seg45_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc hcur
  · exact seg45_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc hcur
  · exact seg45_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc hcur
  · exact seg45_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc hcur
  · exact seg45_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc hcur
  · exact seg45_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc hcur
  · exact seg45_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc hcur
  · exact seg45_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc hcur
  · exact seg45_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc hcur
  · exact seg45_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc hcur
  · exact seg45_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc hcur
  · exact seg45_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc hcur
  · exact seg45_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc hcur
  · exact seg45_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc hcur
  · exact seg45_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc hcur
  · exact seg45_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rung224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34216 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
        ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩
        ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
        ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5951 Seg34.relationLc1155 Seg34.relationLc1155Part0 Seg34.relationLc1155Part1 Seg34.relationLc1155Part2 Seg34.relationLc1155Part3 Seg34.relationLc1155Part4 Seg34.relationLc1155Part5 Seg34.relationLc1155Part6 Seg34.relationLc1155Part7 Seg34.relationLc1155Part8 Seg34.relationLc1155Part9 Seg34.relationLc1155Part10 Seg34.relationLc1155Part11 Seg34.relationLc1155Part12 Seg34.relationLc1155Part13 Seg34.relationLc1155Part14 at r5951
  unfold Seg34.relationRow5952 at r5952
  unfold Seg34.relationRow5953 Seg34.relationLc1156 Seg34.relationLc1156Part0 Seg34.relationLc1156Part1 Seg34.relationLc1156Part2 Seg34.relationLc1156Part3 Seg34.relationLc1156Part4 Seg34.relationLc1156Part5 Seg34.relationLc1156Part6 at r5953
  unfold Seg34.relationRow5954 Seg34.relationLc1157 Seg34.relationLc1157Part0 Seg34.relationLc1157Part1 Seg34.relationLc1157Part2 Seg34.relationLc1157Part3 Seg34.relationLc1157Part4 Seg34.relationLc1157Part5 Seg34.relationLc1157Part6 Seg34.relationLc1157Part7 at r5954
  unfold Seg34.relationRow5955 at r5955
  unfold Seg34.relationRow5956 at r5956
  unfold Seg34.relationRow5957 at r5957
  unfold Seg34.relationRow5958 Seg34.relationLc1158 Seg34.relationLc1158Part0 Seg34.relationLc1158Part1 Seg34.relationLc1158Part2 Seg34.relationLc1158Part3 Seg34.relationLc1158Part4 Seg34.relationLc1158Part5 Seg34.relationLc1158Part6 Seg34.relationLc1158Part7 at r5958
  unfold Seg34.relationRow5959 Seg34.relationLc1159 Seg34.relationLc1159Part0 Seg34.relationLc1159Part1 Seg34.relationLc1159Part2 Seg34.relationLc1159Part3 Seg34.relationLc1159Part4 Seg34.relationLc1159Part5 Seg34.relationLc1159Part6 Seg34.relationLc1159Part7 at r5959
  unfold Seg34.relationRow5960 at r5960
  unfold Seg34.relationRow5961 at r5961
  unfold Seg34.relationRow5962 at r5962
  unfold Seg34.relationRow5963 at r5963
  unfold Seg34.relationRow5964 at r5964
  have hrung224 (bit : Bool) (hbit : rho 34216 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
        ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩
        ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
        ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩ := by
    have hsum : seg34AccX224 rho + seg34AccY224 rho = rho 37223 := by
      rw [seg34LadderFlatX224_eq, seg34LadderFlatY224_eq]
      unfold seg34LadderFlatX224 seg34LadderFlatY224
      linear_combination r5951
    have ha0 : (rho 37221 + rho 37222) * (seg34AccX224 rho + seg34AccY224 rho) = rho 37224 := by
      rw [hsum]
      linear_combination r5952
    have ha1 : rho 37222 * seg34AccX224 rho = rho 37225 := by
      rw [seg34LadderFlatX224_eq]
      unfold seg34LadderFlatX224
      linear_combination r5953
    have ha2 : rho 37221 * seg34AccY224 rho = rho 37226 := by
      rw [seg34LadderFlatY224_eq]
      unfold seg34LadderFlatY224
      linear_combination r5954
    have ha3 : 3021 * rho 37225 * rho 37226 = rho 37227 := by
      linear_combination r5955
    have ha4 : rho 37228 * (1 + rho 37227) = rho 37225 + rho 37226 := by
      linear_combination r5956
    have ha5 : rho 37229 * (1 - rho 37227) = rho 37224 - rho 37225 - rho 37226 := by
      linear_combination r5957
    have haddx :
        rho 37228 * (1 + 3021 * (rho 37222 * seg34AccX224 rho) * (rho 37221 * seg34AccY224 rho)) =
          rho 37222 * seg34AccX224 rho + rho 37221 * seg34AccY224 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37229 * (1 - 3021 * (rho 37222 * seg34AccX224 rho) * (rho 37221 * seg34AccY224 rho)) =
          (-1) * (rho 37222 * seg34AccX224 rho) - rho 37221 * seg34AccY224 rho +
            (seg34AccY224 rho - seg34AccX224 rho * (-1)) * (rho 37221 + rho 37222) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37229 * (1 - rho 37227) = rho 37224 - rho 37225 - rho 37226 := ha5
        _ = (-1) * rho 37225 - rho 37226 + (seg34AccY224 rho - seg34AccX224 rho * (-1)) * (rho 37221 + rho 37222) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX225 rho = seg34AccX224 rho - Bool.toZMod bit * (seg34AccX224 rho - rho 37228) := by
      have hd : rho 37230 = Bool.toZMod bit * (rho 37228 - seg34AccX224 rho) := by
        rw [← hbit, seg34LadderFlatX224_eq]
        unfold seg34LadderFlatX224
        linear_combination -r5958
      unfold seg34AccX225
      linear_combination hd
    have hsely : seg34AccY225 rho = seg34AccY224 rho - Bool.toZMod bit * (seg34AccY224 rho - rho 37229) := by
      have hd : rho 37231 = Bool.toZMod bit * (rho 37229 - seg34AccY224 rho) := by
        rw [← hbit, seg34LadderFlatY224_eq]
        unfold seg34LadderFlatY224
        linear_combination -r5959
      unfold seg34AccY225
      linear_combination hd
    have hd0 : rho 37221 * rho 37222 = rho 37232 := by linear_combination r5960
    have hd1 : rho 37221 * rho 37221 = rho 37233 := by linear_combination r5961
    have hd2 : rho 37222 * rho 37222 = rho 37234 := by linear_combination r5962
    have hd3 : rho 37235 * (rho 37222 * rho 37222 + rho 37221 * rho 37221 * (-1)) = 2 * (rho 37221 * rho 37222) := by
      rw [hd0, hd1, hd2]
      linear_combination r5963
    have hd4 : rho 37236 * (2 - (rho 37222 * rho 37222 + rho 37221 * rho 37221 * (-1))) = rho 37222 * rho 37222 - rho 37221 * rho 37221 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5964
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX224 rho : Seg34.F), (seg34AccY224 rho : Seg34.F)⟩
      ⟨(rho 37221 : Seg34.F), (rho 37222 : Seg34.F)⟩
      ⟨(rho 37228 : Seg34.F), (rho 37229 : Seg34.F)⟩
      ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
      ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung224

theorem seg34_rung225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34217 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
        ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩
        ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
        ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5965 Seg34.relationLc1160 Seg34.relationLc1160Part0 Seg34.relationLc1160Part1 Seg34.relationLc1160Part2 Seg34.relationLc1160Part3 Seg34.relationLc1160Part4 Seg34.relationLc1160Part5 Seg34.relationLc1160Part6 Seg34.relationLc1160Part7 Seg34.relationLc1160Part8 Seg34.relationLc1160Part9 Seg34.relationLc1160Part10 Seg34.relationLc1160Part11 Seg34.relationLc1160Part12 Seg34.relationLc1160Part13 Seg34.relationLc1160Part14 at r5965
  unfold Seg34.relationRow5966 at r5966
  unfold Seg34.relationRow5967 Seg34.relationLc1161 Seg34.relationLc1161Part0 Seg34.relationLc1161Part1 Seg34.relationLc1161Part2 Seg34.relationLc1161Part3 Seg34.relationLc1161Part4 Seg34.relationLc1161Part5 Seg34.relationLc1161Part6 Seg34.relationLc1161Part7 at r5967
  unfold Seg34.relationRow5968 Seg34.relationLc1162 Seg34.relationLc1162Part0 Seg34.relationLc1162Part1 Seg34.relationLc1162Part2 Seg34.relationLc1162Part3 Seg34.relationLc1162Part4 Seg34.relationLc1162Part5 Seg34.relationLc1162Part6 Seg34.relationLc1162Part7 at r5968
  unfold Seg34.relationRow5969 at r5969
  unfold Seg34.relationRow5970 at r5970
  unfold Seg34.relationRow5971 at r5971
  unfold Seg34.relationRow5972 Seg34.relationLc1163 Seg34.relationLc1163Part0 Seg34.relationLc1163Part1 Seg34.relationLc1163Part2 Seg34.relationLc1163Part3 Seg34.relationLc1163Part4 Seg34.relationLc1163Part5 Seg34.relationLc1163Part6 Seg34.relationLc1163Part7 at r5972
  unfold Seg34.relationRow5973 Seg34.relationLc1164 Seg34.relationLc1164Part0 Seg34.relationLc1164Part1 Seg34.relationLc1164Part2 Seg34.relationLc1164Part3 Seg34.relationLc1164Part4 Seg34.relationLc1164Part5 Seg34.relationLc1164Part6 Seg34.relationLc1164Part7 at r5973
  unfold Seg34.relationRow5974 at r5974
  unfold Seg34.relationRow5975 at r5975
  unfold Seg34.relationRow5976 at r5976
  unfold Seg34.relationRow5977 at r5977
  unfold Seg34.relationRow5978 at r5978
  have hrung225 (bit : Bool) (hbit : rho 34217 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
        ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩
        ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
        ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩ := by
    have hsum : seg34AccX225 rho + seg34AccY225 rho = rho 37237 := by
      rw [seg34LadderFlatX225_eq, seg34LadderFlatY225_eq]
      unfold seg34LadderFlatX225 seg34LadderFlatY225
      linear_combination r5965
    have ha0 : (rho 37235 + rho 37236) * (seg34AccX225 rho + seg34AccY225 rho) = rho 37238 := by
      rw [hsum]
      linear_combination r5966
    have ha1 : rho 37236 * seg34AccX225 rho = rho 37239 := by
      rw [seg34LadderFlatX225_eq]
      unfold seg34LadderFlatX225
      linear_combination r5967
    have ha2 : rho 37235 * seg34AccY225 rho = rho 37240 := by
      rw [seg34LadderFlatY225_eq]
      unfold seg34LadderFlatY225
      linear_combination r5968
    have ha3 : 3021 * rho 37239 * rho 37240 = rho 37241 := by
      linear_combination r5969
    have ha4 : rho 37242 * (1 + rho 37241) = rho 37239 + rho 37240 := by
      linear_combination r5970
    have ha5 : rho 37243 * (1 - rho 37241) = rho 37238 - rho 37239 - rho 37240 := by
      linear_combination r5971
    have haddx :
        rho 37242 * (1 + 3021 * (rho 37236 * seg34AccX225 rho) * (rho 37235 * seg34AccY225 rho)) =
          rho 37236 * seg34AccX225 rho + rho 37235 * seg34AccY225 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37243 * (1 - 3021 * (rho 37236 * seg34AccX225 rho) * (rho 37235 * seg34AccY225 rho)) =
          (-1) * (rho 37236 * seg34AccX225 rho) - rho 37235 * seg34AccY225 rho +
            (seg34AccY225 rho - seg34AccX225 rho * (-1)) * (rho 37235 + rho 37236) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37243 * (1 - rho 37241) = rho 37238 - rho 37239 - rho 37240 := ha5
        _ = (-1) * rho 37239 - rho 37240 + (seg34AccY225 rho - seg34AccX225 rho * (-1)) * (rho 37235 + rho 37236) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX226 rho = seg34AccX225 rho - Bool.toZMod bit * (seg34AccX225 rho - rho 37242) := by
      have hd : rho 37244 = Bool.toZMod bit * (rho 37242 - seg34AccX225 rho) := by
        rw [← hbit, seg34LadderFlatX225_eq]
        unfold seg34LadderFlatX225
        linear_combination -r5972
      unfold seg34AccX226
      linear_combination hd
    have hsely : seg34AccY226 rho = seg34AccY225 rho - Bool.toZMod bit * (seg34AccY225 rho - rho 37243) := by
      have hd : rho 37245 = Bool.toZMod bit * (rho 37243 - seg34AccY225 rho) := by
        rw [← hbit, seg34LadderFlatY225_eq]
        unfold seg34LadderFlatY225
        linear_combination -r5973
      unfold seg34AccY226
      linear_combination hd
    have hd0 : rho 37235 * rho 37236 = rho 37246 := by linear_combination r5974
    have hd1 : rho 37235 * rho 37235 = rho 37247 := by linear_combination r5975
    have hd2 : rho 37236 * rho 37236 = rho 37248 := by linear_combination r5976
    have hd3 : rho 37249 * (rho 37236 * rho 37236 + rho 37235 * rho 37235 * (-1)) = 2 * (rho 37235 * rho 37236) := by
      rw [hd0, hd1, hd2]
      linear_combination r5977
    have hd4 : rho 37250 * (2 - (rho 37236 * rho 37236 + rho 37235 * rho 37235 * (-1))) = rho 37236 * rho 37236 - rho 37235 * rho 37235 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX225 rho : Seg34.F), (seg34AccY225 rho : Seg34.F)⟩
      ⟨(rho 37235 : Seg34.F), (rho 37236 : Seg34.F)⟩
      ⟨(rho 37242 : Seg34.F), (rho 37243 : Seg34.F)⟩
      ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
      ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung225

theorem seg34_rung226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34218 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
        ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩
        ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
        ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5979 Seg34.relationLc1165 Seg34.relationLc1165Part0 Seg34.relationLc1165Part1 Seg34.relationLc1165Part2 Seg34.relationLc1165Part3 Seg34.relationLc1165Part4 Seg34.relationLc1165Part5 Seg34.relationLc1165Part6 Seg34.relationLc1165Part7 Seg34.relationLc1165Part8 Seg34.relationLc1165Part9 Seg34.relationLc1165Part10 Seg34.relationLc1165Part11 Seg34.relationLc1165Part12 Seg34.relationLc1165Part13 Seg34.relationLc1165Part14 at r5979
  unfold Seg34.relationRow5980 at r5980
  unfold Seg34.relationRow5981 Seg34.relationLc1166 Seg34.relationLc1166Part0 Seg34.relationLc1166Part1 Seg34.relationLc1166Part2 Seg34.relationLc1166Part3 Seg34.relationLc1166Part4 Seg34.relationLc1166Part5 Seg34.relationLc1166Part6 Seg34.relationLc1166Part7 at r5981
  unfold Seg34.relationRow5982 Seg34.relationLc1167 Seg34.relationLc1167Part0 Seg34.relationLc1167Part1 Seg34.relationLc1167Part2 Seg34.relationLc1167Part3 Seg34.relationLc1167Part4 Seg34.relationLc1167Part5 Seg34.relationLc1167Part6 Seg34.relationLc1167Part7 at r5982
  unfold Seg34.relationRow5983 at r5983
  unfold Seg34.relationRow5984 at r5984
  unfold Seg34.relationRow5985 at r5985
  unfold Seg34.relationRow5986 Seg34.relationLc1168 Seg34.relationLc1168Part0 Seg34.relationLc1168Part1 Seg34.relationLc1168Part2 Seg34.relationLc1168Part3 Seg34.relationLc1168Part4 Seg34.relationLc1168Part5 Seg34.relationLc1168Part6 Seg34.relationLc1168Part7 at r5986
  unfold Seg34.relationRow5987 Seg34.relationLc1169 Seg34.relationLc1169Part0 Seg34.relationLc1169Part1 Seg34.relationLc1169Part2 Seg34.relationLc1169Part3 Seg34.relationLc1169Part4 Seg34.relationLc1169Part5 Seg34.relationLc1169Part6 Seg34.relationLc1169Part7 at r5987
  unfold Seg34.relationRow5988 at r5988
  unfold Seg34.relationRow5989 at r5989
  unfold Seg34.relationRow5990 at r5990
  unfold Seg34.relationRow5991 at r5991
  unfold Seg34.relationRow5992 at r5992
  have hrung226 (bit : Bool) (hbit : rho 34218 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
        ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩
        ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
        ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩ := by
    have hsum : seg34AccX226 rho + seg34AccY226 rho = rho 37251 := by
      rw [seg34LadderFlatX226_eq, seg34LadderFlatY226_eq]
      unfold seg34LadderFlatX226 seg34LadderFlatY226
      linear_combination r5979
    have ha0 : (rho 37249 + rho 37250) * (seg34AccX226 rho + seg34AccY226 rho) = rho 37252 := by
      rw [hsum]
      linear_combination r5980
    have ha1 : rho 37250 * seg34AccX226 rho = rho 37253 := by
      rw [seg34LadderFlatX226_eq]
      unfold seg34LadderFlatX226
      linear_combination r5981
    have ha2 : rho 37249 * seg34AccY226 rho = rho 37254 := by
      rw [seg34LadderFlatY226_eq]
      unfold seg34LadderFlatY226
      linear_combination r5982
    have ha3 : 3021 * rho 37253 * rho 37254 = rho 37255 := by
      linear_combination r5983
    have ha4 : rho 37256 * (1 + rho 37255) = rho 37253 + rho 37254 := by
      linear_combination r5984
    have ha5 : rho 37257 * (1 - rho 37255) = rho 37252 - rho 37253 - rho 37254 := by
      linear_combination r5985
    have haddx :
        rho 37256 * (1 + 3021 * (rho 37250 * seg34AccX226 rho) * (rho 37249 * seg34AccY226 rho)) =
          rho 37250 * seg34AccX226 rho + rho 37249 * seg34AccY226 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37257 * (1 - 3021 * (rho 37250 * seg34AccX226 rho) * (rho 37249 * seg34AccY226 rho)) =
          (-1) * (rho 37250 * seg34AccX226 rho) - rho 37249 * seg34AccY226 rho +
            (seg34AccY226 rho - seg34AccX226 rho * (-1)) * (rho 37249 + rho 37250) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37257 * (1 - rho 37255) = rho 37252 - rho 37253 - rho 37254 := ha5
        _ = (-1) * rho 37253 - rho 37254 + (seg34AccY226 rho - seg34AccX226 rho * (-1)) * (rho 37249 + rho 37250) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX227 rho = seg34AccX226 rho - Bool.toZMod bit * (seg34AccX226 rho - rho 37256) := by
      have hd : rho 37258 = Bool.toZMod bit * (rho 37256 - seg34AccX226 rho) := by
        rw [← hbit, seg34LadderFlatX226_eq]
        unfold seg34LadderFlatX226
        linear_combination -r5986
      unfold seg34AccX227
      linear_combination hd
    have hsely : seg34AccY227 rho = seg34AccY226 rho - Bool.toZMod bit * (seg34AccY226 rho - rho 37257) := by
      have hd : rho 37259 = Bool.toZMod bit * (rho 37257 - seg34AccY226 rho) := by
        rw [← hbit, seg34LadderFlatY226_eq]
        unfold seg34LadderFlatY226
        linear_combination -r5987
      unfold seg34AccY227
      linear_combination hd
    have hd0 : rho 37249 * rho 37250 = rho 37260 := by linear_combination r5988
    have hd1 : rho 37249 * rho 37249 = rho 37261 := by linear_combination r5989
    have hd2 : rho 37250 * rho 37250 = rho 37262 := by linear_combination r5990
    have hd3 : rho 37263 * (rho 37250 * rho 37250 + rho 37249 * rho 37249 * (-1)) = 2 * (rho 37249 * rho 37250) := by
      rw [hd0, hd1, hd2]
      linear_combination r5991
    have hd4 : rho 37264 * (2 - (rho 37250 * rho 37250 + rho 37249 * rho 37249 * (-1))) = rho 37250 * rho 37250 - rho 37249 * rho 37249 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5992
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX226 rho : Seg34.F), (seg34AccY226 rho : Seg34.F)⟩
      ⟨(rho 37249 : Seg34.F), (rho 37250 : Seg34.F)⟩
      ⟨(rho 37256 : Seg34.F), (rho 37257 : Seg34.F)⟩
      ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
      ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung226

theorem seg34_rung227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34219 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
        ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩
        ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
        ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, p75, _, _, _, _
  ⟩
  unfold Seg34.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow5993 Seg34.relationLc1170 Seg34.relationLc1170Part0 Seg34.relationLc1170Part1 Seg34.relationLc1170Part2 Seg34.relationLc1170Part3 Seg34.relationLc1170Part4 Seg34.relationLc1170Part5 Seg34.relationLc1170Part6 Seg34.relationLc1170Part7 Seg34.relationLc1170Part8 Seg34.relationLc1170Part9 Seg34.relationLc1170Part10 Seg34.relationLc1170Part11 Seg34.relationLc1170Part12 Seg34.relationLc1170Part13 Seg34.relationLc1170Part14 at r5993
  unfold Seg34.relationRow5994 at r5994
  unfold Seg34.relationRow5995 Seg34.relationLc1171 Seg34.relationLc1171Part0 Seg34.relationLc1171Part1 Seg34.relationLc1171Part2 Seg34.relationLc1171Part3 Seg34.relationLc1171Part4 Seg34.relationLc1171Part5 Seg34.relationLc1171Part6 Seg34.relationLc1171Part7 at r5995
  unfold Seg34.relationRow5996 Seg34.relationLc1172 Seg34.relationLc1172Part0 Seg34.relationLc1172Part1 Seg34.relationLc1172Part2 Seg34.relationLc1172Part3 Seg34.relationLc1172Part4 Seg34.relationLc1172Part5 Seg34.relationLc1172Part6 Seg34.relationLc1172Part7 at r5996
  unfold Seg34.relationRow5997 at r5997
  unfold Seg34.relationRow5998 at r5998
  unfold Seg34.relationRow5999 at r5999
  unfold Seg34.relationRow6000 Seg34.relationLc1173 Seg34.relationLc1173Part0 Seg34.relationLc1173Part1 Seg34.relationLc1173Part2 Seg34.relationLc1173Part3 Seg34.relationLc1173Part4 Seg34.relationLc1173Part5 Seg34.relationLc1173Part6 Seg34.relationLc1173Part7 at r6000
  unfold Seg34.relationRow6001 Seg34.relationLc1174 Seg34.relationLc1174Part0 Seg34.relationLc1174Part1 Seg34.relationLc1174Part2 Seg34.relationLc1174Part3 Seg34.relationLc1174Part4 Seg34.relationLc1174Part5 Seg34.relationLc1174Part6 Seg34.relationLc1174Part7 at r6001
  unfold Seg34.relationRow6002 at r6002
  unfold Seg34.relationRow6003 at r6003
  unfold Seg34.relationRow6004 at r6004
  unfold Seg34.relationRow6005 at r6005
  unfold Seg34.relationRow6006 at r6006
  have hrung227 (bit : Bool) (hbit : rho 34219 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
        ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩
        ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
        ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩ := by
    have hsum : seg34AccX227 rho + seg34AccY227 rho = rho 37265 := by
      rw [seg34LadderFlatX227_eq, seg34LadderFlatY227_eq]
      unfold seg34LadderFlatX227 seg34LadderFlatY227
      linear_combination r5993
    have ha0 : (rho 37263 + rho 37264) * (seg34AccX227 rho + seg34AccY227 rho) = rho 37266 := by
      rw [hsum]
      linear_combination r5994
    have ha1 : rho 37264 * seg34AccX227 rho = rho 37267 := by
      rw [seg34LadderFlatX227_eq]
      unfold seg34LadderFlatX227
      linear_combination r5995
    have ha2 : rho 37263 * seg34AccY227 rho = rho 37268 := by
      rw [seg34LadderFlatY227_eq]
      unfold seg34LadderFlatY227
      linear_combination r5996
    have ha3 : 3021 * rho 37267 * rho 37268 = rho 37269 := by
      linear_combination r5997
    have ha4 : rho 37270 * (1 + rho 37269) = rho 37267 + rho 37268 := by
      linear_combination r5998
    have ha5 : rho 37271 * (1 - rho 37269) = rho 37266 - rho 37267 - rho 37268 := by
      linear_combination r5999
    have haddx :
        rho 37270 * (1 + 3021 * (rho 37264 * seg34AccX227 rho) * (rho 37263 * seg34AccY227 rho)) =
          rho 37264 * seg34AccX227 rho + rho 37263 * seg34AccY227 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37271 * (1 - 3021 * (rho 37264 * seg34AccX227 rho) * (rho 37263 * seg34AccY227 rho)) =
          (-1) * (rho 37264 * seg34AccX227 rho) - rho 37263 * seg34AccY227 rho +
            (seg34AccY227 rho - seg34AccX227 rho * (-1)) * (rho 37263 + rho 37264) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37271 * (1 - rho 37269) = rho 37266 - rho 37267 - rho 37268 := ha5
        _ = (-1) * rho 37267 - rho 37268 + (seg34AccY227 rho - seg34AccX227 rho * (-1)) * (rho 37263 + rho 37264) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX228 rho = seg34AccX227 rho - Bool.toZMod bit * (seg34AccX227 rho - rho 37270) := by
      have hd : rho 37272 = Bool.toZMod bit * (rho 37270 - seg34AccX227 rho) := by
        rw [← hbit, seg34LadderFlatX227_eq]
        unfold seg34LadderFlatX227
        linear_combination -r6000
      unfold seg34AccX228
      linear_combination hd
    have hsely : seg34AccY228 rho = seg34AccY227 rho - Bool.toZMod bit * (seg34AccY227 rho - rho 37271) := by
      have hd : rho 37273 = Bool.toZMod bit * (rho 37271 - seg34AccY227 rho) := by
        rw [← hbit, seg34LadderFlatY227_eq]
        unfold seg34LadderFlatY227
        linear_combination -r6001
      unfold seg34AccY228
      linear_combination hd
    have hd0 : rho 37263 * rho 37264 = rho 37274 := by linear_combination r6002
    have hd1 : rho 37263 * rho 37263 = rho 37275 := by linear_combination r6003
    have hd2 : rho 37264 * rho 37264 = rho 37276 := by linear_combination r6004
    have hd3 : rho 37277 * (rho 37264 * rho 37264 + rho 37263 * rho 37263 * (-1)) = 2 * (rho 37263 * rho 37264) := by
      rw [hd0, hd1, hd2]
      linear_combination r6005
    have hd4 : rho 37278 * (2 - (rho 37264 * rho 37264 + rho 37263 * rho 37263 * (-1))) = rho 37264 * rho 37264 - rho 37263 * rho 37263 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6006
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX227 rho : Seg34.F), (seg34AccY227 rho : Seg34.F)⟩
      ⟨(rho 37263 : Seg34.F), (rho 37264 : Seg34.F)⟩
      ⟨(rho 37270 : Seg34.F), (rho 37271 : Seg34.F)⟩
      ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
      ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung227

theorem seg34_rung228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34220 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
        ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩
        ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
        ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6007 Seg34.relationLc1175 Seg34.relationLc1175Part0 Seg34.relationLc1175Part1 Seg34.relationLc1175Part2 Seg34.relationLc1175Part3 Seg34.relationLc1175Part4 Seg34.relationLc1175Part5 Seg34.relationLc1175Part6 Seg34.relationLc1175Part7 Seg34.relationLc1175Part8 Seg34.relationLc1175Part9 Seg34.relationLc1175Part10 Seg34.relationLc1175Part11 Seg34.relationLc1175Part12 Seg34.relationLc1175Part13 Seg34.relationLc1175Part14 at r6007
  unfold Seg34.relationRow6008 at r6008
  unfold Seg34.relationRow6009 Seg34.relationLc1176 Seg34.relationLc1176Part0 Seg34.relationLc1176Part1 Seg34.relationLc1176Part2 Seg34.relationLc1176Part3 Seg34.relationLc1176Part4 Seg34.relationLc1176Part5 Seg34.relationLc1176Part6 Seg34.relationLc1176Part7 at r6009
  unfold Seg34.relationRow6010 Seg34.relationLc1177 Seg34.relationLc1177Part0 Seg34.relationLc1177Part1 Seg34.relationLc1177Part2 Seg34.relationLc1177Part3 Seg34.relationLc1177Part4 Seg34.relationLc1177Part5 Seg34.relationLc1177Part6 Seg34.relationLc1177Part7 at r6010
  unfold Seg34.relationRow6011 at r6011
  unfold Seg34.relationRow6012 at r6012
  unfold Seg34.relationRow6013 at r6013
  unfold Seg34.relationRow6014 Seg34.relationLc1178 Seg34.relationLc1178Part0 Seg34.relationLc1178Part1 Seg34.relationLc1178Part2 Seg34.relationLc1178Part3 Seg34.relationLc1178Part4 Seg34.relationLc1178Part5 Seg34.relationLc1178Part6 Seg34.relationLc1178Part7 at r6014
  unfold Seg34.relationRow6015 Seg34.relationLc1179 Seg34.relationLc1179Part0 Seg34.relationLc1179Part1 Seg34.relationLc1179Part2 Seg34.relationLc1179Part3 Seg34.relationLc1179Part4 Seg34.relationLc1179Part5 Seg34.relationLc1179Part6 Seg34.relationLc1179Part7 at r6015
  unfold Seg34.relationRow6016 at r6016
  unfold Seg34.relationRow6017 at r6017
  unfold Seg34.relationRow6018 at r6018
  unfold Seg34.relationRow6019 at r6019
  unfold Seg34.relationRow6020 at r6020
  have hrung228 (bit : Bool) (hbit : rho 34220 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
        ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩
        ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
        ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩ := by
    have hsum : seg34AccX228 rho + seg34AccY228 rho = rho 37279 := by
      rw [seg34LadderFlatX228_eq, seg34LadderFlatY228_eq]
      unfold seg34LadderFlatX228 seg34LadderFlatY228
      linear_combination r6007
    have ha0 : (rho 37277 + rho 37278) * (seg34AccX228 rho + seg34AccY228 rho) = rho 37280 := by
      rw [hsum]
      linear_combination r6008
    have ha1 : rho 37278 * seg34AccX228 rho = rho 37281 := by
      rw [seg34LadderFlatX228_eq]
      unfold seg34LadderFlatX228
      linear_combination r6009
    have ha2 : rho 37277 * seg34AccY228 rho = rho 37282 := by
      rw [seg34LadderFlatY228_eq]
      unfold seg34LadderFlatY228
      linear_combination r6010
    have ha3 : 3021 * rho 37281 * rho 37282 = rho 37283 := by
      linear_combination r6011
    have ha4 : rho 37284 * (1 + rho 37283) = rho 37281 + rho 37282 := by
      linear_combination r6012
    have ha5 : rho 37285 * (1 - rho 37283) = rho 37280 - rho 37281 - rho 37282 := by
      linear_combination r6013
    have haddx :
        rho 37284 * (1 + 3021 * (rho 37278 * seg34AccX228 rho) * (rho 37277 * seg34AccY228 rho)) =
          rho 37278 * seg34AccX228 rho + rho 37277 * seg34AccY228 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37285 * (1 - 3021 * (rho 37278 * seg34AccX228 rho) * (rho 37277 * seg34AccY228 rho)) =
          (-1) * (rho 37278 * seg34AccX228 rho) - rho 37277 * seg34AccY228 rho +
            (seg34AccY228 rho - seg34AccX228 rho * (-1)) * (rho 37277 + rho 37278) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37285 * (1 - rho 37283) = rho 37280 - rho 37281 - rho 37282 := ha5
        _ = (-1) * rho 37281 - rho 37282 + (seg34AccY228 rho - seg34AccX228 rho * (-1)) * (rho 37277 + rho 37278) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX229 rho = seg34AccX228 rho - Bool.toZMod bit * (seg34AccX228 rho - rho 37284) := by
      have hd : rho 37286 = Bool.toZMod bit * (rho 37284 - seg34AccX228 rho) := by
        rw [← hbit, seg34LadderFlatX228_eq]
        unfold seg34LadderFlatX228
        linear_combination -r6014
      unfold seg34AccX229
      linear_combination hd
    have hsely : seg34AccY229 rho = seg34AccY228 rho - Bool.toZMod bit * (seg34AccY228 rho - rho 37285) := by
      have hd : rho 37287 = Bool.toZMod bit * (rho 37285 - seg34AccY228 rho) := by
        rw [← hbit, seg34LadderFlatY228_eq]
        unfold seg34LadderFlatY228
        linear_combination -r6015
      unfold seg34AccY229
      linear_combination hd
    have hd0 : rho 37277 * rho 37278 = rho 37288 := by linear_combination r6016
    have hd1 : rho 37277 * rho 37277 = rho 37289 := by linear_combination r6017
    have hd2 : rho 37278 * rho 37278 = rho 37290 := by linear_combination r6018
    have hd3 : rho 37291 * (rho 37278 * rho 37278 + rho 37277 * rho 37277 * (-1)) = 2 * (rho 37277 * rho 37278) := by
      rw [hd0, hd1, hd2]
      linear_combination r6019
    have hd4 : rho 37292 * (2 - (rho 37278 * rho 37278 + rho 37277 * rho 37277 * (-1))) = rho 37278 * rho 37278 - rho 37277 * rho 37277 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6020
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX228 rho : Seg34.F), (seg34AccY228 rho : Seg34.F)⟩
      ⟨(rho 37277 : Seg34.F), (rho 37278 : Seg34.F)⟩
      ⟨(rho 37284 : Seg34.F), (rho 37285 : Seg34.F)⟩
      ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
      ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung228

theorem seg34_rung229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34221 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
        ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩
        ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
        ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6021 Seg34.relationLc1180 Seg34.relationLc1180Part0 Seg34.relationLc1180Part1 Seg34.relationLc1180Part2 Seg34.relationLc1180Part3 Seg34.relationLc1180Part4 Seg34.relationLc1180Part5 Seg34.relationLc1180Part6 Seg34.relationLc1180Part7 Seg34.relationLc1180Part8 Seg34.relationLc1180Part9 Seg34.relationLc1180Part10 Seg34.relationLc1180Part11 Seg34.relationLc1180Part12 Seg34.relationLc1180Part13 Seg34.relationLc1180Part14 at r6021
  unfold Seg34.relationRow6022 at r6022
  unfold Seg34.relationRow6023 Seg34.relationLc1181 Seg34.relationLc1181Part0 Seg34.relationLc1181Part1 Seg34.relationLc1181Part2 Seg34.relationLc1181Part3 Seg34.relationLc1181Part4 Seg34.relationLc1181Part5 Seg34.relationLc1181Part6 Seg34.relationLc1181Part7 at r6023
  unfold Seg34.relationRow6024 Seg34.relationLc1182 Seg34.relationLc1182Part0 Seg34.relationLc1182Part1 Seg34.relationLc1182Part2 Seg34.relationLc1182Part3 Seg34.relationLc1182Part4 Seg34.relationLc1182Part5 Seg34.relationLc1182Part6 Seg34.relationLc1182Part7 at r6024
  unfold Seg34.relationRow6025 at r6025
  unfold Seg34.relationRow6026 at r6026
  unfold Seg34.relationRow6027 at r6027
  unfold Seg34.relationRow6028 Seg34.relationLc1183 Seg34.relationLc1183Part0 Seg34.relationLc1183Part1 Seg34.relationLc1183Part2 Seg34.relationLc1183Part3 Seg34.relationLc1183Part4 Seg34.relationLc1183Part5 Seg34.relationLc1183Part6 Seg34.relationLc1183Part7 at r6028
  unfold Seg34.relationRow6029 Seg34.relationLc1184 Seg34.relationLc1184Part0 Seg34.relationLc1184Part1 Seg34.relationLc1184Part2 Seg34.relationLc1184Part3 Seg34.relationLc1184Part4 Seg34.relationLc1184Part5 Seg34.relationLc1184Part6 Seg34.relationLc1184Part7 at r6029
  unfold Seg34.relationRow6030 at r6030
  unfold Seg34.relationRow6031 at r6031
  unfold Seg34.relationRow6032 at r6032
  unfold Seg34.relationRow6033 at r6033
  unfold Seg34.relationRow6034 at r6034
  have hrung229 (bit : Bool) (hbit : rho 34221 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
        ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩
        ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
        ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩ := by
    have hsum : seg34AccX229 rho + seg34AccY229 rho = rho 37293 := by
      rw [seg34LadderFlatX229_eq, seg34LadderFlatY229_eq]
      unfold seg34LadderFlatX229 seg34LadderFlatY229
      linear_combination r6021
    have ha0 : (rho 37291 + rho 37292) * (seg34AccX229 rho + seg34AccY229 rho) = rho 37294 := by
      rw [hsum]
      linear_combination r6022
    have ha1 : rho 37292 * seg34AccX229 rho = rho 37295 := by
      rw [seg34LadderFlatX229_eq]
      unfold seg34LadderFlatX229
      linear_combination r6023
    have ha2 : rho 37291 * seg34AccY229 rho = rho 37296 := by
      rw [seg34LadderFlatY229_eq]
      unfold seg34LadderFlatY229
      linear_combination r6024
    have ha3 : 3021 * rho 37295 * rho 37296 = rho 37297 := by
      linear_combination r6025
    have ha4 : rho 37298 * (1 + rho 37297) = rho 37295 + rho 37296 := by
      linear_combination r6026
    have ha5 : rho 37299 * (1 - rho 37297) = rho 37294 - rho 37295 - rho 37296 := by
      linear_combination r6027
    have haddx :
        rho 37298 * (1 + 3021 * (rho 37292 * seg34AccX229 rho) * (rho 37291 * seg34AccY229 rho)) =
          rho 37292 * seg34AccX229 rho + rho 37291 * seg34AccY229 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37299 * (1 - 3021 * (rho 37292 * seg34AccX229 rho) * (rho 37291 * seg34AccY229 rho)) =
          (-1) * (rho 37292 * seg34AccX229 rho) - rho 37291 * seg34AccY229 rho +
            (seg34AccY229 rho - seg34AccX229 rho * (-1)) * (rho 37291 + rho 37292) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37299 * (1 - rho 37297) = rho 37294 - rho 37295 - rho 37296 := ha5
        _ = (-1) * rho 37295 - rho 37296 + (seg34AccY229 rho - seg34AccX229 rho * (-1)) * (rho 37291 + rho 37292) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX230 rho = seg34AccX229 rho - Bool.toZMod bit * (seg34AccX229 rho - rho 37298) := by
      have hd : rho 37300 = Bool.toZMod bit * (rho 37298 - seg34AccX229 rho) := by
        rw [← hbit, seg34LadderFlatX229_eq]
        unfold seg34LadderFlatX229
        linear_combination -r6028
      unfold seg34AccX230
      linear_combination hd
    have hsely : seg34AccY230 rho = seg34AccY229 rho - Bool.toZMod bit * (seg34AccY229 rho - rho 37299) := by
      have hd : rho 37301 = Bool.toZMod bit * (rho 37299 - seg34AccY229 rho) := by
        rw [← hbit, seg34LadderFlatY229_eq]
        unfold seg34LadderFlatY229
        linear_combination -r6029
      unfold seg34AccY230
      linear_combination hd
    have hd0 : rho 37291 * rho 37292 = rho 37302 := by linear_combination r6030
    have hd1 : rho 37291 * rho 37291 = rho 37303 := by linear_combination r6031
    have hd2 : rho 37292 * rho 37292 = rho 37304 := by linear_combination r6032
    have hd3 : rho 37305 * (rho 37292 * rho 37292 + rho 37291 * rho 37291 * (-1)) = 2 * (rho 37291 * rho 37292) := by
      rw [hd0, hd1, hd2]
      linear_combination r6033
    have hd4 : rho 37306 * (2 - (rho 37292 * rho 37292 + rho 37291 * rho 37291 * (-1))) = rho 37292 * rho 37292 - rho 37291 * rho 37291 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6034
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX229 rho : Seg34.F), (seg34AccY229 rho : Seg34.F)⟩
      ⟨(rho 37291 : Seg34.F), (rho 37292 : Seg34.F)⟩
      ⟨(rho 37298 : Seg34.F), (rho 37299 : Seg34.F)⟩
      ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
      ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung229

theorem seg34_rung230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34222 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
        ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩
        ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
        ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6035 Seg34.relationLc1185 Seg34.relationLc1185Part0 Seg34.relationLc1185Part1 Seg34.relationLc1185Part2 Seg34.relationLc1185Part3 Seg34.relationLc1185Part4 Seg34.relationLc1185Part5 Seg34.relationLc1185Part6 Seg34.relationLc1185Part7 Seg34.relationLc1185Part8 Seg34.relationLc1185Part9 Seg34.relationLc1185Part10 Seg34.relationLc1185Part11 Seg34.relationLc1185Part12 Seg34.relationLc1185Part13 Seg34.relationLc1185Part14 at r6035
  unfold Seg34.relationRow6036 at r6036
  unfold Seg34.relationRow6037 Seg34.relationLc1186 Seg34.relationLc1186Part0 Seg34.relationLc1186Part1 Seg34.relationLc1186Part2 Seg34.relationLc1186Part3 Seg34.relationLc1186Part4 Seg34.relationLc1186Part5 Seg34.relationLc1186Part6 Seg34.relationLc1186Part7 at r6037
  unfold Seg34.relationRow6038 Seg34.relationLc1187 Seg34.relationLc1187Part0 Seg34.relationLc1187Part1 Seg34.relationLc1187Part2 Seg34.relationLc1187Part3 Seg34.relationLc1187Part4 Seg34.relationLc1187Part5 Seg34.relationLc1187Part6 Seg34.relationLc1187Part7 at r6038
  unfold Seg34.relationRow6039 at r6039
  unfold Seg34.relationRow6040 at r6040
  unfold Seg34.relationRow6041 at r6041
  unfold Seg34.relationRow6042 Seg34.relationLc1188 Seg34.relationLc1188Part0 Seg34.relationLc1188Part1 Seg34.relationLc1188Part2 Seg34.relationLc1188Part3 Seg34.relationLc1188Part4 Seg34.relationLc1188Part5 Seg34.relationLc1188Part6 Seg34.relationLc1188Part7 at r6042
  unfold Seg34.relationRow6043 Seg34.relationLc1189 Seg34.relationLc1189Part0 Seg34.relationLc1189Part1 Seg34.relationLc1189Part2 Seg34.relationLc1189Part3 Seg34.relationLc1189Part4 Seg34.relationLc1189Part5 Seg34.relationLc1189Part6 Seg34.relationLc1189Part7 at r6043
  unfold Seg34.relationRow6044 at r6044
  unfold Seg34.relationRow6045 at r6045
  unfold Seg34.relationRow6046 at r6046
  unfold Seg34.relationRow6047 at r6047
  unfold Seg34.relationRow6048 at r6048
  have hrung230 (bit : Bool) (hbit : rho 34222 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
        ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩
        ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
        ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩ := by
    have hsum : seg34AccX230 rho + seg34AccY230 rho = rho 37307 := by
      rw [seg34LadderFlatX230_eq, seg34LadderFlatY230_eq]
      unfold seg34LadderFlatX230 seg34LadderFlatY230
      linear_combination r6035
    have ha0 : (rho 37305 + rho 37306) * (seg34AccX230 rho + seg34AccY230 rho) = rho 37308 := by
      rw [hsum]
      linear_combination r6036
    have ha1 : rho 37306 * seg34AccX230 rho = rho 37309 := by
      rw [seg34LadderFlatX230_eq]
      unfold seg34LadderFlatX230
      linear_combination r6037
    have ha2 : rho 37305 * seg34AccY230 rho = rho 37310 := by
      rw [seg34LadderFlatY230_eq]
      unfold seg34LadderFlatY230
      linear_combination r6038
    have ha3 : 3021 * rho 37309 * rho 37310 = rho 37311 := by
      linear_combination r6039
    have ha4 : rho 37312 * (1 + rho 37311) = rho 37309 + rho 37310 := by
      linear_combination r6040
    have ha5 : rho 37313 * (1 - rho 37311) = rho 37308 - rho 37309 - rho 37310 := by
      linear_combination r6041
    have haddx :
        rho 37312 * (1 + 3021 * (rho 37306 * seg34AccX230 rho) * (rho 37305 * seg34AccY230 rho)) =
          rho 37306 * seg34AccX230 rho + rho 37305 * seg34AccY230 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37313 * (1 - 3021 * (rho 37306 * seg34AccX230 rho) * (rho 37305 * seg34AccY230 rho)) =
          (-1) * (rho 37306 * seg34AccX230 rho) - rho 37305 * seg34AccY230 rho +
            (seg34AccY230 rho - seg34AccX230 rho * (-1)) * (rho 37305 + rho 37306) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37313 * (1 - rho 37311) = rho 37308 - rho 37309 - rho 37310 := ha5
        _ = (-1) * rho 37309 - rho 37310 + (seg34AccY230 rho - seg34AccX230 rho * (-1)) * (rho 37305 + rho 37306) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX231 rho = seg34AccX230 rho - Bool.toZMod bit * (seg34AccX230 rho - rho 37312) := by
      have hd : rho 37314 = Bool.toZMod bit * (rho 37312 - seg34AccX230 rho) := by
        rw [← hbit, seg34LadderFlatX230_eq]
        unfold seg34LadderFlatX230
        linear_combination -r6042
      unfold seg34AccX231
      linear_combination hd
    have hsely : seg34AccY231 rho = seg34AccY230 rho - Bool.toZMod bit * (seg34AccY230 rho - rho 37313) := by
      have hd : rho 37315 = Bool.toZMod bit * (rho 37313 - seg34AccY230 rho) := by
        rw [← hbit, seg34LadderFlatY230_eq]
        unfold seg34LadderFlatY230
        linear_combination -r6043
      unfold seg34AccY231
      linear_combination hd
    have hd0 : rho 37305 * rho 37306 = rho 37316 := by linear_combination r6044
    have hd1 : rho 37305 * rho 37305 = rho 37317 := by linear_combination r6045
    have hd2 : rho 37306 * rho 37306 = rho 37318 := by linear_combination r6046
    have hd3 : rho 37319 * (rho 37306 * rho 37306 + rho 37305 * rho 37305 * (-1)) = 2 * (rho 37305 * rho 37306) := by
      rw [hd0, hd1, hd2]
      linear_combination r6047
    have hd4 : rho 37320 * (2 - (rho 37306 * rho 37306 + rho 37305 * rho 37305 * (-1))) = rho 37306 * rho 37306 - rho 37305 * rho 37305 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6048
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX230 rho : Seg34.F), (seg34AccY230 rho : Seg34.F)⟩
      ⟨(rho 37305 : Seg34.F), (rho 37306 : Seg34.F)⟩
      ⟨(rho 37312 : Seg34.F), (rho 37313 : Seg34.F)⟩
      ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
      ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung230

theorem seg34_rung231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34223 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
        ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩
        ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
        ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6049 Seg34.relationLc1190 Seg34.relationLc1190Part0 Seg34.relationLc1190Part1 Seg34.relationLc1190Part2 Seg34.relationLc1190Part3 Seg34.relationLc1190Part4 Seg34.relationLc1190Part5 Seg34.relationLc1190Part6 Seg34.relationLc1190Part7 Seg34.relationLc1190Part8 Seg34.relationLc1190Part9 Seg34.relationLc1190Part10 Seg34.relationLc1190Part11 Seg34.relationLc1190Part12 Seg34.relationLc1190Part13 Seg34.relationLc1190Part14 at r6049
  unfold Seg34.relationRow6050 at r6050
  unfold Seg34.relationRow6051 Seg34.relationLc1191 Seg34.relationLc1191Part0 Seg34.relationLc1191Part1 Seg34.relationLc1191Part2 Seg34.relationLc1191Part3 Seg34.relationLc1191Part4 Seg34.relationLc1191Part5 Seg34.relationLc1191Part6 Seg34.relationLc1191Part7 at r6051
  unfold Seg34.relationRow6052 Seg34.relationLc1192 Seg34.relationLc1192Part0 Seg34.relationLc1192Part1 Seg34.relationLc1192Part2 Seg34.relationLc1192Part3 Seg34.relationLc1192Part4 Seg34.relationLc1192Part5 Seg34.relationLc1192Part6 Seg34.relationLc1192Part7 at r6052
  unfold Seg34.relationRow6053 at r6053
  unfold Seg34.relationRow6054 at r6054
  unfold Seg34.relationRow6055 at r6055
  unfold Seg34.relationRow6056 Seg34.relationLc1193 Seg34.relationLc1193Part0 Seg34.relationLc1193Part1 Seg34.relationLc1193Part2 Seg34.relationLc1193Part3 Seg34.relationLc1193Part4 Seg34.relationLc1193Part5 Seg34.relationLc1193Part6 Seg34.relationLc1193Part7 at r6056
  unfold Seg34.relationRow6057 Seg34.relationLc1194 Seg34.relationLc1194Part0 Seg34.relationLc1194Part1 Seg34.relationLc1194Part2 Seg34.relationLc1194Part3 Seg34.relationLc1194Part4 Seg34.relationLc1194Part5 Seg34.relationLc1194Part6 Seg34.relationLc1194Part7 at r6057
  unfold Seg34.relationRow6058 at r6058
  unfold Seg34.relationRow6059 at r6059
  unfold Seg34.relationRow6060 at r6060
  unfold Seg34.relationRow6061 at r6061
  unfold Seg34.relationRow6062 at r6062
  have hrung231 (bit : Bool) (hbit : rho 34223 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
        ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩
        ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
        ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩ := by
    have hsum : seg34AccX231 rho + seg34AccY231 rho = rho 37321 := by
      rw [seg34LadderFlatX231_eq, seg34LadderFlatY231_eq]
      unfold seg34LadderFlatX231 seg34LadderFlatY231
      linear_combination r6049
    have ha0 : (rho 37319 + rho 37320) * (seg34AccX231 rho + seg34AccY231 rho) = rho 37322 := by
      rw [hsum]
      linear_combination r6050
    have ha1 : rho 37320 * seg34AccX231 rho = rho 37323 := by
      rw [seg34LadderFlatX231_eq]
      unfold seg34LadderFlatX231
      linear_combination r6051
    have ha2 : rho 37319 * seg34AccY231 rho = rho 37324 := by
      rw [seg34LadderFlatY231_eq]
      unfold seg34LadderFlatY231
      linear_combination r6052
    have ha3 : 3021 * rho 37323 * rho 37324 = rho 37325 := by
      linear_combination r6053
    have ha4 : rho 37326 * (1 + rho 37325) = rho 37323 + rho 37324 := by
      linear_combination r6054
    have ha5 : rho 37327 * (1 - rho 37325) = rho 37322 - rho 37323 - rho 37324 := by
      linear_combination r6055
    have haddx :
        rho 37326 * (1 + 3021 * (rho 37320 * seg34AccX231 rho) * (rho 37319 * seg34AccY231 rho)) =
          rho 37320 * seg34AccX231 rho + rho 37319 * seg34AccY231 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37327 * (1 - 3021 * (rho 37320 * seg34AccX231 rho) * (rho 37319 * seg34AccY231 rho)) =
          (-1) * (rho 37320 * seg34AccX231 rho) - rho 37319 * seg34AccY231 rho +
            (seg34AccY231 rho - seg34AccX231 rho * (-1)) * (rho 37319 + rho 37320) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37327 * (1 - rho 37325) = rho 37322 - rho 37323 - rho 37324 := ha5
        _ = (-1) * rho 37323 - rho 37324 + (seg34AccY231 rho - seg34AccX231 rho * (-1)) * (rho 37319 + rho 37320) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX232 rho = seg34AccX231 rho - Bool.toZMod bit * (seg34AccX231 rho - rho 37326) := by
      have hd : rho 37328 = Bool.toZMod bit * (rho 37326 - seg34AccX231 rho) := by
        rw [← hbit, seg34LadderFlatX231_eq]
        unfold seg34LadderFlatX231
        linear_combination -r6056
      unfold seg34AccX232
      linear_combination hd
    have hsely : seg34AccY232 rho = seg34AccY231 rho - Bool.toZMod bit * (seg34AccY231 rho - rho 37327) := by
      have hd : rho 37329 = Bool.toZMod bit * (rho 37327 - seg34AccY231 rho) := by
        rw [← hbit, seg34LadderFlatY231_eq]
        unfold seg34LadderFlatY231
        linear_combination -r6057
      unfold seg34AccY232
      linear_combination hd
    have hd0 : rho 37319 * rho 37320 = rho 37330 := by linear_combination r6058
    have hd1 : rho 37319 * rho 37319 = rho 37331 := by linear_combination r6059
    have hd2 : rho 37320 * rho 37320 = rho 37332 := by linear_combination r6060
    have hd3 : rho 37333 * (rho 37320 * rho 37320 + rho 37319 * rho 37319 * (-1)) = 2 * (rho 37319 * rho 37320) := by
      rw [hd0, hd1, hd2]
      linear_combination r6061
    have hd4 : rho 37334 * (2 - (rho 37320 * rho 37320 + rho 37319 * rho 37319 * (-1))) = rho 37320 * rho 37320 - rho 37319 * rho 37319 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6062
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
      ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩
      ⟨(rho 37326 : Seg34.F), (rho 37327 : Seg34.F)⟩
      ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
      ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung231

theorem seg34_rung232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34224 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
        ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩
        ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
        ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, _, _, _⟩
  unfold Seg34.relationRow6063 Seg34.relationLc1195 Seg34.relationLc1195Part0 Seg34.relationLc1195Part1 Seg34.relationLc1195Part2 Seg34.relationLc1195Part3 Seg34.relationLc1195Part4 Seg34.relationLc1195Part5 Seg34.relationLc1195Part6 Seg34.relationLc1195Part7 Seg34.relationLc1195Part8 Seg34.relationLc1195Part9 Seg34.relationLc1195Part10 Seg34.relationLc1195Part11 Seg34.relationLc1195Part12 Seg34.relationLc1195Part13 Seg34.relationLc1195Part14 at r6063
  unfold Seg34.relationRow6064 at r6064
  unfold Seg34.relationRow6065 Seg34.relationLc1196 Seg34.relationLc1196Part0 Seg34.relationLc1196Part1 Seg34.relationLc1196Part2 Seg34.relationLc1196Part3 Seg34.relationLc1196Part4 Seg34.relationLc1196Part5 Seg34.relationLc1196Part6 Seg34.relationLc1196Part7 at r6065
  unfold Seg34.relationRow6066 Seg34.relationLc1197 Seg34.relationLc1197Part0 Seg34.relationLc1197Part1 Seg34.relationLc1197Part2 Seg34.relationLc1197Part3 Seg34.relationLc1197Part4 Seg34.relationLc1197Part5 Seg34.relationLc1197Part6 Seg34.relationLc1197Part7 at r6066
  unfold Seg34.relationRow6067 at r6067
  unfold Seg34.relationRow6068 at r6068
  unfold Seg34.relationRow6069 at r6069
  unfold Seg34.relationRow6070 Seg34.relationLc1198 Seg34.relationLc1198Part0 Seg34.relationLc1198Part1 Seg34.relationLc1198Part2 Seg34.relationLc1198Part3 Seg34.relationLc1198Part4 Seg34.relationLc1198Part5 Seg34.relationLc1198Part6 Seg34.relationLc1198Part7 at r6070
  unfold Seg34.relationRow6071 Seg34.relationLc1199 Seg34.relationLc1199Part0 Seg34.relationLc1199Part1 Seg34.relationLc1199Part2 Seg34.relationLc1199Part3 Seg34.relationLc1199Part4 Seg34.relationLc1199Part5 Seg34.relationLc1199Part6 Seg34.relationLc1199Part7 at r6071
  unfold Seg34.relationRow6072 at r6072
  unfold Seg34.relationRow6073 at r6073
  unfold Seg34.relationRow6074 at r6074
  unfold Seg34.relationRow6075 at r6075
  unfold Seg34.relationRow6076 at r6076
  have hrung232 (bit : Bool) (hbit : rho 34224 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
        ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩
        ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
        ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩ := by
    have hsum : seg34AccX232 rho + seg34AccY232 rho = rho 37335 := by
      rw [seg34LadderFlatX232_eq, seg34LadderFlatY232_eq]
      unfold seg34LadderFlatX232 seg34LadderFlatY232
      linear_combination r6063
    have ha0 : (rho 37333 + rho 37334) * (seg34AccX232 rho + seg34AccY232 rho) = rho 37336 := by
      rw [hsum]
      linear_combination r6064
    have ha1 : rho 37334 * seg34AccX232 rho = rho 37337 := by
      rw [seg34LadderFlatX232_eq]
      unfold seg34LadderFlatX232
      linear_combination r6065
    have ha2 : rho 37333 * seg34AccY232 rho = rho 37338 := by
      rw [seg34LadderFlatY232_eq]
      unfold seg34LadderFlatY232
      linear_combination r6066
    have ha3 : 3021 * rho 37337 * rho 37338 = rho 37339 := by
      linear_combination r6067
    have ha4 : rho 37340 * (1 + rho 37339) = rho 37337 + rho 37338 := by
      linear_combination r6068
    have ha5 : rho 37341 * (1 - rho 37339) = rho 37336 - rho 37337 - rho 37338 := by
      linear_combination r6069
    have haddx :
        rho 37340 * (1 + 3021 * (rho 37334 * seg34AccX232 rho) * (rho 37333 * seg34AccY232 rho)) =
          rho 37334 * seg34AccX232 rho + rho 37333 * seg34AccY232 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37341 * (1 - 3021 * (rho 37334 * seg34AccX232 rho) * (rho 37333 * seg34AccY232 rho)) =
          (-1) * (rho 37334 * seg34AccX232 rho) - rho 37333 * seg34AccY232 rho +
            (seg34AccY232 rho - seg34AccX232 rho * (-1)) * (rho 37333 + rho 37334) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37341 * (1 - rho 37339) = rho 37336 - rho 37337 - rho 37338 := ha5
        _ = (-1) * rho 37337 - rho 37338 + (seg34AccY232 rho - seg34AccX232 rho * (-1)) * (rho 37333 + rho 37334) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX233 rho = seg34AccX232 rho - Bool.toZMod bit * (seg34AccX232 rho - rho 37340) := by
      have hd : rho 37342 = Bool.toZMod bit * (rho 37340 - seg34AccX232 rho) := by
        rw [← hbit, seg34LadderFlatX232_eq]
        unfold seg34LadderFlatX232
        linear_combination -r6070
      unfold seg34AccX233
      linear_combination hd
    have hsely : seg34AccY233 rho = seg34AccY232 rho - Bool.toZMod bit * (seg34AccY232 rho - rho 37341) := by
      have hd : rho 37343 = Bool.toZMod bit * (rho 37341 - seg34AccY232 rho) := by
        rw [← hbit, seg34LadderFlatY232_eq]
        unfold seg34LadderFlatY232
        linear_combination -r6071
      unfold seg34AccY233
      linear_combination hd
    have hd0 : rho 37333 * rho 37334 = rho 37344 := by linear_combination r6072
    have hd1 : rho 37333 * rho 37333 = rho 37345 := by linear_combination r6073
    have hd2 : rho 37334 * rho 37334 = rho 37346 := by linear_combination r6074
    have hd3 : rho 37347 * (rho 37334 * rho 37334 + rho 37333 * rho 37333 * (-1)) = 2 * (rho 37333 * rho 37334) := by
      rw [hd0, hd1, hd2]
      linear_combination r6075
    have hd4 : rho 37348 * (2 - (rho 37334 * rho 37334 + rho 37333 * rho 37333 * (-1))) = rho 37334 * rho 37334 - rho 37333 * rho 37333 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
      ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩
      ⟨(rho 37340 : Seg34.F), (rho 37341 : Seg34.F)⟩
      ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
      ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung232

theorem seg34_rung233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34225 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
        ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩
        ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
        ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6077, r6078, r6079⟩
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6077 Seg34.relationLc1200 Seg34.relationLc1200Part0 Seg34.relationLc1200Part1 Seg34.relationLc1200Part2 Seg34.relationLc1200Part3 Seg34.relationLc1200Part4 Seg34.relationLc1200Part5 Seg34.relationLc1200Part6 Seg34.relationLc1200Part7 Seg34.relationLc1200Part8 Seg34.relationLc1200Part9 Seg34.relationLc1200Part10 Seg34.relationLc1200Part11 Seg34.relationLc1200Part12 Seg34.relationLc1200Part13 Seg34.relationLc1200Part14 at r6077
  unfold Seg34.relationRow6078 at r6078
  unfold Seg34.relationRow6079 Seg34.relationLc1201 Seg34.relationLc1201Part0 Seg34.relationLc1201Part1 Seg34.relationLc1201Part2 Seg34.relationLc1201Part3 Seg34.relationLc1201Part4 Seg34.relationLc1201Part5 Seg34.relationLc1201Part6 Seg34.relationLc1201Part7 at r6079
  unfold Seg34.relationRow6080 Seg34.relationLc1202 Seg34.relationLc1202Part0 Seg34.relationLc1202Part1 Seg34.relationLc1202Part2 Seg34.relationLc1202Part3 Seg34.relationLc1202Part4 Seg34.relationLc1202Part5 Seg34.relationLc1202Part6 Seg34.relationLc1202Part7 at r6080
  unfold Seg34.relationRow6081 at r6081
  unfold Seg34.relationRow6082 at r6082
  unfold Seg34.relationRow6083 at r6083
  unfold Seg34.relationRow6084 Seg34.relationLc1203 Seg34.relationLc1203Part0 Seg34.relationLc1203Part1 Seg34.relationLc1203Part2 Seg34.relationLc1203Part3 Seg34.relationLc1203Part4 Seg34.relationLc1203Part5 Seg34.relationLc1203Part6 Seg34.relationLc1203Part7 at r6084
  unfold Seg34.relationRow6085 Seg34.relationLc1204 Seg34.relationLc1204Part0 Seg34.relationLc1204Part1 Seg34.relationLc1204Part2 Seg34.relationLc1204Part3 Seg34.relationLc1204Part4 Seg34.relationLc1204Part5 Seg34.relationLc1204Part6 Seg34.relationLc1204Part7 at r6085
  unfold Seg34.relationRow6086 at r6086
  unfold Seg34.relationRow6087 at r6087
  unfold Seg34.relationRow6088 at r6088
  unfold Seg34.relationRow6089 at r6089
  unfold Seg34.relationRow6090 at r6090
  have hrung233 (bit : Bool) (hbit : rho 34225 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
        ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩
        ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
        ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩ := by
    have hsum : seg34AccX233 rho + seg34AccY233 rho = rho 37349 := by
      rw [seg34LadderFlatX233_eq, seg34LadderFlatY233_eq]
      unfold seg34LadderFlatX233 seg34LadderFlatY233
      linear_combination r6077
    have ha0 : (rho 37347 + rho 37348) * (seg34AccX233 rho + seg34AccY233 rho) = rho 37350 := by
      rw [hsum]
      linear_combination r6078
    have ha1 : rho 37348 * seg34AccX233 rho = rho 37351 := by
      rw [seg34LadderFlatX233_eq]
      unfold seg34LadderFlatX233
      linear_combination r6079
    have ha2 : rho 37347 * seg34AccY233 rho = rho 37352 := by
      rw [seg34LadderFlatY233_eq]
      unfold seg34LadderFlatY233
      linear_combination r6080
    have ha3 : 3021 * rho 37351 * rho 37352 = rho 37353 := by
      linear_combination r6081
    have ha4 : rho 37354 * (1 + rho 37353) = rho 37351 + rho 37352 := by
      linear_combination r6082
    have ha5 : rho 37355 * (1 - rho 37353) = rho 37350 - rho 37351 - rho 37352 := by
      linear_combination r6083
    have haddx :
        rho 37354 * (1 + 3021 * (rho 37348 * seg34AccX233 rho) * (rho 37347 * seg34AccY233 rho)) =
          rho 37348 * seg34AccX233 rho + rho 37347 * seg34AccY233 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37355 * (1 - 3021 * (rho 37348 * seg34AccX233 rho) * (rho 37347 * seg34AccY233 rho)) =
          (-1) * (rho 37348 * seg34AccX233 rho) - rho 37347 * seg34AccY233 rho +
            (seg34AccY233 rho - seg34AccX233 rho * (-1)) * (rho 37347 + rho 37348) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37355 * (1 - rho 37353) = rho 37350 - rho 37351 - rho 37352 := ha5
        _ = (-1) * rho 37351 - rho 37352 + (seg34AccY233 rho - seg34AccX233 rho * (-1)) * (rho 37347 + rho 37348) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX234 rho = seg34AccX233 rho - Bool.toZMod bit * (seg34AccX233 rho - rho 37354) := by
      have hd : rho 37356 = Bool.toZMod bit * (rho 37354 - seg34AccX233 rho) := by
        rw [← hbit, seg34LadderFlatX233_eq]
        unfold seg34LadderFlatX233
        linear_combination -r6084
      unfold seg34AccX234
      linear_combination hd
    have hsely : seg34AccY234 rho = seg34AccY233 rho - Bool.toZMod bit * (seg34AccY233 rho - rho 37355) := by
      have hd : rho 37357 = Bool.toZMod bit * (rho 37355 - seg34AccY233 rho) := by
        rw [← hbit, seg34LadderFlatY233_eq]
        unfold seg34LadderFlatY233
        linear_combination -r6085
      unfold seg34AccY234
      linear_combination hd
    have hd0 : rho 37347 * rho 37348 = rho 37358 := by linear_combination r6086
    have hd1 : rho 37347 * rho 37347 = rho 37359 := by linear_combination r6087
    have hd2 : rho 37348 * rho 37348 = rho 37360 := by linear_combination r6088
    have hd3 : rho 37361 * (rho 37348 * rho 37348 + rho 37347 * rho 37347 * (-1)) = 2 * (rho 37347 * rho 37348) := by
      rw [hd0, hd1, hd2]
      linear_combination r6089
    have hd4 : rho 37362 * (2 - (rho 37348 * rho 37348 + rho 37347 * rho 37347 * (-1))) = rho 37348 * rho 37348 - rho 37347 * rho 37347 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6090
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
      ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩
      ⟨(rho 37354 : Seg34.F), (rho 37355 : Seg34.F)⟩
      ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
      ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung233

theorem seg34_rung234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34226 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
        ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩
        ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
        ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6091 Seg34.relationLc1205 Seg34.relationLc1205Part0 Seg34.relationLc1205Part1 Seg34.relationLc1205Part2 Seg34.relationLc1205Part3 Seg34.relationLc1205Part4 Seg34.relationLc1205Part5 Seg34.relationLc1205Part6 Seg34.relationLc1205Part7 Seg34.relationLc1205Part8 Seg34.relationLc1205Part9 Seg34.relationLc1205Part10 Seg34.relationLc1205Part11 Seg34.relationLc1205Part12 Seg34.relationLc1205Part13 Seg34.relationLc1205Part14 at r6091
  unfold Seg34.relationRow6092 at r6092
  unfold Seg34.relationRow6093 Seg34.relationLc1206 Seg34.relationLc1206Part0 Seg34.relationLc1206Part1 Seg34.relationLc1206Part2 Seg34.relationLc1206Part3 Seg34.relationLc1206Part4 Seg34.relationLc1206Part5 Seg34.relationLc1206Part6 Seg34.relationLc1206Part7 at r6093
  unfold Seg34.relationRow6094 Seg34.relationLc1207 Seg34.relationLc1207Part0 Seg34.relationLc1207Part1 Seg34.relationLc1207Part2 Seg34.relationLc1207Part3 Seg34.relationLc1207Part4 Seg34.relationLc1207Part5 Seg34.relationLc1207Part6 Seg34.relationLc1207Part7 at r6094
  unfold Seg34.relationRow6095 at r6095
  unfold Seg34.relationRow6096 at r6096
  unfold Seg34.relationRow6097 at r6097
  unfold Seg34.relationRow6098 Seg34.relationLc1208 Seg34.relationLc1208Part0 Seg34.relationLc1208Part1 Seg34.relationLc1208Part2 Seg34.relationLc1208Part3 Seg34.relationLc1208Part4 Seg34.relationLc1208Part5 Seg34.relationLc1208Part6 Seg34.relationLc1208Part7 at r6098
  unfold Seg34.relationRow6099 Seg34.relationLc1209 Seg34.relationLc1209Part0 Seg34.relationLc1209Part1 Seg34.relationLc1209Part2 Seg34.relationLc1209Part3 Seg34.relationLc1209Part4 Seg34.relationLc1209Part5 Seg34.relationLc1209Part6 Seg34.relationLc1209Part7 at r6099
  unfold Seg34.relationRow6100 at r6100
  unfold Seg34.relationRow6101 at r6101
  unfold Seg34.relationRow6102 at r6102
  unfold Seg34.relationRow6103 at r6103
  unfold Seg34.relationRow6104 at r6104
  have hrung234 (bit : Bool) (hbit : rho 34226 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
        ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩
        ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
        ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩ := by
    have hsum : seg34AccX234 rho + seg34AccY234 rho = rho 37363 := by
      rw [seg34LadderFlatX234_eq, seg34LadderFlatY234_eq]
      unfold seg34LadderFlatX234 seg34LadderFlatY234
      linear_combination r6091
    have ha0 : (rho 37361 + rho 37362) * (seg34AccX234 rho + seg34AccY234 rho) = rho 37364 := by
      rw [hsum]
      linear_combination r6092
    have ha1 : rho 37362 * seg34AccX234 rho = rho 37365 := by
      rw [seg34LadderFlatX234_eq]
      unfold seg34LadderFlatX234
      linear_combination r6093
    have ha2 : rho 37361 * seg34AccY234 rho = rho 37366 := by
      rw [seg34LadderFlatY234_eq]
      unfold seg34LadderFlatY234
      linear_combination r6094
    have ha3 : 3021 * rho 37365 * rho 37366 = rho 37367 := by
      linear_combination r6095
    have ha4 : rho 37368 * (1 + rho 37367) = rho 37365 + rho 37366 := by
      linear_combination r6096
    have ha5 : rho 37369 * (1 - rho 37367) = rho 37364 - rho 37365 - rho 37366 := by
      linear_combination r6097
    have haddx :
        rho 37368 * (1 + 3021 * (rho 37362 * seg34AccX234 rho) * (rho 37361 * seg34AccY234 rho)) =
          rho 37362 * seg34AccX234 rho + rho 37361 * seg34AccY234 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37369 * (1 - 3021 * (rho 37362 * seg34AccX234 rho) * (rho 37361 * seg34AccY234 rho)) =
          (-1) * (rho 37362 * seg34AccX234 rho) - rho 37361 * seg34AccY234 rho +
            (seg34AccY234 rho - seg34AccX234 rho * (-1)) * (rho 37361 + rho 37362) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37369 * (1 - rho 37367) = rho 37364 - rho 37365 - rho 37366 := ha5
        _ = (-1) * rho 37365 - rho 37366 + (seg34AccY234 rho - seg34AccX234 rho * (-1)) * (rho 37361 + rho 37362) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX235 rho = seg34AccX234 rho - Bool.toZMod bit * (seg34AccX234 rho - rho 37368) := by
      have hd : rho 37370 = Bool.toZMod bit * (rho 37368 - seg34AccX234 rho) := by
        rw [← hbit, seg34LadderFlatX234_eq]
        unfold seg34LadderFlatX234
        linear_combination -r6098
      unfold seg34AccX235
      linear_combination hd
    have hsely : seg34AccY235 rho = seg34AccY234 rho - Bool.toZMod bit * (seg34AccY234 rho - rho 37369) := by
      have hd : rho 37371 = Bool.toZMod bit * (rho 37369 - seg34AccY234 rho) := by
        rw [← hbit, seg34LadderFlatY234_eq]
        unfold seg34LadderFlatY234
        linear_combination -r6099
      unfold seg34AccY235
      linear_combination hd
    have hd0 : rho 37361 * rho 37362 = rho 37372 := by linear_combination r6100
    have hd1 : rho 37361 * rho 37361 = rho 37373 := by linear_combination r6101
    have hd2 : rho 37362 * rho 37362 = rho 37374 := by linear_combination r6102
    have hd3 : rho 37375 * (rho 37362 * rho 37362 + rho 37361 * rho 37361 * (-1)) = 2 * (rho 37361 * rho 37362) := by
      rw [hd0, hd1, hd2]
      linear_combination r6103
    have hd4 : rho 37376 * (2 - (rho 37362 * rho 37362 + rho 37361 * rho 37361 * (-1))) = rho 37362 * rho 37362 - rho 37361 * rho 37361 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6104
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
      ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩
      ⟨(rho 37368 : Seg34.F), (rho 37369 : Seg34.F)⟩
      ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
      ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung234

theorem seg34_rung235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34227 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
        ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩
        ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
        ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6105 Seg34.relationLc1210 Seg34.relationLc1210Part0 Seg34.relationLc1210Part1 Seg34.relationLc1210Part2 Seg34.relationLc1210Part3 Seg34.relationLc1210Part4 Seg34.relationLc1210Part5 Seg34.relationLc1210Part6 Seg34.relationLc1210Part7 Seg34.relationLc1210Part8 Seg34.relationLc1210Part9 Seg34.relationLc1210Part10 Seg34.relationLc1210Part11 Seg34.relationLc1210Part12 Seg34.relationLc1210Part13 Seg34.relationLc1210Part14 at r6105
  unfold Seg34.relationRow6106 at r6106
  unfold Seg34.relationRow6107 Seg34.relationLc1211 Seg34.relationLc1211Part0 Seg34.relationLc1211Part1 Seg34.relationLc1211Part2 Seg34.relationLc1211Part3 Seg34.relationLc1211Part4 Seg34.relationLc1211Part5 Seg34.relationLc1211Part6 Seg34.relationLc1211Part7 at r6107
  unfold Seg34.relationRow6108 Seg34.relationLc1212 Seg34.relationLc1212Part0 Seg34.relationLc1212Part1 Seg34.relationLc1212Part2 Seg34.relationLc1212Part3 Seg34.relationLc1212Part4 Seg34.relationLc1212Part5 Seg34.relationLc1212Part6 Seg34.relationLc1212Part7 at r6108
  unfold Seg34.relationRow6109 at r6109
  unfold Seg34.relationRow6110 at r6110
  unfold Seg34.relationRow6111 at r6111
  unfold Seg34.relationRow6112 Seg34.relationLc1213 Seg34.relationLc1213Part0 Seg34.relationLc1213Part1 Seg34.relationLc1213Part2 Seg34.relationLc1213Part3 Seg34.relationLc1213Part4 Seg34.relationLc1213Part5 Seg34.relationLc1213Part6 Seg34.relationLc1213Part7 at r6112
  unfold Seg34.relationRow6113 Seg34.relationLc1214 Seg34.relationLc1214Part0 Seg34.relationLc1214Part1 Seg34.relationLc1214Part2 Seg34.relationLc1214Part3 Seg34.relationLc1214Part4 Seg34.relationLc1214Part5 Seg34.relationLc1214Part6 Seg34.relationLc1214Part7 at r6113
  unfold Seg34.relationRow6114 at r6114
  unfold Seg34.relationRow6115 at r6115
  unfold Seg34.relationRow6116 at r6116
  unfold Seg34.relationRow6117 at r6117
  unfold Seg34.relationRow6118 at r6118
  have hrung235 (bit : Bool) (hbit : rho 34227 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
        ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩
        ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
        ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩ := by
    have hsum : seg34AccX235 rho + seg34AccY235 rho = rho 37377 := by
      rw [seg34LadderFlatX235_eq, seg34LadderFlatY235_eq]
      unfold seg34LadderFlatX235 seg34LadderFlatY235
      linear_combination r6105
    have ha0 : (rho 37375 + rho 37376) * (seg34AccX235 rho + seg34AccY235 rho) = rho 37378 := by
      rw [hsum]
      linear_combination r6106
    have ha1 : rho 37376 * seg34AccX235 rho = rho 37379 := by
      rw [seg34LadderFlatX235_eq]
      unfold seg34LadderFlatX235
      linear_combination r6107
    have ha2 : rho 37375 * seg34AccY235 rho = rho 37380 := by
      rw [seg34LadderFlatY235_eq]
      unfold seg34LadderFlatY235
      linear_combination r6108
    have ha3 : 3021 * rho 37379 * rho 37380 = rho 37381 := by
      linear_combination r6109
    have ha4 : rho 37382 * (1 + rho 37381) = rho 37379 + rho 37380 := by
      linear_combination r6110
    have ha5 : rho 37383 * (1 - rho 37381) = rho 37378 - rho 37379 - rho 37380 := by
      linear_combination r6111
    have haddx :
        rho 37382 * (1 + 3021 * (rho 37376 * seg34AccX235 rho) * (rho 37375 * seg34AccY235 rho)) =
          rho 37376 * seg34AccX235 rho + rho 37375 * seg34AccY235 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37383 * (1 - 3021 * (rho 37376 * seg34AccX235 rho) * (rho 37375 * seg34AccY235 rho)) =
          (-1) * (rho 37376 * seg34AccX235 rho) - rho 37375 * seg34AccY235 rho +
            (seg34AccY235 rho - seg34AccX235 rho * (-1)) * (rho 37375 + rho 37376) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37383 * (1 - rho 37381) = rho 37378 - rho 37379 - rho 37380 := ha5
        _ = (-1) * rho 37379 - rho 37380 + (seg34AccY235 rho - seg34AccX235 rho * (-1)) * (rho 37375 + rho 37376) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX236 rho = seg34AccX235 rho - Bool.toZMod bit * (seg34AccX235 rho - rho 37382) := by
      have hd : rho 37384 = Bool.toZMod bit * (rho 37382 - seg34AccX235 rho) := by
        rw [← hbit, seg34LadderFlatX235_eq]
        unfold seg34LadderFlatX235
        linear_combination -r6112
      unfold seg34AccX236
      linear_combination hd
    have hsely : seg34AccY236 rho = seg34AccY235 rho - Bool.toZMod bit * (seg34AccY235 rho - rho 37383) := by
      have hd : rho 37385 = Bool.toZMod bit * (rho 37383 - seg34AccY235 rho) := by
        rw [← hbit, seg34LadderFlatY235_eq]
        unfold seg34LadderFlatY235
        linear_combination -r6113
      unfold seg34AccY236
      linear_combination hd
    have hd0 : rho 37375 * rho 37376 = rho 37386 := by linear_combination r6114
    have hd1 : rho 37375 * rho 37375 = rho 37387 := by linear_combination r6115
    have hd2 : rho 37376 * rho 37376 = rho 37388 := by linear_combination r6116
    have hd3 : rho 37389 * (rho 37376 * rho 37376 + rho 37375 * rho 37375 * (-1)) = 2 * (rho 37375 * rho 37376) := by
      rw [hd0, hd1, hd2]
      linear_combination r6117
    have hd4 : rho 37390 * (2 - (rho 37376 * rho 37376 + rho 37375 * rho 37375 * (-1))) = rho 37376 * rho 37376 - rho 37375 * rho 37375 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6118
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
      ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩
      ⟨(rho 37382 : Seg34.F), (rho 37383 : Seg34.F)⟩
      ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
      ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung235

theorem seg34_rung236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34228 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
        ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩
        ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
        ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6119 Seg34.relationLc1215 Seg34.relationLc1215Part0 Seg34.relationLc1215Part1 Seg34.relationLc1215Part2 Seg34.relationLc1215Part3 Seg34.relationLc1215Part4 Seg34.relationLc1215Part5 Seg34.relationLc1215Part6 Seg34.relationLc1215Part7 Seg34.relationLc1215Part8 Seg34.relationLc1215Part9 Seg34.relationLc1215Part10 Seg34.relationLc1215Part11 Seg34.relationLc1215Part12 Seg34.relationLc1215Part13 Seg34.relationLc1215Part14 at r6119
  unfold Seg34.relationRow6120 at r6120
  unfold Seg34.relationRow6121 Seg34.relationLc1216 Seg34.relationLc1216Part0 Seg34.relationLc1216Part1 Seg34.relationLc1216Part2 Seg34.relationLc1216Part3 Seg34.relationLc1216Part4 Seg34.relationLc1216Part5 Seg34.relationLc1216Part6 Seg34.relationLc1216Part7 at r6121
  unfold Seg34.relationRow6122 Seg34.relationLc1217 Seg34.relationLc1217Part0 Seg34.relationLc1217Part1 Seg34.relationLc1217Part2 Seg34.relationLc1217Part3 Seg34.relationLc1217Part4 Seg34.relationLc1217Part5 Seg34.relationLc1217Part6 Seg34.relationLc1217Part7 at r6122
  unfold Seg34.relationRow6123 at r6123
  unfold Seg34.relationRow6124 at r6124
  unfold Seg34.relationRow6125 at r6125
  unfold Seg34.relationRow6126 Seg34.relationLc1218 Seg34.relationLc1218Part0 Seg34.relationLc1218Part1 Seg34.relationLc1218Part2 Seg34.relationLc1218Part3 Seg34.relationLc1218Part4 Seg34.relationLc1218Part5 Seg34.relationLc1218Part6 Seg34.relationLc1218Part7 at r6126
  unfold Seg34.relationRow6127 Seg34.relationLc1219 Seg34.relationLc1219Part0 Seg34.relationLc1219Part1 Seg34.relationLc1219Part2 Seg34.relationLc1219Part3 Seg34.relationLc1219Part4 Seg34.relationLc1219Part5 Seg34.relationLc1219Part6 Seg34.relationLc1219Part7 at r6127
  unfold Seg34.relationRow6128 at r6128
  unfold Seg34.relationRow6129 at r6129
  unfold Seg34.relationRow6130 at r6130
  unfold Seg34.relationRow6131 at r6131
  unfold Seg34.relationRow6132 at r6132
  have hrung236 (bit : Bool) (hbit : rho 34228 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
        ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩
        ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
        ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩ := by
    have hsum : seg34AccX236 rho + seg34AccY236 rho = rho 37391 := by
      rw [seg34LadderFlatX236_eq, seg34LadderFlatY236_eq]
      unfold seg34LadderFlatX236 seg34LadderFlatY236
      linear_combination r6119
    have ha0 : (rho 37389 + rho 37390) * (seg34AccX236 rho + seg34AccY236 rho) = rho 37392 := by
      rw [hsum]
      linear_combination r6120
    have ha1 : rho 37390 * seg34AccX236 rho = rho 37393 := by
      rw [seg34LadderFlatX236_eq]
      unfold seg34LadderFlatX236
      linear_combination r6121
    have ha2 : rho 37389 * seg34AccY236 rho = rho 37394 := by
      rw [seg34LadderFlatY236_eq]
      unfold seg34LadderFlatY236
      linear_combination r6122
    have ha3 : 3021 * rho 37393 * rho 37394 = rho 37395 := by
      linear_combination r6123
    have ha4 : rho 37396 * (1 + rho 37395) = rho 37393 + rho 37394 := by
      linear_combination r6124
    have ha5 : rho 37397 * (1 - rho 37395) = rho 37392 - rho 37393 - rho 37394 := by
      linear_combination r6125
    have haddx :
        rho 37396 * (1 + 3021 * (rho 37390 * seg34AccX236 rho) * (rho 37389 * seg34AccY236 rho)) =
          rho 37390 * seg34AccX236 rho + rho 37389 * seg34AccY236 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37397 * (1 - 3021 * (rho 37390 * seg34AccX236 rho) * (rho 37389 * seg34AccY236 rho)) =
          (-1) * (rho 37390 * seg34AccX236 rho) - rho 37389 * seg34AccY236 rho +
            (seg34AccY236 rho - seg34AccX236 rho * (-1)) * (rho 37389 + rho 37390) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37397 * (1 - rho 37395) = rho 37392 - rho 37393 - rho 37394 := ha5
        _ = (-1) * rho 37393 - rho 37394 + (seg34AccY236 rho - seg34AccX236 rho * (-1)) * (rho 37389 + rho 37390) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX237 rho = seg34AccX236 rho - Bool.toZMod bit * (seg34AccX236 rho - rho 37396) := by
      have hd : rho 37398 = Bool.toZMod bit * (rho 37396 - seg34AccX236 rho) := by
        rw [← hbit, seg34LadderFlatX236_eq]
        unfold seg34LadderFlatX236
        linear_combination -r6126
      unfold seg34AccX237
      linear_combination hd
    have hsely : seg34AccY237 rho = seg34AccY236 rho - Bool.toZMod bit * (seg34AccY236 rho - rho 37397) := by
      have hd : rho 37399 = Bool.toZMod bit * (rho 37397 - seg34AccY236 rho) := by
        rw [← hbit, seg34LadderFlatY236_eq]
        unfold seg34LadderFlatY236
        linear_combination -r6127
      unfold seg34AccY237
      linear_combination hd
    have hd0 : rho 37389 * rho 37390 = rho 37400 := by linear_combination r6128
    have hd1 : rho 37389 * rho 37389 = rho 37401 := by linear_combination r6129
    have hd2 : rho 37390 * rho 37390 = rho 37402 := by linear_combination r6130
    have hd3 : rho 37403 * (rho 37390 * rho 37390 + rho 37389 * rho 37389 * (-1)) = 2 * (rho 37389 * rho 37390) := by
      rw [hd0, hd1, hd2]
      linear_combination r6131
    have hd4 : rho 37404 * (2 - (rho 37390 * rho 37390 + rho 37389 * rho 37389 * (-1))) = rho 37390 * rho 37390 - rho 37389 * rho 37389 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6132
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
      ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩
      ⟨(rho 37396 : Seg34.F), (rho 37397 : Seg34.F)⟩
      ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
      ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung236

theorem seg34_rung237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34229 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
        ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩
        ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
        ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6133 Seg34.relationLc1220 Seg34.relationLc1220Part0 Seg34.relationLc1220Part1 Seg34.relationLc1220Part2 Seg34.relationLc1220Part3 Seg34.relationLc1220Part4 Seg34.relationLc1220Part5 Seg34.relationLc1220Part6 Seg34.relationLc1220Part7 Seg34.relationLc1220Part8 Seg34.relationLc1220Part9 Seg34.relationLc1220Part10 Seg34.relationLc1220Part11 Seg34.relationLc1220Part12 Seg34.relationLc1220Part13 Seg34.relationLc1220Part14 at r6133
  unfold Seg34.relationRow6134 at r6134
  unfold Seg34.relationRow6135 Seg34.relationLc1221 Seg34.relationLc1221Part0 Seg34.relationLc1221Part1 Seg34.relationLc1221Part2 Seg34.relationLc1221Part3 Seg34.relationLc1221Part4 Seg34.relationLc1221Part5 Seg34.relationLc1221Part6 Seg34.relationLc1221Part7 at r6135
  unfold Seg34.relationRow6136 Seg34.relationLc1222 Seg34.relationLc1222Part0 Seg34.relationLc1222Part1 Seg34.relationLc1222Part2 Seg34.relationLc1222Part3 Seg34.relationLc1222Part4 Seg34.relationLc1222Part5 Seg34.relationLc1222Part6 Seg34.relationLc1222Part7 at r6136
  unfold Seg34.relationRow6137 at r6137
  unfold Seg34.relationRow6138 at r6138
  unfold Seg34.relationRow6139 at r6139
  unfold Seg34.relationRow6140 Seg34.relationLc1223 Seg34.relationLc1223Part0 Seg34.relationLc1223Part1 Seg34.relationLc1223Part2 Seg34.relationLc1223Part3 Seg34.relationLc1223Part4 Seg34.relationLc1223Part5 Seg34.relationLc1223Part6 Seg34.relationLc1223Part7 at r6140
  unfold Seg34.relationRow6141 Seg34.relationLc1224 Seg34.relationLc1224Part0 Seg34.relationLc1224Part1 Seg34.relationLc1224Part2 Seg34.relationLc1224Part3 Seg34.relationLc1224Part4 Seg34.relationLc1224Part5 Seg34.relationLc1224Part6 Seg34.relationLc1224Part7 at r6141
  unfold Seg34.relationRow6142 at r6142
  unfold Seg34.relationRow6143 at r6143
  unfold Seg34.relationRow6144 at r6144
  unfold Seg34.relationRow6145 at r6145
  unfold Seg34.relationRow6146 at r6146
  have hrung237 (bit : Bool) (hbit : rho 34229 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
        ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩
        ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
        ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩ := by
    have hsum : seg34AccX237 rho + seg34AccY237 rho = rho 37405 := by
      rw [seg34LadderFlatX237_eq, seg34LadderFlatY237_eq]
      unfold seg34LadderFlatX237 seg34LadderFlatY237
      linear_combination r6133
    have ha0 : (rho 37403 + rho 37404) * (seg34AccX237 rho + seg34AccY237 rho) = rho 37406 := by
      rw [hsum]
      linear_combination r6134
    have ha1 : rho 37404 * seg34AccX237 rho = rho 37407 := by
      rw [seg34LadderFlatX237_eq]
      unfold seg34LadderFlatX237
      linear_combination r6135
    have ha2 : rho 37403 * seg34AccY237 rho = rho 37408 := by
      rw [seg34LadderFlatY237_eq]
      unfold seg34LadderFlatY237
      linear_combination r6136
    have ha3 : 3021 * rho 37407 * rho 37408 = rho 37409 := by
      linear_combination r6137
    have ha4 : rho 37410 * (1 + rho 37409) = rho 37407 + rho 37408 := by
      linear_combination r6138
    have ha5 : rho 37411 * (1 - rho 37409) = rho 37406 - rho 37407 - rho 37408 := by
      linear_combination r6139
    have haddx :
        rho 37410 * (1 + 3021 * (rho 37404 * seg34AccX237 rho) * (rho 37403 * seg34AccY237 rho)) =
          rho 37404 * seg34AccX237 rho + rho 37403 * seg34AccY237 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37411 * (1 - 3021 * (rho 37404 * seg34AccX237 rho) * (rho 37403 * seg34AccY237 rho)) =
          (-1) * (rho 37404 * seg34AccX237 rho) - rho 37403 * seg34AccY237 rho +
            (seg34AccY237 rho - seg34AccX237 rho * (-1)) * (rho 37403 + rho 37404) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37411 * (1 - rho 37409) = rho 37406 - rho 37407 - rho 37408 := ha5
        _ = (-1) * rho 37407 - rho 37408 + (seg34AccY237 rho - seg34AccX237 rho * (-1)) * (rho 37403 + rho 37404) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX238 rho = seg34AccX237 rho - Bool.toZMod bit * (seg34AccX237 rho - rho 37410) := by
      have hd : rho 37412 = Bool.toZMod bit * (rho 37410 - seg34AccX237 rho) := by
        rw [← hbit, seg34LadderFlatX237_eq]
        unfold seg34LadderFlatX237
        linear_combination -r6140
      unfold seg34AccX238
      linear_combination hd
    have hsely : seg34AccY238 rho = seg34AccY237 rho - Bool.toZMod bit * (seg34AccY237 rho - rho 37411) := by
      have hd : rho 37413 = Bool.toZMod bit * (rho 37411 - seg34AccY237 rho) := by
        rw [← hbit, seg34LadderFlatY237_eq]
        unfold seg34LadderFlatY237
        linear_combination -r6141
      unfold seg34AccY238
      linear_combination hd
    have hd0 : rho 37403 * rho 37404 = rho 37414 := by linear_combination r6142
    have hd1 : rho 37403 * rho 37403 = rho 37415 := by linear_combination r6143
    have hd2 : rho 37404 * rho 37404 = rho 37416 := by linear_combination r6144
    have hd3 : rho 37417 * (rho 37404 * rho 37404 + rho 37403 * rho 37403 * (-1)) = 2 * (rho 37403 * rho 37404) := by
      rw [hd0, hd1, hd2]
      linear_combination r6145
    have hd4 : rho 37418 * (2 - (rho 37404 * rho 37404 + rho 37403 * rho 37403 * (-1))) = rho 37404 * rho 37404 - rho 37403 * rho 37403 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
      ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩
      ⟨(rho 37410 : Seg34.F), (rho 37411 : Seg34.F)⟩
      ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
      ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung237

theorem seg34_rung238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34230 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
        ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩
        ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
        ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨r6160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6147 Seg34.relationLc1225 Seg34.relationLc1225Part0 Seg34.relationLc1225Part1 Seg34.relationLc1225Part2 Seg34.relationLc1225Part3 Seg34.relationLc1225Part4 Seg34.relationLc1225Part5 Seg34.relationLc1225Part6 Seg34.relationLc1225Part7 Seg34.relationLc1225Part8 Seg34.relationLc1225Part9 Seg34.relationLc1225Part10 Seg34.relationLc1225Part11 Seg34.relationLc1225Part12 Seg34.relationLc1225Part13 Seg34.relationLc1225Part14 at r6147
  unfold Seg34.relationRow6148 at r6148
  unfold Seg34.relationRow6149 Seg34.relationLc1226 Seg34.relationLc1226Part0 Seg34.relationLc1226Part1 Seg34.relationLc1226Part2 Seg34.relationLc1226Part3 Seg34.relationLc1226Part4 Seg34.relationLc1226Part5 Seg34.relationLc1226Part6 Seg34.relationLc1226Part7 at r6149
  unfold Seg34.relationRow6150 Seg34.relationLc1227 Seg34.relationLc1227Part0 Seg34.relationLc1227Part1 Seg34.relationLc1227Part2 Seg34.relationLc1227Part3 Seg34.relationLc1227Part4 Seg34.relationLc1227Part5 Seg34.relationLc1227Part6 Seg34.relationLc1227Part7 at r6150
  unfold Seg34.relationRow6151 at r6151
  unfold Seg34.relationRow6152 at r6152
  unfold Seg34.relationRow6153 at r6153
  unfold Seg34.relationRow6154 Seg34.relationLc1228 Seg34.relationLc1228Part0 Seg34.relationLc1228Part1 Seg34.relationLc1228Part2 Seg34.relationLc1228Part3 Seg34.relationLc1228Part4 Seg34.relationLc1228Part5 Seg34.relationLc1228Part6 Seg34.relationLc1228Part7 at r6154
  unfold Seg34.relationRow6155 Seg34.relationLc1229 Seg34.relationLc1229Part0 Seg34.relationLc1229Part1 Seg34.relationLc1229Part2 Seg34.relationLc1229Part3 Seg34.relationLc1229Part4 Seg34.relationLc1229Part5 Seg34.relationLc1229Part6 Seg34.relationLc1229Part7 at r6155
  unfold Seg34.relationRow6156 at r6156
  unfold Seg34.relationRow6157 at r6157
  unfold Seg34.relationRow6158 at r6158
  unfold Seg34.relationRow6159 at r6159
  unfold Seg34.relationRow6160 at r6160
  have hrung238 (bit : Bool) (hbit : rho 34230 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
        ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩
        ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
        ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩ := by
    have hsum : seg34AccX238 rho + seg34AccY238 rho = rho 37419 := by
      rw [seg34LadderFlatX238_eq, seg34LadderFlatY238_eq]
      unfold seg34LadderFlatX238 seg34LadderFlatY238
      linear_combination r6147
    have ha0 : (rho 37417 + rho 37418) * (seg34AccX238 rho + seg34AccY238 rho) = rho 37420 := by
      rw [hsum]
      linear_combination r6148
    have ha1 : rho 37418 * seg34AccX238 rho = rho 37421 := by
      rw [seg34LadderFlatX238_eq]
      unfold seg34LadderFlatX238
      linear_combination r6149
    have ha2 : rho 37417 * seg34AccY238 rho = rho 37422 := by
      rw [seg34LadderFlatY238_eq]
      unfold seg34LadderFlatY238
      linear_combination r6150
    have ha3 : 3021 * rho 37421 * rho 37422 = rho 37423 := by
      linear_combination r6151
    have ha4 : rho 37424 * (1 + rho 37423) = rho 37421 + rho 37422 := by
      linear_combination r6152
    have ha5 : rho 37425 * (1 - rho 37423) = rho 37420 - rho 37421 - rho 37422 := by
      linear_combination r6153
    have haddx :
        rho 37424 * (1 + 3021 * (rho 37418 * seg34AccX238 rho) * (rho 37417 * seg34AccY238 rho)) =
          rho 37418 * seg34AccX238 rho + rho 37417 * seg34AccY238 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37425 * (1 - 3021 * (rho 37418 * seg34AccX238 rho) * (rho 37417 * seg34AccY238 rho)) =
          (-1) * (rho 37418 * seg34AccX238 rho) - rho 37417 * seg34AccY238 rho +
            (seg34AccY238 rho - seg34AccX238 rho * (-1)) * (rho 37417 + rho 37418) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37425 * (1 - rho 37423) = rho 37420 - rho 37421 - rho 37422 := ha5
        _ = (-1) * rho 37421 - rho 37422 + (seg34AccY238 rho - seg34AccX238 rho * (-1)) * (rho 37417 + rho 37418) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX239 rho = seg34AccX238 rho - Bool.toZMod bit * (seg34AccX238 rho - rho 37424) := by
      have hd : rho 37426 = Bool.toZMod bit * (rho 37424 - seg34AccX238 rho) := by
        rw [← hbit, seg34LadderFlatX238_eq]
        unfold seg34LadderFlatX238
        linear_combination -r6154
      unfold seg34AccX239
      linear_combination hd
    have hsely : seg34AccY239 rho = seg34AccY238 rho - Bool.toZMod bit * (seg34AccY238 rho - rho 37425) := by
      have hd : rho 37427 = Bool.toZMod bit * (rho 37425 - seg34AccY238 rho) := by
        rw [← hbit, seg34LadderFlatY238_eq]
        unfold seg34LadderFlatY238
        linear_combination -r6155
      unfold seg34AccY239
      linear_combination hd
    have hd0 : rho 37417 * rho 37418 = rho 37428 := by linear_combination r6156
    have hd1 : rho 37417 * rho 37417 = rho 37429 := by linear_combination r6157
    have hd2 : rho 37418 * rho 37418 = rho 37430 := by linear_combination r6158
    have hd3 : rho 37431 * (rho 37418 * rho 37418 + rho 37417 * rho 37417 * (-1)) = 2 * (rho 37417 * rho 37418) := by
      rw [hd0, hd1, hd2]
      linear_combination r6159
    have hd4 : rho 37432 * (2 - (rho 37418 * rho 37418 + rho 37417 * rho 37417 * (-1))) = rho 37418 * rho 37418 - rho 37417 * rho 37417 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
      ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩
      ⟨(rho 37424 : Seg34.F), (rho 37425 : Seg34.F)⟩
      ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
      ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung238

theorem seg34_rung239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34231 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
        ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩
        ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
        ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6161 Seg34.relationLc1230 Seg34.relationLc1230Part0 Seg34.relationLc1230Part1 Seg34.relationLc1230Part2 Seg34.relationLc1230Part3 Seg34.relationLc1230Part4 Seg34.relationLc1230Part5 Seg34.relationLc1230Part6 Seg34.relationLc1230Part7 Seg34.relationLc1230Part8 Seg34.relationLc1230Part9 Seg34.relationLc1230Part10 Seg34.relationLc1230Part11 Seg34.relationLc1230Part12 Seg34.relationLc1230Part13 Seg34.relationLc1230Part14 at r6161
  unfold Seg34.relationRow6162 at r6162
  unfold Seg34.relationRow6163 Seg34.relationLc1231 Seg34.relationLc1231Part0 Seg34.relationLc1231Part1 Seg34.relationLc1231Part2 Seg34.relationLc1231Part3 Seg34.relationLc1231Part4 Seg34.relationLc1231Part5 Seg34.relationLc1231Part6 Seg34.relationLc1231Part7 at r6163
  unfold Seg34.relationRow6164 Seg34.relationLc1232 Seg34.relationLc1232Part0 Seg34.relationLc1232Part1 Seg34.relationLc1232Part2 Seg34.relationLc1232Part3 Seg34.relationLc1232Part4 Seg34.relationLc1232Part5 Seg34.relationLc1232Part6 Seg34.relationLc1232Part7 at r6164
  unfold Seg34.relationRow6165 at r6165
  unfold Seg34.relationRow6166 at r6166
  unfold Seg34.relationRow6167 at r6167
  unfold Seg34.relationRow6168 Seg34.relationLc1233 Seg34.relationLc1233Part0 Seg34.relationLc1233Part1 Seg34.relationLc1233Part2 Seg34.relationLc1233Part3 Seg34.relationLc1233Part4 Seg34.relationLc1233Part5 Seg34.relationLc1233Part6 Seg34.relationLc1233Part7 at r6168
  unfold Seg34.relationRow6169 Seg34.relationLc1234 Seg34.relationLc1234Part0 Seg34.relationLc1234Part1 Seg34.relationLc1234Part2 Seg34.relationLc1234Part3 Seg34.relationLc1234Part4 Seg34.relationLc1234Part5 Seg34.relationLc1234Part6 Seg34.relationLc1234Part7 at r6169
  unfold Seg34.relationRow6170 at r6170
  unfold Seg34.relationRow6171 at r6171
  unfold Seg34.relationRow6172 at r6172
  unfold Seg34.relationRow6173 at r6173
  unfold Seg34.relationRow6174 at r6174
  have hrung239 (bit : Bool) (hbit : rho 34231 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
        ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩
        ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
        ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩ := by
    have hsum : seg34AccX239 rho + seg34AccY239 rho = rho 37433 := by
      rw [seg34LadderFlatX239_eq, seg34LadderFlatY239_eq]
      unfold seg34LadderFlatX239 seg34LadderFlatY239
      linear_combination r6161
    have ha0 : (rho 37431 + rho 37432) * (seg34AccX239 rho + seg34AccY239 rho) = rho 37434 := by
      rw [hsum]
      linear_combination r6162
    have ha1 : rho 37432 * seg34AccX239 rho = rho 37435 := by
      rw [seg34LadderFlatX239_eq]
      unfold seg34LadderFlatX239
      linear_combination r6163
    have ha2 : rho 37431 * seg34AccY239 rho = rho 37436 := by
      rw [seg34LadderFlatY239_eq]
      unfold seg34LadderFlatY239
      linear_combination r6164
    have ha3 : 3021 * rho 37435 * rho 37436 = rho 37437 := by
      linear_combination r6165
    have ha4 : rho 37438 * (1 + rho 37437) = rho 37435 + rho 37436 := by
      linear_combination r6166
    have ha5 : rho 37439 * (1 - rho 37437) = rho 37434 - rho 37435 - rho 37436 := by
      linear_combination r6167
    have haddx :
        rho 37438 * (1 + 3021 * (rho 37432 * seg34AccX239 rho) * (rho 37431 * seg34AccY239 rho)) =
          rho 37432 * seg34AccX239 rho + rho 37431 * seg34AccY239 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37439 * (1 - 3021 * (rho 37432 * seg34AccX239 rho) * (rho 37431 * seg34AccY239 rho)) =
          (-1) * (rho 37432 * seg34AccX239 rho) - rho 37431 * seg34AccY239 rho +
            (seg34AccY239 rho - seg34AccX239 rho * (-1)) * (rho 37431 + rho 37432) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37439 * (1 - rho 37437) = rho 37434 - rho 37435 - rho 37436 := ha5
        _ = (-1) * rho 37435 - rho 37436 + (seg34AccY239 rho - seg34AccX239 rho * (-1)) * (rho 37431 + rho 37432) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX240 rho = seg34AccX239 rho - Bool.toZMod bit * (seg34AccX239 rho - rho 37438) := by
      have hd : rho 37440 = Bool.toZMod bit * (rho 37438 - seg34AccX239 rho) := by
        rw [← hbit, seg34LadderFlatX239_eq]
        unfold seg34LadderFlatX239
        linear_combination -r6168
      unfold seg34AccX240
      linear_combination hd
    have hsely : seg34AccY240 rho = seg34AccY239 rho - Bool.toZMod bit * (seg34AccY239 rho - rho 37439) := by
      have hd : rho 37441 = Bool.toZMod bit * (rho 37439 - seg34AccY239 rho) := by
        rw [← hbit, seg34LadderFlatY239_eq]
        unfold seg34LadderFlatY239
        linear_combination -r6169
      unfold seg34AccY240
      linear_combination hd
    have hd0 : rho 37431 * rho 37432 = rho 37442 := by linear_combination r6170
    have hd1 : rho 37431 * rho 37431 = rho 37443 := by linear_combination r6171
    have hd2 : rho 37432 * rho 37432 = rho 37444 := by linear_combination r6172
    have hd3 : rho 37445 * (rho 37432 * rho 37432 + rho 37431 * rho 37431 * (-1)) = 2 * (rho 37431 * rho 37432) := by
      rw [hd0, hd1, hd2]
      linear_combination r6173
    have hd4 : rho 37446 * (2 - (rho 37432 * rho 37432 + rho 37431 * rho 37431 * (-1))) = rho 37432 * rho 37432 - rho 37431 * rho 37431 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6174
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
      ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩
      ⟨(rho 37438 : Seg34.F), (rho 37439 : Seg34.F)⟩
      ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
      ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung239

theorem seg34_rung240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34232 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
        ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩
        ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
        ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6175 Seg34.relationLc1235 Seg34.relationLc1235Part0 Seg34.relationLc1235Part1 Seg34.relationLc1235Part2 Seg34.relationLc1235Part3 Seg34.relationLc1235Part4 Seg34.relationLc1235Part5 Seg34.relationLc1235Part6 Seg34.relationLc1235Part7 Seg34.relationLc1235Part8 Seg34.relationLc1235Part9 Seg34.relationLc1235Part10 Seg34.relationLc1235Part11 Seg34.relationLc1235Part12 Seg34.relationLc1235Part13 Seg34.relationLc1235Part14 Seg34.relationLc1235Part15 at r6175
  unfold Seg34.relationRow6176 at r6176
  unfold Seg34.relationRow6177 Seg34.relationLc1236 Seg34.relationLc1236Part0 Seg34.relationLc1236Part1 Seg34.relationLc1236Part2 Seg34.relationLc1236Part3 Seg34.relationLc1236Part4 Seg34.relationLc1236Part5 Seg34.relationLc1236Part6 Seg34.relationLc1236Part7 at r6177
  unfold Seg34.relationRow6178 Seg34.relationLc1237 Seg34.relationLc1237Part0 Seg34.relationLc1237Part1 Seg34.relationLc1237Part2 Seg34.relationLc1237Part3 Seg34.relationLc1237Part4 Seg34.relationLc1237Part5 Seg34.relationLc1237Part6 Seg34.relationLc1237Part7 at r6178
  unfold Seg34.relationRow6179 at r6179
  unfold Seg34.relationRow6180 at r6180
  unfold Seg34.relationRow6181 at r6181
  unfold Seg34.relationRow6182 Seg34.relationLc1238 Seg34.relationLc1238Part0 Seg34.relationLc1238Part1 Seg34.relationLc1238Part2 Seg34.relationLc1238Part3 Seg34.relationLc1238Part4 Seg34.relationLc1238Part5 Seg34.relationLc1238Part6 Seg34.relationLc1238Part7 at r6182
  unfold Seg34.relationRow6183 Seg34.relationLc1239 Seg34.relationLc1239Part0 Seg34.relationLc1239Part1 Seg34.relationLc1239Part2 Seg34.relationLc1239Part3 Seg34.relationLc1239Part4 Seg34.relationLc1239Part5 Seg34.relationLc1239Part6 Seg34.relationLc1239Part7 at r6183
  unfold Seg34.relationRow6184 at r6184
  unfold Seg34.relationRow6185 at r6185
  unfold Seg34.relationRow6186 at r6186
  unfold Seg34.relationRow6187 at r6187
  unfold Seg34.relationRow6188 at r6188
  have hrung240 (bit : Bool) (hbit : rho 34232 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
        ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩
        ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
        ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩ := by
    have hsum : seg34AccX240 rho + seg34AccY240 rho = rho 37447 := by
      rw [seg34LadderFlatX240_eq, seg34LadderFlatY240_eq]
      unfold seg34LadderFlatX240 seg34LadderFlatY240
      linear_combination r6175
    have ha0 : (rho 37445 + rho 37446) * (seg34AccX240 rho + seg34AccY240 rho) = rho 37448 := by
      rw [hsum]
      linear_combination r6176
    have ha1 : rho 37446 * seg34AccX240 rho = rho 37449 := by
      rw [seg34LadderFlatX240_eq]
      unfold seg34LadderFlatX240
      linear_combination r6177
    have ha2 : rho 37445 * seg34AccY240 rho = rho 37450 := by
      rw [seg34LadderFlatY240_eq]
      unfold seg34LadderFlatY240
      linear_combination r6178
    have ha3 : 3021 * rho 37449 * rho 37450 = rho 37451 := by
      linear_combination r6179
    have ha4 : rho 37452 * (1 + rho 37451) = rho 37449 + rho 37450 := by
      linear_combination r6180
    have ha5 : rho 37453 * (1 - rho 37451) = rho 37448 - rho 37449 - rho 37450 := by
      linear_combination r6181
    have haddx :
        rho 37452 * (1 + 3021 * (rho 37446 * seg34AccX240 rho) * (rho 37445 * seg34AccY240 rho)) =
          rho 37446 * seg34AccX240 rho + rho 37445 * seg34AccY240 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37453 * (1 - 3021 * (rho 37446 * seg34AccX240 rho) * (rho 37445 * seg34AccY240 rho)) =
          (-1) * (rho 37446 * seg34AccX240 rho) - rho 37445 * seg34AccY240 rho +
            (seg34AccY240 rho - seg34AccX240 rho * (-1)) * (rho 37445 + rho 37446) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37453 * (1 - rho 37451) = rho 37448 - rho 37449 - rho 37450 := ha5
        _ = (-1) * rho 37449 - rho 37450 + (seg34AccY240 rho - seg34AccX240 rho * (-1)) * (rho 37445 + rho 37446) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX241 rho = seg34AccX240 rho - Bool.toZMod bit * (seg34AccX240 rho - rho 37452) := by
      have hd : rho 37454 = Bool.toZMod bit * (rho 37452 - seg34AccX240 rho) := by
        rw [← hbit, seg34LadderFlatX240_eq]
        unfold seg34LadderFlatX240
        linear_combination -r6182
      unfold seg34AccX241
      linear_combination hd
    have hsely : seg34AccY241 rho = seg34AccY240 rho - Bool.toZMod bit * (seg34AccY240 rho - rho 37453) := by
      have hd : rho 37455 = Bool.toZMod bit * (rho 37453 - seg34AccY240 rho) := by
        rw [← hbit, seg34LadderFlatY240_eq]
        unfold seg34LadderFlatY240
        linear_combination -r6183
      unfold seg34AccY241
      linear_combination hd
    have hd0 : rho 37445 * rho 37446 = rho 37456 := by linear_combination r6184
    have hd1 : rho 37445 * rho 37445 = rho 37457 := by linear_combination r6185
    have hd2 : rho 37446 * rho 37446 = rho 37458 := by linear_combination r6186
    have hd3 : rho 37459 * (rho 37446 * rho 37446 + rho 37445 * rho 37445 * (-1)) = 2 * (rho 37445 * rho 37446) := by
      rw [hd0, hd1, hd2]
      linear_combination r6187
    have hd4 : rho 37460 * (2 - (rho 37446 * rho 37446 + rho 37445 * rho 37445 * (-1))) = rho 37446 * rho 37446 - rho 37445 * rho 37445 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6188
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
      ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩
      ⟨(rho 37452 : Seg34.F), (rho 37453 : Seg34.F)⟩
      ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
      ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung240

theorem seg34_rung241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34233 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
        ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩
        ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
        ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6189 Seg34.relationLc1240 Seg34.relationLc1240Part0 Seg34.relationLc1240Part1 Seg34.relationLc1240Part2 Seg34.relationLc1240Part3 Seg34.relationLc1240Part4 Seg34.relationLc1240Part5 Seg34.relationLc1240Part6 Seg34.relationLc1240Part7 Seg34.relationLc1240Part8 Seg34.relationLc1240Part9 Seg34.relationLc1240Part10 Seg34.relationLc1240Part11 Seg34.relationLc1240Part12 Seg34.relationLc1240Part13 Seg34.relationLc1240Part14 Seg34.relationLc1240Part15 at r6189
  unfold Seg34.relationRow6190 at r6190
  unfold Seg34.relationRow6191 Seg34.relationLc1241 Seg34.relationLc1241Part0 Seg34.relationLc1241Part1 Seg34.relationLc1241Part2 Seg34.relationLc1241Part3 Seg34.relationLc1241Part4 Seg34.relationLc1241Part5 Seg34.relationLc1241Part6 Seg34.relationLc1241Part7 at r6191
  unfold Seg34.relationRow6192 Seg34.relationLc1242 Seg34.relationLc1242Part0 Seg34.relationLc1242Part1 Seg34.relationLc1242Part2 Seg34.relationLc1242Part3 Seg34.relationLc1242Part4 Seg34.relationLc1242Part5 Seg34.relationLc1242Part6 Seg34.relationLc1242Part7 at r6192
  unfold Seg34.relationRow6193 at r6193
  unfold Seg34.relationRow6194 at r6194
  unfold Seg34.relationRow6195 at r6195
  unfold Seg34.relationRow6196 Seg34.relationLc1243 Seg34.relationLc1243Part0 Seg34.relationLc1243Part1 Seg34.relationLc1243Part2 Seg34.relationLc1243Part3 Seg34.relationLc1243Part4 Seg34.relationLc1243Part5 Seg34.relationLc1243Part6 Seg34.relationLc1243Part7 at r6196
  unfold Seg34.relationRow6197 Seg34.relationLc1244 Seg34.relationLc1244Part0 Seg34.relationLc1244Part1 Seg34.relationLc1244Part2 Seg34.relationLc1244Part3 Seg34.relationLc1244Part4 Seg34.relationLc1244Part5 Seg34.relationLc1244Part6 Seg34.relationLc1244Part7 at r6197
  unfold Seg34.relationRow6198 at r6198
  unfold Seg34.relationRow6199 at r6199
  unfold Seg34.relationRow6200 at r6200
  unfold Seg34.relationRow6201 at r6201
  unfold Seg34.relationRow6202 at r6202
  have hrung241 (bit : Bool) (hbit : rho 34233 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
        ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩
        ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
        ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩ := by
    have hsum : seg34AccX241 rho + seg34AccY241 rho = rho 37461 := by
      rw [seg34LadderFlatX241_eq, seg34LadderFlatY241_eq]
      unfold seg34LadderFlatX241 seg34LadderFlatY241
      linear_combination r6189
    have ha0 : (rho 37459 + rho 37460) * (seg34AccX241 rho + seg34AccY241 rho) = rho 37462 := by
      rw [hsum]
      linear_combination r6190
    have ha1 : rho 37460 * seg34AccX241 rho = rho 37463 := by
      rw [seg34LadderFlatX241_eq]
      unfold seg34LadderFlatX241
      linear_combination r6191
    have ha2 : rho 37459 * seg34AccY241 rho = rho 37464 := by
      rw [seg34LadderFlatY241_eq]
      unfold seg34LadderFlatY241
      linear_combination r6192
    have ha3 : 3021 * rho 37463 * rho 37464 = rho 37465 := by
      linear_combination r6193
    have ha4 : rho 37466 * (1 + rho 37465) = rho 37463 + rho 37464 := by
      linear_combination r6194
    have ha5 : rho 37467 * (1 - rho 37465) = rho 37462 - rho 37463 - rho 37464 := by
      linear_combination r6195
    have haddx :
        rho 37466 * (1 + 3021 * (rho 37460 * seg34AccX241 rho) * (rho 37459 * seg34AccY241 rho)) =
          rho 37460 * seg34AccX241 rho + rho 37459 * seg34AccY241 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37467 * (1 - 3021 * (rho 37460 * seg34AccX241 rho) * (rho 37459 * seg34AccY241 rho)) =
          (-1) * (rho 37460 * seg34AccX241 rho) - rho 37459 * seg34AccY241 rho +
            (seg34AccY241 rho - seg34AccX241 rho * (-1)) * (rho 37459 + rho 37460) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37467 * (1 - rho 37465) = rho 37462 - rho 37463 - rho 37464 := ha5
        _ = (-1) * rho 37463 - rho 37464 + (seg34AccY241 rho - seg34AccX241 rho * (-1)) * (rho 37459 + rho 37460) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX242 rho = seg34AccX241 rho - Bool.toZMod bit * (seg34AccX241 rho - rho 37466) := by
      have hd : rho 37468 = Bool.toZMod bit * (rho 37466 - seg34AccX241 rho) := by
        rw [← hbit, seg34LadderFlatX241_eq]
        unfold seg34LadderFlatX241
        linear_combination -r6196
      unfold seg34AccX242
      linear_combination hd
    have hsely : seg34AccY242 rho = seg34AccY241 rho - Bool.toZMod bit * (seg34AccY241 rho - rho 37467) := by
      have hd : rho 37469 = Bool.toZMod bit * (rho 37467 - seg34AccY241 rho) := by
        rw [← hbit, seg34LadderFlatY241_eq]
        unfold seg34LadderFlatY241
        linear_combination -r6197
      unfold seg34AccY242
      linear_combination hd
    have hd0 : rho 37459 * rho 37460 = rho 37470 := by linear_combination r6198
    have hd1 : rho 37459 * rho 37459 = rho 37471 := by linear_combination r6199
    have hd2 : rho 37460 * rho 37460 = rho 37472 := by linear_combination r6200
    have hd3 : rho 37473 * (rho 37460 * rho 37460 + rho 37459 * rho 37459 * (-1)) = 2 * (rho 37459 * rho 37460) := by
      rw [hd0, hd1, hd2]
      linear_combination r6201
    have hd4 : rho 37474 * (2 - (rho 37460 * rho 37460 + rho 37459 * rho 37459 * (-1))) = rho 37460 * rho 37460 - rho 37459 * rho 37459 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6202
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
      ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩
      ⟨(rho 37466 : Seg34.F), (rho 37467 : Seg34.F)⟩
      ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
      ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung241

theorem seg34_rung242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34234 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
        ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩
        ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
        ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6203 Seg34.relationLc1245 Seg34.relationLc1245Part0 Seg34.relationLc1245Part1 Seg34.relationLc1245Part2 Seg34.relationLc1245Part3 Seg34.relationLc1245Part4 Seg34.relationLc1245Part5 Seg34.relationLc1245Part6 Seg34.relationLc1245Part7 Seg34.relationLc1245Part8 Seg34.relationLc1245Part9 Seg34.relationLc1245Part10 Seg34.relationLc1245Part11 Seg34.relationLc1245Part12 Seg34.relationLc1245Part13 Seg34.relationLc1245Part14 Seg34.relationLc1245Part15 at r6203
  unfold Seg34.relationRow6204 at r6204
  unfold Seg34.relationRow6205 Seg34.relationLc1246 Seg34.relationLc1246Part0 Seg34.relationLc1246Part1 Seg34.relationLc1246Part2 Seg34.relationLc1246Part3 Seg34.relationLc1246Part4 Seg34.relationLc1246Part5 Seg34.relationLc1246Part6 Seg34.relationLc1246Part7 at r6205
  unfold Seg34.relationRow6206 Seg34.relationLc1247 Seg34.relationLc1247Part0 Seg34.relationLc1247Part1 Seg34.relationLc1247Part2 Seg34.relationLc1247Part3 Seg34.relationLc1247Part4 Seg34.relationLc1247Part5 Seg34.relationLc1247Part6 Seg34.relationLc1247Part7 at r6206
  unfold Seg34.relationRow6207 at r6207
  unfold Seg34.relationRow6208 at r6208
  unfold Seg34.relationRow6209 at r6209
  unfold Seg34.relationRow6210 Seg34.relationLc1248 Seg34.relationLc1248Part0 Seg34.relationLc1248Part1 Seg34.relationLc1248Part2 Seg34.relationLc1248Part3 Seg34.relationLc1248Part4 Seg34.relationLc1248Part5 Seg34.relationLc1248Part6 Seg34.relationLc1248Part7 at r6210
  unfold Seg34.relationRow6211 Seg34.relationLc1249 Seg34.relationLc1249Part0 Seg34.relationLc1249Part1 Seg34.relationLc1249Part2 Seg34.relationLc1249Part3 Seg34.relationLc1249Part4 Seg34.relationLc1249Part5 Seg34.relationLc1249Part6 Seg34.relationLc1249Part7 at r6211
  unfold Seg34.relationRow6212 at r6212
  unfold Seg34.relationRow6213 at r6213
  unfold Seg34.relationRow6214 at r6214
  unfold Seg34.relationRow6215 at r6215
  unfold Seg34.relationRow6216 at r6216
  have hrung242 (bit : Bool) (hbit : rho 34234 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
        ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩
        ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
        ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩ := by
    have hsum : seg34AccX242 rho + seg34AccY242 rho = rho 37475 := by
      rw [seg34LadderFlatX242_eq, seg34LadderFlatY242_eq]
      unfold seg34LadderFlatX242 seg34LadderFlatY242
      linear_combination r6203
    have ha0 : (rho 37473 + rho 37474) * (seg34AccX242 rho + seg34AccY242 rho) = rho 37476 := by
      rw [hsum]
      linear_combination r6204
    have ha1 : rho 37474 * seg34AccX242 rho = rho 37477 := by
      rw [seg34LadderFlatX242_eq]
      unfold seg34LadderFlatX242
      linear_combination r6205
    have ha2 : rho 37473 * seg34AccY242 rho = rho 37478 := by
      rw [seg34LadderFlatY242_eq]
      unfold seg34LadderFlatY242
      linear_combination r6206
    have ha3 : 3021 * rho 37477 * rho 37478 = rho 37479 := by
      linear_combination r6207
    have ha4 : rho 37480 * (1 + rho 37479) = rho 37477 + rho 37478 := by
      linear_combination r6208
    have ha5 : rho 37481 * (1 - rho 37479) = rho 37476 - rho 37477 - rho 37478 := by
      linear_combination r6209
    have haddx :
        rho 37480 * (1 + 3021 * (rho 37474 * seg34AccX242 rho) * (rho 37473 * seg34AccY242 rho)) =
          rho 37474 * seg34AccX242 rho + rho 37473 * seg34AccY242 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37481 * (1 - 3021 * (rho 37474 * seg34AccX242 rho) * (rho 37473 * seg34AccY242 rho)) =
          (-1) * (rho 37474 * seg34AccX242 rho) - rho 37473 * seg34AccY242 rho +
            (seg34AccY242 rho - seg34AccX242 rho * (-1)) * (rho 37473 + rho 37474) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37481 * (1 - rho 37479) = rho 37476 - rho 37477 - rho 37478 := ha5
        _ = (-1) * rho 37477 - rho 37478 + (seg34AccY242 rho - seg34AccX242 rho * (-1)) * (rho 37473 + rho 37474) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX243 rho = seg34AccX242 rho - Bool.toZMod bit * (seg34AccX242 rho - rho 37480) := by
      have hd : rho 37482 = Bool.toZMod bit * (rho 37480 - seg34AccX242 rho) := by
        rw [← hbit, seg34LadderFlatX242_eq]
        unfold seg34LadderFlatX242
        linear_combination -r6210
      unfold seg34AccX243
      linear_combination hd
    have hsely : seg34AccY243 rho = seg34AccY242 rho - Bool.toZMod bit * (seg34AccY242 rho - rho 37481) := by
      have hd : rho 37483 = Bool.toZMod bit * (rho 37481 - seg34AccY242 rho) := by
        rw [← hbit, seg34LadderFlatY242_eq]
        unfold seg34LadderFlatY242
        linear_combination -r6211
      unfold seg34AccY243
      linear_combination hd
    have hd0 : rho 37473 * rho 37474 = rho 37484 := by linear_combination r6212
    have hd1 : rho 37473 * rho 37473 = rho 37485 := by linear_combination r6213
    have hd2 : rho 37474 * rho 37474 = rho 37486 := by linear_combination r6214
    have hd3 : rho 37487 * (rho 37474 * rho 37474 + rho 37473 * rho 37473 * (-1)) = 2 * (rho 37473 * rho 37474) := by
      rw [hd0, hd1, hd2]
      linear_combination r6215
    have hd4 : rho 37488 * (2 - (rho 37474 * rho 37474 + rho 37473 * rho 37473 * (-1))) = rho 37474 * rho 37474 - rho 37473 * rho 37473 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6216
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
      ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩
      ⟨(rho 37480 : Seg34.F), (rho 37481 : Seg34.F)⟩
      ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
      ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung242

theorem seg34_rung243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34235 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
        ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩
        ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
        ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6217 Seg34.relationLc1250 Seg34.relationLc1250Part0 Seg34.relationLc1250Part1 Seg34.relationLc1250Part2 Seg34.relationLc1250Part3 Seg34.relationLc1250Part4 Seg34.relationLc1250Part5 Seg34.relationLc1250Part6 Seg34.relationLc1250Part7 Seg34.relationLc1250Part8 Seg34.relationLc1250Part9 Seg34.relationLc1250Part10 Seg34.relationLc1250Part11 Seg34.relationLc1250Part12 Seg34.relationLc1250Part13 Seg34.relationLc1250Part14 Seg34.relationLc1250Part15 at r6217
  unfold Seg34.relationRow6218 at r6218
  unfold Seg34.relationRow6219 Seg34.relationLc1251 Seg34.relationLc1251Part0 Seg34.relationLc1251Part1 Seg34.relationLc1251Part2 Seg34.relationLc1251Part3 Seg34.relationLc1251Part4 Seg34.relationLc1251Part5 Seg34.relationLc1251Part6 Seg34.relationLc1251Part7 at r6219
  unfold Seg34.relationRow6220 Seg34.relationLc1252 Seg34.relationLc1252Part0 Seg34.relationLc1252Part1 Seg34.relationLc1252Part2 Seg34.relationLc1252Part3 Seg34.relationLc1252Part4 Seg34.relationLc1252Part5 Seg34.relationLc1252Part6 Seg34.relationLc1252Part7 at r6220
  unfold Seg34.relationRow6221 at r6221
  unfold Seg34.relationRow6222 at r6222
  unfold Seg34.relationRow6223 at r6223
  unfold Seg34.relationRow6224 Seg34.relationLc1253 Seg34.relationLc1253Part0 Seg34.relationLc1253Part1 Seg34.relationLc1253Part2 Seg34.relationLc1253Part3 Seg34.relationLc1253Part4 Seg34.relationLc1253Part5 Seg34.relationLc1253Part6 Seg34.relationLc1253Part7 at r6224
  unfold Seg34.relationRow6225 Seg34.relationLc1254 Seg34.relationLc1254Part0 Seg34.relationLc1254Part1 Seg34.relationLc1254Part2 Seg34.relationLc1254Part3 Seg34.relationLc1254Part4 Seg34.relationLc1254Part5 Seg34.relationLc1254Part6 Seg34.relationLc1254Part7 at r6225
  unfold Seg34.relationRow6226 at r6226
  unfold Seg34.relationRow6227 at r6227
  unfold Seg34.relationRow6228 at r6228
  unfold Seg34.relationRow6229 at r6229
  unfold Seg34.relationRow6230 at r6230
  have hrung243 (bit : Bool) (hbit : rho 34235 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
        ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩
        ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
        ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩ := by
    have hsum : seg34AccX243 rho + seg34AccY243 rho = rho 37489 := by
      rw [seg34LadderFlatX243_eq, seg34LadderFlatY243_eq]
      unfold seg34LadderFlatX243 seg34LadderFlatY243
      linear_combination r6217
    have ha0 : (rho 37487 + rho 37488) * (seg34AccX243 rho + seg34AccY243 rho) = rho 37490 := by
      rw [hsum]
      linear_combination r6218
    have ha1 : rho 37488 * seg34AccX243 rho = rho 37491 := by
      rw [seg34LadderFlatX243_eq]
      unfold seg34LadderFlatX243
      linear_combination r6219
    have ha2 : rho 37487 * seg34AccY243 rho = rho 37492 := by
      rw [seg34LadderFlatY243_eq]
      unfold seg34LadderFlatY243
      linear_combination r6220
    have ha3 : 3021 * rho 37491 * rho 37492 = rho 37493 := by
      linear_combination r6221
    have ha4 : rho 37494 * (1 + rho 37493) = rho 37491 + rho 37492 := by
      linear_combination r6222
    have ha5 : rho 37495 * (1 - rho 37493) = rho 37490 - rho 37491 - rho 37492 := by
      linear_combination r6223
    have haddx :
        rho 37494 * (1 + 3021 * (rho 37488 * seg34AccX243 rho) * (rho 37487 * seg34AccY243 rho)) =
          rho 37488 * seg34AccX243 rho + rho 37487 * seg34AccY243 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37495 * (1 - 3021 * (rho 37488 * seg34AccX243 rho) * (rho 37487 * seg34AccY243 rho)) =
          (-1) * (rho 37488 * seg34AccX243 rho) - rho 37487 * seg34AccY243 rho +
            (seg34AccY243 rho - seg34AccX243 rho * (-1)) * (rho 37487 + rho 37488) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37495 * (1 - rho 37493) = rho 37490 - rho 37491 - rho 37492 := ha5
        _ = (-1) * rho 37491 - rho 37492 + (seg34AccY243 rho - seg34AccX243 rho * (-1)) * (rho 37487 + rho 37488) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX244 rho = seg34AccX243 rho - Bool.toZMod bit * (seg34AccX243 rho - rho 37494) := by
      have hd : rho 37496 = Bool.toZMod bit * (rho 37494 - seg34AccX243 rho) := by
        rw [← hbit, seg34LadderFlatX243_eq]
        unfold seg34LadderFlatX243
        linear_combination -r6224
      unfold seg34AccX244
      linear_combination hd
    have hsely : seg34AccY244 rho = seg34AccY243 rho - Bool.toZMod bit * (seg34AccY243 rho - rho 37495) := by
      have hd : rho 37497 = Bool.toZMod bit * (rho 37495 - seg34AccY243 rho) := by
        rw [← hbit, seg34LadderFlatY243_eq]
        unfold seg34LadderFlatY243
        linear_combination -r6225
      unfold seg34AccY244
      linear_combination hd
    have hd0 : rho 37487 * rho 37488 = rho 37498 := by linear_combination r6226
    have hd1 : rho 37487 * rho 37487 = rho 37499 := by linear_combination r6227
    have hd2 : rho 37488 * rho 37488 = rho 37500 := by linear_combination r6228
    have hd3 : rho 37501 * (rho 37488 * rho 37488 + rho 37487 * rho 37487 * (-1)) = 2 * (rho 37487 * rho 37488) := by
      rw [hd0, hd1, hd2]
      linear_combination r6229
    have hd4 : rho 37502 * (2 - (rho 37488 * rho 37488 + rho 37487 * rho 37487 * (-1))) = rho 37488 * rho 37488 - rho 37487 * rho 37487 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6230
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
      ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩
      ⟨(rho 37494 : Seg34.F), (rho 37495 : Seg34.F)⟩
      ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
      ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung243

theorem seg34_rung244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34236 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
        ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩
        ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
        ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, p78, _
  ⟩
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6231 Seg34.relationLc1255 Seg34.relationLc1255Part0 Seg34.relationLc1255Part1 Seg34.relationLc1255Part2 Seg34.relationLc1255Part3 Seg34.relationLc1255Part4 Seg34.relationLc1255Part5 Seg34.relationLc1255Part6 Seg34.relationLc1255Part7 Seg34.relationLc1255Part8 Seg34.relationLc1255Part9 Seg34.relationLc1255Part10 Seg34.relationLc1255Part11 Seg34.relationLc1255Part12 Seg34.relationLc1255Part13 Seg34.relationLc1255Part14 Seg34.relationLc1255Part15 at r6231
  unfold Seg34.relationRow6232 at r6232
  unfold Seg34.relationRow6233 Seg34.relationLc1256 Seg34.relationLc1256Part0 Seg34.relationLc1256Part1 Seg34.relationLc1256Part2 Seg34.relationLc1256Part3 Seg34.relationLc1256Part4 Seg34.relationLc1256Part5 Seg34.relationLc1256Part6 Seg34.relationLc1256Part7 at r6233
  unfold Seg34.relationRow6234 Seg34.relationLc1257 Seg34.relationLc1257Part0 Seg34.relationLc1257Part1 Seg34.relationLc1257Part2 Seg34.relationLc1257Part3 Seg34.relationLc1257Part4 Seg34.relationLc1257Part5 Seg34.relationLc1257Part6 Seg34.relationLc1257Part7 at r6234
  unfold Seg34.relationRow6235 at r6235
  unfold Seg34.relationRow6236 at r6236
  unfold Seg34.relationRow6237 at r6237
  unfold Seg34.relationRow6238 Seg34.relationLc1258 Seg34.relationLc1258Part0 Seg34.relationLc1258Part1 Seg34.relationLc1258Part2 Seg34.relationLc1258Part3 Seg34.relationLc1258Part4 Seg34.relationLc1258Part5 Seg34.relationLc1258Part6 Seg34.relationLc1258Part7 at r6238
  unfold Seg34.relationRow6239 Seg34.relationLc1259 Seg34.relationLc1259Part0 Seg34.relationLc1259Part1 Seg34.relationLc1259Part2 Seg34.relationLc1259Part3 Seg34.relationLc1259Part4 Seg34.relationLc1259Part5 Seg34.relationLc1259Part6 Seg34.relationLc1259Part7 at r6239
  unfold Seg34.relationRow6240 at r6240
  unfold Seg34.relationRow6241 at r6241
  unfold Seg34.relationRow6242 at r6242
  unfold Seg34.relationRow6243 at r6243
  unfold Seg34.relationRow6244 at r6244
  have hrung244 (bit : Bool) (hbit : rho 34236 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
        ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩
        ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
        ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩ := by
    have hsum : seg34AccX244 rho + seg34AccY244 rho = rho 37503 := by
      rw [seg34LadderFlatX244_eq, seg34LadderFlatY244_eq]
      unfold seg34LadderFlatX244 seg34LadderFlatY244
      linear_combination r6231
    have ha0 : (rho 37501 + rho 37502) * (seg34AccX244 rho + seg34AccY244 rho) = rho 37504 := by
      rw [hsum]
      linear_combination r6232
    have ha1 : rho 37502 * seg34AccX244 rho = rho 37505 := by
      rw [seg34LadderFlatX244_eq]
      unfold seg34LadderFlatX244
      linear_combination r6233
    have ha2 : rho 37501 * seg34AccY244 rho = rho 37506 := by
      rw [seg34LadderFlatY244_eq]
      unfold seg34LadderFlatY244
      linear_combination r6234
    have ha3 : 3021 * rho 37505 * rho 37506 = rho 37507 := by
      linear_combination r6235
    have ha4 : rho 37508 * (1 + rho 37507) = rho 37505 + rho 37506 := by
      linear_combination r6236
    have ha5 : rho 37509 * (1 - rho 37507) = rho 37504 - rho 37505 - rho 37506 := by
      linear_combination r6237
    have haddx :
        rho 37508 * (1 + 3021 * (rho 37502 * seg34AccX244 rho) * (rho 37501 * seg34AccY244 rho)) =
          rho 37502 * seg34AccX244 rho + rho 37501 * seg34AccY244 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37509 * (1 - 3021 * (rho 37502 * seg34AccX244 rho) * (rho 37501 * seg34AccY244 rho)) =
          (-1) * (rho 37502 * seg34AccX244 rho) - rho 37501 * seg34AccY244 rho +
            (seg34AccY244 rho - seg34AccX244 rho * (-1)) * (rho 37501 + rho 37502) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37509 * (1 - rho 37507) = rho 37504 - rho 37505 - rho 37506 := ha5
        _ = (-1) * rho 37505 - rho 37506 + (seg34AccY244 rho - seg34AccX244 rho * (-1)) * (rho 37501 + rho 37502) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX245 rho = seg34AccX244 rho - Bool.toZMod bit * (seg34AccX244 rho - rho 37508) := by
      have hd : rho 37510 = Bool.toZMod bit * (rho 37508 - seg34AccX244 rho) := by
        rw [← hbit, seg34LadderFlatX244_eq]
        unfold seg34LadderFlatX244
        linear_combination -r6238
      unfold seg34AccX245
      linear_combination hd
    have hsely : seg34AccY245 rho = seg34AccY244 rho - Bool.toZMod bit * (seg34AccY244 rho - rho 37509) := by
      have hd : rho 37511 = Bool.toZMod bit * (rho 37509 - seg34AccY244 rho) := by
        rw [← hbit, seg34LadderFlatY244_eq]
        unfold seg34LadderFlatY244
        linear_combination -r6239
      unfold seg34AccY245
      linear_combination hd
    have hd0 : rho 37501 * rho 37502 = rho 37512 := by linear_combination r6240
    have hd1 : rho 37501 * rho 37501 = rho 37513 := by linear_combination r6241
    have hd2 : rho 37502 * rho 37502 = rho 37514 := by linear_combination r6242
    have hd3 : rho 37515 * (rho 37502 * rho 37502 + rho 37501 * rho 37501 * (-1)) = 2 * (rho 37501 * rho 37502) := by
      rw [hd0, hd1, hd2]
      linear_combination r6243
    have hd4 : rho 37516 * (2 - (rho 37502 * rho 37502 + rho 37501 * rho 37501 * (-1))) = rho 37502 * rho 37502 - rho 37501 * rho 37501 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6244
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
      ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩
      ⟨(rho 37508 : Seg34.F), (rho 37509 : Seg34.F)⟩
      ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
      ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung244

theorem seg34_rung245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34237 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
        ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩
        ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
        ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6245 Seg34.relationLc1260 Seg34.relationLc1260Part0 Seg34.relationLc1260Part1 Seg34.relationLc1260Part2 Seg34.relationLc1260Part3 Seg34.relationLc1260Part4 Seg34.relationLc1260Part5 Seg34.relationLc1260Part6 Seg34.relationLc1260Part7 Seg34.relationLc1260Part8 Seg34.relationLc1260Part9 Seg34.relationLc1260Part10 Seg34.relationLc1260Part11 Seg34.relationLc1260Part12 Seg34.relationLc1260Part13 Seg34.relationLc1260Part14 Seg34.relationLc1260Part15 at r6245
  unfold Seg34.relationRow6246 at r6246
  unfold Seg34.relationRow6247 Seg34.relationLc1261 Seg34.relationLc1261Part0 Seg34.relationLc1261Part1 Seg34.relationLc1261Part2 Seg34.relationLc1261Part3 Seg34.relationLc1261Part4 Seg34.relationLc1261Part5 Seg34.relationLc1261Part6 Seg34.relationLc1261Part7 at r6247
  unfold Seg34.relationRow6248 Seg34.relationLc1262 Seg34.relationLc1262Part0 Seg34.relationLc1262Part1 Seg34.relationLc1262Part2 Seg34.relationLc1262Part3 Seg34.relationLc1262Part4 Seg34.relationLc1262Part5 Seg34.relationLc1262Part6 Seg34.relationLc1262Part7 at r6248
  unfold Seg34.relationRow6249 at r6249
  unfold Seg34.relationRow6250 at r6250
  unfold Seg34.relationRow6251 at r6251
  unfold Seg34.relationRow6252 Seg34.relationLc1263 Seg34.relationLc1263Part0 Seg34.relationLc1263Part1 Seg34.relationLc1263Part2 Seg34.relationLc1263Part3 Seg34.relationLc1263Part4 Seg34.relationLc1263Part5 Seg34.relationLc1263Part6 Seg34.relationLc1263Part7 at r6252
  unfold Seg34.relationRow6253 Seg34.relationLc1264 Seg34.relationLc1264Part0 Seg34.relationLc1264Part1 Seg34.relationLc1264Part2 Seg34.relationLc1264Part3 Seg34.relationLc1264Part4 Seg34.relationLc1264Part5 Seg34.relationLc1264Part6 Seg34.relationLc1264Part7 at r6253
  unfold Seg34.relationRow6254 at r6254
  unfold Seg34.relationRow6255 at r6255
  unfold Seg34.relationRow6256 at r6256
  unfold Seg34.relationRow6257 at r6257
  unfold Seg34.relationRow6258 at r6258
  have hrung245 (bit : Bool) (hbit : rho 34237 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
        ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩
        ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
        ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩ := by
    have hsum : seg34AccX245 rho + seg34AccY245 rho = rho 37517 := by
      rw [seg34LadderFlatX245_eq, seg34LadderFlatY245_eq]
      unfold seg34LadderFlatX245 seg34LadderFlatY245
      linear_combination r6245
    have ha0 : (rho 37515 + rho 37516) * (seg34AccX245 rho + seg34AccY245 rho) = rho 37518 := by
      rw [hsum]
      linear_combination r6246
    have ha1 : rho 37516 * seg34AccX245 rho = rho 37519 := by
      rw [seg34LadderFlatX245_eq]
      unfold seg34LadderFlatX245
      linear_combination r6247
    have ha2 : rho 37515 * seg34AccY245 rho = rho 37520 := by
      rw [seg34LadderFlatY245_eq]
      unfold seg34LadderFlatY245
      linear_combination r6248
    have ha3 : 3021 * rho 37519 * rho 37520 = rho 37521 := by
      linear_combination r6249
    have ha4 : rho 37522 * (1 + rho 37521) = rho 37519 + rho 37520 := by
      linear_combination r6250
    have ha5 : rho 37523 * (1 - rho 37521) = rho 37518 - rho 37519 - rho 37520 := by
      linear_combination r6251
    have haddx :
        rho 37522 * (1 + 3021 * (rho 37516 * seg34AccX245 rho) * (rho 37515 * seg34AccY245 rho)) =
          rho 37516 * seg34AccX245 rho + rho 37515 * seg34AccY245 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37523 * (1 - 3021 * (rho 37516 * seg34AccX245 rho) * (rho 37515 * seg34AccY245 rho)) =
          (-1) * (rho 37516 * seg34AccX245 rho) - rho 37515 * seg34AccY245 rho +
            (seg34AccY245 rho - seg34AccX245 rho * (-1)) * (rho 37515 + rho 37516) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37523 * (1 - rho 37521) = rho 37518 - rho 37519 - rho 37520 := ha5
        _ = (-1) * rho 37519 - rho 37520 + (seg34AccY245 rho - seg34AccX245 rho * (-1)) * (rho 37515 + rho 37516) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX246 rho = seg34AccX245 rho - Bool.toZMod bit * (seg34AccX245 rho - rho 37522) := by
      have hd : rho 37524 = Bool.toZMod bit * (rho 37522 - seg34AccX245 rho) := by
        rw [← hbit, seg34LadderFlatX245_eq]
        unfold seg34LadderFlatX245
        linear_combination -r6252
      unfold seg34AccX246
      linear_combination hd
    have hsely : seg34AccY246 rho = seg34AccY245 rho - Bool.toZMod bit * (seg34AccY245 rho - rho 37523) := by
      have hd : rho 37525 = Bool.toZMod bit * (rho 37523 - seg34AccY245 rho) := by
        rw [← hbit, seg34LadderFlatY245_eq]
        unfold seg34LadderFlatY245
        linear_combination -r6253
      unfold seg34AccY246
      linear_combination hd
    have hd0 : rho 37515 * rho 37516 = rho 37526 := by linear_combination r6254
    have hd1 : rho 37515 * rho 37515 = rho 37527 := by linear_combination r6255
    have hd2 : rho 37516 * rho 37516 = rho 37528 := by linear_combination r6256
    have hd3 : rho 37529 * (rho 37516 * rho 37516 + rho 37515 * rho 37515 * (-1)) = 2 * (rho 37515 * rho 37516) := by
      rw [hd0, hd1, hd2]
      linear_combination r6257
    have hd4 : rho 37530 * (2 - (rho 37516 * rho 37516 + rho 37515 * rho 37515 * (-1))) = rho 37516 * rho 37516 - rho 37515 * rho 37515 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6258
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
      ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩
      ⟨(rho 37522 : Seg34.F), (rho 37523 : Seg34.F)⟩
      ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
      ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung245

theorem seg34_rung246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34238 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
        ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩
        ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
        ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6259 Seg34.relationLc1265 Seg34.relationLc1265Part0 Seg34.relationLc1265Part1 Seg34.relationLc1265Part2 Seg34.relationLc1265Part3 Seg34.relationLc1265Part4 Seg34.relationLc1265Part5 Seg34.relationLc1265Part6 Seg34.relationLc1265Part7 Seg34.relationLc1265Part8 Seg34.relationLc1265Part9 Seg34.relationLc1265Part10 Seg34.relationLc1265Part11 Seg34.relationLc1265Part12 Seg34.relationLc1265Part13 Seg34.relationLc1265Part14 Seg34.relationLc1265Part15 at r6259
  unfold Seg34.relationRow6260 at r6260
  unfold Seg34.relationRow6261 Seg34.relationLc1266 Seg34.relationLc1266Part0 Seg34.relationLc1266Part1 Seg34.relationLc1266Part2 Seg34.relationLc1266Part3 Seg34.relationLc1266Part4 Seg34.relationLc1266Part5 Seg34.relationLc1266Part6 Seg34.relationLc1266Part7 at r6261
  unfold Seg34.relationRow6262 Seg34.relationLc1267 Seg34.relationLc1267Part0 Seg34.relationLc1267Part1 Seg34.relationLc1267Part2 Seg34.relationLc1267Part3 Seg34.relationLc1267Part4 Seg34.relationLc1267Part5 Seg34.relationLc1267Part6 Seg34.relationLc1267Part7 at r6262
  unfold Seg34.relationRow6263 at r6263
  unfold Seg34.relationRow6264 at r6264
  unfold Seg34.relationRow6265 at r6265
  unfold Seg34.relationRow6266 Seg34.relationLc1268 Seg34.relationLc1268Part0 Seg34.relationLc1268Part1 Seg34.relationLc1268Part2 Seg34.relationLc1268Part3 Seg34.relationLc1268Part4 Seg34.relationLc1268Part5 Seg34.relationLc1268Part6 Seg34.relationLc1268Part7 at r6266
  unfold Seg34.relationRow6267 Seg34.relationLc1269 Seg34.relationLc1269Part0 Seg34.relationLc1269Part1 Seg34.relationLc1269Part2 Seg34.relationLc1269Part3 Seg34.relationLc1269Part4 Seg34.relationLc1269Part5 Seg34.relationLc1269Part6 Seg34.relationLc1269Part7 at r6267
  unfold Seg34.relationRow6268 at r6268
  unfold Seg34.relationRow6269 at r6269
  unfold Seg34.relationRow6270 at r6270
  unfold Seg34.relationRow6271 at r6271
  unfold Seg34.relationRow6272 at r6272
  have hrung246 (bit : Bool) (hbit : rho 34238 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
        ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩
        ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
        ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩ := by
    have hsum : seg34AccX246 rho + seg34AccY246 rho = rho 37531 := by
      rw [seg34LadderFlatX246_eq, seg34LadderFlatY246_eq]
      unfold seg34LadderFlatX246 seg34LadderFlatY246
      linear_combination r6259
    have ha0 : (rho 37529 + rho 37530) * (seg34AccX246 rho + seg34AccY246 rho) = rho 37532 := by
      rw [hsum]
      linear_combination r6260
    have ha1 : rho 37530 * seg34AccX246 rho = rho 37533 := by
      rw [seg34LadderFlatX246_eq]
      unfold seg34LadderFlatX246
      linear_combination r6261
    have ha2 : rho 37529 * seg34AccY246 rho = rho 37534 := by
      rw [seg34LadderFlatY246_eq]
      unfold seg34LadderFlatY246
      linear_combination r6262
    have ha3 : 3021 * rho 37533 * rho 37534 = rho 37535 := by
      linear_combination r6263
    have ha4 : rho 37536 * (1 + rho 37535) = rho 37533 + rho 37534 := by
      linear_combination r6264
    have ha5 : rho 37537 * (1 - rho 37535) = rho 37532 - rho 37533 - rho 37534 := by
      linear_combination r6265
    have haddx :
        rho 37536 * (1 + 3021 * (rho 37530 * seg34AccX246 rho) * (rho 37529 * seg34AccY246 rho)) =
          rho 37530 * seg34AccX246 rho + rho 37529 * seg34AccY246 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37537 * (1 - 3021 * (rho 37530 * seg34AccX246 rho) * (rho 37529 * seg34AccY246 rho)) =
          (-1) * (rho 37530 * seg34AccX246 rho) - rho 37529 * seg34AccY246 rho +
            (seg34AccY246 rho - seg34AccX246 rho * (-1)) * (rho 37529 + rho 37530) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37537 * (1 - rho 37535) = rho 37532 - rho 37533 - rho 37534 := ha5
        _ = (-1) * rho 37533 - rho 37534 + (seg34AccY246 rho - seg34AccX246 rho * (-1)) * (rho 37529 + rho 37530) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX247 rho = seg34AccX246 rho - Bool.toZMod bit * (seg34AccX246 rho - rho 37536) := by
      have hd : rho 37538 = Bool.toZMod bit * (rho 37536 - seg34AccX246 rho) := by
        rw [← hbit, seg34LadderFlatX246_eq]
        unfold seg34LadderFlatX246
        linear_combination -r6266
      unfold seg34AccX247
      linear_combination hd
    have hsely : seg34AccY247 rho = seg34AccY246 rho - Bool.toZMod bit * (seg34AccY246 rho - rho 37537) := by
      have hd : rho 37539 = Bool.toZMod bit * (rho 37537 - seg34AccY246 rho) := by
        rw [← hbit, seg34LadderFlatY246_eq]
        unfold seg34LadderFlatY246
        linear_combination -r6267
      unfold seg34AccY247
      linear_combination hd
    have hd0 : rho 37529 * rho 37530 = rho 37540 := by linear_combination r6268
    have hd1 : rho 37529 * rho 37529 = rho 37541 := by linear_combination r6269
    have hd2 : rho 37530 * rho 37530 = rho 37542 := by linear_combination r6270
    have hd3 : rho 37543 * (rho 37530 * rho 37530 + rho 37529 * rho 37529 * (-1)) = 2 * (rho 37529 * rho 37530) := by
      rw [hd0, hd1, hd2]
      linear_combination r6271
    have hd4 : rho 37544 * (2 - (rho 37530 * rho 37530 + rho 37529 * rho 37529 * (-1))) = rho 37530 * rho 37530 - rho 37529 * rho 37529 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6272
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
      ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩
      ⟨(rho 37536 : Seg34.F), (rho 37537 : Seg34.F)⟩
      ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
      ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung246

theorem seg34_rung247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34239 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
        ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩
        ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
        ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6273 Seg34.relationLc1270 Seg34.relationLc1270Part0 Seg34.relationLc1270Part1 Seg34.relationLc1270Part2 Seg34.relationLc1270Part3 Seg34.relationLc1270Part4 Seg34.relationLc1270Part5 Seg34.relationLc1270Part6 Seg34.relationLc1270Part7 Seg34.relationLc1270Part8 Seg34.relationLc1270Part9 Seg34.relationLc1270Part10 Seg34.relationLc1270Part11 Seg34.relationLc1270Part12 Seg34.relationLc1270Part13 Seg34.relationLc1270Part14 Seg34.relationLc1270Part15 at r6273
  unfold Seg34.relationRow6274 at r6274
  unfold Seg34.relationRow6275 Seg34.relationLc1271 Seg34.relationLc1271Part0 Seg34.relationLc1271Part1 Seg34.relationLc1271Part2 Seg34.relationLc1271Part3 Seg34.relationLc1271Part4 Seg34.relationLc1271Part5 Seg34.relationLc1271Part6 Seg34.relationLc1271Part7 at r6275
  unfold Seg34.relationRow6276 Seg34.relationLc1272 Seg34.relationLc1272Part0 Seg34.relationLc1272Part1 Seg34.relationLc1272Part2 Seg34.relationLc1272Part3 Seg34.relationLc1272Part4 Seg34.relationLc1272Part5 Seg34.relationLc1272Part6 Seg34.relationLc1272Part7 at r6276
  unfold Seg34.relationRow6277 at r6277
  unfold Seg34.relationRow6278 at r6278
  unfold Seg34.relationRow6279 at r6279
  unfold Seg34.relationRow6280 Seg34.relationLc1273 Seg34.relationLc1273Part0 Seg34.relationLc1273Part1 Seg34.relationLc1273Part2 Seg34.relationLc1273Part3 Seg34.relationLc1273Part4 Seg34.relationLc1273Part5 Seg34.relationLc1273Part6 Seg34.relationLc1273Part7 at r6280
  unfold Seg34.relationRow6281 Seg34.relationLc1274 Seg34.relationLc1274Part0 Seg34.relationLc1274Part1 Seg34.relationLc1274Part2 Seg34.relationLc1274Part3 Seg34.relationLc1274Part4 Seg34.relationLc1274Part5 Seg34.relationLc1274Part6 Seg34.relationLc1274Part7 at r6281
  unfold Seg34.relationRow6282 at r6282
  unfold Seg34.relationRow6283 at r6283
  unfold Seg34.relationRow6284 at r6284
  unfold Seg34.relationRow6285 at r6285
  unfold Seg34.relationRow6286 at r6286
  have hrung247 (bit : Bool) (hbit : rho 34239 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
        ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩
        ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
        ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩ := by
    have hsum : seg34AccX247 rho + seg34AccY247 rho = rho 37545 := by
      rw [seg34LadderFlatX247_eq, seg34LadderFlatY247_eq]
      unfold seg34LadderFlatX247 seg34LadderFlatY247
      linear_combination r6273
    have ha0 : (rho 37543 + rho 37544) * (seg34AccX247 rho + seg34AccY247 rho) = rho 37546 := by
      rw [hsum]
      linear_combination r6274
    have ha1 : rho 37544 * seg34AccX247 rho = rho 37547 := by
      rw [seg34LadderFlatX247_eq]
      unfold seg34LadderFlatX247
      linear_combination r6275
    have ha2 : rho 37543 * seg34AccY247 rho = rho 37548 := by
      rw [seg34LadderFlatY247_eq]
      unfold seg34LadderFlatY247
      linear_combination r6276
    have ha3 : 3021 * rho 37547 * rho 37548 = rho 37549 := by
      linear_combination r6277
    have ha4 : rho 37550 * (1 + rho 37549) = rho 37547 + rho 37548 := by
      linear_combination r6278
    have ha5 : rho 37551 * (1 - rho 37549) = rho 37546 - rho 37547 - rho 37548 := by
      linear_combination r6279
    have haddx :
        rho 37550 * (1 + 3021 * (rho 37544 * seg34AccX247 rho) * (rho 37543 * seg34AccY247 rho)) =
          rho 37544 * seg34AccX247 rho + rho 37543 * seg34AccY247 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37551 * (1 - 3021 * (rho 37544 * seg34AccX247 rho) * (rho 37543 * seg34AccY247 rho)) =
          (-1) * (rho 37544 * seg34AccX247 rho) - rho 37543 * seg34AccY247 rho +
            (seg34AccY247 rho - seg34AccX247 rho * (-1)) * (rho 37543 + rho 37544) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37551 * (1 - rho 37549) = rho 37546 - rho 37547 - rho 37548 := ha5
        _ = (-1) * rho 37547 - rho 37548 + (seg34AccY247 rho - seg34AccX247 rho * (-1)) * (rho 37543 + rho 37544) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX248 rho = seg34AccX247 rho - Bool.toZMod bit * (seg34AccX247 rho - rho 37550) := by
      have hd : rho 37552 = Bool.toZMod bit * (rho 37550 - seg34AccX247 rho) := by
        rw [← hbit, seg34LadderFlatX247_eq]
        unfold seg34LadderFlatX247
        linear_combination -r6280
      unfold seg34AccX248
      linear_combination hd
    have hsely : seg34AccY248 rho = seg34AccY247 rho - Bool.toZMod bit * (seg34AccY247 rho - rho 37551) := by
      have hd : rho 37553 = Bool.toZMod bit * (rho 37551 - seg34AccY247 rho) := by
        rw [← hbit, seg34LadderFlatY247_eq]
        unfold seg34LadderFlatY247
        linear_combination -r6281
      unfold seg34AccY248
      linear_combination hd
    have hd0 : rho 37543 * rho 37544 = rho 37554 := by linear_combination r6282
    have hd1 : rho 37543 * rho 37543 = rho 37555 := by linear_combination r6283
    have hd2 : rho 37544 * rho 37544 = rho 37556 := by linear_combination r6284
    have hd3 : rho 37557 * (rho 37544 * rho 37544 + rho 37543 * rho 37543 * (-1)) = 2 * (rho 37543 * rho 37544) := by
      rw [hd0, hd1, hd2]
      linear_combination r6285
    have hd4 : rho 37558 * (2 - (rho 37544 * rho 37544 + rho 37543 * rho 37543 * (-1))) = rho 37544 * rho 37544 - rho 37543 * rho 37543 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6286
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
      ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩
      ⟨(rho 37550 : Seg34.F), (rho 37551 : Seg34.F)⟩
      ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
      ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung247

theorem seg34_rung248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34240 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
        ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩
        ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
        ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow6287 Seg34.relationLc1275 Seg34.relationLc1275Part0 Seg34.relationLc1275Part1 Seg34.relationLc1275Part2 Seg34.relationLc1275Part3 Seg34.relationLc1275Part4 Seg34.relationLc1275Part5 Seg34.relationLc1275Part6 Seg34.relationLc1275Part7 Seg34.relationLc1275Part8 Seg34.relationLc1275Part9 Seg34.relationLc1275Part10 Seg34.relationLc1275Part11 Seg34.relationLc1275Part12 Seg34.relationLc1275Part13 Seg34.relationLc1275Part14 Seg34.relationLc1275Part15 at r6287
  unfold Seg34.relationRow6288 at r6288
  unfold Seg34.relationRow6289 Seg34.relationLc1276 Seg34.relationLc1276Part0 Seg34.relationLc1276Part1 Seg34.relationLc1276Part2 Seg34.relationLc1276Part3 Seg34.relationLc1276Part4 Seg34.relationLc1276Part5 Seg34.relationLc1276Part6 Seg34.relationLc1276Part7 at r6289
  unfold Seg34.relationRow6290 Seg34.relationLc1277 Seg34.relationLc1277Part0 Seg34.relationLc1277Part1 Seg34.relationLc1277Part2 Seg34.relationLc1277Part3 Seg34.relationLc1277Part4 Seg34.relationLc1277Part5 Seg34.relationLc1277Part6 Seg34.relationLc1277Part7 at r6290
  unfold Seg34.relationRow6291 at r6291
  unfold Seg34.relationRow6292 at r6292
  unfold Seg34.relationRow6293 at r6293
  unfold Seg34.relationRow6294 Seg34.relationLc1278 Seg34.relationLc1278Part0 Seg34.relationLc1278Part1 Seg34.relationLc1278Part2 Seg34.relationLc1278Part3 Seg34.relationLc1278Part4 Seg34.relationLc1278Part5 Seg34.relationLc1278Part6 Seg34.relationLc1278Part7 at r6294
  unfold Seg34.relationRow6295 Seg34.relationLc1279 Seg34.relationLc1279Part0 Seg34.relationLc1279Part1 Seg34.relationLc1279Part2 Seg34.relationLc1279Part3 Seg34.relationLc1279Part4 Seg34.relationLc1279Part5 Seg34.relationLc1279Part6 Seg34.relationLc1279Part7 at r6295
  unfold Seg34.relationRow6296 at r6296
  unfold Seg34.relationRow6297 at r6297
  unfold Seg34.relationRow6298 at r6298
  unfold Seg34.relationRow6299 at r6299
  unfold Seg34.relationRow6300 at r6300
  have hrung248 (bit : Bool) (hbit : rho 34240 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
        ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩
        ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
        ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩ := by
    have hsum : seg34AccX248 rho + seg34AccY248 rho = rho 37559 := by
      rw [seg34LadderFlatX248_eq, seg34LadderFlatY248_eq]
      unfold seg34LadderFlatX248 seg34LadderFlatY248
      linear_combination r6287
    have ha0 : (rho 37557 + rho 37558) * (seg34AccX248 rho + seg34AccY248 rho) = rho 37560 := by
      rw [hsum]
      linear_combination r6288
    have ha1 : rho 37558 * seg34AccX248 rho = rho 37561 := by
      rw [seg34LadderFlatX248_eq]
      unfold seg34LadderFlatX248
      linear_combination r6289
    have ha2 : rho 37557 * seg34AccY248 rho = rho 37562 := by
      rw [seg34LadderFlatY248_eq]
      unfold seg34LadderFlatY248
      linear_combination r6290
    have ha3 : 3021 * rho 37561 * rho 37562 = rho 37563 := by
      linear_combination r6291
    have ha4 : rho 37564 * (1 + rho 37563) = rho 37561 + rho 37562 := by
      linear_combination r6292
    have ha5 : rho 37565 * (1 - rho 37563) = rho 37560 - rho 37561 - rho 37562 := by
      linear_combination r6293
    have haddx :
        rho 37564 * (1 + 3021 * (rho 37558 * seg34AccX248 rho) * (rho 37557 * seg34AccY248 rho)) =
          rho 37558 * seg34AccX248 rho + rho 37557 * seg34AccY248 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37565 * (1 - 3021 * (rho 37558 * seg34AccX248 rho) * (rho 37557 * seg34AccY248 rho)) =
          (-1) * (rho 37558 * seg34AccX248 rho) - rho 37557 * seg34AccY248 rho +
            (seg34AccY248 rho - seg34AccX248 rho * (-1)) * (rho 37557 + rho 37558) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37565 * (1 - rho 37563) = rho 37560 - rho 37561 - rho 37562 := ha5
        _ = (-1) * rho 37561 - rho 37562 + (seg34AccY248 rho - seg34AccX248 rho * (-1)) * (rho 37557 + rho 37558) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX249 rho = seg34AccX248 rho - Bool.toZMod bit * (seg34AccX248 rho - rho 37564) := by
      have hd : rho 37566 = Bool.toZMod bit * (rho 37564 - seg34AccX248 rho) := by
        rw [← hbit, seg34LadderFlatX248_eq]
        unfold seg34LadderFlatX248
        linear_combination -r6294
      unfold seg34AccX249
      linear_combination hd
    have hsely : seg34AccY249 rho = seg34AccY248 rho - Bool.toZMod bit * (seg34AccY248 rho - rho 37565) := by
      have hd : rho 37567 = Bool.toZMod bit * (rho 37565 - seg34AccY248 rho) := by
        rw [← hbit, seg34LadderFlatY248_eq]
        unfold seg34LadderFlatY248
        linear_combination -r6295
      unfold seg34AccY249
      linear_combination hd
    have hd0 : rho 37557 * rho 37558 = rho 37568 := by linear_combination r6296
    have hd1 : rho 37557 * rho 37557 = rho 37569 := by linear_combination r6297
    have hd2 : rho 37558 * rho 37558 = rho 37570 := by linear_combination r6298
    have hd3 : rho 37571 * (rho 37558 * rho 37558 + rho 37557 * rho 37557 * (-1)) = 2 * (rho 37557 * rho 37558) := by
      rw [hd0, hd1, hd2]
      linear_combination r6299
    have hd4 : rho 37572 * (2 - (rho 37558 * rho 37558 + rho 37557 * rho 37557 * (-1))) = rho 37558 * rho 37558 - rho 37557 * rho 37557 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6300
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
      ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩
      ⟨(rho 37564 : Seg34.F), (rho 37565 : Seg34.F)⟩
      ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
      ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung248

theorem seg34_rung249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34241 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
        ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩
        ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
        ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, _, _, _, _, _⟩
  unfold Seg34.relationRow6301 Seg34.relationLc1280 Seg34.relationLc1280Part0 Seg34.relationLc1280Part1 Seg34.relationLc1280Part2 Seg34.relationLc1280Part3 Seg34.relationLc1280Part4 Seg34.relationLc1280Part5 Seg34.relationLc1280Part6 Seg34.relationLc1280Part7 Seg34.relationLc1280Part8 Seg34.relationLc1280Part9 Seg34.relationLc1280Part10 Seg34.relationLc1280Part11 Seg34.relationLc1280Part12 Seg34.relationLc1280Part13 Seg34.relationLc1280Part14 Seg34.relationLc1280Part15 at r6301
  unfold Seg34.relationRow6302 at r6302
  unfold Seg34.relationRow6303 Seg34.relationLc1281 Seg34.relationLc1281Part0 Seg34.relationLc1281Part1 Seg34.relationLc1281Part2 Seg34.relationLc1281Part3 Seg34.relationLc1281Part4 Seg34.relationLc1281Part5 Seg34.relationLc1281Part6 Seg34.relationLc1281Part7 at r6303
  unfold Seg34.relationRow6304 Seg34.relationLc1282 Seg34.relationLc1282Part0 Seg34.relationLc1282Part1 Seg34.relationLc1282Part2 Seg34.relationLc1282Part3 Seg34.relationLc1282Part4 Seg34.relationLc1282Part5 Seg34.relationLc1282Part6 Seg34.relationLc1282Part7 at r6304
  unfold Seg34.relationRow6305 at r6305
  unfold Seg34.relationRow6306 at r6306
  unfold Seg34.relationRow6307 at r6307
  unfold Seg34.relationRow6308 Seg34.relationLc1283 Seg34.relationLc1283Part0 Seg34.relationLc1283Part1 Seg34.relationLc1283Part2 Seg34.relationLc1283Part3 Seg34.relationLc1283Part4 Seg34.relationLc1283Part5 Seg34.relationLc1283Part6 Seg34.relationLc1283Part7 at r6308
  unfold Seg34.relationRow6309 Seg34.relationLc1284 Seg34.relationLc1284Part0 Seg34.relationLc1284Part1 Seg34.relationLc1284Part2 Seg34.relationLc1284Part3 Seg34.relationLc1284Part4 Seg34.relationLc1284Part5 Seg34.relationLc1284Part6 Seg34.relationLc1284Part7 at r6309
  unfold Seg34.relationRow6310 at r6310
  unfold Seg34.relationRow6311 at r6311
  unfold Seg34.relationRow6312 at r6312
  unfold Seg34.relationRow6313 at r6313
  unfold Seg34.relationRow6314 at r6314
  have hrung249 (bit : Bool) (hbit : rho 34241 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
        ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩
        ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
        ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩ := by
    have hsum : seg34AccX249 rho + seg34AccY249 rho = rho 37573 := by
      rw [seg34LadderFlatX249_eq, seg34LadderFlatY249_eq]
      unfold seg34LadderFlatX249 seg34LadderFlatY249
      linear_combination r6301
    have ha0 : (rho 37571 + rho 37572) * (seg34AccX249 rho + seg34AccY249 rho) = rho 37574 := by
      rw [hsum]
      linear_combination r6302
    have ha1 : rho 37572 * seg34AccX249 rho = rho 37575 := by
      rw [seg34LadderFlatX249_eq]
      unfold seg34LadderFlatX249
      linear_combination r6303
    have ha2 : rho 37571 * seg34AccY249 rho = rho 37576 := by
      rw [seg34LadderFlatY249_eq]
      unfold seg34LadderFlatY249
      linear_combination r6304
    have ha3 : 3021 * rho 37575 * rho 37576 = rho 37577 := by
      linear_combination r6305
    have ha4 : rho 37578 * (1 + rho 37577) = rho 37575 + rho 37576 := by
      linear_combination r6306
    have ha5 : rho 37579 * (1 - rho 37577) = rho 37574 - rho 37575 - rho 37576 := by
      linear_combination r6307
    have haddx :
        rho 37578 * (1 + 3021 * (rho 37572 * seg34AccX249 rho) * (rho 37571 * seg34AccY249 rho)) =
          rho 37572 * seg34AccX249 rho + rho 37571 * seg34AccY249 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37579 * (1 - 3021 * (rho 37572 * seg34AccX249 rho) * (rho 37571 * seg34AccY249 rho)) =
          (-1) * (rho 37572 * seg34AccX249 rho) - rho 37571 * seg34AccY249 rho +
            (seg34AccY249 rho - seg34AccX249 rho * (-1)) * (rho 37571 + rho 37572) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37579 * (1 - rho 37577) = rho 37574 - rho 37575 - rho 37576 := ha5
        _ = (-1) * rho 37575 - rho 37576 + (seg34AccY249 rho - seg34AccX249 rho * (-1)) * (rho 37571 + rho 37572) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX250 rho = seg34AccX249 rho - Bool.toZMod bit * (seg34AccX249 rho - rho 37578) := by
      have hd : rho 37580 = Bool.toZMod bit * (rho 37578 - seg34AccX249 rho) := by
        rw [← hbit, seg34LadderFlatX249_eq]
        unfold seg34LadderFlatX249
        linear_combination -r6308
      unfold seg34AccX250
      linear_combination hd
    have hsely : seg34AccY250 rho = seg34AccY249 rho - Bool.toZMod bit * (seg34AccY249 rho - rho 37579) := by
      have hd : rho 37581 = Bool.toZMod bit * (rho 37579 - seg34AccY249 rho) := by
        rw [← hbit, seg34LadderFlatY249_eq]
        unfold seg34LadderFlatY249
        linear_combination -r6309
      unfold seg34AccY250
      linear_combination hd
    have hd0 : rho 37571 * rho 37572 = rho 37582 := by linear_combination r6310
    have hd1 : rho 37571 * rho 37571 = rho 37583 := by linear_combination r6311
    have hd2 : rho 37572 * rho 37572 = rho 37584 := by linear_combination r6312
    have hd3 : rho 37585 * (rho 37572 * rho 37572 + rho 37571 * rho 37571 * (-1)) = 2 * (rho 37571 * rho 37572) := by
      rw [hd0, hd1, hd2]
      linear_combination r6313
    have hd4 : rho 37586 * (2 - (rho 37572 * rho 37572 + rho 37571 * rho 37571 * (-1))) = rho 37572 * rho 37572 - rho 37571 * rho 37571 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6314
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
      ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩
      ⟨(rho 37578 : Seg34.F), (rho 37579 : Seg34.F)⟩
      ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
      ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung249

theorem seg34_rung250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34242 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
        ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩
        ⟨(seg34AccX251 rho : Seg34.F), (seg34AccY251 rho : Seg34.F)⟩
        ⟨(rho 37599 : Seg34.F), (rho 37600 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, p79
  ⟩
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg34.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩
  unfold Seg34.relationRow6315 Seg34.relationLc1285 Seg34.relationLc1285Part0 Seg34.relationLc1285Part1 Seg34.relationLc1285Part2 Seg34.relationLc1285Part3 Seg34.relationLc1285Part4 Seg34.relationLc1285Part5 Seg34.relationLc1285Part6 Seg34.relationLc1285Part7 Seg34.relationLc1285Part8 Seg34.relationLc1285Part9 Seg34.relationLc1285Part10 Seg34.relationLc1285Part11 Seg34.relationLc1285Part12 Seg34.relationLc1285Part13 Seg34.relationLc1285Part14 Seg34.relationLc1285Part15 at r6315
  unfold Seg34.relationRow6316 at r6316
  unfold Seg34.relationRow6317 Seg34.relationLc1286 Seg34.relationLc1286Part0 Seg34.relationLc1286Part1 Seg34.relationLc1286Part2 Seg34.relationLc1286Part3 Seg34.relationLc1286Part4 Seg34.relationLc1286Part5 Seg34.relationLc1286Part6 Seg34.relationLc1286Part7 at r6317
  unfold Seg34.relationRow6318 Seg34.relationLc1287 Seg34.relationLc1287Part0 Seg34.relationLc1287Part1 Seg34.relationLc1287Part2 Seg34.relationLc1287Part3 Seg34.relationLc1287Part4 Seg34.relationLc1287Part5 Seg34.relationLc1287Part6 Seg34.relationLc1287Part7 at r6318
  unfold Seg34.relationRow6319 at r6319
  unfold Seg34.relationRow6320 at r6320
  unfold Seg34.relationRow6321 at r6321
  unfold Seg34.relationRow6322 Seg34.relationLc1288 Seg34.relationLc1288Part0 Seg34.relationLc1288Part1 Seg34.relationLc1288Part2 Seg34.relationLc1288Part3 Seg34.relationLc1288Part4 Seg34.relationLc1288Part5 Seg34.relationLc1288Part6 Seg34.relationLc1288Part7 at r6322
  unfold Seg34.relationRow6323 Seg34.relationLc1289 Seg34.relationLc1289Part0 Seg34.relationLc1289Part1 Seg34.relationLc1289Part2 Seg34.relationLc1289Part3 Seg34.relationLc1289Part4 Seg34.relationLc1289Part5 Seg34.relationLc1289Part6 Seg34.relationLc1289Part7 at r6323
  unfold Seg34.relationRow6324 at r6324
  unfold Seg34.relationRow6325 at r6325
  unfold Seg34.relationRow6326 at r6326
  unfold Seg34.relationRow6327 at r6327
  unfold Seg34.relationRow6328 at r6328
  have hrung250 (bit : Bool) (hbit : rho 34242 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
        ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩
        ⟨(seg34AccX251 rho : Seg34.F), (seg34AccY251 rho : Seg34.F)⟩
        ⟨(rho 37599 : Seg34.F), (rho 37600 : Seg34.F)⟩ := by
    have hsum : seg34AccX250 rho + seg34AccY250 rho = rho 37587 := by
      rw [seg34LadderFlatX250_eq, seg34LadderFlatY250_eq]
      unfold seg34LadderFlatX250 seg34LadderFlatY250
      linear_combination r6315
    have ha0 : (rho 37585 + rho 37586) * (seg34AccX250 rho + seg34AccY250 rho) = rho 37588 := by
      rw [hsum]
      linear_combination r6316
    have ha1 : rho 37586 * seg34AccX250 rho = rho 37589 := by
      rw [seg34LadderFlatX250_eq]
      unfold seg34LadderFlatX250
      linear_combination r6317
    have ha2 : rho 37585 * seg34AccY250 rho = rho 37590 := by
      rw [seg34LadderFlatY250_eq]
      unfold seg34LadderFlatY250
      linear_combination r6318
    have ha3 : 3021 * rho 37589 * rho 37590 = rho 37591 := by
      linear_combination r6319
    have ha4 : rho 37592 * (1 + rho 37591) = rho 37589 + rho 37590 := by
      linear_combination r6320
    have ha5 : rho 37593 * (1 - rho 37591) = rho 37588 - rho 37589 - rho 37590 := by
      linear_combination r6321
    have haddx :
        rho 37592 * (1 + 3021 * (rho 37586 * seg34AccX250 rho) * (rho 37585 * seg34AccY250 rho)) =
          rho 37586 * seg34AccX250 rho + rho 37585 * seg34AccY250 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37593 * (1 - 3021 * (rho 37586 * seg34AccX250 rho) * (rho 37585 * seg34AccY250 rho)) =
          (-1) * (rho 37586 * seg34AccX250 rho) - rho 37585 * seg34AccY250 rho +
            (seg34AccY250 rho - seg34AccX250 rho * (-1)) * (rho 37585 + rho 37586) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37593 * (1 - rho 37591) = rho 37588 - rho 37589 - rho 37590 := ha5
        _ = (-1) * rho 37589 - rho 37590 + (seg34AccY250 rho - seg34AccX250 rho * (-1)) * (rho 37585 + rho 37586) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX251 rho = seg34AccX250 rho - Bool.toZMod bit * (seg34AccX250 rho - rho 37592) := by
      have hd : rho 37594 = Bool.toZMod bit * (rho 37592 - seg34AccX250 rho) := by
        rw [← hbit, seg34LadderFlatX250_eq]
        unfold seg34LadderFlatX250
        linear_combination -r6322
      unfold seg34AccX251
      linear_combination hd
    have hsely : seg34AccY251 rho = seg34AccY250 rho - Bool.toZMod bit * (seg34AccY250 rho - rho 37593) := by
      have hd : rho 37595 = Bool.toZMod bit * (rho 37593 - seg34AccY250 rho) := by
        rw [← hbit, seg34LadderFlatY250_eq]
        unfold seg34LadderFlatY250
        linear_combination -r6323
      unfold seg34AccY251
      linear_combination hd
    have hd0 : rho 37585 * rho 37586 = rho 37596 := by linear_combination r6324
    have hd1 : rho 37585 * rho 37585 = rho 37597 := by linear_combination r6325
    have hd2 : rho 37586 * rho 37586 = rho 37598 := by linear_combination r6326
    have hd3 : rho 37599 * (rho 37586 * rho 37586 + rho 37585 * rho 37585 * (-1)) = 2 * (rho 37585 * rho 37586) := by
      rw [hd0, hd1, hd2]
      linear_combination r6327
    have hd4 : rho 37600 * (2 - (rho 37586 * rho 37586 + rho 37585 * rho 37585 * (-1))) = rho 37586 * rho 37586 - rho 37585 * rho 37585 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
      ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩
      ⟨(rho 37592 : Seg34.F), (rho 37593 : Seg34.F)⟩
      ⟨(seg34AccX251 rho : Seg34.F), (seg34AccY251 rho : Seg34.F)⟩
      ⟨(rho 37599 : Seg34.F), (rho 37600 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung250

theorem seg34_hstep_c7 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 224 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc hcur
  · exact seg34_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc hcur
  · exact seg34_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc hcur
  · exact seg34_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc hcur
  · exact seg34_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc hcur
  · exact seg34_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc hcur
  · exact seg34_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc hcur
  · exact seg34_rung231 rho h bits[231]! (hbitAt 231 (by omega)) hacc hcur
  · exact seg34_rung232 rho h bits[232]! (hbitAt 232 (by omega)) hacc hcur
  · exact seg34_rung233 rho h bits[233]! (hbitAt 233 (by omega)) hacc hcur
  · exact seg34_rung234 rho h bits[234]! (hbitAt 234 (by omega)) hacc hcur
  · exact seg34_rung235 rho h bits[235]! (hbitAt 235 (by omega)) hacc hcur
  · exact seg34_rung236 rho h bits[236]! (hbitAt 236 (by omega)) hacc hcur
  · exact seg34_rung237 rho h bits[237]! (hbitAt 237 (by omega)) hacc hcur
  · exact seg34_rung238 rho h bits[238]! (hbitAt 238 (by omega)) hacc hcur
  · exact seg34_rung239 rho h bits[239]! (hbitAt 239 (by omega)) hacc hcur
  · exact seg34_rung240 rho h bits[240]! (hbitAt 240 (by omega)) hacc hcur
  · exact seg34_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc hcur
  · exact seg34_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc hcur
  · exact seg34_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc hcur
  · exact seg34_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc hcur
  · exact seg34_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc hcur
  · exact seg34_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc hcur
  · exact seg34_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc hcur
  · exact seg34_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc hcur
  · exact seg34_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc hcur
  · exact seg34_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

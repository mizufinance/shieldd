import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rung224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41172 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
        ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩
        ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
        ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5951 Seg45.relationLc1155 Seg45.relationLc1155Part0 Seg45.relationLc1155Part1 Seg45.relationLc1155Part2 Seg45.relationLc1155Part3 Seg45.relationLc1155Part4 Seg45.relationLc1155Part5 Seg45.relationLc1155Part6 Seg45.relationLc1155Part7 Seg45.relationLc1155Part8 Seg45.relationLc1155Part9 Seg45.relationLc1155Part10 Seg45.relationLc1155Part11 Seg45.relationLc1155Part12 Seg45.relationLc1155Part13 Seg45.relationLc1155Part14 at r5951
  unfold Seg45.relationRow5952 at r5952
  unfold Seg45.relationRow5953 Seg45.relationLc1156 Seg45.relationLc1156Part0 Seg45.relationLc1156Part1 Seg45.relationLc1156Part2 Seg45.relationLc1156Part3 Seg45.relationLc1156Part4 Seg45.relationLc1156Part5 Seg45.relationLc1156Part6 at r5953
  unfold Seg45.relationRow5954 Seg45.relationLc1157 Seg45.relationLc1157Part0 Seg45.relationLc1157Part1 Seg45.relationLc1157Part2 Seg45.relationLc1157Part3 Seg45.relationLc1157Part4 Seg45.relationLc1157Part5 Seg45.relationLc1157Part6 Seg45.relationLc1157Part7 at r5954
  unfold Seg45.relationRow5955 at r5955
  unfold Seg45.relationRow5956 at r5956
  unfold Seg45.relationRow5957 at r5957
  unfold Seg45.relationRow5958 Seg45.relationLc1158 Seg45.relationLc1158Part0 Seg45.relationLc1158Part1 Seg45.relationLc1158Part2 Seg45.relationLc1158Part3 Seg45.relationLc1158Part4 Seg45.relationLc1158Part5 Seg45.relationLc1158Part6 Seg45.relationLc1158Part7 at r5958
  unfold Seg45.relationRow5959 Seg45.relationLc1159 Seg45.relationLc1159Part0 Seg45.relationLc1159Part1 Seg45.relationLc1159Part2 Seg45.relationLc1159Part3 Seg45.relationLc1159Part4 Seg45.relationLc1159Part5 Seg45.relationLc1159Part6 Seg45.relationLc1159Part7 at r5959
  unfold Seg45.relationRow5960 at r5960
  unfold Seg45.relationRow5961 at r5961
  unfold Seg45.relationRow5962 at r5962
  unfold Seg45.relationRow5963 at r5963
  unfold Seg45.relationRow5964 at r5964
  have hrung224 (bit : Bool) (hbit : rho 41172 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
        ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩
        ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
        ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩ := by
    have hsum : seg45AccX224 rho + seg45AccY224 rho = rho 44179 := by
      rw [seg45LadderFlatX224_eq, seg45LadderFlatY224_eq]
      unfold seg45LadderFlatX224 seg45LadderFlatY224
      linear_combination r5951
    have ha0 : (rho 44177 + rho 44178) * (seg45AccX224 rho + seg45AccY224 rho) = rho 44180 := by
      rw [hsum]
      linear_combination r5952
    have ha1 : rho 44178 * seg45AccX224 rho = rho 44181 := by
      rw [seg45LadderFlatX224_eq]
      unfold seg45LadderFlatX224
      linear_combination r5953
    have ha2 : rho 44177 * seg45AccY224 rho = rho 44182 := by
      rw [seg45LadderFlatY224_eq]
      unfold seg45LadderFlatY224
      linear_combination r5954
    have ha3 : 3021 * rho 44181 * rho 44182 = rho 44183 := by
      linear_combination r5955
    have ha4 : rho 44184 * (1 + rho 44183) = rho 44181 + rho 44182 := by
      linear_combination r5956
    have ha5 : rho 44185 * (1 - rho 44183) = rho 44180 - rho 44181 - rho 44182 := by
      linear_combination r5957
    have haddx :
        rho 44184 * (1 + 3021 * (rho 44178 * seg45AccX224 rho) * (rho 44177 * seg45AccY224 rho)) =
          rho 44178 * seg45AccX224 rho + rho 44177 * seg45AccY224 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44185 * (1 - 3021 * (rho 44178 * seg45AccX224 rho) * (rho 44177 * seg45AccY224 rho)) =
          (-1) * (rho 44178 * seg45AccX224 rho) - rho 44177 * seg45AccY224 rho +
            (seg45AccY224 rho - seg45AccX224 rho * (-1)) * (rho 44177 + rho 44178) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44185 * (1 - rho 44183) = rho 44180 - rho 44181 - rho 44182 := ha5
        _ = (-1) * rho 44181 - rho 44182 + (seg45AccY224 rho - seg45AccX224 rho * (-1)) * (rho 44177 + rho 44178) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX225 rho = seg45AccX224 rho - Bool.toZMod bit * (seg45AccX224 rho - rho 44184) := by
      have hd : rho 44186 = Bool.toZMod bit * (rho 44184 - seg45AccX224 rho) := by
        rw [← hbit, seg45LadderFlatX224_eq]
        unfold seg45LadderFlatX224
        linear_combination -r5958
      unfold seg45AccX225
      linear_combination hd
    have hsely : seg45AccY225 rho = seg45AccY224 rho - Bool.toZMod bit * (seg45AccY224 rho - rho 44185) := by
      have hd : rho 44187 = Bool.toZMod bit * (rho 44185 - seg45AccY224 rho) := by
        rw [← hbit, seg45LadderFlatY224_eq]
        unfold seg45LadderFlatY224
        linear_combination -r5959
      unfold seg45AccY225
      linear_combination hd
    have hd0 : rho 44177 * rho 44178 = rho 44188 := by linear_combination r5960
    have hd1 : rho 44177 * rho 44177 = rho 44189 := by linear_combination r5961
    have hd2 : rho 44178 * rho 44178 = rho 44190 := by linear_combination r5962
    have hd3 : rho 44191 * (rho 44178 * rho 44178 + rho 44177 * rho 44177 * (-1)) = 2 * (rho 44177 * rho 44178) := by
      rw [hd0, hd1, hd2]
      linear_combination r5963
    have hd4 : rho 44192 * (2 - (rho 44178 * rho 44178 + rho 44177 * rho 44177 * (-1))) = rho 44178 * rho 44178 - rho 44177 * rho 44177 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5964
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX224 rho : Seg45.F), (seg45AccY224 rho : Seg45.F)⟩
      ⟨(rho 44177 : Seg45.F), (rho 44178 : Seg45.F)⟩
      ⟨(rho 44184 : Seg45.F), (rho 44185 : Seg45.F)⟩
      ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
      ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung224

theorem seg45_rung225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41173 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
        ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩
        ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
        ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5965 Seg45.relationLc1160 Seg45.relationLc1160Part0 Seg45.relationLc1160Part1 Seg45.relationLc1160Part2 Seg45.relationLc1160Part3 Seg45.relationLc1160Part4 Seg45.relationLc1160Part5 Seg45.relationLc1160Part6 Seg45.relationLc1160Part7 Seg45.relationLc1160Part8 Seg45.relationLc1160Part9 Seg45.relationLc1160Part10 Seg45.relationLc1160Part11 Seg45.relationLc1160Part12 Seg45.relationLc1160Part13 Seg45.relationLc1160Part14 at r5965
  unfold Seg45.relationRow5966 at r5966
  unfold Seg45.relationRow5967 Seg45.relationLc1161 Seg45.relationLc1161Part0 Seg45.relationLc1161Part1 Seg45.relationLc1161Part2 Seg45.relationLc1161Part3 Seg45.relationLc1161Part4 Seg45.relationLc1161Part5 Seg45.relationLc1161Part6 Seg45.relationLc1161Part7 at r5967
  unfold Seg45.relationRow5968 Seg45.relationLc1162 Seg45.relationLc1162Part0 Seg45.relationLc1162Part1 Seg45.relationLc1162Part2 Seg45.relationLc1162Part3 Seg45.relationLc1162Part4 Seg45.relationLc1162Part5 Seg45.relationLc1162Part6 Seg45.relationLc1162Part7 at r5968
  unfold Seg45.relationRow5969 at r5969
  unfold Seg45.relationRow5970 at r5970
  unfold Seg45.relationRow5971 at r5971
  unfold Seg45.relationRow5972 Seg45.relationLc1163 Seg45.relationLc1163Part0 Seg45.relationLc1163Part1 Seg45.relationLc1163Part2 Seg45.relationLc1163Part3 Seg45.relationLc1163Part4 Seg45.relationLc1163Part5 Seg45.relationLc1163Part6 Seg45.relationLc1163Part7 at r5972
  unfold Seg45.relationRow5973 Seg45.relationLc1164 Seg45.relationLc1164Part0 Seg45.relationLc1164Part1 Seg45.relationLc1164Part2 Seg45.relationLc1164Part3 Seg45.relationLc1164Part4 Seg45.relationLc1164Part5 Seg45.relationLc1164Part6 Seg45.relationLc1164Part7 at r5973
  unfold Seg45.relationRow5974 at r5974
  unfold Seg45.relationRow5975 at r5975
  unfold Seg45.relationRow5976 at r5976
  unfold Seg45.relationRow5977 at r5977
  unfold Seg45.relationRow5978 at r5978
  have hrung225 (bit : Bool) (hbit : rho 41173 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
        ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩
        ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
        ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩ := by
    have hsum : seg45AccX225 rho + seg45AccY225 rho = rho 44193 := by
      rw [seg45LadderFlatX225_eq, seg45LadderFlatY225_eq]
      unfold seg45LadderFlatX225 seg45LadderFlatY225
      linear_combination r5965
    have ha0 : (rho 44191 + rho 44192) * (seg45AccX225 rho + seg45AccY225 rho) = rho 44194 := by
      rw [hsum]
      linear_combination r5966
    have ha1 : rho 44192 * seg45AccX225 rho = rho 44195 := by
      rw [seg45LadderFlatX225_eq]
      unfold seg45LadderFlatX225
      linear_combination r5967
    have ha2 : rho 44191 * seg45AccY225 rho = rho 44196 := by
      rw [seg45LadderFlatY225_eq]
      unfold seg45LadderFlatY225
      linear_combination r5968
    have ha3 : 3021 * rho 44195 * rho 44196 = rho 44197 := by
      linear_combination r5969
    have ha4 : rho 44198 * (1 + rho 44197) = rho 44195 + rho 44196 := by
      linear_combination r5970
    have ha5 : rho 44199 * (1 - rho 44197) = rho 44194 - rho 44195 - rho 44196 := by
      linear_combination r5971
    have haddx :
        rho 44198 * (1 + 3021 * (rho 44192 * seg45AccX225 rho) * (rho 44191 * seg45AccY225 rho)) =
          rho 44192 * seg45AccX225 rho + rho 44191 * seg45AccY225 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44199 * (1 - 3021 * (rho 44192 * seg45AccX225 rho) * (rho 44191 * seg45AccY225 rho)) =
          (-1) * (rho 44192 * seg45AccX225 rho) - rho 44191 * seg45AccY225 rho +
            (seg45AccY225 rho - seg45AccX225 rho * (-1)) * (rho 44191 + rho 44192) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44199 * (1 - rho 44197) = rho 44194 - rho 44195 - rho 44196 := ha5
        _ = (-1) * rho 44195 - rho 44196 + (seg45AccY225 rho - seg45AccX225 rho * (-1)) * (rho 44191 + rho 44192) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX226 rho = seg45AccX225 rho - Bool.toZMod bit * (seg45AccX225 rho - rho 44198) := by
      have hd : rho 44200 = Bool.toZMod bit * (rho 44198 - seg45AccX225 rho) := by
        rw [← hbit, seg45LadderFlatX225_eq]
        unfold seg45LadderFlatX225
        linear_combination -r5972
      unfold seg45AccX226
      linear_combination hd
    have hsely : seg45AccY226 rho = seg45AccY225 rho - Bool.toZMod bit * (seg45AccY225 rho - rho 44199) := by
      have hd : rho 44201 = Bool.toZMod bit * (rho 44199 - seg45AccY225 rho) := by
        rw [← hbit, seg45LadderFlatY225_eq]
        unfold seg45LadderFlatY225
        linear_combination -r5973
      unfold seg45AccY226
      linear_combination hd
    have hd0 : rho 44191 * rho 44192 = rho 44202 := by linear_combination r5974
    have hd1 : rho 44191 * rho 44191 = rho 44203 := by linear_combination r5975
    have hd2 : rho 44192 * rho 44192 = rho 44204 := by linear_combination r5976
    have hd3 : rho 44205 * (rho 44192 * rho 44192 + rho 44191 * rho 44191 * (-1)) = 2 * (rho 44191 * rho 44192) := by
      rw [hd0, hd1, hd2]
      linear_combination r5977
    have hd4 : rho 44206 * (2 - (rho 44192 * rho 44192 + rho 44191 * rho 44191 * (-1))) = rho 44192 * rho 44192 - rho 44191 * rho 44191 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX225 rho : Seg45.F), (seg45AccY225 rho : Seg45.F)⟩
      ⟨(rho 44191 : Seg45.F), (rho 44192 : Seg45.F)⟩
      ⟨(rho 44198 : Seg45.F), (rho 44199 : Seg45.F)⟩
      ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
      ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung225

theorem seg45_rung226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41174 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
        ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩
        ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
        ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5979 Seg45.relationLc1165 Seg45.relationLc1165Part0 Seg45.relationLc1165Part1 Seg45.relationLc1165Part2 Seg45.relationLc1165Part3 Seg45.relationLc1165Part4 Seg45.relationLc1165Part5 Seg45.relationLc1165Part6 Seg45.relationLc1165Part7 Seg45.relationLc1165Part8 Seg45.relationLc1165Part9 Seg45.relationLc1165Part10 Seg45.relationLc1165Part11 Seg45.relationLc1165Part12 Seg45.relationLc1165Part13 Seg45.relationLc1165Part14 at r5979
  unfold Seg45.relationRow5980 at r5980
  unfold Seg45.relationRow5981 Seg45.relationLc1166 Seg45.relationLc1166Part0 Seg45.relationLc1166Part1 Seg45.relationLc1166Part2 Seg45.relationLc1166Part3 Seg45.relationLc1166Part4 Seg45.relationLc1166Part5 Seg45.relationLc1166Part6 Seg45.relationLc1166Part7 at r5981
  unfold Seg45.relationRow5982 Seg45.relationLc1167 Seg45.relationLc1167Part0 Seg45.relationLc1167Part1 Seg45.relationLc1167Part2 Seg45.relationLc1167Part3 Seg45.relationLc1167Part4 Seg45.relationLc1167Part5 Seg45.relationLc1167Part6 Seg45.relationLc1167Part7 at r5982
  unfold Seg45.relationRow5983 at r5983
  unfold Seg45.relationRow5984 at r5984
  unfold Seg45.relationRow5985 at r5985
  unfold Seg45.relationRow5986 Seg45.relationLc1168 Seg45.relationLc1168Part0 Seg45.relationLc1168Part1 Seg45.relationLc1168Part2 Seg45.relationLc1168Part3 Seg45.relationLc1168Part4 Seg45.relationLc1168Part5 Seg45.relationLc1168Part6 Seg45.relationLc1168Part7 at r5986
  unfold Seg45.relationRow5987 Seg45.relationLc1169 Seg45.relationLc1169Part0 Seg45.relationLc1169Part1 Seg45.relationLc1169Part2 Seg45.relationLc1169Part3 Seg45.relationLc1169Part4 Seg45.relationLc1169Part5 Seg45.relationLc1169Part6 Seg45.relationLc1169Part7 at r5987
  unfold Seg45.relationRow5988 at r5988
  unfold Seg45.relationRow5989 at r5989
  unfold Seg45.relationRow5990 at r5990
  unfold Seg45.relationRow5991 at r5991
  unfold Seg45.relationRow5992 at r5992
  have hrung226 (bit : Bool) (hbit : rho 41174 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
        ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩
        ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
        ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩ := by
    have hsum : seg45AccX226 rho + seg45AccY226 rho = rho 44207 := by
      rw [seg45LadderFlatX226_eq, seg45LadderFlatY226_eq]
      unfold seg45LadderFlatX226 seg45LadderFlatY226
      linear_combination r5979
    have ha0 : (rho 44205 + rho 44206) * (seg45AccX226 rho + seg45AccY226 rho) = rho 44208 := by
      rw [hsum]
      linear_combination r5980
    have ha1 : rho 44206 * seg45AccX226 rho = rho 44209 := by
      rw [seg45LadderFlatX226_eq]
      unfold seg45LadderFlatX226
      linear_combination r5981
    have ha2 : rho 44205 * seg45AccY226 rho = rho 44210 := by
      rw [seg45LadderFlatY226_eq]
      unfold seg45LadderFlatY226
      linear_combination r5982
    have ha3 : 3021 * rho 44209 * rho 44210 = rho 44211 := by
      linear_combination r5983
    have ha4 : rho 44212 * (1 + rho 44211) = rho 44209 + rho 44210 := by
      linear_combination r5984
    have ha5 : rho 44213 * (1 - rho 44211) = rho 44208 - rho 44209 - rho 44210 := by
      linear_combination r5985
    have haddx :
        rho 44212 * (1 + 3021 * (rho 44206 * seg45AccX226 rho) * (rho 44205 * seg45AccY226 rho)) =
          rho 44206 * seg45AccX226 rho + rho 44205 * seg45AccY226 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44213 * (1 - 3021 * (rho 44206 * seg45AccX226 rho) * (rho 44205 * seg45AccY226 rho)) =
          (-1) * (rho 44206 * seg45AccX226 rho) - rho 44205 * seg45AccY226 rho +
            (seg45AccY226 rho - seg45AccX226 rho * (-1)) * (rho 44205 + rho 44206) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44213 * (1 - rho 44211) = rho 44208 - rho 44209 - rho 44210 := ha5
        _ = (-1) * rho 44209 - rho 44210 + (seg45AccY226 rho - seg45AccX226 rho * (-1)) * (rho 44205 + rho 44206) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX227 rho = seg45AccX226 rho - Bool.toZMod bit * (seg45AccX226 rho - rho 44212) := by
      have hd : rho 44214 = Bool.toZMod bit * (rho 44212 - seg45AccX226 rho) := by
        rw [← hbit, seg45LadderFlatX226_eq]
        unfold seg45LadderFlatX226
        linear_combination -r5986
      unfold seg45AccX227
      linear_combination hd
    have hsely : seg45AccY227 rho = seg45AccY226 rho - Bool.toZMod bit * (seg45AccY226 rho - rho 44213) := by
      have hd : rho 44215 = Bool.toZMod bit * (rho 44213 - seg45AccY226 rho) := by
        rw [← hbit, seg45LadderFlatY226_eq]
        unfold seg45LadderFlatY226
        linear_combination -r5987
      unfold seg45AccY227
      linear_combination hd
    have hd0 : rho 44205 * rho 44206 = rho 44216 := by linear_combination r5988
    have hd1 : rho 44205 * rho 44205 = rho 44217 := by linear_combination r5989
    have hd2 : rho 44206 * rho 44206 = rho 44218 := by linear_combination r5990
    have hd3 : rho 44219 * (rho 44206 * rho 44206 + rho 44205 * rho 44205 * (-1)) = 2 * (rho 44205 * rho 44206) := by
      rw [hd0, hd1, hd2]
      linear_combination r5991
    have hd4 : rho 44220 * (2 - (rho 44206 * rho 44206 + rho 44205 * rho 44205 * (-1))) = rho 44206 * rho 44206 - rho 44205 * rho 44205 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5992
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX226 rho : Seg45.F), (seg45AccY226 rho : Seg45.F)⟩
      ⟨(rho 44205 : Seg45.F), (rho 44206 : Seg45.F)⟩
      ⟨(rho 44212 : Seg45.F), (rho 44213 : Seg45.F)⟩
      ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
      ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung226

theorem seg45_rung227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41175 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
        ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩
        ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
        ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow5993 Seg45.relationLc1170 Seg45.relationLc1170Part0 Seg45.relationLc1170Part1 Seg45.relationLc1170Part2 Seg45.relationLc1170Part3 Seg45.relationLc1170Part4 Seg45.relationLc1170Part5 Seg45.relationLc1170Part6 Seg45.relationLc1170Part7 Seg45.relationLc1170Part8 Seg45.relationLc1170Part9 Seg45.relationLc1170Part10 Seg45.relationLc1170Part11 Seg45.relationLc1170Part12 Seg45.relationLc1170Part13 Seg45.relationLc1170Part14 at r5993
  unfold Seg45.relationRow5994 at r5994
  unfold Seg45.relationRow5995 Seg45.relationLc1171 Seg45.relationLc1171Part0 Seg45.relationLc1171Part1 Seg45.relationLc1171Part2 Seg45.relationLc1171Part3 Seg45.relationLc1171Part4 Seg45.relationLc1171Part5 Seg45.relationLc1171Part6 Seg45.relationLc1171Part7 at r5995
  unfold Seg45.relationRow5996 Seg45.relationLc1172 Seg45.relationLc1172Part0 Seg45.relationLc1172Part1 Seg45.relationLc1172Part2 Seg45.relationLc1172Part3 Seg45.relationLc1172Part4 Seg45.relationLc1172Part5 Seg45.relationLc1172Part6 Seg45.relationLc1172Part7 at r5996
  unfold Seg45.relationRow5997 at r5997
  unfold Seg45.relationRow5998 at r5998
  unfold Seg45.relationRow5999 at r5999
  unfold Seg45.relationRow6000 Seg45.relationLc1173 Seg45.relationLc1173Part0 Seg45.relationLc1173Part1 Seg45.relationLc1173Part2 Seg45.relationLc1173Part3 Seg45.relationLc1173Part4 Seg45.relationLc1173Part5 Seg45.relationLc1173Part6 Seg45.relationLc1173Part7 at r6000
  unfold Seg45.relationRow6001 Seg45.relationLc1174 Seg45.relationLc1174Part0 Seg45.relationLc1174Part1 Seg45.relationLc1174Part2 Seg45.relationLc1174Part3 Seg45.relationLc1174Part4 Seg45.relationLc1174Part5 Seg45.relationLc1174Part6 Seg45.relationLc1174Part7 at r6001
  unfold Seg45.relationRow6002 at r6002
  unfold Seg45.relationRow6003 at r6003
  unfold Seg45.relationRow6004 at r6004
  unfold Seg45.relationRow6005 at r6005
  unfold Seg45.relationRow6006 at r6006
  have hrung227 (bit : Bool) (hbit : rho 41175 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
        ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩
        ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
        ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩ := by
    have hsum : seg45AccX227 rho + seg45AccY227 rho = rho 44221 := by
      rw [seg45LadderFlatX227_eq, seg45LadderFlatY227_eq]
      unfold seg45LadderFlatX227 seg45LadderFlatY227
      linear_combination r5993
    have ha0 : (rho 44219 + rho 44220) * (seg45AccX227 rho + seg45AccY227 rho) = rho 44222 := by
      rw [hsum]
      linear_combination r5994
    have ha1 : rho 44220 * seg45AccX227 rho = rho 44223 := by
      rw [seg45LadderFlatX227_eq]
      unfold seg45LadderFlatX227
      linear_combination r5995
    have ha2 : rho 44219 * seg45AccY227 rho = rho 44224 := by
      rw [seg45LadderFlatY227_eq]
      unfold seg45LadderFlatY227
      linear_combination r5996
    have ha3 : 3021 * rho 44223 * rho 44224 = rho 44225 := by
      linear_combination r5997
    have ha4 : rho 44226 * (1 + rho 44225) = rho 44223 + rho 44224 := by
      linear_combination r5998
    have ha5 : rho 44227 * (1 - rho 44225) = rho 44222 - rho 44223 - rho 44224 := by
      linear_combination r5999
    have haddx :
        rho 44226 * (1 + 3021 * (rho 44220 * seg45AccX227 rho) * (rho 44219 * seg45AccY227 rho)) =
          rho 44220 * seg45AccX227 rho + rho 44219 * seg45AccY227 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44227 * (1 - 3021 * (rho 44220 * seg45AccX227 rho) * (rho 44219 * seg45AccY227 rho)) =
          (-1) * (rho 44220 * seg45AccX227 rho) - rho 44219 * seg45AccY227 rho +
            (seg45AccY227 rho - seg45AccX227 rho * (-1)) * (rho 44219 + rho 44220) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44227 * (1 - rho 44225) = rho 44222 - rho 44223 - rho 44224 := ha5
        _ = (-1) * rho 44223 - rho 44224 + (seg45AccY227 rho - seg45AccX227 rho * (-1)) * (rho 44219 + rho 44220) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX228 rho = seg45AccX227 rho - Bool.toZMod bit * (seg45AccX227 rho - rho 44226) := by
      have hd : rho 44228 = Bool.toZMod bit * (rho 44226 - seg45AccX227 rho) := by
        rw [← hbit, seg45LadderFlatX227_eq]
        unfold seg45LadderFlatX227
        linear_combination -r6000
      unfold seg45AccX228
      linear_combination hd
    have hsely : seg45AccY228 rho = seg45AccY227 rho - Bool.toZMod bit * (seg45AccY227 rho - rho 44227) := by
      have hd : rho 44229 = Bool.toZMod bit * (rho 44227 - seg45AccY227 rho) := by
        rw [← hbit, seg45LadderFlatY227_eq]
        unfold seg45LadderFlatY227
        linear_combination -r6001
      unfold seg45AccY228
      linear_combination hd
    have hd0 : rho 44219 * rho 44220 = rho 44230 := by linear_combination r6002
    have hd1 : rho 44219 * rho 44219 = rho 44231 := by linear_combination r6003
    have hd2 : rho 44220 * rho 44220 = rho 44232 := by linear_combination r6004
    have hd3 : rho 44233 * (rho 44220 * rho 44220 + rho 44219 * rho 44219 * (-1)) = 2 * (rho 44219 * rho 44220) := by
      rw [hd0, hd1, hd2]
      linear_combination r6005
    have hd4 : rho 44234 * (2 - (rho 44220 * rho 44220 + rho 44219 * rho 44219 * (-1))) = rho 44220 * rho 44220 - rho 44219 * rho 44219 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6006
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX227 rho : Seg45.F), (seg45AccY227 rho : Seg45.F)⟩
      ⟨(rho 44219 : Seg45.F), (rho 44220 : Seg45.F)⟩
      ⟨(rho 44226 : Seg45.F), (rho 44227 : Seg45.F)⟩
      ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
      ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung227

theorem seg45_rung228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41176 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
        ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩
        ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
        ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6007 Seg45.relationLc1175 Seg45.relationLc1175Part0 Seg45.relationLc1175Part1 Seg45.relationLc1175Part2 Seg45.relationLc1175Part3 Seg45.relationLc1175Part4 Seg45.relationLc1175Part5 Seg45.relationLc1175Part6 Seg45.relationLc1175Part7 Seg45.relationLc1175Part8 Seg45.relationLc1175Part9 Seg45.relationLc1175Part10 Seg45.relationLc1175Part11 Seg45.relationLc1175Part12 Seg45.relationLc1175Part13 Seg45.relationLc1175Part14 at r6007
  unfold Seg45.relationRow6008 at r6008
  unfold Seg45.relationRow6009 Seg45.relationLc1176 Seg45.relationLc1176Part0 Seg45.relationLc1176Part1 Seg45.relationLc1176Part2 Seg45.relationLc1176Part3 Seg45.relationLc1176Part4 Seg45.relationLc1176Part5 Seg45.relationLc1176Part6 Seg45.relationLc1176Part7 at r6009
  unfold Seg45.relationRow6010 Seg45.relationLc1177 Seg45.relationLc1177Part0 Seg45.relationLc1177Part1 Seg45.relationLc1177Part2 Seg45.relationLc1177Part3 Seg45.relationLc1177Part4 Seg45.relationLc1177Part5 Seg45.relationLc1177Part6 Seg45.relationLc1177Part7 at r6010
  unfold Seg45.relationRow6011 at r6011
  unfold Seg45.relationRow6012 at r6012
  unfold Seg45.relationRow6013 at r6013
  unfold Seg45.relationRow6014 Seg45.relationLc1178 Seg45.relationLc1178Part0 Seg45.relationLc1178Part1 Seg45.relationLc1178Part2 Seg45.relationLc1178Part3 Seg45.relationLc1178Part4 Seg45.relationLc1178Part5 Seg45.relationLc1178Part6 Seg45.relationLc1178Part7 at r6014
  unfold Seg45.relationRow6015 Seg45.relationLc1179 Seg45.relationLc1179Part0 Seg45.relationLc1179Part1 Seg45.relationLc1179Part2 Seg45.relationLc1179Part3 Seg45.relationLc1179Part4 Seg45.relationLc1179Part5 Seg45.relationLc1179Part6 Seg45.relationLc1179Part7 at r6015
  unfold Seg45.relationRow6016 at r6016
  unfold Seg45.relationRow6017 at r6017
  unfold Seg45.relationRow6018 at r6018
  unfold Seg45.relationRow6019 at r6019
  unfold Seg45.relationRow6020 at r6020
  have hrung228 (bit : Bool) (hbit : rho 41176 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
        ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩
        ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
        ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩ := by
    have hsum : seg45AccX228 rho + seg45AccY228 rho = rho 44235 := by
      rw [seg45LadderFlatX228_eq, seg45LadderFlatY228_eq]
      unfold seg45LadderFlatX228 seg45LadderFlatY228
      linear_combination r6007
    have ha0 : (rho 44233 + rho 44234) * (seg45AccX228 rho + seg45AccY228 rho) = rho 44236 := by
      rw [hsum]
      linear_combination r6008
    have ha1 : rho 44234 * seg45AccX228 rho = rho 44237 := by
      rw [seg45LadderFlatX228_eq]
      unfold seg45LadderFlatX228
      linear_combination r6009
    have ha2 : rho 44233 * seg45AccY228 rho = rho 44238 := by
      rw [seg45LadderFlatY228_eq]
      unfold seg45LadderFlatY228
      linear_combination r6010
    have ha3 : 3021 * rho 44237 * rho 44238 = rho 44239 := by
      linear_combination r6011
    have ha4 : rho 44240 * (1 + rho 44239) = rho 44237 + rho 44238 := by
      linear_combination r6012
    have ha5 : rho 44241 * (1 - rho 44239) = rho 44236 - rho 44237 - rho 44238 := by
      linear_combination r6013
    have haddx :
        rho 44240 * (1 + 3021 * (rho 44234 * seg45AccX228 rho) * (rho 44233 * seg45AccY228 rho)) =
          rho 44234 * seg45AccX228 rho + rho 44233 * seg45AccY228 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44241 * (1 - 3021 * (rho 44234 * seg45AccX228 rho) * (rho 44233 * seg45AccY228 rho)) =
          (-1) * (rho 44234 * seg45AccX228 rho) - rho 44233 * seg45AccY228 rho +
            (seg45AccY228 rho - seg45AccX228 rho * (-1)) * (rho 44233 + rho 44234) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44241 * (1 - rho 44239) = rho 44236 - rho 44237 - rho 44238 := ha5
        _ = (-1) * rho 44237 - rho 44238 + (seg45AccY228 rho - seg45AccX228 rho * (-1)) * (rho 44233 + rho 44234) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX229 rho = seg45AccX228 rho - Bool.toZMod bit * (seg45AccX228 rho - rho 44240) := by
      have hd : rho 44242 = Bool.toZMod bit * (rho 44240 - seg45AccX228 rho) := by
        rw [← hbit, seg45LadderFlatX228_eq]
        unfold seg45LadderFlatX228
        linear_combination -r6014
      unfold seg45AccX229
      linear_combination hd
    have hsely : seg45AccY229 rho = seg45AccY228 rho - Bool.toZMod bit * (seg45AccY228 rho - rho 44241) := by
      have hd : rho 44243 = Bool.toZMod bit * (rho 44241 - seg45AccY228 rho) := by
        rw [← hbit, seg45LadderFlatY228_eq]
        unfold seg45LadderFlatY228
        linear_combination -r6015
      unfold seg45AccY229
      linear_combination hd
    have hd0 : rho 44233 * rho 44234 = rho 44244 := by linear_combination r6016
    have hd1 : rho 44233 * rho 44233 = rho 44245 := by linear_combination r6017
    have hd2 : rho 44234 * rho 44234 = rho 44246 := by linear_combination r6018
    have hd3 : rho 44247 * (rho 44234 * rho 44234 + rho 44233 * rho 44233 * (-1)) = 2 * (rho 44233 * rho 44234) := by
      rw [hd0, hd1, hd2]
      linear_combination r6019
    have hd4 : rho 44248 * (2 - (rho 44234 * rho 44234 + rho 44233 * rho 44233 * (-1))) = rho 44234 * rho 44234 - rho 44233 * rho 44233 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6020
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX228 rho : Seg45.F), (seg45AccY228 rho : Seg45.F)⟩
      ⟨(rho 44233 : Seg45.F), (rho 44234 : Seg45.F)⟩
      ⟨(rho 44240 : Seg45.F), (rho 44241 : Seg45.F)⟩
      ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
      ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung228

theorem seg45_rung229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41177 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
        ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩
        ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
        ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6021 Seg45.relationLc1180 Seg45.relationLc1180Part0 Seg45.relationLc1180Part1 Seg45.relationLc1180Part2 Seg45.relationLc1180Part3 Seg45.relationLc1180Part4 Seg45.relationLc1180Part5 Seg45.relationLc1180Part6 Seg45.relationLc1180Part7 Seg45.relationLc1180Part8 Seg45.relationLc1180Part9 Seg45.relationLc1180Part10 Seg45.relationLc1180Part11 Seg45.relationLc1180Part12 Seg45.relationLc1180Part13 Seg45.relationLc1180Part14 at r6021
  unfold Seg45.relationRow6022 at r6022
  unfold Seg45.relationRow6023 Seg45.relationLc1181 Seg45.relationLc1181Part0 Seg45.relationLc1181Part1 Seg45.relationLc1181Part2 Seg45.relationLc1181Part3 Seg45.relationLc1181Part4 Seg45.relationLc1181Part5 Seg45.relationLc1181Part6 Seg45.relationLc1181Part7 at r6023
  unfold Seg45.relationRow6024 Seg45.relationLc1182 Seg45.relationLc1182Part0 Seg45.relationLc1182Part1 Seg45.relationLc1182Part2 Seg45.relationLc1182Part3 Seg45.relationLc1182Part4 Seg45.relationLc1182Part5 Seg45.relationLc1182Part6 Seg45.relationLc1182Part7 at r6024
  unfold Seg45.relationRow6025 at r6025
  unfold Seg45.relationRow6026 at r6026
  unfold Seg45.relationRow6027 at r6027
  unfold Seg45.relationRow6028 Seg45.relationLc1183 Seg45.relationLc1183Part0 Seg45.relationLc1183Part1 Seg45.relationLc1183Part2 Seg45.relationLc1183Part3 Seg45.relationLc1183Part4 Seg45.relationLc1183Part5 Seg45.relationLc1183Part6 Seg45.relationLc1183Part7 at r6028
  unfold Seg45.relationRow6029 Seg45.relationLc1184 Seg45.relationLc1184Part0 Seg45.relationLc1184Part1 Seg45.relationLc1184Part2 Seg45.relationLc1184Part3 Seg45.relationLc1184Part4 Seg45.relationLc1184Part5 Seg45.relationLc1184Part6 Seg45.relationLc1184Part7 at r6029
  unfold Seg45.relationRow6030 at r6030
  unfold Seg45.relationRow6031 at r6031
  unfold Seg45.relationRow6032 at r6032
  unfold Seg45.relationRow6033 at r6033
  unfold Seg45.relationRow6034 at r6034
  have hrung229 (bit : Bool) (hbit : rho 41177 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
        ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩
        ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
        ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩ := by
    have hsum : seg45AccX229 rho + seg45AccY229 rho = rho 44249 := by
      rw [seg45LadderFlatX229_eq, seg45LadderFlatY229_eq]
      unfold seg45LadderFlatX229 seg45LadderFlatY229
      linear_combination r6021
    have ha0 : (rho 44247 + rho 44248) * (seg45AccX229 rho + seg45AccY229 rho) = rho 44250 := by
      rw [hsum]
      linear_combination r6022
    have ha1 : rho 44248 * seg45AccX229 rho = rho 44251 := by
      rw [seg45LadderFlatX229_eq]
      unfold seg45LadderFlatX229
      linear_combination r6023
    have ha2 : rho 44247 * seg45AccY229 rho = rho 44252 := by
      rw [seg45LadderFlatY229_eq]
      unfold seg45LadderFlatY229
      linear_combination r6024
    have ha3 : 3021 * rho 44251 * rho 44252 = rho 44253 := by
      linear_combination r6025
    have ha4 : rho 44254 * (1 + rho 44253) = rho 44251 + rho 44252 := by
      linear_combination r6026
    have ha5 : rho 44255 * (1 - rho 44253) = rho 44250 - rho 44251 - rho 44252 := by
      linear_combination r6027
    have haddx :
        rho 44254 * (1 + 3021 * (rho 44248 * seg45AccX229 rho) * (rho 44247 * seg45AccY229 rho)) =
          rho 44248 * seg45AccX229 rho + rho 44247 * seg45AccY229 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44255 * (1 - 3021 * (rho 44248 * seg45AccX229 rho) * (rho 44247 * seg45AccY229 rho)) =
          (-1) * (rho 44248 * seg45AccX229 rho) - rho 44247 * seg45AccY229 rho +
            (seg45AccY229 rho - seg45AccX229 rho * (-1)) * (rho 44247 + rho 44248) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44255 * (1 - rho 44253) = rho 44250 - rho 44251 - rho 44252 := ha5
        _ = (-1) * rho 44251 - rho 44252 + (seg45AccY229 rho - seg45AccX229 rho * (-1)) * (rho 44247 + rho 44248) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX230 rho = seg45AccX229 rho - Bool.toZMod bit * (seg45AccX229 rho - rho 44254) := by
      have hd : rho 44256 = Bool.toZMod bit * (rho 44254 - seg45AccX229 rho) := by
        rw [← hbit, seg45LadderFlatX229_eq]
        unfold seg45LadderFlatX229
        linear_combination -r6028
      unfold seg45AccX230
      linear_combination hd
    have hsely : seg45AccY230 rho = seg45AccY229 rho - Bool.toZMod bit * (seg45AccY229 rho - rho 44255) := by
      have hd : rho 44257 = Bool.toZMod bit * (rho 44255 - seg45AccY229 rho) := by
        rw [← hbit, seg45LadderFlatY229_eq]
        unfold seg45LadderFlatY229
        linear_combination -r6029
      unfold seg45AccY230
      linear_combination hd
    have hd0 : rho 44247 * rho 44248 = rho 44258 := by linear_combination r6030
    have hd1 : rho 44247 * rho 44247 = rho 44259 := by linear_combination r6031
    have hd2 : rho 44248 * rho 44248 = rho 44260 := by linear_combination r6032
    have hd3 : rho 44261 * (rho 44248 * rho 44248 + rho 44247 * rho 44247 * (-1)) = 2 * (rho 44247 * rho 44248) := by
      rw [hd0, hd1, hd2]
      linear_combination r6033
    have hd4 : rho 44262 * (2 - (rho 44248 * rho 44248 + rho 44247 * rho 44247 * (-1))) = rho 44248 * rho 44248 - rho 44247 * rho 44247 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6034
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX229 rho : Seg45.F), (seg45AccY229 rho : Seg45.F)⟩
      ⟨(rho 44247 : Seg45.F), (rho 44248 : Seg45.F)⟩
      ⟨(rho 44254 : Seg45.F), (rho 44255 : Seg45.F)⟩
      ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
      ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung229

theorem seg45_rung230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41178 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
        ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩
        ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
        ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6035 Seg45.relationLc1185 Seg45.relationLc1185Part0 Seg45.relationLc1185Part1 Seg45.relationLc1185Part2 Seg45.relationLc1185Part3 Seg45.relationLc1185Part4 Seg45.relationLc1185Part5 Seg45.relationLc1185Part6 Seg45.relationLc1185Part7 Seg45.relationLc1185Part8 Seg45.relationLc1185Part9 Seg45.relationLc1185Part10 Seg45.relationLc1185Part11 Seg45.relationLc1185Part12 Seg45.relationLc1185Part13 Seg45.relationLc1185Part14 at r6035
  unfold Seg45.relationRow6036 at r6036
  unfold Seg45.relationRow6037 Seg45.relationLc1186 Seg45.relationLc1186Part0 Seg45.relationLc1186Part1 Seg45.relationLc1186Part2 Seg45.relationLc1186Part3 Seg45.relationLc1186Part4 Seg45.relationLc1186Part5 Seg45.relationLc1186Part6 Seg45.relationLc1186Part7 at r6037
  unfold Seg45.relationRow6038 Seg45.relationLc1187 Seg45.relationLc1187Part0 Seg45.relationLc1187Part1 Seg45.relationLc1187Part2 Seg45.relationLc1187Part3 Seg45.relationLc1187Part4 Seg45.relationLc1187Part5 Seg45.relationLc1187Part6 Seg45.relationLc1187Part7 at r6038
  unfold Seg45.relationRow6039 at r6039
  unfold Seg45.relationRow6040 at r6040
  unfold Seg45.relationRow6041 at r6041
  unfold Seg45.relationRow6042 Seg45.relationLc1188 Seg45.relationLc1188Part0 Seg45.relationLc1188Part1 Seg45.relationLc1188Part2 Seg45.relationLc1188Part3 Seg45.relationLc1188Part4 Seg45.relationLc1188Part5 Seg45.relationLc1188Part6 Seg45.relationLc1188Part7 at r6042
  unfold Seg45.relationRow6043 Seg45.relationLc1189 Seg45.relationLc1189Part0 Seg45.relationLc1189Part1 Seg45.relationLc1189Part2 Seg45.relationLc1189Part3 Seg45.relationLc1189Part4 Seg45.relationLc1189Part5 Seg45.relationLc1189Part6 Seg45.relationLc1189Part7 at r6043
  unfold Seg45.relationRow6044 at r6044
  unfold Seg45.relationRow6045 at r6045
  unfold Seg45.relationRow6046 at r6046
  unfold Seg45.relationRow6047 at r6047
  unfold Seg45.relationRow6048 at r6048
  have hrung230 (bit : Bool) (hbit : rho 41178 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
        ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩
        ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
        ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩ := by
    have hsum : seg45AccX230 rho + seg45AccY230 rho = rho 44263 := by
      rw [seg45LadderFlatX230_eq, seg45LadderFlatY230_eq]
      unfold seg45LadderFlatX230 seg45LadderFlatY230
      linear_combination r6035
    have ha0 : (rho 44261 + rho 44262) * (seg45AccX230 rho + seg45AccY230 rho) = rho 44264 := by
      rw [hsum]
      linear_combination r6036
    have ha1 : rho 44262 * seg45AccX230 rho = rho 44265 := by
      rw [seg45LadderFlatX230_eq]
      unfold seg45LadderFlatX230
      linear_combination r6037
    have ha2 : rho 44261 * seg45AccY230 rho = rho 44266 := by
      rw [seg45LadderFlatY230_eq]
      unfold seg45LadderFlatY230
      linear_combination r6038
    have ha3 : 3021 * rho 44265 * rho 44266 = rho 44267 := by
      linear_combination r6039
    have ha4 : rho 44268 * (1 + rho 44267) = rho 44265 + rho 44266 := by
      linear_combination r6040
    have ha5 : rho 44269 * (1 - rho 44267) = rho 44264 - rho 44265 - rho 44266 := by
      linear_combination r6041
    have haddx :
        rho 44268 * (1 + 3021 * (rho 44262 * seg45AccX230 rho) * (rho 44261 * seg45AccY230 rho)) =
          rho 44262 * seg45AccX230 rho + rho 44261 * seg45AccY230 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44269 * (1 - 3021 * (rho 44262 * seg45AccX230 rho) * (rho 44261 * seg45AccY230 rho)) =
          (-1) * (rho 44262 * seg45AccX230 rho) - rho 44261 * seg45AccY230 rho +
            (seg45AccY230 rho - seg45AccX230 rho * (-1)) * (rho 44261 + rho 44262) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44269 * (1 - rho 44267) = rho 44264 - rho 44265 - rho 44266 := ha5
        _ = (-1) * rho 44265 - rho 44266 + (seg45AccY230 rho - seg45AccX230 rho * (-1)) * (rho 44261 + rho 44262) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX231 rho = seg45AccX230 rho - Bool.toZMod bit * (seg45AccX230 rho - rho 44268) := by
      have hd : rho 44270 = Bool.toZMod bit * (rho 44268 - seg45AccX230 rho) := by
        rw [← hbit, seg45LadderFlatX230_eq]
        unfold seg45LadderFlatX230
        linear_combination -r6042
      unfold seg45AccX231
      linear_combination hd
    have hsely : seg45AccY231 rho = seg45AccY230 rho - Bool.toZMod bit * (seg45AccY230 rho - rho 44269) := by
      have hd : rho 44271 = Bool.toZMod bit * (rho 44269 - seg45AccY230 rho) := by
        rw [← hbit, seg45LadderFlatY230_eq]
        unfold seg45LadderFlatY230
        linear_combination -r6043
      unfold seg45AccY231
      linear_combination hd
    have hd0 : rho 44261 * rho 44262 = rho 44272 := by linear_combination r6044
    have hd1 : rho 44261 * rho 44261 = rho 44273 := by linear_combination r6045
    have hd2 : rho 44262 * rho 44262 = rho 44274 := by linear_combination r6046
    have hd3 : rho 44275 * (rho 44262 * rho 44262 + rho 44261 * rho 44261 * (-1)) = 2 * (rho 44261 * rho 44262) := by
      rw [hd0, hd1, hd2]
      linear_combination r6047
    have hd4 : rho 44276 * (2 - (rho 44262 * rho 44262 + rho 44261 * rho 44261 * (-1))) = rho 44262 * rho 44262 - rho 44261 * rho 44261 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6048
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX230 rho : Seg45.F), (seg45AccY230 rho : Seg45.F)⟩
      ⟨(rho 44261 : Seg45.F), (rho 44262 : Seg45.F)⟩
      ⟨(rho 44268 : Seg45.F), (rho 44269 : Seg45.F)⟩
      ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
      ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung230

theorem seg45_rung231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41179 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
        ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩
        ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
        ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6049 Seg45.relationLc1190 Seg45.relationLc1190Part0 Seg45.relationLc1190Part1 Seg45.relationLc1190Part2 Seg45.relationLc1190Part3 Seg45.relationLc1190Part4 Seg45.relationLc1190Part5 Seg45.relationLc1190Part6 Seg45.relationLc1190Part7 Seg45.relationLc1190Part8 Seg45.relationLc1190Part9 Seg45.relationLc1190Part10 Seg45.relationLc1190Part11 Seg45.relationLc1190Part12 Seg45.relationLc1190Part13 Seg45.relationLc1190Part14 at r6049
  unfold Seg45.relationRow6050 at r6050
  unfold Seg45.relationRow6051 Seg45.relationLc1191 Seg45.relationLc1191Part0 Seg45.relationLc1191Part1 Seg45.relationLc1191Part2 Seg45.relationLc1191Part3 Seg45.relationLc1191Part4 Seg45.relationLc1191Part5 Seg45.relationLc1191Part6 Seg45.relationLc1191Part7 at r6051
  unfold Seg45.relationRow6052 Seg45.relationLc1192 Seg45.relationLc1192Part0 Seg45.relationLc1192Part1 Seg45.relationLc1192Part2 Seg45.relationLc1192Part3 Seg45.relationLc1192Part4 Seg45.relationLc1192Part5 Seg45.relationLc1192Part6 Seg45.relationLc1192Part7 at r6052
  unfold Seg45.relationRow6053 at r6053
  unfold Seg45.relationRow6054 at r6054
  unfold Seg45.relationRow6055 at r6055
  unfold Seg45.relationRow6056 Seg45.relationLc1193 Seg45.relationLc1193Part0 Seg45.relationLc1193Part1 Seg45.relationLc1193Part2 Seg45.relationLc1193Part3 Seg45.relationLc1193Part4 Seg45.relationLc1193Part5 Seg45.relationLc1193Part6 Seg45.relationLc1193Part7 at r6056
  unfold Seg45.relationRow6057 Seg45.relationLc1194 Seg45.relationLc1194Part0 Seg45.relationLc1194Part1 Seg45.relationLc1194Part2 Seg45.relationLc1194Part3 Seg45.relationLc1194Part4 Seg45.relationLc1194Part5 Seg45.relationLc1194Part6 Seg45.relationLc1194Part7 at r6057
  unfold Seg45.relationRow6058 at r6058
  unfold Seg45.relationRow6059 at r6059
  unfold Seg45.relationRow6060 at r6060
  unfold Seg45.relationRow6061 at r6061
  unfold Seg45.relationRow6062 at r6062
  have hrung231 (bit : Bool) (hbit : rho 41179 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
        ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩
        ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
        ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩ := by
    have hsum : seg45AccX231 rho + seg45AccY231 rho = rho 44277 := by
      rw [seg45LadderFlatX231_eq, seg45LadderFlatY231_eq]
      unfold seg45LadderFlatX231 seg45LadderFlatY231
      linear_combination r6049
    have ha0 : (rho 44275 + rho 44276) * (seg45AccX231 rho + seg45AccY231 rho) = rho 44278 := by
      rw [hsum]
      linear_combination r6050
    have ha1 : rho 44276 * seg45AccX231 rho = rho 44279 := by
      rw [seg45LadderFlatX231_eq]
      unfold seg45LadderFlatX231
      linear_combination r6051
    have ha2 : rho 44275 * seg45AccY231 rho = rho 44280 := by
      rw [seg45LadderFlatY231_eq]
      unfold seg45LadderFlatY231
      linear_combination r6052
    have ha3 : 3021 * rho 44279 * rho 44280 = rho 44281 := by
      linear_combination r6053
    have ha4 : rho 44282 * (1 + rho 44281) = rho 44279 + rho 44280 := by
      linear_combination r6054
    have ha5 : rho 44283 * (1 - rho 44281) = rho 44278 - rho 44279 - rho 44280 := by
      linear_combination r6055
    have haddx :
        rho 44282 * (1 + 3021 * (rho 44276 * seg45AccX231 rho) * (rho 44275 * seg45AccY231 rho)) =
          rho 44276 * seg45AccX231 rho + rho 44275 * seg45AccY231 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44283 * (1 - 3021 * (rho 44276 * seg45AccX231 rho) * (rho 44275 * seg45AccY231 rho)) =
          (-1) * (rho 44276 * seg45AccX231 rho) - rho 44275 * seg45AccY231 rho +
            (seg45AccY231 rho - seg45AccX231 rho * (-1)) * (rho 44275 + rho 44276) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44283 * (1 - rho 44281) = rho 44278 - rho 44279 - rho 44280 := ha5
        _ = (-1) * rho 44279 - rho 44280 + (seg45AccY231 rho - seg45AccX231 rho * (-1)) * (rho 44275 + rho 44276) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX232 rho = seg45AccX231 rho - Bool.toZMod bit * (seg45AccX231 rho - rho 44282) := by
      have hd : rho 44284 = Bool.toZMod bit * (rho 44282 - seg45AccX231 rho) := by
        rw [← hbit, seg45LadderFlatX231_eq]
        unfold seg45LadderFlatX231
        linear_combination -r6056
      unfold seg45AccX232
      linear_combination hd
    have hsely : seg45AccY232 rho = seg45AccY231 rho - Bool.toZMod bit * (seg45AccY231 rho - rho 44283) := by
      have hd : rho 44285 = Bool.toZMod bit * (rho 44283 - seg45AccY231 rho) := by
        rw [← hbit, seg45LadderFlatY231_eq]
        unfold seg45LadderFlatY231
        linear_combination -r6057
      unfold seg45AccY232
      linear_combination hd
    have hd0 : rho 44275 * rho 44276 = rho 44286 := by linear_combination r6058
    have hd1 : rho 44275 * rho 44275 = rho 44287 := by linear_combination r6059
    have hd2 : rho 44276 * rho 44276 = rho 44288 := by linear_combination r6060
    have hd3 : rho 44289 * (rho 44276 * rho 44276 + rho 44275 * rho 44275 * (-1)) = 2 * (rho 44275 * rho 44276) := by
      rw [hd0, hd1, hd2]
      linear_combination r6061
    have hd4 : rho 44290 * (2 - (rho 44276 * rho 44276 + rho 44275 * rho 44275 * (-1))) = rho 44276 * rho 44276 - rho 44275 * rho 44275 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6062
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
      ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩
      ⟨(rho 44282 : Seg45.F), (rho 44283 : Seg45.F)⟩
      ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
      ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung231

theorem seg45_rung232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41180 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
        ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩
        ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
        ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, _, _, _⟩
  unfold Seg45.relationRow6063 Seg45.relationLc1195 Seg45.relationLc1195Part0 Seg45.relationLc1195Part1 Seg45.relationLc1195Part2 Seg45.relationLc1195Part3 Seg45.relationLc1195Part4 Seg45.relationLc1195Part5 Seg45.relationLc1195Part6 Seg45.relationLc1195Part7 Seg45.relationLc1195Part8 Seg45.relationLc1195Part9 Seg45.relationLc1195Part10 Seg45.relationLc1195Part11 Seg45.relationLc1195Part12 Seg45.relationLc1195Part13 Seg45.relationLc1195Part14 at r6063
  unfold Seg45.relationRow6064 at r6064
  unfold Seg45.relationRow6065 Seg45.relationLc1196 Seg45.relationLc1196Part0 Seg45.relationLc1196Part1 Seg45.relationLc1196Part2 Seg45.relationLc1196Part3 Seg45.relationLc1196Part4 Seg45.relationLc1196Part5 Seg45.relationLc1196Part6 Seg45.relationLc1196Part7 at r6065
  unfold Seg45.relationRow6066 Seg45.relationLc1197 Seg45.relationLc1197Part0 Seg45.relationLc1197Part1 Seg45.relationLc1197Part2 Seg45.relationLc1197Part3 Seg45.relationLc1197Part4 Seg45.relationLc1197Part5 Seg45.relationLc1197Part6 Seg45.relationLc1197Part7 at r6066
  unfold Seg45.relationRow6067 at r6067
  unfold Seg45.relationRow6068 at r6068
  unfold Seg45.relationRow6069 at r6069
  unfold Seg45.relationRow6070 Seg45.relationLc1198 Seg45.relationLc1198Part0 Seg45.relationLc1198Part1 Seg45.relationLc1198Part2 Seg45.relationLc1198Part3 Seg45.relationLc1198Part4 Seg45.relationLc1198Part5 Seg45.relationLc1198Part6 Seg45.relationLc1198Part7 at r6070
  unfold Seg45.relationRow6071 Seg45.relationLc1199 Seg45.relationLc1199Part0 Seg45.relationLc1199Part1 Seg45.relationLc1199Part2 Seg45.relationLc1199Part3 Seg45.relationLc1199Part4 Seg45.relationLc1199Part5 Seg45.relationLc1199Part6 Seg45.relationLc1199Part7 at r6071
  unfold Seg45.relationRow6072 at r6072
  unfold Seg45.relationRow6073 at r6073
  unfold Seg45.relationRow6074 at r6074
  unfold Seg45.relationRow6075 at r6075
  unfold Seg45.relationRow6076 at r6076
  have hrung232 (bit : Bool) (hbit : rho 41180 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
        ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩
        ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
        ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩ := by
    have hsum : seg45AccX232 rho + seg45AccY232 rho = rho 44291 := by
      rw [seg45LadderFlatX232_eq, seg45LadderFlatY232_eq]
      unfold seg45LadderFlatX232 seg45LadderFlatY232
      linear_combination r6063
    have ha0 : (rho 44289 + rho 44290) * (seg45AccX232 rho + seg45AccY232 rho) = rho 44292 := by
      rw [hsum]
      linear_combination r6064
    have ha1 : rho 44290 * seg45AccX232 rho = rho 44293 := by
      rw [seg45LadderFlatX232_eq]
      unfold seg45LadderFlatX232
      linear_combination r6065
    have ha2 : rho 44289 * seg45AccY232 rho = rho 44294 := by
      rw [seg45LadderFlatY232_eq]
      unfold seg45LadderFlatY232
      linear_combination r6066
    have ha3 : 3021 * rho 44293 * rho 44294 = rho 44295 := by
      linear_combination r6067
    have ha4 : rho 44296 * (1 + rho 44295) = rho 44293 + rho 44294 := by
      linear_combination r6068
    have ha5 : rho 44297 * (1 - rho 44295) = rho 44292 - rho 44293 - rho 44294 := by
      linear_combination r6069
    have haddx :
        rho 44296 * (1 + 3021 * (rho 44290 * seg45AccX232 rho) * (rho 44289 * seg45AccY232 rho)) =
          rho 44290 * seg45AccX232 rho + rho 44289 * seg45AccY232 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44297 * (1 - 3021 * (rho 44290 * seg45AccX232 rho) * (rho 44289 * seg45AccY232 rho)) =
          (-1) * (rho 44290 * seg45AccX232 rho) - rho 44289 * seg45AccY232 rho +
            (seg45AccY232 rho - seg45AccX232 rho * (-1)) * (rho 44289 + rho 44290) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44297 * (1 - rho 44295) = rho 44292 - rho 44293 - rho 44294 := ha5
        _ = (-1) * rho 44293 - rho 44294 + (seg45AccY232 rho - seg45AccX232 rho * (-1)) * (rho 44289 + rho 44290) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX233 rho = seg45AccX232 rho - Bool.toZMod bit * (seg45AccX232 rho - rho 44296) := by
      have hd : rho 44298 = Bool.toZMod bit * (rho 44296 - seg45AccX232 rho) := by
        rw [← hbit, seg45LadderFlatX232_eq]
        unfold seg45LadderFlatX232
        linear_combination -r6070
      unfold seg45AccX233
      linear_combination hd
    have hsely : seg45AccY233 rho = seg45AccY232 rho - Bool.toZMod bit * (seg45AccY232 rho - rho 44297) := by
      have hd : rho 44299 = Bool.toZMod bit * (rho 44297 - seg45AccY232 rho) := by
        rw [← hbit, seg45LadderFlatY232_eq]
        unfold seg45LadderFlatY232
        linear_combination -r6071
      unfold seg45AccY233
      linear_combination hd
    have hd0 : rho 44289 * rho 44290 = rho 44300 := by linear_combination r6072
    have hd1 : rho 44289 * rho 44289 = rho 44301 := by linear_combination r6073
    have hd2 : rho 44290 * rho 44290 = rho 44302 := by linear_combination r6074
    have hd3 : rho 44303 * (rho 44290 * rho 44290 + rho 44289 * rho 44289 * (-1)) = 2 * (rho 44289 * rho 44290) := by
      rw [hd0, hd1, hd2]
      linear_combination r6075
    have hd4 : rho 44304 * (2 - (rho 44290 * rho 44290 + rho 44289 * rho 44289 * (-1))) = rho 44290 * rho 44290 - rho 44289 * rho 44289 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
      ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩
      ⟨(rho 44296 : Seg45.F), (rho 44297 : Seg45.F)⟩
      ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
      ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung232

theorem seg45_rung233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41181 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
        ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩
        ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
        ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6077, r6078, r6079⟩
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6077 Seg45.relationLc1200 Seg45.relationLc1200Part0 Seg45.relationLc1200Part1 Seg45.relationLc1200Part2 Seg45.relationLc1200Part3 Seg45.relationLc1200Part4 Seg45.relationLc1200Part5 Seg45.relationLc1200Part6 Seg45.relationLc1200Part7 Seg45.relationLc1200Part8 Seg45.relationLc1200Part9 Seg45.relationLc1200Part10 Seg45.relationLc1200Part11 Seg45.relationLc1200Part12 Seg45.relationLc1200Part13 Seg45.relationLc1200Part14 at r6077
  unfold Seg45.relationRow6078 at r6078
  unfold Seg45.relationRow6079 Seg45.relationLc1201 Seg45.relationLc1201Part0 Seg45.relationLc1201Part1 Seg45.relationLc1201Part2 Seg45.relationLc1201Part3 Seg45.relationLc1201Part4 Seg45.relationLc1201Part5 Seg45.relationLc1201Part6 Seg45.relationLc1201Part7 at r6079
  unfold Seg45.relationRow6080 Seg45.relationLc1202 Seg45.relationLc1202Part0 Seg45.relationLc1202Part1 Seg45.relationLc1202Part2 Seg45.relationLc1202Part3 Seg45.relationLc1202Part4 Seg45.relationLc1202Part5 Seg45.relationLc1202Part6 Seg45.relationLc1202Part7 at r6080
  unfold Seg45.relationRow6081 at r6081
  unfold Seg45.relationRow6082 at r6082
  unfold Seg45.relationRow6083 at r6083
  unfold Seg45.relationRow6084 Seg45.relationLc1203 Seg45.relationLc1203Part0 Seg45.relationLc1203Part1 Seg45.relationLc1203Part2 Seg45.relationLc1203Part3 Seg45.relationLc1203Part4 Seg45.relationLc1203Part5 Seg45.relationLc1203Part6 Seg45.relationLc1203Part7 at r6084
  unfold Seg45.relationRow6085 Seg45.relationLc1204 Seg45.relationLc1204Part0 Seg45.relationLc1204Part1 Seg45.relationLc1204Part2 Seg45.relationLc1204Part3 Seg45.relationLc1204Part4 Seg45.relationLc1204Part5 Seg45.relationLc1204Part6 Seg45.relationLc1204Part7 at r6085
  unfold Seg45.relationRow6086 at r6086
  unfold Seg45.relationRow6087 at r6087
  unfold Seg45.relationRow6088 at r6088
  unfold Seg45.relationRow6089 at r6089
  unfold Seg45.relationRow6090 at r6090
  have hrung233 (bit : Bool) (hbit : rho 41181 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
        ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩
        ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
        ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩ := by
    have hsum : seg45AccX233 rho + seg45AccY233 rho = rho 44305 := by
      rw [seg45LadderFlatX233_eq, seg45LadderFlatY233_eq]
      unfold seg45LadderFlatX233 seg45LadderFlatY233
      linear_combination r6077
    have ha0 : (rho 44303 + rho 44304) * (seg45AccX233 rho + seg45AccY233 rho) = rho 44306 := by
      rw [hsum]
      linear_combination r6078
    have ha1 : rho 44304 * seg45AccX233 rho = rho 44307 := by
      rw [seg45LadderFlatX233_eq]
      unfold seg45LadderFlatX233
      linear_combination r6079
    have ha2 : rho 44303 * seg45AccY233 rho = rho 44308 := by
      rw [seg45LadderFlatY233_eq]
      unfold seg45LadderFlatY233
      linear_combination r6080
    have ha3 : 3021 * rho 44307 * rho 44308 = rho 44309 := by
      linear_combination r6081
    have ha4 : rho 44310 * (1 + rho 44309) = rho 44307 + rho 44308 := by
      linear_combination r6082
    have ha5 : rho 44311 * (1 - rho 44309) = rho 44306 - rho 44307 - rho 44308 := by
      linear_combination r6083
    have haddx :
        rho 44310 * (1 + 3021 * (rho 44304 * seg45AccX233 rho) * (rho 44303 * seg45AccY233 rho)) =
          rho 44304 * seg45AccX233 rho + rho 44303 * seg45AccY233 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44311 * (1 - 3021 * (rho 44304 * seg45AccX233 rho) * (rho 44303 * seg45AccY233 rho)) =
          (-1) * (rho 44304 * seg45AccX233 rho) - rho 44303 * seg45AccY233 rho +
            (seg45AccY233 rho - seg45AccX233 rho * (-1)) * (rho 44303 + rho 44304) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44311 * (1 - rho 44309) = rho 44306 - rho 44307 - rho 44308 := ha5
        _ = (-1) * rho 44307 - rho 44308 + (seg45AccY233 rho - seg45AccX233 rho * (-1)) * (rho 44303 + rho 44304) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX234 rho = seg45AccX233 rho - Bool.toZMod bit * (seg45AccX233 rho - rho 44310) := by
      have hd : rho 44312 = Bool.toZMod bit * (rho 44310 - seg45AccX233 rho) := by
        rw [← hbit, seg45LadderFlatX233_eq]
        unfold seg45LadderFlatX233
        linear_combination -r6084
      unfold seg45AccX234
      linear_combination hd
    have hsely : seg45AccY234 rho = seg45AccY233 rho - Bool.toZMod bit * (seg45AccY233 rho - rho 44311) := by
      have hd : rho 44313 = Bool.toZMod bit * (rho 44311 - seg45AccY233 rho) := by
        rw [← hbit, seg45LadderFlatY233_eq]
        unfold seg45LadderFlatY233
        linear_combination -r6085
      unfold seg45AccY234
      linear_combination hd
    have hd0 : rho 44303 * rho 44304 = rho 44314 := by linear_combination r6086
    have hd1 : rho 44303 * rho 44303 = rho 44315 := by linear_combination r6087
    have hd2 : rho 44304 * rho 44304 = rho 44316 := by linear_combination r6088
    have hd3 : rho 44317 * (rho 44304 * rho 44304 + rho 44303 * rho 44303 * (-1)) = 2 * (rho 44303 * rho 44304) := by
      rw [hd0, hd1, hd2]
      linear_combination r6089
    have hd4 : rho 44318 * (2 - (rho 44304 * rho 44304 + rho 44303 * rho 44303 * (-1))) = rho 44304 * rho 44304 - rho 44303 * rho 44303 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6090
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
      ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩
      ⟨(rho 44310 : Seg45.F), (rho 44311 : Seg45.F)⟩
      ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
      ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung233

theorem seg45_rung234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41182 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
        ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩
        ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
        ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6091 Seg45.relationLc1205 Seg45.relationLc1205Part0 Seg45.relationLc1205Part1 Seg45.relationLc1205Part2 Seg45.relationLc1205Part3 Seg45.relationLc1205Part4 Seg45.relationLc1205Part5 Seg45.relationLc1205Part6 Seg45.relationLc1205Part7 Seg45.relationLc1205Part8 Seg45.relationLc1205Part9 Seg45.relationLc1205Part10 Seg45.relationLc1205Part11 Seg45.relationLc1205Part12 Seg45.relationLc1205Part13 Seg45.relationLc1205Part14 at r6091
  unfold Seg45.relationRow6092 at r6092
  unfold Seg45.relationRow6093 Seg45.relationLc1206 Seg45.relationLc1206Part0 Seg45.relationLc1206Part1 Seg45.relationLc1206Part2 Seg45.relationLc1206Part3 Seg45.relationLc1206Part4 Seg45.relationLc1206Part5 Seg45.relationLc1206Part6 Seg45.relationLc1206Part7 at r6093
  unfold Seg45.relationRow6094 Seg45.relationLc1207 Seg45.relationLc1207Part0 Seg45.relationLc1207Part1 Seg45.relationLc1207Part2 Seg45.relationLc1207Part3 Seg45.relationLc1207Part4 Seg45.relationLc1207Part5 Seg45.relationLc1207Part6 Seg45.relationLc1207Part7 at r6094
  unfold Seg45.relationRow6095 at r6095
  unfold Seg45.relationRow6096 at r6096
  unfold Seg45.relationRow6097 at r6097
  unfold Seg45.relationRow6098 Seg45.relationLc1208 Seg45.relationLc1208Part0 Seg45.relationLc1208Part1 Seg45.relationLc1208Part2 Seg45.relationLc1208Part3 Seg45.relationLc1208Part4 Seg45.relationLc1208Part5 Seg45.relationLc1208Part6 Seg45.relationLc1208Part7 at r6098
  unfold Seg45.relationRow6099 Seg45.relationLc1209 Seg45.relationLc1209Part0 Seg45.relationLc1209Part1 Seg45.relationLc1209Part2 Seg45.relationLc1209Part3 Seg45.relationLc1209Part4 Seg45.relationLc1209Part5 Seg45.relationLc1209Part6 Seg45.relationLc1209Part7 at r6099
  unfold Seg45.relationRow6100 at r6100
  unfold Seg45.relationRow6101 at r6101
  unfold Seg45.relationRow6102 at r6102
  unfold Seg45.relationRow6103 at r6103
  unfold Seg45.relationRow6104 at r6104
  have hrung234 (bit : Bool) (hbit : rho 41182 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
        ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩
        ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
        ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩ := by
    have hsum : seg45AccX234 rho + seg45AccY234 rho = rho 44319 := by
      rw [seg45LadderFlatX234_eq, seg45LadderFlatY234_eq]
      unfold seg45LadderFlatX234 seg45LadderFlatY234
      linear_combination r6091
    have ha0 : (rho 44317 + rho 44318) * (seg45AccX234 rho + seg45AccY234 rho) = rho 44320 := by
      rw [hsum]
      linear_combination r6092
    have ha1 : rho 44318 * seg45AccX234 rho = rho 44321 := by
      rw [seg45LadderFlatX234_eq]
      unfold seg45LadderFlatX234
      linear_combination r6093
    have ha2 : rho 44317 * seg45AccY234 rho = rho 44322 := by
      rw [seg45LadderFlatY234_eq]
      unfold seg45LadderFlatY234
      linear_combination r6094
    have ha3 : 3021 * rho 44321 * rho 44322 = rho 44323 := by
      linear_combination r6095
    have ha4 : rho 44324 * (1 + rho 44323) = rho 44321 + rho 44322 := by
      linear_combination r6096
    have ha5 : rho 44325 * (1 - rho 44323) = rho 44320 - rho 44321 - rho 44322 := by
      linear_combination r6097
    have haddx :
        rho 44324 * (1 + 3021 * (rho 44318 * seg45AccX234 rho) * (rho 44317 * seg45AccY234 rho)) =
          rho 44318 * seg45AccX234 rho + rho 44317 * seg45AccY234 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44325 * (1 - 3021 * (rho 44318 * seg45AccX234 rho) * (rho 44317 * seg45AccY234 rho)) =
          (-1) * (rho 44318 * seg45AccX234 rho) - rho 44317 * seg45AccY234 rho +
            (seg45AccY234 rho - seg45AccX234 rho * (-1)) * (rho 44317 + rho 44318) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44325 * (1 - rho 44323) = rho 44320 - rho 44321 - rho 44322 := ha5
        _ = (-1) * rho 44321 - rho 44322 + (seg45AccY234 rho - seg45AccX234 rho * (-1)) * (rho 44317 + rho 44318) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX235 rho = seg45AccX234 rho - Bool.toZMod bit * (seg45AccX234 rho - rho 44324) := by
      have hd : rho 44326 = Bool.toZMod bit * (rho 44324 - seg45AccX234 rho) := by
        rw [← hbit, seg45LadderFlatX234_eq]
        unfold seg45LadderFlatX234
        linear_combination -r6098
      unfold seg45AccX235
      linear_combination hd
    have hsely : seg45AccY235 rho = seg45AccY234 rho - Bool.toZMod bit * (seg45AccY234 rho - rho 44325) := by
      have hd : rho 44327 = Bool.toZMod bit * (rho 44325 - seg45AccY234 rho) := by
        rw [← hbit, seg45LadderFlatY234_eq]
        unfold seg45LadderFlatY234
        linear_combination -r6099
      unfold seg45AccY235
      linear_combination hd
    have hd0 : rho 44317 * rho 44318 = rho 44328 := by linear_combination r6100
    have hd1 : rho 44317 * rho 44317 = rho 44329 := by linear_combination r6101
    have hd2 : rho 44318 * rho 44318 = rho 44330 := by linear_combination r6102
    have hd3 : rho 44331 * (rho 44318 * rho 44318 + rho 44317 * rho 44317 * (-1)) = 2 * (rho 44317 * rho 44318) := by
      rw [hd0, hd1, hd2]
      linear_combination r6103
    have hd4 : rho 44332 * (2 - (rho 44318 * rho 44318 + rho 44317 * rho 44317 * (-1))) = rho 44318 * rho 44318 - rho 44317 * rho 44317 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6104
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
      ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩
      ⟨(rho 44324 : Seg45.F), (rho 44325 : Seg45.F)⟩
      ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
      ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung234

theorem seg45_rung235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41183 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
        ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩
        ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
        ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6105 Seg45.relationLc1210 Seg45.relationLc1210Part0 Seg45.relationLc1210Part1 Seg45.relationLc1210Part2 Seg45.relationLc1210Part3 Seg45.relationLc1210Part4 Seg45.relationLc1210Part5 Seg45.relationLc1210Part6 Seg45.relationLc1210Part7 Seg45.relationLc1210Part8 Seg45.relationLc1210Part9 Seg45.relationLc1210Part10 Seg45.relationLc1210Part11 Seg45.relationLc1210Part12 Seg45.relationLc1210Part13 Seg45.relationLc1210Part14 at r6105
  unfold Seg45.relationRow6106 at r6106
  unfold Seg45.relationRow6107 Seg45.relationLc1211 Seg45.relationLc1211Part0 Seg45.relationLc1211Part1 Seg45.relationLc1211Part2 Seg45.relationLc1211Part3 Seg45.relationLc1211Part4 Seg45.relationLc1211Part5 Seg45.relationLc1211Part6 Seg45.relationLc1211Part7 at r6107
  unfold Seg45.relationRow6108 Seg45.relationLc1212 Seg45.relationLc1212Part0 Seg45.relationLc1212Part1 Seg45.relationLc1212Part2 Seg45.relationLc1212Part3 Seg45.relationLc1212Part4 Seg45.relationLc1212Part5 Seg45.relationLc1212Part6 Seg45.relationLc1212Part7 at r6108
  unfold Seg45.relationRow6109 at r6109
  unfold Seg45.relationRow6110 at r6110
  unfold Seg45.relationRow6111 at r6111
  unfold Seg45.relationRow6112 Seg45.relationLc1213 Seg45.relationLc1213Part0 Seg45.relationLc1213Part1 Seg45.relationLc1213Part2 Seg45.relationLc1213Part3 Seg45.relationLc1213Part4 Seg45.relationLc1213Part5 Seg45.relationLc1213Part6 Seg45.relationLc1213Part7 at r6112
  unfold Seg45.relationRow6113 Seg45.relationLc1214 Seg45.relationLc1214Part0 Seg45.relationLc1214Part1 Seg45.relationLc1214Part2 Seg45.relationLc1214Part3 Seg45.relationLc1214Part4 Seg45.relationLc1214Part5 Seg45.relationLc1214Part6 Seg45.relationLc1214Part7 at r6113
  unfold Seg45.relationRow6114 at r6114
  unfold Seg45.relationRow6115 at r6115
  unfold Seg45.relationRow6116 at r6116
  unfold Seg45.relationRow6117 at r6117
  unfold Seg45.relationRow6118 at r6118
  have hrung235 (bit : Bool) (hbit : rho 41183 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
        ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩
        ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
        ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩ := by
    have hsum : seg45AccX235 rho + seg45AccY235 rho = rho 44333 := by
      rw [seg45LadderFlatX235_eq, seg45LadderFlatY235_eq]
      unfold seg45LadderFlatX235 seg45LadderFlatY235
      linear_combination r6105
    have ha0 : (rho 44331 + rho 44332) * (seg45AccX235 rho + seg45AccY235 rho) = rho 44334 := by
      rw [hsum]
      linear_combination r6106
    have ha1 : rho 44332 * seg45AccX235 rho = rho 44335 := by
      rw [seg45LadderFlatX235_eq]
      unfold seg45LadderFlatX235
      linear_combination r6107
    have ha2 : rho 44331 * seg45AccY235 rho = rho 44336 := by
      rw [seg45LadderFlatY235_eq]
      unfold seg45LadderFlatY235
      linear_combination r6108
    have ha3 : 3021 * rho 44335 * rho 44336 = rho 44337 := by
      linear_combination r6109
    have ha4 : rho 44338 * (1 + rho 44337) = rho 44335 + rho 44336 := by
      linear_combination r6110
    have ha5 : rho 44339 * (1 - rho 44337) = rho 44334 - rho 44335 - rho 44336 := by
      linear_combination r6111
    have haddx :
        rho 44338 * (1 + 3021 * (rho 44332 * seg45AccX235 rho) * (rho 44331 * seg45AccY235 rho)) =
          rho 44332 * seg45AccX235 rho + rho 44331 * seg45AccY235 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44339 * (1 - 3021 * (rho 44332 * seg45AccX235 rho) * (rho 44331 * seg45AccY235 rho)) =
          (-1) * (rho 44332 * seg45AccX235 rho) - rho 44331 * seg45AccY235 rho +
            (seg45AccY235 rho - seg45AccX235 rho * (-1)) * (rho 44331 + rho 44332) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44339 * (1 - rho 44337) = rho 44334 - rho 44335 - rho 44336 := ha5
        _ = (-1) * rho 44335 - rho 44336 + (seg45AccY235 rho - seg45AccX235 rho * (-1)) * (rho 44331 + rho 44332) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX236 rho = seg45AccX235 rho - Bool.toZMod bit * (seg45AccX235 rho - rho 44338) := by
      have hd : rho 44340 = Bool.toZMod bit * (rho 44338 - seg45AccX235 rho) := by
        rw [← hbit, seg45LadderFlatX235_eq]
        unfold seg45LadderFlatX235
        linear_combination -r6112
      unfold seg45AccX236
      linear_combination hd
    have hsely : seg45AccY236 rho = seg45AccY235 rho - Bool.toZMod bit * (seg45AccY235 rho - rho 44339) := by
      have hd : rho 44341 = Bool.toZMod bit * (rho 44339 - seg45AccY235 rho) := by
        rw [← hbit, seg45LadderFlatY235_eq]
        unfold seg45LadderFlatY235
        linear_combination -r6113
      unfold seg45AccY236
      linear_combination hd
    have hd0 : rho 44331 * rho 44332 = rho 44342 := by linear_combination r6114
    have hd1 : rho 44331 * rho 44331 = rho 44343 := by linear_combination r6115
    have hd2 : rho 44332 * rho 44332 = rho 44344 := by linear_combination r6116
    have hd3 : rho 44345 * (rho 44332 * rho 44332 + rho 44331 * rho 44331 * (-1)) = 2 * (rho 44331 * rho 44332) := by
      rw [hd0, hd1, hd2]
      linear_combination r6117
    have hd4 : rho 44346 * (2 - (rho 44332 * rho 44332 + rho 44331 * rho 44331 * (-1))) = rho 44332 * rho 44332 - rho 44331 * rho 44331 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6118
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
      ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩
      ⟨(rho 44338 : Seg45.F), (rho 44339 : Seg45.F)⟩
      ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
      ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung235

theorem seg45_rung236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41184 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
        ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩
        ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
        ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6119 Seg45.relationLc1215 Seg45.relationLc1215Part0 Seg45.relationLc1215Part1 Seg45.relationLc1215Part2 Seg45.relationLc1215Part3 Seg45.relationLc1215Part4 Seg45.relationLc1215Part5 Seg45.relationLc1215Part6 Seg45.relationLc1215Part7 Seg45.relationLc1215Part8 Seg45.relationLc1215Part9 Seg45.relationLc1215Part10 Seg45.relationLc1215Part11 Seg45.relationLc1215Part12 Seg45.relationLc1215Part13 Seg45.relationLc1215Part14 at r6119
  unfold Seg45.relationRow6120 at r6120
  unfold Seg45.relationRow6121 Seg45.relationLc1216 Seg45.relationLc1216Part0 Seg45.relationLc1216Part1 Seg45.relationLc1216Part2 Seg45.relationLc1216Part3 Seg45.relationLc1216Part4 Seg45.relationLc1216Part5 Seg45.relationLc1216Part6 Seg45.relationLc1216Part7 at r6121
  unfold Seg45.relationRow6122 Seg45.relationLc1217 Seg45.relationLc1217Part0 Seg45.relationLc1217Part1 Seg45.relationLc1217Part2 Seg45.relationLc1217Part3 Seg45.relationLc1217Part4 Seg45.relationLc1217Part5 Seg45.relationLc1217Part6 Seg45.relationLc1217Part7 at r6122
  unfold Seg45.relationRow6123 at r6123
  unfold Seg45.relationRow6124 at r6124
  unfold Seg45.relationRow6125 at r6125
  unfold Seg45.relationRow6126 Seg45.relationLc1218 Seg45.relationLc1218Part0 Seg45.relationLc1218Part1 Seg45.relationLc1218Part2 Seg45.relationLc1218Part3 Seg45.relationLc1218Part4 Seg45.relationLc1218Part5 Seg45.relationLc1218Part6 Seg45.relationLc1218Part7 at r6126
  unfold Seg45.relationRow6127 Seg45.relationLc1219 Seg45.relationLc1219Part0 Seg45.relationLc1219Part1 Seg45.relationLc1219Part2 Seg45.relationLc1219Part3 Seg45.relationLc1219Part4 Seg45.relationLc1219Part5 Seg45.relationLc1219Part6 Seg45.relationLc1219Part7 at r6127
  unfold Seg45.relationRow6128 at r6128
  unfold Seg45.relationRow6129 at r6129
  unfold Seg45.relationRow6130 at r6130
  unfold Seg45.relationRow6131 at r6131
  unfold Seg45.relationRow6132 at r6132
  have hrung236 (bit : Bool) (hbit : rho 41184 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
        ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩
        ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
        ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩ := by
    have hsum : seg45AccX236 rho + seg45AccY236 rho = rho 44347 := by
      rw [seg45LadderFlatX236_eq, seg45LadderFlatY236_eq]
      unfold seg45LadderFlatX236 seg45LadderFlatY236
      linear_combination r6119
    have ha0 : (rho 44345 + rho 44346) * (seg45AccX236 rho + seg45AccY236 rho) = rho 44348 := by
      rw [hsum]
      linear_combination r6120
    have ha1 : rho 44346 * seg45AccX236 rho = rho 44349 := by
      rw [seg45LadderFlatX236_eq]
      unfold seg45LadderFlatX236
      linear_combination r6121
    have ha2 : rho 44345 * seg45AccY236 rho = rho 44350 := by
      rw [seg45LadderFlatY236_eq]
      unfold seg45LadderFlatY236
      linear_combination r6122
    have ha3 : 3021 * rho 44349 * rho 44350 = rho 44351 := by
      linear_combination r6123
    have ha4 : rho 44352 * (1 + rho 44351) = rho 44349 + rho 44350 := by
      linear_combination r6124
    have ha5 : rho 44353 * (1 - rho 44351) = rho 44348 - rho 44349 - rho 44350 := by
      linear_combination r6125
    have haddx :
        rho 44352 * (1 + 3021 * (rho 44346 * seg45AccX236 rho) * (rho 44345 * seg45AccY236 rho)) =
          rho 44346 * seg45AccX236 rho + rho 44345 * seg45AccY236 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44353 * (1 - 3021 * (rho 44346 * seg45AccX236 rho) * (rho 44345 * seg45AccY236 rho)) =
          (-1) * (rho 44346 * seg45AccX236 rho) - rho 44345 * seg45AccY236 rho +
            (seg45AccY236 rho - seg45AccX236 rho * (-1)) * (rho 44345 + rho 44346) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44353 * (1 - rho 44351) = rho 44348 - rho 44349 - rho 44350 := ha5
        _ = (-1) * rho 44349 - rho 44350 + (seg45AccY236 rho - seg45AccX236 rho * (-1)) * (rho 44345 + rho 44346) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX237 rho = seg45AccX236 rho - Bool.toZMod bit * (seg45AccX236 rho - rho 44352) := by
      have hd : rho 44354 = Bool.toZMod bit * (rho 44352 - seg45AccX236 rho) := by
        rw [← hbit, seg45LadderFlatX236_eq]
        unfold seg45LadderFlatX236
        linear_combination -r6126
      unfold seg45AccX237
      linear_combination hd
    have hsely : seg45AccY237 rho = seg45AccY236 rho - Bool.toZMod bit * (seg45AccY236 rho - rho 44353) := by
      have hd : rho 44355 = Bool.toZMod bit * (rho 44353 - seg45AccY236 rho) := by
        rw [← hbit, seg45LadderFlatY236_eq]
        unfold seg45LadderFlatY236
        linear_combination -r6127
      unfold seg45AccY237
      linear_combination hd
    have hd0 : rho 44345 * rho 44346 = rho 44356 := by linear_combination r6128
    have hd1 : rho 44345 * rho 44345 = rho 44357 := by linear_combination r6129
    have hd2 : rho 44346 * rho 44346 = rho 44358 := by linear_combination r6130
    have hd3 : rho 44359 * (rho 44346 * rho 44346 + rho 44345 * rho 44345 * (-1)) = 2 * (rho 44345 * rho 44346) := by
      rw [hd0, hd1, hd2]
      linear_combination r6131
    have hd4 : rho 44360 * (2 - (rho 44346 * rho 44346 + rho 44345 * rho 44345 * (-1))) = rho 44346 * rho 44346 - rho 44345 * rho 44345 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6132
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
      ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩
      ⟨(rho 44352 : Seg45.F), (rho 44353 : Seg45.F)⟩
      ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
      ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung236

theorem seg45_rung237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41185 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
        ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩
        ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
        ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6133 Seg45.relationLc1220 Seg45.relationLc1220Part0 Seg45.relationLc1220Part1 Seg45.relationLc1220Part2 Seg45.relationLc1220Part3 Seg45.relationLc1220Part4 Seg45.relationLc1220Part5 Seg45.relationLc1220Part6 Seg45.relationLc1220Part7 Seg45.relationLc1220Part8 Seg45.relationLc1220Part9 Seg45.relationLc1220Part10 Seg45.relationLc1220Part11 Seg45.relationLc1220Part12 Seg45.relationLc1220Part13 Seg45.relationLc1220Part14 at r6133
  unfold Seg45.relationRow6134 at r6134
  unfold Seg45.relationRow6135 Seg45.relationLc1221 Seg45.relationLc1221Part0 Seg45.relationLc1221Part1 Seg45.relationLc1221Part2 Seg45.relationLc1221Part3 Seg45.relationLc1221Part4 Seg45.relationLc1221Part5 Seg45.relationLc1221Part6 Seg45.relationLc1221Part7 at r6135
  unfold Seg45.relationRow6136 Seg45.relationLc1222 Seg45.relationLc1222Part0 Seg45.relationLc1222Part1 Seg45.relationLc1222Part2 Seg45.relationLc1222Part3 Seg45.relationLc1222Part4 Seg45.relationLc1222Part5 Seg45.relationLc1222Part6 Seg45.relationLc1222Part7 at r6136
  unfold Seg45.relationRow6137 at r6137
  unfold Seg45.relationRow6138 at r6138
  unfold Seg45.relationRow6139 at r6139
  unfold Seg45.relationRow6140 Seg45.relationLc1223 Seg45.relationLc1223Part0 Seg45.relationLc1223Part1 Seg45.relationLc1223Part2 Seg45.relationLc1223Part3 Seg45.relationLc1223Part4 Seg45.relationLc1223Part5 Seg45.relationLc1223Part6 Seg45.relationLc1223Part7 at r6140
  unfold Seg45.relationRow6141 Seg45.relationLc1224 Seg45.relationLc1224Part0 Seg45.relationLc1224Part1 Seg45.relationLc1224Part2 Seg45.relationLc1224Part3 Seg45.relationLc1224Part4 Seg45.relationLc1224Part5 Seg45.relationLc1224Part6 Seg45.relationLc1224Part7 at r6141
  unfold Seg45.relationRow6142 at r6142
  unfold Seg45.relationRow6143 at r6143
  unfold Seg45.relationRow6144 at r6144
  unfold Seg45.relationRow6145 at r6145
  unfold Seg45.relationRow6146 at r6146
  have hrung237 (bit : Bool) (hbit : rho 41185 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
        ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩
        ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
        ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩ := by
    have hsum : seg45AccX237 rho + seg45AccY237 rho = rho 44361 := by
      rw [seg45LadderFlatX237_eq, seg45LadderFlatY237_eq]
      unfold seg45LadderFlatX237 seg45LadderFlatY237
      linear_combination r6133
    have ha0 : (rho 44359 + rho 44360) * (seg45AccX237 rho + seg45AccY237 rho) = rho 44362 := by
      rw [hsum]
      linear_combination r6134
    have ha1 : rho 44360 * seg45AccX237 rho = rho 44363 := by
      rw [seg45LadderFlatX237_eq]
      unfold seg45LadderFlatX237
      linear_combination r6135
    have ha2 : rho 44359 * seg45AccY237 rho = rho 44364 := by
      rw [seg45LadderFlatY237_eq]
      unfold seg45LadderFlatY237
      linear_combination r6136
    have ha3 : 3021 * rho 44363 * rho 44364 = rho 44365 := by
      linear_combination r6137
    have ha4 : rho 44366 * (1 + rho 44365) = rho 44363 + rho 44364 := by
      linear_combination r6138
    have ha5 : rho 44367 * (1 - rho 44365) = rho 44362 - rho 44363 - rho 44364 := by
      linear_combination r6139
    have haddx :
        rho 44366 * (1 + 3021 * (rho 44360 * seg45AccX237 rho) * (rho 44359 * seg45AccY237 rho)) =
          rho 44360 * seg45AccX237 rho + rho 44359 * seg45AccY237 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44367 * (1 - 3021 * (rho 44360 * seg45AccX237 rho) * (rho 44359 * seg45AccY237 rho)) =
          (-1) * (rho 44360 * seg45AccX237 rho) - rho 44359 * seg45AccY237 rho +
            (seg45AccY237 rho - seg45AccX237 rho * (-1)) * (rho 44359 + rho 44360) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44367 * (1 - rho 44365) = rho 44362 - rho 44363 - rho 44364 := ha5
        _ = (-1) * rho 44363 - rho 44364 + (seg45AccY237 rho - seg45AccX237 rho * (-1)) * (rho 44359 + rho 44360) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX238 rho = seg45AccX237 rho - Bool.toZMod bit * (seg45AccX237 rho - rho 44366) := by
      have hd : rho 44368 = Bool.toZMod bit * (rho 44366 - seg45AccX237 rho) := by
        rw [← hbit, seg45LadderFlatX237_eq]
        unfold seg45LadderFlatX237
        linear_combination -r6140
      unfold seg45AccX238
      linear_combination hd
    have hsely : seg45AccY238 rho = seg45AccY237 rho - Bool.toZMod bit * (seg45AccY237 rho - rho 44367) := by
      have hd : rho 44369 = Bool.toZMod bit * (rho 44367 - seg45AccY237 rho) := by
        rw [← hbit, seg45LadderFlatY237_eq]
        unfold seg45LadderFlatY237
        linear_combination -r6141
      unfold seg45AccY238
      linear_combination hd
    have hd0 : rho 44359 * rho 44360 = rho 44370 := by linear_combination r6142
    have hd1 : rho 44359 * rho 44359 = rho 44371 := by linear_combination r6143
    have hd2 : rho 44360 * rho 44360 = rho 44372 := by linear_combination r6144
    have hd3 : rho 44373 * (rho 44360 * rho 44360 + rho 44359 * rho 44359 * (-1)) = 2 * (rho 44359 * rho 44360) := by
      rw [hd0, hd1, hd2]
      linear_combination r6145
    have hd4 : rho 44374 * (2 - (rho 44360 * rho 44360 + rho 44359 * rho 44359 * (-1))) = rho 44360 * rho 44360 - rho 44359 * rho 44359 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
      ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩
      ⟨(rho 44366 : Seg45.F), (rho 44367 : Seg45.F)⟩
      ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
      ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung237

theorem seg45_rung238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41186 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
        ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩
        ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
        ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨r6160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6147 Seg45.relationLc1225 Seg45.relationLc1225Part0 Seg45.relationLc1225Part1 Seg45.relationLc1225Part2 Seg45.relationLc1225Part3 Seg45.relationLc1225Part4 Seg45.relationLc1225Part5 Seg45.relationLc1225Part6 Seg45.relationLc1225Part7 Seg45.relationLc1225Part8 Seg45.relationLc1225Part9 Seg45.relationLc1225Part10 Seg45.relationLc1225Part11 Seg45.relationLc1225Part12 Seg45.relationLc1225Part13 Seg45.relationLc1225Part14 at r6147
  unfold Seg45.relationRow6148 at r6148
  unfold Seg45.relationRow6149 Seg45.relationLc1226 Seg45.relationLc1226Part0 Seg45.relationLc1226Part1 Seg45.relationLc1226Part2 Seg45.relationLc1226Part3 Seg45.relationLc1226Part4 Seg45.relationLc1226Part5 Seg45.relationLc1226Part6 Seg45.relationLc1226Part7 at r6149
  unfold Seg45.relationRow6150 Seg45.relationLc1227 Seg45.relationLc1227Part0 Seg45.relationLc1227Part1 Seg45.relationLc1227Part2 Seg45.relationLc1227Part3 Seg45.relationLc1227Part4 Seg45.relationLc1227Part5 Seg45.relationLc1227Part6 Seg45.relationLc1227Part7 at r6150
  unfold Seg45.relationRow6151 at r6151
  unfold Seg45.relationRow6152 at r6152
  unfold Seg45.relationRow6153 at r6153
  unfold Seg45.relationRow6154 Seg45.relationLc1228 Seg45.relationLc1228Part0 Seg45.relationLc1228Part1 Seg45.relationLc1228Part2 Seg45.relationLc1228Part3 Seg45.relationLc1228Part4 Seg45.relationLc1228Part5 Seg45.relationLc1228Part6 Seg45.relationLc1228Part7 at r6154
  unfold Seg45.relationRow6155 Seg45.relationLc1229 Seg45.relationLc1229Part0 Seg45.relationLc1229Part1 Seg45.relationLc1229Part2 Seg45.relationLc1229Part3 Seg45.relationLc1229Part4 Seg45.relationLc1229Part5 Seg45.relationLc1229Part6 Seg45.relationLc1229Part7 at r6155
  unfold Seg45.relationRow6156 at r6156
  unfold Seg45.relationRow6157 at r6157
  unfold Seg45.relationRow6158 at r6158
  unfold Seg45.relationRow6159 at r6159
  unfold Seg45.relationRow6160 at r6160
  have hrung238 (bit : Bool) (hbit : rho 41186 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
        ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩
        ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
        ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩ := by
    have hsum : seg45AccX238 rho + seg45AccY238 rho = rho 44375 := by
      rw [seg45LadderFlatX238_eq, seg45LadderFlatY238_eq]
      unfold seg45LadderFlatX238 seg45LadderFlatY238
      linear_combination r6147
    have ha0 : (rho 44373 + rho 44374) * (seg45AccX238 rho + seg45AccY238 rho) = rho 44376 := by
      rw [hsum]
      linear_combination r6148
    have ha1 : rho 44374 * seg45AccX238 rho = rho 44377 := by
      rw [seg45LadderFlatX238_eq]
      unfold seg45LadderFlatX238
      linear_combination r6149
    have ha2 : rho 44373 * seg45AccY238 rho = rho 44378 := by
      rw [seg45LadderFlatY238_eq]
      unfold seg45LadderFlatY238
      linear_combination r6150
    have ha3 : 3021 * rho 44377 * rho 44378 = rho 44379 := by
      linear_combination r6151
    have ha4 : rho 44380 * (1 + rho 44379) = rho 44377 + rho 44378 := by
      linear_combination r6152
    have ha5 : rho 44381 * (1 - rho 44379) = rho 44376 - rho 44377 - rho 44378 := by
      linear_combination r6153
    have haddx :
        rho 44380 * (1 + 3021 * (rho 44374 * seg45AccX238 rho) * (rho 44373 * seg45AccY238 rho)) =
          rho 44374 * seg45AccX238 rho + rho 44373 * seg45AccY238 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44381 * (1 - 3021 * (rho 44374 * seg45AccX238 rho) * (rho 44373 * seg45AccY238 rho)) =
          (-1) * (rho 44374 * seg45AccX238 rho) - rho 44373 * seg45AccY238 rho +
            (seg45AccY238 rho - seg45AccX238 rho * (-1)) * (rho 44373 + rho 44374) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44381 * (1 - rho 44379) = rho 44376 - rho 44377 - rho 44378 := ha5
        _ = (-1) * rho 44377 - rho 44378 + (seg45AccY238 rho - seg45AccX238 rho * (-1)) * (rho 44373 + rho 44374) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX239 rho = seg45AccX238 rho - Bool.toZMod bit * (seg45AccX238 rho - rho 44380) := by
      have hd : rho 44382 = Bool.toZMod bit * (rho 44380 - seg45AccX238 rho) := by
        rw [← hbit, seg45LadderFlatX238_eq]
        unfold seg45LadderFlatX238
        linear_combination -r6154
      unfold seg45AccX239
      linear_combination hd
    have hsely : seg45AccY239 rho = seg45AccY238 rho - Bool.toZMod bit * (seg45AccY238 rho - rho 44381) := by
      have hd : rho 44383 = Bool.toZMod bit * (rho 44381 - seg45AccY238 rho) := by
        rw [← hbit, seg45LadderFlatY238_eq]
        unfold seg45LadderFlatY238
        linear_combination -r6155
      unfold seg45AccY239
      linear_combination hd
    have hd0 : rho 44373 * rho 44374 = rho 44384 := by linear_combination r6156
    have hd1 : rho 44373 * rho 44373 = rho 44385 := by linear_combination r6157
    have hd2 : rho 44374 * rho 44374 = rho 44386 := by linear_combination r6158
    have hd3 : rho 44387 * (rho 44374 * rho 44374 + rho 44373 * rho 44373 * (-1)) = 2 * (rho 44373 * rho 44374) := by
      rw [hd0, hd1, hd2]
      linear_combination r6159
    have hd4 : rho 44388 * (2 - (rho 44374 * rho 44374 + rho 44373 * rho 44373 * (-1))) = rho 44374 * rho 44374 - rho 44373 * rho 44373 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
      ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩
      ⟨(rho 44380 : Seg45.F), (rho 44381 : Seg45.F)⟩
      ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
      ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung238

theorem seg45_rung239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41187 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
        ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩
        ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
        ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6161 Seg45.relationLc1230 Seg45.relationLc1230Part0 Seg45.relationLc1230Part1 Seg45.relationLc1230Part2 Seg45.relationLc1230Part3 Seg45.relationLc1230Part4 Seg45.relationLc1230Part5 Seg45.relationLc1230Part6 Seg45.relationLc1230Part7 Seg45.relationLc1230Part8 Seg45.relationLc1230Part9 Seg45.relationLc1230Part10 Seg45.relationLc1230Part11 Seg45.relationLc1230Part12 Seg45.relationLc1230Part13 Seg45.relationLc1230Part14 at r6161
  unfold Seg45.relationRow6162 at r6162
  unfold Seg45.relationRow6163 Seg45.relationLc1231 Seg45.relationLc1231Part0 Seg45.relationLc1231Part1 Seg45.relationLc1231Part2 Seg45.relationLc1231Part3 Seg45.relationLc1231Part4 Seg45.relationLc1231Part5 Seg45.relationLc1231Part6 Seg45.relationLc1231Part7 at r6163
  unfold Seg45.relationRow6164 Seg45.relationLc1232 Seg45.relationLc1232Part0 Seg45.relationLc1232Part1 Seg45.relationLc1232Part2 Seg45.relationLc1232Part3 Seg45.relationLc1232Part4 Seg45.relationLc1232Part5 Seg45.relationLc1232Part6 Seg45.relationLc1232Part7 at r6164
  unfold Seg45.relationRow6165 at r6165
  unfold Seg45.relationRow6166 at r6166
  unfold Seg45.relationRow6167 at r6167
  unfold Seg45.relationRow6168 Seg45.relationLc1233 Seg45.relationLc1233Part0 Seg45.relationLc1233Part1 Seg45.relationLc1233Part2 Seg45.relationLc1233Part3 Seg45.relationLc1233Part4 Seg45.relationLc1233Part5 Seg45.relationLc1233Part6 Seg45.relationLc1233Part7 at r6168
  unfold Seg45.relationRow6169 Seg45.relationLc1234 Seg45.relationLc1234Part0 Seg45.relationLc1234Part1 Seg45.relationLc1234Part2 Seg45.relationLc1234Part3 Seg45.relationLc1234Part4 Seg45.relationLc1234Part5 Seg45.relationLc1234Part6 Seg45.relationLc1234Part7 at r6169
  unfold Seg45.relationRow6170 at r6170
  unfold Seg45.relationRow6171 at r6171
  unfold Seg45.relationRow6172 at r6172
  unfold Seg45.relationRow6173 at r6173
  unfold Seg45.relationRow6174 at r6174
  have hrung239 (bit : Bool) (hbit : rho 41187 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
        ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩
        ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
        ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩ := by
    have hsum : seg45AccX239 rho + seg45AccY239 rho = rho 44389 := by
      rw [seg45LadderFlatX239_eq, seg45LadderFlatY239_eq]
      unfold seg45LadderFlatX239 seg45LadderFlatY239
      linear_combination r6161
    have ha0 : (rho 44387 + rho 44388) * (seg45AccX239 rho + seg45AccY239 rho) = rho 44390 := by
      rw [hsum]
      linear_combination r6162
    have ha1 : rho 44388 * seg45AccX239 rho = rho 44391 := by
      rw [seg45LadderFlatX239_eq]
      unfold seg45LadderFlatX239
      linear_combination r6163
    have ha2 : rho 44387 * seg45AccY239 rho = rho 44392 := by
      rw [seg45LadderFlatY239_eq]
      unfold seg45LadderFlatY239
      linear_combination r6164
    have ha3 : 3021 * rho 44391 * rho 44392 = rho 44393 := by
      linear_combination r6165
    have ha4 : rho 44394 * (1 + rho 44393) = rho 44391 + rho 44392 := by
      linear_combination r6166
    have ha5 : rho 44395 * (1 - rho 44393) = rho 44390 - rho 44391 - rho 44392 := by
      linear_combination r6167
    have haddx :
        rho 44394 * (1 + 3021 * (rho 44388 * seg45AccX239 rho) * (rho 44387 * seg45AccY239 rho)) =
          rho 44388 * seg45AccX239 rho + rho 44387 * seg45AccY239 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44395 * (1 - 3021 * (rho 44388 * seg45AccX239 rho) * (rho 44387 * seg45AccY239 rho)) =
          (-1) * (rho 44388 * seg45AccX239 rho) - rho 44387 * seg45AccY239 rho +
            (seg45AccY239 rho - seg45AccX239 rho * (-1)) * (rho 44387 + rho 44388) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44395 * (1 - rho 44393) = rho 44390 - rho 44391 - rho 44392 := ha5
        _ = (-1) * rho 44391 - rho 44392 + (seg45AccY239 rho - seg45AccX239 rho * (-1)) * (rho 44387 + rho 44388) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX240 rho = seg45AccX239 rho - Bool.toZMod bit * (seg45AccX239 rho - rho 44394) := by
      have hd : rho 44396 = Bool.toZMod bit * (rho 44394 - seg45AccX239 rho) := by
        rw [← hbit, seg45LadderFlatX239_eq]
        unfold seg45LadderFlatX239
        linear_combination -r6168
      unfold seg45AccX240
      linear_combination hd
    have hsely : seg45AccY240 rho = seg45AccY239 rho - Bool.toZMod bit * (seg45AccY239 rho - rho 44395) := by
      have hd : rho 44397 = Bool.toZMod bit * (rho 44395 - seg45AccY239 rho) := by
        rw [← hbit, seg45LadderFlatY239_eq]
        unfold seg45LadderFlatY239
        linear_combination -r6169
      unfold seg45AccY240
      linear_combination hd
    have hd0 : rho 44387 * rho 44388 = rho 44398 := by linear_combination r6170
    have hd1 : rho 44387 * rho 44387 = rho 44399 := by linear_combination r6171
    have hd2 : rho 44388 * rho 44388 = rho 44400 := by linear_combination r6172
    have hd3 : rho 44401 * (rho 44388 * rho 44388 + rho 44387 * rho 44387 * (-1)) = 2 * (rho 44387 * rho 44388) := by
      rw [hd0, hd1, hd2]
      linear_combination r6173
    have hd4 : rho 44402 * (2 - (rho 44388 * rho 44388 + rho 44387 * rho 44387 * (-1))) = rho 44388 * rho 44388 - rho 44387 * rho 44387 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6174
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
      ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩
      ⟨(rho 44394 : Seg45.F), (rho 44395 : Seg45.F)⟩
      ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
      ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung239

theorem seg45_rung240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41188 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
        ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩
        ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
        ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6175 Seg45.relationLc1235 Seg45.relationLc1235Part0 Seg45.relationLc1235Part1 Seg45.relationLc1235Part2 Seg45.relationLc1235Part3 Seg45.relationLc1235Part4 Seg45.relationLc1235Part5 Seg45.relationLc1235Part6 Seg45.relationLc1235Part7 Seg45.relationLc1235Part8 Seg45.relationLc1235Part9 Seg45.relationLc1235Part10 Seg45.relationLc1235Part11 Seg45.relationLc1235Part12 Seg45.relationLc1235Part13 Seg45.relationLc1235Part14 Seg45.relationLc1235Part15 at r6175
  unfold Seg45.relationRow6176 at r6176
  unfold Seg45.relationRow6177 Seg45.relationLc1236 Seg45.relationLc1236Part0 Seg45.relationLc1236Part1 Seg45.relationLc1236Part2 Seg45.relationLc1236Part3 Seg45.relationLc1236Part4 Seg45.relationLc1236Part5 Seg45.relationLc1236Part6 Seg45.relationLc1236Part7 at r6177
  unfold Seg45.relationRow6178 Seg45.relationLc1237 Seg45.relationLc1237Part0 Seg45.relationLc1237Part1 Seg45.relationLc1237Part2 Seg45.relationLc1237Part3 Seg45.relationLc1237Part4 Seg45.relationLc1237Part5 Seg45.relationLc1237Part6 Seg45.relationLc1237Part7 at r6178
  unfold Seg45.relationRow6179 at r6179
  unfold Seg45.relationRow6180 at r6180
  unfold Seg45.relationRow6181 at r6181
  unfold Seg45.relationRow6182 Seg45.relationLc1238 Seg45.relationLc1238Part0 Seg45.relationLc1238Part1 Seg45.relationLc1238Part2 Seg45.relationLc1238Part3 Seg45.relationLc1238Part4 Seg45.relationLc1238Part5 Seg45.relationLc1238Part6 Seg45.relationLc1238Part7 at r6182
  unfold Seg45.relationRow6183 Seg45.relationLc1239 Seg45.relationLc1239Part0 Seg45.relationLc1239Part1 Seg45.relationLc1239Part2 Seg45.relationLc1239Part3 Seg45.relationLc1239Part4 Seg45.relationLc1239Part5 Seg45.relationLc1239Part6 Seg45.relationLc1239Part7 at r6183
  unfold Seg45.relationRow6184 at r6184
  unfold Seg45.relationRow6185 at r6185
  unfold Seg45.relationRow6186 at r6186
  unfold Seg45.relationRow6187 at r6187
  unfold Seg45.relationRow6188 at r6188
  have hrung240 (bit : Bool) (hbit : rho 41188 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
        ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩
        ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
        ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩ := by
    have hsum : seg45AccX240 rho + seg45AccY240 rho = rho 44403 := by
      rw [seg45LadderFlatX240_eq, seg45LadderFlatY240_eq]
      unfold seg45LadderFlatX240 seg45LadderFlatY240
      linear_combination r6175
    have ha0 : (rho 44401 + rho 44402) * (seg45AccX240 rho + seg45AccY240 rho) = rho 44404 := by
      rw [hsum]
      linear_combination r6176
    have ha1 : rho 44402 * seg45AccX240 rho = rho 44405 := by
      rw [seg45LadderFlatX240_eq]
      unfold seg45LadderFlatX240
      linear_combination r6177
    have ha2 : rho 44401 * seg45AccY240 rho = rho 44406 := by
      rw [seg45LadderFlatY240_eq]
      unfold seg45LadderFlatY240
      linear_combination r6178
    have ha3 : 3021 * rho 44405 * rho 44406 = rho 44407 := by
      linear_combination r6179
    have ha4 : rho 44408 * (1 + rho 44407) = rho 44405 + rho 44406 := by
      linear_combination r6180
    have ha5 : rho 44409 * (1 - rho 44407) = rho 44404 - rho 44405 - rho 44406 := by
      linear_combination r6181
    have haddx :
        rho 44408 * (1 + 3021 * (rho 44402 * seg45AccX240 rho) * (rho 44401 * seg45AccY240 rho)) =
          rho 44402 * seg45AccX240 rho + rho 44401 * seg45AccY240 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44409 * (1 - 3021 * (rho 44402 * seg45AccX240 rho) * (rho 44401 * seg45AccY240 rho)) =
          (-1) * (rho 44402 * seg45AccX240 rho) - rho 44401 * seg45AccY240 rho +
            (seg45AccY240 rho - seg45AccX240 rho * (-1)) * (rho 44401 + rho 44402) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44409 * (1 - rho 44407) = rho 44404 - rho 44405 - rho 44406 := ha5
        _ = (-1) * rho 44405 - rho 44406 + (seg45AccY240 rho - seg45AccX240 rho * (-1)) * (rho 44401 + rho 44402) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX241 rho = seg45AccX240 rho - Bool.toZMod bit * (seg45AccX240 rho - rho 44408) := by
      have hd : rho 44410 = Bool.toZMod bit * (rho 44408 - seg45AccX240 rho) := by
        rw [← hbit, seg45LadderFlatX240_eq]
        unfold seg45LadderFlatX240
        linear_combination -r6182
      unfold seg45AccX241
      linear_combination hd
    have hsely : seg45AccY241 rho = seg45AccY240 rho - Bool.toZMod bit * (seg45AccY240 rho - rho 44409) := by
      have hd : rho 44411 = Bool.toZMod bit * (rho 44409 - seg45AccY240 rho) := by
        rw [← hbit, seg45LadderFlatY240_eq]
        unfold seg45LadderFlatY240
        linear_combination -r6183
      unfold seg45AccY241
      linear_combination hd
    have hd0 : rho 44401 * rho 44402 = rho 44412 := by linear_combination r6184
    have hd1 : rho 44401 * rho 44401 = rho 44413 := by linear_combination r6185
    have hd2 : rho 44402 * rho 44402 = rho 44414 := by linear_combination r6186
    have hd3 : rho 44415 * (rho 44402 * rho 44402 + rho 44401 * rho 44401 * (-1)) = 2 * (rho 44401 * rho 44402) := by
      rw [hd0, hd1, hd2]
      linear_combination r6187
    have hd4 : rho 44416 * (2 - (rho 44402 * rho 44402 + rho 44401 * rho 44401 * (-1))) = rho 44402 * rho 44402 - rho 44401 * rho 44401 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6188
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
      ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩
      ⟨(rho 44408 : Seg45.F), (rho 44409 : Seg45.F)⟩
      ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
      ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung240

theorem seg45_rung241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41189 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
        ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩
        ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
        ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6189 Seg45.relationLc1240 Seg45.relationLc1240Part0 Seg45.relationLc1240Part1 Seg45.relationLc1240Part2 Seg45.relationLc1240Part3 Seg45.relationLc1240Part4 Seg45.relationLc1240Part5 Seg45.relationLc1240Part6 Seg45.relationLc1240Part7 Seg45.relationLc1240Part8 Seg45.relationLc1240Part9 Seg45.relationLc1240Part10 Seg45.relationLc1240Part11 Seg45.relationLc1240Part12 Seg45.relationLc1240Part13 Seg45.relationLc1240Part14 Seg45.relationLc1240Part15 at r6189
  unfold Seg45.relationRow6190 at r6190
  unfold Seg45.relationRow6191 Seg45.relationLc1241 Seg45.relationLc1241Part0 Seg45.relationLc1241Part1 Seg45.relationLc1241Part2 Seg45.relationLc1241Part3 Seg45.relationLc1241Part4 Seg45.relationLc1241Part5 Seg45.relationLc1241Part6 Seg45.relationLc1241Part7 at r6191
  unfold Seg45.relationRow6192 Seg45.relationLc1242 Seg45.relationLc1242Part0 Seg45.relationLc1242Part1 Seg45.relationLc1242Part2 Seg45.relationLc1242Part3 Seg45.relationLc1242Part4 Seg45.relationLc1242Part5 Seg45.relationLc1242Part6 Seg45.relationLc1242Part7 at r6192
  unfold Seg45.relationRow6193 at r6193
  unfold Seg45.relationRow6194 at r6194
  unfold Seg45.relationRow6195 at r6195
  unfold Seg45.relationRow6196 Seg45.relationLc1243 Seg45.relationLc1243Part0 Seg45.relationLc1243Part1 Seg45.relationLc1243Part2 Seg45.relationLc1243Part3 Seg45.relationLc1243Part4 Seg45.relationLc1243Part5 Seg45.relationLc1243Part6 Seg45.relationLc1243Part7 at r6196
  unfold Seg45.relationRow6197 Seg45.relationLc1244 Seg45.relationLc1244Part0 Seg45.relationLc1244Part1 Seg45.relationLc1244Part2 Seg45.relationLc1244Part3 Seg45.relationLc1244Part4 Seg45.relationLc1244Part5 Seg45.relationLc1244Part6 Seg45.relationLc1244Part7 at r6197
  unfold Seg45.relationRow6198 at r6198
  unfold Seg45.relationRow6199 at r6199
  unfold Seg45.relationRow6200 at r6200
  unfold Seg45.relationRow6201 at r6201
  unfold Seg45.relationRow6202 at r6202
  have hrung241 (bit : Bool) (hbit : rho 41189 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
        ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩
        ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
        ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩ := by
    have hsum : seg45AccX241 rho + seg45AccY241 rho = rho 44417 := by
      rw [seg45LadderFlatX241_eq, seg45LadderFlatY241_eq]
      unfold seg45LadderFlatX241 seg45LadderFlatY241
      linear_combination r6189
    have ha0 : (rho 44415 + rho 44416) * (seg45AccX241 rho + seg45AccY241 rho) = rho 44418 := by
      rw [hsum]
      linear_combination r6190
    have ha1 : rho 44416 * seg45AccX241 rho = rho 44419 := by
      rw [seg45LadderFlatX241_eq]
      unfold seg45LadderFlatX241
      linear_combination r6191
    have ha2 : rho 44415 * seg45AccY241 rho = rho 44420 := by
      rw [seg45LadderFlatY241_eq]
      unfold seg45LadderFlatY241
      linear_combination r6192
    have ha3 : 3021 * rho 44419 * rho 44420 = rho 44421 := by
      linear_combination r6193
    have ha4 : rho 44422 * (1 + rho 44421) = rho 44419 + rho 44420 := by
      linear_combination r6194
    have ha5 : rho 44423 * (1 - rho 44421) = rho 44418 - rho 44419 - rho 44420 := by
      linear_combination r6195
    have haddx :
        rho 44422 * (1 + 3021 * (rho 44416 * seg45AccX241 rho) * (rho 44415 * seg45AccY241 rho)) =
          rho 44416 * seg45AccX241 rho + rho 44415 * seg45AccY241 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44423 * (1 - 3021 * (rho 44416 * seg45AccX241 rho) * (rho 44415 * seg45AccY241 rho)) =
          (-1) * (rho 44416 * seg45AccX241 rho) - rho 44415 * seg45AccY241 rho +
            (seg45AccY241 rho - seg45AccX241 rho * (-1)) * (rho 44415 + rho 44416) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44423 * (1 - rho 44421) = rho 44418 - rho 44419 - rho 44420 := ha5
        _ = (-1) * rho 44419 - rho 44420 + (seg45AccY241 rho - seg45AccX241 rho * (-1)) * (rho 44415 + rho 44416) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX242 rho = seg45AccX241 rho - Bool.toZMod bit * (seg45AccX241 rho - rho 44422) := by
      have hd : rho 44424 = Bool.toZMod bit * (rho 44422 - seg45AccX241 rho) := by
        rw [← hbit, seg45LadderFlatX241_eq]
        unfold seg45LadderFlatX241
        linear_combination -r6196
      unfold seg45AccX242
      linear_combination hd
    have hsely : seg45AccY242 rho = seg45AccY241 rho - Bool.toZMod bit * (seg45AccY241 rho - rho 44423) := by
      have hd : rho 44425 = Bool.toZMod bit * (rho 44423 - seg45AccY241 rho) := by
        rw [← hbit, seg45LadderFlatY241_eq]
        unfold seg45LadderFlatY241
        linear_combination -r6197
      unfold seg45AccY242
      linear_combination hd
    have hd0 : rho 44415 * rho 44416 = rho 44426 := by linear_combination r6198
    have hd1 : rho 44415 * rho 44415 = rho 44427 := by linear_combination r6199
    have hd2 : rho 44416 * rho 44416 = rho 44428 := by linear_combination r6200
    have hd3 : rho 44429 * (rho 44416 * rho 44416 + rho 44415 * rho 44415 * (-1)) = 2 * (rho 44415 * rho 44416) := by
      rw [hd0, hd1, hd2]
      linear_combination r6201
    have hd4 : rho 44430 * (2 - (rho 44416 * rho 44416 + rho 44415 * rho 44415 * (-1))) = rho 44416 * rho 44416 - rho 44415 * rho 44415 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6202
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
      ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩
      ⟨(rho 44422 : Seg45.F), (rho 44423 : Seg45.F)⟩
      ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
      ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung241

theorem seg45_rung242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41190 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
        ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩
        ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
        ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6203 Seg45.relationLc1245 Seg45.relationLc1245Part0 Seg45.relationLc1245Part1 Seg45.relationLc1245Part2 Seg45.relationLc1245Part3 Seg45.relationLc1245Part4 Seg45.relationLc1245Part5 Seg45.relationLc1245Part6 Seg45.relationLc1245Part7 Seg45.relationLc1245Part8 Seg45.relationLc1245Part9 Seg45.relationLc1245Part10 Seg45.relationLc1245Part11 Seg45.relationLc1245Part12 Seg45.relationLc1245Part13 Seg45.relationLc1245Part14 Seg45.relationLc1245Part15 at r6203
  unfold Seg45.relationRow6204 at r6204
  unfold Seg45.relationRow6205 Seg45.relationLc1246 Seg45.relationLc1246Part0 Seg45.relationLc1246Part1 Seg45.relationLc1246Part2 Seg45.relationLc1246Part3 Seg45.relationLc1246Part4 Seg45.relationLc1246Part5 Seg45.relationLc1246Part6 Seg45.relationLc1246Part7 at r6205
  unfold Seg45.relationRow6206 Seg45.relationLc1247 Seg45.relationLc1247Part0 Seg45.relationLc1247Part1 Seg45.relationLc1247Part2 Seg45.relationLc1247Part3 Seg45.relationLc1247Part4 Seg45.relationLc1247Part5 Seg45.relationLc1247Part6 Seg45.relationLc1247Part7 at r6206
  unfold Seg45.relationRow6207 at r6207
  unfold Seg45.relationRow6208 at r6208
  unfold Seg45.relationRow6209 at r6209
  unfold Seg45.relationRow6210 Seg45.relationLc1248 Seg45.relationLc1248Part0 Seg45.relationLc1248Part1 Seg45.relationLc1248Part2 Seg45.relationLc1248Part3 Seg45.relationLc1248Part4 Seg45.relationLc1248Part5 Seg45.relationLc1248Part6 Seg45.relationLc1248Part7 at r6210
  unfold Seg45.relationRow6211 Seg45.relationLc1249 Seg45.relationLc1249Part0 Seg45.relationLc1249Part1 Seg45.relationLc1249Part2 Seg45.relationLc1249Part3 Seg45.relationLc1249Part4 Seg45.relationLc1249Part5 Seg45.relationLc1249Part6 Seg45.relationLc1249Part7 at r6211
  unfold Seg45.relationRow6212 at r6212
  unfold Seg45.relationRow6213 at r6213
  unfold Seg45.relationRow6214 at r6214
  unfold Seg45.relationRow6215 at r6215
  unfold Seg45.relationRow6216 at r6216
  have hrung242 (bit : Bool) (hbit : rho 41190 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
        ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩
        ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
        ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩ := by
    have hsum : seg45AccX242 rho + seg45AccY242 rho = rho 44431 := by
      rw [seg45LadderFlatX242_eq, seg45LadderFlatY242_eq]
      unfold seg45LadderFlatX242 seg45LadderFlatY242
      linear_combination r6203
    have ha0 : (rho 44429 + rho 44430) * (seg45AccX242 rho + seg45AccY242 rho) = rho 44432 := by
      rw [hsum]
      linear_combination r6204
    have ha1 : rho 44430 * seg45AccX242 rho = rho 44433 := by
      rw [seg45LadderFlatX242_eq]
      unfold seg45LadderFlatX242
      linear_combination r6205
    have ha2 : rho 44429 * seg45AccY242 rho = rho 44434 := by
      rw [seg45LadderFlatY242_eq]
      unfold seg45LadderFlatY242
      linear_combination r6206
    have ha3 : 3021 * rho 44433 * rho 44434 = rho 44435 := by
      linear_combination r6207
    have ha4 : rho 44436 * (1 + rho 44435) = rho 44433 + rho 44434 := by
      linear_combination r6208
    have ha5 : rho 44437 * (1 - rho 44435) = rho 44432 - rho 44433 - rho 44434 := by
      linear_combination r6209
    have haddx :
        rho 44436 * (1 + 3021 * (rho 44430 * seg45AccX242 rho) * (rho 44429 * seg45AccY242 rho)) =
          rho 44430 * seg45AccX242 rho + rho 44429 * seg45AccY242 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44437 * (1 - 3021 * (rho 44430 * seg45AccX242 rho) * (rho 44429 * seg45AccY242 rho)) =
          (-1) * (rho 44430 * seg45AccX242 rho) - rho 44429 * seg45AccY242 rho +
            (seg45AccY242 rho - seg45AccX242 rho * (-1)) * (rho 44429 + rho 44430) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44437 * (1 - rho 44435) = rho 44432 - rho 44433 - rho 44434 := ha5
        _ = (-1) * rho 44433 - rho 44434 + (seg45AccY242 rho - seg45AccX242 rho * (-1)) * (rho 44429 + rho 44430) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX243 rho = seg45AccX242 rho - Bool.toZMod bit * (seg45AccX242 rho - rho 44436) := by
      have hd : rho 44438 = Bool.toZMod bit * (rho 44436 - seg45AccX242 rho) := by
        rw [← hbit, seg45LadderFlatX242_eq]
        unfold seg45LadderFlatX242
        linear_combination -r6210
      unfold seg45AccX243
      linear_combination hd
    have hsely : seg45AccY243 rho = seg45AccY242 rho - Bool.toZMod bit * (seg45AccY242 rho - rho 44437) := by
      have hd : rho 44439 = Bool.toZMod bit * (rho 44437 - seg45AccY242 rho) := by
        rw [← hbit, seg45LadderFlatY242_eq]
        unfold seg45LadderFlatY242
        linear_combination -r6211
      unfold seg45AccY243
      linear_combination hd
    have hd0 : rho 44429 * rho 44430 = rho 44440 := by linear_combination r6212
    have hd1 : rho 44429 * rho 44429 = rho 44441 := by linear_combination r6213
    have hd2 : rho 44430 * rho 44430 = rho 44442 := by linear_combination r6214
    have hd3 : rho 44443 * (rho 44430 * rho 44430 + rho 44429 * rho 44429 * (-1)) = 2 * (rho 44429 * rho 44430) := by
      rw [hd0, hd1, hd2]
      linear_combination r6215
    have hd4 : rho 44444 * (2 - (rho 44430 * rho 44430 + rho 44429 * rho 44429 * (-1))) = rho 44430 * rho 44430 - rho 44429 * rho 44429 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6216
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
      ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩
      ⟨(rho 44436 : Seg45.F), (rho 44437 : Seg45.F)⟩
      ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
      ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung242

theorem seg45_rung243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41191 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
        ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩
        ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
        ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6217 Seg45.relationLc1250 Seg45.relationLc1250Part0 Seg45.relationLc1250Part1 Seg45.relationLc1250Part2 Seg45.relationLc1250Part3 Seg45.relationLc1250Part4 Seg45.relationLc1250Part5 Seg45.relationLc1250Part6 Seg45.relationLc1250Part7 Seg45.relationLc1250Part8 Seg45.relationLc1250Part9 Seg45.relationLc1250Part10 Seg45.relationLc1250Part11 Seg45.relationLc1250Part12 Seg45.relationLc1250Part13 Seg45.relationLc1250Part14 Seg45.relationLc1250Part15 at r6217
  unfold Seg45.relationRow6218 at r6218
  unfold Seg45.relationRow6219 Seg45.relationLc1251 Seg45.relationLc1251Part0 Seg45.relationLc1251Part1 Seg45.relationLc1251Part2 Seg45.relationLc1251Part3 Seg45.relationLc1251Part4 Seg45.relationLc1251Part5 Seg45.relationLc1251Part6 Seg45.relationLc1251Part7 at r6219
  unfold Seg45.relationRow6220 Seg45.relationLc1252 Seg45.relationLc1252Part0 Seg45.relationLc1252Part1 Seg45.relationLc1252Part2 Seg45.relationLc1252Part3 Seg45.relationLc1252Part4 Seg45.relationLc1252Part5 Seg45.relationLc1252Part6 Seg45.relationLc1252Part7 at r6220
  unfold Seg45.relationRow6221 at r6221
  unfold Seg45.relationRow6222 at r6222
  unfold Seg45.relationRow6223 at r6223
  unfold Seg45.relationRow6224 Seg45.relationLc1253 Seg45.relationLc1253Part0 Seg45.relationLc1253Part1 Seg45.relationLc1253Part2 Seg45.relationLc1253Part3 Seg45.relationLc1253Part4 Seg45.relationLc1253Part5 Seg45.relationLc1253Part6 Seg45.relationLc1253Part7 at r6224
  unfold Seg45.relationRow6225 Seg45.relationLc1254 Seg45.relationLc1254Part0 Seg45.relationLc1254Part1 Seg45.relationLc1254Part2 Seg45.relationLc1254Part3 Seg45.relationLc1254Part4 Seg45.relationLc1254Part5 Seg45.relationLc1254Part6 Seg45.relationLc1254Part7 at r6225
  unfold Seg45.relationRow6226 at r6226
  unfold Seg45.relationRow6227 at r6227
  unfold Seg45.relationRow6228 at r6228
  unfold Seg45.relationRow6229 at r6229
  unfold Seg45.relationRow6230 at r6230
  have hrung243 (bit : Bool) (hbit : rho 41191 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
        ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩
        ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
        ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩ := by
    have hsum : seg45AccX243 rho + seg45AccY243 rho = rho 44445 := by
      rw [seg45LadderFlatX243_eq, seg45LadderFlatY243_eq]
      unfold seg45LadderFlatX243 seg45LadderFlatY243
      linear_combination r6217
    have ha0 : (rho 44443 + rho 44444) * (seg45AccX243 rho + seg45AccY243 rho) = rho 44446 := by
      rw [hsum]
      linear_combination r6218
    have ha1 : rho 44444 * seg45AccX243 rho = rho 44447 := by
      rw [seg45LadderFlatX243_eq]
      unfold seg45LadderFlatX243
      linear_combination r6219
    have ha2 : rho 44443 * seg45AccY243 rho = rho 44448 := by
      rw [seg45LadderFlatY243_eq]
      unfold seg45LadderFlatY243
      linear_combination r6220
    have ha3 : 3021 * rho 44447 * rho 44448 = rho 44449 := by
      linear_combination r6221
    have ha4 : rho 44450 * (1 + rho 44449) = rho 44447 + rho 44448 := by
      linear_combination r6222
    have ha5 : rho 44451 * (1 - rho 44449) = rho 44446 - rho 44447 - rho 44448 := by
      linear_combination r6223
    have haddx :
        rho 44450 * (1 + 3021 * (rho 44444 * seg45AccX243 rho) * (rho 44443 * seg45AccY243 rho)) =
          rho 44444 * seg45AccX243 rho + rho 44443 * seg45AccY243 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44451 * (1 - 3021 * (rho 44444 * seg45AccX243 rho) * (rho 44443 * seg45AccY243 rho)) =
          (-1) * (rho 44444 * seg45AccX243 rho) - rho 44443 * seg45AccY243 rho +
            (seg45AccY243 rho - seg45AccX243 rho * (-1)) * (rho 44443 + rho 44444) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44451 * (1 - rho 44449) = rho 44446 - rho 44447 - rho 44448 := ha5
        _ = (-1) * rho 44447 - rho 44448 + (seg45AccY243 rho - seg45AccX243 rho * (-1)) * (rho 44443 + rho 44444) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX244 rho = seg45AccX243 rho - Bool.toZMod bit * (seg45AccX243 rho - rho 44450) := by
      have hd : rho 44452 = Bool.toZMod bit * (rho 44450 - seg45AccX243 rho) := by
        rw [← hbit, seg45LadderFlatX243_eq]
        unfold seg45LadderFlatX243
        linear_combination -r6224
      unfold seg45AccX244
      linear_combination hd
    have hsely : seg45AccY244 rho = seg45AccY243 rho - Bool.toZMod bit * (seg45AccY243 rho - rho 44451) := by
      have hd : rho 44453 = Bool.toZMod bit * (rho 44451 - seg45AccY243 rho) := by
        rw [← hbit, seg45LadderFlatY243_eq]
        unfold seg45LadderFlatY243
        linear_combination -r6225
      unfold seg45AccY244
      linear_combination hd
    have hd0 : rho 44443 * rho 44444 = rho 44454 := by linear_combination r6226
    have hd1 : rho 44443 * rho 44443 = rho 44455 := by linear_combination r6227
    have hd2 : rho 44444 * rho 44444 = rho 44456 := by linear_combination r6228
    have hd3 : rho 44457 * (rho 44444 * rho 44444 + rho 44443 * rho 44443 * (-1)) = 2 * (rho 44443 * rho 44444) := by
      rw [hd0, hd1, hd2]
      linear_combination r6229
    have hd4 : rho 44458 * (2 - (rho 44444 * rho 44444 + rho 44443 * rho 44443 * (-1))) = rho 44444 * rho 44444 - rho 44443 * rho 44443 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6230
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
      ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩
      ⟨(rho 44450 : Seg45.F), (rho 44451 : Seg45.F)⟩
      ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
      ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung243

theorem seg45_rung244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41192 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
        ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩
        ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
        ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6231 Seg45.relationLc1255 Seg45.relationLc1255Part0 Seg45.relationLc1255Part1 Seg45.relationLc1255Part2 Seg45.relationLc1255Part3 Seg45.relationLc1255Part4 Seg45.relationLc1255Part5 Seg45.relationLc1255Part6 Seg45.relationLc1255Part7 Seg45.relationLc1255Part8 Seg45.relationLc1255Part9 Seg45.relationLc1255Part10 Seg45.relationLc1255Part11 Seg45.relationLc1255Part12 Seg45.relationLc1255Part13 Seg45.relationLc1255Part14 Seg45.relationLc1255Part15 at r6231
  unfold Seg45.relationRow6232 at r6232
  unfold Seg45.relationRow6233 Seg45.relationLc1256 Seg45.relationLc1256Part0 Seg45.relationLc1256Part1 Seg45.relationLc1256Part2 Seg45.relationLc1256Part3 Seg45.relationLc1256Part4 Seg45.relationLc1256Part5 Seg45.relationLc1256Part6 Seg45.relationLc1256Part7 at r6233
  unfold Seg45.relationRow6234 Seg45.relationLc1257 Seg45.relationLc1257Part0 Seg45.relationLc1257Part1 Seg45.relationLc1257Part2 Seg45.relationLc1257Part3 Seg45.relationLc1257Part4 Seg45.relationLc1257Part5 Seg45.relationLc1257Part6 Seg45.relationLc1257Part7 at r6234
  unfold Seg45.relationRow6235 at r6235
  unfold Seg45.relationRow6236 at r6236
  unfold Seg45.relationRow6237 at r6237
  unfold Seg45.relationRow6238 Seg45.relationLc1258 Seg45.relationLc1258Part0 Seg45.relationLc1258Part1 Seg45.relationLc1258Part2 Seg45.relationLc1258Part3 Seg45.relationLc1258Part4 Seg45.relationLc1258Part5 Seg45.relationLc1258Part6 Seg45.relationLc1258Part7 at r6238
  unfold Seg45.relationRow6239 Seg45.relationLc1259 Seg45.relationLc1259Part0 Seg45.relationLc1259Part1 Seg45.relationLc1259Part2 Seg45.relationLc1259Part3 Seg45.relationLc1259Part4 Seg45.relationLc1259Part5 Seg45.relationLc1259Part6 Seg45.relationLc1259Part7 at r6239
  unfold Seg45.relationRow6240 at r6240
  unfold Seg45.relationRow6241 at r6241
  unfold Seg45.relationRow6242 at r6242
  unfold Seg45.relationRow6243 at r6243
  unfold Seg45.relationRow6244 at r6244
  have hrung244 (bit : Bool) (hbit : rho 41192 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
        ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩
        ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
        ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩ := by
    have hsum : seg45AccX244 rho + seg45AccY244 rho = rho 44459 := by
      rw [seg45LadderFlatX244_eq, seg45LadderFlatY244_eq]
      unfold seg45LadderFlatX244 seg45LadderFlatY244
      linear_combination r6231
    have ha0 : (rho 44457 + rho 44458) * (seg45AccX244 rho + seg45AccY244 rho) = rho 44460 := by
      rw [hsum]
      linear_combination r6232
    have ha1 : rho 44458 * seg45AccX244 rho = rho 44461 := by
      rw [seg45LadderFlatX244_eq]
      unfold seg45LadderFlatX244
      linear_combination r6233
    have ha2 : rho 44457 * seg45AccY244 rho = rho 44462 := by
      rw [seg45LadderFlatY244_eq]
      unfold seg45LadderFlatY244
      linear_combination r6234
    have ha3 : 3021 * rho 44461 * rho 44462 = rho 44463 := by
      linear_combination r6235
    have ha4 : rho 44464 * (1 + rho 44463) = rho 44461 + rho 44462 := by
      linear_combination r6236
    have ha5 : rho 44465 * (1 - rho 44463) = rho 44460 - rho 44461 - rho 44462 := by
      linear_combination r6237
    have haddx :
        rho 44464 * (1 + 3021 * (rho 44458 * seg45AccX244 rho) * (rho 44457 * seg45AccY244 rho)) =
          rho 44458 * seg45AccX244 rho + rho 44457 * seg45AccY244 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44465 * (1 - 3021 * (rho 44458 * seg45AccX244 rho) * (rho 44457 * seg45AccY244 rho)) =
          (-1) * (rho 44458 * seg45AccX244 rho) - rho 44457 * seg45AccY244 rho +
            (seg45AccY244 rho - seg45AccX244 rho * (-1)) * (rho 44457 + rho 44458) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44465 * (1 - rho 44463) = rho 44460 - rho 44461 - rho 44462 := ha5
        _ = (-1) * rho 44461 - rho 44462 + (seg45AccY244 rho - seg45AccX244 rho * (-1)) * (rho 44457 + rho 44458) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX245 rho = seg45AccX244 rho - Bool.toZMod bit * (seg45AccX244 rho - rho 44464) := by
      have hd : rho 44466 = Bool.toZMod bit * (rho 44464 - seg45AccX244 rho) := by
        rw [← hbit, seg45LadderFlatX244_eq]
        unfold seg45LadderFlatX244
        linear_combination -r6238
      unfold seg45AccX245
      linear_combination hd
    have hsely : seg45AccY245 rho = seg45AccY244 rho - Bool.toZMod bit * (seg45AccY244 rho - rho 44465) := by
      have hd : rho 44467 = Bool.toZMod bit * (rho 44465 - seg45AccY244 rho) := by
        rw [← hbit, seg45LadderFlatY244_eq]
        unfold seg45LadderFlatY244
        linear_combination -r6239
      unfold seg45AccY245
      linear_combination hd
    have hd0 : rho 44457 * rho 44458 = rho 44468 := by linear_combination r6240
    have hd1 : rho 44457 * rho 44457 = rho 44469 := by linear_combination r6241
    have hd2 : rho 44458 * rho 44458 = rho 44470 := by linear_combination r6242
    have hd3 : rho 44471 * (rho 44458 * rho 44458 + rho 44457 * rho 44457 * (-1)) = 2 * (rho 44457 * rho 44458) := by
      rw [hd0, hd1, hd2]
      linear_combination r6243
    have hd4 : rho 44472 * (2 - (rho 44458 * rho 44458 + rho 44457 * rho 44457 * (-1))) = rho 44458 * rho 44458 - rho 44457 * rho 44457 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6244
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
      ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩
      ⟨(rho 44464 : Seg45.F), (rho 44465 : Seg45.F)⟩
      ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
      ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung244

theorem seg45_rung245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41193 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
        ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩
        ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
        ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6245 Seg45.relationLc1260 Seg45.relationLc1260Part0 Seg45.relationLc1260Part1 Seg45.relationLc1260Part2 Seg45.relationLc1260Part3 Seg45.relationLc1260Part4 Seg45.relationLc1260Part5 Seg45.relationLc1260Part6 Seg45.relationLc1260Part7 Seg45.relationLc1260Part8 Seg45.relationLc1260Part9 Seg45.relationLc1260Part10 Seg45.relationLc1260Part11 Seg45.relationLc1260Part12 Seg45.relationLc1260Part13 Seg45.relationLc1260Part14 Seg45.relationLc1260Part15 at r6245
  unfold Seg45.relationRow6246 at r6246
  unfold Seg45.relationRow6247 Seg45.relationLc1261 Seg45.relationLc1261Part0 Seg45.relationLc1261Part1 Seg45.relationLc1261Part2 Seg45.relationLc1261Part3 Seg45.relationLc1261Part4 Seg45.relationLc1261Part5 Seg45.relationLc1261Part6 Seg45.relationLc1261Part7 at r6247
  unfold Seg45.relationRow6248 Seg45.relationLc1262 Seg45.relationLc1262Part0 Seg45.relationLc1262Part1 Seg45.relationLc1262Part2 Seg45.relationLc1262Part3 Seg45.relationLc1262Part4 Seg45.relationLc1262Part5 Seg45.relationLc1262Part6 Seg45.relationLc1262Part7 at r6248
  unfold Seg45.relationRow6249 at r6249
  unfold Seg45.relationRow6250 at r6250
  unfold Seg45.relationRow6251 at r6251
  unfold Seg45.relationRow6252 Seg45.relationLc1263 Seg45.relationLc1263Part0 Seg45.relationLc1263Part1 Seg45.relationLc1263Part2 Seg45.relationLc1263Part3 Seg45.relationLc1263Part4 Seg45.relationLc1263Part5 Seg45.relationLc1263Part6 Seg45.relationLc1263Part7 at r6252
  unfold Seg45.relationRow6253 Seg45.relationLc1264 Seg45.relationLc1264Part0 Seg45.relationLc1264Part1 Seg45.relationLc1264Part2 Seg45.relationLc1264Part3 Seg45.relationLc1264Part4 Seg45.relationLc1264Part5 Seg45.relationLc1264Part6 Seg45.relationLc1264Part7 at r6253
  unfold Seg45.relationRow6254 at r6254
  unfold Seg45.relationRow6255 at r6255
  unfold Seg45.relationRow6256 at r6256
  unfold Seg45.relationRow6257 at r6257
  unfold Seg45.relationRow6258 at r6258
  have hrung245 (bit : Bool) (hbit : rho 41193 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
        ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩
        ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
        ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩ := by
    have hsum : seg45AccX245 rho + seg45AccY245 rho = rho 44473 := by
      rw [seg45LadderFlatX245_eq, seg45LadderFlatY245_eq]
      unfold seg45LadderFlatX245 seg45LadderFlatY245
      linear_combination r6245
    have ha0 : (rho 44471 + rho 44472) * (seg45AccX245 rho + seg45AccY245 rho) = rho 44474 := by
      rw [hsum]
      linear_combination r6246
    have ha1 : rho 44472 * seg45AccX245 rho = rho 44475 := by
      rw [seg45LadderFlatX245_eq]
      unfold seg45LadderFlatX245
      linear_combination r6247
    have ha2 : rho 44471 * seg45AccY245 rho = rho 44476 := by
      rw [seg45LadderFlatY245_eq]
      unfold seg45LadderFlatY245
      linear_combination r6248
    have ha3 : 3021 * rho 44475 * rho 44476 = rho 44477 := by
      linear_combination r6249
    have ha4 : rho 44478 * (1 + rho 44477) = rho 44475 + rho 44476 := by
      linear_combination r6250
    have ha5 : rho 44479 * (1 - rho 44477) = rho 44474 - rho 44475 - rho 44476 := by
      linear_combination r6251
    have haddx :
        rho 44478 * (1 + 3021 * (rho 44472 * seg45AccX245 rho) * (rho 44471 * seg45AccY245 rho)) =
          rho 44472 * seg45AccX245 rho + rho 44471 * seg45AccY245 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44479 * (1 - 3021 * (rho 44472 * seg45AccX245 rho) * (rho 44471 * seg45AccY245 rho)) =
          (-1) * (rho 44472 * seg45AccX245 rho) - rho 44471 * seg45AccY245 rho +
            (seg45AccY245 rho - seg45AccX245 rho * (-1)) * (rho 44471 + rho 44472) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44479 * (1 - rho 44477) = rho 44474 - rho 44475 - rho 44476 := ha5
        _ = (-1) * rho 44475 - rho 44476 + (seg45AccY245 rho - seg45AccX245 rho * (-1)) * (rho 44471 + rho 44472) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX246 rho = seg45AccX245 rho - Bool.toZMod bit * (seg45AccX245 rho - rho 44478) := by
      have hd : rho 44480 = Bool.toZMod bit * (rho 44478 - seg45AccX245 rho) := by
        rw [← hbit, seg45LadderFlatX245_eq]
        unfold seg45LadderFlatX245
        linear_combination -r6252
      unfold seg45AccX246
      linear_combination hd
    have hsely : seg45AccY246 rho = seg45AccY245 rho - Bool.toZMod bit * (seg45AccY245 rho - rho 44479) := by
      have hd : rho 44481 = Bool.toZMod bit * (rho 44479 - seg45AccY245 rho) := by
        rw [← hbit, seg45LadderFlatY245_eq]
        unfold seg45LadderFlatY245
        linear_combination -r6253
      unfold seg45AccY246
      linear_combination hd
    have hd0 : rho 44471 * rho 44472 = rho 44482 := by linear_combination r6254
    have hd1 : rho 44471 * rho 44471 = rho 44483 := by linear_combination r6255
    have hd2 : rho 44472 * rho 44472 = rho 44484 := by linear_combination r6256
    have hd3 : rho 44485 * (rho 44472 * rho 44472 + rho 44471 * rho 44471 * (-1)) = 2 * (rho 44471 * rho 44472) := by
      rw [hd0, hd1, hd2]
      linear_combination r6257
    have hd4 : rho 44486 * (2 - (rho 44472 * rho 44472 + rho 44471 * rho 44471 * (-1))) = rho 44472 * rho 44472 - rho 44471 * rho 44471 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6258
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
      ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩
      ⟨(rho 44478 : Seg45.F), (rho 44479 : Seg45.F)⟩
      ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
      ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung245

theorem seg45_rung246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41194 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
        ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩
        ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
        ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6259 Seg45.relationLc1265 Seg45.relationLc1265Part0 Seg45.relationLc1265Part1 Seg45.relationLc1265Part2 Seg45.relationLc1265Part3 Seg45.relationLc1265Part4 Seg45.relationLc1265Part5 Seg45.relationLc1265Part6 Seg45.relationLc1265Part7 Seg45.relationLc1265Part8 Seg45.relationLc1265Part9 Seg45.relationLc1265Part10 Seg45.relationLc1265Part11 Seg45.relationLc1265Part12 Seg45.relationLc1265Part13 Seg45.relationLc1265Part14 Seg45.relationLc1265Part15 at r6259
  unfold Seg45.relationRow6260 at r6260
  unfold Seg45.relationRow6261 Seg45.relationLc1266 Seg45.relationLc1266Part0 Seg45.relationLc1266Part1 Seg45.relationLc1266Part2 Seg45.relationLc1266Part3 Seg45.relationLc1266Part4 Seg45.relationLc1266Part5 Seg45.relationLc1266Part6 Seg45.relationLc1266Part7 at r6261
  unfold Seg45.relationRow6262 Seg45.relationLc1267 Seg45.relationLc1267Part0 Seg45.relationLc1267Part1 Seg45.relationLc1267Part2 Seg45.relationLc1267Part3 Seg45.relationLc1267Part4 Seg45.relationLc1267Part5 Seg45.relationLc1267Part6 Seg45.relationLc1267Part7 at r6262
  unfold Seg45.relationRow6263 at r6263
  unfold Seg45.relationRow6264 at r6264
  unfold Seg45.relationRow6265 at r6265
  unfold Seg45.relationRow6266 Seg45.relationLc1268 Seg45.relationLc1268Part0 Seg45.relationLc1268Part1 Seg45.relationLc1268Part2 Seg45.relationLc1268Part3 Seg45.relationLc1268Part4 Seg45.relationLc1268Part5 Seg45.relationLc1268Part6 Seg45.relationLc1268Part7 at r6266
  unfold Seg45.relationRow6267 Seg45.relationLc1269 Seg45.relationLc1269Part0 Seg45.relationLc1269Part1 Seg45.relationLc1269Part2 Seg45.relationLc1269Part3 Seg45.relationLc1269Part4 Seg45.relationLc1269Part5 Seg45.relationLc1269Part6 Seg45.relationLc1269Part7 at r6267
  unfold Seg45.relationRow6268 at r6268
  unfold Seg45.relationRow6269 at r6269
  unfold Seg45.relationRow6270 at r6270
  unfold Seg45.relationRow6271 at r6271
  unfold Seg45.relationRow6272 at r6272
  have hrung246 (bit : Bool) (hbit : rho 41194 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
        ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩
        ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
        ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩ := by
    have hsum : seg45AccX246 rho + seg45AccY246 rho = rho 44487 := by
      rw [seg45LadderFlatX246_eq, seg45LadderFlatY246_eq]
      unfold seg45LadderFlatX246 seg45LadderFlatY246
      linear_combination r6259
    have ha0 : (rho 44485 + rho 44486) * (seg45AccX246 rho + seg45AccY246 rho) = rho 44488 := by
      rw [hsum]
      linear_combination r6260
    have ha1 : rho 44486 * seg45AccX246 rho = rho 44489 := by
      rw [seg45LadderFlatX246_eq]
      unfold seg45LadderFlatX246
      linear_combination r6261
    have ha2 : rho 44485 * seg45AccY246 rho = rho 44490 := by
      rw [seg45LadderFlatY246_eq]
      unfold seg45LadderFlatY246
      linear_combination r6262
    have ha3 : 3021 * rho 44489 * rho 44490 = rho 44491 := by
      linear_combination r6263
    have ha4 : rho 44492 * (1 + rho 44491) = rho 44489 + rho 44490 := by
      linear_combination r6264
    have ha5 : rho 44493 * (1 - rho 44491) = rho 44488 - rho 44489 - rho 44490 := by
      linear_combination r6265
    have haddx :
        rho 44492 * (1 + 3021 * (rho 44486 * seg45AccX246 rho) * (rho 44485 * seg45AccY246 rho)) =
          rho 44486 * seg45AccX246 rho + rho 44485 * seg45AccY246 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44493 * (1 - 3021 * (rho 44486 * seg45AccX246 rho) * (rho 44485 * seg45AccY246 rho)) =
          (-1) * (rho 44486 * seg45AccX246 rho) - rho 44485 * seg45AccY246 rho +
            (seg45AccY246 rho - seg45AccX246 rho * (-1)) * (rho 44485 + rho 44486) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44493 * (1 - rho 44491) = rho 44488 - rho 44489 - rho 44490 := ha5
        _ = (-1) * rho 44489 - rho 44490 + (seg45AccY246 rho - seg45AccX246 rho * (-1)) * (rho 44485 + rho 44486) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX247 rho = seg45AccX246 rho - Bool.toZMod bit * (seg45AccX246 rho - rho 44492) := by
      have hd : rho 44494 = Bool.toZMod bit * (rho 44492 - seg45AccX246 rho) := by
        rw [← hbit, seg45LadderFlatX246_eq]
        unfold seg45LadderFlatX246
        linear_combination -r6266
      unfold seg45AccX247
      linear_combination hd
    have hsely : seg45AccY247 rho = seg45AccY246 rho - Bool.toZMod bit * (seg45AccY246 rho - rho 44493) := by
      have hd : rho 44495 = Bool.toZMod bit * (rho 44493 - seg45AccY246 rho) := by
        rw [← hbit, seg45LadderFlatY246_eq]
        unfold seg45LadderFlatY246
        linear_combination -r6267
      unfold seg45AccY247
      linear_combination hd
    have hd0 : rho 44485 * rho 44486 = rho 44496 := by linear_combination r6268
    have hd1 : rho 44485 * rho 44485 = rho 44497 := by linear_combination r6269
    have hd2 : rho 44486 * rho 44486 = rho 44498 := by linear_combination r6270
    have hd3 : rho 44499 * (rho 44486 * rho 44486 + rho 44485 * rho 44485 * (-1)) = 2 * (rho 44485 * rho 44486) := by
      rw [hd0, hd1, hd2]
      linear_combination r6271
    have hd4 : rho 44500 * (2 - (rho 44486 * rho 44486 + rho 44485 * rho 44485 * (-1))) = rho 44486 * rho 44486 - rho 44485 * rho 44485 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6272
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
      ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩
      ⟨(rho 44492 : Seg45.F), (rho 44493 : Seg45.F)⟩
      ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
      ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung246

theorem seg45_rung247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41195 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
        ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩
        ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
        ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6273 Seg45.relationLc1270 Seg45.relationLc1270Part0 Seg45.relationLc1270Part1 Seg45.relationLc1270Part2 Seg45.relationLc1270Part3 Seg45.relationLc1270Part4 Seg45.relationLc1270Part5 Seg45.relationLc1270Part6 Seg45.relationLc1270Part7 Seg45.relationLc1270Part8 Seg45.relationLc1270Part9 Seg45.relationLc1270Part10 Seg45.relationLc1270Part11 Seg45.relationLc1270Part12 Seg45.relationLc1270Part13 Seg45.relationLc1270Part14 Seg45.relationLc1270Part15 at r6273
  unfold Seg45.relationRow6274 at r6274
  unfold Seg45.relationRow6275 Seg45.relationLc1271 Seg45.relationLc1271Part0 Seg45.relationLc1271Part1 Seg45.relationLc1271Part2 Seg45.relationLc1271Part3 Seg45.relationLc1271Part4 Seg45.relationLc1271Part5 Seg45.relationLc1271Part6 Seg45.relationLc1271Part7 at r6275
  unfold Seg45.relationRow6276 Seg45.relationLc1272 Seg45.relationLc1272Part0 Seg45.relationLc1272Part1 Seg45.relationLc1272Part2 Seg45.relationLc1272Part3 Seg45.relationLc1272Part4 Seg45.relationLc1272Part5 Seg45.relationLc1272Part6 Seg45.relationLc1272Part7 at r6276
  unfold Seg45.relationRow6277 at r6277
  unfold Seg45.relationRow6278 at r6278
  unfold Seg45.relationRow6279 at r6279
  unfold Seg45.relationRow6280 Seg45.relationLc1273 Seg45.relationLc1273Part0 Seg45.relationLc1273Part1 Seg45.relationLc1273Part2 Seg45.relationLc1273Part3 Seg45.relationLc1273Part4 Seg45.relationLc1273Part5 Seg45.relationLc1273Part6 Seg45.relationLc1273Part7 at r6280
  unfold Seg45.relationRow6281 Seg45.relationLc1274 Seg45.relationLc1274Part0 Seg45.relationLc1274Part1 Seg45.relationLc1274Part2 Seg45.relationLc1274Part3 Seg45.relationLc1274Part4 Seg45.relationLc1274Part5 Seg45.relationLc1274Part6 Seg45.relationLc1274Part7 at r6281
  unfold Seg45.relationRow6282 at r6282
  unfold Seg45.relationRow6283 at r6283
  unfold Seg45.relationRow6284 at r6284
  unfold Seg45.relationRow6285 at r6285
  unfold Seg45.relationRow6286 at r6286
  have hrung247 (bit : Bool) (hbit : rho 41195 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
        ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩
        ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
        ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩ := by
    have hsum : seg45AccX247 rho + seg45AccY247 rho = rho 44501 := by
      rw [seg45LadderFlatX247_eq, seg45LadderFlatY247_eq]
      unfold seg45LadderFlatX247 seg45LadderFlatY247
      linear_combination r6273
    have ha0 : (rho 44499 + rho 44500) * (seg45AccX247 rho + seg45AccY247 rho) = rho 44502 := by
      rw [hsum]
      linear_combination r6274
    have ha1 : rho 44500 * seg45AccX247 rho = rho 44503 := by
      rw [seg45LadderFlatX247_eq]
      unfold seg45LadderFlatX247
      linear_combination r6275
    have ha2 : rho 44499 * seg45AccY247 rho = rho 44504 := by
      rw [seg45LadderFlatY247_eq]
      unfold seg45LadderFlatY247
      linear_combination r6276
    have ha3 : 3021 * rho 44503 * rho 44504 = rho 44505 := by
      linear_combination r6277
    have ha4 : rho 44506 * (1 + rho 44505) = rho 44503 + rho 44504 := by
      linear_combination r6278
    have ha5 : rho 44507 * (1 - rho 44505) = rho 44502 - rho 44503 - rho 44504 := by
      linear_combination r6279
    have haddx :
        rho 44506 * (1 + 3021 * (rho 44500 * seg45AccX247 rho) * (rho 44499 * seg45AccY247 rho)) =
          rho 44500 * seg45AccX247 rho + rho 44499 * seg45AccY247 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44507 * (1 - 3021 * (rho 44500 * seg45AccX247 rho) * (rho 44499 * seg45AccY247 rho)) =
          (-1) * (rho 44500 * seg45AccX247 rho) - rho 44499 * seg45AccY247 rho +
            (seg45AccY247 rho - seg45AccX247 rho * (-1)) * (rho 44499 + rho 44500) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44507 * (1 - rho 44505) = rho 44502 - rho 44503 - rho 44504 := ha5
        _ = (-1) * rho 44503 - rho 44504 + (seg45AccY247 rho - seg45AccX247 rho * (-1)) * (rho 44499 + rho 44500) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX248 rho = seg45AccX247 rho - Bool.toZMod bit * (seg45AccX247 rho - rho 44506) := by
      have hd : rho 44508 = Bool.toZMod bit * (rho 44506 - seg45AccX247 rho) := by
        rw [← hbit, seg45LadderFlatX247_eq]
        unfold seg45LadderFlatX247
        linear_combination -r6280
      unfold seg45AccX248
      linear_combination hd
    have hsely : seg45AccY248 rho = seg45AccY247 rho - Bool.toZMod bit * (seg45AccY247 rho - rho 44507) := by
      have hd : rho 44509 = Bool.toZMod bit * (rho 44507 - seg45AccY247 rho) := by
        rw [← hbit, seg45LadderFlatY247_eq]
        unfold seg45LadderFlatY247
        linear_combination -r6281
      unfold seg45AccY248
      linear_combination hd
    have hd0 : rho 44499 * rho 44500 = rho 44510 := by linear_combination r6282
    have hd1 : rho 44499 * rho 44499 = rho 44511 := by linear_combination r6283
    have hd2 : rho 44500 * rho 44500 = rho 44512 := by linear_combination r6284
    have hd3 : rho 44513 * (rho 44500 * rho 44500 + rho 44499 * rho 44499 * (-1)) = 2 * (rho 44499 * rho 44500) := by
      rw [hd0, hd1, hd2]
      linear_combination r6285
    have hd4 : rho 44514 * (2 - (rho 44500 * rho 44500 + rho 44499 * rho 44499 * (-1))) = rho 44500 * rho 44500 - rho 44499 * rho 44499 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6286
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
      ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩
      ⟨(rho 44506 : Seg45.F), (rho 44507 : Seg45.F)⟩
      ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
      ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung247

theorem seg45_rung248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41196 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
        ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩
        ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
        ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow6287 Seg45.relationLc1275 Seg45.relationLc1275Part0 Seg45.relationLc1275Part1 Seg45.relationLc1275Part2 Seg45.relationLc1275Part3 Seg45.relationLc1275Part4 Seg45.relationLc1275Part5 Seg45.relationLc1275Part6 Seg45.relationLc1275Part7 Seg45.relationLc1275Part8 Seg45.relationLc1275Part9 Seg45.relationLc1275Part10 Seg45.relationLc1275Part11 Seg45.relationLc1275Part12 Seg45.relationLc1275Part13 Seg45.relationLc1275Part14 Seg45.relationLc1275Part15 at r6287
  unfold Seg45.relationRow6288 at r6288
  unfold Seg45.relationRow6289 Seg45.relationLc1276 Seg45.relationLc1276Part0 Seg45.relationLc1276Part1 Seg45.relationLc1276Part2 Seg45.relationLc1276Part3 Seg45.relationLc1276Part4 Seg45.relationLc1276Part5 Seg45.relationLc1276Part6 Seg45.relationLc1276Part7 at r6289
  unfold Seg45.relationRow6290 Seg45.relationLc1277 Seg45.relationLc1277Part0 Seg45.relationLc1277Part1 Seg45.relationLc1277Part2 Seg45.relationLc1277Part3 Seg45.relationLc1277Part4 Seg45.relationLc1277Part5 Seg45.relationLc1277Part6 Seg45.relationLc1277Part7 at r6290
  unfold Seg45.relationRow6291 at r6291
  unfold Seg45.relationRow6292 at r6292
  unfold Seg45.relationRow6293 at r6293
  unfold Seg45.relationRow6294 Seg45.relationLc1278 Seg45.relationLc1278Part0 Seg45.relationLc1278Part1 Seg45.relationLc1278Part2 Seg45.relationLc1278Part3 Seg45.relationLc1278Part4 Seg45.relationLc1278Part5 Seg45.relationLc1278Part6 Seg45.relationLc1278Part7 at r6294
  unfold Seg45.relationRow6295 Seg45.relationLc1279 Seg45.relationLc1279Part0 Seg45.relationLc1279Part1 Seg45.relationLc1279Part2 Seg45.relationLc1279Part3 Seg45.relationLc1279Part4 Seg45.relationLc1279Part5 Seg45.relationLc1279Part6 Seg45.relationLc1279Part7 at r6295
  unfold Seg45.relationRow6296 at r6296
  unfold Seg45.relationRow6297 at r6297
  unfold Seg45.relationRow6298 at r6298
  unfold Seg45.relationRow6299 at r6299
  unfold Seg45.relationRow6300 at r6300
  have hrung248 (bit : Bool) (hbit : rho 41196 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
        ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩
        ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
        ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩ := by
    have hsum : seg45AccX248 rho + seg45AccY248 rho = rho 44515 := by
      rw [seg45LadderFlatX248_eq, seg45LadderFlatY248_eq]
      unfold seg45LadderFlatX248 seg45LadderFlatY248
      linear_combination r6287
    have ha0 : (rho 44513 + rho 44514) * (seg45AccX248 rho + seg45AccY248 rho) = rho 44516 := by
      rw [hsum]
      linear_combination r6288
    have ha1 : rho 44514 * seg45AccX248 rho = rho 44517 := by
      rw [seg45LadderFlatX248_eq]
      unfold seg45LadderFlatX248
      linear_combination r6289
    have ha2 : rho 44513 * seg45AccY248 rho = rho 44518 := by
      rw [seg45LadderFlatY248_eq]
      unfold seg45LadderFlatY248
      linear_combination r6290
    have ha3 : 3021 * rho 44517 * rho 44518 = rho 44519 := by
      linear_combination r6291
    have ha4 : rho 44520 * (1 + rho 44519) = rho 44517 + rho 44518 := by
      linear_combination r6292
    have ha5 : rho 44521 * (1 - rho 44519) = rho 44516 - rho 44517 - rho 44518 := by
      linear_combination r6293
    have haddx :
        rho 44520 * (1 + 3021 * (rho 44514 * seg45AccX248 rho) * (rho 44513 * seg45AccY248 rho)) =
          rho 44514 * seg45AccX248 rho + rho 44513 * seg45AccY248 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44521 * (1 - 3021 * (rho 44514 * seg45AccX248 rho) * (rho 44513 * seg45AccY248 rho)) =
          (-1) * (rho 44514 * seg45AccX248 rho) - rho 44513 * seg45AccY248 rho +
            (seg45AccY248 rho - seg45AccX248 rho * (-1)) * (rho 44513 + rho 44514) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44521 * (1 - rho 44519) = rho 44516 - rho 44517 - rho 44518 := ha5
        _ = (-1) * rho 44517 - rho 44518 + (seg45AccY248 rho - seg45AccX248 rho * (-1)) * (rho 44513 + rho 44514) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX249 rho = seg45AccX248 rho - Bool.toZMod bit * (seg45AccX248 rho - rho 44520) := by
      have hd : rho 44522 = Bool.toZMod bit * (rho 44520 - seg45AccX248 rho) := by
        rw [← hbit, seg45LadderFlatX248_eq]
        unfold seg45LadderFlatX248
        linear_combination -r6294
      unfold seg45AccX249
      linear_combination hd
    have hsely : seg45AccY249 rho = seg45AccY248 rho - Bool.toZMod bit * (seg45AccY248 rho - rho 44521) := by
      have hd : rho 44523 = Bool.toZMod bit * (rho 44521 - seg45AccY248 rho) := by
        rw [← hbit, seg45LadderFlatY248_eq]
        unfold seg45LadderFlatY248
        linear_combination -r6295
      unfold seg45AccY249
      linear_combination hd
    have hd0 : rho 44513 * rho 44514 = rho 44524 := by linear_combination r6296
    have hd1 : rho 44513 * rho 44513 = rho 44525 := by linear_combination r6297
    have hd2 : rho 44514 * rho 44514 = rho 44526 := by linear_combination r6298
    have hd3 : rho 44527 * (rho 44514 * rho 44514 + rho 44513 * rho 44513 * (-1)) = 2 * (rho 44513 * rho 44514) := by
      rw [hd0, hd1, hd2]
      linear_combination r6299
    have hd4 : rho 44528 * (2 - (rho 44514 * rho 44514 + rho 44513 * rho 44513 * (-1))) = rho 44514 * rho 44514 - rho 44513 * rho 44513 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6300
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
      ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩
      ⟨(rho 44520 : Seg45.F), (rho 44521 : Seg45.F)⟩
      ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
      ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung248

theorem seg45_rung249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41197 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
        ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩
        ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
        ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, _, _, _, _, _⟩
  unfold Seg45.relationRow6301 Seg45.relationLc1280 Seg45.relationLc1280Part0 Seg45.relationLc1280Part1 Seg45.relationLc1280Part2 Seg45.relationLc1280Part3 Seg45.relationLc1280Part4 Seg45.relationLc1280Part5 Seg45.relationLc1280Part6 Seg45.relationLc1280Part7 Seg45.relationLc1280Part8 Seg45.relationLc1280Part9 Seg45.relationLc1280Part10 Seg45.relationLc1280Part11 Seg45.relationLc1280Part12 Seg45.relationLc1280Part13 Seg45.relationLc1280Part14 Seg45.relationLc1280Part15 at r6301
  unfold Seg45.relationRow6302 at r6302
  unfold Seg45.relationRow6303 Seg45.relationLc1281 Seg45.relationLc1281Part0 Seg45.relationLc1281Part1 Seg45.relationLc1281Part2 Seg45.relationLc1281Part3 Seg45.relationLc1281Part4 Seg45.relationLc1281Part5 Seg45.relationLc1281Part6 Seg45.relationLc1281Part7 at r6303
  unfold Seg45.relationRow6304 Seg45.relationLc1282 Seg45.relationLc1282Part0 Seg45.relationLc1282Part1 Seg45.relationLc1282Part2 Seg45.relationLc1282Part3 Seg45.relationLc1282Part4 Seg45.relationLc1282Part5 Seg45.relationLc1282Part6 Seg45.relationLc1282Part7 at r6304
  unfold Seg45.relationRow6305 at r6305
  unfold Seg45.relationRow6306 at r6306
  unfold Seg45.relationRow6307 at r6307
  unfold Seg45.relationRow6308 Seg45.relationLc1283 Seg45.relationLc1283Part0 Seg45.relationLc1283Part1 Seg45.relationLc1283Part2 Seg45.relationLc1283Part3 Seg45.relationLc1283Part4 Seg45.relationLc1283Part5 Seg45.relationLc1283Part6 Seg45.relationLc1283Part7 at r6308
  unfold Seg45.relationRow6309 Seg45.relationLc1284 Seg45.relationLc1284Part0 Seg45.relationLc1284Part1 Seg45.relationLc1284Part2 Seg45.relationLc1284Part3 Seg45.relationLc1284Part4 Seg45.relationLc1284Part5 Seg45.relationLc1284Part6 Seg45.relationLc1284Part7 at r6309
  unfold Seg45.relationRow6310 at r6310
  unfold Seg45.relationRow6311 at r6311
  unfold Seg45.relationRow6312 at r6312
  unfold Seg45.relationRow6313 at r6313
  unfold Seg45.relationRow6314 at r6314
  have hrung249 (bit : Bool) (hbit : rho 41197 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
        ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩
        ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
        ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩ := by
    have hsum : seg45AccX249 rho + seg45AccY249 rho = rho 44529 := by
      rw [seg45LadderFlatX249_eq, seg45LadderFlatY249_eq]
      unfold seg45LadderFlatX249 seg45LadderFlatY249
      linear_combination r6301
    have ha0 : (rho 44527 + rho 44528) * (seg45AccX249 rho + seg45AccY249 rho) = rho 44530 := by
      rw [hsum]
      linear_combination r6302
    have ha1 : rho 44528 * seg45AccX249 rho = rho 44531 := by
      rw [seg45LadderFlatX249_eq]
      unfold seg45LadderFlatX249
      linear_combination r6303
    have ha2 : rho 44527 * seg45AccY249 rho = rho 44532 := by
      rw [seg45LadderFlatY249_eq]
      unfold seg45LadderFlatY249
      linear_combination r6304
    have ha3 : 3021 * rho 44531 * rho 44532 = rho 44533 := by
      linear_combination r6305
    have ha4 : rho 44534 * (1 + rho 44533) = rho 44531 + rho 44532 := by
      linear_combination r6306
    have ha5 : rho 44535 * (1 - rho 44533) = rho 44530 - rho 44531 - rho 44532 := by
      linear_combination r6307
    have haddx :
        rho 44534 * (1 + 3021 * (rho 44528 * seg45AccX249 rho) * (rho 44527 * seg45AccY249 rho)) =
          rho 44528 * seg45AccX249 rho + rho 44527 * seg45AccY249 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44535 * (1 - 3021 * (rho 44528 * seg45AccX249 rho) * (rho 44527 * seg45AccY249 rho)) =
          (-1) * (rho 44528 * seg45AccX249 rho) - rho 44527 * seg45AccY249 rho +
            (seg45AccY249 rho - seg45AccX249 rho * (-1)) * (rho 44527 + rho 44528) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44535 * (1 - rho 44533) = rho 44530 - rho 44531 - rho 44532 := ha5
        _ = (-1) * rho 44531 - rho 44532 + (seg45AccY249 rho - seg45AccX249 rho * (-1)) * (rho 44527 + rho 44528) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX250 rho = seg45AccX249 rho - Bool.toZMod bit * (seg45AccX249 rho - rho 44534) := by
      have hd : rho 44536 = Bool.toZMod bit * (rho 44534 - seg45AccX249 rho) := by
        rw [← hbit, seg45LadderFlatX249_eq]
        unfold seg45LadderFlatX249
        linear_combination -r6308
      unfold seg45AccX250
      linear_combination hd
    have hsely : seg45AccY250 rho = seg45AccY249 rho - Bool.toZMod bit * (seg45AccY249 rho - rho 44535) := by
      have hd : rho 44537 = Bool.toZMod bit * (rho 44535 - seg45AccY249 rho) := by
        rw [← hbit, seg45LadderFlatY249_eq]
        unfold seg45LadderFlatY249
        linear_combination -r6309
      unfold seg45AccY250
      linear_combination hd
    have hd0 : rho 44527 * rho 44528 = rho 44538 := by linear_combination r6310
    have hd1 : rho 44527 * rho 44527 = rho 44539 := by linear_combination r6311
    have hd2 : rho 44528 * rho 44528 = rho 44540 := by linear_combination r6312
    have hd3 : rho 44541 * (rho 44528 * rho 44528 + rho 44527 * rho 44527 * (-1)) = 2 * (rho 44527 * rho 44528) := by
      rw [hd0, hd1, hd2]
      linear_combination r6313
    have hd4 : rho 44542 * (2 - (rho 44528 * rho 44528 + rho 44527 * rho 44527 * (-1))) = rho 44528 * rho 44528 - rho 44527 * rho 44527 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6314
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
      ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩
      ⟨(rho 44534 : Seg45.F), (rho 44535 : Seg45.F)⟩
      ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
      ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung249

theorem seg45_rung250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41198 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
        ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩
        ⟨(seg45AccX251 rho : Seg45.F), (seg45AccY251 rho : Seg45.F)⟩
        ⟨(rho 44555 : Seg45.F), (rho 44556 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg45.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩
  unfold Seg45.relationRow6315 Seg45.relationLc1285 Seg45.relationLc1285Part0 Seg45.relationLc1285Part1 Seg45.relationLc1285Part2 Seg45.relationLc1285Part3 Seg45.relationLc1285Part4 Seg45.relationLc1285Part5 Seg45.relationLc1285Part6 Seg45.relationLc1285Part7 Seg45.relationLc1285Part8 Seg45.relationLc1285Part9 Seg45.relationLc1285Part10 Seg45.relationLc1285Part11 Seg45.relationLc1285Part12 Seg45.relationLc1285Part13 Seg45.relationLc1285Part14 Seg45.relationLc1285Part15 at r6315
  unfold Seg45.relationRow6316 at r6316
  unfold Seg45.relationRow6317 Seg45.relationLc1286 Seg45.relationLc1286Part0 Seg45.relationLc1286Part1 Seg45.relationLc1286Part2 Seg45.relationLc1286Part3 Seg45.relationLc1286Part4 Seg45.relationLc1286Part5 Seg45.relationLc1286Part6 Seg45.relationLc1286Part7 at r6317
  unfold Seg45.relationRow6318 Seg45.relationLc1287 Seg45.relationLc1287Part0 Seg45.relationLc1287Part1 Seg45.relationLc1287Part2 Seg45.relationLc1287Part3 Seg45.relationLc1287Part4 Seg45.relationLc1287Part5 Seg45.relationLc1287Part6 Seg45.relationLc1287Part7 at r6318
  unfold Seg45.relationRow6319 at r6319
  unfold Seg45.relationRow6320 at r6320
  unfold Seg45.relationRow6321 at r6321
  unfold Seg45.relationRow6322 Seg45.relationLc1288 Seg45.relationLc1288Part0 Seg45.relationLc1288Part1 Seg45.relationLc1288Part2 Seg45.relationLc1288Part3 Seg45.relationLc1288Part4 Seg45.relationLc1288Part5 Seg45.relationLc1288Part6 Seg45.relationLc1288Part7 at r6322
  unfold Seg45.relationRow6323 Seg45.relationLc1289 Seg45.relationLc1289Part0 Seg45.relationLc1289Part1 Seg45.relationLc1289Part2 Seg45.relationLc1289Part3 Seg45.relationLc1289Part4 Seg45.relationLc1289Part5 Seg45.relationLc1289Part6 Seg45.relationLc1289Part7 at r6323
  unfold Seg45.relationRow6324 at r6324
  unfold Seg45.relationRow6325 at r6325
  unfold Seg45.relationRow6326 at r6326
  unfold Seg45.relationRow6327 at r6327
  unfold Seg45.relationRow6328 at r6328
  have hrung250 (bit : Bool) (hbit : rho 41198 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
        ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩
        ⟨(seg45AccX251 rho : Seg45.F), (seg45AccY251 rho : Seg45.F)⟩
        ⟨(rho 44555 : Seg45.F), (rho 44556 : Seg45.F)⟩ := by
    have hsum : seg45AccX250 rho + seg45AccY250 rho = rho 44543 := by
      rw [seg45LadderFlatX250_eq, seg45LadderFlatY250_eq]
      unfold seg45LadderFlatX250 seg45LadderFlatY250
      linear_combination r6315
    have ha0 : (rho 44541 + rho 44542) * (seg45AccX250 rho + seg45AccY250 rho) = rho 44544 := by
      rw [hsum]
      linear_combination r6316
    have ha1 : rho 44542 * seg45AccX250 rho = rho 44545 := by
      rw [seg45LadderFlatX250_eq]
      unfold seg45LadderFlatX250
      linear_combination r6317
    have ha2 : rho 44541 * seg45AccY250 rho = rho 44546 := by
      rw [seg45LadderFlatY250_eq]
      unfold seg45LadderFlatY250
      linear_combination r6318
    have ha3 : 3021 * rho 44545 * rho 44546 = rho 44547 := by
      linear_combination r6319
    have ha4 : rho 44548 * (1 + rho 44547) = rho 44545 + rho 44546 := by
      linear_combination r6320
    have ha5 : rho 44549 * (1 - rho 44547) = rho 44544 - rho 44545 - rho 44546 := by
      linear_combination r6321
    have haddx :
        rho 44548 * (1 + 3021 * (rho 44542 * seg45AccX250 rho) * (rho 44541 * seg45AccY250 rho)) =
          rho 44542 * seg45AccX250 rho + rho 44541 * seg45AccY250 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44549 * (1 - 3021 * (rho 44542 * seg45AccX250 rho) * (rho 44541 * seg45AccY250 rho)) =
          (-1) * (rho 44542 * seg45AccX250 rho) - rho 44541 * seg45AccY250 rho +
            (seg45AccY250 rho - seg45AccX250 rho * (-1)) * (rho 44541 + rho 44542) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44549 * (1 - rho 44547) = rho 44544 - rho 44545 - rho 44546 := ha5
        _ = (-1) * rho 44545 - rho 44546 + (seg45AccY250 rho - seg45AccX250 rho * (-1)) * (rho 44541 + rho 44542) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX251 rho = seg45AccX250 rho - Bool.toZMod bit * (seg45AccX250 rho - rho 44548) := by
      have hd : rho 44550 = Bool.toZMod bit * (rho 44548 - seg45AccX250 rho) := by
        rw [← hbit, seg45LadderFlatX250_eq]
        unfold seg45LadderFlatX250
        linear_combination -r6322
      unfold seg45AccX251
      linear_combination hd
    have hsely : seg45AccY251 rho = seg45AccY250 rho - Bool.toZMod bit * (seg45AccY250 rho - rho 44549) := by
      have hd : rho 44551 = Bool.toZMod bit * (rho 44549 - seg45AccY250 rho) := by
        rw [← hbit, seg45LadderFlatY250_eq]
        unfold seg45LadderFlatY250
        linear_combination -r6323
      unfold seg45AccY251
      linear_combination hd
    have hd0 : rho 44541 * rho 44542 = rho 44552 := by linear_combination r6324
    have hd1 : rho 44541 * rho 44541 = rho 44553 := by linear_combination r6325
    have hd2 : rho 44542 * rho 44542 = rho 44554 := by linear_combination r6326
    have hd3 : rho 44555 * (rho 44542 * rho 44542 + rho 44541 * rho 44541 * (-1)) = 2 * (rho 44541 * rho 44542) := by
      rw [hd0, hd1, hd2]
      linear_combination r6327
    have hd4 : rho 44556 * (2 - (rho 44542 * rho 44542 + rho 44541 * rho 44541 * (-1))) = rho 44542 * rho 44542 - rho 44541 * rho 44541 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
      ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩
      ⟨(rho 44548 : Seg45.F), (rho 44549 : Seg45.F)⟩
      ⟨(seg45AccX251 rho : Seg45.F), (seg45AccY251 rho : Seg45.F)⟩
      ⟨(rho 44555 : Seg45.F), (rho 44556 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung250

theorem seg45_hstep_c7 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 224 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc hcur
  · exact seg45_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc hcur
  · exact seg45_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc hcur
  · exact seg45_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc hcur
  · exact seg45_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc hcur
  · exact seg45_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc hcur
  · exact seg45_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc hcur
  · exact seg45_rung231 rho h bits[231]! (hbitAt 231 (by omega)) hacc hcur
  · exact seg45_rung232 rho h bits[232]! (hbitAt 232 (by omega)) hacc hcur
  · exact seg45_rung233 rho h bits[233]! (hbitAt 233 (by omega)) hacc hcur
  · exact seg45_rung234 rho h bits[234]! (hbitAt 234 (by omega)) hacc hcur
  · exact seg45_rung235 rho h bits[235]! (hbitAt 235 (by omega)) hacc hcur
  · exact seg45_rung236 rho h bits[236]! (hbitAt 236 (by omega)) hacc hcur
  · exact seg45_rung237 rho h bits[237]! (hbitAt 237 (by omega)) hacc hcur
  · exact seg45_rung238 rho h bits[238]! (hbitAt 238 (by omega)) hacc hcur
  · exact seg45_rung239 rho h bits[239]! (hbitAt 239 (by omega)) hacc hcur
  · exact seg45_rung240 rho h bits[240]! (hbitAt 240 (by omega)) hacc hcur
  · exact seg45_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc hcur
  · exact seg45_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc hcur
  · exact seg45_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc hcur
  · exact seg45_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc hcur
  · exact seg45_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc hcur
  · exact seg45_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc hcur
  · exact seg45_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc hcur
  · exact seg45_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc hcur
  · exact seg45_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc hcur
  · exact seg45_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rung224 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15516 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
        ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩
        ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
        ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩ := by
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
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5951 Seg16.relationLc1155 Seg16.relationLc1155Part0 Seg16.relationLc1155Part1 Seg16.relationLc1155Part2 Seg16.relationLc1155Part3 Seg16.relationLc1155Part4 Seg16.relationLc1155Part5 Seg16.relationLc1155Part6 Seg16.relationLc1155Part7 Seg16.relationLc1155Part8 Seg16.relationLc1155Part9 Seg16.relationLc1155Part10 Seg16.relationLc1155Part11 Seg16.relationLc1155Part12 Seg16.relationLc1155Part13 Seg16.relationLc1155Part14 at r5951
  unfold Seg16.relationRow5952 at r5952
  unfold Seg16.relationRow5953 Seg16.relationLc1156 Seg16.relationLc1156Part0 Seg16.relationLc1156Part1 Seg16.relationLc1156Part2 Seg16.relationLc1156Part3 Seg16.relationLc1156Part4 Seg16.relationLc1156Part5 Seg16.relationLc1156Part6 at r5953
  unfold Seg16.relationRow5954 Seg16.relationLc1157 Seg16.relationLc1157Part0 Seg16.relationLc1157Part1 Seg16.relationLc1157Part2 Seg16.relationLc1157Part3 Seg16.relationLc1157Part4 Seg16.relationLc1157Part5 Seg16.relationLc1157Part6 Seg16.relationLc1157Part7 at r5954
  unfold Seg16.relationRow5955 at r5955
  unfold Seg16.relationRow5956 at r5956
  unfold Seg16.relationRow5957 at r5957
  unfold Seg16.relationRow5958 Seg16.relationLc1158 Seg16.relationLc1158Part0 Seg16.relationLc1158Part1 Seg16.relationLc1158Part2 Seg16.relationLc1158Part3 Seg16.relationLc1158Part4 Seg16.relationLc1158Part5 Seg16.relationLc1158Part6 Seg16.relationLc1158Part7 at r5958
  unfold Seg16.relationRow5959 Seg16.relationLc1159 Seg16.relationLc1159Part0 Seg16.relationLc1159Part1 Seg16.relationLc1159Part2 Seg16.relationLc1159Part3 Seg16.relationLc1159Part4 Seg16.relationLc1159Part5 Seg16.relationLc1159Part6 Seg16.relationLc1159Part7 at r5959
  unfold Seg16.relationRow5960 at r5960
  unfold Seg16.relationRow5961 at r5961
  unfold Seg16.relationRow5962 at r5962
  unfold Seg16.relationRow5963 at r5963
  unfold Seg16.relationRow5964 at r5964
  have hrung224 (bit : Bool) (hbit : rho 15516 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
        ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩
        ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
        ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩ := by
    have hsum : seg16AccX224 rho + seg16AccY224 rho = rho 18523 := by
      rw [seg16LadderFlatX224_eq, seg16LadderFlatY224_eq]
      unfold seg16LadderFlatX224 seg16LadderFlatY224
      linear_combination r5951
    have ha0 : (rho 18521 + rho 18522) * (seg16AccX224 rho + seg16AccY224 rho) = rho 18524 := by
      rw [hsum]
      linear_combination r5952
    have ha1 : rho 18522 * seg16AccX224 rho = rho 18525 := by
      rw [seg16LadderFlatX224_eq]
      unfold seg16LadderFlatX224
      linear_combination r5953
    have ha2 : rho 18521 * seg16AccY224 rho = rho 18526 := by
      rw [seg16LadderFlatY224_eq]
      unfold seg16LadderFlatY224
      linear_combination r5954
    have ha3 : 3021 * rho 18525 * rho 18526 = rho 18527 := by
      linear_combination r5955
    have ha4 : rho 18528 * (1 + rho 18527) = rho 18525 + rho 18526 := by
      linear_combination r5956
    have ha5 : rho 18529 * (1 - rho 18527) = rho 18524 - rho 18525 - rho 18526 := by
      linear_combination r5957
    have haddx :
        rho 18528 * (1 + 3021 * (rho 18522 * seg16AccX224 rho) * (rho 18521 * seg16AccY224 rho)) =
          rho 18522 * seg16AccX224 rho + rho 18521 * seg16AccY224 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18529 * (1 - 3021 * (rho 18522 * seg16AccX224 rho) * (rho 18521 * seg16AccY224 rho)) =
          (-1) * (rho 18522 * seg16AccX224 rho) - rho 18521 * seg16AccY224 rho +
            (seg16AccY224 rho - seg16AccX224 rho * (-1)) * (rho 18521 + rho 18522) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18529 * (1 - rho 18527) = rho 18524 - rho 18525 - rho 18526 := ha5
        _ = (-1) * rho 18525 - rho 18526 + (seg16AccY224 rho - seg16AccX224 rho * (-1)) * (rho 18521 + rho 18522) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX225 rho = seg16AccX224 rho - Bool.toZMod bit * (seg16AccX224 rho - rho 18528) := by
      have hd : rho 18530 = Bool.toZMod bit * (rho 18528 - seg16AccX224 rho) := by
        rw [← hbit, seg16LadderFlatX224_eq]
        unfold seg16LadderFlatX224
        linear_combination -r5958
      unfold seg16AccX225
      linear_combination hd
    have hsely : seg16AccY225 rho = seg16AccY224 rho - Bool.toZMod bit * (seg16AccY224 rho - rho 18529) := by
      have hd : rho 18531 = Bool.toZMod bit * (rho 18529 - seg16AccY224 rho) := by
        rw [← hbit, seg16LadderFlatY224_eq]
        unfold seg16LadderFlatY224
        linear_combination -r5959
      unfold seg16AccY225
      linear_combination hd
    have hd0 : rho 18521 * rho 18522 = rho 18532 := by linear_combination r5960
    have hd1 : rho 18521 * rho 18521 = rho 18533 := by linear_combination r5961
    have hd2 : rho 18522 * rho 18522 = rho 18534 := by linear_combination r5962
    have hd3 : rho 18535 * (rho 18522 * rho 18522 + rho 18521 * rho 18521 * (-1)) = 2 * (rho 18521 * rho 18522) := by
      rw [hd0, hd1, hd2]
      linear_combination r5963
    have hd4 : rho 18536 * (2 - (rho 18522 * rho 18522 + rho 18521 * rho 18521 * (-1))) = rho 18522 * rho 18522 - rho 18521 * rho 18521 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5964
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX224 rho : Seg16.F), (seg16AccY224 rho : Seg16.F)⟩
      ⟨(rho 18521 : Seg16.F), (rho 18522 : Seg16.F)⟩
      ⟨(rho 18528 : Seg16.F), (rho 18529 : Seg16.F)⟩
      ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
      ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung224

theorem seg16_rung225 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15517 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
        ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩
        ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
        ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩ := by
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
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5965 Seg16.relationLc1160 Seg16.relationLc1160Part0 Seg16.relationLc1160Part1 Seg16.relationLc1160Part2 Seg16.relationLc1160Part3 Seg16.relationLc1160Part4 Seg16.relationLc1160Part5 Seg16.relationLc1160Part6 Seg16.relationLc1160Part7 Seg16.relationLc1160Part8 Seg16.relationLc1160Part9 Seg16.relationLc1160Part10 Seg16.relationLc1160Part11 Seg16.relationLc1160Part12 Seg16.relationLc1160Part13 Seg16.relationLc1160Part14 at r5965
  unfold Seg16.relationRow5966 at r5966
  unfold Seg16.relationRow5967 Seg16.relationLc1161 Seg16.relationLc1161Part0 Seg16.relationLc1161Part1 Seg16.relationLc1161Part2 Seg16.relationLc1161Part3 Seg16.relationLc1161Part4 Seg16.relationLc1161Part5 Seg16.relationLc1161Part6 Seg16.relationLc1161Part7 at r5967
  unfold Seg16.relationRow5968 Seg16.relationLc1162 Seg16.relationLc1162Part0 Seg16.relationLc1162Part1 Seg16.relationLc1162Part2 Seg16.relationLc1162Part3 Seg16.relationLc1162Part4 Seg16.relationLc1162Part5 Seg16.relationLc1162Part6 Seg16.relationLc1162Part7 at r5968
  unfold Seg16.relationRow5969 at r5969
  unfold Seg16.relationRow5970 at r5970
  unfold Seg16.relationRow5971 at r5971
  unfold Seg16.relationRow5972 Seg16.relationLc1163 Seg16.relationLc1163Part0 Seg16.relationLc1163Part1 Seg16.relationLc1163Part2 Seg16.relationLc1163Part3 Seg16.relationLc1163Part4 Seg16.relationLc1163Part5 Seg16.relationLc1163Part6 Seg16.relationLc1163Part7 at r5972
  unfold Seg16.relationRow5973 Seg16.relationLc1164 Seg16.relationLc1164Part0 Seg16.relationLc1164Part1 Seg16.relationLc1164Part2 Seg16.relationLc1164Part3 Seg16.relationLc1164Part4 Seg16.relationLc1164Part5 Seg16.relationLc1164Part6 Seg16.relationLc1164Part7 at r5973
  unfold Seg16.relationRow5974 at r5974
  unfold Seg16.relationRow5975 at r5975
  unfold Seg16.relationRow5976 at r5976
  unfold Seg16.relationRow5977 at r5977
  unfold Seg16.relationRow5978 at r5978
  have hrung225 (bit : Bool) (hbit : rho 15517 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
        ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩
        ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
        ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩ := by
    have hsum : seg16AccX225 rho + seg16AccY225 rho = rho 18537 := by
      rw [seg16LadderFlatX225_eq, seg16LadderFlatY225_eq]
      unfold seg16LadderFlatX225 seg16LadderFlatY225
      linear_combination r5965
    have ha0 : (rho 18535 + rho 18536) * (seg16AccX225 rho + seg16AccY225 rho) = rho 18538 := by
      rw [hsum]
      linear_combination r5966
    have ha1 : rho 18536 * seg16AccX225 rho = rho 18539 := by
      rw [seg16LadderFlatX225_eq]
      unfold seg16LadderFlatX225
      linear_combination r5967
    have ha2 : rho 18535 * seg16AccY225 rho = rho 18540 := by
      rw [seg16LadderFlatY225_eq]
      unfold seg16LadderFlatY225
      linear_combination r5968
    have ha3 : 3021 * rho 18539 * rho 18540 = rho 18541 := by
      linear_combination r5969
    have ha4 : rho 18542 * (1 + rho 18541) = rho 18539 + rho 18540 := by
      linear_combination r5970
    have ha5 : rho 18543 * (1 - rho 18541) = rho 18538 - rho 18539 - rho 18540 := by
      linear_combination r5971
    have haddx :
        rho 18542 * (1 + 3021 * (rho 18536 * seg16AccX225 rho) * (rho 18535 * seg16AccY225 rho)) =
          rho 18536 * seg16AccX225 rho + rho 18535 * seg16AccY225 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18543 * (1 - 3021 * (rho 18536 * seg16AccX225 rho) * (rho 18535 * seg16AccY225 rho)) =
          (-1) * (rho 18536 * seg16AccX225 rho) - rho 18535 * seg16AccY225 rho +
            (seg16AccY225 rho - seg16AccX225 rho * (-1)) * (rho 18535 + rho 18536) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18543 * (1 - rho 18541) = rho 18538 - rho 18539 - rho 18540 := ha5
        _ = (-1) * rho 18539 - rho 18540 + (seg16AccY225 rho - seg16AccX225 rho * (-1)) * (rho 18535 + rho 18536) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX226 rho = seg16AccX225 rho - Bool.toZMod bit * (seg16AccX225 rho - rho 18542) := by
      have hd : rho 18544 = Bool.toZMod bit * (rho 18542 - seg16AccX225 rho) := by
        rw [← hbit, seg16LadderFlatX225_eq]
        unfold seg16LadderFlatX225
        linear_combination -r5972
      unfold seg16AccX226
      linear_combination hd
    have hsely : seg16AccY226 rho = seg16AccY225 rho - Bool.toZMod bit * (seg16AccY225 rho - rho 18543) := by
      have hd : rho 18545 = Bool.toZMod bit * (rho 18543 - seg16AccY225 rho) := by
        rw [← hbit, seg16LadderFlatY225_eq]
        unfold seg16LadderFlatY225
        linear_combination -r5973
      unfold seg16AccY226
      linear_combination hd
    have hd0 : rho 18535 * rho 18536 = rho 18546 := by linear_combination r5974
    have hd1 : rho 18535 * rho 18535 = rho 18547 := by linear_combination r5975
    have hd2 : rho 18536 * rho 18536 = rho 18548 := by linear_combination r5976
    have hd3 : rho 18549 * (rho 18536 * rho 18536 + rho 18535 * rho 18535 * (-1)) = 2 * (rho 18535 * rho 18536) := by
      rw [hd0, hd1, hd2]
      linear_combination r5977
    have hd4 : rho 18550 * (2 - (rho 18536 * rho 18536 + rho 18535 * rho 18535 * (-1))) = rho 18536 * rho 18536 - rho 18535 * rho 18535 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX225 rho : Seg16.F), (seg16AccY225 rho : Seg16.F)⟩
      ⟨(rho 18535 : Seg16.F), (rho 18536 : Seg16.F)⟩
      ⟨(rho 18542 : Seg16.F), (rho 18543 : Seg16.F)⟩
      ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
      ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung225

theorem seg16_rung226 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15518 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
        ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩
        ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
        ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩ := by
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
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5979 Seg16.relationLc1165 Seg16.relationLc1165Part0 Seg16.relationLc1165Part1 Seg16.relationLc1165Part2 Seg16.relationLc1165Part3 Seg16.relationLc1165Part4 Seg16.relationLc1165Part5 Seg16.relationLc1165Part6 Seg16.relationLc1165Part7 Seg16.relationLc1165Part8 Seg16.relationLc1165Part9 Seg16.relationLc1165Part10 Seg16.relationLc1165Part11 Seg16.relationLc1165Part12 Seg16.relationLc1165Part13 Seg16.relationLc1165Part14 at r5979
  unfold Seg16.relationRow5980 at r5980
  unfold Seg16.relationRow5981 Seg16.relationLc1166 Seg16.relationLc1166Part0 Seg16.relationLc1166Part1 Seg16.relationLc1166Part2 Seg16.relationLc1166Part3 Seg16.relationLc1166Part4 Seg16.relationLc1166Part5 Seg16.relationLc1166Part6 Seg16.relationLc1166Part7 at r5981
  unfold Seg16.relationRow5982 Seg16.relationLc1167 Seg16.relationLc1167Part0 Seg16.relationLc1167Part1 Seg16.relationLc1167Part2 Seg16.relationLc1167Part3 Seg16.relationLc1167Part4 Seg16.relationLc1167Part5 Seg16.relationLc1167Part6 Seg16.relationLc1167Part7 at r5982
  unfold Seg16.relationRow5983 at r5983
  unfold Seg16.relationRow5984 at r5984
  unfold Seg16.relationRow5985 at r5985
  unfold Seg16.relationRow5986 Seg16.relationLc1168 Seg16.relationLc1168Part0 Seg16.relationLc1168Part1 Seg16.relationLc1168Part2 Seg16.relationLc1168Part3 Seg16.relationLc1168Part4 Seg16.relationLc1168Part5 Seg16.relationLc1168Part6 Seg16.relationLc1168Part7 at r5986
  unfold Seg16.relationRow5987 Seg16.relationLc1169 Seg16.relationLc1169Part0 Seg16.relationLc1169Part1 Seg16.relationLc1169Part2 Seg16.relationLc1169Part3 Seg16.relationLc1169Part4 Seg16.relationLc1169Part5 Seg16.relationLc1169Part6 Seg16.relationLc1169Part7 at r5987
  unfold Seg16.relationRow5988 at r5988
  unfold Seg16.relationRow5989 at r5989
  unfold Seg16.relationRow5990 at r5990
  unfold Seg16.relationRow5991 at r5991
  unfold Seg16.relationRow5992 at r5992
  have hrung226 (bit : Bool) (hbit : rho 15518 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
        ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩
        ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
        ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩ := by
    have hsum : seg16AccX226 rho + seg16AccY226 rho = rho 18551 := by
      rw [seg16LadderFlatX226_eq, seg16LadderFlatY226_eq]
      unfold seg16LadderFlatX226 seg16LadderFlatY226
      linear_combination r5979
    have ha0 : (rho 18549 + rho 18550) * (seg16AccX226 rho + seg16AccY226 rho) = rho 18552 := by
      rw [hsum]
      linear_combination r5980
    have ha1 : rho 18550 * seg16AccX226 rho = rho 18553 := by
      rw [seg16LadderFlatX226_eq]
      unfold seg16LadderFlatX226
      linear_combination r5981
    have ha2 : rho 18549 * seg16AccY226 rho = rho 18554 := by
      rw [seg16LadderFlatY226_eq]
      unfold seg16LadderFlatY226
      linear_combination r5982
    have ha3 : 3021 * rho 18553 * rho 18554 = rho 18555 := by
      linear_combination r5983
    have ha4 : rho 18556 * (1 + rho 18555) = rho 18553 + rho 18554 := by
      linear_combination r5984
    have ha5 : rho 18557 * (1 - rho 18555) = rho 18552 - rho 18553 - rho 18554 := by
      linear_combination r5985
    have haddx :
        rho 18556 * (1 + 3021 * (rho 18550 * seg16AccX226 rho) * (rho 18549 * seg16AccY226 rho)) =
          rho 18550 * seg16AccX226 rho + rho 18549 * seg16AccY226 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18557 * (1 - 3021 * (rho 18550 * seg16AccX226 rho) * (rho 18549 * seg16AccY226 rho)) =
          (-1) * (rho 18550 * seg16AccX226 rho) - rho 18549 * seg16AccY226 rho +
            (seg16AccY226 rho - seg16AccX226 rho * (-1)) * (rho 18549 + rho 18550) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18557 * (1 - rho 18555) = rho 18552 - rho 18553 - rho 18554 := ha5
        _ = (-1) * rho 18553 - rho 18554 + (seg16AccY226 rho - seg16AccX226 rho * (-1)) * (rho 18549 + rho 18550) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX227 rho = seg16AccX226 rho - Bool.toZMod bit * (seg16AccX226 rho - rho 18556) := by
      have hd : rho 18558 = Bool.toZMod bit * (rho 18556 - seg16AccX226 rho) := by
        rw [← hbit, seg16LadderFlatX226_eq]
        unfold seg16LadderFlatX226
        linear_combination -r5986
      unfold seg16AccX227
      linear_combination hd
    have hsely : seg16AccY227 rho = seg16AccY226 rho - Bool.toZMod bit * (seg16AccY226 rho - rho 18557) := by
      have hd : rho 18559 = Bool.toZMod bit * (rho 18557 - seg16AccY226 rho) := by
        rw [← hbit, seg16LadderFlatY226_eq]
        unfold seg16LadderFlatY226
        linear_combination -r5987
      unfold seg16AccY227
      linear_combination hd
    have hd0 : rho 18549 * rho 18550 = rho 18560 := by linear_combination r5988
    have hd1 : rho 18549 * rho 18549 = rho 18561 := by linear_combination r5989
    have hd2 : rho 18550 * rho 18550 = rho 18562 := by linear_combination r5990
    have hd3 : rho 18563 * (rho 18550 * rho 18550 + rho 18549 * rho 18549 * (-1)) = 2 * (rho 18549 * rho 18550) := by
      rw [hd0, hd1, hd2]
      linear_combination r5991
    have hd4 : rho 18564 * (2 - (rho 18550 * rho 18550 + rho 18549 * rho 18549 * (-1))) = rho 18550 * rho 18550 - rho 18549 * rho 18549 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5992
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX226 rho : Seg16.F), (seg16AccY226 rho : Seg16.F)⟩
      ⟨(rho 18549 : Seg16.F), (rho 18550 : Seg16.F)⟩
      ⟨(rho 18556 : Seg16.F), (rho 18557 : Seg16.F)⟩
      ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
      ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung226

theorem seg16_rung227 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15519 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
        ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩
        ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
        ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg16.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow5993 Seg16.relationLc1170 Seg16.relationLc1170Part0 Seg16.relationLc1170Part1 Seg16.relationLc1170Part2 Seg16.relationLc1170Part3 Seg16.relationLc1170Part4 Seg16.relationLc1170Part5 Seg16.relationLc1170Part6 Seg16.relationLc1170Part7 Seg16.relationLc1170Part8 Seg16.relationLc1170Part9 Seg16.relationLc1170Part10 Seg16.relationLc1170Part11 Seg16.relationLc1170Part12 Seg16.relationLc1170Part13 Seg16.relationLc1170Part14 at r5993
  unfold Seg16.relationRow5994 at r5994
  unfold Seg16.relationRow5995 Seg16.relationLc1171 Seg16.relationLc1171Part0 Seg16.relationLc1171Part1 Seg16.relationLc1171Part2 Seg16.relationLc1171Part3 Seg16.relationLc1171Part4 Seg16.relationLc1171Part5 Seg16.relationLc1171Part6 Seg16.relationLc1171Part7 at r5995
  unfold Seg16.relationRow5996 Seg16.relationLc1172 Seg16.relationLc1172Part0 Seg16.relationLc1172Part1 Seg16.relationLc1172Part2 Seg16.relationLc1172Part3 Seg16.relationLc1172Part4 Seg16.relationLc1172Part5 Seg16.relationLc1172Part6 Seg16.relationLc1172Part7 at r5996
  unfold Seg16.relationRow5997 at r5997
  unfold Seg16.relationRow5998 at r5998
  unfold Seg16.relationRow5999 at r5999
  unfold Seg16.relationRow6000 Seg16.relationLc1173 Seg16.relationLc1173Part0 Seg16.relationLc1173Part1 Seg16.relationLc1173Part2 Seg16.relationLc1173Part3 Seg16.relationLc1173Part4 Seg16.relationLc1173Part5 Seg16.relationLc1173Part6 Seg16.relationLc1173Part7 at r6000
  unfold Seg16.relationRow6001 Seg16.relationLc1174 Seg16.relationLc1174Part0 Seg16.relationLc1174Part1 Seg16.relationLc1174Part2 Seg16.relationLc1174Part3 Seg16.relationLc1174Part4 Seg16.relationLc1174Part5 Seg16.relationLc1174Part6 Seg16.relationLc1174Part7 at r6001
  unfold Seg16.relationRow6002 at r6002
  unfold Seg16.relationRow6003 at r6003
  unfold Seg16.relationRow6004 at r6004
  unfold Seg16.relationRow6005 at r6005
  unfold Seg16.relationRow6006 at r6006
  have hrung227 (bit : Bool) (hbit : rho 15519 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
        ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩
        ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
        ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩ := by
    have hsum : seg16AccX227 rho + seg16AccY227 rho = rho 18565 := by
      rw [seg16LadderFlatX227_eq, seg16LadderFlatY227_eq]
      unfold seg16LadderFlatX227 seg16LadderFlatY227
      linear_combination r5993
    have ha0 : (rho 18563 + rho 18564) * (seg16AccX227 rho + seg16AccY227 rho) = rho 18566 := by
      rw [hsum]
      linear_combination r5994
    have ha1 : rho 18564 * seg16AccX227 rho = rho 18567 := by
      rw [seg16LadderFlatX227_eq]
      unfold seg16LadderFlatX227
      linear_combination r5995
    have ha2 : rho 18563 * seg16AccY227 rho = rho 18568 := by
      rw [seg16LadderFlatY227_eq]
      unfold seg16LadderFlatY227
      linear_combination r5996
    have ha3 : 3021 * rho 18567 * rho 18568 = rho 18569 := by
      linear_combination r5997
    have ha4 : rho 18570 * (1 + rho 18569) = rho 18567 + rho 18568 := by
      linear_combination r5998
    have ha5 : rho 18571 * (1 - rho 18569) = rho 18566 - rho 18567 - rho 18568 := by
      linear_combination r5999
    have haddx :
        rho 18570 * (1 + 3021 * (rho 18564 * seg16AccX227 rho) * (rho 18563 * seg16AccY227 rho)) =
          rho 18564 * seg16AccX227 rho + rho 18563 * seg16AccY227 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18571 * (1 - 3021 * (rho 18564 * seg16AccX227 rho) * (rho 18563 * seg16AccY227 rho)) =
          (-1) * (rho 18564 * seg16AccX227 rho) - rho 18563 * seg16AccY227 rho +
            (seg16AccY227 rho - seg16AccX227 rho * (-1)) * (rho 18563 + rho 18564) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18571 * (1 - rho 18569) = rho 18566 - rho 18567 - rho 18568 := ha5
        _ = (-1) * rho 18567 - rho 18568 + (seg16AccY227 rho - seg16AccX227 rho * (-1)) * (rho 18563 + rho 18564) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX228 rho = seg16AccX227 rho - Bool.toZMod bit * (seg16AccX227 rho - rho 18570) := by
      have hd : rho 18572 = Bool.toZMod bit * (rho 18570 - seg16AccX227 rho) := by
        rw [← hbit, seg16LadderFlatX227_eq]
        unfold seg16LadderFlatX227
        linear_combination -r6000
      unfold seg16AccX228
      linear_combination hd
    have hsely : seg16AccY228 rho = seg16AccY227 rho - Bool.toZMod bit * (seg16AccY227 rho - rho 18571) := by
      have hd : rho 18573 = Bool.toZMod bit * (rho 18571 - seg16AccY227 rho) := by
        rw [← hbit, seg16LadderFlatY227_eq]
        unfold seg16LadderFlatY227
        linear_combination -r6001
      unfold seg16AccY228
      linear_combination hd
    have hd0 : rho 18563 * rho 18564 = rho 18574 := by linear_combination r6002
    have hd1 : rho 18563 * rho 18563 = rho 18575 := by linear_combination r6003
    have hd2 : rho 18564 * rho 18564 = rho 18576 := by linear_combination r6004
    have hd3 : rho 18577 * (rho 18564 * rho 18564 + rho 18563 * rho 18563 * (-1)) = 2 * (rho 18563 * rho 18564) := by
      rw [hd0, hd1, hd2]
      linear_combination r6005
    have hd4 : rho 18578 * (2 - (rho 18564 * rho 18564 + rho 18563 * rho 18563 * (-1))) = rho 18564 * rho 18564 - rho 18563 * rho 18563 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6006
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX227 rho : Seg16.F), (seg16AccY227 rho : Seg16.F)⟩
      ⟨(rho 18563 : Seg16.F), (rho 18564 : Seg16.F)⟩
      ⟨(rho 18570 : Seg16.F), (rho 18571 : Seg16.F)⟩
      ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
      ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung227

theorem seg16_rung228 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15520 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
        ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩
        ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
        ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩ := by
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
  rcases p75 with ⟨_, _, _, _, _, _, _, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6007 Seg16.relationLc1175 Seg16.relationLc1175Part0 Seg16.relationLc1175Part1 Seg16.relationLc1175Part2 Seg16.relationLc1175Part3 Seg16.relationLc1175Part4 Seg16.relationLc1175Part5 Seg16.relationLc1175Part6 Seg16.relationLc1175Part7 Seg16.relationLc1175Part8 Seg16.relationLc1175Part9 Seg16.relationLc1175Part10 Seg16.relationLc1175Part11 Seg16.relationLc1175Part12 Seg16.relationLc1175Part13 Seg16.relationLc1175Part14 at r6007
  unfold Seg16.relationRow6008 at r6008
  unfold Seg16.relationRow6009 Seg16.relationLc1176 Seg16.relationLc1176Part0 Seg16.relationLc1176Part1 Seg16.relationLc1176Part2 Seg16.relationLc1176Part3 Seg16.relationLc1176Part4 Seg16.relationLc1176Part5 Seg16.relationLc1176Part6 Seg16.relationLc1176Part7 at r6009
  unfold Seg16.relationRow6010 Seg16.relationLc1177 Seg16.relationLc1177Part0 Seg16.relationLc1177Part1 Seg16.relationLc1177Part2 Seg16.relationLc1177Part3 Seg16.relationLc1177Part4 Seg16.relationLc1177Part5 Seg16.relationLc1177Part6 Seg16.relationLc1177Part7 at r6010
  unfold Seg16.relationRow6011 at r6011
  unfold Seg16.relationRow6012 at r6012
  unfold Seg16.relationRow6013 at r6013
  unfold Seg16.relationRow6014 Seg16.relationLc1178 Seg16.relationLc1178Part0 Seg16.relationLc1178Part1 Seg16.relationLc1178Part2 Seg16.relationLc1178Part3 Seg16.relationLc1178Part4 Seg16.relationLc1178Part5 Seg16.relationLc1178Part6 Seg16.relationLc1178Part7 at r6014
  unfold Seg16.relationRow6015 Seg16.relationLc1179 Seg16.relationLc1179Part0 Seg16.relationLc1179Part1 Seg16.relationLc1179Part2 Seg16.relationLc1179Part3 Seg16.relationLc1179Part4 Seg16.relationLc1179Part5 Seg16.relationLc1179Part6 Seg16.relationLc1179Part7 at r6015
  unfold Seg16.relationRow6016 at r6016
  unfold Seg16.relationRow6017 at r6017
  unfold Seg16.relationRow6018 at r6018
  unfold Seg16.relationRow6019 at r6019
  unfold Seg16.relationRow6020 at r6020
  have hrung228 (bit : Bool) (hbit : rho 15520 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
        ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩
        ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
        ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩ := by
    have hsum : seg16AccX228 rho + seg16AccY228 rho = rho 18579 := by
      rw [seg16LadderFlatX228_eq, seg16LadderFlatY228_eq]
      unfold seg16LadderFlatX228 seg16LadderFlatY228
      linear_combination r6007
    have ha0 : (rho 18577 + rho 18578) * (seg16AccX228 rho + seg16AccY228 rho) = rho 18580 := by
      rw [hsum]
      linear_combination r6008
    have ha1 : rho 18578 * seg16AccX228 rho = rho 18581 := by
      rw [seg16LadderFlatX228_eq]
      unfold seg16LadderFlatX228
      linear_combination r6009
    have ha2 : rho 18577 * seg16AccY228 rho = rho 18582 := by
      rw [seg16LadderFlatY228_eq]
      unfold seg16LadderFlatY228
      linear_combination r6010
    have ha3 : 3021 * rho 18581 * rho 18582 = rho 18583 := by
      linear_combination r6011
    have ha4 : rho 18584 * (1 + rho 18583) = rho 18581 + rho 18582 := by
      linear_combination r6012
    have ha5 : rho 18585 * (1 - rho 18583) = rho 18580 - rho 18581 - rho 18582 := by
      linear_combination r6013
    have haddx :
        rho 18584 * (1 + 3021 * (rho 18578 * seg16AccX228 rho) * (rho 18577 * seg16AccY228 rho)) =
          rho 18578 * seg16AccX228 rho + rho 18577 * seg16AccY228 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18585 * (1 - 3021 * (rho 18578 * seg16AccX228 rho) * (rho 18577 * seg16AccY228 rho)) =
          (-1) * (rho 18578 * seg16AccX228 rho) - rho 18577 * seg16AccY228 rho +
            (seg16AccY228 rho - seg16AccX228 rho * (-1)) * (rho 18577 + rho 18578) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18585 * (1 - rho 18583) = rho 18580 - rho 18581 - rho 18582 := ha5
        _ = (-1) * rho 18581 - rho 18582 + (seg16AccY228 rho - seg16AccX228 rho * (-1)) * (rho 18577 + rho 18578) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX229 rho = seg16AccX228 rho - Bool.toZMod bit * (seg16AccX228 rho - rho 18584) := by
      have hd : rho 18586 = Bool.toZMod bit * (rho 18584 - seg16AccX228 rho) := by
        rw [← hbit, seg16LadderFlatX228_eq]
        unfold seg16LadderFlatX228
        linear_combination -r6014
      unfold seg16AccX229
      linear_combination hd
    have hsely : seg16AccY229 rho = seg16AccY228 rho - Bool.toZMod bit * (seg16AccY228 rho - rho 18585) := by
      have hd : rho 18587 = Bool.toZMod bit * (rho 18585 - seg16AccY228 rho) := by
        rw [← hbit, seg16LadderFlatY228_eq]
        unfold seg16LadderFlatY228
        linear_combination -r6015
      unfold seg16AccY229
      linear_combination hd
    have hd0 : rho 18577 * rho 18578 = rho 18588 := by linear_combination r6016
    have hd1 : rho 18577 * rho 18577 = rho 18589 := by linear_combination r6017
    have hd2 : rho 18578 * rho 18578 = rho 18590 := by linear_combination r6018
    have hd3 : rho 18591 * (rho 18578 * rho 18578 + rho 18577 * rho 18577 * (-1)) = 2 * (rho 18577 * rho 18578) := by
      rw [hd0, hd1, hd2]
      linear_combination r6019
    have hd4 : rho 18592 * (2 - (rho 18578 * rho 18578 + rho 18577 * rho 18577 * (-1))) = rho 18578 * rho 18578 - rho 18577 * rho 18577 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6020
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX228 rho : Seg16.F), (seg16AccY228 rho : Seg16.F)⟩
      ⟨(rho 18577 : Seg16.F), (rho 18578 : Seg16.F)⟩
      ⟨(rho 18584 : Seg16.F), (rho 18585 : Seg16.F)⟩
      ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
      ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung228

theorem seg16_rung229 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15521 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
        ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩
        ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
        ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩ := by
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
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6021 Seg16.relationLc1180 Seg16.relationLc1180Part0 Seg16.relationLc1180Part1 Seg16.relationLc1180Part2 Seg16.relationLc1180Part3 Seg16.relationLc1180Part4 Seg16.relationLc1180Part5 Seg16.relationLc1180Part6 Seg16.relationLc1180Part7 Seg16.relationLc1180Part8 Seg16.relationLc1180Part9 Seg16.relationLc1180Part10 Seg16.relationLc1180Part11 Seg16.relationLc1180Part12 Seg16.relationLc1180Part13 Seg16.relationLc1180Part14 at r6021
  unfold Seg16.relationRow6022 at r6022
  unfold Seg16.relationRow6023 Seg16.relationLc1181 Seg16.relationLc1181Part0 Seg16.relationLc1181Part1 Seg16.relationLc1181Part2 Seg16.relationLc1181Part3 Seg16.relationLc1181Part4 Seg16.relationLc1181Part5 Seg16.relationLc1181Part6 Seg16.relationLc1181Part7 at r6023
  unfold Seg16.relationRow6024 Seg16.relationLc1182 Seg16.relationLc1182Part0 Seg16.relationLc1182Part1 Seg16.relationLc1182Part2 Seg16.relationLc1182Part3 Seg16.relationLc1182Part4 Seg16.relationLc1182Part5 Seg16.relationLc1182Part6 Seg16.relationLc1182Part7 at r6024
  unfold Seg16.relationRow6025 at r6025
  unfold Seg16.relationRow6026 at r6026
  unfold Seg16.relationRow6027 at r6027
  unfold Seg16.relationRow6028 Seg16.relationLc1183 Seg16.relationLc1183Part0 Seg16.relationLc1183Part1 Seg16.relationLc1183Part2 Seg16.relationLc1183Part3 Seg16.relationLc1183Part4 Seg16.relationLc1183Part5 Seg16.relationLc1183Part6 Seg16.relationLc1183Part7 at r6028
  unfold Seg16.relationRow6029 Seg16.relationLc1184 Seg16.relationLc1184Part0 Seg16.relationLc1184Part1 Seg16.relationLc1184Part2 Seg16.relationLc1184Part3 Seg16.relationLc1184Part4 Seg16.relationLc1184Part5 Seg16.relationLc1184Part6 Seg16.relationLc1184Part7 at r6029
  unfold Seg16.relationRow6030 at r6030
  unfold Seg16.relationRow6031 at r6031
  unfold Seg16.relationRow6032 at r6032
  unfold Seg16.relationRow6033 at r6033
  unfold Seg16.relationRow6034 at r6034
  have hrung229 (bit : Bool) (hbit : rho 15521 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
        ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩
        ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
        ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩ := by
    have hsum : seg16AccX229 rho + seg16AccY229 rho = rho 18593 := by
      rw [seg16LadderFlatX229_eq, seg16LadderFlatY229_eq]
      unfold seg16LadderFlatX229 seg16LadderFlatY229
      linear_combination r6021
    have ha0 : (rho 18591 + rho 18592) * (seg16AccX229 rho + seg16AccY229 rho) = rho 18594 := by
      rw [hsum]
      linear_combination r6022
    have ha1 : rho 18592 * seg16AccX229 rho = rho 18595 := by
      rw [seg16LadderFlatX229_eq]
      unfold seg16LadderFlatX229
      linear_combination r6023
    have ha2 : rho 18591 * seg16AccY229 rho = rho 18596 := by
      rw [seg16LadderFlatY229_eq]
      unfold seg16LadderFlatY229
      linear_combination r6024
    have ha3 : 3021 * rho 18595 * rho 18596 = rho 18597 := by
      linear_combination r6025
    have ha4 : rho 18598 * (1 + rho 18597) = rho 18595 + rho 18596 := by
      linear_combination r6026
    have ha5 : rho 18599 * (1 - rho 18597) = rho 18594 - rho 18595 - rho 18596 := by
      linear_combination r6027
    have haddx :
        rho 18598 * (1 + 3021 * (rho 18592 * seg16AccX229 rho) * (rho 18591 * seg16AccY229 rho)) =
          rho 18592 * seg16AccX229 rho + rho 18591 * seg16AccY229 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18599 * (1 - 3021 * (rho 18592 * seg16AccX229 rho) * (rho 18591 * seg16AccY229 rho)) =
          (-1) * (rho 18592 * seg16AccX229 rho) - rho 18591 * seg16AccY229 rho +
            (seg16AccY229 rho - seg16AccX229 rho * (-1)) * (rho 18591 + rho 18592) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18599 * (1 - rho 18597) = rho 18594 - rho 18595 - rho 18596 := ha5
        _ = (-1) * rho 18595 - rho 18596 + (seg16AccY229 rho - seg16AccX229 rho * (-1)) * (rho 18591 + rho 18592) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX230 rho = seg16AccX229 rho - Bool.toZMod bit * (seg16AccX229 rho - rho 18598) := by
      have hd : rho 18600 = Bool.toZMod bit * (rho 18598 - seg16AccX229 rho) := by
        rw [← hbit, seg16LadderFlatX229_eq]
        unfold seg16LadderFlatX229
        linear_combination -r6028
      unfold seg16AccX230
      linear_combination hd
    have hsely : seg16AccY230 rho = seg16AccY229 rho - Bool.toZMod bit * (seg16AccY229 rho - rho 18599) := by
      have hd : rho 18601 = Bool.toZMod bit * (rho 18599 - seg16AccY229 rho) := by
        rw [← hbit, seg16LadderFlatY229_eq]
        unfold seg16LadderFlatY229
        linear_combination -r6029
      unfold seg16AccY230
      linear_combination hd
    have hd0 : rho 18591 * rho 18592 = rho 18602 := by linear_combination r6030
    have hd1 : rho 18591 * rho 18591 = rho 18603 := by linear_combination r6031
    have hd2 : rho 18592 * rho 18592 = rho 18604 := by linear_combination r6032
    have hd3 : rho 18605 * (rho 18592 * rho 18592 + rho 18591 * rho 18591 * (-1)) = 2 * (rho 18591 * rho 18592) := by
      rw [hd0, hd1, hd2]
      linear_combination r6033
    have hd4 : rho 18606 * (2 - (rho 18592 * rho 18592 + rho 18591 * rho 18591 * (-1))) = rho 18592 * rho 18592 - rho 18591 * rho 18591 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6034
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX229 rho : Seg16.F), (seg16AccY229 rho : Seg16.F)⟩
      ⟨(rho 18591 : Seg16.F), (rho 18592 : Seg16.F)⟩
      ⟨(rho 18598 : Seg16.F), (rho 18599 : Seg16.F)⟩
      ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
      ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung229

theorem seg16_rung230 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15522 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
        ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩
        ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
        ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩ := by
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
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6035 Seg16.relationLc1185 Seg16.relationLc1185Part0 Seg16.relationLc1185Part1 Seg16.relationLc1185Part2 Seg16.relationLc1185Part3 Seg16.relationLc1185Part4 Seg16.relationLc1185Part5 Seg16.relationLc1185Part6 Seg16.relationLc1185Part7 Seg16.relationLc1185Part8 Seg16.relationLc1185Part9 Seg16.relationLc1185Part10 Seg16.relationLc1185Part11 Seg16.relationLc1185Part12 Seg16.relationLc1185Part13 Seg16.relationLc1185Part14 at r6035
  unfold Seg16.relationRow6036 at r6036
  unfold Seg16.relationRow6037 Seg16.relationLc1186 Seg16.relationLc1186Part0 Seg16.relationLc1186Part1 Seg16.relationLc1186Part2 Seg16.relationLc1186Part3 Seg16.relationLc1186Part4 Seg16.relationLc1186Part5 Seg16.relationLc1186Part6 Seg16.relationLc1186Part7 at r6037
  unfold Seg16.relationRow6038 Seg16.relationLc1187 Seg16.relationLc1187Part0 Seg16.relationLc1187Part1 Seg16.relationLc1187Part2 Seg16.relationLc1187Part3 Seg16.relationLc1187Part4 Seg16.relationLc1187Part5 Seg16.relationLc1187Part6 Seg16.relationLc1187Part7 at r6038
  unfold Seg16.relationRow6039 at r6039
  unfold Seg16.relationRow6040 at r6040
  unfold Seg16.relationRow6041 at r6041
  unfold Seg16.relationRow6042 Seg16.relationLc1188 Seg16.relationLc1188Part0 Seg16.relationLc1188Part1 Seg16.relationLc1188Part2 Seg16.relationLc1188Part3 Seg16.relationLc1188Part4 Seg16.relationLc1188Part5 Seg16.relationLc1188Part6 Seg16.relationLc1188Part7 at r6042
  unfold Seg16.relationRow6043 Seg16.relationLc1189 Seg16.relationLc1189Part0 Seg16.relationLc1189Part1 Seg16.relationLc1189Part2 Seg16.relationLc1189Part3 Seg16.relationLc1189Part4 Seg16.relationLc1189Part5 Seg16.relationLc1189Part6 Seg16.relationLc1189Part7 at r6043
  unfold Seg16.relationRow6044 at r6044
  unfold Seg16.relationRow6045 at r6045
  unfold Seg16.relationRow6046 at r6046
  unfold Seg16.relationRow6047 at r6047
  unfold Seg16.relationRow6048 at r6048
  have hrung230 (bit : Bool) (hbit : rho 15522 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
        ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩
        ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
        ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩ := by
    have hsum : seg16AccX230 rho + seg16AccY230 rho = rho 18607 := by
      rw [seg16LadderFlatX230_eq, seg16LadderFlatY230_eq]
      unfold seg16LadderFlatX230 seg16LadderFlatY230
      linear_combination r6035
    have ha0 : (rho 18605 + rho 18606) * (seg16AccX230 rho + seg16AccY230 rho) = rho 18608 := by
      rw [hsum]
      linear_combination r6036
    have ha1 : rho 18606 * seg16AccX230 rho = rho 18609 := by
      rw [seg16LadderFlatX230_eq]
      unfold seg16LadderFlatX230
      linear_combination r6037
    have ha2 : rho 18605 * seg16AccY230 rho = rho 18610 := by
      rw [seg16LadderFlatY230_eq]
      unfold seg16LadderFlatY230
      linear_combination r6038
    have ha3 : 3021 * rho 18609 * rho 18610 = rho 18611 := by
      linear_combination r6039
    have ha4 : rho 18612 * (1 + rho 18611) = rho 18609 + rho 18610 := by
      linear_combination r6040
    have ha5 : rho 18613 * (1 - rho 18611) = rho 18608 - rho 18609 - rho 18610 := by
      linear_combination r6041
    have haddx :
        rho 18612 * (1 + 3021 * (rho 18606 * seg16AccX230 rho) * (rho 18605 * seg16AccY230 rho)) =
          rho 18606 * seg16AccX230 rho + rho 18605 * seg16AccY230 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18613 * (1 - 3021 * (rho 18606 * seg16AccX230 rho) * (rho 18605 * seg16AccY230 rho)) =
          (-1) * (rho 18606 * seg16AccX230 rho) - rho 18605 * seg16AccY230 rho +
            (seg16AccY230 rho - seg16AccX230 rho * (-1)) * (rho 18605 + rho 18606) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18613 * (1 - rho 18611) = rho 18608 - rho 18609 - rho 18610 := ha5
        _ = (-1) * rho 18609 - rho 18610 + (seg16AccY230 rho - seg16AccX230 rho * (-1)) * (rho 18605 + rho 18606) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX231 rho = seg16AccX230 rho - Bool.toZMod bit * (seg16AccX230 rho - rho 18612) := by
      have hd : rho 18614 = Bool.toZMod bit * (rho 18612 - seg16AccX230 rho) := by
        rw [← hbit, seg16LadderFlatX230_eq]
        unfold seg16LadderFlatX230
        linear_combination -r6042
      unfold seg16AccX231
      linear_combination hd
    have hsely : seg16AccY231 rho = seg16AccY230 rho - Bool.toZMod bit * (seg16AccY230 rho - rho 18613) := by
      have hd : rho 18615 = Bool.toZMod bit * (rho 18613 - seg16AccY230 rho) := by
        rw [← hbit, seg16LadderFlatY230_eq]
        unfold seg16LadderFlatY230
        linear_combination -r6043
      unfold seg16AccY231
      linear_combination hd
    have hd0 : rho 18605 * rho 18606 = rho 18616 := by linear_combination r6044
    have hd1 : rho 18605 * rho 18605 = rho 18617 := by linear_combination r6045
    have hd2 : rho 18606 * rho 18606 = rho 18618 := by linear_combination r6046
    have hd3 : rho 18619 * (rho 18606 * rho 18606 + rho 18605 * rho 18605 * (-1)) = 2 * (rho 18605 * rho 18606) := by
      rw [hd0, hd1, hd2]
      linear_combination r6047
    have hd4 : rho 18620 * (2 - (rho 18606 * rho 18606 + rho 18605 * rho 18605 * (-1))) = rho 18606 * rho 18606 - rho 18605 * rho 18605 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6048
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX230 rho : Seg16.F), (seg16AccY230 rho : Seg16.F)⟩
      ⟨(rho 18605 : Seg16.F), (rho 18606 : Seg16.F)⟩
      ⟨(rho 18612 : Seg16.F), (rho 18613 : Seg16.F)⟩
      ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
      ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung230

theorem seg16_rung231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15523 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX231 rho : Seg16.F), (seg16AccY231 rho : Seg16.F)⟩
        ⟨(rho 18619 : Seg16.F), (rho 18620 : Seg16.F)⟩
        ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩
        ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6049 Seg16.relationLc1190 Seg16.relationLc1190Part0 Seg16.relationLc1190Part1 Seg16.relationLc1190Part2 Seg16.relationLc1190Part3 Seg16.relationLc1190Part4 Seg16.relationLc1190Part5 Seg16.relationLc1190Part6 Seg16.relationLc1190Part7 Seg16.relationLc1190Part8 Seg16.relationLc1190Part9 Seg16.relationLc1190Part10 Seg16.relationLc1190Part11 Seg16.relationLc1190Part12 Seg16.relationLc1190Part13 Seg16.relationLc1190Part14 at r6049
  unfold Seg16.relationRow6050 at r6050
  unfold Seg16.relationRow6051 Seg16.relationLc1191 Seg16.relationLc1191Part0 Seg16.relationLc1191Part1 Seg16.relationLc1191Part2 Seg16.relationLc1191Part3 Seg16.relationLc1191Part4 Seg16.relationLc1191Part5 Seg16.relationLc1191Part6 Seg16.relationLc1191Part7 at r6051
  unfold Seg16.relationRow6052 Seg16.relationLc1192 Seg16.relationLc1192Part0 Seg16.relationLc1192Part1 Seg16.relationLc1192Part2 Seg16.relationLc1192Part3 Seg16.relationLc1192Part4 Seg16.relationLc1192Part5 Seg16.relationLc1192Part6 Seg16.relationLc1192Part7 at r6052
  unfold Seg16.relationRow6053 at r6053
  unfold Seg16.relationRow6054 at r6054
  unfold Seg16.relationRow6055 at r6055
  unfold Seg16.relationRow6056 Seg16.relationLc1193 Seg16.relationLc1193Part0 Seg16.relationLc1193Part1 Seg16.relationLc1193Part2 Seg16.relationLc1193Part3 Seg16.relationLc1193Part4 Seg16.relationLc1193Part5 Seg16.relationLc1193Part6 Seg16.relationLc1193Part7 at r6056
  unfold Seg16.relationRow6057 Seg16.relationLc1194 Seg16.relationLc1194Part0 Seg16.relationLc1194Part1 Seg16.relationLc1194Part2 Seg16.relationLc1194Part3 Seg16.relationLc1194Part4 Seg16.relationLc1194Part5 Seg16.relationLc1194Part6 Seg16.relationLc1194Part7 at r6057
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
    have hsum : seg16AccX231 rho + seg16AccY231 rho = rho 18621 := by
      rw [seg16LadderFlatX231_eq, seg16LadderFlatY231_eq]
      unfold seg16LadderFlatX231 seg16LadderFlatY231
      linear_combination r6049
    have ha0 : (rho 18619 + rho 18620) * (seg16AccX231 rho + seg16AccY231 rho) = rho 18622 := by
      rw [hsum]
      linear_combination r6050
    have ha1 : rho 18620 * seg16AccX231 rho = rho 18623 := by
      rw [seg16LadderFlatX231_eq]
      unfold seg16LadderFlatX231
      linear_combination r6051
    have ha2 : rho 18619 * seg16AccY231 rho = rho 18624 := by
      rw [seg16LadderFlatY231_eq]
      unfold seg16LadderFlatY231
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
        rw [← hbit, seg16LadderFlatX231_eq]
        unfold seg16LadderFlatX231
        linear_combination -r6056
      unfold seg16AccX232
      linear_combination hd
    have hsely : seg16AccY232 rho = seg16AccY231 rho - Bool.toZMod bit * (seg16AccY231 rho - rho 18627) := by
      have hd : rho 18629 = Bool.toZMod bit * (rho 18627 - seg16AccY231 rho) := by
        rw [← hbit, seg16LadderFlatY231_eq]
        unfold seg16LadderFlatY231
        linear_combination -r6057
      unfold seg16AccY232
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

theorem seg16_rung232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15524 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX232 rho : Seg16.F), (seg16AccY232 rho : Seg16.F)⟩
        ⟨(rho 18633 : Seg16.F), (rho 18634 : Seg16.F)⟩
        ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩
        ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6063 Seg16.relationLc1195 Seg16.relationLc1195Part0 Seg16.relationLc1195Part1 Seg16.relationLc1195Part2 Seg16.relationLc1195Part3 Seg16.relationLc1195Part4 Seg16.relationLc1195Part5 Seg16.relationLc1195Part6 Seg16.relationLc1195Part7 Seg16.relationLc1195Part8 Seg16.relationLc1195Part9 Seg16.relationLc1195Part10 Seg16.relationLc1195Part11 Seg16.relationLc1195Part12 Seg16.relationLc1195Part13 Seg16.relationLc1195Part14 at r6063
  unfold Seg16.relationRow6064 at r6064
  unfold Seg16.relationRow6065 Seg16.relationLc1196 Seg16.relationLc1196Part0 Seg16.relationLc1196Part1 Seg16.relationLc1196Part2 Seg16.relationLc1196Part3 Seg16.relationLc1196Part4 Seg16.relationLc1196Part5 Seg16.relationLc1196Part6 Seg16.relationLc1196Part7 at r6065
  unfold Seg16.relationRow6066 Seg16.relationLc1197 Seg16.relationLc1197Part0 Seg16.relationLc1197Part1 Seg16.relationLc1197Part2 Seg16.relationLc1197Part3 Seg16.relationLc1197Part4 Seg16.relationLc1197Part5 Seg16.relationLc1197Part6 Seg16.relationLc1197Part7 at r6066
  unfold Seg16.relationRow6067 at r6067
  unfold Seg16.relationRow6068 at r6068
  unfold Seg16.relationRow6069 at r6069
  unfold Seg16.relationRow6070 Seg16.relationLc1198 Seg16.relationLc1198Part0 Seg16.relationLc1198Part1 Seg16.relationLc1198Part2 Seg16.relationLc1198Part3 Seg16.relationLc1198Part4 Seg16.relationLc1198Part5 Seg16.relationLc1198Part6 Seg16.relationLc1198Part7 at r6070
  unfold Seg16.relationRow6071 Seg16.relationLc1199 Seg16.relationLc1199Part0 Seg16.relationLc1199Part1 Seg16.relationLc1199Part2 Seg16.relationLc1199Part3 Seg16.relationLc1199Part4 Seg16.relationLc1199Part5 Seg16.relationLc1199Part6 Seg16.relationLc1199Part7 at r6071
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
    have hsum : seg16AccX232 rho + seg16AccY232 rho = rho 18635 := by
      rw [seg16LadderFlatX232_eq, seg16LadderFlatY232_eq]
      unfold seg16LadderFlatX232 seg16LadderFlatY232
      linear_combination r6063
    have ha0 : (rho 18633 + rho 18634) * (seg16AccX232 rho + seg16AccY232 rho) = rho 18636 := by
      rw [hsum]
      linear_combination r6064
    have ha1 : rho 18634 * seg16AccX232 rho = rho 18637 := by
      rw [seg16LadderFlatX232_eq]
      unfold seg16LadderFlatX232
      linear_combination r6065
    have ha2 : rho 18633 * seg16AccY232 rho = rho 18638 := by
      rw [seg16LadderFlatY232_eq]
      unfold seg16LadderFlatY232
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
        rw [← hbit, seg16LadderFlatX232_eq]
        unfold seg16LadderFlatX232
        linear_combination -r6070
      unfold seg16AccX233
      linear_combination hd
    have hsely : seg16AccY233 rho = seg16AccY232 rho - Bool.toZMod bit * (seg16AccY232 rho - rho 18641) := by
      have hd : rho 18643 = Bool.toZMod bit * (rho 18641 - seg16AccY232 rho) := by
        rw [← hbit, seg16LadderFlatY232_eq]
        unfold seg16LadderFlatY232
        linear_combination -r6071
      unfold seg16AccY233
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

theorem seg16_rung233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15525 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX233 rho : Seg16.F), (seg16AccY233 rho : Seg16.F)⟩
        ⟨(rho 18647 : Seg16.F), (rho 18648 : Seg16.F)⟩
        ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩
        ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6077 Seg16.relationLc1200 Seg16.relationLc1200Part0 Seg16.relationLc1200Part1 Seg16.relationLc1200Part2 Seg16.relationLc1200Part3 Seg16.relationLc1200Part4 Seg16.relationLc1200Part5 Seg16.relationLc1200Part6 Seg16.relationLc1200Part7 Seg16.relationLc1200Part8 Seg16.relationLc1200Part9 Seg16.relationLc1200Part10 Seg16.relationLc1200Part11 Seg16.relationLc1200Part12 Seg16.relationLc1200Part13 Seg16.relationLc1200Part14 at r6077
  unfold Seg16.relationRow6078 at r6078
  unfold Seg16.relationRow6079 Seg16.relationLc1201 Seg16.relationLc1201Part0 Seg16.relationLc1201Part1 Seg16.relationLc1201Part2 Seg16.relationLc1201Part3 Seg16.relationLc1201Part4 Seg16.relationLc1201Part5 Seg16.relationLc1201Part6 Seg16.relationLc1201Part7 at r6079
  unfold Seg16.relationRow6080 Seg16.relationLc1202 Seg16.relationLc1202Part0 Seg16.relationLc1202Part1 Seg16.relationLc1202Part2 Seg16.relationLc1202Part3 Seg16.relationLc1202Part4 Seg16.relationLc1202Part5 Seg16.relationLc1202Part6 Seg16.relationLc1202Part7 at r6080
  unfold Seg16.relationRow6081 at r6081
  unfold Seg16.relationRow6082 at r6082
  unfold Seg16.relationRow6083 at r6083
  unfold Seg16.relationRow6084 Seg16.relationLc1203 Seg16.relationLc1203Part0 Seg16.relationLc1203Part1 Seg16.relationLc1203Part2 Seg16.relationLc1203Part3 Seg16.relationLc1203Part4 Seg16.relationLc1203Part5 Seg16.relationLc1203Part6 Seg16.relationLc1203Part7 at r6084
  unfold Seg16.relationRow6085 Seg16.relationLc1204 Seg16.relationLc1204Part0 Seg16.relationLc1204Part1 Seg16.relationLc1204Part2 Seg16.relationLc1204Part3 Seg16.relationLc1204Part4 Seg16.relationLc1204Part5 Seg16.relationLc1204Part6 Seg16.relationLc1204Part7 at r6085
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
    have hsum : seg16AccX233 rho + seg16AccY233 rho = rho 18649 := by
      rw [seg16LadderFlatX233_eq, seg16LadderFlatY233_eq]
      unfold seg16LadderFlatX233 seg16LadderFlatY233
      linear_combination r6077
    have ha0 : (rho 18647 + rho 18648) * (seg16AccX233 rho + seg16AccY233 rho) = rho 18650 := by
      rw [hsum]
      linear_combination r6078
    have ha1 : rho 18648 * seg16AccX233 rho = rho 18651 := by
      rw [seg16LadderFlatX233_eq]
      unfold seg16LadderFlatX233
      linear_combination r6079
    have ha2 : rho 18647 * seg16AccY233 rho = rho 18652 := by
      rw [seg16LadderFlatY233_eq]
      unfold seg16LadderFlatY233
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
        rw [← hbit, seg16LadderFlatX233_eq]
        unfold seg16LadderFlatX233
        linear_combination -r6084
      unfold seg16AccX234
      linear_combination hd
    have hsely : seg16AccY234 rho = seg16AccY233 rho - Bool.toZMod bit * (seg16AccY233 rho - rho 18655) := by
      have hd : rho 18657 = Bool.toZMod bit * (rho 18655 - seg16AccY233 rho) := by
        rw [← hbit, seg16LadderFlatY233_eq]
        unfold seg16LadderFlatY233
        linear_combination -r6085
      unfold seg16AccY234
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

theorem seg16_rung234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15526 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX234 rho : Seg16.F), (seg16AccY234 rho : Seg16.F)⟩
        ⟨(rho 18661 : Seg16.F), (rho 18662 : Seg16.F)⟩
        ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩
        ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6091 Seg16.relationLc1205 Seg16.relationLc1205Part0 Seg16.relationLc1205Part1 Seg16.relationLc1205Part2 Seg16.relationLc1205Part3 Seg16.relationLc1205Part4 Seg16.relationLc1205Part5 Seg16.relationLc1205Part6 Seg16.relationLc1205Part7 Seg16.relationLc1205Part8 Seg16.relationLc1205Part9 Seg16.relationLc1205Part10 Seg16.relationLc1205Part11 Seg16.relationLc1205Part12 Seg16.relationLc1205Part13 Seg16.relationLc1205Part14 at r6091
  unfold Seg16.relationRow6092 at r6092
  unfold Seg16.relationRow6093 Seg16.relationLc1206 Seg16.relationLc1206Part0 Seg16.relationLc1206Part1 Seg16.relationLc1206Part2 Seg16.relationLc1206Part3 Seg16.relationLc1206Part4 Seg16.relationLc1206Part5 Seg16.relationLc1206Part6 Seg16.relationLc1206Part7 at r6093
  unfold Seg16.relationRow6094 Seg16.relationLc1207 Seg16.relationLc1207Part0 Seg16.relationLc1207Part1 Seg16.relationLc1207Part2 Seg16.relationLc1207Part3 Seg16.relationLc1207Part4 Seg16.relationLc1207Part5 Seg16.relationLc1207Part6 Seg16.relationLc1207Part7 at r6094
  unfold Seg16.relationRow6095 at r6095
  unfold Seg16.relationRow6096 at r6096
  unfold Seg16.relationRow6097 at r6097
  unfold Seg16.relationRow6098 Seg16.relationLc1208 Seg16.relationLc1208Part0 Seg16.relationLc1208Part1 Seg16.relationLc1208Part2 Seg16.relationLc1208Part3 Seg16.relationLc1208Part4 Seg16.relationLc1208Part5 Seg16.relationLc1208Part6 Seg16.relationLc1208Part7 at r6098
  unfold Seg16.relationRow6099 Seg16.relationLc1209 Seg16.relationLc1209Part0 Seg16.relationLc1209Part1 Seg16.relationLc1209Part2 Seg16.relationLc1209Part3 Seg16.relationLc1209Part4 Seg16.relationLc1209Part5 Seg16.relationLc1209Part6 Seg16.relationLc1209Part7 at r6099
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
    have hsum : seg16AccX234 rho + seg16AccY234 rho = rho 18663 := by
      rw [seg16LadderFlatX234_eq, seg16LadderFlatY234_eq]
      unfold seg16LadderFlatX234 seg16LadderFlatY234
      linear_combination r6091
    have ha0 : (rho 18661 + rho 18662) * (seg16AccX234 rho + seg16AccY234 rho) = rho 18664 := by
      rw [hsum]
      linear_combination r6092
    have ha1 : rho 18662 * seg16AccX234 rho = rho 18665 := by
      rw [seg16LadderFlatX234_eq]
      unfold seg16LadderFlatX234
      linear_combination r6093
    have ha2 : rho 18661 * seg16AccY234 rho = rho 18666 := by
      rw [seg16LadderFlatY234_eq]
      unfold seg16LadderFlatY234
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
        rw [← hbit, seg16LadderFlatX234_eq]
        unfold seg16LadderFlatX234
        linear_combination -r6098
      unfold seg16AccX235
      linear_combination hd
    have hsely : seg16AccY235 rho = seg16AccY234 rho - Bool.toZMod bit * (seg16AccY234 rho - rho 18669) := by
      have hd : rho 18671 = Bool.toZMod bit * (rho 18669 - seg16AccY234 rho) := by
        rw [← hbit, seg16LadderFlatY234_eq]
        unfold seg16LadderFlatY234
        linear_combination -r6099
      unfold seg16AccY235
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

theorem seg16_rung235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15527 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX235 rho : Seg16.F), (seg16AccY235 rho : Seg16.F)⟩
        ⟨(rho 18675 : Seg16.F), (rho 18676 : Seg16.F)⟩
        ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩
        ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6105 Seg16.relationLc1210 Seg16.relationLc1210Part0 Seg16.relationLc1210Part1 Seg16.relationLc1210Part2 Seg16.relationLc1210Part3 Seg16.relationLc1210Part4 Seg16.relationLc1210Part5 Seg16.relationLc1210Part6 Seg16.relationLc1210Part7 Seg16.relationLc1210Part8 Seg16.relationLc1210Part9 Seg16.relationLc1210Part10 Seg16.relationLc1210Part11 Seg16.relationLc1210Part12 Seg16.relationLc1210Part13 Seg16.relationLc1210Part14 at r6105
  unfold Seg16.relationRow6106 at r6106
  unfold Seg16.relationRow6107 Seg16.relationLc1211 Seg16.relationLc1211Part0 Seg16.relationLc1211Part1 Seg16.relationLc1211Part2 Seg16.relationLc1211Part3 Seg16.relationLc1211Part4 Seg16.relationLc1211Part5 Seg16.relationLc1211Part6 Seg16.relationLc1211Part7 at r6107
  unfold Seg16.relationRow6108 Seg16.relationLc1212 Seg16.relationLc1212Part0 Seg16.relationLc1212Part1 Seg16.relationLc1212Part2 Seg16.relationLc1212Part3 Seg16.relationLc1212Part4 Seg16.relationLc1212Part5 Seg16.relationLc1212Part6 Seg16.relationLc1212Part7 at r6108
  unfold Seg16.relationRow6109 at r6109
  unfold Seg16.relationRow6110 at r6110
  unfold Seg16.relationRow6111 at r6111
  unfold Seg16.relationRow6112 Seg16.relationLc1213 Seg16.relationLc1213Part0 Seg16.relationLc1213Part1 Seg16.relationLc1213Part2 Seg16.relationLc1213Part3 Seg16.relationLc1213Part4 Seg16.relationLc1213Part5 Seg16.relationLc1213Part6 Seg16.relationLc1213Part7 at r6112
  unfold Seg16.relationRow6113 Seg16.relationLc1214 Seg16.relationLc1214Part0 Seg16.relationLc1214Part1 Seg16.relationLc1214Part2 Seg16.relationLc1214Part3 Seg16.relationLc1214Part4 Seg16.relationLc1214Part5 Seg16.relationLc1214Part6 Seg16.relationLc1214Part7 at r6113
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
    have hsum : seg16AccX235 rho + seg16AccY235 rho = rho 18677 := by
      rw [seg16LadderFlatX235_eq, seg16LadderFlatY235_eq]
      unfold seg16LadderFlatX235 seg16LadderFlatY235
      linear_combination r6105
    have ha0 : (rho 18675 + rho 18676) * (seg16AccX235 rho + seg16AccY235 rho) = rho 18678 := by
      rw [hsum]
      linear_combination r6106
    have ha1 : rho 18676 * seg16AccX235 rho = rho 18679 := by
      rw [seg16LadderFlatX235_eq]
      unfold seg16LadderFlatX235
      linear_combination r6107
    have ha2 : rho 18675 * seg16AccY235 rho = rho 18680 := by
      rw [seg16LadderFlatY235_eq]
      unfold seg16LadderFlatY235
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
        rw [← hbit, seg16LadderFlatX235_eq]
        unfold seg16LadderFlatX235
        linear_combination -r6112
      unfold seg16AccX236
      linear_combination hd
    have hsely : seg16AccY236 rho = seg16AccY235 rho - Bool.toZMod bit * (seg16AccY235 rho - rho 18683) := by
      have hd : rho 18685 = Bool.toZMod bit * (rho 18683 - seg16AccY235 rho) := by
        rw [← hbit, seg16LadderFlatY235_eq]
        unfold seg16LadderFlatY235
        linear_combination -r6113
      unfold seg16AccY236
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

theorem seg16_rung236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15528 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX236 rho : Seg16.F), (seg16AccY236 rho : Seg16.F)⟩
        ⟨(rho 18689 : Seg16.F), (rho 18690 : Seg16.F)⟩
        ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩
        ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6119 Seg16.relationLc1215 Seg16.relationLc1215Part0 Seg16.relationLc1215Part1 Seg16.relationLc1215Part2 Seg16.relationLc1215Part3 Seg16.relationLc1215Part4 Seg16.relationLc1215Part5 Seg16.relationLc1215Part6 Seg16.relationLc1215Part7 Seg16.relationLc1215Part8 Seg16.relationLc1215Part9 Seg16.relationLc1215Part10 Seg16.relationLc1215Part11 Seg16.relationLc1215Part12 Seg16.relationLc1215Part13 Seg16.relationLc1215Part14 at r6119
  unfold Seg16.relationRow6120 at r6120
  unfold Seg16.relationRow6121 Seg16.relationLc1216 Seg16.relationLc1216Part0 Seg16.relationLc1216Part1 Seg16.relationLc1216Part2 Seg16.relationLc1216Part3 Seg16.relationLc1216Part4 Seg16.relationLc1216Part5 Seg16.relationLc1216Part6 Seg16.relationLc1216Part7 at r6121
  unfold Seg16.relationRow6122 Seg16.relationLc1217 Seg16.relationLc1217Part0 Seg16.relationLc1217Part1 Seg16.relationLc1217Part2 Seg16.relationLc1217Part3 Seg16.relationLc1217Part4 Seg16.relationLc1217Part5 Seg16.relationLc1217Part6 Seg16.relationLc1217Part7 at r6122
  unfold Seg16.relationRow6123 at r6123
  unfold Seg16.relationRow6124 at r6124
  unfold Seg16.relationRow6125 at r6125
  unfold Seg16.relationRow6126 Seg16.relationLc1218 Seg16.relationLc1218Part0 Seg16.relationLc1218Part1 Seg16.relationLc1218Part2 Seg16.relationLc1218Part3 Seg16.relationLc1218Part4 Seg16.relationLc1218Part5 Seg16.relationLc1218Part6 Seg16.relationLc1218Part7 at r6126
  unfold Seg16.relationRow6127 Seg16.relationLc1219 Seg16.relationLc1219Part0 Seg16.relationLc1219Part1 Seg16.relationLc1219Part2 Seg16.relationLc1219Part3 Seg16.relationLc1219Part4 Seg16.relationLc1219Part5 Seg16.relationLc1219Part6 Seg16.relationLc1219Part7 at r6127
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
    have hsum : seg16AccX236 rho + seg16AccY236 rho = rho 18691 := by
      rw [seg16LadderFlatX236_eq, seg16LadderFlatY236_eq]
      unfold seg16LadderFlatX236 seg16LadderFlatY236
      linear_combination r6119
    have ha0 : (rho 18689 + rho 18690) * (seg16AccX236 rho + seg16AccY236 rho) = rho 18692 := by
      rw [hsum]
      linear_combination r6120
    have ha1 : rho 18690 * seg16AccX236 rho = rho 18693 := by
      rw [seg16LadderFlatX236_eq]
      unfold seg16LadderFlatX236
      linear_combination r6121
    have ha2 : rho 18689 * seg16AccY236 rho = rho 18694 := by
      rw [seg16LadderFlatY236_eq]
      unfold seg16LadderFlatY236
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
        rw [← hbit, seg16LadderFlatX236_eq]
        unfold seg16LadderFlatX236
        linear_combination -r6126
      unfold seg16AccX237
      linear_combination hd
    have hsely : seg16AccY237 rho = seg16AccY236 rho - Bool.toZMod bit * (seg16AccY236 rho - rho 18697) := by
      have hd : rho 18699 = Bool.toZMod bit * (rho 18697 - seg16AccY236 rho) := by
        rw [← hbit, seg16LadderFlatY236_eq]
        unfold seg16LadderFlatY236
        linear_combination -r6127
      unfold seg16AccY237
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

theorem seg16_rung237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15529 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX237 rho : Seg16.F), (seg16AccY237 rho : Seg16.F)⟩
        ⟨(rho 18703 : Seg16.F), (rho 18704 : Seg16.F)⟩
        ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩
        ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6133 Seg16.relationLc1220 Seg16.relationLc1220Part0 Seg16.relationLc1220Part1 Seg16.relationLc1220Part2 Seg16.relationLc1220Part3 Seg16.relationLc1220Part4 Seg16.relationLc1220Part5 Seg16.relationLc1220Part6 Seg16.relationLc1220Part7 Seg16.relationLc1220Part8 Seg16.relationLc1220Part9 Seg16.relationLc1220Part10 Seg16.relationLc1220Part11 Seg16.relationLc1220Part12 Seg16.relationLc1220Part13 Seg16.relationLc1220Part14 at r6133
  unfold Seg16.relationRow6134 at r6134
  unfold Seg16.relationRow6135 Seg16.relationLc1221 Seg16.relationLc1221Part0 Seg16.relationLc1221Part1 Seg16.relationLc1221Part2 Seg16.relationLc1221Part3 Seg16.relationLc1221Part4 Seg16.relationLc1221Part5 Seg16.relationLc1221Part6 Seg16.relationLc1221Part7 at r6135
  unfold Seg16.relationRow6136 Seg16.relationLc1222 Seg16.relationLc1222Part0 Seg16.relationLc1222Part1 Seg16.relationLc1222Part2 Seg16.relationLc1222Part3 Seg16.relationLc1222Part4 Seg16.relationLc1222Part5 Seg16.relationLc1222Part6 Seg16.relationLc1222Part7 at r6136
  unfold Seg16.relationRow6137 at r6137
  unfold Seg16.relationRow6138 at r6138
  unfold Seg16.relationRow6139 at r6139
  unfold Seg16.relationRow6140 Seg16.relationLc1223 Seg16.relationLc1223Part0 Seg16.relationLc1223Part1 Seg16.relationLc1223Part2 Seg16.relationLc1223Part3 Seg16.relationLc1223Part4 Seg16.relationLc1223Part5 Seg16.relationLc1223Part6 Seg16.relationLc1223Part7 at r6140
  unfold Seg16.relationRow6141 Seg16.relationLc1224 Seg16.relationLc1224Part0 Seg16.relationLc1224Part1 Seg16.relationLc1224Part2 Seg16.relationLc1224Part3 Seg16.relationLc1224Part4 Seg16.relationLc1224Part5 Seg16.relationLc1224Part6 Seg16.relationLc1224Part7 at r6141
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
    have hsum : seg16AccX237 rho + seg16AccY237 rho = rho 18705 := by
      rw [seg16LadderFlatX237_eq, seg16LadderFlatY237_eq]
      unfold seg16LadderFlatX237 seg16LadderFlatY237
      linear_combination r6133
    have ha0 : (rho 18703 + rho 18704) * (seg16AccX237 rho + seg16AccY237 rho) = rho 18706 := by
      rw [hsum]
      linear_combination r6134
    have ha1 : rho 18704 * seg16AccX237 rho = rho 18707 := by
      rw [seg16LadderFlatX237_eq]
      unfold seg16LadderFlatX237
      linear_combination r6135
    have ha2 : rho 18703 * seg16AccY237 rho = rho 18708 := by
      rw [seg16LadderFlatY237_eq]
      unfold seg16LadderFlatY237
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
        rw [← hbit, seg16LadderFlatX237_eq]
        unfold seg16LadderFlatX237
        linear_combination -r6140
      unfold seg16AccX238
      linear_combination hd
    have hsely : seg16AccY238 rho = seg16AccY237 rho - Bool.toZMod bit * (seg16AccY237 rho - rho 18711) := by
      have hd : rho 18713 = Bool.toZMod bit * (rho 18711 - seg16AccY237 rho) := by
        rw [← hbit, seg16LadderFlatY237_eq]
        unfold seg16LadderFlatY237
        linear_combination -r6141
      unfold seg16AccY238
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

theorem seg16_rung238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15530 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX238 rho : Seg16.F), (seg16AccY238 rho : Seg16.F)⟩
        ⟨(rho 18717 : Seg16.F), (rho 18718 : Seg16.F)⟩
        ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩
        ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6147 Seg16.relationLc1225 Seg16.relationLc1225Part0 Seg16.relationLc1225Part1 Seg16.relationLc1225Part2 Seg16.relationLc1225Part3 Seg16.relationLc1225Part4 Seg16.relationLc1225Part5 Seg16.relationLc1225Part6 Seg16.relationLc1225Part7 Seg16.relationLc1225Part8 Seg16.relationLc1225Part9 Seg16.relationLc1225Part10 Seg16.relationLc1225Part11 Seg16.relationLc1225Part12 Seg16.relationLc1225Part13 Seg16.relationLc1225Part14 at r6147
  unfold Seg16.relationRow6148 at r6148
  unfold Seg16.relationRow6149 Seg16.relationLc1226 Seg16.relationLc1226Part0 Seg16.relationLc1226Part1 Seg16.relationLc1226Part2 Seg16.relationLc1226Part3 Seg16.relationLc1226Part4 Seg16.relationLc1226Part5 Seg16.relationLc1226Part6 Seg16.relationLc1226Part7 at r6149
  unfold Seg16.relationRow6150 Seg16.relationLc1227 Seg16.relationLc1227Part0 Seg16.relationLc1227Part1 Seg16.relationLc1227Part2 Seg16.relationLc1227Part3 Seg16.relationLc1227Part4 Seg16.relationLc1227Part5 Seg16.relationLc1227Part6 Seg16.relationLc1227Part7 at r6150
  unfold Seg16.relationRow6151 at r6151
  unfold Seg16.relationRow6152 at r6152
  unfold Seg16.relationRow6153 at r6153
  unfold Seg16.relationRow6154 Seg16.relationLc1228 Seg16.relationLc1228Part0 Seg16.relationLc1228Part1 Seg16.relationLc1228Part2 Seg16.relationLc1228Part3 Seg16.relationLc1228Part4 Seg16.relationLc1228Part5 Seg16.relationLc1228Part6 Seg16.relationLc1228Part7 at r6154
  unfold Seg16.relationRow6155 Seg16.relationLc1229 Seg16.relationLc1229Part0 Seg16.relationLc1229Part1 Seg16.relationLc1229Part2 Seg16.relationLc1229Part3 Seg16.relationLc1229Part4 Seg16.relationLc1229Part5 Seg16.relationLc1229Part6 Seg16.relationLc1229Part7 at r6155
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
    have hsum : seg16AccX238 rho + seg16AccY238 rho = rho 18719 := by
      rw [seg16LadderFlatX238_eq, seg16LadderFlatY238_eq]
      unfold seg16LadderFlatX238 seg16LadderFlatY238
      linear_combination r6147
    have ha0 : (rho 18717 + rho 18718) * (seg16AccX238 rho + seg16AccY238 rho) = rho 18720 := by
      rw [hsum]
      linear_combination r6148
    have ha1 : rho 18718 * seg16AccX238 rho = rho 18721 := by
      rw [seg16LadderFlatX238_eq]
      unfold seg16LadderFlatX238
      linear_combination r6149
    have ha2 : rho 18717 * seg16AccY238 rho = rho 18722 := by
      rw [seg16LadderFlatY238_eq]
      unfold seg16LadderFlatY238
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
        rw [← hbit, seg16LadderFlatX238_eq]
        unfold seg16LadderFlatX238
        linear_combination -r6154
      unfold seg16AccX239
      linear_combination hd
    have hsely : seg16AccY239 rho = seg16AccY238 rho - Bool.toZMod bit * (seg16AccY238 rho - rho 18725) := by
      have hd : rho 18727 = Bool.toZMod bit * (rho 18725 - seg16AccY238 rho) := by
        rw [← hbit, seg16LadderFlatY238_eq]
        unfold seg16LadderFlatY238
        linear_combination -r6155
      unfold seg16AccY239
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

theorem seg16_rung239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15531 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX239 rho : Seg16.F), (seg16AccY239 rho : Seg16.F)⟩
        ⟨(rho 18731 : Seg16.F), (rho 18732 : Seg16.F)⟩
        ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩
        ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6161 Seg16.relationLc1230 Seg16.relationLc1230Part0 Seg16.relationLc1230Part1 Seg16.relationLc1230Part2 Seg16.relationLc1230Part3 Seg16.relationLc1230Part4 Seg16.relationLc1230Part5 Seg16.relationLc1230Part6 Seg16.relationLc1230Part7 Seg16.relationLc1230Part8 Seg16.relationLc1230Part9 Seg16.relationLc1230Part10 Seg16.relationLc1230Part11 Seg16.relationLc1230Part12 Seg16.relationLc1230Part13 Seg16.relationLc1230Part14 at r6161
  unfold Seg16.relationRow6162 at r6162
  unfold Seg16.relationRow6163 Seg16.relationLc1231 Seg16.relationLc1231Part0 Seg16.relationLc1231Part1 Seg16.relationLc1231Part2 Seg16.relationLc1231Part3 Seg16.relationLc1231Part4 Seg16.relationLc1231Part5 Seg16.relationLc1231Part6 Seg16.relationLc1231Part7 at r6163
  unfold Seg16.relationRow6164 Seg16.relationLc1232 Seg16.relationLc1232Part0 Seg16.relationLc1232Part1 Seg16.relationLc1232Part2 Seg16.relationLc1232Part3 Seg16.relationLc1232Part4 Seg16.relationLc1232Part5 Seg16.relationLc1232Part6 Seg16.relationLc1232Part7 at r6164
  unfold Seg16.relationRow6165 at r6165
  unfold Seg16.relationRow6166 at r6166
  unfold Seg16.relationRow6167 at r6167
  unfold Seg16.relationRow6168 Seg16.relationLc1233 Seg16.relationLc1233Part0 Seg16.relationLc1233Part1 Seg16.relationLc1233Part2 Seg16.relationLc1233Part3 Seg16.relationLc1233Part4 Seg16.relationLc1233Part5 Seg16.relationLc1233Part6 Seg16.relationLc1233Part7 at r6168
  unfold Seg16.relationRow6169 Seg16.relationLc1234 Seg16.relationLc1234Part0 Seg16.relationLc1234Part1 Seg16.relationLc1234Part2 Seg16.relationLc1234Part3 Seg16.relationLc1234Part4 Seg16.relationLc1234Part5 Seg16.relationLc1234Part6 Seg16.relationLc1234Part7 at r6169
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
    have hsum : seg16AccX239 rho + seg16AccY239 rho = rho 18733 := by
      rw [seg16LadderFlatX239_eq, seg16LadderFlatY239_eq]
      unfold seg16LadderFlatX239 seg16LadderFlatY239
      linear_combination r6161
    have ha0 : (rho 18731 + rho 18732) * (seg16AccX239 rho + seg16AccY239 rho) = rho 18734 := by
      rw [hsum]
      linear_combination r6162
    have ha1 : rho 18732 * seg16AccX239 rho = rho 18735 := by
      rw [seg16LadderFlatX239_eq]
      unfold seg16LadderFlatX239
      linear_combination r6163
    have ha2 : rho 18731 * seg16AccY239 rho = rho 18736 := by
      rw [seg16LadderFlatY239_eq]
      unfold seg16LadderFlatY239
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
        rw [← hbit, seg16LadderFlatX239_eq]
        unfold seg16LadderFlatX239
        linear_combination -r6168
      unfold seg16AccX240
      linear_combination hd
    have hsely : seg16AccY240 rho = seg16AccY239 rho - Bool.toZMod bit * (seg16AccY239 rho - rho 18739) := by
      have hd : rho 18741 = Bool.toZMod bit * (rho 18739 - seg16AccY239 rho) := by
        rw [← hbit, seg16LadderFlatY239_eq]
        unfold seg16LadderFlatY239
        linear_combination -r6169
      unfold seg16AccY240
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

theorem seg16_rung240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15532 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX240 rho : Seg16.F), (seg16AccY240 rho : Seg16.F)⟩
        ⟨(rho 18745 : Seg16.F), (rho 18746 : Seg16.F)⟩
        ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩
        ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6175 Seg16.relationLc1235 Seg16.relationLc1235Part0 Seg16.relationLc1235Part1 Seg16.relationLc1235Part2 Seg16.relationLc1235Part3 Seg16.relationLc1235Part4 Seg16.relationLc1235Part5 Seg16.relationLc1235Part6 Seg16.relationLc1235Part7 Seg16.relationLc1235Part8 Seg16.relationLc1235Part9 Seg16.relationLc1235Part10 Seg16.relationLc1235Part11 Seg16.relationLc1235Part12 Seg16.relationLc1235Part13 Seg16.relationLc1235Part14 Seg16.relationLc1235Part15 at r6175
  unfold Seg16.relationRow6176 at r6176
  unfold Seg16.relationRow6177 Seg16.relationLc1236 Seg16.relationLc1236Part0 Seg16.relationLc1236Part1 Seg16.relationLc1236Part2 Seg16.relationLc1236Part3 Seg16.relationLc1236Part4 Seg16.relationLc1236Part5 Seg16.relationLc1236Part6 Seg16.relationLc1236Part7 at r6177
  unfold Seg16.relationRow6178 Seg16.relationLc1237 Seg16.relationLc1237Part0 Seg16.relationLc1237Part1 Seg16.relationLc1237Part2 Seg16.relationLc1237Part3 Seg16.relationLc1237Part4 Seg16.relationLc1237Part5 Seg16.relationLc1237Part6 Seg16.relationLc1237Part7 at r6178
  unfold Seg16.relationRow6179 at r6179
  unfold Seg16.relationRow6180 at r6180
  unfold Seg16.relationRow6181 at r6181
  unfold Seg16.relationRow6182 Seg16.relationLc1238 Seg16.relationLc1238Part0 Seg16.relationLc1238Part1 Seg16.relationLc1238Part2 Seg16.relationLc1238Part3 Seg16.relationLc1238Part4 Seg16.relationLc1238Part5 Seg16.relationLc1238Part6 Seg16.relationLc1238Part7 at r6182
  unfold Seg16.relationRow6183 Seg16.relationLc1239 Seg16.relationLc1239Part0 Seg16.relationLc1239Part1 Seg16.relationLc1239Part2 Seg16.relationLc1239Part3 Seg16.relationLc1239Part4 Seg16.relationLc1239Part5 Seg16.relationLc1239Part6 Seg16.relationLc1239Part7 at r6183
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
    have hsum : seg16AccX240 rho + seg16AccY240 rho = rho 18747 := by
      rw [seg16LadderFlatX240_eq, seg16LadderFlatY240_eq]
      unfold seg16LadderFlatX240 seg16LadderFlatY240
      linear_combination r6175
    have ha0 : (rho 18745 + rho 18746) * (seg16AccX240 rho + seg16AccY240 rho) = rho 18748 := by
      rw [hsum]
      linear_combination r6176
    have ha1 : rho 18746 * seg16AccX240 rho = rho 18749 := by
      rw [seg16LadderFlatX240_eq]
      unfold seg16LadderFlatX240
      linear_combination r6177
    have ha2 : rho 18745 * seg16AccY240 rho = rho 18750 := by
      rw [seg16LadderFlatY240_eq]
      unfold seg16LadderFlatY240
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
        rw [← hbit, seg16LadderFlatX240_eq]
        unfold seg16LadderFlatX240
        linear_combination -r6182
      unfold seg16AccX241
      linear_combination hd
    have hsely : seg16AccY241 rho = seg16AccY240 rho - Bool.toZMod bit * (seg16AccY240 rho - rho 18753) := by
      have hd : rho 18755 = Bool.toZMod bit * (rho 18753 - seg16AccY240 rho) := by
        rw [← hbit, seg16LadderFlatY240_eq]
        unfold seg16LadderFlatY240
        linear_combination -r6183
      unfold seg16AccY241
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

theorem seg16_rung241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15533 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX241 rho : Seg16.F), (seg16AccY241 rho : Seg16.F)⟩
        ⟨(rho 18759 : Seg16.F), (rho 18760 : Seg16.F)⟩
        ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
        ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩ := by
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
  unfold Seg16.relationRow6189 Seg16.relationLc1240 Seg16.relationLc1240Part0 Seg16.relationLc1240Part1 Seg16.relationLc1240Part2 Seg16.relationLc1240Part3 Seg16.relationLc1240Part4 Seg16.relationLc1240Part5 Seg16.relationLc1240Part6 Seg16.relationLc1240Part7 Seg16.relationLc1240Part8 Seg16.relationLc1240Part9 Seg16.relationLc1240Part10 Seg16.relationLc1240Part11 Seg16.relationLc1240Part12 Seg16.relationLc1240Part13 Seg16.relationLc1240Part14 Seg16.relationLc1240Part15 at r6189
  unfold Seg16.relationRow6190 at r6190
  unfold Seg16.relationRow6191 Seg16.relationLc1241 Seg16.relationLc1241Part0 Seg16.relationLc1241Part1 Seg16.relationLc1241Part2 Seg16.relationLc1241Part3 Seg16.relationLc1241Part4 Seg16.relationLc1241Part5 Seg16.relationLc1241Part6 Seg16.relationLc1241Part7 at r6191
  unfold Seg16.relationRow6192 Seg16.relationLc1242 Seg16.relationLc1242Part0 Seg16.relationLc1242Part1 Seg16.relationLc1242Part2 Seg16.relationLc1242Part3 Seg16.relationLc1242Part4 Seg16.relationLc1242Part5 Seg16.relationLc1242Part6 Seg16.relationLc1242Part7 at r6192
  unfold Seg16.relationRow6193 at r6193
  unfold Seg16.relationRow6194 at r6194
  unfold Seg16.relationRow6195 at r6195
  unfold Seg16.relationRow6196 Seg16.relationLc1243 Seg16.relationLc1243Part0 Seg16.relationLc1243Part1 Seg16.relationLc1243Part2 Seg16.relationLc1243Part3 Seg16.relationLc1243Part4 Seg16.relationLc1243Part5 Seg16.relationLc1243Part6 Seg16.relationLc1243Part7 at r6196
  unfold Seg16.relationRow6197 Seg16.relationLc1244 Seg16.relationLc1244Part0 Seg16.relationLc1244Part1 Seg16.relationLc1244Part2 Seg16.relationLc1244Part3 Seg16.relationLc1244Part4 Seg16.relationLc1244Part5 Seg16.relationLc1244Part6 Seg16.relationLc1244Part7 at r6197
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
    have hsum : seg16AccX241 rho + seg16AccY241 rho = rho 18761 := by
      rw [seg16LadderFlatX241_eq, seg16LadderFlatY241_eq]
      unfold seg16LadderFlatX241 seg16LadderFlatY241
      linear_combination r6189
    have ha0 : (rho 18759 + rho 18760) * (seg16AccX241 rho + seg16AccY241 rho) = rho 18762 := by
      rw [hsum]
      linear_combination r6190
    have ha1 : rho 18760 * seg16AccX241 rho = rho 18763 := by
      rw [seg16LadderFlatX241_eq]
      unfold seg16LadderFlatX241
      linear_combination r6191
    have ha2 : rho 18759 * seg16AccY241 rho = rho 18764 := by
      rw [seg16LadderFlatY241_eq]
      unfold seg16LadderFlatY241
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
        rw [← hbit, seg16LadderFlatX241_eq]
        unfold seg16LadderFlatX241
        linear_combination -r6196
      unfold seg16AccX242
      linear_combination hd
    have hsely : seg16AccY242 rho = seg16AccY241 rho - Bool.toZMod bit * (seg16AccY241 rho - rho 18767) := by
      have hd : rho 18769 = Bool.toZMod bit * (rho 18767 - seg16AccY241 rho) := by
        rw [← hbit, seg16LadderFlatY241_eq]
        unfold seg16LadderFlatY241
        linear_combination -r6197
      unfold seg16AccY242
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

theorem seg16_rung242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15534 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
        ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩
        ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
        ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩ := by
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
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6203 Seg16.relationLc1245 Seg16.relationLc1245Part0 Seg16.relationLc1245Part1 Seg16.relationLc1245Part2 Seg16.relationLc1245Part3 Seg16.relationLc1245Part4 Seg16.relationLc1245Part5 Seg16.relationLc1245Part6 Seg16.relationLc1245Part7 Seg16.relationLc1245Part8 Seg16.relationLc1245Part9 Seg16.relationLc1245Part10 Seg16.relationLc1245Part11 Seg16.relationLc1245Part12 Seg16.relationLc1245Part13 Seg16.relationLc1245Part14 Seg16.relationLc1245Part15 at r6203
  unfold Seg16.relationRow6204 at r6204
  unfold Seg16.relationRow6205 Seg16.relationLc1246 Seg16.relationLc1246Part0 Seg16.relationLc1246Part1 Seg16.relationLc1246Part2 Seg16.relationLc1246Part3 Seg16.relationLc1246Part4 Seg16.relationLc1246Part5 Seg16.relationLc1246Part6 Seg16.relationLc1246Part7 at r6205
  unfold Seg16.relationRow6206 Seg16.relationLc1247 Seg16.relationLc1247Part0 Seg16.relationLc1247Part1 Seg16.relationLc1247Part2 Seg16.relationLc1247Part3 Seg16.relationLc1247Part4 Seg16.relationLc1247Part5 Seg16.relationLc1247Part6 Seg16.relationLc1247Part7 at r6206
  unfold Seg16.relationRow6207 at r6207
  unfold Seg16.relationRow6208 at r6208
  unfold Seg16.relationRow6209 at r6209
  unfold Seg16.relationRow6210 Seg16.relationLc1248 Seg16.relationLc1248Part0 Seg16.relationLc1248Part1 Seg16.relationLc1248Part2 Seg16.relationLc1248Part3 Seg16.relationLc1248Part4 Seg16.relationLc1248Part5 Seg16.relationLc1248Part6 Seg16.relationLc1248Part7 at r6210
  unfold Seg16.relationRow6211 Seg16.relationLc1249 Seg16.relationLc1249Part0 Seg16.relationLc1249Part1 Seg16.relationLc1249Part2 Seg16.relationLc1249Part3 Seg16.relationLc1249Part4 Seg16.relationLc1249Part5 Seg16.relationLc1249Part6 Seg16.relationLc1249Part7 at r6211
  unfold Seg16.relationRow6212 at r6212
  unfold Seg16.relationRow6213 at r6213
  unfold Seg16.relationRow6214 at r6214
  unfold Seg16.relationRow6215 at r6215
  unfold Seg16.relationRow6216 at r6216
  have hrung242 (bit : Bool) (hbit : rho 15534 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
        ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩
        ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
        ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩ := by
    have hsum : seg16AccX242 rho + seg16AccY242 rho = rho 18775 := by
      rw [seg16LadderFlatX242_eq, seg16LadderFlatY242_eq]
      unfold seg16LadderFlatX242 seg16LadderFlatY242
      linear_combination r6203
    have ha0 : (rho 18773 + rho 18774) * (seg16AccX242 rho + seg16AccY242 rho) = rho 18776 := by
      rw [hsum]
      linear_combination r6204
    have ha1 : rho 18774 * seg16AccX242 rho = rho 18777 := by
      rw [seg16LadderFlatX242_eq]
      unfold seg16LadderFlatX242
      linear_combination r6205
    have ha2 : rho 18773 * seg16AccY242 rho = rho 18778 := by
      rw [seg16LadderFlatY242_eq]
      unfold seg16LadderFlatY242
      linear_combination r6206
    have ha3 : 3021 * rho 18777 * rho 18778 = rho 18779 := by
      linear_combination r6207
    have ha4 : rho 18780 * (1 + rho 18779) = rho 18777 + rho 18778 := by
      linear_combination r6208
    have ha5 : rho 18781 * (1 - rho 18779) = rho 18776 - rho 18777 - rho 18778 := by
      linear_combination r6209
    have haddx :
        rho 18780 * (1 + 3021 * (rho 18774 * seg16AccX242 rho) * (rho 18773 * seg16AccY242 rho)) =
          rho 18774 * seg16AccX242 rho + rho 18773 * seg16AccY242 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18781 * (1 - 3021 * (rho 18774 * seg16AccX242 rho) * (rho 18773 * seg16AccY242 rho)) =
          (-1) * (rho 18774 * seg16AccX242 rho) - rho 18773 * seg16AccY242 rho +
            (seg16AccY242 rho - seg16AccX242 rho * (-1)) * (rho 18773 + rho 18774) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18781 * (1 - rho 18779) = rho 18776 - rho 18777 - rho 18778 := ha5
        _ = (-1) * rho 18777 - rho 18778 + (seg16AccY242 rho - seg16AccX242 rho * (-1)) * (rho 18773 + rho 18774) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX243 rho = seg16AccX242 rho - Bool.toZMod bit * (seg16AccX242 rho - rho 18780) := by
      have hd : rho 18782 = Bool.toZMod bit * (rho 18780 - seg16AccX242 rho) := by
        rw [← hbit, seg16LadderFlatX242_eq]
        unfold seg16LadderFlatX242
        linear_combination -r6210
      unfold seg16AccX243
      linear_combination hd
    have hsely : seg16AccY243 rho = seg16AccY242 rho - Bool.toZMod bit * (seg16AccY242 rho - rho 18781) := by
      have hd : rho 18783 = Bool.toZMod bit * (rho 18781 - seg16AccY242 rho) := by
        rw [← hbit, seg16LadderFlatY242_eq]
        unfold seg16LadderFlatY242
        linear_combination -r6211
      unfold seg16AccY243
      linear_combination hd
    have hd0 : rho 18773 * rho 18774 = rho 18784 := by linear_combination r6212
    have hd1 : rho 18773 * rho 18773 = rho 18785 := by linear_combination r6213
    have hd2 : rho 18774 * rho 18774 = rho 18786 := by linear_combination r6214
    have hd3 : rho 18787 * (rho 18774 * rho 18774 + rho 18773 * rho 18773 * (-1)) = 2 * (rho 18773 * rho 18774) := by
      rw [hd0, hd1, hd2]
      linear_combination r6215
    have hd4 : rho 18788 * (2 - (rho 18774 * rho 18774 + rho 18773 * rho 18773 * (-1))) = rho 18774 * rho 18774 - rho 18773 * rho 18773 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6216
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
      ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩
      ⟨(rho 18780 : Seg16.F), (rho 18781 : Seg16.F)⟩
      ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
      ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung242

theorem seg16_rung243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15535 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
        ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩
        ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
        ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩ := by
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
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6217 Seg16.relationLc1250 Seg16.relationLc1250Part0 Seg16.relationLc1250Part1 Seg16.relationLc1250Part2 Seg16.relationLc1250Part3 Seg16.relationLc1250Part4 Seg16.relationLc1250Part5 Seg16.relationLc1250Part6 Seg16.relationLc1250Part7 Seg16.relationLc1250Part8 Seg16.relationLc1250Part9 Seg16.relationLc1250Part10 Seg16.relationLc1250Part11 Seg16.relationLc1250Part12 Seg16.relationLc1250Part13 Seg16.relationLc1250Part14 Seg16.relationLc1250Part15 at r6217
  unfold Seg16.relationRow6218 at r6218
  unfold Seg16.relationRow6219 Seg16.relationLc1251 Seg16.relationLc1251Part0 Seg16.relationLc1251Part1 Seg16.relationLc1251Part2 Seg16.relationLc1251Part3 Seg16.relationLc1251Part4 Seg16.relationLc1251Part5 Seg16.relationLc1251Part6 Seg16.relationLc1251Part7 at r6219
  unfold Seg16.relationRow6220 Seg16.relationLc1252 Seg16.relationLc1252Part0 Seg16.relationLc1252Part1 Seg16.relationLc1252Part2 Seg16.relationLc1252Part3 Seg16.relationLc1252Part4 Seg16.relationLc1252Part5 Seg16.relationLc1252Part6 Seg16.relationLc1252Part7 at r6220
  unfold Seg16.relationRow6221 at r6221
  unfold Seg16.relationRow6222 at r6222
  unfold Seg16.relationRow6223 at r6223
  unfold Seg16.relationRow6224 Seg16.relationLc1253 Seg16.relationLc1253Part0 Seg16.relationLc1253Part1 Seg16.relationLc1253Part2 Seg16.relationLc1253Part3 Seg16.relationLc1253Part4 Seg16.relationLc1253Part5 Seg16.relationLc1253Part6 Seg16.relationLc1253Part7 at r6224
  unfold Seg16.relationRow6225 Seg16.relationLc1254 Seg16.relationLc1254Part0 Seg16.relationLc1254Part1 Seg16.relationLc1254Part2 Seg16.relationLc1254Part3 Seg16.relationLc1254Part4 Seg16.relationLc1254Part5 Seg16.relationLc1254Part6 Seg16.relationLc1254Part7 at r6225
  unfold Seg16.relationRow6226 at r6226
  unfold Seg16.relationRow6227 at r6227
  unfold Seg16.relationRow6228 at r6228
  unfold Seg16.relationRow6229 at r6229
  unfold Seg16.relationRow6230 at r6230
  have hrung243 (bit : Bool) (hbit : rho 15535 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
        ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩
        ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
        ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩ := by
    have hsum : seg16AccX243 rho + seg16AccY243 rho = rho 18789 := by
      rw [seg16LadderFlatX243_eq, seg16LadderFlatY243_eq]
      unfold seg16LadderFlatX243 seg16LadderFlatY243
      linear_combination r6217
    have ha0 : (rho 18787 + rho 18788) * (seg16AccX243 rho + seg16AccY243 rho) = rho 18790 := by
      rw [hsum]
      linear_combination r6218
    have ha1 : rho 18788 * seg16AccX243 rho = rho 18791 := by
      rw [seg16LadderFlatX243_eq]
      unfold seg16LadderFlatX243
      linear_combination r6219
    have ha2 : rho 18787 * seg16AccY243 rho = rho 18792 := by
      rw [seg16LadderFlatY243_eq]
      unfold seg16LadderFlatY243
      linear_combination r6220
    have ha3 : 3021 * rho 18791 * rho 18792 = rho 18793 := by
      linear_combination r6221
    have ha4 : rho 18794 * (1 + rho 18793) = rho 18791 + rho 18792 := by
      linear_combination r6222
    have ha5 : rho 18795 * (1 - rho 18793) = rho 18790 - rho 18791 - rho 18792 := by
      linear_combination r6223
    have haddx :
        rho 18794 * (1 + 3021 * (rho 18788 * seg16AccX243 rho) * (rho 18787 * seg16AccY243 rho)) =
          rho 18788 * seg16AccX243 rho + rho 18787 * seg16AccY243 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18795 * (1 - 3021 * (rho 18788 * seg16AccX243 rho) * (rho 18787 * seg16AccY243 rho)) =
          (-1) * (rho 18788 * seg16AccX243 rho) - rho 18787 * seg16AccY243 rho +
            (seg16AccY243 rho - seg16AccX243 rho * (-1)) * (rho 18787 + rho 18788) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18795 * (1 - rho 18793) = rho 18790 - rho 18791 - rho 18792 := ha5
        _ = (-1) * rho 18791 - rho 18792 + (seg16AccY243 rho - seg16AccX243 rho * (-1)) * (rho 18787 + rho 18788) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX244 rho = seg16AccX243 rho - Bool.toZMod bit * (seg16AccX243 rho - rho 18794) := by
      have hd : rho 18796 = Bool.toZMod bit * (rho 18794 - seg16AccX243 rho) := by
        rw [← hbit, seg16LadderFlatX243_eq]
        unfold seg16LadderFlatX243
        linear_combination -r6224
      unfold seg16AccX244
      linear_combination hd
    have hsely : seg16AccY244 rho = seg16AccY243 rho - Bool.toZMod bit * (seg16AccY243 rho - rho 18795) := by
      have hd : rho 18797 = Bool.toZMod bit * (rho 18795 - seg16AccY243 rho) := by
        rw [← hbit, seg16LadderFlatY243_eq]
        unfold seg16LadderFlatY243
        linear_combination -r6225
      unfold seg16AccY244
      linear_combination hd
    have hd0 : rho 18787 * rho 18788 = rho 18798 := by linear_combination r6226
    have hd1 : rho 18787 * rho 18787 = rho 18799 := by linear_combination r6227
    have hd2 : rho 18788 * rho 18788 = rho 18800 := by linear_combination r6228
    have hd3 : rho 18801 * (rho 18788 * rho 18788 + rho 18787 * rho 18787 * (-1)) = 2 * (rho 18787 * rho 18788) := by
      rw [hd0, hd1, hd2]
      linear_combination r6229
    have hd4 : rho 18802 * (2 - (rho 18788 * rho 18788 + rho 18787 * rho 18787 * (-1))) = rho 18788 * rho 18788 - rho 18787 * rho 18787 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6230
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
      ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩
      ⟨(rho 18794 : Seg16.F), (rho 18795 : Seg16.F)⟩
      ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
      ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung243

theorem seg16_rung244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15536 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
        ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩
        ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
        ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6231 Seg16.relationLc1255 Seg16.relationLc1255Part0 Seg16.relationLc1255Part1 Seg16.relationLc1255Part2 Seg16.relationLc1255Part3 Seg16.relationLc1255Part4 Seg16.relationLc1255Part5 Seg16.relationLc1255Part6 Seg16.relationLc1255Part7 Seg16.relationLc1255Part8 Seg16.relationLc1255Part9 Seg16.relationLc1255Part10 Seg16.relationLc1255Part11 Seg16.relationLc1255Part12 Seg16.relationLc1255Part13 Seg16.relationLc1255Part14 Seg16.relationLc1255Part15 at r6231
  unfold Seg16.relationRow6232 at r6232
  unfold Seg16.relationRow6233 Seg16.relationLc1256 Seg16.relationLc1256Part0 Seg16.relationLc1256Part1 Seg16.relationLc1256Part2 Seg16.relationLc1256Part3 Seg16.relationLc1256Part4 Seg16.relationLc1256Part5 Seg16.relationLc1256Part6 Seg16.relationLc1256Part7 at r6233
  unfold Seg16.relationRow6234 Seg16.relationLc1257 Seg16.relationLc1257Part0 Seg16.relationLc1257Part1 Seg16.relationLc1257Part2 Seg16.relationLc1257Part3 Seg16.relationLc1257Part4 Seg16.relationLc1257Part5 Seg16.relationLc1257Part6 Seg16.relationLc1257Part7 at r6234
  unfold Seg16.relationRow6235 at r6235
  unfold Seg16.relationRow6236 at r6236
  unfold Seg16.relationRow6237 at r6237
  unfold Seg16.relationRow6238 Seg16.relationLc1258 Seg16.relationLc1258Part0 Seg16.relationLc1258Part1 Seg16.relationLc1258Part2 Seg16.relationLc1258Part3 Seg16.relationLc1258Part4 Seg16.relationLc1258Part5 Seg16.relationLc1258Part6 Seg16.relationLc1258Part7 at r6238
  unfold Seg16.relationRow6239 Seg16.relationLc1259 Seg16.relationLc1259Part0 Seg16.relationLc1259Part1 Seg16.relationLc1259Part2 Seg16.relationLc1259Part3 Seg16.relationLc1259Part4 Seg16.relationLc1259Part5 Seg16.relationLc1259Part6 Seg16.relationLc1259Part7 at r6239
  unfold Seg16.relationRow6240 at r6240
  unfold Seg16.relationRow6241 at r6241
  unfold Seg16.relationRow6242 at r6242
  unfold Seg16.relationRow6243 at r6243
  unfold Seg16.relationRow6244 at r6244
  have hrung244 (bit : Bool) (hbit : rho 15536 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
        ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩
        ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
        ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩ := by
    have hsum : seg16AccX244 rho + seg16AccY244 rho = rho 18803 := by
      rw [seg16LadderFlatX244_eq, seg16LadderFlatY244_eq]
      unfold seg16LadderFlatX244 seg16LadderFlatY244
      linear_combination r6231
    have ha0 : (rho 18801 + rho 18802) * (seg16AccX244 rho + seg16AccY244 rho) = rho 18804 := by
      rw [hsum]
      linear_combination r6232
    have ha1 : rho 18802 * seg16AccX244 rho = rho 18805 := by
      rw [seg16LadderFlatX244_eq]
      unfold seg16LadderFlatX244
      linear_combination r6233
    have ha2 : rho 18801 * seg16AccY244 rho = rho 18806 := by
      rw [seg16LadderFlatY244_eq]
      unfold seg16LadderFlatY244
      linear_combination r6234
    have ha3 : 3021 * rho 18805 * rho 18806 = rho 18807 := by
      linear_combination r6235
    have ha4 : rho 18808 * (1 + rho 18807) = rho 18805 + rho 18806 := by
      linear_combination r6236
    have ha5 : rho 18809 * (1 - rho 18807) = rho 18804 - rho 18805 - rho 18806 := by
      linear_combination r6237
    have haddx :
        rho 18808 * (1 + 3021 * (rho 18802 * seg16AccX244 rho) * (rho 18801 * seg16AccY244 rho)) =
          rho 18802 * seg16AccX244 rho + rho 18801 * seg16AccY244 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18809 * (1 - 3021 * (rho 18802 * seg16AccX244 rho) * (rho 18801 * seg16AccY244 rho)) =
          (-1) * (rho 18802 * seg16AccX244 rho) - rho 18801 * seg16AccY244 rho +
            (seg16AccY244 rho - seg16AccX244 rho * (-1)) * (rho 18801 + rho 18802) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18809 * (1 - rho 18807) = rho 18804 - rho 18805 - rho 18806 := ha5
        _ = (-1) * rho 18805 - rho 18806 + (seg16AccY244 rho - seg16AccX244 rho * (-1)) * (rho 18801 + rho 18802) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX245 rho = seg16AccX244 rho - Bool.toZMod bit * (seg16AccX244 rho - rho 18808) := by
      have hd : rho 18810 = Bool.toZMod bit * (rho 18808 - seg16AccX244 rho) := by
        rw [← hbit, seg16LadderFlatX244_eq]
        unfold seg16LadderFlatX244
        linear_combination -r6238
      unfold seg16AccX245
      linear_combination hd
    have hsely : seg16AccY245 rho = seg16AccY244 rho - Bool.toZMod bit * (seg16AccY244 rho - rho 18809) := by
      have hd : rho 18811 = Bool.toZMod bit * (rho 18809 - seg16AccY244 rho) := by
        rw [← hbit, seg16LadderFlatY244_eq]
        unfold seg16LadderFlatY244
        linear_combination -r6239
      unfold seg16AccY245
      linear_combination hd
    have hd0 : rho 18801 * rho 18802 = rho 18812 := by linear_combination r6240
    have hd1 : rho 18801 * rho 18801 = rho 18813 := by linear_combination r6241
    have hd2 : rho 18802 * rho 18802 = rho 18814 := by linear_combination r6242
    have hd3 : rho 18815 * (rho 18802 * rho 18802 + rho 18801 * rho 18801 * (-1)) = 2 * (rho 18801 * rho 18802) := by
      rw [hd0, hd1, hd2]
      linear_combination r6243
    have hd4 : rho 18816 * (2 - (rho 18802 * rho 18802 + rho 18801 * rho 18801 * (-1))) = rho 18802 * rho 18802 - rho 18801 * rho 18801 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6244
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
      ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩
      ⟨(rho 18808 : Seg16.F), (rho 18809 : Seg16.F)⟩
      ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
      ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung244

theorem seg16_rung245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15537 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
        ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩
        ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
        ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6245 Seg16.relationLc1260 Seg16.relationLc1260Part0 Seg16.relationLc1260Part1 Seg16.relationLc1260Part2 Seg16.relationLc1260Part3 Seg16.relationLc1260Part4 Seg16.relationLc1260Part5 Seg16.relationLc1260Part6 Seg16.relationLc1260Part7 Seg16.relationLc1260Part8 Seg16.relationLc1260Part9 Seg16.relationLc1260Part10 Seg16.relationLc1260Part11 Seg16.relationLc1260Part12 Seg16.relationLc1260Part13 Seg16.relationLc1260Part14 Seg16.relationLc1260Part15 at r6245
  unfold Seg16.relationRow6246 at r6246
  unfold Seg16.relationRow6247 Seg16.relationLc1261 Seg16.relationLc1261Part0 Seg16.relationLc1261Part1 Seg16.relationLc1261Part2 Seg16.relationLc1261Part3 Seg16.relationLc1261Part4 Seg16.relationLc1261Part5 Seg16.relationLc1261Part6 Seg16.relationLc1261Part7 at r6247
  unfold Seg16.relationRow6248 Seg16.relationLc1262 Seg16.relationLc1262Part0 Seg16.relationLc1262Part1 Seg16.relationLc1262Part2 Seg16.relationLc1262Part3 Seg16.relationLc1262Part4 Seg16.relationLc1262Part5 Seg16.relationLc1262Part6 Seg16.relationLc1262Part7 at r6248
  unfold Seg16.relationRow6249 at r6249
  unfold Seg16.relationRow6250 at r6250
  unfold Seg16.relationRow6251 at r6251
  unfold Seg16.relationRow6252 Seg16.relationLc1263 Seg16.relationLc1263Part0 Seg16.relationLc1263Part1 Seg16.relationLc1263Part2 Seg16.relationLc1263Part3 Seg16.relationLc1263Part4 Seg16.relationLc1263Part5 Seg16.relationLc1263Part6 Seg16.relationLc1263Part7 at r6252
  unfold Seg16.relationRow6253 Seg16.relationLc1264 Seg16.relationLc1264Part0 Seg16.relationLc1264Part1 Seg16.relationLc1264Part2 Seg16.relationLc1264Part3 Seg16.relationLc1264Part4 Seg16.relationLc1264Part5 Seg16.relationLc1264Part6 Seg16.relationLc1264Part7 at r6253
  unfold Seg16.relationRow6254 at r6254
  unfold Seg16.relationRow6255 at r6255
  unfold Seg16.relationRow6256 at r6256
  unfold Seg16.relationRow6257 at r6257
  unfold Seg16.relationRow6258 at r6258
  have hrung245 (bit : Bool) (hbit : rho 15537 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
        ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩
        ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
        ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩ := by
    have hsum : seg16AccX245 rho + seg16AccY245 rho = rho 18817 := by
      rw [seg16LadderFlatX245_eq, seg16LadderFlatY245_eq]
      unfold seg16LadderFlatX245 seg16LadderFlatY245
      linear_combination r6245
    have ha0 : (rho 18815 + rho 18816) * (seg16AccX245 rho + seg16AccY245 rho) = rho 18818 := by
      rw [hsum]
      linear_combination r6246
    have ha1 : rho 18816 * seg16AccX245 rho = rho 18819 := by
      rw [seg16LadderFlatX245_eq]
      unfold seg16LadderFlatX245
      linear_combination r6247
    have ha2 : rho 18815 * seg16AccY245 rho = rho 18820 := by
      rw [seg16LadderFlatY245_eq]
      unfold seg16LadderFlatY245
      linear_combination r6248
    have ha3 : 3021 * rho 18819 * rho 18820 = rho 18821 := by
      linear_combination r6249
    have ha4 : rho 18822 * (1 + rho 18821) = rho 18819 + rho 18820 := by
      linear_combination r6250
    have ha5 : rho 18823 * (1 - rho 18821) = rho 18818 - rho 18819 - rho 18820 := by
      linear_combination r6251
    have haddx :
        rho 18822 * (1 + 3021 * (rho 18816 * seg16AccX245 rho) * (rho 18815 * seg16AccY245 rho)) =
          rho 18816 * seg16AccX245 rho + rho 18815 * seg16AccY245 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18823 * (1 - 3021 * (rho 18816 * seg16AccX245 rho) * (rho 18815 * seg16AccY245 rho)) =
          (-1) * (rho 18816 * seg16AccX245 rho) - rho 18815 * seg16AccY245 rho +
            (seg16AccY245 rho - seg16AccX245 rho * (-1)) * (rho 18815 + rho 18816) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18823 * (1 - rho 18821) = rho 18818 - rho 18819 - rho 18820 := ha5
        _ = (-1) * rho 18819 - rho 18820 + (seg16AccY245 rho - seg16AccX245 rho * (-1)) * (rho 18815 + rho 18816) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX246 rho = seg16AccX245 rho - Bool.toZMod bit * (seg16AccX245 rho - rho 18822) := by
      have hd : rho 18824 = Bool.toZMod bit * (rho 18822 - seg16AccX245 rho) := by
        rw [← hbit, seg16LadderFlatX245_eq]
        unfold seg16LadderFlatX245
        linear_combination -r6252
      unfold seg16AccX246
      linear_combination hd
    have hsely : seg16AccY246 rho = seg16AccY245 rho - Bool.toZMod bit * (seg16AccY245 rho - rho 18823) := by
      have hd : rho 18825 = Bool.toZMod bit * (rho 18823 - seg16AccY245 rho) := by
        rw [← hbit, seg16LadderFlatY245_eq]
        unfold seg16LadderFlatY245
        linear_combination -r6253
      unfold seg16AccY246
      linear_combination hd
    have hd0 : rho 18815 * rho 18816 = rho 18826 := by linear_combination r6254
    have hd1 : rho 18815 * rho 18815 = rho 18827 := by linear_combination r6255
    have hd2 : rho 18816 * rho 18816 = rho 18828 := by linear_combination r6256
    have hd3 : rho 18829 * (rho 18816 * rho 18816 + rho 18815 * rho 18815 * (-1)) = 2 * (rho 18815 * rho 18816) := by
      rw [hd0, hd1, hd2]
      linear_combination r6257
    have hd4 : rho 18830 * (2 - (rho 18816 * rho 18816 + rho 18815 * rho 18815 * (-1))) = rho 18816 * rho 18816 - rho 18815 * rho 18815 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6258
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
      ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩
      ⟨(rho 18822 : Seg16.F), (rho 18823 : Seg16.F)⟩
      ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
      ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung245

theorem seg16_rung246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15538 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
        ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩
        ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
        ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6259 Seg16.relationLc1265 Seg16.relationLc1265Part0 Seg16.relationLc1265Part1 Seg16.relationLc1265Part2 Seg16.relationLc1265Part3 Seg16.relationLc1265Part4 Seg16.relationLc1265Part5 Seg16.relationLc1265Part6 Seg16.relationLc1265Part7 Seg16.relationLc1265Part8 Seg16.relationLc1265Part9 Seg16.relationLc1265Part10 Seg16.relationLc1265Part11 Seg16.relationLc1265Part12 Seg16.relationLc1265Part13 Seg16.relationLc1265Part14 Seg16.relationLc1265Part15 at r6259
  unfold Seg16.relationRow6260 at r6260
  unfold Seg16.relationRow6261 Seg16.relationLc1266 Seg16.relationLc1266Part0 Seg16.relationLc1266Part1 Seg16.relationLc1266Part2 Seg16.relationLc1266Part3 Seg16.relationLc1266Part4 Seg16.relationLc1266Part5 Seg16.relationLc1266Part6 Seg16.relationLc1266Part7 at r6261
  unfold Seg16.relationRow6262 Seg16.relationLc1267 Seg16.relationLc1267Part0 Seg16.relationLc1267Part1 Seg16.relationLc1267Part2 Seg16.relationLc1267Part3 Seg16.relationLc1267Part4 Seg16.relationLc1267Part5 Seg16.relationLc1267Part6 Seg16.relationLc1267Part7 at r6262
  unfold Seg16.relationRow6263 at r6263
  unfold Seg16.relationRow6264 at r6264
  unfold Seg16.relationRow6265 at r6265
  unfold Seg16.relationRow6266 Seg16.relationLc1268 Seg16.relationLc1268Part0 Seg16.relationLc1268Part1 Seg16.relationLc1268Part2 Seg16.relationLc1268Part3 Seg16.relationLc1268Part4 Seg16.relationLc1268Part5 Seg16.relationLc1268Part6 Seg16.relationLc1268Part7 at r6266
  unfold Seg16.relationRow6267 Seg16.relationLc1269 Seg16.relationLc1269Part0 Seg16.relationLc1269Part1 Seg16.relationLc1269Part2 Seg16.relationLc1269Part3 Seg16.relationLc1269Part4 Seg16.relationLc1269Part5 Seg16.relationLc1269Part6 Seg16.relationLc1269Part7 at r6267
  unfold Seg16.relationRow6268 at r6268
  unfold Seg16.relationRow6269 at r6269
  unfold Seg16.relationRow6270 at r6270
  unfold Seg16.relationRow6271 at r6271
  unfold Seg16.relationRow6272 at r6272
  have hrung246 (bit : Bool) (hbit : rho 15538 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
        ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩
        ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
        ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩ := by
    have hsum : seg16AccX246 rho + seg16AccY246 rho = rho 18831 := by
      rw [seg16LadderFlatX246_eq, seg16LadderFlatY246_eq]
      unfold seg16LadderFlatX246 seg16LadderFlatY246
      linear_combination r6259
    have ha0 : (rho 18829 + rho 18830) * (seg16AccX246 rho + seg16AccY246 rho) = rho 18832 := by
      rw [hsum]
      linear_combination r6260
    have ha1 : rho 18830 * seg16AccX246 rho = rho 18833 := by
      rw [seg16LadderFlatX246_eq]
      unfold seg16LadderFlatX246
      linear_combination r6261
    have ha2 : rho 18829 * seg16AccY246 rho = rho 18834 := by
      rw [seg16LadderFlatY246_eq]
      unfold seg16LadderFlatY246
      linear_combination r6262
    have ha3 : 3021 * rho 18833 * rho 18834 = rho 18835 := by
      linear_combination r6263
    have ha4 : rho 18836 * (1 + rho 18835) = rho 18833 + rho 18834 := by
      linear_combination r6264
    have ha5 : rho 18837 * (1 - rho 18835) = rho 18832 - rho 18833 - rho 18834 := by
      linear_combination r6265
    have haddx :
        rho 18836 * (1 + 3021 * (rho 18830 * seg16AccX246 rho) * (rho 18829 * seg16AccY246 rho)) =
          rho 18830 * seg16AccX246 rho + rho 18829 * seg16AccY246 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18837 * (1 - 3021 * (rho 18830 * seg16AccX246 rho) * (rho 18829 * seg16AccY246 rho)) =
          (-1) * (rho 18830 * seg16AccX246 rho) - rho 18829 * seg16AccY246 rho +
            (seg16AccY246 rho - seg16AccX246 rho * (-1)) * (rho 18829 + rho 18830) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18837 * (1 - rho 18835) = rho 18832 - rho 18833 - rho 18834 := ha5
        _ = (-1) * rho 18833 - rho 18834 + (seg16AccY246 rho - seg16AccX246 rho * (-1)) * (rho 18829 + rho 18830) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX247 rho = seg16AccX246 rho - Bool.toZMod bit * (seg16AccX246 rho - rho 18836) := by
      have hd : rho 18838 = Bool.toZMod bit * (rho 18836 - seg16AccX246 rho) := by
        rw [← hbit, seg16LadderFlatX246_eq]
        unfold seg16LadderFlatX246
        linear_combination -r6266
      unfold seg16AccX247
      linear_combination hd
    have hsely : seg16AccY247 rho = seg16AccY246 rho - Bool.toZMod bit * (seg16AccY246 rho - rho 18837) := by
      have hd : rho 18839 = Bool.toZMod bit * (rho 18837 - seg16AccY246 rho) := by
        rw [← hbit, seg16LadderFlatY246_eq]
        unfold seg16LadderFlatY246
        linear_combination -r6267
      unfold seg16AccY247
      linear_combination hd
    have hd0 : rho 18829 * rho 18830 = rho 18840 := by linear_combination r6268
    have hd1 : rho 18829 * rho 18829 = rho 18841 := by linear_combination r6269
    have hd2 : rho 18830 * rho 18830 = rho 18842 := by linear_combination r6270
    have hd3 : rho 18843 * (rho 18830 * rho 18830 + rho 18829 * rho 18829 * (-1)) = 2 * (rho 18829 * rho 18830) := by
      rw [hd0, hd1, hd2]
      linear_combination r6271
    have hd4 : rho 18844 * (2 - (rho 18830 * rho 18830 + rho 18829 * rho 18829 * (-1))) = rho 18830 * rho 18830 - rho 18829 * rho 18829 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6272
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
      ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩
      ⟨(rho 18836 : Seg16.F), (rho 18837 : Seg16.F)⟩
      ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
      ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung246

theorem seg16_rung247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15539 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
        ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩
        ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
        ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6273 Seg16.relationLc1270 Seg16.relationLc1270Part0 Seg16.relationLc1270Part1 Seg16.relationLc1270Part2 Seg16.relationLc1270Part3 Seg16.relationLc1270Part4 Seg16.relationLc1270Part5 Seg16.relationLc1270Part6 Seg16.relationLc1270Part7 Seg16.relationLc1270Part8 Seg16.relationLc1270Part9 Seg16.relationLc1270Part10 Seg16.relationLc1270Part11 Seg16.relationLc1270Part12 Seg16.relationLc1270Part13 Seg16.relationLc1270Part14 Seg16.relationLc1270Part15 at r6273
  unfold Seg16.relationRow6274 at r6274
  unfold Seg16.relationRow6275 Seg16.relationLc1271 Seg16.relationLc1271Part0 Seg16.relationLc1271Part1 Seg16.relationLc1271Part2 Seg16.relationLc1271Part3 Seg16.relationLc1271Part4 Seg16.relationLc1271Part5 Seg16.relationLc1271Part6 Seg16.relationLc1271Part7 at r6275
  unfold Seg16.relationRow6276 Seg16.relationLc1272 Seg16.relationLc1272Part0 Seg16.relationLc1272Part1 Seg16.relationLc1272Part2 Seg16.relationLc1272Part3 Seg16.relationLc1272Part4 Seg16.relationLc1272Part5 Seg16.relationLc1272Part6 Seg16.relationLc1272Part7 at r6276
  unfold Seg16.relationRow6277 at r6277
  unfold Seg16.relationRow6278 at r6278
  unfold Seg16.relationRow6279 at r6279
  unfold Seg16.relationRow6280 Seg16.relationLc1273 Seg16.relationLc1273Part0 Seg16.relationLc1273Part1 Seg16.relationLc1273Part2 Seg16.relationLc1273Part3 Seg16.relationLc1273Part4 Seg16.relationLc1273Part5 Seg16.relationLc1273Part6 Seg16.relationLc1273Part7 at r6280
  unfold Seg16.relationRow6281 Seg16.relationLc1274 Seg16.relationLc1274Part0 Seg16.relationLc1274Part1 Seg16.relationLc1274Part2 Seg16.relationLc1274Part3 Seg16.relationLc1274Part4 Seg16.relationLc1274Part5 Seg16.relationLc1274Part6 Seg16.relationLc1274Part7 at r6281
  unfold Seg16.relationRow6282 at r6282
  unfold Seg16.relationRow6283 at r6283
  unfold Seg16.relationRow6284 at r6284
  unfold Seg16.relationRow6285 at r6285
  unfold Seg16.relationRow6286 at r6286
  have hrung247 (bit : Bool) (hbit : rho 15539 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
        ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩
        ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
        ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩ := by
    have hsum : seg16AccX247 rho + seg16AccY247 rho = rho 18845 := by
      rw [seg16LadderFlatX247_eq, seg16LadderFlatY247_eq]
      unfold seg16LadderFlatX247 seg16LadderFlatY247
      linear_combination r6273
    have ha0 : (rho 18843 + rho 18844) * (seg16AccX247 rho + seg16AccY247 rho) = rho 18846 := by
      rw [hsum]
      linear_combination r6274
    have ha1 : rho 18844 * seg16AccX247 rho = rho 18847 := by
      rw [seg16LadderFlatX247_eq]
      unfold seg16LadderFlatX247
      linear_combination r6275
    have ha2 : rho 18843 * seg16AccY247 rho = rho 18848 := by
      rw [seg16LadderFlatY247_eq]
      unfold seg16LadderFlatY247
      linear_combination r6276
    have ha3 : 3021 * rho 18847 * rho 18848 = rho 18849 := by
      linear_combination r6277
    have ha4 : rho 18850 * (1 + rho 18849) = rho 18847 + rho 18848 := by
      linear_combination r6278
    have ha5 : rho 18851 * (1 - rho 18849) = rho 18846 - rho 18847 - rho 18848 := by
      linear_combination r6279
    have haddx :
        rho 18850 * (1 + 3021 * (rho 18844 * seg16AccX247 rho) * (rho 18843 * seg16AccY247 rho)) =
          rho 18844 * seg16AccX247 rho + rho 18843 * seg16AccY247 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18851 * (1 - 3021 * (rho 18844 * seg16AccX247 rho) * (rho 18843 * seg16AccY247 rho)) =
          (-1) * (rho 18844 * seg16AccX247 rho) - rho 18843 * seg16AccY247 rho +
            (seg16AccY247 rho - seg16AccX247 rho * (-1)) * (rho 18843 + rho 18844) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18851 * (1 - rho 18849) = rho 18846 - rho 18847 - rho 18848 := ha5
        _ = (-1) * rho 18847 - rho 18848 + (seg16AccY247 rho - seg16AccX247 rho * (-1)) * (rho 18843 + rho 18844) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX248 rho = seg16AccX247 rho - Bool.toZMod bit * (seg16AccX247 rho - rho 18850) := by
      have hd : rho 18852 = Bool.toZMod bit * (rho 18850 - seg16AccX247 rho) := by
        rw [← hbit, seg16LadderFlatX247_eq]
        unfold seg16LadderFlatX247
        linear_combination -r6280
      unfold seg16AccX248
      linear_combination hd
    have hsely : seg16AccY248 rho = seg16AccY247 rho - Bool.toZMod bit * (seg16AccY247 rho - rho 18851) := by
      have hd : rho 18853 = Bool.toZMod bit * (rho 18851 - seg16AccY247 rho) := by
        rw [← hbit, seg16LadderFlatY247_eq]
        unfold seg16LadderFlatY247
        linear_combination -r6281
      unfold seg16AccY248
      linear_combination hd
    have hd0 : rho 18843 * rho 18844 = rho 18854 := by linear_combination r6282
    have hd1 : rho 18843 * rho 18843 = rho 18855 := by linear_combination r6283
    have hd2 : rho 18844 * rho 18844 = rho 18856 := by linear_combination r6284
    have hd3 : rho 18857 * (rho 18844 * rho 18844 + rho 18843 * rho 18843 * (-1)) = 2 * (rho 18843 * rho 18844) := by
      rw [hd0, hd1, hd2]
      linear_combination r6285
    have hd4 : rho 18858 * (2 - (rho 18844 * rho 18844 + rho 18843 * rho 18843 * (-1))) = rho 18844 * rho 18844 - rho 18843 * rho 18843 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6286
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
      ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩
      ⟨(rho 18850 : Seg16.F), (rho 18851 : Seg16.F)⟩
      ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
      ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung247

theorem seg16_rung248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15540 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
        ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩
        ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
        ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow6287 Seg16.relationLc1275 Seg16.relationLc1275Part0 Seg16.relationLc1275Part1 Seg16.relationLc1275Part2 Seg16.relationLc1275Part3 Seg16.relationLc1275Part4 Seg16.relationLc1275Part5 Seg16.relationLc1275Part6 Seg16.relationLc1275Part7 Seg16.relationLc1275Part8 Seg16.relationLc1275Part9 Seg16.relationLc1275Part10 Seg16.relationLc1275Part11 Seg16.relationLc1275Part12 Seg16.relationLc1275Part13 Seg16.relationLc1275Part14 Seg16.relationLc1275Part15 at r6287
  unfold Seg16.relationRow6288 at r6288
  unfold Seg16.relationRow6289 Seg16.relationLc1276 Seg16.relationLc1276Part0 Seg16.relationLc1276Part1 Seg16.relationLc1276Part2 Seg16.relationLc1276Part3 Seg16.relationLc1276Part4 Seg16.relationLc1276Part5 Seg16.relationLc1276Part6 Seg16.relationLc1276Part7 at r6289
  unfold Seg16.relationRow6290 Seg16.relationLc1277 Seg16.relationLc1277Part0 Seg16.relationLc1277Part1 Seg16.relationLc1277Part2 Seg16.relationLc1277Part3 Seg16.relationLc1277Part4 Seg16.relationLc1277Part5 Seg16.relationLc1277Part6 Seg16.relationLc1277Part7 at r6290
  unfold Seg16.relationRow6291 at r6291
  unfold Seg16.relationRow6292 at r6292
  unfold Seg16.relationRow6293 at r6293
  unfold Seg16.relationRow6294 Seg16.relationLc1278 Seg16.relationLc1278Part0 Seg16.relationLc1278Part1 Seg16.relationLc1278Part2 Seg16.relationLc1278Part3 Seg16.relationLc1278Part4 Seg16.relationLc1278Part5 Seg16.relationLc1278Part6 Seg16.relationLc1278Part7 at r6294
  unfold Seg16.relationRow6295 Seg16.relationLc1279 Seg16.relationLc1279Part0 Seg16.relationLc1279Part1 Seg16.relationLc1279Part2 Seg16.relationLc1279Part3 Seg16.relationLc1279Part4 Seg16.relationLc1279Part5 Seg16.relationLc1279Part6 Seg16.relationLc1279Part7 at r6295
  unfold Seg16.relationRow6296 at r6296
  unfold Seg16.relationRow6297 at r6297
  unfold Seg16.relationRow6298 at r6298
  unfold Seg16.relationRow6299 at r6299
  unfold Seg16.relationRow6300 at r6300
  have hrung248 (bit : Bool) (hbit : rho 15540 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
        ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩
        ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
        ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩ := by
    have hsum : seg16AccX248 rho + seg16AccY248 rho = rho 18859 := by
      rw [seg16LadderFlatX248_eq, seg16LadderFlatY248_eq]
      unfold seg16LadderFlatX248 seg16LadderFlatY248
      linear_combination r6287
    have ha0 : (rho 18857 + rho 18858) * (seg16AccX248 rho + seg16AccY248 rho) = rho 18860 := by
      rw [hsum]
      linear_combination r6288
    have ha1 : rho 18858 * seg16AccX248 rho = rho 18861 := by
      rw [seg16LadderFlatX248_eq]
      unfold seg16LadderFlatX248
      linear_combination r6289
    have ha2 : rho 18857 * seg16AccY248 rho = rho 18862 := by
      rw [seg16LadderFlatY248_eq]
      unfold seg16LadderFlatY248
      linear_combination r6290
    have ha3 : 3021 * rho 18861 * rho 18862 = rho 18863 := by
      linear_combination r6291
    have ha4 : rho 18864 * (1 + rho 18863) = rho 18861 + rho 18862 := by
      linear_combination r6292
    have ha5 : rho 18865 * (1 - rho 18863) = rho 18860 - rho 18861 - rho 18862 := by
      linear_combination r6293
    have haddx :
        rho 18864 * (1 + 3021 * (rho 18858 * seg16AccX248 rho) * (rho 18857 * seg16AccY248 rho)) =
          rho 18858 * seg16AccX248 rho + rho 18857 * seg16AccY248 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18865 * (1 - 3021 * (rho 18858 * seg16AccX248 rho) * (rho 18857 * seg16AccY248 rho)) =
          (-1) * (rho 18858 * seg16AccX248 rho) - rho 18857 * seg16AccY248 rho +
            (seg16AccY248 rho - seg16AccX248 rho * (-1)) * (rho 18857 + rho 18858) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18865 * (1 - rho 18863) = rho 18860 - rho 18861 - rho 18862 := ha5
        _ = (-1) * rho 18861 - rho 18862 + (seg16AccY248 rho - seg16AccX248 rho * (-1)) * (rho 18857 + rho 18858) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX249 rho = seg16AccX248 rho - Bool.toZMod bit * (seg16AccX248 rho - rho 18864) := by
      have hd : rho 18866 = Bool.toZMod bit * (rho 18864 - seg16AccX248 rho) := by
        rw [← hbit, seg16LadderFlatX248_eq]
        unfold seg16LadderFlatX248
        linear_combination -r6294
      unfold seg16AccX249
      linear_combination hd
    have hsely : seg16AccY249 rho = seg16AccY248 rho - Bool.toZMod bit * (seg16AccY248 rho - rho 18865) := by
      have hd : rho 18867 = Bool.toZMod bit * (rho 18865 - seg16AccY248 rho) := by
        rw [← hbit, seg16LadderFlatY248_eq]
        unfold seg16LadderFlatY248
        linear_combination -r6295
      unfold seg16AccY249
      linear_combination hd
    have hd0 : rho 18857 * rho 18858 = rho 18868 := by linear_combination r6296
    have hd1 : rho 18857 * rho 18857 = rho 18869 := by linear_combination r6297
    have hd2 : rho 18858 * rho 18858 = rho 18870 := by linear_combination r6298
    have hd3 : rho 18871 * (rho 18858 * rho 18858 + rho 18857 * rho 18857 * (-1)) = 2 * (rho 18857 * rho 18858) := by
      rw [hd0, hd1, hd2]
      linear_combination r6299
    have hd4 : rho 18872 * (2 - (rho 18858 * rho 18858 + rho 18857 * rho 18857 * (-1))) = rho 18858 * rho 18858 - rho 18857 * rho 18857 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6300
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
      ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩
      ⟨(rho 18864 : Seg16.F), (rho 18865 : Seg16.F)⟩
      ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
      ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung248

theorem seg16_rung249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15541 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
        ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩
        ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
        ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, _, _, _, _, _⟩
  unfold Seg16.relationRow6301 Seg16.relationLc1280 Seg16.relationLc1280Part0 Seg16.relationLc1280Part1 Seg16.relationLc1280Part2 Seg16.relationLc1280Part3 Seg16.relationLc1280Part4 Seg16.relationLc1280Part5 Seg16.relationLc1280Part6 Seg16.relationLc1280Part7 Seg16.relationLc1280Part8 Seg16.relationLc1280Part9 Seg16.relationLc1280Part10 Seg16.relationLc1280Part11 Seg16.relationLc1280Part12 Seg16.relationLc1280Part13 Seg16.relationLc1280Part14 Seg16.relationLc1280Part15 at r6301
  unfold Seg16.relationRow6302 at r6302
  unfold Seg16.relationRow6303 Seg16.relationLc1281 Seg16.relationLc1281Part0 Seg16.relationLc1281Part1 Seg16.relationLc1281Part2 Seg16.relationLc1281Part3 Seg16.relationLc1281Part4 Seg16.relationLc1281Part5 Seg16.relationLc1281Part6 Seg16.relationLc1281Part7 at r6303
  unfold Seg16.relationRow6304 Seg16.relationLc1282 Seg16.relationLc1282Part0 Seg16.relationLc1282Part1 Seg16.relationLc1282Part2 Seg16.relationLc1282Part3 Seg16.relationLc1282Part4 Seg16.relationLc1282Part5 Seg16.relationLc1282Part6 Seg16.relationLc1282Part7 at r6304
  unfold Seg16.relationRow6305 at r6305
  unfold Seg16.relationRow6306 at r6306
  unfold Seg16.relationRow6307 at r6307
  unfold Seg16.relationRow6308 Seg16.relationLc1283 Seg16.relationLc1283Part0 Seg16.relationLc1283Part1 Seg16.relationLc1283Part2 Seg16.relationLc1283Part3 Seg16.relationLc1283Part4 Seg16.relationLc1283Part5 Seg16.relationLc1283Part6 Seg16.relationLc1283Part7 at r6308
  unfold Seg16.relationRow6309 Seg16.relationLc1284 Seg16.relationLc1284Part0 Seg16.relationLc1284Part1 Seg16.relationLc1284Part2 Seg16.relationLc1284Part3 Seg16.relationLc1284Part4 Seg16.relationLc1284Part5 Seg16.relationLc1284Part6 Seg16.relationLc1284Part7 at r6309
  unfold Seg16.relationRow6310 at r6310
  unfold Seg16.relationRow6311 at r6311
  unfold Seg16.relationRow6312 at r6312
  unfold Seg16.relationRow6313 at r6313
  unfold Seg16.relationRow6314 at r6314
  have hrung249 (bit : Bool) (hbit : rho 15541 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
        ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩
        ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
        ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩ := by
    have hsum : seg16AccX249 rho + seg16AccY249 rho = rho 18873 := by
      rw [seg16LadderFlatX249_eq, seg16LadderFlatY249_eq]
      unfold seg16LadderFlatX249 seg16LadderFlatY249
      linear_combination r6301
    have ha0 : (rho 18871 + rho 18872) * (seg16AccX249 rho + seg16AccY249 rho) = rho 18874 := by
      rw [hsum]
      linear_combination r6302
    have ha1 : rho 18872 * seg16AccX249 rho = rho 18875 := by
      rw [seg16LadderFlatX249_eq]
      unfold seg16LadderFlatX249
      linear_combination r6303
    have ha2 : rho 18871 * seg16AccY249 rho = rho 18876 := by
      rw [seg16LadderFlatY249_eq]
      unfold seg16LadderFlatY249
      linear_combination r6304
    have ha3 : 3021 * rho 18875 * rho 18876 = rho 18877 := by
      linear_combination r6305
    have ha4 : rho 18878 * (1 + rho 18877) = rho 18875 + rho 18876 := by
      linear_combination r6306
    have ha5 : rho 18879 * (1 - rho 18877) = rho 18874 - rho 18875 - rho 18876 := by
      linear_combination r6307
    have haddx :
        rho 18878 * (1 + 3021 * (rho 18872 * seg16AccX249 rho) * (rho 18871 * seg16AccY249 rho)) =
          rho 18872 * seg16AccX249 rho + rho 18871 * seg16AccY249 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18879 * (1 - 3021 * (rho 18872 * seg16AccX249 rho) * (rho 18871 * seg16AccY249 rho)) =
          (-1) * (rho 18872 * seg16AccX249 rho) - rho 18871 * seg16AccY249 rho +
            (seg16AccY249 rho - seg16AccX249 rho * (-1)) * (rho 18871 + rho 18872) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18879 * (1 - rho 18877) = rho 18874 - rho 18875 - rho 18876 := ha5
        _ = (-1) * rho 18875 - rho 18876 + (seg16AccY249 rho - seg16AccX249 rho * (-1)) * (rho 18871 + rho 18872) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX250 rho = seg16AccX249 rho - Bool.toZMod bit * (seg16AccX249 rho - rho 18878) := by
      have hd : rho 18880 = Bool.toZMod bit * (rho 18878 - seg16AccX249 rho) := by
        rw [← hbit, seg16LadderFlatX249_eq]
        unfold seg16LadderFlatX249
        linear_combination -r6308
      unfold seg16AccX250
      linear_combination hd
    have hsely : seg16AccY250 rho = seg16AccY249 rho - Bool.toZMod bit * (seg16AccY249 rho - rho 18879) := by
      have hd : rho 18881 = Bool.toZMod bit * (rho 18879 - seg16AccY249 rho) := by
        rw [← hbit, seg16LadderFlatY249_eq]
        unfold seg16LadderFlatY249
        linear_combination -r6309
      unfold seg16AccY250
      linear_combination hd
    have hd0 : rho 18871 * rho 18872 = rho 18882 := by linear_combination r6310
    have hd1 : rho 18871 * rho 18871 = rho 18883 := by linear_combination r6311
    have hd2 : rho 18872 * rho 18872 = rho 18884 := by linear_combination r6312
    have hd3 : rho 18885 * (rho 18872 * rho 18872 + rho 18871 * rho 18871 * (-1)) = 2 * (rho 18871 * rho 18872) := by
      rw [hd0, hd1, hd2]
      linear_combination r6313
    have hd4 : rho 18886 * (2 - (rho 18872 * rho 18872 + rho 18871 * rho 18871 * (-1))) = rho 18872 * rho 18872 - rho 18871 * rho 18871 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6314
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
      ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩
      ⟨(rho 18878 : Seg16.F), (rho 18879 : Seg16.F)⟩
      ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
      ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung249

theorem seg16_rung250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15542 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
        ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩
        ⟨(seg16AccX251 rho : Seg16.F), (seg16AccY251 rho : Seg16.F)⟩
        ⟨(rho 18899 : Seg16.F), (rho 18900 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg16.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩
  unfold Seg16.relationRow6315 Seg16.relationLc1285 Seg16.relationLc1285Part0 Seg16.relationLc1285Part1 Seg16.relationLc1285Part2 Seg16.relationLc1285Part3 Seg16.relationLc1285Part4 Seg16.relationLc1285Part5 Seg16.relationLc1285Part6 Seg16.relationLc1285Part7 Seg16.relationLc1285Part8 Seg16.relationLc1285Part9 Seg16.relationLc1285Part10 Seg16.relationLc1285Part11 Seg16.relationLc1285Part12 Seg16.relationLc1285Part13 Seg16.relationLc1285Part14 Seg16.relationLc1285Part15 at r6315
  unfold Seg16.relationRow6316 at r6316
  unfold Seg16.relationRow6317 Seg16.relationLc1286 Seg16.relationLc1286Part0 Seg16.relationLc1286Part1 Seg16.relationLc1286Part2 Seg16.relationLc1286Part3 Seg16.relationLc1286Part4 Seg16.relationLc1286Part5 Seg16.relationLc1286Part6 Seg16.relationLc1286Part7 at r6317
  unfold Seg16.relationRow6318 Seg16.relationLc1287 Seg16.relationLc1287Part0 Seg16.relationLc1287Part1 Seg16.relationLc1287Part2 Seg16.relationLc1287Part3 Seg16.relationLc1287Part4 Seg16.relationLc1287Part5 Seg16.relationLc1287Part6 Seg16.relationLc1287Part7 at r6318
  unfold Seg16.relationRow6319 at r6319
  unfold Seg16.relationRow6320 at r6320
  unfold Seg16.relationRow6321 at r6321
  unfold Seg16.relationRow6322 Seg16.relationLc1288 Seg16.relationLc1288Part0 Seg16.relationLc1288Part1 Seg16.relationLc1288Part2 Seg16.relationLc1288Part3 Seg16.relationLc1288Part4 Seg16.relationLc1288Part5 Seg16.relationLc1288Part6 Seg16.relationLc1288Part7 at r6322
  unfold Seg16.relationRow6323 Seg16.relationLc1289 Seg16.relationLc1289Part0 Seg16.relationLc1289Part1 Seg16.relationLc1289Part2 Seg16.relationLc1289Part3 Seg16.relationLc1289Part4 Seg16.relationLc1289Part5 Seg16.relationLc1289Part6 Seg16.relationLc1289Part7 at r6323
  unfold Seg16.relationRow6324 at r6324
  unfold Seg16.relationRow6325 at r6325
  unfold Seg16.relationRow6326 at r6326
  unfold Seg16.relationRow6327 at r6327
  unfold Seg16.relationRow6328 at r6328
  have hrung250 (bit : Bool) (hbit : rho 15542 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
        ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩
        ⟨(seg16AccX251 rho : Seg16.F), (seg16AccY251 rho : Seg16.F)⟩
        ⟨(rho 18899 : Seg16.F), (rho 18900 : Seg16.F)⟩ := by
    have hsum : seg16AccX250 rho + seg16AccY250 rho = rho 18887 := by
      rw [seg16LadderFlatX250_eq, seg16LadderFlatY250_eq]
      unfold seg16LadderFlatX250 seg16LadderFlatY250
      linear_combination r6315
    have ha0 : (rho 18885 + rho 18886) * (seg16AccX250 rho + seg16AccY250 rho) = rho 18888 := by
      rw [hsum]
      linear_combination r6316
    have ha1 : rho 18886 * seg16AccX250 rho = rho 18889 := by
      rw [seg16LadderFlatX250_eq]
      unfold seg16LadderFlatX250
      linear_combination r6317
    have ha2 : rho 18885 * seg16AccY250 rho = rho 18890 := by
      rw [seg16LadderFlatY250_eq]
      unfold seg16LadderFlatY250
      linear_combination r6318
    have ha3 : 3021 * rho 18889 * rho 18890 = rho 18891 := by
      linear_combination r6319
    have ha4 : rho 18892 * (1 + rho 18891) = rho 18889 + rho 18890 := by
      linear_combination r6320
    have ha5 : rho 18893 * (1 - rho 18891) = rho 18888 - rho 18889 - rho 18890 := by
      linear_combination r6321
    have haddx :
        rho 18892 * (1 + 3021 * (rho 18886 * seg16AccX250 rho) * (rho 18885 * seg16AccY250 rho)) =
          rho 18886 * seg16AccX250 rho + rho 18885 * seg16AccY250 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18893 * (1 - 3021 * (rho 18886 * seg16AccX250 rho) * (rho 18885 * seg16AccY250 rho)) =
          (-1) * (rho 18886 * seg16AccX250 rho) - rho 18885 * seg16AccY250 rho +
            (seg16AccY250 rho - seg16AccX250 rho * (-1)) * (rho 18885 + rho 18886) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18893 * (1 - rho 18891) = rho 18888 - rho 18889 - rho 18890 := ha5
        _ = (-1) * rho 18889 - rho 18890 + (seg16AccY250 rho - seg16AccX250 rho * (-1)) * (rho 18885 + rho 18886) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX251 rho = seg16AccX250 rho - Bool.toZMod bit * (seg16AccX250 rho - rho 18892) := by
      have hd : rho 18894 = Bool.toZMod bit * (rho 18892 - seg16AccX250 rho) := by
        rw [← hbit, seg16LadderFlatX250_eq]
        unfold seg16LadderFlatX250
        linear_combination -r6322
      unfold seg16AccX251
      linear_combination hd
    have hsely : seg16AccY251 rho = seg16AccY250 rho - Bool.toZMod bit * (seg16AccY250 rho - rho 18893) := by
      have hd : rho 18895 = Bool.toZMod bit * (rho 18893 - seg16AccY250 rho) := by
        rw [← hbit, seg16LadderFlatY250_eq]
        unfold seg16LadderFlatY250
        linear_combination -r6323
      unfold seg16AccY251
      linear_combination hd
    have hd0 : rho 18885 * rho 18886 = rho 18896 := by linear_combination r6324
    have hd1 : rho 18885 * rho 18885 = rho 18897 := by linear_combination r6325
    have hd2 : rho 18886 * rho 18886 = rho 18898 := by linear_combination r6326
    have hd3 : rho 18899 * (rho 18886 * rho 18886 + rho 18885 * rho 18885 * (-1)) = 2 * (rho 18885 * rho 18886) := by
      rw [hd0, hd1, hd2]
      linear_combination r6327
    have hd4 : rho 18900 * (2 - (rho 18886 * rho 18886 + rho 18885 * rho 18885 * (-1))) = rho 18886 * rho 18886 - rho 18885 * rho 18885 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
      ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩
      ⟨(rho 18892 : Seg16.F), (rho 18893 : Seg16.F)⟩
      ⟨(seg16AccX251 rho : Seg16.F), (seg16AccY251 rho : Seg16.F)⟩
      ⟨(rho 18899 : Seg16.F), (rho 18900 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung250

theorem seg16_hstep_c7 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 224 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc hcur
  · exact seg16_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc hcur
  · exact seg16_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc hcur
  · exact seg16_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc hcur
  · exact seg16_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc hcur
  · exact seg16_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc hcur
  · exact seg16_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc hcur
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
  · exact seg16_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc hcur
  · exact seg16_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc hcur
  · exact seg16_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc hcur
  · exact seg16_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc hcur
  · exact seg16_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc hcur
  · exact seg16_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc hcur
  · exact seg16_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc hcur
  · exact seg16_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc hcur
  · exact seg16_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

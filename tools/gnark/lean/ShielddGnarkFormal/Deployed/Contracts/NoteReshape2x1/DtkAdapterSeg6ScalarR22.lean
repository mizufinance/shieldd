import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5951 rho ∧ Seg6.relationRow5952 rho ∧ Seg6.relationRow5953 rho ∧ Seg6.relationRow5954 rho ∧ Seg6.relationRow5955 rho ∧ Seg6.relationRow5956 rho ∧ Seg6.relationRow5957 rho ∧ Seg6.relationRow5958 rho ∧ Seg6.relationRow5959 rho ∧ Seg6.relationRow5960 rho ∧ Seg6.relationRow5961 rho ∧ Seg6.relationRow5962 rho ∧ Seg6.relationRow5963 rho ∧ Seg6.relationRow5964 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Seg6.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩

theorem seg6_rung242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2132 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX242 rho : Seg6.F), (seg6AccY242 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6348 : Seg6.F), (rho 6349 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX242 rho : Seg6.F), (seg6AccY242 rho : Seg6.F)⟩
        ⟨(rho 6348 : Seg6.F), (rho 6349 : Seg6.F)⟩
        ⟨(seg6AccX243 rho : Seg6.F), (seg6AccY243 rho : Seg6.F)⟩
        ⟨(rho 6362 : Seg6.F), (rho 6363 : Seg6.F)⟩ := by
  obtain ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩ := seg6_rows242 rho h
  unfold Seg6.relationRow5951 at r5951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5951
  unfold Seg6.relationRow5952 at r5952
  unfold Seg6.relationRow5953 at r5953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5953
  unfold Seg6.relationRow5954 at r5954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5954
  unfold Seg6.relationRow5955 at r5955
  unfold Seg6.relationRow5956 at r5956
  unfold Seg6.relationRow5957 at r5957
  unfold Seg6.relationRow5958 at r5958
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5958
  unfold Seg6.relationRow5959 at r5959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5959
  unfold Seg6.relationRow5960 at r5960
  unfold Seg6.relationRow5961 at r5961
  unfold Seg6.relationRow5962 at r5962
  unfold Seg6.relationRow5963 at r5963
  unfold Seg6.relationRow5964 at r5964
  have hrung242 (bit : Bool) (hbit : rho 2132 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX242 rho : Seg6.F), (seg6AccY242 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6348 : Seg6.F), (rho 6349 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX242 rho : Seg6.F), (seg6AccY242 rho : Seg6.F)⟩
        ⟨(rho 6348 : Seg6.F), (rho 6349 : Seg6.F)⟩
        ⟨(seg6AccX243 rho : Seg6.F), (seg6AccY243 rho : Seg6.F)⟩
        ⟨(rho 6362 : Seg6.F), (rho 6363 : Seg6.F)⟩ := by
    have hnextx : seg6AccX243 rho = seg6AccX242 rho + rho 6357 := by
      unfold seg6AccX243 seg6AccX242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 92]
      ring
    have hnexty : seg6AccY243 rho = seg6AccY242 rho + rho 6358 := by
      unfold seg6AccY243 seg6AccY242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 92]
      ring
    have hsum : seg6AccX242 rho + seg6AccY242 rho = rho 6350 := by
      unfold seg6AccX242 seg6AccY242
      linear_combination r5951
    have ha0 : (rho 6348 + rho 6349) * (seg6AccX242 rho + seg6AccY242 rho) = rho 6351 := by
      rw [hsum]
      linear_combination r5952
    have ha1 : rho 6349 * seg6AccX242 rho = rho 6352 := by
      unfold seg6AccX242
      linear_combination r5953
    have ha2 : rho 6348 * seg6AccY242 rho = rho 6353 := by
      unfold seg6AccY242
      linear_combination r5954
    have ha3 : 3021 * rho 6352 * rho 6353 = rho 6354 := by
      linear_combination r5955
    have ha4 : rho 6355 * (1 + rho 6354) = rho 6352 + rho 6353 := by
      linear_combination r5956
    have ha5 : rho 6356 * (1 - rho 6354) = rho 6351 - rho 6352 - rho 6353 := by
      linear_combination r5957
    have haddx :
        rho 6355 * (1 + 3021 * (rho 6349 * seg6AccX242 rho) * (rho 6348 * seg6AccY242 rho)) =
          rho 6349 * seg6AccX242 rho + rho 6348 * seg6AccY242 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6356 * (1 - 3021 * (rho 6349 * seg6AccX242 rho) * (rho 6348 * seg6AccY242 rho)) =
          (-1) * (rho 6349 * seg6AccX242 rho) - rho 6348 * seg6AccY242 rho +
            (seg6AccY242 rho - seg6AccX242 rho * (-1)) * (rho 6348 + rho 6349) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6356 * (1 - rho 6354) = rho 6351 - rho 6352 - rho 6353 := ha5
        _ = (-1) * rho 6352 - rho 6353 + (seg6AccY242 rho - seg6AccX242 rho * (-1)) * (rho 6348 + rho 6349) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX243 rho = seg6AccX242 rho - Bool.toZMod bit * (seg6AccX242 rho - rho 6355) := by
      have hd : rho 6357 = Bool.toZMod bit * (rho 6355 - seg6AccX242 rho) := by
        rw [← hbit]
        unfold seg6AccX242
        linear_combination -r5958
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY243 rho = seg6AccY242 rho - Bool.toZMod bit * (seg6AccY242 rho - rho 6356) := by
      have hd : rho 6358 = Bool.toZMod bit * (rho 6356 - seg6AccY242 rho) := by
        rw [← hbit]
        unfold seg6AccY242
        linear_combination -r5959
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6348 * rho 6349 = rho 6359 := by linear_combination r5960
    have hd1 : rho 6348 * rho 6348 = rho 6360 := by linear_combination r5961
    have hd2 : rho 6349 * rho 6349 = rho 6361 := by linear_combination r5962
    have hd3 : rho 6362 * (rho 6349 * rho 6349 + rho 6348 * rho 6348 * (-1)) = 2 * (rho 6348 * rho 6349) := by
      rw [hd0, hd1, hd2]
      linear_combination r5963
    have hd4 : rho 6363 * (2 - (rho 6349 * rho 6349 + rho 6348 * rho 6348 * (-1))) = rho 6349 * rho 6349 - rho 6348 * rho 6348 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5964
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX242 rho : Seg6.F), (seg6AccY242 rho : Seg6.F)⟩
      ⟨(rho 6348 : Seg6.F), (rho 6349 : Seg6.F)⟩
      ⟨(rho 6355 : Seg6.F), (rho 6356 : Seg6.F)⟩
      ⟨(seg6AccX243 rho : Seg6.F), (seg6AccY243 rho : Seg6.F)⟩
      ⟨(rho 6362 : Seg6.F), (rho 6363 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung242

theorem seg6_rows243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5965 rho ∧ Seg6.relationRow5966 rho ∧ Seg6.relationRow5967 rho ∧ Seg6.relationRow5968 rho ∧ Seg6.relationRow5969 rho ∧ Seg6.relationRow5970 rho ∧ Seg6.relationRow5971 rho ∧ Seg6.relationRow5972 rho ∧ Seg6.relationRow5973 rho ∧ Seg6.relationRow5974 rho ∧ Seg6.relationRow5975 rho ∧ Seg6.relationRow5976 rho ∧ Seg6.relationRow5977 rho ∧ Seg6.relationRow5978 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Seg6.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩

theorem seg6_rung243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2133 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX243 rho : Seg6.F), (seg6AccY243 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6362 : Seg6.F), (rho 6363 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX243 rho : Seg6.F), (seg6AccY243 rho : Seg6.F)⟩
        ⟨(rho 6362 : Seg6.F), (rho 6363 : Seg6.F)⟩
        ⟨(seg6AccX244 rho : Seg6.F), (seg6AccY244 rho : Seg6.F)⟩
        ⟨(rho 6376 : Seg6.F), (rho 6377 : Seg6.F)⟩ := by
  obtain ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩ := seg6_rows243 rho h
  unfold Seg6.relationRow5965 at r5965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5965
  unfold Seg6.relationRow5966 at r5966
  unfold Seg6.relationRow5967 at r5967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5967
  unfold Seg6.relationRow5968 at r5968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5968
  unfold Seg6.relationRow5969 at r5969
  unfold Seg6.relationRow5970 at r5970
  unfold Seg6.relationRow5971 at r5971
  unfold Seg6.relationRow5972 at r5972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5972
  unfold Seg6.relationRow5973 at r5973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5973
  unfold Seg6.relationRow5974 at r5974
  unfold Seg6.relationRow5975 at r5975
  unfold Seg6.relationRow5976 at r5976
  unfold Seg6.relationRow5977 at r5977
  unfold Seg6.relationRow5978 at r5978
  have hrung243 (bit : Bool) (hbit : rho 2133 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX243 rho : Seg6.F), (seg6AccY243 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6362 : Seg6.F), (rho 6363 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX243 rho : Seg6.F), (seg6AccY243 rho : Seg6.F)⟩
        ⟨(rho 6362 : Seg6.F), (rho 6363 : Seg6.F)⟩
        ⟨(seg6AccX244 rho : Seg6.F), (seg6AccY244 rho : Seg6.F)⟩
        ⟨(rho 6376 : Seg6.F), (rho 6377 : Seg6.F)⟩ := by
    have hnextx : seg6AccX244 rho = seg6AccX243 rho + rho 6371 := by
      unfold seg6AccX244 seg6AccX243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 93]
      ring
    have hnexty : seg6AccY244 rho = seg6AccY243 rho + rho 6372 := by
      unfold seg6AccY244 seg6AccY243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 93]
      ring
    have hsum : seg6AccX243 rho + seg6AccY243 rho = rho 6364 := by
      unfold seg6AccX243 seg6AccY243
      linear_combination r5965
    have ha0 : (rho 6362 + rho 6363) * (seg6AccX243 rho + seg6AccY243 rho) = rho 6365 := by
      rw [hsum]
      linear_combination r5966
    have ha1 : rho 6363 * seg6AccX243 rho = rho 6366 := by
      unfold seg6AccX243
      linear_combination r5967
    have ha2 : rho 6362 * seg6AccY243 rho = rho 6367 := by
      unfold seg6AccY243
      linear_combination r5968
    have ha3 : 3021 * rho 6366 * rho 6367 = rho 6368 := by
      linear_combination r5969
    have ha4 : rho 6369 * (1 + rho 6368) = rho 6366 + rho 6367 := by
      linear_combination r5970
    have ha5 : rho 6370 * (1 - rho 6368) = rho 6365 - rho 6366 - rho 6367 := by
      linear_combination r5971
    have haddx :
        rho 6369 * (1 + 3021 * (rho 6363 * seg6AccX243 rho) * (rho 6362 * seg6AccY243 rho)) =
          rho 6363 * seg6AccX243 rho + rho 6362 * seg6AccY243 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6370 * (1 - 3021 * (rho 6363 * seg6AccX243 rho) * (rho 6362 * seg6AccY243 rho)) =
          (-1) * (rho 6363 * seg6AccX243 rho) - rho 6362 * seg6AccY243 rho +
            (seg6AccY243 rho - seg6AccX243 rho * (-1)) * (rho 6362 + rho 6363) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6370 * (1 - rho 6368) = rho 6365 - rho 6366 - rho 6367 := ha5
        _ = (-1) * rho 6366 - rho 6367 + (seg6AccY243 rho - seg6AccX243 rho * (-1)) * (rho 6362 + rho 6363) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX244 rho = seg6AccX243 rho - Bool.toZMod bit * (seg6AccX243 rho - rho 6369) := by
      have hd : rho 6371 = Bool.toZMod bit * (rho 6369 - seg6AccX243 rho) := by
        rw [← hbit]
        unfold seg6AccX243
        linear_combination -r5972
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY244 rho = seg6AccY243 rho - Bool.toZMod bit * (seg6AccY243 rho - rho 6370) := by
      have hd : rho 6372 = Bool.toZMod bit * (rho 6370 - seg6AccY243 rho) := by
        rw [← hbit]
        unfold seg6AccY243
        linear_combination -r5973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6362 * rho 6363 = rho 6373 := by linear_combination r5974
    have hd1 : rho 6362 * rho 6362 = rho 6374 := by linear_combination r5975
    have hd2 : rho 6363 * rho 6363 = rho 6375 := by linear_combination r5976
    have hd3 : rho 6376 * (rho 6363 * rho 6363 + rho 6362 * rho 6362 * (-1)) = 2 * (rho 6362 * rho 6363) := by
      rw [hd0, hd1, hd2]
      linear_combination r5977
    have hd4 : rho 6377 * (2 - (rho 6363 * rho 6363 + rho 6362 * rho 6362 * (-1))) = rho 6363 * rho 6363 - rho 6362 * rho 6362 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX243 rho : Seg6.F), (seg6AccY243 rho : Seg6.F)⟩
      ⟨(rho 6362 : Seg6.F), (rho 6363 : Seg6.F)⟩
      ⟨(rho 6369 : Seg6.F), (rho 6370 : Seg6.F)⟩
      ⟨(seg6AccX244 rho : Seg6.F), (seg6AccY244 rho : Seg6.F)⟩
      ⟨(rho 6376 : Seg6.F), (rho 6377 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung243

theorem seg6_rows244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5979 rho ∧ Seg6.relationRow5980 rho ∧ Seg6.relationRow5981 rho ∧ Seg6.relationRow5982 rho ∧ Seg6.relationRow5983 rho ∧ Seg6.relationRow5984 rho ∧ Seg6.relationRow5985 rho ∧ Seg6.relationRow5986 rho ∧ Seg6.relationRow5987 rho ∧ Seg6.relationRow5988 rho ∧ Seg6.relationRow5989 rho ∧ Seg6.relationRow5990 rho ∧ Seg6.relationRow5991 rho ∧ Seg6.relationRow5992 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Seg6.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, _, _, _, _, _, _, _⟩
  exact ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩

theorem seg6_rung244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2134 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX244 rho : Seg6.F), (seg6AccY244 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6376 : Seg6.F), (rho 6377 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX244 rho : Seg6.F), (seg6AccY244 rho : Seg6.F)⟩
        ⟨(rho 6376 : Seg6.F), (rho 6377 : Seg6.F)⟩
        ⟨(seg6AccX245 rho : Seg6.F), (seg6AccY245 rho : Seg6.F)⟩
        ⟨(rho 6390 : Seg6.F), (rho 6391 : Seg6.F)⟩ := by
  obtain ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩ := seg6_rows244 rho h
  unfold Seg6.relationRow5979 at r5979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5979
  unfold Seg6.relationRow5980 at r5980
  unfold Seg6.relationRow5981 at r5981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5981
  unfold Seg6.relationRow5982 at r5982
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5982
  unfold Seg6.relationRow5983 at r5983
  unfold Seg6.relationRow5984 at r5984
  unfold Seg6.relationRow5985 at r5985
  unfold Seg6.relationRow5986 at r5986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5986
  unfold Seg6.relationRow5987 at r5987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5987
  unfold Seg6.relationRow5988 at r5988
  unfold Seg6.relationRow5989 at r5989
  unfold Seg6.relationRow5990 at r5990
  unfold Seg6.relationRow5991 at r5991
  unfold Seg6.relationRow5992 at r5992
  have hrung244 (bit : Bool) (hbit : rho 2134 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX244 rho : Seg6.F), (seg6AccY244 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6376 : Seg6.F), (rho 6377 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX244 rho : Seg6.F), (seg6AccY244 rho : Seg6.F)⟩
        ⟨(rho 6376 : Seg6.F), (rho 6377 : Seg6.F)⟩
        ⟨(seg6AccX245 rho : Seg6.F), (seg6AccY245 rho : Seg6.F)⟩
        ⟨(rho 6390 : Seg6.F), (rho 6391 : Seg6.F)⟩ := by
    have hnextx : seg6AccX245 rho = seg6AccX244 rho + rho 6385 := by
      unfold seg6AccX245 seg6AccX244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 94]
      ring
    have hnexty : seg6AccY245 rho = seg6AccY244 rho + rho 6386 := by
      unfold seg6AccY245 seg6AccY244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 94]
      ring
    have hsum : seg6AccX244 rho + seg6AccY244 rho = rho 6378 := by
      unfold seg6AccX244 seg6AccY244
      linear_combination r5979
    have ha0 : (rho 6376 + rho 6377) * (seg6AccX244 rho + seg6AccY244 rho) = rho 6379 := by
      rw [hsum]
      linear_combination r5980
    have ha1 : rho 6377 * seg6AccX244 rho = rho 6380 := by
      unfold seg6AccX244
      linear_combination r5981
    have ha2 : rho 6376 * seg6AccY244 rho = rho 6381 := by
      unfold seg6AccY244
      linear_combination r5982
    have ha3 : 3021 * rho 6380 * rho 6381 = rho 6382 := by
      linear_combination r5983
    have ha4 : rho 6383 * (1 + rho 6382) = rho 6380 + rho 6381 := by
      linear_combination r5984
    have ha5 : rho 6384 * (1 - rho 6382) = rho 6379 - rho 6380 - rho 6381 := by
      linear_combination r5985
    have haddx :
        rho 6383 * (1 + 3021 * (rho 6377 * seg6AccX244 rho) * (rho 6376 * seg6AccY244 rho)) =
          rho 6377 * seg6AccX244 rho + rho 6376 * seg6AccY244 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6384 * (1 - 3021 * (rho 6377 * seg6AccX244 rho) * (rho 6376 * seg6AccY244 rho)) =
          (-1) * (rho 6377 * seg6AccX244 rho) - rho 6376 * seg6AccY244 rho +
            (seg6AccY244 rho - seg6AccX244 rho * (-1)) * (rho 6376 + rho 6377) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6384 * (1 - rho 6382) = rho 6379 - rho 6380 - rho 6381 := ha5
        _ = (-1) * rho 6380 - rho 6381 + (seg6AccY244 rho - seg6AccX244 rho * (-1)) * (rho 6376 + rho 6377) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX245 rho = seg6AccX244 rho - Bool.toZMod bit * (seg6AccX244 rho - rho 6383) := by
      have hd : rho 6385 = Bool.toZMod bit * (rho 6383 - seg6AccX244 rho) := by
        rw [← hbit]
        unfold seg6AccX244
        linear_combination -r5986
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY245 rho = seg6AccY244 rho - Bool.toZMod bit * (seg6AccY244 rho - rho 6384) := by
      have hd : rho 6386 = Bool.toZMod bit * (rho 6384 - seg6AccY244 rho) := by
        rw [← hbit]
        unfold seg6AccY244
        linear_combination -r5987
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6376 * rho 6377 = rho 6387 := by linear_combination r5988
    have hd1 : rho 6376 * rho 6376 = rho 6388 := by linear_combination r5989
    have hd2 : rho 6377 * rho 6377 = rho 6389 := by linear_combination r5990
    have hd3 : rho 6390 * (rho 6377 * rho 6377 + rho 6376 * rho 6376 * (-1)) = 2 * (rho 6376 * rho 6377) := by
      rw [hd0, hd1, hd2]
      linear_combination r5991
    have hd4 : rho 6391 * (2 - (rho 6377 * rho 6377 + rho 6376 * rho 6376 * (-1))) = rho 6377 * rho 6377 - rho 6376 * rho 6376 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5992
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX244 rho : Seg6.F), (seg6AccY244 rho : Seg6.F)⟩
      ⟨(rho 6376 : Seg6.F), (rho 6377 : Seg6.F)⟩
      ⟨(rho 6383 : Seg6.F), (rho 6384 : Seg6.F)⟩
      ⟨(seg6AccX245 rho : Seg6.F), (seg6AccY245 rho : Seg6.F)⟩
      ⟨(rho 6390 : Seg6.F), (rho 6391 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung244

theorem seg6_rows245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5993 rho ∧ Seg6.relationRow5994 rho ∧ Seg6.relationRow5995 rho ∧ Seg6.relationRow5996 rho ∧ Seg6.relationRow5997 rho ∧ Seg6.relationRow5998 rho ∧ Seg6.relationRow5999 rho ∧ Seg6.relationRow6000 rho ∧ Seg6.relationRow6001 rho ∧ Seg6.relationRow6002 rho ∧ Seg6.relationRow6003 rho ∧ Seg6.relationRow6004 rho ∧ Seg6.relationRow6005 rho ∧ Seg6.relationRow6006 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, p75
  ⟩
  unfold Seg6.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg6.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩

theorem seg6_rung245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2135 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX245 rho : Seg6.F), (seg6AccY245 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6390 : Seg6.F), (rho 6391 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX245 rho : Seg6.F), (seg6AccY245 rho : Seg6.F)⟩
        ⟨(rho 6390 : Seg6.F), (rho 6391 : Seg6.F)⟩
        ⟨(seg6AccX246 rho : Seg6.F), (seg6AccY246 rho : Seg6.F)⟩
        ⟨(rho 6404 : Seg6.F), (rho 6405 : Seg6.F)⟩ := by
  obtain ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩ := seg6_rows245 rho h
  unfold Seg6.relationRow5993 at r5993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5993
  unfold Seg6.relationRow5994 at r5994
  unfold Seg6.relationRow5995 at r5995
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5995
  unfold Seg6.relationRow5996 at r5996
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5996
  unfold Seg6.relationRow5997 at r5997
  unfold Seg6.relationRow5998 at r5998
  unfold Seg6.relationRow5999 at r5999
  unfold Seg6.relationRow6000 at r6000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6000
  unfold Seg6.relationRow6001 at r6001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6001
  unfold Seg6.relationRow6002 at r6002
  unfold Seg6.relationRow6003 at r6003
  unfold Seg6.relationRow6004 at r6004
  unfold Seg6.relationRow6005 at r6005
  unfold Seg6.relationRow6006 at r6006
  have hrung245 (bit : Bool) (hbit : rho 2135 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX245 rho : Seg6.F), (seg6AccY245 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6390 : Seg6.F), (rho 6391 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX245 rho : Seg6.F), (seg6AccY245 rho : Seg6.F)⟩
        ⟨(rho 6390 : Seg6.F), (rho 6391 : Seg6.F)⟩
        ⟨(seg6AccX246 rho : Seg6.F), (seg6AccY246 rho : Seg6.F)⟩
        ⟨(rho 6404 : Seg6.F), (rho 6405 : Seg6.F)⟩ := by
    have hnextx : seg6AccX246 rho = seg6AccX245 rho + rho 6399 := by
      unfold seg6AccX246 seg6AccX245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 95]
      ring
    have hnexty : seg6AccY246 rho = seg6AccY245 rho + rho 6400 := by
      unfold seg6AccY246 seg6AccY245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 95]
      ring
    have hsum : seg6AccX245 rho + seg6AccY245 rho = rho 6392 := by
      unfold seg6AccX245 seg6AccY245
      linear_combination r5993
    have ha0 : (rho 6390 + rho 6391) * (seg6AccX245 rho + seg6AccY245 rho) = rho 6393 := by
      rw [hsum]
      linear_combination r5994
    have ha1 : rho 6391 * seg6AccX245 rho = rho 6394 := by
      unfold seg6AccX245
      linear_combination r5995
    have ha2 : rho 6390 * seg6AccY245 rho = rho 6395 := by
      unfold seg6AccY245
      linear_combination r5996
    have ha3 : 3021 * rho 6394 * rho 6395 = rho 6396 := by
      linear_combination r5997
    have ha4 : rho 6397 * (1 + rho 6396) = rho 6394 + rho 6395 := by
      linear_combination r5998
    have ha5 : rho 6398 * (1 - rho 6396) = rho 6393 - rho 6394 - rho 6395 := by
      linear_combination r5999
    have haddx :
        rho 6397 * (1 + 3021 * (rho 6391 * seg6AccX245 rho) * (rho 6390 * seg6AccY245 rho)) =
          rho 6391 * seg6AccX245 rho + rho 6390 * seg6AccY245 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6398 * (1 - 3021 * (rho 6391 * seg6AccX245 rho) * (rho 6390 * seg6AccY245 rho)) =
          (-1) * (rho 6391 * seg6AccX245 rho) - rho 6390 * seg6AccY245 rho +
            (seg6AccY245 rho - seg6AccX245 rho * (-1)) * (rho 6390 + rho 6391) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6398 * (1 - rho 6396) = rho 6393 - rho 6394 - rho 6395 := ha5
        _ = (-1) * rho 6394 - rho 6395 + (seg6AccY245 rho - seg6AccX245 rho * (-1)) * (rho 6390 + rho 6391) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX246 rho = seg6AccX245 rho - Bool.toZMod bit * (seg6AccX245 rho - rho 6397) := by
      have hd : rho 6399 = Bool.toZMod bit * (rho 6397 - seg6AccX245 rho) := by
        rw [← hbit]
        unfold seg6AccX245
        linear_combination -r6000
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY246 rho = seg6AccY245 rho - Bool.toZMod bit * (seg6AccY245 rho - rho 6398) := by
      have hd : rho 6400 = Bool.toZMod bit * (rho 6398 - seg6AccY245 rho) := by
        rw [← hbit]
        unfold seg6AccY245
        linear_combination -r6001
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6390 * rho 6391 = rho 6401 := by linear_combination r6002
    have hd1 : rho 6390 * rho 6390 = rho 6402 := by linear_combination r6003
    have hd2 : rho 6391 * rho 6391 = rho 6403 := by linear_combination r6004
    have hd3 : rho 6404 * (rho 6391 * rho 6391 + rho 6390 * rho 6390 * (-1)) = 2 * (rho 6390 * rho 6391) := by
      rw [hd0, hd1, hd2]
      linear_combination r6005
    have hd4 : rho 6405 * (2 - (rho 6391 * rho 6391 + rho 6390 * rho 6390 * (-1))) = rho 6391 * rho 6391 - rho 6390 * rho 6390 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6006
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX245 rho : Seg6.F), (seg6AccY245 rho : Seg6.F)⟩
      ⟨(rho 6390 : Seg6.F), (rho 6391 : Seg6.F)⟩
      ⟨(rho 6397 : Seg6.F), (rho 6398 : Seg6.F)⟩
      ⟨(seg6AccX246 rho : Seg6.F), (seg6AccY246 rho : Seg6.F)⟩
      ⟨(rho 6404 : Seg6.F), (rho 6405 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung245

theorem seg6_rows246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow6007 rho ∧ Seg6.relationRow6008 rho ∧ Seg6.relationRow6009 rho ∧ Seg6.relationRow6010 rho ∧ Seg6.relationRow6011 rho ∧ Seg6.relationRow6012 rho ∧ Seg6.relationRow6013 rho ∧ Seg6.relationRow6014 rho ∧ Seg6.relationRow6015 rho ∧ Seg6.relationRow6016 rho ∧ Seg6.relationRow6017 rho ∧ Seg6.relationRow6018 rho ∧ Seg6.relationRow6019 rho ∧ Seg6.relationRow6020 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Seg6.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩

theorem seg6_rung246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2136 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX246 rho : Seg6.F), (seg6AccY246 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6404 : Seg6.F), (rho 6405 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX246 rho : Seg6.F), (seg6AccY246 rho : Seg6.F)⟩
        ⟨(rho 6404 : Seg6.F), (rho 6405 : Seg6.F)⟩
        ⟨(seg6AccX247 rho : Seg6.F), (seg6AccY247 rho : Seg6.F)⟩
        ⟨(rho 6418 : Seg6.F), (rho 6419 : Seg6.F)⟩ := by
  obtain ⟨r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020⟩ := seg6_rows246 rho h
  unfold Seg6.relationRow6007 at r6007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6007
  unfold Seg6.relationRow6008 at r6008
  unfold Seg6.relationRow6009 at r6009
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6009
  unfold Seg6.relationRow6010 at r6010
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6010
  unfold Seg6.relationRow6011 at r6011
  unfold Seg6.relationRow6012 at r6012
  unfold Seg6.relationRow6013 at r6013
  unfold Seg6.relationRow6014 at r6014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6014
  unfold Seg6.relationRow6015 at r6015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6015
  unfold Seg6.relationRow6016 at r6016
  unfold Seg6.relationRow6017 at r6017
  unfold Seg6.relationRow6018 at r6018
  unfold Seg6.relationRow6019 at r6019
  unfold Seg6.relationRow6020 at r6020
  have hrung246 (bit : Bool) (hbit : rho 2136 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX246 rho : Seg6.F), (seg6AccY246 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6404 : Seg6.F), (rho 6405 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX246 rho : Seg6.F), (seg6AccY246 rho : Seg6.F)⟩
        ⟨(rho 6404 : Seg6.F), (rho 6405 : Seg6.F)⟩
        ⟨(seg6AccX247 rho : Seg6.F), (seg6AccY247 rho : Seg6.F)⟩
        ⟨(rho 6418 : Seg6.F), (rho 6419 : Seg6.F)⟩ := by
    have hnextx : seg6AccX247 rho = seg6AccX246 rho + rho 6413 := by
      unfold seg6AccX247 seg6AccX246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 96]
      ring
    have hnexty : seg6AccY247 rho = seg6AccY246 rho + rho 6414 := by
      unfold seg6AccY247 seg6AccY246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 96]
      ring
    have hsum : seg6AccX246 rho + seg6AccY246 rho = rho 6406 := by
      unfold seg6AccX246 seg6AccY246
      linear_combination r6007
    have ha0 : (rho 6404 + rho 6405) * (seg6AccX246 rho + seg6AccY246 rho) = rho 6407 := by
      rw [hsum]
      linear_combination r6008
    have ha1 : rho 6405 * seg6AccX246 rho = rho 6408 := by
      unfold seg6AccX246
      linear_combination r6009
    have ha2 : rho 6404 * seg6AccY246 rho = rho 6409 := by
      unfold seg6AccY246
      linear_combination r6010
    have ha3 : 3021 * rho 6408 * rho 6409 = rho 6410 := by
      linear_combination r6011
    have ha4 : rho 6411 * (1 + rho 6410) = rho 6408 + rho 6409 := by
      linear_combination r6012
    have ha5 : rho 6412 * (1 - rho 6410) = rho 6407 - rho 6408 - rho 6409 := by
      linear_combination r6013
    have haddx :
        rho 6411 * (1 + 3021 * (rho 6405 * seg6AccX246 rho) * (rho 6404 * seg6AccY246 rho)) =
          rho 6405 * seg6AccX246 rho + rho 6404 * seg6AccY246 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6412 * (1 - 3021 * (rho 6405 * seg6AccX246 rho) * (rho 6404 * seg6AccY246 rho)) =
          (-1) * (rho 6405 * seg6AccX246 rho) - rho 6404 * seg6AccY246 rho +
            (seg6AccY246 rho - seg6AccX246 rho * (-1)) * (rho 6404 + rho 6405) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6412 * (1 - rho 6410) = rho 6407 - rho 6408 - rho 6409 := ha5
        _ = (-1) * rho 6408 - rho 6409 + (seg6AccY246 rho - seg6AccX246 rho * (-1)) * (rho 6404 + rho 6405) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX247 rho = seg6AccX246 rho - Bool.toZMod bit * (seg6AccX246 rho - rho 6411) := by
      have hd : rho 6413 = Bool.toZMod bit * (rho 6411 - seg6AccX246 rho) := by
        rw [← hbit]
        unfold seg6AccX246
        linear_combination -r6014
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY247 rho = seg6AccY246 rho - Bool.toZMod bit * (seg6AccY246 rho - rho 6412) := by
      have hd : rho 6414 = Bool.toZMod bit * (rho 6412 - seg6AccY246 rho) := by
        rw [← hbit]
        unfold seg6AccY246
        linear_combination -r6015
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6404 * rho 6405 = rho 6415 := by linear_combination r6016
    have hd1 : rho 6404 * rho 6404 = rho 6416 := by linear_combination r6017
    have hd2 : rho 6405 * rho 6405 = rho 6417 := by linear_combination r6018
    have hd3 : rho 6418 * (rho 6405 * rho 6405 + rho 6404 * rho 6404 * (-1)) = 2 * (rho 6404 * rho 6405) := by
      rw [hd0, hd1, hd2]
      linear_combination r6019
    have hd4 : rho 6419 * (2 - (rho 6405 * rho 6405 + rho 6404 * rho 6404 * (-1))) = rho 6405 * rho 6405 - rho 6404 * rho 6404 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6020
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX246 rho : Seg6.F), (seg6AccY246 rho : Seg6.F)⟩
      ⟨(rho 6404 : Seg6.F), (rho 6405 : Seg6.F)⟩
      ⟨(rho 6411 : Seg6.F), (rho 6412 : Seg6.F)⟩
      ⟨(seg6AccX247 rho : Seg6.F), (seg6AccY247 rho : Seg6.F)⟩
      ⟨(rho 6418 : Seg6.F), (rho 6419 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung246

theorem seg6_rows247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow6021 rho ∧ Seg6.relationRow6022 rho ∧ Seg6.relationRow6023 rho ∧ Seg6.relationRow6024 rho ∧ Seg6.relationRow6025 rho ∧ Seg6.relationRow6026 rho ∧ Seg6.relationRow6027 rho ∧ Seg6.relationRow6028 rho ∧ Seg6.relationRow6029 rho ∧ Seg6.relationRow6030 rho ∧ Seg6.relationRow6031 rho ∧ Seg6.relationRow6032 rho ∧ Seg6.relationRow6033 rho ∧ Seg6.relationRow6034 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Seg6.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩

theorem seg6_rung247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2137 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX247 rho : Seg6.F), (seg6AccY247 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6418 : Seg6.F), (rho 6419 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX247 rho : Seg6.F), (seg6AccY247 rho : Seg6.F)⟩
        ⟨(rho 6418 : Seg6.F), (rho 6419 : Seg6.F)⟩
        ⟨(seg6AccX248 rho : Seg6.F), (seg6AccY248 rho : Seg6.F)⟩
        ⟨(rho 6432 : Seg6.F), (rho 6433 : Seg6.F)⟩ := by
  obtain ⟨r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034⟩ := seg6_rows247 rho h
  unfold Seg6.relationRow6021 at r6021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6021
  unfold Seg6.relationRow6022 at r6022
  unfold Seg6.relationRow6023 at r6023
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6023
  unfold Seg6.relationRow6024 at r6024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6024
  unfold Seg6.relationRow6025 at r6025
  unfold Seg6.relationRow6026 at r6026
  unfold Seg6.relationRow6027 at r6027
  unfold Seg6.relationRow6028 at r6028
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6028
  unfold Seg6.relationRow6029 at r6029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6029
  unfold Seg6.relationRow6030 at r6030
  unfold Seg6.relationRow6031 at r6031
  unfold Seg6.relationRow6032 at r6032
  unfold Seg6.relationRow6033 at r6033
  unfold Seg6.relationRow6034 at r6034
  have hrung247 (bit : Bool) (hbit : rho 2137 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX247 rho : Seg6.F), (seg6AccY247 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6418 : Seg6.F), (rho 6419 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX247 rho : Seg6.F), (seg6AccY247 rho : Seg6.F)⟩
        ⟨(rho 6418 : Seg6.F), (rho 6419 : Seg6.F)⟩
        ⟨(seg6AccX248 rho : Seg6.F), (seg6AccY248 rho : Seg6.F)⟩
        ⟨(rho 6432 : Seg6.F), (rho 6433 : Seg6.F)⟩ := by
    have hnextx : seg6AccX248 rho = seg6AccX247 rho + rho 6427 := by
      unfold seg6AccX248 seg6AccX247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 97]
      ring
    have hnexty : seg6AccY248 rho = seg6AccY247 rho + rho 6428 := by
      unfold seg6AccY248 seg6AccY247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 97]
      ring
    have hsum : seg6AccX247 rho + seg6AccY247 rho = rho 6420 := by
      unfold seg6AccX247 seg6AccY247
      linear_combination r6021
    have ha0 : (rho 6418 + rho 6419) * (seg6AccX247 rho + seg6AccY247 rho) = rho 6421 := by
      rw [hsum]
      linear_combination r6022
    have ha1 : rho 6419 * seg6AccX247 rho = rho 6422 := by
      unfold seg6AccX247
      linear_combination r6023
    have ha2 : rho 6418 * seg6AccY247 rho = rho 6423 := by
      unfold seg6AccY247
      linear_combination r6024
    have ha3 : 3021 * rho 6422 * rho 6423 = rho 6424 := by
      linear_combination r6025
    have ha4 : rho 6425 * (1 + rho 6424) = rho 6422 + rho 6423 := by
      linear_combination r6026
    have ha5 : rho 6426 * (1 - rho 6424) = rho 6421 - rho 6422 - rho 6423 := by
      linear_combination r6027
    have haddx :
        rho 6425 * (1 + 3021 * (rho 6419 * seg6AccX247 rho) * (rho 6418 * seg6AccY247 rho)) =
          rho 6419 * seg6AccX247 rho + rho 6418 * seg6AccY247 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6426 * (1 - 3021 * (rho 6419 * seg6AccX247 rho) * (rho 6418 * seg6AccY247 rho)) =
          (-1) * (rho 6419 * seg6AccX247 rho) - rho 6418 * seg6AccY247 rho +
            (seg6AccY247 rho - seg6AccX247 rho * (-1)) * (rho 6418 + rho 6419) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6426 * (1 - rho 6424) = rho 6421 - rho 6422 - rho 6423 := ha5
        _ = (-1) * rho 6422 - rho 6423 + (seg6AccY247 rho - seg6AccX247 rho * (-1)) * (rho 6418 + rho 6419) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX248 rho = seg6AccX247 rho - Bool.toZMod bit * (seg6AccX247 rho - rho 6425) := by
      have hd : rho 6427 = Bool.toZMod bit * (rho 6425 - seg6AccX247 rho) := by
        rw [← hbit]
        unfold seg6AccX247
        linear_combination -r6028
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY248 rho = seg6AccY247 rho - Bool.toZMod bit * (seg6AccY247 rho - rho 6426) := by
      have hd : rho 6428 = Bool.toZMod bit * (rho 6426 - seg6AccY247 rho) := by
        rw [← hbit]
        unfold seg6AccY247
        linear_combination -r6029
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6418 * rho 6419 = rho 6429 := by linear_combination r6030
    have hd1 : rho 6418 * rho 6418 = rho 6430 := by linear_combination r6031
    have hd2 : rho 6419 * rho 6419 = rho 6431 := by linear_combination r6032
    have hd3 : rho 6432 * (rho 6419 * rho 6419 + rho 6418 * rho 6418 * (-1)) = 2 * (rho 6418 * rho 6419) := by
      rw [hd0, hd1, hd2]
      linear_combination r6033
    have hd4 : rho 6433 * (2 - (rho 6419 * rho 6419 + rho 6418 * rho 6418 * (-1))) = rho 6419 * rho 6419 - rho 6418 * rho 6418 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6034
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX247 rho : Seg6.F), (seg6AccY247 rho : Seg6.F)⟩
      ⟨(rho 6418 : Seg6.F), (rho 6419 : Seg6.F)⟩
      ⟨(rho 6425 : Seg6.F), (rho 6426 : Seg6.F)⟩
      ⟨(seg6AccX248 rho : Seg6.F), (seg6AccY248 rho : Seg6.F)⟩
      ⟨(rho 6432 : Seg6.F), (rho 6433 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung247

theorem seg6_rows248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow6035 rho ∧ Seg6.relationRow6036 rho ∧ Seg6.relationRow6037 rho ∧ Seg6.relationRow6038 rho ∧ Seg6.relationRow6039 rho ∧ Seg6.relationRow6040 rho ∧ Seg6.relationRow6041 rho ∧ Seg6.relationRow6042 rho ∧ Seg6.relationRow6043 rho ∧ Seg6.relationRow6044 rho ∧ Seg6.relationRow6045 rho ∧ Seg6.relationRow6046 rho ∧ Seg6.relationRow6047 rho ∧ Seg6.relationRow6048 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Seg6.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩

theorem seg6_rung248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2138 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX248 rho : Seg6.F), (seg6AccY248 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6432 : Seg6.F), (rho 6433 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX248 rho : Seg6.F), (seg6AccY248 rho : Seg6.F)⟩
        ⟨(rho 6432 : Seg6.F), (rho 6433 : Seg6.F)⟩
        ⟨(seg6AccX249 rho : Seg6.F), (seg6AccY249 rho : Seg6.F)⟩
        ⟨(rho 6446 : Seg6.F), (rho 6447 : Seg6.F)⟩ := by
  obtain ⟨r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048⟩ := seg6_rows248 rho h
  unfold Seg6.relationRow6035 at r6035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6035
  unfold Seg6.relationRow6036 at r6036
  unfold Seg6.relationRow6037 at r6037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6037
  unfold Seg6.relationRow6038 at r6038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6038
  unfold Seg6.relationRow6039 at r6039
  unfold Seg6.relationRow6040 at r6040
  unfold Seg6.relationRow6041 at r6041
  unfold Seg6.relationRow6042 at r6042
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6042
  unfold Seg6.relationRow6043 at r6043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6043
  unfold Seg6.relationRow6044 at r6044
  unfold Seg6.relationRow6045 at r6045
  unfold Seg6.relationRow6046 at r6046
  unfold Seg6.relationRow6047 at r6047
  unfold Seg6.relationRow6048 at r6048
  have hrung248 (bit : Bool) (hbit : rho 2138 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX248 rho : Seg6.F), (seg6AccY248 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6432 : Seg6.F), (rho 6433 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX248 rho : Seg6.F), (seg6AccY248 rho : Seg6.F)⟩
        ⟨(rho 6432 : Seg6.F), (rho 6433 : Seg6.F)⟩
        ⟨(seg6AccX249 rho : Seg6.F), (seg6AccY249 rho : Seg6.F)⟩
        ⟨(rho 6446 : Seg6.F), (rho 6447 : Seg6.F)⟩ := by
    have hnextx : seg6AccX249 rho = seg6AccX248 rho + rho 6441 := by
      unfold seg6AccX249 seg6AccX248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 98]
      ring
    have hnexty : seg6AccY249 rho = seg6AccY248 rho + rho 6442 := by
      unfold seg6AccY249 seg6AccY248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 98]
      ring
    have hsum : seg6AccX248 rho + seg6AccY248 rho = rho 6434 := by
      unfold seg6AccX248 seg6AccY248
      linear_combination r6035
    have ha0 : (rho 6432 + rho 6433) * (seg6AccX248 rho + seg6AccY248 rho) = rho 6435 := by
      rw [hsum]
      linear_combination r6036
    have ha1 : rho 6433 * seg6AccX248 rho = rho 6436 := by
      unfold seg6AccX248
      linear_combination r6037
    have ha2 : rho 6432 * seg6AccY248 rho = rho 6437 := by
      unfold seg6AccY248
      linear_combination r6038
    have ha3 : 3021 * rho 6436 * rho 6437 = rho 6438 := by
      linear_combination r6039
    have ha4 : rho 6439 * (1 + rho 6438) = rho 6436 + rho 6437 := by
      linear_combination r6040
    have ha5 : rho 6440 * (1 - rho 6438) = rho 6435 - rho 6436 - rho 6437 := by
      linear_combination r6041
    have haddx :
        rho 6439 * (1 + 3021 * (rho 6433 * seg6AccX248 rho) * (rho 6432 * seg6AccY248 rho)) =
          rho 6433 * seg6AccX248 rho + rho 6432 * seg6AccY248 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6440 * (1 - 3021 * (rho 6433 * seg6AccX248 rho) * (rho 6432 * seg6AccY248 rho)) =
          (-1) * (rho 6433 * seg6AccX248 rho) - rho 6432 * seg6AccY248 rho +
            (seg6AccY248 rho - seg6AccX248 rho * (-1)) * (rho 6432 + rho 6433) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6440 * (1 - rho 6438) = rho 6435 - rho 6436 - rho 6437 := ha5
        _ = (-1) * rho 6436 - rho 6437 + (seg6AccY248 rho - seg6AccX248 rho * (-1)) * (rho 6432 + rho 6433) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX249 rho = seg6AccX248 rho - Bool.toZMod bit * (seg6AccX248 rho - rho 6439) := by
      have hd : rho 6441 = Bool.toZMod bit * (rho 6439 - seg6AccX248 rho) := by
        rw [← hbit]
        unfold seg6AccX248
        linear_combination -r6042
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY249 rho = seg6AccY248 rho - Bool.toZMod bit * (seg6AccY248 rho - rho 6440) := by
      have hd : rho 6442 = Bool.toZMod bit * (rho 6440 - seg6AccY248 rho) := by
        rw [← hbit]
        unfold seg6AccY248
        linear_combination -r6043
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6432 * rho 6433 = rho 6443 := by linear_combination r6044
    have hd1 : rho 6432 * rho 6432 = rho 6444 := by linear_combination r6045
    have hd2 : rho 6433 * rho 6433 = rho 6445 := by linear_combination r6046
    have hd3 : rho 6446 * (rho 6433 * rho 6433 + rho 6432 * rho 6432 * (-1)) = 2 * (rho 6432 * rho 6433) := by
      rw [hd0, hd1, hd2]
      linear_combination r6047
    have hd4 : rho 6447 * (2 - (rho 6433 * rho 6433 + rho 6432 * rho 6432 * (-1))) = rho 6433 * rho 6433 - rho 6432 * rho 6432 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6048
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX248 rho : Seg6.F), (seg6AccY248 rho : Seg6.F)⟩
      ⟨(rho 6432 : Seg6.F), (rho 6433 : Seg6.F)⟩
      ⟨(rho 6439 : Seg6.F), (rho 6440 : Seg6.F)⟩
      ⟨(seg6AccX249 rho : Seg6.F), (seg6AccY249 rho : Seg6.F)⟩
      ⟨(rho 6446 : Seg6.F), (rho 6447 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung248

theorem seg6_rows249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow6049 rho ∧ Seg6.relationRow6050 rho ∧ Seg6.relationRow6051 rho ∧ Seg6.relationRow6052 rho ∧ Seg6.relationRow6053 rho ∧ Seg6.relationRow6054 rho ∧ Seg6.relationRow6055 rho ∧ Seg6.relationRow6056 rho ∧ Seg6.relationRow6057 rho ∧ Seg6.relationRow6058 rho ∧ Seg6.relationRow6059 rho ∧ Seg6.relationRow6060 rho ∧ Seg6.relationRow6061 rho ∧ Seg6.relationRow6062 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Seg6.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩

theorem seg6_rung249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2139 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX249 rho : Seg6.F), (seg6AccY249 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6446 : Seg6.F), (rho 6447 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX249 rho : Seg6.F), (seg6AccY249 rho : Seg6.F)⟩
        ⟨(rho 6446 : Seg6.F), (rho 6447 : Seg6.F)⟩
        ⟨(seg6AccX250 rho : Seg6.F), (seg6AccY250 rho : Seg6.F)⟩
        ⟨(rho 6460 : Seg6.F), (rho 6461 : Seg6.F)⟩ := by
  obtain ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩ := seg6_rows249 rho h
  unfold Seg6.relationRow6049 at r6049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6049
  unfold Seg6.relationRow6050 at r6050
  unfold Seg6.relationRow6051 at r6051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6051
  unfold Seg6.relationRow6052 at r6052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6052
  unfold Seg6.relationRow6053 at r6053
  unfold Seg6.relationRow6054 at r6054
  unfold Seg6.relationRow6055 at r6055
  unfold Seg6.relationRow6056 at r6056
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6056
  unfold Seg6.relationRow6057 at r6057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6057
  unfold Seg6.relationRow6058 at r6058
  unfold Seg6.relationRow6059 at r6059
  unfold Seg6.relationRow6060 at r6060
  unfold Seg6.relationRow6061 at r6061
  unfold Seg6.relationRow6062 at r6062
  have hrung249 (bit : Bool) (hbit : rho 2139 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX249 rho : Seg6.F), (seg6AccY249 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6446 : Seg6.F), (rho 6447 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX249 rho : Seg6.F), (seg6AccY249 rho : Seg6.F)⟩
        ⟨(rho 6446 : Seg6.F), (rho 6447 : Seg6.F)⟩
        ⟨(seg6AccX250 rho : Seg6.F), (seg6AccY250 rho : Seg6.F)⟩
        ⟨(rho 6460 : Seg6.F), (rho 6461 : Seg6.F)⟩ := by
    have hnextx : seg6AccX250 rho = seg6AccX249 rho + rho 6455 := by
      unfold seg6AccX250 seg6AccX249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 99]
      ring
    have hnexty : seg6AccY250 rho = seg6AccY249 rho + rho 6456 := by
      unfold seg6AccY250 seg6AccY249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 99]
      ring
    have hsum : seg6AccX249 rho + seg6AccY249 rho = rho 6448 := by
      unfold seg6AccX249 seg6AccY249
      linear_combination r6049
    have ha0 : (rho 6446 + rho 6447) * (seg6AccX249 rho + seg6AccY249 rho) = rho 6449 := by
      rw [hsum]
      linear_combination r6050
    have ha1 : rho 6447 * seg6AccX249 rho = rho 6450 := by
      unfold seg6AccX249
      linear_combination r6051
    have ha2 : rho 6446 * seg6AccY249 rho = rho 6451 := by
      unfold seg6AccY249
      linear_combination r6052
    have ha3 : 3021 * rho 6450 * rho 6451 = rho 6452 := by
      linear_combination r6053
    have ha4 : rho 6453 * (1 + rho 6452) = rho 6450 + rho 6451 := by
      linear_combination r6054
    have ha5 : rho 6454 * (1 - rho 6452) = rho 6449 - rho 6450 - rho 6451 := by
      linear_combination r6055
    have haddx :
        rho 6453 * (1 + 3021 * (rho 6447 * seg6AccX249 rho) * (rho 6446 * seg6AccY249 rho)) =
          rho 6447 * seg6AccX249 rho + rho 6446 * seg6AccY249 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6454 * (1 - 3021 * (rho 6447 * seg6AccX249 rho) * (rho 6446 * seg6AccY249 rho)) =
          (-1) * (rho 6447 * seg6AccX249 rho) - rho 6446 * seg6AccY249 rho +
            (seg6AccY249 rho - seg6AccX249 rho * (-1)) * (rho 6446 + rho 6447) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6454 * (1 - rho 6452) = rho 6449 - rho 6450 - rho 6451 := ha5
        _ = (-1) * rho 6450 - rho 6451 + (seg6AccY249 rho - seg6AccX249 rho * (-1)) * (rho 6446 + rho 6447) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX250 rho = seg6AccX249 rho - Bool.toZMod bit * (seg6AccX249 rho - rho 6453) := by
      have hd : rho 6455 = Bool.toZMod bit * (rho 6453 - seg6AccX249 rho) := by
        rw [← hbit]
        unfold seg6AccX249
        linear_combination -r6056
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY250 rho = seg6AccY249 rho - Bool.toZMod bit * (seg6AccY249 rho - rho 6454) := by
      have hd : rho 6456 = Bool.toZMod bit * (rho 6454 - seg6AccY249 rho) := by
        rw [← hbit]
        unfold seg6AccY249
        linear_combination -r6057
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6446 * rho 6447 = rho 6457 := by linear_combination r6058
    have hd1 : rho 6446 * rho 6446 = rho 6458 := by linear_combination r6059
    have hd2 : rho 6447 * rho 6447 = rho 6459 := by linear_combination r6060
    have hd3 : rho 6460 * (rho 6447 * rho 6447 + rho 6446 * rho 6446 * (-1)) = 2 * (rho 6446 * rho 6447) := by
      rw [hd0, hd1, hd2]
      linear_combination r6061
    have hd4 : rho 6461 * (2 - (rho 6447 * rho 6447 + rho 6446 * rho 6446 * (-1))) = rho 6447 * rho 6447 - rho 6446 * rho 6446 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6062
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX249 rho : Seg6.F), (seg6AccY249 rho : Seg6.F)⟩
      ⟨(rho 6446 : Seg6.F), (rho 6447 : Seg6.F)⟩
      ⟨(rho 6453 : Seg6.F), (rho 6454 : Seg6.F)⟩
      ⟨(seg6AccX250 rho : Seg6.F), (seg6AccY250 rho : Seg6.F)⟩
      ⟨(rho 6460 : Seg6.F), (rho 6461 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung249

theorem seg6_rows250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow6063 rho ∧ Seg6.relationRow6064 rho ∧ Seg6.relationRow6065 rho ∧ Seg6.relationRow6066 rho ∧ Seg6.relationRow6067 rho ∧ Seg6.relationRow6068 rho ∧ Seg6.relationRow6069 rho ∧ Seg6.relationRow6070 rho ∧ Seg6.relationRow6071 rho ∧ Seg6.relationRow6072 rho ∧ Seg6.relationRow6073 rho ∧ Seg6.relationRow6074 rho ∧ Seg6.relationRow6075 rho ∧ Seg6.relationRow6076 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75
  ⟩
  unfold Seg6.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩
  exact ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩

theorem seg6_rung250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2140 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX250 rho : Seg6.F), (seg6AccY250 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 6460 : Seg6.F), (rho 6461 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX250 rho : Seg6.F), (seg6AccY250 rho : Seg6.F)⟩
        ⟨(rho 6460 : Seg6.F), (rho 6461 : Seg6.F)⟩
        ⟨(seg6AccX251 rho : Seg6.F), (seg6AccY251 rho : Seg6.F)⟩
        ⟨(rho 6474 : Seg6.F), (rho 6475 : Seg6.F)⟩ := by
  obtain ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩ := seg6_rows250 rho h
  unfold Seg6.relationRow6063 at r6063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6063
  unfold Seg6.relationRow6064 at r6064
  unfold Seg6.relationRow6065 at r6065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6065
  unfold Seg6.relationRow6066 at r6066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6066
  unfold Seg6.relationRow6067 at r6067
  unfold Seg6.relationRow6068 at r6068
  unfold Seg6.relationRow6069 at r6069
  unfold Seg6.relationRow6070 at r6070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6070
  unfold Seg6.relationRow6071 at r6071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6071
  unfold Seg6.relationRow6072 at r6072
  unfold Seg6.relationRow6073 at r6073
  unfold Seg6.relationRow6074 at r6074
  unfold Seg6.relationRow6075 at r6075
  unfold Seg6.relationRow6076 at r6076
  have hrung250 (bit : Bool) (hbit : rho 2140 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX250 rho : Seg6.F), (seg6AccY250 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 6460 : Seg6.F), (rho 6461 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX250 rho : Seg6.F), (seg6AccY250 rho : Seg6.F)⟩
        ⟨(rho 6460 : Seg6.F), (rho 6461 : Seg6.F)⟩
        ⟨(seg6AccX251 rho : Seg6.F), (seg6AccY251 rho : Seg6.F)⟩
        ⟨(rho 6474 : Seg6.F), (rho 6475 : Seg6.F)⟩ := by
    have hnextx : seg6AccX251 rho = seg6AccX250 rho + rho 6469 := by
      unfold seg6AccX251 seg6AccX250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 100]
      ring
    have hnexty : seg6AccY251 rho = seg6AccY250 rho + rho 6470 := by
      unfold seg6AccY251 seg6AccY250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 100]
      ring
    have hsum : seg6AccX250 rho + seg6AccY250 rho = rho 6462 := by
      unfold seg6AccX250 seg6AccY250
      linear_combination r6063
    have ha0 : (rho 6460 + rho 6461) * (seg6AccX250 rho + seg6AccY250 rho) = rho 6463 := by
      rw [hsum]
      linear_combination r6064
    have ha1 : rho 6461 * seg6AccX250 rho = rho 6464 := by
      unfold seg6AccX250
      linear_combination r6065
    have ha2 : rho 6460 * seg6AccY250 rho = rho 6465 := by
      unfold seg6AccY250
      linear_combination r6066
    have ha3 : 3021 * rho 6464 * rho 6465 = rho 6466 := by
      linear_combination r6067
    have ha4 : rho 6467 * (1 + rho 6466) = rho 6464 + rho 6465 := by
      linear_combination r6068
    have ha5 : rho 6468 * (1 - rho 6466) = rho 6463 - rho 6464 - rho 6465 := by
      linear_combination r6069
    have haddx :
        rho 6467 * (1 + 3021 * (rho 6461 * seg6AccX250 rho) * (rho 6460 * seg6AccY250 rho)) =
          rho 6461 * seg6AccX250 rho + rho 6460 * seg6AccY250 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 6468 * (1 - 3021 * (rho 6461 * seg6AccX250 rho) * (rho 6460 * seg6AccY250 rho)) =
          (-1) * (rho 6461 * seg6AccX250 rho) - rho 6460 * seg6AccY250 rho +
            (seg6AccY250 rho - seg6AccX250 rho * (-1)) * (rho 6460 + rho 6461) := by
      rw [ha1, ha2, ha3]
      calc
        rho 6468 * (1 - rho 6466) = rho 6463 - rho 6464 - rho 6465 := ha5
        _ = (-1) * rho 6464 - rho 6465 + (seg6AccY250 rho - seg6AccX250 rho * (-1)) * (rho 6460 + rho 6461) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX251 rho = seg6AccX250 rho - Bool.toZMod bit * (seg6AccX250 rho - rho 6467) := by
      have hd : rho 6469 = Bool.toZMod bit * (rho 6467 - seg6AccX250 rho) := by
        rw [← hbit]
        unfold seg6AccX250
        linear_combination -r6070
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY251 rho = seg6AccY250 rho - Bool.toZMod bit * (seg6AccY250 rho - rho 6468) := by
      have hd : rho 6470 = Bool.toZMod bit * (rho 6468 - seg6AccY250 rho) := by
        rw [← hbit]
        unfold seg6AccY250
        linear_combination -r6071
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 6460 * rho 6461 = rho 6471 := by linear_combination r6072
    have hd1 : rho 6460 * rho 6460 = rho 6472 := by linear_combination r6073
    have hd2 : rho 6461 * rho 6461 = rho 6473 := by linear_combination r6074
    have hd3 : rho 6474 * (rho 6461 * rho 6461 + rho 6460 * rho 6460 * (-1)) = 2 * (rho 6460 * rho 6461) := by
      rw [hd0, hd1, hd2]
      linear_combination r6075
    have hd4 : rho 6475 * (2 - (rho 6461 * rho 6461 + rho 6460 * rho 6460 * (-1))) = rho 6461 * rho 6461 - rho 6460 * rho 6460 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX250 rho : Seg6.F), (seg6AccY250 rho : Seg6.F)⟩
      ⟨(rho 6460 : Seg6.F), (rho 6461 : Seg6.F)⟩
      ⟨(rho 6467 : Seg6.F), (rho 6468 : Seg6.F)⟩
      ⟨(seg6AccX251 rho : Seg6.F), (seg6AccY251 rho : Seg6.F)⟩
      ⟨(rho 6474 : Seg6.F), (rho 6475 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung250

theorem seg6_hstep_c22 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 242 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc hcur
  · exact seg6_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc hcur
  · exact seg6_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc hcur
  · exact seg6_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc hcur
  · exact seg6_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc hcur
  · exact seg6_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc hcur
  · exact seg6_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc hcur
  · exact seg6_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc hcur
  · exact seg6_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

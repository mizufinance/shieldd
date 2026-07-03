import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5977 rho ∧ Seg52.relationRow5978 rho ∧ Seg52.relationRow5979 rho ∧ Seg52.relationRow5980 rho ∧ Seg52.relationRow5981 rho ∧ Seg52.relationRow5982 rho ∧ Seg52.relationRow5983 rho ∧ Seg52.relationRow5984 rho ∧ Seg52.relationRow5985 rho ∧ Seg52.relationRow5986 rho ∧ Seg52.relationRow5987 rho ∧ Seg52.relationRow5988 rho ∧ Seg52.relationRow5989 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989⟩

theorem seg52Out0_rung66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49452 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50364, rho 50365⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ ⟨rho 50364, rho 50365⟩
        ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ ⟨rho 50377, rho 50378⟩ := by
  obtain ⟨r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989⟩ := seg52Out0_rows66 rho h
  unfold Seg52.relationRow5977 at r5977

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5977

  unfold Seg52.relationRow5978 at r5978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5978

  unfold Seg52.relationRow5979 at r5979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5979

  unfold Seg52.relationRow5980 at r5980

  unfold Seg52.relationRow5981 at r5981

  unfold Seg52.relationRow5982 at r5982

  unfold Seg52.relationRow5983 at r5983

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5983

  unfold Seg52.relationRow5984 at r5984

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5984

  unfold Seg52.relationRow5985 at r5985

  unfold Seg52.relationRow5986 at r5986

  unfold Seg52.relationRow5987 at r5987

  unfold Seg52.relationRow5988 at r5988

  unfold Seg52.relationRow5989 at r5989

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX67 rho = seg52Out0AccX66 rho + rho 50372 := by
    unfold seg52Out0AccX67 seg52Out0AccX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 66]

    ring

  have hnexty : seg52Out0AccY67 rho = seg52Out0AccY66 rho + rho 50373 := by
    unfold seg52Out0AccY67 seg52Out0AccY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 66]

    ring

  have ha0 : (rho 50364 + rho 50365) * (seg52Out0AccX66 rho + seg52Out0AccY66 rho) = rho 50366 := by
    unfold seg52Out0AccX66 seg52Out0AccY66
    linear_combination r5977
  have ha1 : rho 50365 * seg52Out0AccX66 rho = rho 50367 := by
    unfold seg52Out0AccX66
    linear_combination r5978
  have ha2 : rho 50364 * seg52Out0AccY66 rho = rho 50368 := by
    unfold seg52Out0AccY66
    linear_combination r5979
  have ha3 : 3021 * rho 50367 * rho 50368 = rho 50369 := by
    linear_combination r5980
  have ha4 : rho 50370 * (1 + rho 50369) = rho 50367 + rho 50368 := by
    linear_combination r5981
  have ha5 : rho 50371 * (1 - rho 50369) = rho 50366 - rho 50367 - rho 50368 := by
    linear_combination r5982
  have haddx :
      rho 50370 * (1 + 3021 * (rho 50365 * seg52Out0AccX66 rho) * (rho 50364 * seg52Out0AccY66 rho)) =
        rho 50365 * seg52Out0AccX66 rho + rho 50364 * seg52Out0AccY66 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50371 * (1 - 3021 * (rho 50365 * seg52Out0AccX66 rho) * (rho 50364 * seg52Out0AccY66 rho)) =
        (-1) * (rho 50365 * seg52Out0AccX66 rho) - rho 50364 * seg52Out0AccY66 rho +
          (seg52Out0AccY66 rho - seg52Out0AccX66 rho * (-1)) * (rho 50364 + rho 50365) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50371 * (1 - rho 50369) = rho 50366 - rho 50367 - rho 50368 := ha5
      _ = (-1) * rho 50367 - rho 50368 + (seg52Out0AccY66 rho - seg52Out0AccX66 rho * (-1)) *
          (rho 50364 + rho 50365) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX67 rho = seg52Out0AccX66 rho - Bool.toZMod bit * (seg52Out0AccX66 rho - rho 50370) := by
    have hd : rho 50372 = Bool.toZMod bit * (rho 50370 - seg52Out0AccX66 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX66
      linear_combination -r5983
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY67 rho = seg52Out0AccY66 rho - Bool.toZMod bit * (seg52Out0AccY66 rho - rho 50371) := by
    have hd : rho 50373 = Bool.toZMod bit * (rho 50371 - seg52Out0AccY66 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY66
      linear_combination -r5984
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50364 * rho 50365 = rho 50374 := by linear_combination r5985
  have hd1 : rho 50364 * rho 50364 = rho 50375 := by linear_combination r5986
  have hd2 : rho 50365 * rho 50365 = rho 50376 := by linear_combination r5987
  have hd3 : rho 50377 * (rho 50365 * rho 50365 + rho 50364 * rho 50364 * (-1)) =
      2 * (rho 50364 * rho 50365) := by
    rw [hd0, hd1, hd2]
    linear_combination r5988
  have hd4 : rho 50378 * (2 - (rho 50365 * rho 50365 + rho 50364 * rho 50364 * (-1))) =
      rho 50365 * rho 50365 - rho 50364 * rho 50364 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5989
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ ⟨rho 50364, rho 50365⟩
    ⟨rho 50370, rho 50371⟩ ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ ⟨rho 50377, rho 50378⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5990 rho ∧ Seg52.relationRow5991 rho ∧ Seg52.relationRow5992 rho ∧ Seg52.relationRow5993 rho ∧ Seg52.relationRow5994 rho ∧ Seg52.relationRow5995 rho ∧ Seg52.relationRow5996 rho ∧ Seg52.relationRow5997 rho ∧ Seg52.relationRow5998 rho ∧ Seg52.relationRow5999 rho ∧ Seg52.relationRow6000 rho ∧ Seg52.relationRow6001 rho ∧ Seg52.relationRow6002 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨r6000, r6001, r6002, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002⟩

theorem seg52Out0_rung67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49453 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50377, rho 50378⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ ⟨rho 50377, rho 50378⟩
        ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ ⟨rho 50390, rho 50391⟩ := by
  obtain ⟨r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002⟩ := seg52Out0_rows67 rho h
  unfold Seg52.relationRow5990 at r5990

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5990

  unfold Seg52.relationRow5991 at r5991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5991

  unfold Seg52.relationRow5992 at r5992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5992

  unfold Seg52.relationRow5993 at r5993

  unfold Seg52.relationRow5994 at r5994

  unfold Seg52.relationRow5995 at r5995

  unfold Seg52.relationRow5996 at r5996

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5996

  unfold Seg52.relationRow5997 at r5997

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5997

  unfold Seg52.relationRow5998 at r5998

  unfold Seg52.relationRow5999 at r5999

  unfold Seg52.relationRow6000 at r6000

  unfold Seg52.relationRow6001 at r6001

  unfold Seg52.relationRow6002 at r6002

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX68 rho = seg52Out0AccX67 rho + rho 50385 := by
    unfold seg52Out0AccX68 seg52Out0AccX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 67]

    ring

  have hnexty : seg52Out0AccY68 rho = seg52Out0AccY67 rho + rho 50386 := by
    unfold seg52Out0AccY68 seg52Out0AccY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 67]

    ring

  have ha0 : (rho 50377 + rho 50378) * (seg52Out0AccX67 rho + seg52Out0AccY67 rho) = rho 50379 := by
    unfold seg52Out0AccX67 seg52Out0AccY67
    linear_combination r5990
  have ha1 : rho 50378 * seg52Out0AccX67 rho = rho 50380 := by
    unfold seg52Out0AccX67
    linear_combination r5991
  have ha2 : rho 50377 * seg52Out0AccY67 rho = rho 50381 := by
    unfold seg52Out0AccY67
    linear_combination r5992
  have ha3 : 3021 * rho 50380 * rho 50381 = rho 50382 := by
    linear_combination r5993
  have ha4 : rho 50383 * (1 + rho 50382) = rho 50380 + rho 50381 := by
    linear_combination r5994
  have ha5 : rho 50384 * (1 - rho 50382) = rho 50379 - rho 50380 - rho 50381 := by
    linear_combination r5995
  have haddx :
      rho 50383 * (1 + 3021 * (rho 50378 * seg52Out0AccX67 rho) * (rho 50377 * seg52Out0AccY67 rho)) =
        rho 50378 * seg52Out0AccX67 rho + rho 50377 * seg52Out0AccY67 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50384 * (1 - 3021 * (rho 50378 * seg52Out0AccX67 rho) * (rho 50377 * seg52Out0AccY67 rho)) =
        (-1) * (rho 50378 * seg52Out0AccX67 rho) - rho 50377 * seg52Out0AccY67 rho +
          (seg52Out0AccY67 rho - seg52Out0AccX67 rho * (-1)) * (rho 50377 + rho 50378) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50384 * (1 - rho 50382) = rho 50379 - rho 50380 - rho 50381 := ha5
      _ = (-1) * rho 50380 - rho 50381 + (seg52Out0AccY67 rho - seg52Out0AccX67 rho * (-1)) *
          (rho 50377 + rho 50378) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX68 rho = seg52Out0AccX67 rho - Bool.toZMod bit * (seg52Out0AccX67 rho - rho 50383) := by
    have hd : rho 50385 = Bool.toZMod bit * (rho 50383 - seg52Out0AccX67 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX67
      linear_combination -r5996
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY68 rho = seg52Out0AccY67 rho - Bool.toZMod bit * (seg52Out0AccY67 rho - rho 50384) := by
    have hd : rho 50386 = Bool.toZMod bit * (rho 50384 - seg52Out0AccY67 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY67
      linear_combination -r5997
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50377 * rho 50378 = rho 50387 := by linear_combination r5998
  have hd1 : rho 50377 * rho 50377 = rho 50388 := by linear_combination r5999
  have hd2 : rho 50378 * rho 50378 = rho 50389 := by linear_combination r6000
  have hd3 : rho 50390 * (rho 50378 * rho 50378 + rho 50377 * rho 50377 * (-1)) =
      2 * (rho 50377 * rho 50378) := by
    rw [hd0, hd1, hd2]
    linear_combination r6001
  have hd4 : rho 50391 * (2 - (rho 50378 * rho 50378 + rho 50377 * rho 50377 * (-1))) =
      rho 50378 * rho 50378 - rho 50377 * rho 50377 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6002
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ ⟨rho 50377, rho 50378⟩
    ⟨rho 50383, rho 50384⟩ ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ ⟨rho 50390, rho 50391⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6003 rho ∧ Seg52.relationRow6004 rho ∧ Seg52.relationRow6005 rho ∧ Seg52.relationRow6006 rho ∧ Seg52.relationRow6007 rho ∧ Seg52.relationRow6008 rho ∧ Seg52.relationRow6009 rho ∧ Seg52.relationRow6010 rho ∧ Seg52.relationRow6011 rho ∧ Seg52.relationRow6012 rho ∧ Seg52.relationRow6013 rho ∧ Seg52.relationRow6014 rho ∧ Seg52.relationRow6015 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015⟩

theorem seg52Out0_rung68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49454 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50390, rho 50391⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ ⟨rho 50390, rho 50391⟩
        ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ ⟨rho 50403, rho 50404⟩ := by
  obtain ⟨r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015⟩ := seg52Out0_rows68 rho h
  unfold Seg52.relationRow6003 at r6003

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6003

  unfold Seg52.relationRow6004 at r6004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6004

  unfold Seg52.relationRow6005 at r6005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6005

  unfold Seg52.relationRow6006 at r6006

  unfold Seg52.relationRow6007 at r6007

  unfold Seg52.relationRow6008 at r6008

  unfold Seg52.relationRow6009 at r6009

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6009

  unfold Seg52.relationRow6010 at r6010

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6010

  unfold Seg52.relationRow6011 at r6011

  unfold Seg52.relationRow6012 at r6012

  unfold Seg52.relationRow6013 at r6013

  unfold Seg52.relationRow6014 at r6014

  unfold Seg52.relationRow6015 at r6015

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX69 rho = seg52Out0AccX68 rho + rho 50398 := by
    unfold seg52Out0AccX69 seg52Out0AccX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 68]

    ring

  have hnexty : seg52Out0AccY69 rho = seg52Out0AccY68 rho + rho 50399 := by
    unfold seg52Out0AccY69 seg52Out0AccY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 68]

    ring

  have ha0 : (rho 50390 + rho 50391) * (seg52Out0AccX68 rho + seg52Out0AccY68 rho) = rho 50392 := by
    unfold seg52Out0AccX68 seg52Out0AccY68
    linear_combination r6003
  have ha1 : rho 50391 * seg52Out0AccX68 rho = rho 50393 := by
    unfold seg52Out0AccX68
    linear_combination r6004
  have ha2 : rho 50390 * seg52Out0AccY68 rho = rho 50394 := by
    unfold seg52Out0AccY68
    linear_combination r6005
  have ha3 : 3021 * rho 50393 * rho 50394 = rho 50395 := by
    linear_combination r6006
  have ha4 : rho 50396 * (1 + rho 50395) = rho 50393 + rho 50394 := by
    linear_combination r6007
  have ha5 : rho 50397 * (1 - rho 50395) = rho 50392 - rho 50393 - rho 50394 := by
    linear_combination r6008
  have haddx :
      rho 50396 * (1 + 3021 * (rho 50391 * seg52Out0AccX68 rho) * (rho 50390 * seg52Out0AccY68 rho)) =
        rho 50391 * seg52Out0AccX68 rho + rho 50390 * seg52Out0AccY68 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50397 * (1 - 3021 * (rho 50391 * seg52Out0AccX68 rho) * (rho 50390 * seg52Out0AccY68 rho)) =
        (-1) * (rho 50391 * seg52Out0AccX68 rho) - rho 50390 * seg52Out0AccY68 rho +
          (seg52Out0AccY68 rho - seg52Out0AccX68 rho * (-1)) * (rho 50390 + rho 50391) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50397 * (1 - rho 50395) = rho 50392 - rho 50393 - rho 50394 := ha5
      _ = (-1) * rho 50393 - rho 50394 + (seg52Out0AccY68 rho - seg52Out0AccX68 rho * (-1)) *
          (rho 50390 + rho 50391) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX69 rho = seg52Out0AccX68 rho - Bool.toZMod bit * (seg52Out0AccX68 rho - rho 50396) := by
    have hd : rho 50398 = Bool.toZMod bit * (rho 50396 - seg52Out0AccX68 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX68
      linear_combination -r6009
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY69 rho = seg52Out0AccY68 rho - Bool.toZMod bit * (seg52Out0AccY68 rho - rho 50397) := by
    have hd : rho 50399 = Bool.toZMod bit * (rho 50397 - seg52Out0AccY68 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY68
      linear_combination -r6010
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50390 * rho 50391 = rho 50400 := by linear_combination r6011
  have hd1 : rho 50390 * rho 50390 = rho 50401 := by linear_combination r6012
  have hd2 : rho 50391 * rho 50391 = rho 50402 := by linear_combination r6013
  have hd3 : rho 50403 * (rho 50391 * rho 50391 + rho 50390 * rho 50390 * (-1)) =
      2 * (rho 50390 * rho 50391) := by
    rw [hd0, hd1, hd2]
    linear_combination r6014
  have hd4 : rho 50404 * (2 - (rho 50391 * rho 50391 + rho 50390 * rho 50390 * (-1))) =
      rho 50391 * rho 50391 - rho 50390 * rho 50390 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6015
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ ⟨rho 50390, rho 50391⟩
    ⟨rho 50396, rho 50397⟩ ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ ⟨rho 50403, rho 50404⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6016 rho ∧ Seg52.relationRow6017 rho ∧ Seg52.relationRow6018 rho ∧ Seg52.relationRow6019 rho ∧ Seg52.relationRow6020 rho ∧ Seg52.relationRow6021 rho ∧ Seg52.relationRow6022 rho ∧ Seg52.relationRow6023 rho ∧ Seg52.relationRow6024 rho ∧ Seg52.relationRow6025 rho ∧ Seg52.relationRow6026 rho ∧ Seg52.relationRow6027 rho ∧ Seg52.relationRow6028 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028⟩

theorem seg52Out0_rung69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49455 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50403, rho 50404⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ ⟨rho 50403, rho 50404⟩
        ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ ⟨rho 50416, rho 50417⟩ := by
  obtain ⟨r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028⟩ := seg52Out0_rows69 rho h
  unfold Seg52.relationRow6016 at r6016

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6016

  unfold Seg52.relationRow6017 at r6017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6017

  unfold Seg52.relationRow6018 at r6018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6018

  unfold Seg52.relationRow6019 at r6019

  unfold Seg52.relationRow6020 at r6020

  unfold Seg52.relationRow6021 at r6021

  unfold Seg52.relationRow6022 at r6022

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6022

  unfold Seg52.relationRow6023 at r6023

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6023

  unfold Seg52.relationRow6024 at r6024

  unfold Seg52.relationRow6025 at r6025

  unfold Seg52.relationRow6026 at r6026

  unfold Seg52.relationRow6027 at r6027

  unfold Seg52.relationRow6028 at r6028

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX70 rho = seg52Out0AccX69 rho + rho 50411 := by
    unfold seg52Out0AccX70 seg52Out0AccX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 69]

    ring

  have hnexty : seg52Out0AccY70 rho = seg52Out0AccY69 rho + rho 50412 := by
    unfold seg52Out0AccY70 seg52Out0AccY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 69]

    ring

  have ha0 : (rho 50403 + rho 50404) * (seg52Out0AccX69 rho + seg52Out0AccY69 rho) = rho 50405 := by
    unfold seg52Out0AccX69 seg52Out0AccY69
    linear_combination r6016
  have ha1 : rho 50404 * seg52Out0AccX69 rho = rho 50406 := by
    unfold seg52Out0AccX69
    linear_combination r6017
  have ha2 : rho 50403 * seg52Out0AccY69 rho = rho 50407 := by
    unfold seg52Out0AccY69
    linear_combination r6018
  have ha3 : 3021 * rho 50406 * rho 50407 = rho 50408 := by
    linear_combination r6019
  have ha4 : rho 50409 * (1 + rho 50408) = rho 50406 + rho 50407 := by
    linear_combination r6020
  have ha5 : rho 50410 * (1 - rho 50408) = rho 50405 - rho 50406 - rho 50407 := by
    linear_combination r6021
  have haddx :
      rho 50409 * (1 + 3021 * (rho 50404 * seg52Out0AccX69 rho) * (rho 50403 * seg52Out0AccY69 rho)) =
        rho 50404 * seg52Out0AccX69 rho + rho 50403 * seg52Out0AccY69 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50410 * (1 - 3021 * (rho 50404 * seg52Out0AccX69 rho) * (rho 50403 * seg52Out0AccY69 rho)) =
        (-1) * (rho 50404 * seg52Out0AccX69 rho) - rho 50403 * seg52Out0AccY69 rho +
          (seg52Out0AccY69 rho - seg52Out0AccX69 rho * (-1)) * (rho 50403 + rho 50404) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50410 * (1 - rho 50408) = rho 50405 - rho 50406 - rho 50407 := ha5
      _ = (-1) * rho 50406 - rho 50407 + (seg52Out0AccY69 rho - seg52Out0AccX69 rho * (-1)) *
          (rho 50403 + rho 50404) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX70 rho = seg52Out0AccX69 rho - Bool.toZMod bit * (seg52Out0AccX69 rho - rho 50409) := by
    have hd : rho 50411 = Bool.toZMod bit * (rho 50409 - seg52Out0AccX69 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX69
      linear_combination -r6022
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY70 rho = seg52Out0AccY69 rho - Bool.toZMod bit * (seg52Out0AccY69 rho - rho 50410) := by
    have hd : rho 50412 = Bool.toZMod bit * (rho 50410 - seg52Out0AccY69 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY69
      linear_combination -r6023
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50403 * rho 50404 = rho 50413 := by linear_combination r6024
  have hd1 : rho 50403 * rho 50403 = rho 50414 := by linear_combination r6025
  have hd2 : rho 50404 * rho 50404 = rho 50415 := by linear_combination r6026
  have hd3 : rho 50416 * (rho 50404 * rho 50404 + rho 50403 * rho 50403 * (-1)) =
      2 * (rho 50403 * rho 50404) := by
    rw [hd0, hd1, hd2]
    linear_combination r6027
  have hd4 : rho 50417 * (2 - (rho 50404 * rho 50404 + rho 50403 * rho 50403 * (-1))) =
      rho 50404 * rho 50404 - rho 50403 * rho 50403 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6028
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ ⟨rho 50403, rho 50404⟩
    ⟨rho 50409, rho 50410⟩ ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ ⟨rho 50416, rho 50417⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6029 rho ∧ Seg52.relationRow6030 rho ∧ Seg52.relationRow6031 rho ∧ Seg52.relationRow6032 rho ∧ Seg52.relationRow6033 rho ∧ Seg52.relationRow6034 rho ∧ Seg52.relationRow6035 rho ∧ Seg52.relationRow6036 rho ∧ Seg52.relationRow6037 rho ∧ Seg52.relationRow6038 rho ∧ Seg52.relationRow6039 rho ∧ Seg52.relationRow6040 rho ∧ Seg52.relationRow6041 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038, r6039, r6040, r6041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038, r6039, r6040, r6041⟩

theorem seg52Out0_rung70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49456 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50416, rho 50417⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ ⟨rho 50416, rho 50417⟩
        ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ ⟨rho 50429, rho 50430⟩ := by
  obtain ⟨r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038, r6039, r6040, r6041⟩ := seg52Out0_rows70 rho h
  unfold Seg52.relationRow6029 at r6029

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6029

  unfold Seg52.relationRow6030 at r6030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6030

  unfold Seg52.relationRow6031 at r6031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6031

  unfold Seg52.relationRow6032 at r6032

  unfold Seg52.relationRow6033 at r6033

  unfold Seg52.relationRow6034 at r6034

  unfold Seg52.relationRow6035 at r6035

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6035

  unfold Seg52.relationRow6036 at r6036

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6036

  unfold Seg52.relationRow6037 at r6037

  unfold Seg52.relationRow6038 at r6038

  unfold Seg52.relationRow6039 at r6039

  unfold Seg52.relationRow6040 at r6040

  unfold Seg52.relationRow6041 at r6041

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX71 rho = seg52Out0AccX70 rho + rho 50424 := by
    unfold seg52Out0AccX71 seg52Out0AccX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 70]

    ring

  have hnexty : seg52Out0AccY71 rho = seg52Out0AccY70 rho + rho 50425 := by
    unfold seg52Out0AccY71 seg52Out0AccY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 70]

    ring

  have ha0 : (rho 50416 + rho 50417) * (seg52Out0AccX70 rho + seg52Out0AccY70 rho) = rho 50418 := by
    unfold seg52Out0AccX70 seg52Out0AccY70
    linear_combination r6029
  have ha1 : rho 50417 * seg52Out0AccX70 rho = rho 50419 := by
    unfold seg52Out0AccX70
    linear_combination r6030
  have ha2 : rho 50416 * seg52Out0AccY70 rho = rho 50420 := by
    unfold seg52Out0AccY70
    linear_combination r6031
  have ha3 : 3021 * rho 50419 * rho 50420 = rho 50421 := by
    linear_combination r6032
  have ha4 : rho 50422 * (1 + rho 50421) = rho 50419 + rho 50420 := by
    linear_combination r6033
  have ha5 : rho 50423 * (1 - rho 50421) = rho 50418 - rho 50419 - rho 50420 := by
    linear_combination r6034
  have haddx :
      rho 50422 * (1 + 3021 * (rho 50417 * seg52Out0AccX70 rho) * (rho 50416 * seg52Out0AccY70 rho)) =
        rho 50417 * seg52Out0AccX70 rho + rho 50416 * seg52Out0AccY70 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50423 * (1 - 3021 * (rho 50417 * seg52Out0AccX70 rho) * (rho 50416 * seg52Out0AccY70 rho)) =
        (-1) * (rho 50417 * seg52Out0AccX70 rho) - rho 50416 * seg52Out0AccY70 rho +
          (seg52Out0AccY70 rho - seg52Out0AccX70 rho * (-1)) * (rho 50416 + rho 50417) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50423 * (1 - rho 50421) = rho 50418 - rho 50419 - rho 50420 := ha5
      _ = (-1) * rho 50419 - rho 50420 + (seg52Out0AccY70 rho - seg52Out0AccX70 rho * (-1)) *
          (rho 50416 + rho 50417) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX71 rho = seg52Out0AccX70 rho - Bool.toZMod bit * (seg52Out0AccX70 rho - rho 50422) := by
    have hd : rho 50424 = Bool.toZMod bit * (rho 50422 - seg52Out0AccX70 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX70
      linear_combination -r6035
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY71 rho = seg52Out0AccY70 rho - Bool.toZMod bit * (seg52Out0AccY70 rho - rho 50423) := by
    have hd : rho 50425 = Bool.toZMod bit * (rho 50423 - seg52Out0AccY70 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY70
      linear_combination -r6036
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50416 * rho 50417 = rho 50426 := by linear_combination r6037
  have hd1 : rho 50416 * rho 50416 = rho 50427 := by linear_combination r6038
  have hd2 : rho 50417 * rho 50417 = rho 50428 := by linear_combination r6039
  have hd3 : rho 50429 * (rho 50417 * rho 50417 + rho 50416 * rho 50416 * (-1)) =
      2 * (rho 50416 * rho 50417) := by
    rw [hd0, hd1, hd2]
    linear_combination r6040
  have hd4 : rho 50430 * (2 - (rho 50417 * rho 50417 + rho 50416 * rho 50416 * (-1))) =
      rho 50417 * rho 50417 - rho 50416 * rho 50416 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6041
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ ⟨rho 50416, rho 50417⟩
    ⟨rho 50422, rho 50423⟩ ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ ⟨rho 50429, rho 50430⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6042 rho ∧ Seg52.relationRow6043 rho ∧ Seg52.relationRow6044 rho ∧ Seg52.relationRow6045 rho ∧ Seg52.relationRow6046 rho ∧ Seg52.relationRow6047 rho ∧ Seg52.relationRow6048 rho ∧ Seg52.relationRow6049 rho ∧ Seg52.relationRow6050 rho ∧ Seg52.relationRow6051 rho ∧ Seg52.relationRow6052 rho ∧ Seg52.relationRow6053 rho ∧ Seg52.relationRow6054 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051, r6052, r6053, r6054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051, r6052, r6053, r6054⟩

theorem seg52Out0_rung71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49457 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50429, rho 50430⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ ⟨rho 50429, rho 50430⟩
        ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ ⟨rho 50442, rho 50443⟩ := by
  obtain ⟨r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051, r6052, r6053, r6054⟩ := seg52Out0_rows71 rho h
  unfold Seg52.relationRow6042 at r6042

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6042

  unfold Seg52.relationRow6043 at r6043

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6043

  unfold Seg52.relationRow6044 at r6044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6044

  unfold Seg52.relationRow6045 at r6045

  unfold Seg52.relationRow6046 at r6046

  unfold Seg52.relationRow6047 at r6047

  unfold Seg52.relationRow6048 at r6048

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6048

  unfold Seg52.relationRow6049 at r6049

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6049

  unfold Seg52.relationRow6050 at r6050

  unfold Seg52.relationRow6051 at r6051

  unfold Seg52.relationRow6052 at r6052

  unfold Seg52.relationRow6053 at r6053

  unfold Seg52.relationRow6054 at r6054

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX72 rho = seg52Out0AccX71 rho + rho 50437 := by
    unfold seg52Out0AccX72 seg52Out0AccX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 71]

    ring

  have hnexty : seg52Out0AccY72 rho = seg52Out0AccY71 rho + rho 50438 := by
    unfold seg52Out0AccY72 seg52Out0AccY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 71]

    ring

  have ha0 : (rho 50429 + rho 50430) * (seg52Out0AccX71 rho + seg52Out0AccY71 rho) = rho 50431 := by
    unfold seg52Out0AccX71 seg52Out0AccY71
    linear_combination r6042
  have ha1 : rho 50430 * seg52Out0AccX71 rho = rho 50432 := by
    unfold seg52Out0AccX71
    linear_combination r6043
  have ha2 : rho 50429 * seg52Out0AccY71 rho = rho 50433 := by
    unfold seg52Out0AccY71
    linear_combination r6044
  have ha3 : 3021 * rho 50432 * rho 50433 = rho 50434 := by
    linear_combination r6045
  have ha4 : rho 50435 * (1 + rho 50434) = rho 50432 + rho 50433 := by
    linear_combination r6046
  have ha5 : rho 50436 * (1 - rho 50434) = rho 50431 - rho 50432 - rho 50433 := by
    linear_combination r6047
  have haddx :
      rho 50435 * (1 + 3021 * (rho 50430 * seg52Out0AccX71 rho) * (rho 50429 * seg52Out0AccY71 rho)) =
        rho 50430 * seg52Out0AccX71 rho + rho 50429 * seg52Out0AccY71 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50436 * (1 - 3021 * (rho 50430 * seg52Out0AccX71 rho) * (rho 50429 * seg52Out0AccY71 rho)) =
        (-1) * (rho 50430 * seg52Out0AccX71 rho) - rho 50429 * seg52Out0AccY71 rho +
          (seg52Out0AccY71 rho - seg52Out0AccX71 rho * (-1)) * (rho 50429 + rho 50430) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50436 * (1 - rho 50434) = rho 50431 - rho 50432 - rho 50433 := ha5
      _ = (-1) * rho 50432 - rho 50433 + (seg52Out0AccY71 rho - seg52Out0AccX71 rho * (-1)) *
          (rho 50429 + rho 50430) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX72 rho = seg52Out0AccX71 rho - Bool.toZMod bit * (seg52Out0AccX71 rho - rho 50435) := by
    have hd : rho 50437 = Bool.toZMod bit * (rho 50435 - seg52Out0AccX71 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX71
      linear_combination -r6048
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY72 rho = seg52Out0AccY71 rho - Bool.toZMod bit * (seg52Out0AccY71 rho - rho 50436) := by
    have hd : rho 50438 = Bool.toZMod bit * (rho 50436 - seg52Out0AccY71 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY71
      linear_combination -r6049
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50429 * rho 50430 = rho 50439 := by linear_combination r6050
  have hd1 : rho 50429 * rho 50429 = rho 50440 := by linear_combination r6051
  have hd2 : rho 50430 * rho 50430 = rho 50441 := by linear_combination r6052
  have hd3 : rho 50442 * (rho 50430 * rho 50430 + rho 50429 * rho 50429 * (-1)) =
      2 * (rho 50429 * rho 50430) := by
    rw [hd0, hd1, hd2]
    linear_combination r6053
  have hd4 : rho 50443 * (2 - (rho 50430 * rho 50430 + rho 50429 * rho 50429 * (-1))) =
      rho 50430 * rho 50430 - rho 50429 * rho 50429 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6054
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ ⟨rho 50429, rho 50430⟩
    ⟨rho 50435, rho 50436⟩ ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ ⟨rho 50442, rho 50443⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6055 rho ∧ Seg52.relationRow6056 rho ∧ Seg52.relationRow6057 rho ∧ Seg52.relationRow6058 rho ∧ Seg52.relationRow6059 rho ∧ Seg52.relationRow6060 rho ∧ Seg52.relationRow6061 rho ∧ Seg52.relationRow6062 rho ∧ Seg52.relationRow6063 rho ∧ Seg52.relationRow6064 rho ∧ Seg52.relationRow6065 rho ∧ Seg52.relationRow6066 rho ∧ Seg52.relationRow6067 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064, r6065, r6066, r6067, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064, r6065, r6066, r6067⟩

theorem seg52Out0_rung72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49458 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50442, rho 50443⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ ⟨rho 50442, rho 50443⟩
        ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ ⟨rho 50455, rho 50456⟩ := by
  obtain ⟨r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064, r6065, r6066, r6067⟩ := seg52Out0_rows72 rho h
  unfold Seg52.relationRow6055 at r6055

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6055

  unfold Seg52.relationRow6056 at r6056

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6056

  unfold Seg52.relationRow6057 at r6057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6057

  unfold Seg52.relationRow6058 at r6058

  unfold Seg52.relationRow6059 at r6059

  unfold Seg52.relationRow6060 at r6060

  unfold Seg52.relationRow6061 at r6061

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6061

  unfold Seg52.relationRow6062 at r6062

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6062

  unfold Seg52.relationRow6063 at r6063

  unfold Seg52.relationRow6064 at r6064

  unfold Seg52.relationRow6065 at r6065

  unfold Seg52.relationRow6066 at r6066

  unfold Seg52.relationRow6067 at r6067

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX73 rho = seg52Out0AccX72 rho + rho 50450 := by
    unfold seg52Out0AccX73 seg52Out0AccX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 72]

    ring

  have hnexty : seg52Out0AccY73 rho = seg52Out0AccY72 rho + rho 50451 := by
    unfold seg52Out0AccY73 seg52Out0AccY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 72]

    ring

  have ha0 : (rho 50442 + rho 50443) * (seg52Out0AccX72 rho + seg52Out0AccY72 rho) = rho 50444 := by
    unfold seg52Out0AccX72 seg52Out0AccY72
    linear_combination r6055
  have ha1 : rho 50443 * seg52Out0AccX72 rho = rho 50445 := by
    unfold seg52Out0AccX72
    linear_combination r6056
  have ha2 : rho 50442 * seg52Out0AccY72 rho = rho 50446 := by
    unfold seg52Out0AccY72
    linear_combination r6057
  have ha3 : 3021 * rho 50445 * rho 50446 = rho 50447 := by
    linear_combination r6058
  have ha4 : rho 50448 * (1 + rho 50447) = rho 50445 + rho 50446 := by
    linear_combination r6059
  have ha5 : rho 50449 * (1 - rho 50447) = rho 50444 - rho 50445 - rho 50446 := by
    linear_combination r6060
  have haddx :
      rho 50448 * (1 + 3021 * (rho 50443 * seg52Out0AccX72 rho) * (rho 50442 * seg52Out0AccY72 rho)) =
        rho 50443 * seg52Out0AccX72 rho + rho 50442 * seg52Out0AccY72 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50449 * (1 - 3021 * (rho 50443 * seg52Out0AccX72 rho) * (rho 50442 * seg52Out0AccY72 rho)) =
        (-1) * (rho 50443 * seg52Out0AccX72 rho) - rho 50442 * seg52Out0AccY72 rho +
          (seg52Out0AccY72 rho - seg52Out0AccX72 rho * (-1)) * (rho 50442 + rho 50443) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50449 * (1 - rho 50447) = rho 50444 - rho 50445 - rho 50446 := ha5
      _ = (-1) * rho 50445 - rho 50446 + (seg52Out0AccY72 rho - seg52Out0AccX72 rho * (-1)) *
          (rho 50442 + rho 50443) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX73 rho = seg52Out0AccX72 rho - Bool.toZMod bit * (seg52Out0AccX72 rho - rho 50448) := by
    have hd : rho 50450 = Bool.toZMod bit * (rho 50448 - seg52Out0AccX72 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX72
      linear_combination -r6061
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY73 rho = seg52Out0AccY72 rho - Bool.toZMod bit * (seg52Out0AccY72 rho - rho 50449) := by
    have hd : rho 50451 = Bool.toZMod bit * (rho 50449 - seg52Out0AccY72 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY72
      linear_combination -r6062
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50442 * rho 50443 = rho 50452 := by linear_combination r6063
  have hd1 : rho 50442 * rho 50442 = rho 50453 := by linear_combination r6064
  have hd2 : rho 50443 * rho 50443 = rho 50454 := by linear_combination r6065
  have hd3 : rho 50455 * (rho 50443 * rho 50443 + rho 50442 * rho 50442 * (-1)) =
      2 * (rho 50442 * rho 50443) := by
    rw [hd0, hd1, hd2]
    linear_combination r6066
  have hd4 : rho 50456 * (2 - (rho 50443 * rho 50443 + rho 50442 * rho 50442 * (-1))) =
      rho 50443 * rho 50443 - rho 50442 * rho 50442 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6067
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ ⟨rho 50442, rho 50443⟩
    ⟨rho 50448, rho 50449⟩ ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ ⟨rho 50455, rho 50456⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6068 rho ∧ Seg52.relationRow6069 rho ∧ Seg52.relationRow6070 rho ∧ Seg52.relationRow6071 rho ∧ Seg52.relationRow6072 rho ∧ Seg52.relationRow6073 rho ∧ Seg52.relationRow6074 rho ∧ Seg52.relationRow6075 rho ∧ Seg52.relationRow6076 rho ∧ Seg52.relationRow6077 rho ∧ Seg52.relationRow6078 rho ∧ Seg52.relationRow6079 rho ∧ Seg52.relationRow6080 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077, r6078, r6079⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨r6080, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077, r6078, r6079, r6080⟩

theorem seg52Out0_rung73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49459 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50455, rho 50456⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ ⟨rho 50455, rho 50456⟩
        ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ ⟨rho 50468, rho 50469⟩ := by
  obtain ⟨r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077, r6078, r6079, r6080⟩ := seg52Out0_rows73 rho h
  unfold Seg52.relationRow6068 at r6068

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6068

  unfold Seg52.relationRow6069 at r6069

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6069

  unfold Seg52.relationRow6070 at r6070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6070

  unfold Seg52.relationRow6071 at r6071

  unfold Seg52.relationRow6072 at r6072

  unfold Seg52.relationRow6073 at r6073

  unfold Seg52.relationRow6074 at r6074

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6074

  unfold Seg52.relationRow6075 at r6075

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6075

  unfold Seg52.relationRow6076 at r6076

  unfold Seg52.relationRow6077 at r6077

  unfold Seg52.relationRow6078 at r6078

  unfold Seg52.relationRow6079 at r6079

  unfold Seg52.relationRow6080 at r6080

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX74 rho = seg52Out0AccX73 rho + rho 50463 := by
    unfold seg52Out0AccX74 seg52Out0AccX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 73]

    ring

  have hnexty : seg52Out0AccY74 rho = seg52Out0AccY73 rho + rho 50464 := by
    unfold seg52Out0AccY74 seg52Out0AccY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 73]

    ring

  have ha0 : (rho 50455 + rho 50456) * (seg52Out0AccX73 rho + seg52Out0AccY73 rho) = rho 50457 := by
    unfold seg52Out0AccX73 seg52Out0AccY73
    linear_combination r6068
  have ha1 : rho 50456 * seg52Out0AccX73 rho = rho 50458 := by
    unfold seg52Out0AccX73
    linear_combination r6069
  have ha2 : rho 50455 * seg52Out0AccY73 rho = rho 50459 := by
    unfold seg52Out0AccY73
    linear_combination r6070
  have ha3 : 3021 * rho 50458 * rho 50459 = rho 50460 := by
    linear_combination r6071
  have ha4 : rho 50461 * (1 + rho 50460) = rho 50458 + rho 50459 := by
    linear_combination r6072
  have ha5 : rho 50462 * (1 - rho 50460) = rho 50457 - rho 50458 - rho 50459 := by
    linear_combination r6073
  have haddx :
      rho 50461 * (1 + 3021 * (rho 50456 * seg52Out0AccX73 rho) * (rho 50455 * seg52Out0AccY73 rho)) =
        rho 50456 * seg52Out0AccX73 rho + rho 50455 * seg52Out0AccY73 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50462 * (1 - 3021 * (rho 50456 * seg52Out0AccX73 rho) * (rho 50455 * seg52Out0AccY73 rho)) =
        (-1) * (rho 50456 * seg52Out0AccX73 rho) - rho 50455 * seg52Out0AccY73 rho +
          (seg52Out0AccY73 rho - seg52Out0AccX73 rho * (-1)) * (rho 50455 + rho 50456) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50462 * (1 - rho 50460) = rho 50457 - rho 50458 - rho 50459 := ha5
      _ = (-1) * rho 50458 - rho 50459 + (seg52Out0AccY73 rho - seg52Out0AccX73 rho * (-1)) *
          (rho 50455 + rho 50456) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX74 rho = seg52Out0AccX73 rho - Bool.toZMod bit * (seg52Out0AccX73 rho - rho 50461) := by
    have hd : rho 50463 = Bool.toZMod bit * (rho 50461 - seg52Out0AccX73 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX73
      linear_combination -r6074
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY74 rho = seg52Out0AccY73 rho - Bool.toZMod bit * (seg52Out0AccY73 rho - rho 50462) := by
    have hd : rho 50464 = Bool.toZMod bit * (rho 50462 - seg52Out0AccY73 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY73
      linear_combination -r6075
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50455 * rho 50456 = rho 50465 := by linear_combination r6076
  have hd1 : rho 50455 * rho 50455 = rho 50466 := by linear_combination r6077
  have hd2 : rho 50456 * rho 50456 = rho 50467 := by linear_combination r6078
  have hd3 : rho 50468 * (rho 50456 * rho 50456 + rho 50455 * rho 50455 * (-1)) =
      2 * (rho 50455 * rho 50456) := by
    rw [hd0, hd1, hd2]
    linear_combination r6079
  have hd4 : rho 50469 * (2 - (rho 50456 * rho 50456 + rho 50455 * rho 50455 * (-1))) =
      rho 50456 * rho 50456 - rho 50455 * rho 50455 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6080
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ ⟨rho 50455, rho 50456⟩
    ⟨rho 50461, rho 50462⟩ ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ ⟨rho 50468, rho 50469⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6081 rho ∧ Seg52.relationRow6082 rho ∧ Seg52.relationRow6083 rho ∧ Seg52.relationRow6084 rho ∧ Seg52.relationRow6085 rho ∧ Seg52.relationRow6086 rho ∧ Seg52.relationRow6087 rho ∧ Seg52.relationRow6088 rho ∧ Seg52.relationRow6089 rho ∧ Seg52.relationRow6090 rho ∧ Seg52.relationRow6091 rho ∧ Seg52.relationRow6092 rho ∧ Seg52.relationRow6093 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, r6091, r6092, r6093, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, r6091, r6092, r6093⟩

theorem seg52Out0_rung74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49460 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50468, rho 50469⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ ⟨rho 50468, rho 50469⟩
        ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ ⟨rho 50481, rho 50482⟩ := by
  obtain ⟨r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, r6091, r6092, r6093⟩ := seg52Out0_rows74 rho h
  unfold Seg52.relationRow6081 at r6081

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6081

  unfold Seg52.relationRow6082 at r6082

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6082

  unfold Seg52.relationRow6083 at r6083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6083

  unfold Seg52.relationRow6084 at r6084

  unfold Seg52.relationRow6085 at r6085

  unfold Seg52.relationRow6086 at r6086

  unfold Seg52.relationRow6087 at r6087

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6087

  unfold Seg52.relationRow6088 at r6088

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6088

  unfold Seg52.relationRow6089 at r6089

  unfold Seg52.relationRow6090 at r6090

  unfold Seg52.relationRow6091 at r6091

  unfold Seg52.relationRow6092 at r6092

  unfold Seg52.relationRow6093 at r6093

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX75 rho = seg52Out0AccX74 rho + rho 50476 := by
    unfold seg52Out0AccX75 seg52Out0AccX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 74]

    ring

  have hnexty : seg52Out0AccY75 rho = seg52Out0AccY74 rho + rho 50477 := by
    unfold seg52Out0AccY75 seg52Out0AccY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 74]

    ring

  have ha0 : (rho 50468 + rho 50469) * (seg52Out0AccX74 rho + seg52Out0AccY74 rho) = rho 50470 := by
    unfold seg52Out0AccX74 seg52Out0AccY74
    linear_combination r6081
  have ha1 : rho 50469 * seg52Out0AccX74 rho = rho 50471 := by
    unfold seg52Out0AccX74
    linear_combination r6082
  have ha2 : rho 50468 * seg52Out0AccY74 rho = rho 50472 := by
    unfold seg52Out0AccY74
    linear_combination r6083
  have ha3 : 3021 * rho 50471 * rho 50472 = rho 50473 := by
    linear_combination r6084
  have ha4 : rho 50474 * (1 + rho 50473) = rho 50471 + rho 50472 := by
    linear_combination r6085
  have ha5 : rho 50475 * (1 - rho 50473) = rho 50470 - rho 50471 - rho 50472 := by
    linear_combination r6086
  have haddx :
      rho 50474 * (1 + 3021 * (rho 50469 * seg52Out0AccX74 rho) * (rho 50468 * seg52Out0AccY74 rho)) =
        rho 50469 * seg52Out0AccX74 rho + rho 50468 * seg52Out0AccY74 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50475 * (1 - 3021 * (rho 50469 * seg52Out0AccX74 rho) * (rho 50468 * seg52Out0AccY74 rho)) =
        (-1) * (rho 50469 * seg52Out0AccX74 rho) - rho 50468 * seg52Out0AccY74 rho +
          (seg52Out0AccY74 rho - seg52Out0AccX74 rho * (-1)) * (rho 50468 + rho 50469) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50475 * (1 - rho 50473) = rho 50470 - rho 50471 - rho 50472 := ha5
      _ = (-1) * rho 50471 - rho 50472 + (seg52Out0AccY74 rho - seg52Out0AccX74 rho * (-1)) *
          (rho 50468 + rho 50469) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX75 rho = seg52Out0AccX74 rho - Bool.toZMod bit * (seg52Out0AccX74 rho - rho 50474) := by
    have hd : rho 50476 = Bool.toZMod bit * (rho 50474 - seg52Out0AccX74 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX74
      linear_combination -r6087
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY75 rho = seg52Out0AccY74 rho - Bool.toZMod bit * (seg52Out0AccY74 rho - rho 50475) := by
    have hd : rho 50477 = Bool.toZMod bit * (rho 50475 - seg52Out0AccY74 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY74
      linear_combination -r6088
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50468 * rho 50469 = rho 50478 := by linear_combination r6089
  have hd1 : rho 50468 * rho 50468 = rho 50479 := by linear_combination r6090
  have hd2 : rho 50469 * rho 50469 = rho 50480 := by linear_combination r6091
  have hd3 : rho 50481 * (rho 50469 * rho 50469 + rho 50468 * rho 50468 * (-1)) =
      2 * (rho 50468 * rho 50469) := by
    rw [hd0, hd1, hd2]
    linear_combination r6092
  have hd4 : rho 50482 * (2 - (rho 50469 * rho 50469 + rho 50468 * rho 50468 * (-1))) =
      rho 50469 * rho 50469 - rho 50468 * rho 50468 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6093
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ ⟨rho 50468, rho 50469⟩
    ⟨rho 50474, rho 50475⟩ ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ ⟨rho 50481, rho 50482⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6094 rho ∧ Seg52.relationRow6095 rho ∧ Seg52.relationRow6096 rho ∧ Seg52.relationRow6097 rho ∧ Seg52.relationRow6098 rho ∧ Seg52.relationRow6099 rho ∧ Seg52.relationRow6100 rho ∧ Seg52.relationRow6101 rho ∧ Seg52.relationRow6102 rho ∧ Seg52.relationRow6103 rho ∧ Seg52.relationRow6104 rho ∧ Seg52.relationRow6105 rho ∧ Seg52.relationRow6106 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104, r6105, r6106, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104, r6105, r6106⟩

theorem seg52Out0_rung75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49461 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50481, rho 50482⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ ⟨rho 50481, rho 50482⟩
        ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ ⟨rho 50494, rho 50495⟩ := by
  obtain ⟨r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104, r6105, r6106⟩ := seg52Out0_rows75 rho h
  unfold Seg52.relationRow6094 at r6094

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6094

  unfold Seg52.relationRow6095 at r6095

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6095

  unfold Seg52.relationRow6096 at r6096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6096

  unfold Seg52.relationRow6097 at r6097

  unfold Seg52.relationRow6098 at r6098

  unfold Seg52.relationRow6099 at r6099

  unfold Seg52.relationRow6100 at r6100

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6100

  unfold Seg52.relationRow6101 at r6101

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6101

  unfold Seg52.relationRow6102 at r6102

  unfold Seg52.relationRow6103 at r6103

  unfold Seg52.relationRow6104 at r6104

  unfold Seg52.relationRow6105 at r6105

  unfold Seg52.relationRow6106 at r6106

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX76 rho = seg52Out0AccX75 rho + rho 50489 := by
    unfold seg52Out0AccX76 seg52Out0AccX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 75]

    ring

  have hnexty : seg52Out0AccY76 rho = seg52Out0AccY75 rho + rho 50490 := by
    unfold seg52Out0AccY76 seg52Out0AccY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 75]

    ring

  have ha0 : (rho 50481 + rho 50482) * (seg52Out0AccX75 rho + seg52Out0AccY75 rho) = rho 50483 := by
    unfold seg52Out0AccX75 seg52Out0AccY75
    linear_combination r6094
  have ha1 : rho 50482 * seg52Out0AccX75 rho = rho 50484 := by
    unfold seg52Out0AccX75
    linear_combination r6095
  have ha2 : rho 50481 * seg52Out0AccY75 rho = rho 50485 := by
    unfold seg52Out0AccY75
    linear_combination r6096
  have ha3 : 3021 * rho 50484 * rho 50485 = rho 50486 := by
    linear_combination r6097
  have ha4 : rho 50487 * (1 + rho 50486) = rho 50484 + rho 50485 := by
    linear_combination r6098
  have ha5 : rho 50488 * (1 - rho 50486) = rho 50483 - rho 50484 - rho 50485 := by
    linear_combination r6099
  have haddx :
      rho 50487 * (1 + 3021 * (rho 50482 * seg52Out0AccX75 rho) * (rho 50481 * seg52Out0AccY75 rho)) =
        rho 50482 * seg52Out0AccX75 rho + rho 50481 * seg52Out0AccY75 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50488 * (1 - 3021 * (rho 50482 * seg52Out0AccX75 rho) * (rho 50481 * seg52Out0AccY75 rho)) =
        (-1) * (rho 50482 * seg52Out0AccX75 rho) - rho 50481 * seg52Out0AccY75 rho +
          (seg52Out0AccY75 rho - seg52Out0AccX75 rho * (-1)) * (rho 50481 + rho 50482) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50488 * (1 - rho 50486) = rho 50483 - rho 50484 - rho 50485 := ha5
      _ = (-1) * rho 50484 - rho 50485 + (seg52Out0AccY75 rho - seg52Out0AccX75 rho * (-1)) *
          (rho 50481 + rho 50482) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX76 rho = seg52Out0AccX75 rho - Bool.toZMod bit * (seg52Out0AccX75 rho - rho 50487) := by
    have hd : rho 50489 = Bool.toZMod bit * (rho 50487 - seg52Out0AccX75 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX75
      linear_combination -r6100
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY76 rho = seg52Out0AccY75 rho - Bool.toZMod bit * (seg52Out0AccY75 rho - rho 50488) := by
    have hd : rho 50490 = Bool.toZMod bit * (rho 50488 - seg52Out0AccY75 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY75
      linear_combination -r6101
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50481 * rho 50482 = rho 50491 := by linear_combination r6102
  have hd1 : rho 50481 * rho 50481 = rho 50492 := by linear_combination r6103
  have hd2 : rho 50482 * rho 50482 = rho 50493 := by linear_combination r6104
  have hd3 : rho 50494 * (rho 50482 * rho 50482 + rho 50481 * rho 50481 * (-1)) =
      2 * (rho 50481 * rho 50482) := by
    rw [hd0, hd1, hd2]
    linear_combination r6105
  have hd4 : rho 50495 * (2 - (rho 50482 * rho 50482 + rho 50481 * rho 50481 * (-1))) =
      rho 50482 * rho 50482 - rho 50481 * rho 50481 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6106
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ ⟨rho 50481, rho 50482⟩
    ⟨rho 50487, rho 50488⟩ ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ ⟨rho 50494, rho 50495⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6107 rho ∧ Seg52.relationRow6108 rho ∧ Seg52.relationRow6109 rho ∧ Seg52.relationRow6110 rho ∧ Seg52.relationRow6111 rho ∧ Seg52.relationRow6112 rho ∧ Seg52.relationRow6113 rho ∧ Seg52.relationRow6114 rho ∧ Seg52.relationRow6115 rho ∧ Seg52.relationRow6116 rho ∧ Seg52.relationRow6117 rho ∧ Seg52.relationRow6118 rho ∧ Seg52.relationRow6119 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, r6119, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, r6119⟩

theorem seg52Out0_rung76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49462 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50494, rho 50495⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ ⟨rho 50494, rho 50495⟩
        ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ ⟨rho 50507, rho 50508⟩ := by
  obtain ⟨r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, r6119⟩ := seg52Out0_rows76 rho h
  unfold Seg52.relationRow6107 at r6107

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6107

  unfold Seg52.relationRow6108 at r6108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6108

  unfold Seg52.relationRow6109 at r6109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6109

  unfold Seg52.relationRow6110 at r6110

  unfold Seg52.relationRow6111 at r6111

  unfold Seg52.relationRow6112 at r6112

  unfold Seg52.relationRow6113 at r6113

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6113

  unfold Seg52.relationRow6114 at r6114

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6114

  unfold Seg52.relationRow6115 at r6115

  unfold Seg52.relationRow6116 at r6116

  unfold Seg52.relationRow6117 at r6117

  unfold Seg52.relationRow6118 at r6118

  unfold Seg52.relationRow6119 at r6119

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX77 rho = seg52Out0AccX76 rho + rho 50502 := by
    unfold seg52Out0AccX77 seg52Out0AccX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 76]

    ring

  have hnexty : seg52Out0AccY77 rho = seg52Out0AccY76 rho + rho 50503 := by
    unfold seg52Out0AccY77 seg52Out0AccY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 76]

    ring

  have ha0 : (rho 50494 + rho 50495) * (seg52Out0AccX76 rho + seg52Out0AccY76 rho) = rho 50496 := by
    unfold seg52Out0AccX76 seg52Out0AccY76
    linear_combination r6107
  have ha1 : rho 50495 * seg52Out0AccX76 rho = rho 50497 := by
    unfold seg52Out0AccX76
    linear_combination r6108
  have ha2 : rho 50494 * seg52Out0AccY76 rho = rho 50498 := by
    unfold seg52Out0AccY76
    linear_combination r6109
  have ha3 : 3021 * rho 50497 * rho 50498 = rho 50499 := by
    linear_combination r6110
  have ha4 : rho 50500 * (1 + rho 50499) = rho 50497 + rho 50498 := by
    linear_combination r6111
  have ha5 : rho 50501 * (1 - rho 50499) = rho 50496 - rho 50497 - rho 50498 := by
    linear_combination r6112
  have haddx :
      rho 50500 * (1 + 3021 * (rho 50495 * seg52Out0AccX76 rho) * (rho 50494 * seg52Out0AccY76 rho)) =
        rho 50495 * seg52Out0AccX76 rho + rho 50494 * seg52Out0AccY76 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50501 * (1 - 3021 * (rho 50495 * seg52Out0AccX76 rho) * (rho 50494 * seg52Out0AccY76 rho)) =
        (-1) * (rho 50495 * seg52Out0AccX76 rho) - rho 50494 * seg52Out0AccY76 rho +
          (seg52Out0AccY76 rho - seg52Out0AccX76 rho * (-1)) * (rho 50494 + rho 50495) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50501 * (1 - rho 50499) = rho 50496 - rho 50497 - rho 50498 := ha5
      _ = (-1) * rho 50497 - rho 50498 + (seg52Out0AccY76 rho - seg52Out0AccX76 rho * (-1)) *
          (rho 50494 + rho 50495) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX77 rho = seg52Out0AccX76 rho - Bool.toZMod bit * (seg52Out0AccX76 rho - rho 50500) := by
    have hd : rho 50502 = Bool.toZMod bit * (rho 50500 - seg52Out0AccX76 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX76
      linear_combination -r6113
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY77 rho = seg52Out0AccY76 rho - Bool.toZMod bit * (seg52Out0AccY76 rho - rho 50501) := by
    have hd : rho 50503 = Bool.toZMod bit * (rho 50501 - seg52Out0AccY76 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY76
      linear_combination -r6114
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50494 * rho 50495 = rho 50504 := by linear_combination r6115
  have hd1 : rho 50494 * rho 50494 = rho 50505 := by linear_combination r6116
  have hd2 : rho 50495 * rho 50495 = rho 50506 := by linear_combination r6117
  have hd3 : rho 50507 * (rho 50495 * rho 50495 + rho 50494 * rho 50494 * (-1)) =
      2 * (rho 50494 * rho 50495) := by
    rw [hd0, hd1, hd2]
    linear_combination r6118
  have hd4 : rho 50508 * (2 - (rho 50495 * rho 50495 + rho 50494 * rho 50494 * (-1))) =
      rho 50495 * rho 50495 - rho 50494 * rho 50494 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6119
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ ⟨rho 50494, rho 50495⟩
    ⟨rho 50500, rho 50501⟩ ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ ⟨rho 50507, rho 50508⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c6 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg52Out0_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg52Out0_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg52Out0_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg52Out0_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg52Out0_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg52Out0_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg52Out0_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg52Out0_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg52Out0_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg52Out0_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

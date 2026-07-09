import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows101 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6250 rho ∧ Seg48.relationRow6901 rho ∧ Seg48.relationRow6902 rho ∧ Seg48.relationRow6903 rho ∧ Seg48.relationRow6904 rho ∧ Seg48.relationRow6905 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, r6250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6901, r6902, r6903, r6904, r6905, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6250, r6901, r6902, r6903, r6904, r6905⟩

theorem seg48Blind_rung101 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39007 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 101)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      101 (Bool.toZMod bit) (seg48BlindAccState rho 101)
      (seg48BlindAccState rho 102) := by
  obtain ⟨r6250, r6901, r6902, r6903, r6904, r6905⟩ := seg48Blind_rows101 rho h
  unfold Seg48.relationRow6250 at r6250

  unfold Seg48.relationRow6901 at r6901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6901

  unfold Seg48.relationRow6902 at r6902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6902

  unfold Seg48.relationRow6903 at r6903

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6903

  unfold Seg48.relationRow6904 at r6904

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6904

  unfold Seg48.relationRow6905 at r6905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6905

  have hnextx : seg48BlindDeltaX101 rho =
      seg48BlindDeltaX100 rho + rho 39660 := by
    unfold seg48BlindDeltaX101 seg48BlindDeltaX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 100]

    ring

  have hnexty : seg48BlindDeltaY101 rho =
      seg48BlindDeltaY100 rho + rho 39661 := by
    unfold seg48BlindDeltaY101 seg48BlindDeltaY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 100]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 101
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX100 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY100 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX101 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY101 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung101_wide (rho 38906) (rho 39007) (seg48BlindDeltaX100 rho) (seg48BlindDeltaY100 rho) (rho 39657) (rho 39658) (rho 39659) (rho 39660) (rho 39661) hacc
  · unfold seg48BlindDeltaX100 seg48BlindDeltaY100
    linear_combination r6901
  · unfold seg48BlindDeltaX100 seg48BlindDeltaY100
    linear_combination r6902
  · unfold seg48BlindDeltaX100 seg48BlindDeltaY100
    linear_combination r6903
  · unfold seg48BlindDeltaX100
    linear_combination r6904
  · unfold seg48BlindDeltaY100
    linear_combination r6905
  · linear_combination r6250

theorem seg48Blind_rows102 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6251 rho ∧ Seg48.relationRow6906 rho ∧ Seg48.relationRow6907 rho ∧ Seg48.relationRow6908 rho ∧ Seg48.relationRow6909 rho ∧ Seg48.relationRow6910 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6906, r6907, r6908, r6909, r6910, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6251, r6906, r6907, r6908, r6909, r6910⟩

theorem seg48Blind_rung102 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39008 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 102)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      102 (Bool.toZMod bit) (seg48BlindAccState rho 102)
      (seg48BlindAccState rho 103) := by
  obtain ⟨r6251, r6906, r6907, r6908, r6909, r6910⟩ := seg48Blind_rows102 rho h
  unfold Seg48.relationRow6251 at r6251

  unfold Seg48.relationRow6906 at r6906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6906

  unfold Seg48.relationRow6907 at r6907

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6907

  unfold Seg48.relationRow6908 at r6908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6908

  unfold Seg48.relationRow6909 at r6909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6909

  unfold Seg48.relationRow6910 at r6910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6910

  have hnextx : seg48BlindDeltaX102 rho =
      seg48BlindDeltaX101 rho + rho 39665 := by
    unfold seg48BlindDeltaX102 seg48BlindDeltaX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 101]

    ring

  have hnexty : seg48BlindDeltaY102 rho =
      seg48BlindDeltaY101 rho + rho 39666 := by
    unfold seg48BlindDeltaY102 seg48BlindDeltaY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 101]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 102
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX101 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY101 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX102 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY102 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung102_wide (rho 38906) (rho 39008) (seg48BlindDeltaX101 rho) (seg48BlindDeltaY101 rho) (rho 39662) (rho 39663) (rho 39664) (rho 39665) (rho 39666) hacc
  · unfold seg48BlindDeltaX101 seg48BlindDeltaY101
    linear_combination r6906
  · unfold seg48BlindDeltaX101 seg48BlindDeltaY101
    linear_combination r6907
  · unfold seg48BlindDeltaX101 seg48BlindDeltaY101
    linear_combination r6908
  · unfold seg48BlindDeltaX101
    linear_combination r6909
  · unfold seg48BlindDeltaY101
    linear_combination r6910
  · linear_combination r6251

theorem seg48Blind_rows103 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6252 rho ∧ Seg48.relationRow6911 rho ∧ Seg48.relationRow6912 rho ∧ Seg48.relationRow6913 rho ∧ Seg48.relationRow6914 rho ∧ Seg48.relationRow6915 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r6252, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6911, r6912, r6913, r6914, r6915, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6252, r6911, r6912, r6913, r6914, r6915⟩

theorem seg48Blind_rung103 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39009 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 103)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      103 (Bool.toZMod bit) (seg48BlindAccState rho 103)
      (seg48BlindAccState rho 104) := by
  obtain ⟨r6252, r6911, r6912, r6913, r6914, r6915⟩ := seg48Blind_rows103 rho h
  unfold Seg48.relationRow6252 at r6252

  unfold Seg48.relationRow6911 at r6911

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6911

  unfold Seg48.relationRow6912 at r6912

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6912

  unfold Seg48.relationRow6913 at r6913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6913

  unfold Seg48.relationRow6914 at r6914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6914

  unfold Seg48.relationRow6915 at r6915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6915

  have hnextx : seg48BlindDeltaX103 rho =
      seg48BlindDeltaX102 rho + rho 39670 := by
    unfold seg48BlindDeltaX103 seg48BlindDeltaX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 102]

    ring

  have hnexty : seg48BlindDeltaY103 rho =
      seg48BlindDeltaY102 rho + rho 39671 := by
    unfold seg48BlindDeltaY103 seg48BlindDeltaY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 102]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 103
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX102 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY102 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX103 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY103 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung103_wide (rho 38906) (rho 39009) (seg48BlindDeltaX102 rho) (seg48BlindDeltaY102 rho) (rho 39667) (rho 39668) (rho 39669) (rho 39670) (rho 39671) hacc
  · unfold seg48BlindDeltaX102 seg48BlindDeltaY102
    linear_combination r6911
  · unfold seg48BlindDeltaX102 seg48BlindDeltaY102
    linear_combination r6912
  · unfold seg48BlindDeltaX102 seg48BlindDeltaY102
    linear_combination r6913
  · unfold seg48BlindDeltaX102
    linear_combination r6914
  · unfold seg48BlindDeltaY102
    linear_combination r6915
  · linear_combination r6252

theorem seg48Blind_rows104 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6253 rho ∧ Seg48.relationRow6916 rho ∧ Seg48.relationRow6917 rho ∧ Seg48.relationRow6918 rho ∧ Seg48.relationRow6919 rho ∧ Seg48.relationRow6920 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6253, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6916, r6917, r6918, r6919, r6920, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6253, r6916, r6917, r6918, r6919, r6920⟩

theorem seg48Blind_rung104 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39010 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 104)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      104 (Bool.toZMod bit) (seg48BlindAccState rho 104)
      (seg48BlindAccState rho 105) := by
  obtain ⟨r6253, r6916, r6917, r6918, r6919, r6920⟩ := seg48Blind_rows104 rho h
  unfold Seg48.relationRow6253 at r6253

  unfold Seg48.relationRow6916 at r6916

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6916

  unfold Seg48.relationRow6917 at r6917

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6917

  unfold Seg48.relationRow6918 at r6918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6918

  unfold Seg48.relationRow6919 at r6919

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6919

  unfold Seg48.relationRow6920 at r6920

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6920

  have hnextx : seg48BlindDeltaX104 rho =
      seg48BlindDeltaX103 rho + rho 39675 := by
    unfold seg48BlindDeltaX104 seg48BlindDeltaX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 103]

    ring

  have hnexty : seg48BlindDeltaY104 rho =
      seg48BlindDeltaY103 rho + rho 39676 := by
    unfold seg48BlindDeltaY104 seg48BlindDeltaY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 103]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 104
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX103 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY103 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX104 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY104 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung104_wide (rho 38906) (rho 39010) (seg48BlindDeltaX103 rho) (seg48BlindDeltaY103 rho) (rho 39672) (rho 39673) (rho 39674) (rho 39675) (rho 39676) hacc
  · unfold seg48BlindDeltaX103 seg48BlindDeltaY103
    linear_combination r6916
  · unfold seg48BlindDeltaX103 seg48BlindDeltaY103
    linear_combination r6917
  · unfold seg48BlindDeltaX103 seg48BlindDeltaY103
    linear_combination r6918
  · unfold seg48BlindDeltaX103
    linear_combination r6919
  · unfold seg48BlindDeltaY103
    linear_combination r6920
  · linear_combination r6253

theorem seg48Blind_rows105 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6254 rho ∧ Seg48.relationRow6921 rho ∧ Seg48.relationRow6922 rho ∧ Seg48.relationRow6923 rho ∧ Seg48.relationRow6924 rho ∧ Seg48.relationRow6925 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6254, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6921, r6922, r6923, r6924, r6925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6254, r6921, r6922, r6923, r6924, r6925⟩

theorem seg48Blind_rung105 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39011 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 105)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      105 (Bool.toZMod bit) (seg48BlindAccState rho 105)
      (seg48BlindAccState rho 106) := by
  obtain ⟨r6254, r6921, r6922, r6923, r6924, r6925⟩ := seg48Blind_rows105 rho h
  unfold Seg48.relationRow6254 at r6254

  unfold Seg48.relationRow6921 at r6921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6921

  unfold Seg48.relationRow6922 at r6922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6922

  unfold Seg48.relationRow6923 at r6923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6923

  unfold Seg48.relationRow6924 at r6924

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6924

  unfold Seg48.relationRow6925 at r6925

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6925

  have hnextx : seg48BlindDeltaX105 rho =
      seg48BlindDeltaX104 rho + rho 39680 := by
    unfold seg48BlindDeltaX105 seg48BlindDeltaX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 104]

    ring

  have hnexty : seg48BlindDeltaY105 rho =
      seg48BlindDeltaY104 rho + rho 39681 := by
    unfold seg48BlindDeltaY105 seg48BlindDeltaY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 104]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 105
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX104 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY104 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX105 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY105 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung105_wide (rho 38906) (rho 39011) (seg48BlindDeltaX104 rho) (seg48BlindDeltaY104 rho) (rho 39677) (rho 39678) (rho 39679) (rho 39680) (rho 39681) hacc
  · unfold seg48BlindDeltaX104 seg48BlindDeltaY104
    linear_combination r6921
  · unfold seg48BlindDeltaX104 seg48BlindDeltaY104
    linear_combination r6922
  · unfold seg48BlindDeltaX104 seg48BlindDeltaY104
    linear_combination r6923
  · unfold seg48BlindDeltaX104
    linear_combination r6924
  · unfold seg48BlindDeltaY104
    linear_combination r6925
  · linear_combination r6254

theorem seg48Blind_rows106 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6255 rho ∧ Seg48.relationRow6926 rho ∧ Seg48.relationRow6927 rho ∧ Seg48.relationRow6928 rho ∧ Seg48.relationRow6929 rho ∧ Seg48.relationRow6930 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6255, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6926, r6927, r6928, r6929, r6930, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6255, r6926, r6927, r6928, r6929, r6930⟩

theorem seg48Blind_rung106 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39012 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 106)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      106 (Bool.toZMod bit) (seg48BlindAccState rho 106)
      (seg48BlindAccState rho 107) := by
  obtain ⟨r6255, r6926, r6927, r6928, r6929, r6930⟩ := seg48Blind_rows106 rho h
  unfold Seg48.relationRow6255 at r6255

  unfold Seg48.relationRow6926 at r6926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6926

  unfold Seg48.relationRow6927 at r6927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6927

  unfold Seg48.relationRow6928 at r6928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6928

  unfold Seg48.relationRow6929 at r6929

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6929

  unfold Seg48.relationRow6930 at r6930

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6930

  have hnextx : seg48BlindDeltaX106 rho =
      seg48BlindDeltaX105 rho + rho 39685 := by
    unfold seg48BlindDeltaX106 seg48BlindDeltaX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 105]

    ring

  have hnexty : seg48BlindDeltaY106 rho =
      seg48BlindDeltaY105 rho + rho 39686 := by
    unfold seg48BlindDeltaY106 seg48BlindDeltaY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 105]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 106
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX105 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY105 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX106 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY106 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung106_wide (rho 38906) (rho 39012) (seg48BlindDeltaX105 rho) (seg48BlindDeltaY105 rho) (rho 39682) (rho 39683) (rho 39684) (rho 39685) (rho 39686) hacc
  · unfold seg48BlindDeltaX105 seg48BlindDeltaY105
    linear_combination r6926
  · unfold seg48BlindDeltaX105 seg48BlindDeltaY105
    linear_combination r6927
  · unfold seg48BlindDeltaX105 seg48BlindDeltaY105
    linear_combination r6928
  · unfold seg48BlindDeltaX105
    linear_combination r6929
  · unfold seg48BlindDeltaY105
    linear_combination r6930
  · linear_combination r6255

theorem seg48Blind_rows107 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6256 rho ∧ Seg48.relationRow6931 rho ∧ Seg48.relationRow6932 rho ∧ Seg48.relationRow6933 rho ∧ Seg48.relationRow6934 rho ∧ Seg48.relationRow6935 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6256, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6931, r6932, r6933, r6934, r6935, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6256, r6931, r6932, r6933, r6934, r6935⟩

theorem seg48Blind_rung107 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39013 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 107)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      107 (Bool.toZMod bit) (seg48BlindAccState rho 107)
      (seg48BlindAccState rho 108) := by
  obtain ⟨r6256, r6931, r6932, r6933, r6934, r6935⟩ := seg48Blind_rows107 rho h
  unfold Seg48.relationRow6256 at r6256

  unfold Seg48.relationRow6931 at r6931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6931

  unfold Seg48.relationRow6932 at r6932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6932

  unfold Seg48.relationRow6933 at r6933

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6933

  unfold Seg48.relationRow6934 at r6934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6934

  unfold Seg48.relationRow6935 at r6935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6935

  have hnextx : seg48BlindDeltaX107 rho =
      seg48BlindDeltaX106 rho + rho 39690 := by
    unfold seg48BlindDeltaX107 seg48BlindDeltaX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 106]

    ring

  have hnexty : seg48BlindDeltaY107 rho =
      seg48BlindDeltaY106 rho + rho 39691 := by
    unfold seg48BlindDeltaY107 seg48BlindDeltaY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 106]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 107
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX106 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY106 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX107 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY107 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung107_wide (rho 38906) (rho 39013) (seg48BlindDeltaX106 rho) (seg48BlindDeltaY106 rho) (rho 39687) (rho 39688) (rho 39689) (rho 39690) (rho 39691) hacc
  · unfold seg48BlindDeltaX106 seg48BlindDeltaY106
    linear_combination r6931
  · unfold seg48BlindDeltaX106 seg48BlindDeltaY106
    linear_combination r6932
  · unfold seg48BlindDeltaX106 seg48BlindDeltaY106
    linear_combination r6933
  · unfold seg48BlindDeltaX106
    linear_combination r6934
  · unfold seg48BlindDeltaY106
    linear_combination r6935
  · linear_combination r6256

theorem seg48Blind_rows108 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6257 rho ∧ Seg48.relationRow6936 rho ∧ Seg48.relationRow6937 rho ∧ Seg48.relationRow6938 rho ∧ Seg48.relationRow6939 rho ∧ Seg48.relationRow6940 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6257, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6936, r6937, r6938, r6939, r6940, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6257, r6936, r6937, r6938, r6939, r6940⟩

theorem seg48Blind_rung108 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39014 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 108)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      108 (Bool.toZMod bit) (seg48BlindAccState rho 108)
      (seg48BlindAccState rho 109) := by
  obtain ⟨r6257, r6936, r6937, r6938, r6939, r6940⟩ := seg48Blind_rows108 rho h
  unfold Seg48.relationRow6257 at r6257

  unfold Seg48.relationRow6936 at r6936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6936

  unfold Seg48.relationRow6937 at r6937

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6937

  unfold Seg48.relationRow6938 at r6938

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6938

  unfold Seg48.relationRow6939 at r6939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6939

  unfold Seg48.relationRow6940 at r6940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6940

  have hnextx : seg48BlindDeltaX108 rho =
      seg48BlindDeltaX107 rho + rho 39695 := by
    unfold seg48BlindDeltaX108 seg48BlindDeltaX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 107]

    ring

  have hnexty : seg48BlindDeltaY108 rho =
      seg48BlindDeltaY107 rho + rho 39696 := by
    unfold seg48BlindDeltaY108 seg48BlindDeltaY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 107]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 108
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX107 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY107 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX108 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY108 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung108_wide (rho 38906) (rho 39014) (seg48BlindDeltaX107 rho) (seg48BlindDeltaY107 rho) (rho 39692) (rho 39693) (rho 39694) (rho 39695) (rho 39696) hacc
  · unfold seg48BlindDeltaX107 seg48BlindDeltaY107
    linear_combination r6936
  · unfold seg48BlindDeltaX107 seg48BlindDeltaY107
    linear_combination r6937
  · unfold seg48BlindDeltaX107 seg48BlindDeltaY107
    linear_combination r6938
  · unfold seg48BlindDeltaX107
    linear_combination r6939
  · unfold seg48BlindDeltaY107
    linear_combination r6940
  · linear_combination r6257

theorem seg48Blind_rows109 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6258 rho ∧ Seg48.relationRow6941 rho ∧ Seg48.relationRow6942 rho ∧ Seg48.relationRow6943 rho ∧ Seg48.relationRow6944 rho ∧ Seg48.relationRow6945 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6941, r6942, r6943, r6944, r6945, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6258, r6941, r6942, r6943, r6944, r6945⟩

theorem seg48Blind_rung109 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39015 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 109)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      109 (Bool.toZMod bit) (seg48BlindAccState rho 109)
      (seg48BlindAccState rho 110) := by
  obtain ⟨r6258, r6941, r6942, r6943, r6944, r6945⟩ := seg48Blind_rows109 rho h
  unfold Seg48.relationRow6258 at r6258

  unfold Seg48.relationRow6941 at r6941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6941

  unfold Seg48.relationRow6942 at r6942

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6942

  unfold Seg48.relationRow6943 at r6943

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6943

  unfold Seg48.relationRow6944 at r6944

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6944

  unfold Seg48.relationRow6945 at r6945

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6945

  have hnextx : seg48BlindDeltaX109 rho =
      seg48BlindDeltaX108 rho + rho 39700 := by
    unfold seg48BlindDeltaX109 seg48BlindDeltaX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 108]

    ring

  have hnexty : seg48BlindDeltaY109 rho =
      seg48BlindDeltaY108 rho + rho 39701 := by
    unfold seg48BlindDeltaY109 seg48BlindDeltaY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 108]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 109
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX108 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY108 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX109 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY109 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung109_wide (rho 38906) (rho 39015) (seg48BlindDeltaX108 rho) (seg48BlindDeltaY108 rho) (rho 39697) (rho 39698) (rho 39699) (rho 39700) (rho 39701) hacc
  · unfold seg48BlindDeltaX108 seg48BlindDeltaY108
    linear_combination r6941
  · unfold seg48BlindDeltaX108 seg48BlindDeltaY108
    linear_combination r6942
  · unfold seg48BlindDeltaX108 seg48BlindDeltaY108
    linear_combination r6943
  · unfold seg48BlindDeltaX108
    linear_combination r6944
  · unfold seg48BlindDeltaY108
    linear_combination r6945
  · linear_combination r6258

theorem seg48Blind_rows110 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6259 rho ∧ Seg48.relationRow6946 rho ∧ Seg48.relationRow6947 rho ∧ Seg48.relationRow6948 rho ∧ Seg48.relationRow6949 rho ∧ Seg48.relationRow6950 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6259, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6946, r6947, r6948, r6949, r6950, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6259, r6946, r6947, r6948, r6949, r6950⟩

theorem seg48Blind_rung110 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39016 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 110)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      110 (Bool.toZMod bit) (seg48BlindAccState rho 110)
      (seg48BlindAccState rho 111) := by
  obtain ⟨r6259, r6946, r6947, r6948, r6949, r6950⟩ := seg48Blind_rows110 rho h
  unfold Seg48.relationRow6259 at r6259

  unfold Seg48.relationRow6946 at r6946

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6946

  unfold Seg48.relationRow6947 at r6947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6947

  unfold Seg48.relationRow6948 at r6948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6948

  unfold Seg48.relationRow6949 at r6949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6949

  unfold Seg48.relationRow6950 at r6950

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6950

  have hnextx : seg48BlindDeltaX110 rho =
      seg48BlindDeltaX109 rho + rho 39705 := by
    unfold seg48BlindDeltaX110 seg48BlindDeltaX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 109]

    ring

  have hnexty : seg48BlindDeltaY110 rho =
      seg48BlindDeltaY109 rho + rho 39706 := by
    unfold seg48BlindDeltaY110 seg48BlindDeltaY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 109]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 110
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX109 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY109 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX110 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY110 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung110_wide (rho 38906) (rho 39016) (seg48BlindDeltaX109 rho) (seg48BlindDeltaY109 rho) (rho 39702) (rho 39703) (rho 39704) (rho 39705) (rho 39706) hacc
  · unfold seg48BlindDeltaX109 seg48BlindDeltaY109
    linear_combination r6946
  · unfold seg48BlindDeltaX109 seg48BlindDeltaY109
    linear_combination r6947
  · unfold seg48BlindDeltaX109 seg48BlindDeltaY109
    linear_combination r6948
  · unfold seg48BlindDeltaX109
    linear_combination r6949
  · unfold seg48BlindDeltaY109
    linear_combination r6950
  · linear_combination r6259

theorem seg48Blind_hstep_c10 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 101 ≤ i → i < 111 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc
  · exact seg48Blind_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc
  · exact seg48Blind_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc
  · exact seg48Blind_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc
  · exact seg48Blind_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc
  · exact seg48Blind_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc
  · exact seg48Blind_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc
  · exact seg48Blind_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc
  · exact seg48Blind_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc
  · exact seg48Blind_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

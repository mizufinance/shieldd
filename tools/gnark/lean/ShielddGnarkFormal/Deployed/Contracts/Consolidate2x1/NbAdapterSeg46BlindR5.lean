import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg46Blind_rows51 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow439 rho ∧ Seg46.relationRow890 rho ∧ Seg46.relationRow891 rho ∧ Seg46.relationRow892 rho ∧ Seg46.relationRow893 rho ∧ Seg46.relationRow894 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r439, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, r890, r891, r892, r893, r894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r439, r890, r891, r892, r893, r894⟩

theorem seg46Blind_rung51 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31712 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 51)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      51 (Bool.toZMod bit) (seg46BlindAccState rho 51)
      (seg46BlindAccState rho 52) := by
  obtain ⟨r439, r890, r891, r892, r893, r894⟩ := seg46Blind_rows51 rho h
  unfold Seg46.relationRow439 at r439

  unfold Seg46.relationRow890 at r890

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r890

  unfold Seg46.relationRow891 at r891

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r891

  unfold Seg46.relationRow892 at r892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r892

  unfold Seg46.relationRow893 at r893

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r893

  unfold Seg46.relationRow894 at r894

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r894

  have hnextx : seg46BlindDeltaX51 rho =
      seg46BlindDeltaX50 rho + rho 32165 := by
    unfold seg46BlindDeltaX51 seg46BlindDeltaX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 50]

    ring

  have hnexty : seg46BlindDeltaY51 rho =
      seg46BlindDeltaY50 rho + rho 32166 := by
    unfold seg46BlindDeltaY51 seg46BlindDeltaY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 50]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 51
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX50 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY50 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX51 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY51 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung51_wide (rho 31661) (rho 31712) (seg46BlindDeltaX50 rho) (seg46BlindDeltaY50 rho) (rho 32162) (rho 32163) (rho 32164) (rho 32165) (rho 32166) hacc
  · unfold seg46BlindDeltaX50 seg46BlindDeltaY50
    linear_combination r890
  · unfold seg46BlindDeltaX50 seg46BlindDeltaY50
    linear_combination r891
  · unfold seg46BlindDeltaX50 seg46BlindDeltaY50
    linear_combination r892
  · unfold seg46BlindDeltaX50
    linear_combination r893
  · unfold seg46BlindDeltaY50
    linear_combination r894
  · linear_combination r439

theorem seg46Blind_rows52 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow440 rho ∧ Seg46.relationRow895 rho ∧ Seg46.relationRow896 rho ∧ Seg46.relationRow897 rho ∧ Seg46.relationRow898 rho ∧ Seg46.relationRow899 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r440, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r895, r896, r897, r898, r899, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r440, r895, r896, r897, r898, r899⟩

theorem seg46Blind_rung52 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31713 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 52)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      52 (Bool.toZMod bit) (seg46BlindAccState rho 52)
      (seg46BlindAccState rho 53) := by
  obtain ⟨r440, r895, r896, r897, r898, r899⟩ := seg46Blind_rows52 rho h
  unfold Seg46.relationRow440 at r440

  unfold Seg46.relationRow895 at r895

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r895

  unfold Seg46.relationRow896 at r896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r896

  unfold Seg46.relationRow897 at r897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r897

  unfold Seg46.relationRow898 at r898

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r898

  unfold Seg46.relationRow899 at r899

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r899

  have hnextx : seg46BlindDeltaX52 rho =
      seg46BlindDeltaX51 rho + rho 32170 := by
    unfold seg46BlindDeltaX52 seg46BlindDeltaX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 51]

    ring

  have hnexty : seg46BlindDeltaY52 rho =
      seg46BlindDeltaY51 rho + rho 32171 := by
    unfold seg46BlindDeltaY52 seg46BlindDeltaY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 51]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 52
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX51 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY51 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX52 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY52 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung52_wide (rho 31661) (rho 31713) (seg46BlindDeltaX51 rho) (seg46BlindDeltaY51 rho) (rho 32167) (rho 32168) (rho 32169) (rho 32170) (rho 32171) hacc
  · unfold seg46BlindDeltaX51 seg46BlindDeltaY51
    linear_combination r895
  · unfold seg46BlindDeltaX51 seg46BlindDeltaY51
    linear_combination r896
  · unfold seg46BlindDeltaX51 seg46BlindDeltaY51
    linear_combination r897
  · unfold seg46BlindDeltaX51
    linear_combination r898
  · unfold seg46BlindDeltaY51
    linear_combination r899
  · linear_combination r440

theorem seg46Blind_rows53 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow441 rho ∧ Seg46.relationRow900 rho ∧ Seg46.relationRow901 rho ∧ Seg46.relationRow902 rho ∧ Seg46.relationRow903 rho ∧ Seg46.relationRow904 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r441, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r900, r901, r902, r903, r904, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r441, r900, r901, r902, r903, r904⟩

theorem seg46Blind_rung53 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31714 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 53)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      53 (Bool.toZMod bit) (seg46BlindAccState rho 53)
      (seg46BlindAccState rho 54) := by
  obtain ⟨r441, r900, r901, r902, r903, r904⟩ := seg46Blind_rows53 rho h
  unfold Seg46.relationRow441 at r441

  unfold Seg46.relationRow900 at r900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r900

  unfold Seg46.relationRow901 at r901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r901

  unfold Seg46.relationRow902 at r902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r902

  unfold Seg46.relationRow903 at r903

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r903

  unfold Seg46.relationRow904 at r904

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r904

  have hnextx : seg46BlindDeltaX53 rho =
      seg46BlindDeltaX52 rho + rho 32175 := by
    unfold seg46BlindDeltaX53 seg46BlindDeltaX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 52]

    ring

  have hnexty : seg46BlindDeltaY53 rho =
      seg46BlindDeltaY52 rho + rho 32176 := by
    unfold seg46BlindDeltaY53 seg46BlindDeltaY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 52]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 53
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX52 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY52 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX53 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY53 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung53_wide (rho 31661) (rho 31714) (seg46BlindDeltaX52 rho) (seg46BlindDeltaY52 rho) (rho 32172) (rho 32173) (rho 32174) (rho 32175) (rho 32176) hacc
  · unfold seg46BlindDeltaX52 seg46BlindDeltaY52
    linear_combination r900
  · unfold seg46BlindDeltaX52 seg46BlindDeltaY52
    linear_combination r901
  · unfold seg46BlindDeltaX52 seg46BlindDeltaY52
    linear_combination r902
  · unfold seg46BlindDeltaX52
    linear_combination r903
  · unfold seg46BlindDeltaY52
    linear_combination r904
  · linear_combination r441

theorem seg46Blind_rows54 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow442 rho ∧ Seg46.relationRow905 rho ∧ Seg46.relationRow906 rho ∧ Seg46.relationRow907 rho ∧ Seg46.relationRow908 rho ∧ Seg46.relationRow909 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r442, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r905, r906, r907, r908, r909, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r442, r905, r906, r907, r908, r909⟩

theorem seg46Blind_rung54 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31715 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 54)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      54 (Bool.toZMod bit) (seg46BlindAccState rho 54)
      (seg46BlindAccState rho 55) := by
  obtain ⟨r442, r905, r906, r907, r908, r909⟩ := seg46Blind_rows54 rho h
  unfold Seg46.relationRow442 at r442

  unfold Seg46.relationRow905 at r905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r905

  unfold Seg46.relationRow906 at r906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r906

  unfold Seg46.relationRow907 at r907

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r907

  unfold Seg46.relationRow908 at r908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r908

  unfold Seg46.relationRow909 at r909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r909

  have hnextx : seg46BlindDeltaX54 rho =
      seg46BlindDeltaX53 rho + rho 32180 := by
    unfold seg46BlindDeltaX54 seg46BlindDeltaX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 53]

    ring

  have hnexty : seg46BlindDeltaY54 rho =
      seg46BlindDeltaY53 rho + rho 32181 := by
    unfold seg46BlindDeltaY54 seg46BlindDeltaY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 53]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 54
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX53 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY53 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX54 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY54 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung54_wide (rho 31661) (rho 31715) (seg46BlindDeltaX53 rho) (seg46BlindDeltaY53 rho) (rho 32177) (rho 32178) (rho 32179) (rho 32180) (rho 32181) hacc
  · unfold seg46BlindDeltaX53 seg46BlindDeltaY53
    linear_combination r905
  · unfold seg46BlindDeltaX53 seg46BlindDeltaY53
    linear_combination r906
  · unfold seg46BlindDeltaX53 seg46BlindDeltaY53
    linear_combination r907
  · unfold seg46BlindDeltaX53
    linear_combination r908
  · unfold seg46BlindDeltaY53
    linear_combination r909
  · linear_combination r442

theorem seg46Blind_rows55 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow443 rho ∧ Seg46.relationRow910 rho ∧ Seg46.relationRow911 rho ∧ Seg46.relationRow912 rho ∧ Seg46.relationRow913 rho ∧ Seg46.relationRow914 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r443, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r910, r911, r912, r913, r914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r443, r910, r911, r912, r913, r914⟩

theorem seg46Blind_rung55 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31716 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 55)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      55 (Bool.toZMod bit) (seg46BlindAccState rho 55)
      (seg46BlindAccState rho 56) := by
  obtain ⟨r443, r910, r911, r912, r913, r914⟩ := seg46Blind_rows55 rho h
  unfold Seg46.relationRow443 at r443

  unfold Seg46.relationRow910 at r910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r910

  unfold Seg46.relationRow911 at r911

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r911

  unfold Seg46.relationRow912 at r912

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r912

  unfold Seg46.relationRow913 at r913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r913

  unfold Seg46.relationRow914 at r914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r914

  have hnextx : seg46BlindDeltaX55 rho =
      seg46BlindDeltaX54 rho + rho 32185 := by
    unfold seg46BlindDeltaX55 seg46BlindDeltaX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 54]

    ring

  have hnexty : seg46BlindDeltaY55 rho =
      seg46BlindDeltaY54 rho + rho 32186 := by
    unfold seg46BlindDeltaY55 seg46BlindDeltaY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 54]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 55
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX54 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY54 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX55 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY55 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung55_wide (rho 31661) (rho 31716) (seg46BlindDeltaX54 rho) (seg46BlindDeltaY54 rho) (rho 32182) (rho 32183) (rho 32184) (rho 32185) (rho 32186) hacc
  · unfold seg46BlindDeltaX54 seg46BlindDeltaY54
    linear_combination r910
  · unfold seg46BlindDeltaX54 seg46BlindDeltaY54
    linear_combination r911
  · unfold seg46BlindDeltaX54 seg46BlindDeltaY54
    linear_combination r912
  · unfold seg46BlindDeltaX54
    linear_combination r913
  · unfold seg46BlindDeltaY54
    linear_combination r914
  · linear_combination r443

theorem seg46Blind_rows56 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow444 rho ∧ Seg46.relationRow915 rho ∧ Seg46.relationRow916 rho ∧ Seg46.relationRow917 rho ∧ Seg46.relationRow918 rho ∧ Seg46.relationRow919 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r444, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r915, r916, r917, r918, r919, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r444, r915, r916, r917, r918, r919⟩

theorem seg46Blind_rung56 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31717 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 56)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      56 (Bool.toZMod bit) (seg46BlindAccState rho 56)
      (seg46BlindAccState rho 57) := by
  obtain ⟨r444, r915, r916, r917, r918, r919⟩ := seg46Blind_rows56 rho h
  unfold Seg46.relationRow444 at r444

  unfold Seg46.relationRow915 at r915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r915

  unfold Seg46.relationRow916 at r916

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r916

  unfold Seg46.relationRow917 at r917

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r917

  unfold Seg46.relationRow918 at r918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r918

  unfold Seg46.relationRow919 at r919

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r919

  have hnextx : seg46BlindDeltaX56 rho =
      seg46BlindDeltaX55 rho + rho 32190 := by
    unfold seg46BlindDeltaX56 seg46BlindDeltaX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 55]

    ring

  have hnexty : seg46BlindDeltaY56 rho =
      seg46BlindDeltaY55 rho + rho 32191 := by
    unfold seg46BlindDeltaY56 seg46BlindDeltaY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 55]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 56
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX55 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY55 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX56 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY56 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung56_wide (rho 31661) (rho 31717) (seg46BlindDeltaX55 rho) (seg46BlindDeltaY55 rho) (rho 32187) (rho 32188) (rho 32189) (rho 32190) (rho 32191) hacc
  · unfold seg46BlindDeltaX55 seg46BlindDeltaY55
    linear_combination r915
  · unfold seg46BlindDeltaX55 seg46BlindDeltaY55
    linear_combination r916
  · unfold seg46BlindDeltaX55 seg46BlindDeltaY55
    linear_combination r917
  · unfold seg46BlindDeltaX55
    linear_combination r918
  · unfold seg46BlindDeltaY55
    linear_combination r919
  · linear_combination r444

theorem seg46Blind_rows57 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow445 rho ∧ Seg46.relationRow920 rho ∧ Seg46.relationRow921 rho ∧ Seg46.relationRow922 rho ∧ Seg46.relationRow923 rho ∧ Seg46.relationRow924 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r920, r921, r922, r923, r924, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r445, r920, r921, r922, r923, r924⟩

theorem seg46Blind_rung57 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31718 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 57)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      57 (Bool.toZMod bit) (seg46BlindAccState rho 57)
      (seg46BlindAccState rho 58) := by
  obtain ⟨r445, r920, r921, r922, r923, r924⟩ := seg46Blind_rows57 rho h
  unfold Seg46.relationRow445 at r445

  unfold Seg46.relationRow920 at r920

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r920

  unfold Seg46.relationRow921 at r921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r921

  unfold Seg46.relationRow922 at r922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r922

  unfold Seg46.relationRow923 at r923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r923

  unfold Seg46.relationRow924 at r924

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r924

  have hnextx : seg46BlindDeltaX57 rho =
      seg46BlindDeltaX56 rho + rho 32195 := by
    unfold seg46BlindDeltaX57 seg46BlindDeltaX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 56]

    ring

  have hnexty : seg46BlindDeltaY57 rho =
      seg46BlindDeltaY56 rho + rho 32196 := by
    unfold seg46BlindDeltaY57 seg46BlindDeltaY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 56]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 57
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX56 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY56 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX57 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY57 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung57_wide (rho 31661) (rho 31718) (seg46BlindDeltaX56 rho) (seg46BlindDeltaY56 rho) (rho 32192) (rho 32193) (rho 32194) (rho 32195) (rho 32196) hacc
  · unfold seg46BlindDeltaX56 seg46BlindDeltaY56
    linear_combination r920
  · unfold seg46BlindDeltaX56 seg46BlindDeltaY56
    linear_combination r921
  · unfold seg46BlindDeltaX56 seg46BlindDeltaY56
    linear_combination r922
  · unfold seg46BlindDeltaX56
    linear_combination r923
  · unfold seg46BlindDeltaY56
    linear_combination r924
  · linear_combination r445

theorem seg46Blind_rows58 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow446 rho ∧ Seg46.relationRow925 rho ∧ Seg46.relationRow926 rho ∧ Seg46.relationRow927 rho ∧ Seg46.relationRow928 rho ∧ Seg46.relationRow929 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r925, r926, r927, r928, r929, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r446, r925, r926, r927, r928, r929⟩

theorem seg46Blind_rung58 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31719 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 58)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      58 (Bool.toZMod bit) (seg46BlindAccState rho 58)
      (seg46BlindAccState rho 59) := by
  obtain ⟨r446, r925, r926, r927, r928, r929⟩ := seg46Blind_rows58 rho h
  unfold Seg46.relationRow446 at r446

  unfold Seg46.relationRow925 at r925

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r925

  unfold Seg46.relationRow926 at r926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r926

  unfold Seg46.relationRow927 at r927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r927

  unfold Seg46.relationRow928 at r928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r928

  unfold Seg46.relationRow929 at r929

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r929

  have hnextx : seg46BlindDeltaX58 rho =
      seg46BlindDeltaX57 rho + rho 32200 := by
    unfold seg46BlindDeltaX58 seg46BlindDeltaX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 57]

    ring

  have hnexty : seg46BlindDeltaY58 rho =
      seg46BlindDeltaY57 rho + rho 32201 := by
    unfold seg46BlindDeltaY58 seg46BlindDeltaY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 57]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 58
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX57 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY57 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX58 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY58 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung58_wide (rho 31661) (rho 31719) (seg46BlindDeltaX57 rho) (seg46BlindDeltaY57 rho) (rho 32197) (rho 32198) (rho 32199) (rho 32200) (rho 32201) hacc
  · unfold seg46BlindDeltaX57 seg46BlindDeltaY57
    linear_combination r925
  · unfold seg46BlindDeltaX57 seg46BlindDeltaY57
    linear_combination r926
  · unfold seg46BlindDeltaX57 seg46BlindDeltaY57
    linear_combination r927
  · unfold seg46BlindDeltaX57
    linear_combination r928
  · unfold seg46BlindDeltaY57
    linear_combination r929
  · linear_combination r446

theorem seg46Blind_rows59 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow447 rho ∧ Seg46.relationRow930 rho ∧ Seg46.relationRow931 rho ∧ Seg46.relationRow932 rho ∧ Seg46.relationRow933 rho ∧ Seg46.relationRow934 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r447, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r930, r931, r932, r933, r934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r447, r930, r931, r932, r933, r934⟩

theorem seg46Blind_rung59 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31720 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 59)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      59 (Bool.toZMod bit) (seg46BlindAccState rho 59)
      (seg46BlindAccState rho 60) := by
  obtain ⟨r447, r930, r931, r932, r933, r934⟩ := seg46Blind_rows59 rho h
  unfold Seg46.relationRow447 at r447

  unfold Seg46.relationRow930 at r930

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r930

  unfold Seg46.relationRow931 at r931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r931

  unfold Seg46.relationRow932 at r932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r932

  unfold Seg46.relationRow933 at r933

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r933

  unfold Seg46.relationRow934 at r934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r934

  have hnextx : seg46BlindDeltaX59 rho =
      seg46BlindDeltaX58 rho + rho 32205 := by
    unfold seg46BlindDeltaX59 seg46BlindDeltaX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 58]

    ring

  have hnexty : seg46BlindDeltaY59 rho =
      seg46BlindDeltaY58 rho + rho 32206 := by
    unfold seg46BlindDeltaY59 seg46BlindDeltaY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 58]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 59
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX58 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY58 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX59 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY59 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung59_wide (rho 31661) (rho 31720) (seg46BlindDeltaX58 rho) (seg46BlindDeltaY58 rho) (rho 32202) (rho 32203) (rho 32204) (rho 32205) (rho 32206) hacc
  · unfold seg46BlindDeltaX58 seg46BlindDeltaY58
    linear_combination r930
  · unfold seg46BlindDeltaX58 seg46BlindDeltaY58
    linear_combination r931
  · unfold seg46BlindDeltaX58 seg46BlindDeltaY58
    linear_combination r932
  · unfold seg46BlindDeltaX58
    linear_combination r933
  · unfold seg46BlindDeltaY58
    linear_combination r934
  · linear_combination r447

theorem seg46Blind_rows60 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow448 rho ∧ Seg46.relationRow935 rho ∧ Seg46.relationRow936 rho ∧ Seg46.relationRow937 rho ∧ Seg46.relationRow938 rho ∧ Seg46.relationRow939 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r448, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r935, r936, r937, r938, r939, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r448, r935, r936, r937, r938, r939⟩

theorem seg46Blind_rung60 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31721 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 60)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      60 (Bool.toZMod bit) (seg46BlindAccState rho 60)
      (seg46BlindAccState rho 61) := by
  obtain ⟨r448, r935, r936, r937, r938, r939⟩ := seg46Blind_rows60 rho h
  unfold Seg46.relationRow448 at r448

  unfold Seg46.relationRow935 at r935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r935

  unfold Seg46.relationRow936 at r936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r936

  unfold Seg46.relationRow937 at r937

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r937

  unfold Seg46.relationRow938 at r938

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r938

  unfold Seg46.relationRow939 at r939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r939

  have hnextx : seg46BlindDeltaX60 rho =
      seg46BlindDeltaX59 rho + rho 32210 := by
    unfold seg46BlindDeltaX60 seg46BlindDeltaX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 59]

    ring

  have hnexty : seg46BlindDeltaY60 rho =
      seg46BlindDeltaY59 rho + rho 32211 := by
    unfold seg46BlindDeltaY60 seg46BlindDeltaY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 59]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 60
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX59 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY59 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX60 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY60 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung60_wide (rho 31661) (rho 31721) (seg46BlindDeltaX59 rho) (seg46BlindDeltaY59 rho) (rho 32207) (rho 32208) (rho 32209) (rho 32210) (rho 32211) hacc
  · unfold seg46BlindDeltaX59 seg46BlindDeltaY59
    linear_combination r935
  · unfold seg46BlindDeltaX59 seg46BlindDeltaY59
    linear_combination r936
  · unfold seg46BlindDeltaX59 seg46BlindDeltaY59
    linear_combination r937
  · unfold seg46BlindDeltaX59
    linear_combination r938
  · unfold seg46BlindDeltaY59
    linear_combination r939
  · linear_combination r448

theorem seg46Blind_hstep_c5 (rho : Nat -> Seg46.F)
    (h : Seg46.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (31661 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 51 ≤ i → i < 61 →
      EdwardsBridge.onCurve (seg46BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg46BlindAccState rho i)
        (seg46BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg46Blind_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc
  · exact seg46Blind_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc
  · exact seg46Blind_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc
  · exact seg46Blind_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc
  · exact seg46Blind_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc
  · exact seg46Blind_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc
  · exact seg46Blind_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc
  · exact seg46Blind_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc
  · exact seg46Blind_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc
  · exact seg46Blind_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

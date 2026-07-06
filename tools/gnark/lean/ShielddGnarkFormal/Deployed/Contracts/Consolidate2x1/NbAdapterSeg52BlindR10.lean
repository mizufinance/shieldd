import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6250 rho ∧ Seg52.relationRow6901 rho ∧ Seg52.relationRow6902 rho ∧ Seg52.relationRow6903 rho ∧ Seg52.relationRow6904 rho ∧ Seg52.relationRow6905 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, r6250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6901, r6902, r6903, r6904, r6905, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6250, r6901, r6902, r6903, r6904, r6905⟩

theorem seg52Blind_rung101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50639 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 101)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      101 (Bool.toZMod bit) (seg52BlindAccState rho 101)
      (seg52BlindAccState rho 102) := by
  obtain ⟨r6250, r6901, r6902, r6903, r6904, r6905⟩ := seg52Blind_rows101 rho h
  unfold Seg52.relationRow6250 at r6250

  unfold Seg52.relationRow6901 at r6901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6901

  unfold Seg52.relationRow6902 at r6902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6902

  unfold Seg52.relationRow6903 at r6903

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6903

  unfold Seg52.relationRow6904 at r6904

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6904

  unfold Seg52.relationRow6905 at r6905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6905

  have hnextx : seg52BlindDeltaX101 rho =
      seg52BlindDeltaX100 rho + rho 51292 := by
    unfold seg52BlindDeltaX101 seg52BlindDeltaX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 100]

    ring

  have hnexty : seg52BlindDeltaY101 rho =
      seg52BlindDeltaY100 rho + rho 51293 := by
    unfold seg52BlindDeltaY101 seg52BlindDeltaY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 100]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 101
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX100 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY100 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX101 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY101 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung101_wide (rho 50538) (rho 50639) (seg52BlindDeltaX100 rho) (seg52BlindDeltaY100 rho) (rho 51289) (rho 51290) (rho 51291) (rho 51292) (rho 51293) hacc
  · unfold seg52BlindDeltaX100 seg52BlindDeltaY100
    linear_combination r6901
  · unfold seg52BlindDeltaX100 seg52BlindDeltaY100
    linear_combination r6902
  · unfold seg52BlindDeltaX100 seg52BlindDeltaY100
    linear_combination r6903
  · unfold seg52BlindDeltaX100
    linear_combination r6904
  · unfold seg52BlindDeltaY100
    linear_combination r6905
  · linear_combination r6250

theorem seg52Blind_rows102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6251 rho ∧ Seg52.relationRow6906 rho ∧ Seg52.relationRow6907 rho ∧ Seg52.relationRow6908 rho ∧ Seg52.relationRow6909 rho ∧ Seg52.relationRow6910 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6906, r6907, r6908, r6909, r6910, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6251, r6906, r6907, r6908, r6909, r6910⟩

theorem seg52Blind_rung102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50640 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 102)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      102 (Bool.toZMod bit) (seg52BlindAccState rho 102)
      (seg52BlindAccState rho 103) := by
  obtain ⟨r6251, r6906, r6907, r6908, r6909, r6910⟩ := seg52Blind_rows102 rho h
  unfold Seg52.relationRow6251 at r6251

  unfold Seg52.relationRow6906 at r6906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6906

  unfold Seg52.relationRow6907 at r6907

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6907

  unfold Seg52.relationRow6908 at r6908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6908

  unfold Seg52.relationRow6909 at r6909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6909

  unfold Seg52.relationRow6910 at r6910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6910

  have hnextx : seg52BlindDeltaX102 rho =
      seg52BlindDeltaX101 rho + rho 51297 := by
    unfold seg52BlindDeltaX102 seg52BlindDeltaX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 101]

    ring

  have hnexty : seg52BlindDeltaY102 rho =
      seg52BlindDeltaY101 rho + rho 51298 := by
    unfold seg52BlindDeltaY102 seg52BlindDeltaY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 101]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 102
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX101 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY101 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX102 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY102 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung102_wide (rho 50538) (rho 50640) (seg52BlindDeltaX101 rho) (seg52BlindDeltaY101 rho) (rho 51294) (rho 51295) (rho 51296) (rho 51297) (rho 51298) hacc
  · unfold seg52BlindDeltaX101 seg52BlindDeltaY101
    linear_combination r6906
  · unfold seg52BlindDeltaX101 seg52BlindDeltaY101
    linear_combination r6907
  · unfold seg52BlindDeltaX101 seg52BlindDeltaY101
    linear_combination r6908
  · unfold seg52BlindDeltaX101
    linear_combination r6909
  · unfold seg52BlindDeltaY101
    linear_combination r6910
  · linear_combination r6251

theorem seg52Blind_rows103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6252 rho ∧ Seg52.relationRow6911 rho ∧ Seg52.relationRow6912 rho ∧ Seg52.relationRow6913 rho ∧ Seg52.relationRow6914 rho ∧ Seg52.relationRow6915 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r6252, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6911, r6912, r6913, r6914, r6915, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6252, r6911, r6912, r6913, r6914, r6915⟩

theorem seg52Blind_rung103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50641 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 103)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      103 (Bool.toZMod bit) (seg52BlindAccState rho 103)
      (seg52BlindAccState rho 104) := by
  obtain ⟨r6252, r6911, r6912, r6913, r6914, r6915⟩ := seg52Blind_rows103 rho h
  unfold Seg52.relationRow6252 at r6252

  unfold Seg52.relationRow6911 at r6911

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6911

  unfold Seg52.relationRow6912 at r6912

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6912

  unfold Seg52.relationRow6913 at r6913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6913

  unfold Seg52.relationRow6914 at r6914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6914

  unfold Seg52.relationRow6915 at r6915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6915

  have hnextx : seg52BlindDeltaX103 rho =
      seg52BlindDeltaX102 rho + rho 51302 := by
    unfold seg52BlindDeltaX103 seg52BlindDeltaX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 102]

    ring

  have hnexty : seg52BlindDeltaY103 rho =
      seg52BlindDeltaY102 rho + rho 51303 := by
    unfold seg52BlindDeltaY103 seg52BlindDeltaY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 102]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 103
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX102 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY102 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX103 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY103 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung103_wide (rho 50538) (rho 50641) (seg52BlindDeltaX102 rho) (seg52BlindDeltaY102 rho) (rho 51299) (rho 51300) (rho 51301) (rho 51302) (rho 51303) hacc
  · unfold seg52BlindDeltaX102 seg52BlindDeltaY102
    linear_combination r6911
  · unfold seg52BlindDeltaX102 seg52BlindDeltaY102
    linear_combination r6912
  · unfold seg52BlindDeltaX102 seg52BlindDeltaY102
    linear_combination r6913
  · unfold seg52BlindDeltaX102
    linear_combination r6914
  · unfold seg52BlindDeltaY102
    linear_combination r6915
  · linear_combination r6252

theorem seg52Blind_rows104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6253 rho ∧ Seg52.relationRow6916 rho ∧ Seg52.relationRow6917 rho ∧ Seg52.relationRow6918 rho ∧ Seg52.relationRow6919 rho ∧ Seg52.relationRow6920 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6253, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6916, r6917, r6918, r6919, r6920, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6253, r6916, r6917, r6918, r6919, r6920⟩

theorem seg52Blind_rung104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50642 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 104)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      104 (Bool.toZMod bit) (seg52BlindAccState rho 104)
      (seg52BlindAccState rho 105) := by
  obtain ⟨r6253, r6916, r6917, r6918, r6919, r6920⟩ := seg52Blind_rows104 rho h
  unfold Seg52.relationRow6253 at r6253

  unfold Seg52.relationRow6916 at r6916

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6916

  unfold Seg52.relationRow6917 at r6917

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6917

  unfold Seg52.relationRow6918 at r6918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6918

  unfold Seg52.relationRow6919 at r6919

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6919

  unfold Seg52.relationRow6920 at r6920

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6920

  have hnextx : seg52BlindDeltaX104 rho =
      seg52BlindDeltaX103 rho + rho 51307 := by
    unfold seg52BlindDeltaX104 seg52BlindDeltaX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 103]

    ring

  have hnexty : seg52BlindDeltaY104 rho =
      seg52BlindDeltaY103 rho + rho 51308 := by
    unfold seg52BlindDeltaY104 seg52BlindDeltaY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 103]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 104
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX103 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY103 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX104 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY104 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung104_wide (rho 50538) (rho 50642) (seg52BlindDeltaX103 rho) (seg52BlindDeltaY103 rho) (rho 51304) (rho 51305) (rho 51306) (rho 51307) (rho 51308) hacc
  · unfold seg52BlindDeltaX103 seg52BlindDeltaY103
    linear_combination r6916
  · unfold seg52BlindDeltaX103 seg52BlindDeltaY103
    linear_combination r6917
  · unfold seg52BlindDeltaX103 seg52BlindDeltaY103
    linear_combination r6918
  · unfold seg52BlindDeltaX103
    linear_combination r6919
  · unfold seg52BlindDeltaY103
    linear_combination r6920
  · linear_combination r6253

theorem seg52Blind_rows105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6254 rho ∧ Seg52.relationRow6921 rho ∧ Seg52.relationRow6922 rho ∧ Seg52.relationRow6923 rho ∧ Seg52.relationRow6924 rho ∧ Seg52.relationRow6925 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6254, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6921, r6922, r6923, r6924, r6925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6254, r6921, r6922, r6923, r6924, r6925⟩

theorem seg52Blind_rung105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50643 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 105)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      105 (Bool.toZMod bit) (seg52BlindAccState rho 105)
      (seg52BlindAccState rho 106) := by
  obtain ⟨r6254, r6921, r6922, r6923, r6924, r6925⟩ := seg52Blind_rows105 rho h
  unfold Seg52.relationRow6254 at r6254

  unfold Seg52.relationRow6921 at r6921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6921

  unfold Seg52.relationRow6922 at r6922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6922

  unfold Seg52.relationRow6923 at r6923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6923

  unfold Seg52.relationRow6924 at r6924

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6924

  unfold Seg52.relationRow6925 at r6925

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6925

  have hnextx : seg52BlindDeltaX105 rho =
      seg52BlindDeltaX104 rho + rho 51312 := by
    unfold seg52BlindDeltaX105 seg52BlindDeltaX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 104]

    ring

  have hnexty : seg52BlindDeltaY105 rho =
      seg52BlindDeltaY104 rho + rho 51313 := by
    unfold seg52BlindDeltaY105 seg52BlindDeltaY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 104]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 105
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX104 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY104 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX105 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY105 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung105_wide (rho 50538) (rho 50643) (seg52BlindDeltaX104 rho) (seg52BlindDeltaY104 rho) (rho 51309) (rho 51310) (rho 51311) (rho 51312) (rho 51313) hacc
  · unfold seg52BlindDeltaX104 seg52BlindDeltaY104
    linear_combination r6921
  · unfold seg52BlindDeltaX104 seg52BlindDeltaY104
    linear_combination r6922
  · unfold seg52BlindDeltaX104 seg52BlindDeltaY104
    linear_combination r6923
  · unfold seg52BlindDeltaX104
    linear_combination r6924
  · unfold seg52BlindDeltaY104
    linear_combination r6925
  · linear_combination r6254

theorem seg52Blind_rows106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6255 rho ∧ Seg52.relationRow6926 rho ∧ Seg52.relationRow6927 rho ∧ Seg52.relationRow6928 rho ∧ Seg52.relationRow6929 rho ∧ Seg52.relationRow6930 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6255, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6926, r6927, r6928, r6929, r6930, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6255, r6926, r6927, r6928, r6929, r6930⟩

theorem seg52Blind_rung106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50644 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 106)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      106 (Bool.toZMod bit) (seg52BlindAccState rho 106)
      (seg52BlindAccState rho 107) := by
  obtain ⟨r6255, r6926, r6927, r6928, r6929, r6930⟩ := seg52Blind_rows106 rho h
  unfold Seg52.relationRow6255 at r6255

  unfold Seg52.relationRow6926 at r6926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6926

  unfold Seg52.relationRow6927 at r6927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6927

  unfold Seg52.relationRow6928 at r6928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6928

  unfold Seg52.relationRow6929 at r6929

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6929

  unfold Seg52.relationRow6930 at r6930

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6930

  have hnextx : seg52BlindDeltaX106 rho =
      seg52BlindDeltaX105 rho + rho 51317 := by
    unfold seg52BlindDeltaX106 seg52BlindDeltaX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 105]

    ring

  have hnexty : seg52BlindDeltaY106 rho =
      seg52BlindDeltaY105 rho + rho 51318 := by
    unfold seg52BlindDeltaY106 seg52BlindDeltaY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 105]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 106
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX105 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY105 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX106 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY106 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung106_wide (rho 50538) (rho 50644) (seg52BlindDeltaX105 rho) (seg52BlindDeltaY105 rho) (rho 51314) (rho 51315) (rho 51316) (rho 51317) (rho 51318) hacc
  · unfold seg52BlindDeltaX105 seg52BlindDeltaY105
    linear_combination r6926
  · unfold seg52BlindDeltaX105 seg52BlindDeltaY105
    linear_combination r6927
  · unfold seg52BlindDeltaX105 seg52BlindDeltaY105
    linear_combination r6928
  · unfold seg52BlindDeltaX105
    linear_combination r6929
  · unfold seg52BlindDeltaY105
    linear_combination r6930
  · linear_combination r6255

theorem seg52Blind_rows107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6256 rho ∧ Seg52.relationRow6931 rho ∧ Seg52.relationRow6932 rho ∧ Seg52.relationRow6933 rho ∧ Seg52.relationRow6934 rho ∧ Seg52.relationRow6935 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6256, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6931, r6932, r6933, r6934, r6935, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6256, r6931, r6932, r6933, r6934, r6935⟩

theorem seg52Blind_rung107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50645 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 107)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      107 (Bool.toZMod bit) (seg52BlindAccState rho 107)
      (seg52BlindAccState rho 108) := by
  obtain ⟨r6256, r6931, r6932, r6933, r6934, r6935⟩ := seg52Blind_rows107 rho h
  unfold Seg52.relationRow6256 at r6256

  unfold Seg52.relationRow6931 at r6931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6931

  unfold Seg52.relationRow6932 at r6932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6932

  unfold Seg52.relationRow6933 at r6933

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6933

  unfold Seg52.relationRow6934 at r6934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6934

  unfold Seg52.relationRow6935 at r6935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6935

  have hnextx : seg52BlindDeltaX107 rho =
      seg52BlindDeltaX106 rho + rho 51322 := by
    unfold seg52BlindDeltaX107 seg52BlindDeltaX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 106]

    ring

  have hnexty : seg52BlindDeltaY107 rho =
      seg52BlindDeltaY106 rho + rho 51323 := by
    unfold seg52BlindDeltaY107 seg52BlindDeltaY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 106]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 107
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX106 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY106 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX107 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY107 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung107_wide (rho 50538) (rho 50645) (seg52BlindDeltaX106 rho) (seg52BlindDeltaY106 rho) (rho 51319) (rho 51320) (rho 51321) (rho 51322) (rho 51323) hacc
  · unfold seg52BlindDeltaX106 seg52BlindDeltaY106
    linear_combination r6931
  · unfold seg52BlindDeltaX106 seg52BlindDeltaY106
    linear_combination r6932
  · unfold seg52BlindDeltaX106 seg52BlindDeltaY106
    linear_combination r6933
  · unfold seg52BlindDeltaX106
    linear_combination r6934
  · unfold seg52BlindDeltaY106
    linear_combination r6935
  · linear_combination r6256

theorem seg52Blind_rows108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6257 rho ∧ Seg52.relationRow6936 rho ∧ Seg52.relationRow6937 rho ∧ Seg52.relationRow6938 rho ∧ Seg52.relationRow6939 rho ∧ Seg52.relationRow6940 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6257, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6936, r6937, r6938, r6939, r6940, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6257, r6936, r6937, r6938, r6939, r6940⟩

theorem seg52Blind_rung108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50646 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 108)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      108 (Bool.toZMod bit) (seg52BlindAccState rho 108)
      (seg52BlindAccState rho 109) := by
  obtain ⟨r6257, r6936, r6937, r6938, r6939, r6940⟩ := seg52Blind_rows108 rho h
  unfold Seg52.relationRow6257 at r6257

  unfold Seg52.relationRow6936 at r6936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6936

  unfold Seg52.relationRow6937 at r6937

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6937

  unfold Seg52.relationRow6938 at r6938

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6938

  unfold Seg52.relationRow6939 at r6939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6939

  unfold Seg52.relationRow6940 at r6940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6940

  have hnextx : seg52BlindDeltaX108 rho =
      seg52BlindDeltaX107 rho + rho 51327 := by
    unfold seg52BlindDeltaX108 seg52BlindDeltaX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 107]

    ring

  have hnexty : seg52BlindDeltaY108 rho =
      seg52BlindDeltaY107 rho + rho 51328 := by
    unfold seg52BlindDeltaY108 seg52BlindDeltaY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 107]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 108
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX107 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY107 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX108 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY108 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung108_wide (rho 50538) (rho 50646) (seg52BlindDeltaX107 rho) (seg52BlindDeltaY107 rho) (rho 51324) (rho 51325) (rho 51326) (rho 51327) (rho 51328) hacc
  · unfold seg52BlindDeltaX107 seg52BlindDeltaY107
    linear_combination r6936
  · unfold seg52BlindDeltaX107 seg52BlindDeltaY107
    linear_combination r6937
  · unfold seg52BlindDeltaX107 seg52BlindDeltaY107
    linear_combination r6938
  · unfold seg52BlindDeltaX107
    linear_combination r6939
  · unfold seg52BlindDeltaY107
    linear_combination r6940
  · linear_combination r6257

theorem seg52Blind_rows109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6258 rho ∧ Seg52.relationRow6941 rho ∧ Seg52.relationRow6942 rho ∧ Seg52.relationRow6943 rho ∧ Seg52.relationRow6944 rho ∧ Seg52.relationRow6945 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6941, r6942, r6943, r6944, r6945, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6258, r6941, r6942, r6943, r6944, r6945⟩

theorem seg52Blind_rung109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50647 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 109)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      109 (Bool.toZMod bit) (seg52BlindAccState rho 109)
      (seg52BlindAccState rho 110) := by
  obtain ⟨r6258, r6941, r6942, r6943, r6944, r6945⟩ := seg52Blind_rows109 rho h
  unfold Seg52.relationRow6258 at r6258

  unfold Seg52.relationRow6941 at r6941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6941

  unfold Seg52.relationRow6942 at r6942

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6942

  unfold Seg52.relationRow6943 at r6943

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6943

  unfold Seg52.relationRow6944 at r6944

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6944

  unfold Seg52.relationRow6945 at r6945

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6945

  have hnextx : seg52BlindDeltaX109 rho =
      seg52BlindDeltaX108 rho + rho 51332 := by
    unfold seg52BlindDeltaX109 seg52BlindDeltaX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 108]

    ring

  have hnexty : seg52BlindDeltaY109 rho =
      seg52BlindDeltaY108 rho + rho 51333 := by
    unfold seg52BlindDeltaY109 seg52BlindDeltaY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 108]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 109
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX108 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY108 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX109 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY109 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung109_wide (rho 50538) (rho 50647) (seg52BlindDeltaX108 rho) (seg52BlindDeltaY108 rho) (rho 51329) (rho 51330) (rho 51331) (rho 51332) (rho 51333) hacc
  · unfold seg52BlindDeltaX108 seg52BlindDeltaY108
    linear_combination r6941
  · unfold seg52BlindDeltaX108 seg52BlindDeltaY108
    linear_combination r6942
  · unfold seg52BlindDeltaX108 seg52BlindDeltaY108
    linear_combination r6943
  · unfold seg52BlindDeltaX108
    linear_combination r6944
  · unfold seg52BlindDeltaY108
    linear_combination r6945
  · linear_combination r6258

theorem seg52Blind_rows110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6259 rho ∧ Seg52.relationRow6946 rho ∧ Seg52.relationRow6947 rho ∧ Seg52.relationRow6948 rho ∧ Seg52.relationRow6949 rho ∧ Seg52.relationRow6950 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6259, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6946, r6947, r6948, r6949, r6950, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6259, r6946, r6947, r6948, r6949, r6950⟩

theorem seg52Blind_rung110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50648 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 110)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      110 (Bool.toZMod bit) (seg52BlindAccState rho 110)
      (seg52BlindAccState rho 111) := by
  obtain ⟨r6259, r6946, r6947, r6948, r6949, r6950⟩ := seg52Blind_rows110 rho h
  unfold Seg52.relationRow6259 at r6259

  unfold Seg52.relationRow6946 at r6946

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6946

  unfold Seg52.relationRow6947 at r6947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6947

  unfold Seg52.relationRow6948 at r6948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6948

  unfold Seg52.relationRow6949 at r6949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6949

  unfold Seg52.relationRow6950 at r6950

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6950

  have hnextx : seg52BlindDeltaX110 rho =
      seg52BlindDeltaX109 rho + rho 51337 := by
    unfold seg52BlindDeltaX110 seg52BlindDeltaX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 109]

    ring

  have hnexty : seg52BlindDeltaY110 rho =
      seg52BlindDeltaY109 rho + rho 51338 := by
    unfold seg52BlindDeltaY110 seg52BlindDeltaY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 109]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 110
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX109 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY109 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX110 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY110 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung110_wide (rho 50538) (rho 50648) (seg52BlindDeltaX109 rho) (seg52BlindDeltaY109 rho) (rho 51334) (rho 51335) (rho 51336) (rho 51337) (rho 51338) hacc
  · unfold seg52BlindDeltaX109 seg52BlindDeltaY109
    linear_combination r6946
  · unfold seg52BlindDeltaX109 seg52BlindDeltaY109
    linear_combination r6947
  · unfold seg52BlindDeltaX109 seg52BlindDeltaY109
    linear_combination r6948
  · unfold seg52BlindDeltaX109
    linear_combination r6949
  · unfold seg52BlindDeltaY109
    linear_combination r6950
  · linear_combination r6259

theorem seg52Blind_hstep_c10 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 101 ≤ i → i < 111 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc
  · exact seg52Blind_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc
  · exact seg52Blind_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc
  · exact seg52Blind_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc
  · exact seg52Blind_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc
  · exact seg52Blind_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc
  · exact seg52Blind_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc
  · exact seg52Blind_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc
  · exact seg52Blind_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc
  · exact seg52Blind_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

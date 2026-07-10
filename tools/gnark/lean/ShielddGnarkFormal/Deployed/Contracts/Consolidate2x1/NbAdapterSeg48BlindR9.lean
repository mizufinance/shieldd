import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows91 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6240 rho ∧ Seg48.relationRow6851 rho ∧ Seg48.relationRow6852 rho ∧ Seg48.relationRow6853 rho ∧ Seg48.relationRow6854 rho ∧ Seg48.relationRow6855 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨r6240, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6851, r6852, r6853, r6854, r6855, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6240, r6851, r6852, r6853, r6854, r6855⟩

theorem seg48Blind_rung91 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38997 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 91)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      91 (Bool.toZMod bit) (seg48BlindAccState rho 91)
      (seg48BlindAccState rho 92) := by
  obtain ⟨r6240, r6851, r6852, r6853, r6854, r6855⟩ := seg48Blind_rows91 rho h
  unfold Seg48.relationRow6240 at r6240

  unfold Seg48.relationRow6851 at r6851

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6851

  unfold Seg48.relationRow6852 at r6852

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6852

  unfold Seg48.relationRow6853 at r6853

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6853

  unfold Seg48.relationRow6854 at r6854

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6854

  unfold Seg48.relationRow6855 at r6855

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6855

  have hnextx : seg48BlindDeltaX91 rho =
      seg48BlindDeltaX90 rho + rho 39610 := by
    unfold seg48BlindDeltaX91 seg48BlindDeltaX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 90]

    ring

  have hnexty : seg48BlindDeltaY91 rho =
      seg48BlindDeltaY90 rho + rho 39611 := by
    unfold seg48BlindDeltaY91 seg48BlindDeltaY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 90]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 91
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX90 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY90 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX91 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY91 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung91_wide (rho 38906) (rho 38997) (seg48BlindDeltaX90 rho) (seg48BlindDeltaY90 rho) (rho 39607) (rho 39608) (rho 39609) (rho 39610) (rho 39611) hacc
  · unfold seg48BlindDeltaX90 seg48BlindDeltaY90
    linear_combination r6851
  · unfold seg48BlindDeltaX90 seg48BlindDeltaY90
    linear_combination r6852
  · unfold seg48BlindDeltaX90 seg48BlindDeltaY90
    linear_combination r6853
  · unfold seg48BlindDeltaX90
    linear_combination r6854
  · unfold seg48BlindDeltaY90
    linear_combination r6855
  · linear_combination r6240

theorem seg48Blind_rows92 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6241 rho ∧ Seg48.relationRow6856 rho ∧ Seg48.relationRow6857 rho ∧ Seg48.relationRow6858 rho ∧ Seg48.relationRow6859 rho ∧ Seg48.relationRow6860 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, r6241, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6856, r6857, r6858, r6859, r6860, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6241, r6856, r6857, r6858, r6859, r6860⟩

theorem seg48Blind_rung92 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38998 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 92)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      92 (Bool.toZMod bit) (seg48BlindAccState rho 92)
      (seg48BlindAccState rho 93) := by
  obtain ⟨r6241, r6856, r6857, r6858, r6859, r6860⟩ := seg48Blind_rows92 rho h
  unfold Seg48.relationRow6241 at r6241

  unfold Seg48.relationRow6856 at r6856

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6856

  unfold Seg48.relationRow6857 at r6857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6857

  unfold Seg48.relationRow6858 at r6858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6858

  unfold Seg48.relationRow6859 at r6859

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6859

  unfold Seg48.relationRow6860 at r6860

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6860

  have hnextx : seg48BlindDeltaX92 rho =
      seg48BlindDeltaX91 rho + rho 39615 := by
    unfold seg48BlindDeltaX92 seg48BlindDeltaX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 91]

    ring

  have hnexty : seg48BlindDeltaY92 rho =
      seg48BlindDeltaY91 rho + rho 39616 := by
    unfold seg48BlindDeltaY92 seg48BlindDeltaY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 91]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 92
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX91 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY91 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX92 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY92 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung92_wide (rho 38906) (rho 38998) (seg48BlindDeltaX91 rho) (seg48BlindDeltaY91 rho) (rho 39612) (rho 39613) (rho 39614) (rho 39615) (rho 39616) hacc
  · unfold seg48BlindDeltaX91 seg48BlindDeltaY91
    linear_combination r6856
  · unfold seg48BlindDeltaX91 seg48BlindDeltaY91
    linear_combination r6857
  · unfold seg48BlindDeltaX91 seg48BlindDeltaY91
    linear_combination r6858
  · unfold seg48BlindDeltaX91
    linear_combination r6859
  · unfold seg48BlindDeltaY91
    linear_combination r6860
  · linear_combination r6241

theorem seg48Blind_rows93 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6242 rho ∧ Seg48.relationRow6861 rho ∧ Seg48.relationRow6862 rho ∧ Seg48.relationRow6863 rho ∧ Seg48.relationRow6864 rho ∧ Seg48.relationRow6865 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, r6242, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6861, r6862, r6863, r6864, r6865, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6242, r6861, r6862, r6863, r6864, r6865⟩

theorem seg48Blind_rung93 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38999 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 93)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      93 (Bool.toZMod bit) (seg48BlindAccState rho 93)
      (seg48BlindAccState rho 94) := by
  obtain ⟨r6242, r6861, r6862, r6863, r6864, r6865⟩ := seg48Blind_rows93 rho h
  unfold Seg48.relationRow6242 at r6242

  unfold Seg48.relationRow6861 at r6861

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6861

  unfold Seg48.relationRow6862 at r6862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6862

  unfold Seg48.relationRow6863 at r6863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6863

  unfold Seg48.relationRow6864 at r6864

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6864

  unfold Seg48.relationRow6865 at r6865

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6865

  have hnextx : seg48BlindDeltaX93 rho =
      seg48BlindDeltaX92 rho + rho 39620 := by
    unfold seg48BlindDeltaX93 seg48BlindDeltaX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 92]

    ring

  have hnexty : seg48BlindDeltaY93 rho =
      seg48BlindDeltaY92 rho + rho 39621 := by
    unfold seg48BlindDeltaY93 seg48BlindDeltaY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 92]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 93
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX92 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY92 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX93 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY93 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung93_wide (rho 38906) (rho 38999) (seg48BlindDeltaX92 rho) (seg48BlindDeltaY92 rho) (rho 39617) (rho 39618) (rho 39619) (rho 39620) (rho 39621) hacc
  · unfold seg48BlindDeltaX92 seg48BlindDeltaY92
    linear_combination r6861
  · unfold seg48BlindDeltaX92 seg48BlindDeltaY92
    linear_combination r6862
  · unfold seg48BlindDeltaX92 seg48BlindDeltaY92
    linear_combination r6863
  · unfold seg48BlindDeltaX92
    linear_combination r6864
  · unfold seg48BlindDeltaY92
    linear_combination r6865
  · linear_combination r6242

theorem seg48Blind_rows94 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6243 rho ∧ Seg48.relationRow6866 rho ∧ Seg48.relationRow6867 rho ∧ Seg48.relationRow6868 rho ∧ Seg48.relationRow6869 rho ∧ Seg48.relationRow6870 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, r6243, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6866, r6867, r6868, r6869, r6870, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6243, r6866, r6867, r6868, r6869, r6870⟩

theorem seg48Blind_rung94 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39000 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 94)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      94 (Bool.toZMod bit) (seg48BlindAccState rho 94)
      (seg48BlindAccState rho 95) := by
  obtain ⟨r6243, r6866, r6867, r6868, r6869, r6870⟩ := seg48Blind_rows94 rho h
  unfold Seg48.relationRow6243 at r6243

  unfold Seg48.relationRow6866 at r6866

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6866

  unfold Seg48.relationRow6867 at r6867

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6867

  unfold Seg48.relationRow6868 at r6868

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6868

  unfold Seg48.relationRow6869 at r6869

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6869

  unfold Seg48.relationRow6870 at r6870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6870

  have hnextx : seg48BlindDeltaX94 rho =
      seg48BlindDeltaX93 rho + rho 39625 := by
    unfold seg48BlindDeltaX94 seg48BlindDeltaX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 93]

    ring

  have hnexty : seg48BlindDeltaY94 rho =
      seg48BlindDeltaY93 rho + rho 39626 := by
    unfold seg48BlindDeltaY94 seg48BlindDeltaY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 93]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 94
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX93 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY93 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX94 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY94 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung94_wide (rho 38906) (rho 39000) (seg48BlindDeltaX93 rho) (seg48BlindDeltaY93 rho) (rho 39622) (rho 39623) (rho 39624) (rho 39625) (rho 39626) hacc
  · unfold seg48BlindDeltaX93 seg48BlindDeltaY93
    linear_combination r6866
  · unfold seg48BlindDeltaX93 seg48BlindDeltaY93
    linear_combination r6867
  · unfold seg48BlindDeltaX93 seg48BlindDeltaY93
    linear_combination r6868
  · unfold seg48BlindDeltaX93
    linear_combination r6869
  · unfold seg48BlindDeltaY93
    linear_combination r6870
  · linear_combination r6243

theorem seg48Blind_rows95 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6244 rho ∧ Seg48.relationRow6871 rho ∧ Seg48.relationRow6872 rho ∧ Seg48.relationRow6873 rho ∧ Seg48.relationRow6874 rho ∧ Seg48.relationRow6875 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, r6244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6871, r6872, r6873, r6874, r6875, _, _, _, _⟩

  exact ⟨r6244, r6871, r6872, r6873, r6874, r6875⟩

theorem seg48Blind_rung95 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39001 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 95)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      95 (Bool.toZMod bit) (seg48BlindAccState rho 95)
      (seg48BlindAccState rho 96) := by
  obtain ⟨r6244, r6871, r6872, r6873, r6874, r6875⟩ := seg48Blind_rows95 rho h
  unfold Seg48.relationRow6244 at r6244

  unfold Seg48.relationRow6871 at r6871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6871

  unfold Seg48.relationRow6872 at r6872

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6872

  unfold Seg48.relationRow6873 at r6873

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6873

  unfold Seg48.relationRow6874 at r6874

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6874

  unfold Seg48.relationRow6875 at r6875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6875

  have hnextx : seg48BlindDeltaX95 rho =
      seg48BlindDeltaX94 rho + rho 39630 := by
    unfold seg48BlindDeltaX95 seg48BlindDeltaX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 94]

    ring

  have hnexty : seg48BlindDeltaY95 rho =
      seg48BlindDeltaY94 rho + rho 39631 := by
    unfold seg48BlindDeltaY95 seg48BlindDeltaY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 94]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 95
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX94 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY94 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX95 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY95 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung95_wide (rho 38906) (rho 39001) (seg48BlindDeltaX94 rho) (seg48BlindDeltaY94 rho) (rho 39627) (rho 39628) (rho 39629) (rho 39630) (rho 39631) hacc
  · unfold seg48BlindDeltaX94 seg48BlindDeltaY94
    linear_combination r6871
  · unfold seg48BlindDeltaX94 seg48BlindDeltaY94
    linear_combination r6872
  · unfold seg48BlindDeltaX94 seg48BlindDeltaY94
    linear_combination r6873
  · unfold seg48BlindDeltaX94
    linear_combination r6874
  · unfold seg48BlindDeltaY94
    linear_combination r6875
  · linear_combination r6244

theorem seg48Blind_rows96 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6245 rho ∧ Seg48.relationRow6876 rho ∧ Seg48.relationRow6877 rho ∧ Seg48.relationRow6878 rho ∧ Seg48.relationRow6879 rho ∧ Seg48.relationRow6880 rho := by
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

    _, _, _, _, _, p85, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, r6245, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6876, r6877, r6878, r6879⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨r6880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6245, r6876, r6877, r6878, r6879, r6880⟩

theorem seg48Blind_rung96 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39002 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 96)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      96 (Bool.toZMod bit) (seg48BlindAccState rho 96)
      (seg48BlindAccState rho 97) := by
  obtain ⟨r6245, r6876, r6877, r6878, r6879, r6880⟩ := seg48Blind_rows96 rho h
  unfold Seg48.relationRow6245 at r6245

  unfold Seg48.relationRow6876 at r6876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6876

  unfold Seg48.relationRow6877 at r6877

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6877

  unfold Seg48.relationRow6878 at r6878

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6878

  unfold Seg48.relationRow6879 at r6879

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6879

  unfold Seg48.relationRow6880 at r6880

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6880

  have hnextx : seg48BlindDeltaX96 rho =
      seg48BlindDeltaX95 rho + rho 39635 := by
    unfold seg48BlindDeltaX96 seg48BlindDeltaX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 95]

    ring

  have hnexty : seg48BlindDeltaY96 rho =
      seg48BlindDeltaY95 rho + rho 39636 := by
    unfold seg48BlindDeltaY96 seg48BlindDeltaY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 95]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 96
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX95 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY95 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX96 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY96 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung96_wide (rho 38906) (rho 39002) (seg48BlindDeltaX95 rho) (seg48BlindDeltaY95 rho) (rho 39632) (rho 39633) (rho 39634) (rho 39635) (rho 39636) hacc
  · unfold seg48BlindDeltaX95 seg48BlindDeltaY95
    linear_combination r6876
  · unfold seg48BlindDeltaX95 seg48BlindDeltaY95
    linear_combination r6877
  · unfold seg48BlindDeltaX95 seg48BlindDeltaY95
    linear_combination r6878
  · unfold seg48BlindDeltaX95
    linear_combination r6879
  · unfold seg48BlindDeltaY95
    linear_combination r6880
  · linear_combination r6245

theorem seg48Blind_rows97 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6246 rho ∧ Seg48.relationRow6881 rho ∧ Seg48.relationRow6882 rho ∧ Seg48.relationRow6883 rho ∧ Seg48.relationRow6884 rho ∧ Seg48.relationRow6885 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, r6246, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, r6881, r6882, r6883, r6884, r6885, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6246, r6881, r6882, r6883, r6884, r6885⟩

theorem seg48Blind_rung97 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39003 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 97)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      97 (Bool.toZMod bit) (seg48BlindAccState rho 97)
      (seg48BlindAccState rho 98) := by
  obtain ⟨r6246, r6881, r6882, r6883, r6884, r6885⟩ := seg48Blind_rows97 rho h
  unfold Seg48.relationRow6246 at r6246

  unfold Seg48.relationRow6881 at r6881

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6881

  unfold Seg48.relationRow6882 at r6882

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6882

  unfold Seg48.relationRow6883 at r6883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6883

  unfold Seg48.relationRow6884 at r6884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6884

  unfold Seg48.relationRow6885 at r6885

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6885

  have hnextx : seg48BlindDeltaX97 rho =
      seg48BlindDeltaX96 rho + rho 39640 := by
    unfold seg48BlindDeltaX97 seg48BlindDeltaX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 96]

    ring

  have hnexty : seg48BlindDeltaY97 rho =
      seg48BlindDeltaY96 rho + rho 39641 := by
    unfold seg48BlindDeltaY97 seg48BlindDeltaY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 96]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 97
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX96 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY96 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX97 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY97 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung97_wide (rho 38906) (rho 39003) (seg48BlindDeltaX96 rho) (seg48BlindDeltaY96 rho) (rho 39637) (rho 39638) (rho 39639) (rho 39640) (rho 39641) hacc
  · unfold seg48BlindDeltaX96 seg48BlindDeltaY96
    linear_combination r6881
  · unfold seg48BlindDeltaX96 seg48BlindDeltaY96
    linear_combination r6882
  · unfold seg48BlindDeltaX96 seg48BlindDeltaY96
    linear_combination r6883
  · unfold seg48BlindDeltaX96
    linear_combination r6884
  · unfold seg48BlindDeltaY96
    linear_combination r6885
  · linear_combination r6246

theorem seg48Blind_rows98 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6247 rho ∧ Seg48.relationRow6886 rho ∧ Seg48.relationRow6887 rho ∧ Seg48.relationRow6888 rho ∧ Seg48.relationRow6889 rho ∧ Seg48.relationRow6890 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, r6247, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, r6886, r6887, r6888, r6889, r6890, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6247, r6886, r6887, r6888, r6889, r6890⟩

theorem seg48Blind_rung98 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39004 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 98)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      98 (Bool.toZMod bit) (seg48BlindAccState rho 98)
      (seg48BlindAccState rho 99) := by
  obtain ⟨r6247, r6886, r6887, r6888, r6889, r6890⟩ := seg48Blind_rows98 rho h
  unfold Seg48.relationRow6247 at r6247

  unfold Seg48.relationRow6886 at r6886

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6886

  unfold Seg48.relationRow6887 at r6887

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6887

  unfold Seg48.relationRow6888 at r6888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6888

  unfold Seg48.relationRow6889 at r6889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6889

  unfold Seg48.relationRow6890 at r6890

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6890

  have hnextx : seg48BlindDeltaX98 rho =
      seg48BlindDeltaX97 rho + rho 39645 := by
    unfold seg48BlindDeltaX98 seg48BlindDeltaX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 97]

    ring

  have hnexty : seg48BlindDeltaY98 rho =
      seg48BlindDeltaY97 rho + rho 39646 := by
    unfold seg48BlindDeltaY98 seg48BlindDeltaY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 97]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 98
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX97 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY97 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX98 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY98 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung98_wide (rho 38906) (rho 39004) (seg48BlindDeltaX97 rho) (seg48BlindDeltaY97 rho) (rho 39642) (rho 39643) (rho 39644) (rho 39645) (rho 39646) hacc
  · unfold seg48BlindDeltaX97 seg48BlindDeltaY97
    linear_combination r6886
  · unfold seg48BlindDeltaX97 seg48BlindDeltaY97
    linear_combination r6887
  · unfold seg48BlindDeltaX97 seg48BlindDeltaY97
    linear_combination r6888
  · unfold seg48BlindDeltaX97
    linear_combination r6889
  · unfold seg48BlindDeltaY97
    linear_combination r6890
  · linear_combination r6247

theorem seg48Blind_rows99 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6248 rho ∧ Seg48.relationRow6891 rho ∧ Seg48.relationRow6892 rho ∧ Seg48.relationRow6893 rho ∧ Seg48.relationRow6894 rho ∧ Seg48.relationRow6895 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, r6248, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6891, r6892, r6893, r6894, r6895, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6248, r6891, r6892, r6893, r6894, r6895⟩

theorem seg48Blind_rung99 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39005 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 99)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      99 (Bool.toZMod bit) (seg48BlindAccState rho 99)
      (seg48BlindAccState rho 100) := by
  obtain ⟨r6248, r6891, r6892, r6893, r6894, r6895⟩ := seg48Blind_rows99 rho h
  unfold Seg48.relationRow6248 at r6248

  unfold Seg48.relationRow6891 at r6891

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6891

  unfold Seg48.relationRow6892 at r6892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6892

  unfold Seg48.relationRow6893 at r6893

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6893

  unfold Seg48.relationRow6894 at r6894

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6894

  unfold Seg48.relationRow6895 at r6895

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6895

  have hnextx : seg48BlindDeltaX99 rho =
      seg48BlindDeltaX98 rho + rho 39650 := by
    unfold seg48BlindDeltaX99 seg48BlindDeltaX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 98]

    ring

  have hnexty : seg48BlindDeltaY99 rho =
      seg48BlindDeltaY98 rho + rho 39651 := by
    unfold seg48BlindDeltaY99 seg48BlindDeltaY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 98]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 99
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX98 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY98 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX99 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY99 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung99_wide (rho 38906) (rho 39005) (seg48BlindDeltaX98 rho) (seg48BlindDeltaY98 rho) (rho 39647) (rho 39648) (rho 39649) (rho 39650) (rho 39651) hacc
  · unfold seg48BlindDeltaX98 seg48BlindDeltaY98
    linear_combination r6891
  · unfold seg48BlindDeltaX98 seg48BlindDeltaY98
    linear_combination r6892
  · unfold seg48BlindDeltaX98 seg48BlindDeltaY98
    linear_combination r6893
  · unfold seg48BlindDeltaX98
    linear_combination r6894
  · unfold seg48BlindDeltaY98
    linear_combination r6895
  · linear_combination r6248

theorem seg48Blind_rows100 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6249 rho ∧ Seg48.relationRow6896 rho ∧ Seg48.relationRow6897 rho ∧ Seg48.relationRow6898 rho ∧ Seg48.relationRow6899 rho ∧ Seg48.relationRow6900 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, r6249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6896, r6897, r6898, r6899, r6900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6249, r6896, r6897, r6898, r6899, r6900⟩

theorem seg48Blind_rung100 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39006 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 100)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      100 (Bool.toZMod bit) (seg48BlindAccState rho 100)
      (seg48BlindAccState rho 101) := by
  obtain ⟨r6249, r6896, r6897, r6898, r6899, r6900⟩ := seg48Blind_rows100 rho h
  unfold Seg48.relationRow6249 at r6249

  unfold Seg48.relationRow6896 at r6896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6896

  unfold Seg48.relationRow6897 at r6897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6897

  unfold Seg48.relationRow6898 at r6898

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6898

  unfold Seg48.relationRow6899 at r6899

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6899

  unfold Seg48.relationRow6900 at r6900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6900

  have hnextx : seg48BlindDeltaX100 rho =
      seg48BlindDeltaX99 rho + rho 39655 := by
    unfold seg48BlindDeltaX100 seg48BlindDeltaX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 99]

    ring

  have hnexty : seg48BlindDeltaY100 rho =
      seg48BlindDeltaY99 rho + rho 39656 := by
    unfold seg48BlindDeltaY100 seg48BlindDeltaY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 99]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 100
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX99 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY99 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX100 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY100 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung100_wide (rho 38906) (rho 39006) (seg48BlindDeltaX99 rho) (seg48BlindDeltaY99 rho) (rho 39652) (rho 39653) (rho 39654) (rho 39655) (rho 39656) hacc
  · unfold seg48BlindDeltaX99 seg48BlindDeltaY99
    linear_combination r6896
  · unfold seg48BlindDeltaX99 seg48BlindDeltaY99
    linear_combination r6897
  · unfold seg48BlindDeltaX99 seg48BlindDeltaY99
    linear_combination r6898
  · unfold seg48BlindDeltaX99
    linear_combination r6899
  · unfold seg48BlindDeltaY99
    linear_combination r6900
  · linear_combination r6249

theorem seg48Blind_hstep_c9 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 91 ≤ i → i < 101 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc
  · exact seg48Blind_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc
  · exact seg48Blind_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc
  · exact seg48Blind_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc
  · exact seg48Blind_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc
  · exact seg48Blind_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc
  · exact seg48Blind_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc
  · exact seg48Blind_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc
  · exact seg48Blind_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc
  · exact seg48Blind_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

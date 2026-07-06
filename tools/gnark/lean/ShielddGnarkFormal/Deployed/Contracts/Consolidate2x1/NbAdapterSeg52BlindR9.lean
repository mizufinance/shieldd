import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6240 rho ∧ Seg52.relationRow6851 rho ∧ Seg52.relationRow6852 rho ∧ Seg52.relationRow6853 rho ∧ Seg52.relationRow6854 rho ∧ Seg52.relationRow6855 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨r6240, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6851, r6852, r6853, r6854, r6855, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6240, r6851, r6852, r6853, r6854, r6855⟩

theorem seg52Blind_rung91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50629 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 91)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      91 (Bool.toZMod bit) (seg52BlindAccState rho 91)
      (seg52BlindAccState rho 92) := by
  obtain ⟨r6240, r6851, r6852, r6853, r6854, r6855⟩ := seg52Blind_rows91 rho h
  unfold Seg52.relationRow6240 at r6240

  unfold Seg52.relationRow6851 at r6851

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6851

  unfold Seg52.relationRow6852 at r6852

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6852

  unfold Seg52.relationRow6853 at r6853

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6853

  unfold Seg52.relationRow6854 at r6854

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6854

  unfold Seg52.relationRow6855 at r6855

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6855

  have hnextx : seg52BlindDeltaX91 rho =
      seg52BlindDeltaX90 rho + rho 51242 := by
    unfold seg52BlindDeltaX91 seg52BlindDeltaX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 90]

    ring

  have hnexty : seg52BlindDeltaY91 rho =
      seg52BlindDeltaY90 rho + rho 51243 := by
    unfold seg52BlindDeltaY91 seg52BlindDeltaY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 90]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 91
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX90 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY90 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX91 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY91 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung91_wide (rho 50538) (rho 50629) (seg52BlindDeltaX90 rho) (seg52BlindDeltaY90 rho) (rho 51239) (rho 51240) (rho 51241) (rho 51242) (rho 51243) hacc
  · unfold seg52BlindDeltaX90 seg52BlindDeltaY90
    linear_combination r6851
  · unfold seg52BlindDeltaX90 seg52BlindDeltaY90
    linear_combination r6852
  · unfold seg52BlindDeltaX90 seg52BlindDeltaY90
    linear_combination r6853
  · unfold seg52BlindDeltaX90
    linear_combination r6854
  · unfold seg52BlindDeltaY90
    linear_combination r6855
  · linear_combination r6240

theorem seg52Blind_rows92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6241 rho ∧ Seg52.relationRow6856 rho ∧ Seg52.relationRow6857 rho ∧ Seg52.relationRow6858 rho ∧ Seg52.relationRow6859 rho ∧ Seg52.relationRow6860 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, r6241, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6856, r6857, r6858, r6859, r6860, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6241, r6856, r6857, r6858, r6859, r6860⟩

theorem seg52Blind_rung92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50630 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 92)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      92 (Bool.toZMod bit) (seg52BlindAccState rho 92)
      (seg52BlindAccState rho 93) := by
  obtain ⟨r6241, r6856, r6857, r6858, r6859, r6860⟩ := seg52Blind_rows92 rho h
  unfold Seg52.relationRow6241 at r6241

  unfold Seg52.relationRow6856 at r6856

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6856

  unfold Seg52.relationRow6857 at r6857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6857

  unfold Seg52.relationRow6858 at r6858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6858

  unfold Seg52.relationRow6859 at r6859

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6859

  unfold Seg52.relationRow6860 at r6860

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6860

  have hnextx : seg52BlindDeltaX92 rho =
      seg52BlindDeltaX91 rho + rho 51247 := by
    unfold seg52BlindDeltaX92 seg52BlindDeltaX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 91]

    ring

  have hnexty : seg52BlindDeltaY92 rho =
      seg52BlindDeltaY91 rho + rho 51248 := by
    unfold seg52BlindDeltaY92 seg52BlindDeltaY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 91]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 92
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX91 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY91 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX92 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY92 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung92_wide (rho 50538) (rho 50630) (seg52BlindDeltaX91 rho) (seg52BlindDeltaY91 rho) (rho 51244) (rho 51245) (rho 51246) (rho 51247) (rho 51248) hacc
  · unfold seg52BlindDeltaX91 seg52BlindDeltaY91
    linear_combination r6856
  · unfold seg52BlindDeltaX91 seg52BlindDeltaY91
    linear_combination r6857
  · unfold seg52BlindDeltaX91 seg52BlindDeltaY91
    linear_combination r6858
  · unfold seg52BlindDeltaX91
    linear_combination r6859
  · unfold seg52BlindDeltaY91
    linear_combination r6860
  · linear_combination r6241

theorem seg52Blind_rows93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6242 rho ∧ Seg52.relationRow6861 rho ∧ Seg52.relationRow6862 rho ∧ Seg52.relationRow6863 rho ∧ Seg52.relationRow6864 rho ∧ Seg52.relationRow6865 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, r6242, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6861, r6862, r6863, r6864, r6865, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6242, r6861, r6862, r6863, r6864, r6865⟩

theorem seg52Blind_rung93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50631 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 93)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      93 (Bool.toZMod bit) (seg52BlindAccState rho 93)
      (seg52BlindAccState rho 94) := by
  obtain ⟨r6242, r6861, r6862, r6863, r6864, r6865⟩ := seg52Blind_rows93 rho h
  unfold Seg52.relationRow6242 at r6242

  unfold Seg52.relationRow6861 at r6861

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6861

  unfold Seg52.relationRow6862 at r6862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6862

  unfold Seg52.relationRow6863 at r6863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6863

  unfold Seg52.relationRow6864 at r6864

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6864

  unfold Seg52.relationRow6865 at r6865

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6865

  have hnextx : seg52BlindDeltaX93 rho =
      seg52BlindDeltaX92 rho + rho 51252 := by
    unfold seg52BlindDeltaX93 seg52BlindDeltaX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 92]

    ring

  have hnexty : seg52BlindDeltaY93 rho =
      seg52BlindDeltaY92 rho + rho 51253 := by
    unfold seg52BlindDeltaY93 seg52BlindDeltaY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 92]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 93
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX92 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY92 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX93 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY93 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung93_wide (rho 50538) (rho 50631) (seg52BlindDeltaX92 rho) (seg52BlindDeltaY92 rho) (rho 51249) (rho 51250) (rho 51251) (rho 51252) (rho 51253) hacc
  · unfold seg52BlindDeltaX92 seg52BlindDeltaY92
    linear_combination r6861
  · unfold seg52BlindDeltaX92 seg52BlindDeltaY92
    linear_combination r6862
  · unfold seg52BlindDeltaX92 seg52BlindDeltaY92
    linear_combination r6863
  · unfold seg52BlindDeltaX92
    linear_combination r6864
  · unfold seg52BlindDeltaY92
    linear_combination r6865
  · linear_combination r6242

theorem seg52Blind_rows94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6243 rho ∧ Seg52.relationRow6866 rho ∧ Seg52.relationRow6867 rho ∧ Seg52.relationRow6868 rho ∧ Seg52.relationRow6869 rho ∧ Seg52.relationRow6870 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, r6243, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6866, r6867, r6868, r6869, r6870, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6243, r6866, r6867, r6868, r6869, r6870⟩

theorem seg52Blind_rung94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50632 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 94)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      94 (Bool.toZMod bit) (seg52BlindAccState rho 94)
      (seg52BlindAccState rho 95) := by
  obtain ⟨r6243, r6866, r6867, r6868, r6869, r6870⟩ := seg52Blind_rows94 rho h
  unfold Seg52.relationRow6243 at r6243

  unfold Seg52.relationRow6866 at r6866

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6866

  unfold Seg52.relationRow6867 at r6867

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6867

  unfold Seg52.relationRow6868 at r6868

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6868

  unfold Seg52.relationRow6869 at r6869

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6869

  unfold Seg52.relationRow6870 at r6870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6870

  have hnextx : seg52BlindDeltaX94 rho =
      seg52BlindDeltaX93 rho + rho 51257 := by
    unfold seg52BlindDeltaX94 seg52BlindDeltaX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 93]

    ring

  have hnexty : seg52BlindDeltaY94 rho =
      seg52BlindDeltaY93 rho + rho 51258 := by
    unfold seg52BlindDeltaY94 seg52BlindDeltaY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 93]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 94
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX93 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY93 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX94 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY94 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung94_wide (rho 50538) (rho 50632) (seg52BlindDeltaX93 rho) (seg52BlindDeltaY93 rho) (rho 51254) (rho 51255) (rho 51256) (rho 51257) (rho 51258) hacc
  · unfold seg52BlindDeltaX93 seg52BlindDeltaY93
    linear_combination r6866
  · unfold seg52BlindDeltaX93 seg52BlindDeltaY93
    linear_combination r6867
  · unfold seg52BlindDeltaX93 seg52BlindDeltaY93
    linear_combination r6868
  · unfold seg52BlindDeltaX93
    linear_combination r6869
  · unfold seg52BlindDeltaY93
    linear_combination r6870
  · linear_combination r6243

theorem seg52Blind_rows95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6244 rho ∧ Seg52.relationRow6871 rho ∧ Seg52.relationRow6872 rho ∧ Seg52.relationRow6873 rho ∧ Seg52.relationRow6874 rho ∧ Seg52.relationRow6875 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, r6244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6871, r6872, r6873, r6874, r6875, _, _, _, _⟩

  exact ⟨r6244, r6871, r6872, r6873, r6874, r6875⟩

theorem seg52Blind_rung95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50633 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 95)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      95 (Bool.toZMod bit) (seg52BlindAccState rho 95)
      (seg52BlindAccState rho 96) := by
  obtain ⟨r6244, r6871, r6872, r6873, r6874, r6875⟩ := seg52Blind_rows95 rho h
  unfold Seg52.relationRow6244 at r6244

  unfold Seg52.relationRow6871 at r6871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6871

  unfold Seg52.relationRow6872 at r6872

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6872

  unfold Seg52.relationRow6873 at r6873

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6873

  unfold Seg52.relationRow6874 at r6874

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6874

  unfold Seg52.relationRow6875 at r6875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6875

  have hnextx : seg52BlindDeltaX95 rho =
      seg52BlindDeltaX94 rho + rho 51262 := by
    unfold seg52BlindDeltaX95 seg52BlindDeltaX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 94]

    ring

  have hnexty : seg52BlindDeltaY95 rho =
      seg52BlindDeltaY94 rho + rho 51263 := by
    unfold seg52BlindDeltaY95 seg52BlindDeltaY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 94]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 95
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX94 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY94 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX95 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY95 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung95_wide (rho 50538) (rho 50633) (seg52BlindDeltaX94 rho) (seg52BlindDeltaY94 rho) (rho 51259) (rho 51260) (rho 51261) (rho 51262) (rho 51263) hacc
  · unfold seg52BlindDeltaX94 seg52BlindDeltaY94
    linear_combination r6871
  · unfold seg52BlindDeltaX94 seg52BlindDeltaY94
    linear_combination r6872
  · unfold seg52BlindDeltaX94 seg52BlindDeltaY94
    linear_combination r6873
  · unfold seg52BlindDeltaX94
    linear_combination r6874
  · unfold seg52BlindDeltaY94
    linear_combination r6875
  · linear_combination r6244

theorem seg52Blind_rows96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6245 rho ∧ Seg52.relationRow6876 rho ∧ Seg52.relationRow6877 rho ∧ Seg52.relationRow6878 rho ∧ Seg52.relationRow6879 rho ∧ Seg52.relationRow6880 rho := by
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

    _, _, _, _, _, p85, p86, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, r6245, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6876, r6877, r6878, r6879⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨r6880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6245, r6876, r6877, r6878, r6879, r6880⟩

theorem seg52Blind_rung96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50634 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 96)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      96 (Bool.toZMod bit) (seg52BlindAccState rho 96)
      (seg52BlindAccState rho 97) := by
  obtain ⟨r6245, r6876, r6877, r6878, r6879, r6880⟩ := seg52Blind_rows96 rho h
  unfold Seg52.relationRow6245 at r6245

  unfold Seg52.relationRow6876 at r6876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6876

  unfold Seg52.relationRow6877 at r6877

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6877

  unfold Seg52.relationRow6878 at r6878

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6878

  unfold Seg52.relationRow6879 at r6879

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6879

  unfold Seg52.relationRow6880 at r6880

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6880

  have hnextx : seg52BlindDeltaX96 rho =
      seg52BlindDeltaX95 rho + rho 51267 := by
    unfold seg52BlindDeltaX96 seg52BlindDeltaX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 95]

    ring

  have hnexty : seg52BlindDeltaY96 rho =
      seg52BlindDeltaY95 rho + rho 51268 := by
    unfold seg52BlindDeltaY96 seg52BlindDeltaY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 95]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 96
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX95 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY95 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX96 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY96 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung96_wide (rho 50538) (rho 50634) (seg52BlindDeltaX95 rho) (seg52BlindDeltaY95 rho) (rho 51264) (rho 51265) (rho 51266) (rho 51267) (rho 51268) hacc
  · unfold seg52BlindDeltaX95 seg52BlindDeltaY95
    linear_combination r6876
  · unfold seg52BlindDeltaX95 seg52BlindDeltaY95
    linear_combination r6877
  · unfold seg52BlindDeltaX95 seg52BlindDeltaY95
    linear_combination r6878
  · unfold seg52BlindDeltaX95
    linear_combination r6879
  · unfold seg52BlindDeltaY95
    linear_combination r6880
  · linear_combination r6245

theorem seg52Blind_rows97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6246 rho ∧ Seg52.relationRow6881 rho ∧ Seg52.relationRow6882 rho ∧ Seg52.relationRow6883 rho ∧ Seg52.relationRow6884 rho ∧ Seg52.relationRow6885 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, r6246, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, r6881, r6882, r6883, r6884, r6885, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6246, r6881, r6882, r6883, r6884, r6885⟩

theorem seg52Blind_rung97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50635 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 97)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      97 (Bool.toZMod bit) (seg52BlindAccState rho 97)
      (seg52BlindAccState rho 98) := by
  obtain ⟨r6246, r6881, r6882, r6883, r6884, r6885⟩ := seg52Blind_rows97 rho h
  unfold Seg52.relationRow6246 at r6246

  unfold Seg52.relationRow6881 at r6881

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6881

  unfold Seg52.relationRow6882 at r6882

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6882

  unfold Seg52.relationRow6883 at r6883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6883

  unfold Seg52.relationRow6884 at r6884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6884

  unfold Seg52.relationRow6885 at r6885

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6885

  have hnextx : seg52BlindDeltaX97 rho =
      seg52BlindDeltaX96 rho + rho 51272 := by
    unfold seg52BlindDeltaX97 seg52BlindDeltaX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 96]

    ring

  have hnexty : seg52BlindDeltaY97 rho =
      seg52BlindDeltaY96 rho + rho 51273 := by
    unfold seg52BlindDeltaY97 seg52BlindDeltaY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 96]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 97
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX96 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY96 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX97 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY97 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung97_wide (rho 50538) (rho 50635) (seg52BlindDeltaX96 rho) (seg52BlindDeltaY96 rho) (rho 51269) (rho 51270) (rho 51271) (rho 51272) (rho 51273) hacc
  · unfold seg52BlindDeltaX96 seg52BlindDeltaY96
    linear_combination r6881
  · unfold seg52BlindDeltaX96 seg52BlindDeltaY96
    linear_combination r6882
  · unfold seg52BlindDeltaX96 seg52BlindDeltaY96
    linear_combination r6883
  · unfold seg52BlindDeltaX96
    linear_combination r6884
  · unfold seg52BlindDeltaY96
    linear_combination r6885
  · linear_combination r6246

theorem seg52Blind_rows98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6247 rho ∧ Seg52.relationRow6886 rho ∧ Seg52.relationRow6887 rho ∧ Seg52.relationRow6888 rho ∧ Seg52.relationRow6889 rho ∧ Seg52.relationRow6890 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, r6247, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, r6886, r6887, r6888, r6889, r6890, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6247, r6886, r6887, r6888, r6889, r6890⟩

theorem seg52Blind_rung98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50636 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 98)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      98 (Bool.toZMod bit) (seg52BlindAccState rho 98)
      (seg52BlindAccState rho 99) := by
  obtain ⟨r6247, r6886, r6887, r6888, r6889, r6890⟩ := seg52Blind_rows98 rho h
  unfold Seg52.relationRow6247 at r6247

  unfold Seg52.relationRow6886 at r6886

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6886

  unfold Seg52.relationRow6887 at r6887

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6887

  unfold Seg52.relationRow6888 at r6888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6888

  unfold Seg52.relationRow6889 at r6889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6889

  unfold Seg52.relationRow6890 at r6890

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6890

  have hnextx : seg52BlindDeltaX98 rho =
      seg52BlindDeltaX97 rho + rho 51277 := by
    unfold seg52BlindDeltaX98 seg52BlindDeltaX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 97]

    ring

  have hnexty : seg52BlindDeltaY98 rho =
      seg52BlindDeltaY97 rho + rho 51278 := by
    unfold seg52BlindDeltaY98 seg52BlindDeltaY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 97]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 98
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX97 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY97 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX98 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY98 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung98_wide (rho 50538) (rho 50636) (seg52BlindDeltaX97 rho) (seg52BlindDeltaY97 rho) (rho 51274) (rho 51275) (rho 51276) (rho 51277) (rho 51278) hacc
  · unfold seg52BlindDeltaX97 seg52BlindDeltaY97
    linear_combination r6886
  · unfold seg52BlindDeltaX97 seg52BlindDeltaY97
    linear_combination r6887
  · unfold seg52BlindDeltaX97 seg52BlindDeltaY97
    linear_combination r6888
  · unfold seg52BlindDeltaX97
    linear_combination r6889
  · unfold seg52BlindDeltaY97
    linear_combination r6890
  · linear_combination r6247

theorem seg52Blind_rows99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6248 rho ∧ Seg52.relationRow6891 rho ∧ Seg52.relationRow6892 rho ∧ Seg52.relationRow6893 rho ∧ Seg52.relationRow6894 rho ∧ Seg52.relationRow6895 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, r6248, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6891, r6892, r6893, r6894, r6895, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6248, r6891, r6892, r6893, r6894, r6895⟩

theorem seg52Blind_rung99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50637 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 99)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      99 (Bool.toZMod bit) (seg52BlindAccState rho 99)
      (seg52BlindAccState rho 100) := by
  obtain ⟨r6248, r6891, r6892, r6893, r6894, r6895⟩ := seg52Blind_rows99 rho h
  unfold Seg52.relationRow6248 at r6248

  unfold Seg52.relationRow6891 at r6891

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6891

  unfold Seg52.relationRow6892 at r6892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6892

  unfold Seg52.relationRow6893 at r6893

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6893

  unfold Seg52.relationRow6894 at r6894

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6894

  unfold Seg52.relationRow6895 at r6895

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6895

  have hnextx : seg52BlindDeltaX99 rho =
      seg52BlindDeltaX98 rho + rho 51282 := by
    unfold seg52BlindDeltaX99 seg52BlindDeltaX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 98]

    ring

  have hnexty : seg52BlindDeltaY99 rho =
      seg52BlindDeltaY98 rho + rho 51283 := by
    unfold seg52BlindDeltaY99 seg52BlindDeltaY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 98]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 99
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX98 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY98 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX99 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY99 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung99_wide (rho 50538) (rho 50637) (seg52BlindDeltaX98 rho) (seg52BlindDeltaY98 rho) (rho 51279) (rho 51280) (rho 51281) (rho 51282) (rho 51283) hacc
  · unfold seg52BlindDeltaX98 seg52BlindDeltaY98
    linear_combination r6891
  · unfold seg52BlindDeltaX98 seg52BlindDeltaY98
    linear_combination r6892
  · unfold seg52BlindDeltaX98 seg52BlindDeltaY98
    linear_combination r6893
  · unfold seg52BlindDeltaX98
    linear_combination r6894
  · unfold seg52BlindDeltaY98
    linear_combination r6895
  · linear_combination r6248

theorem seg52Blind_rows100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6249 rho ∧ Seg52.relationRow6896 rho ∧ Seg52.relationRow6897 rho ∧ Seg52.relationRow6898 rho ∧ Seg52.relationRow6899 rho ∧ Seg52.relationRow6900 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, r6249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6896, r6897, r6898, r6899, r6900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6249, r6896, r6897, r6898, r6899, r6900⟩

theorem seg52Blind_rung100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50638 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 100)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      100 (Bool.toZMod bit) (seg52BlindAccState rho 100)
      (seg52BlindAccState rho 101) := by
  obtain ⟨r6249, r6896, r6897, r6898, r6899, r6900⟩ := seg52Blind_rows100 rho h
  unfold Seg52.relationRow6249 at r6249

  unfold Seg52.relationRow6896 at r6896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6896

  unfold Seg52.relationRow6897 at r6897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6897

  unfold Seg52.relationRow6898 at r6898

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6898

  unfold Seg52.relationRow6899 at r6899

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6899

  unfold Seg52.relationRow6900 at r6900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6900

  have hnextx : seg52BlindDeltaX100 rho =
      seg52BlindDeltaX99 rho + rho 51287 := by
    unfold seg52BlindDeltaX100 seg52BlindDeltaX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 99]

    ring

  have hnexty : seg52BlindDeltaY100 rho =
      seg52BlindDeltaY99 rho + rho 51288 := by
    unfold seg52BlindDeltaY100 seg52BlindDeltaY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 99]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 100
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX99 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY99 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX100 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY100 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung100_wide (rho 50538) (rho 50638) (seg52BlindDeltaX99 rho) (seg52BlindDeltaY99 rho) (rho 51284) (rho 51285) (rho 51286) (rho 51287) (rho 51288) hacc
  · unfold seg52BlindDeltaX99 seg52BlindDeltaY99
    linear_combination r6896
  · unfold seg52BlindDeltaX99 seg52BlindDeltaY99
    linear_combination r6897
  · unfold seg52BlindDeltaX99 seg52BlindDeltaY99
    linear_combination r6898
  · unfold seg52BlindDeltaX99
    linear_combination r6899
  · unfold seg52BlindDeltaY99
    linear_combination r6900
  · linear_combination r6249

theorem seg52Blind_hstep_c9 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 91 ≤ i → i < 101 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc
  · exact seg52Blind_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc
  · exact seg52Blind_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc
  · exact seg52Blind_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc
  · exact seg52Blind_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc
  · exact seg52Blind_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc
  · exact seg52Blind_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc
  · exact seg52Blind_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc
  · exact seg52Blind_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc
  · exact seg52Blind_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

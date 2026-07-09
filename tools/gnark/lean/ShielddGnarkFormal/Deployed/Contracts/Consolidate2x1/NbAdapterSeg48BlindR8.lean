import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows81 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6230 rho ∧ Seg48.relationRow6801 rho ∧ Seg48.relationRow6802 rho ∧ Seg48.relationRow6803 rho ∧ Seg48.relationRow6804 rho ∧ Seg48.relationRow6805 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6230, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, r6801, r6802, r6803, r6804, r6805, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6230, r6801, r6802, r6803, r6804, r6805⟩

theorem seg48Blind_rung81 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38987 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 81)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      81 (Bool.toZMod bit) (seg48BlindAccState rho 81)
      (seg48BlindAccState rho 82) := by
  obtain ⟨r6230, r6801, r6802, r6803, r6804, r6805⟩ := seg48Blind_rows81 rho h
  unfold Seg48.relationRow6230 at r6230

  unfold Seg48.relationRow6801 at r6801

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6801

  unfold Seg48.relationRow6802 at r6802

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6802

  unfold Seg48.relationRow6803 at r6803

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6803

  unfold Seg48.relationRow6804 at r6804

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6804

  unfold Seg48.relationRow6805 at r6805

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6805

  have hnextx : seg48BlindDeltaX81 rho =
      seg48BlindDeltaX80 rho + rho 39560 := by
    unfold seg48BlindDeltaX81 seg48BlindDeltaX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 80]

    ring

  have hnexty : seg48BlindDeltaY81 rho =
      seg48BlindDeltaY80 rho + rho 39561 := by
    unfold seg48BlindDeltaY81 seg48BlindDeltaY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 80]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 81
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX80 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY80 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX81 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY81 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung81_wide (rho 38906) (rho 38987) (seg48BlindDeltaX80 rho) (seg48BlindDeltaY80 rho) (rho 39557) (rho 39558) (rho 39559) (rho 39560) (rho 39561) hacc
  · unfold seg48BlindDeltaX80 seg48BlindDeltaY80
    linear_combination r6801
  · unfold seg48BlindDeltaX80 seg48BlindDeltaY80
    linear_combination r6802
  · unfold seg48BlindDeltaX80 seg48BlindDeltaY80
    linear_combination r6803
  · unfold seg48BlindDeltaX80
    linear_combination r6804
  · unfold seg48BlindDeltaY80
    linear_combination r6805
  · linear_combination r6230

theorem seg48Blind_rows82 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6231 rho ∧ Seg48.relationRow6806 rho ∧ Seg48.relationRow6807 rho ∧ Seg48.relationRow6808 rho ∧ Seg48.relationRow6809 rho ∧ Seg48.relationRow6810 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6231, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, r6806, r6807, r6808, r6809, r6810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6231, r6806, r6807, r6808, r6809, r6810⟩

theorem seg48Blind_rung82 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38988 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 82)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      82 (Bool.toZMod bit) (seg48BlindAccState rho 82)
      (seg48BlindAccState rho 83) := by
  obtain ⟨r6231, r6806, r6807, r6808, r6809, r6810⟩ := seg48Blind_rows82 rho h
  unfold Seg48.relationRow6231 at r6231

  unfold Seg48.relationRow6806 at r6806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6806

  unfold Seg48.relationRow6807 at r6807

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6807

  unfold Seg48.relationRow6808 at r6808

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6808

  unfold Seg48.relationRow6809 at r6809

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6809

  unfold Seg48.relationRow6810 at r6810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6810

  have hnextx : seg48BlindDeltaX82 rho =
      seg48BlindDeltaX81 rho + rho 39565 := by
    unfold seg48BlindDeltaX82 seg48BlindDeltaX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 81]

    ring

  have hnexty : seg48BlindDeltaY82 rho =
      seg48BlindDeltaY81 rho + rho 39566 := by
    unfold seg48BlindDeltaY82 seg48BlindDeltaY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 81]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 82
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX81 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY81 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX82 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY82 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung82_wide (rho 38906) (rho 38988) (seg48BlindDeltaX81 rho) (seg48BlindDeltaY81 rho) (rho 39562) (rho 39563) (rho 39564) (rho 39565) (rho 39566) hacc
  · unfold seg48BlindDeltaX81 seg48BlindDeltaY81
    linear_combination r6806
  · unfold seg48BlindDeltaX81 seg48BlindDeltaY81
    linear_combination r6807
  · unfold seg48BlindDeltaX81 seg48BlindDeltaY81
    linear_combination r6808
  · unfold seg48BlindDeltaX81
    linear_combination r6809
  · unfold seg48BlindDeltaY81
    linear_combination r6810
  · linear_combination r6231

theorem seg48Blind_rows83 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6232 rho ∧ Seg48.relationRow6811 rho ∧ Seg48.relationRow6812 rho ∧ Seg48.relationRow6813 rho ∧ Seg48.relationRow6814 rho ∧ Seg48.relationRow6815 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6232, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6811, r6812, r6813, r6814, r6815, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6232, r6811, r6812, r6813, r6814, r6815⟩

theorem seg48Blind_rung83 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38989 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 83)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      83 (Bool.toZMod bit) (seg48BlindAccState rho 83)
      (seg48BlindAccState rho 84) := by
  obtain ⟨r6232, r6811, r6812, r6813, r6814, r6815⟩ := seg48Blind_rows83 rho h
  unfold Seg48.relationRow6232 at r6232

  unfold Seg48.relationRow6811 at r6811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6811

  unfold Seg48.relationRow6812 at r6812

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6812

  unfold Seg48.relationRow6813 at r6813

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6813

  unfold Seg48.relationRow6814 at r6814

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6814

  unfold Seg48.relationRow6815 at r6815

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6815

  have hnextx : seg48BlindDeltaX83 rho =
      seg48BlindDeltaX82 rho + rho 39570 := by
    unfold seg48BlindDeltaX83 seg48BlindDeltaX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 82]

    ring

  have hnexty : seg48BlindDeltaY83 rho =
      seg48BlindDeltaY82 rho + rho 39571 := by
    unfold seg48BlindDeltaY83 seg48BlindDeltaY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 82]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 83
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX82 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY82 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX83 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY83 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung83_wide (rho 38906) (rho 38989) (seg48BlindDeltaX82 rho) (seg48BlindDeltaY82 rho) (rho 39567) (rho 39568) (rho 39569) (rho 39570) (rho 39571) hacc
  · unfold seg48BlindDeltaX82 seg48BlindDeltaY82
    linear_combination r6811
  · unfold seg48BlindDeltaX82 seg48BlindDeltaY82
    linear_combination r6812
  · unfold seg48BlindDeltaX82 seg48BlindDeltaY82
    linear_combination r6813
  · unfold seg48BlindDeltaX82
    linear_combination r6814
  · unfold seg48BlindDeltaY82
    linear_combination r6815
  · linear_combination r6232

theorem seg48Blind_rows84 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6233 rho ∧ Seg48.relationRow6816 rho ∧ Seg48.relationRow6817 rho ∧ Seg48.relationRow6818 rho ∧ Seg48.relationRow6819 rho ∧ Seg48.relationRow6820 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6233, _, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6816, r6817, r6818, r6819, r6820, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6233, r6816, r6817, r6818, r6819, r6820⟩

theorem seg48Blind_rung84 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38990 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 84)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      84 (Bool.toZMod bit) (seg48BlindAccState rho 84)
      (seg48BlindAccState rho 85) := by
  obtain ⟨r6233, r6816, r6817, r6818, r6819, r6820⟩ := seg48Blind_rows84 rho h
  unfold Seg48.relationRow6233 at r6233

  unfold Seg48.relationRow6816 at r6816

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6816

  unfold Seg48.relationRow6817 at r6817

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6817

  unfold Seg48.relationRow6818 at r6818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6818

  unfold Seg48.relationRow6819 at r6819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6819

  unfold Seg48.relationRow6820 at r6820

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6820

  have hnextx : seg48BlindDeltaX84 rho =
      seg48BlindDeltaX83 rho + rho 39575 := by
    unfold seg48BlindDeltaX84 seg48BlindDeltaX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 83]

    ring

  have hnexty : seg48BlindDeltaY84 rho =
      seg48BlindDeltaY83 rho + rho 39576 := by
    unfold seg48BlindDeltaY84 seg48BlindDeltaY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 83]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 84
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX83 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY83 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX84 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY84 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung84_wide (rho 38906) (rho 38990) (seg48BlindDeltaX83 rho) (seg48BlindDeltaY83 rho) (rho 39572) (rho 39573) (rho 39574) (rho 39575) (rho 39576) hacc
  · unfold seg48BlindDeltaX83 seg48BlindDeltaY83
    linear_combination r6816
  · unfold seg48BlindDeltaX83 seg48BlindDeltaY83
    linear_combination r6817
  · unfold seg48BlindDeltaX83 seg48BlindDeltaY83
    linear_combination r6818
  · unfold seg48BlindDeltaX83
    linear_combination r6819
  · unfold seg48BlindDeltaY83
    linear_combination r6820
  · linear_combination r6233

theorem seg48Blind_rows85 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6234 rho ∧ Seg48.relationRow6821 rho ∧ Seg48.relationRow6822 rho ∧ Seg48.relationRow6823 rho ∧ Seg48.relationRow6824 rho ∧ Seg48.relationRow6825 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6234, _, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6821, r6822, r6823, r6824, r6825, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6234, r6821, r6822, r6823, r6824, r6825⟩

theorem seg48Blind_rung85 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38991 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 85)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      85 (Bool.toZMod bit) (seg48BlindAccState rho 85)
      (seg48BlindAccState rho 86) := by
  obtain ⟨r6234, r6821, r6822, r6823, r6824, r6825⟩ := seg48Blind_rows85 rho h
  unfold Seg48.relationRow6234 at r6234

  unfold Seg48.relationRow6821 at r6821

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6821

  unfold Seg48.relationRow6822 at r6822

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6822

  unfold Seg48.relationRow6823 at r6823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6823

  unfold Seg48.relationRow6824 at r6824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6824

  unfold Seg48.relationRow6825 at r6825

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6825

  have hnextx : seg48BlindDeltaX85 rho =
      seg48BlindDeltaX84 rho + rho 39580 := by
    unfold seg48BlindDeltaX85 seg48BlindDeltaX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 84]

    ring

  have hnexty : seg48BlindDeltaY85 rho =
      seg48BlindDeltaY84 rho + rho 39581 := by
    unfold seg48BlindDeltaY85 seg48BlindDeltaY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 84]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 85
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX84 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY84 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX85 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY85 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung85_wide (rho 38906) (rho 38991) (seg48BlindDeltaX84 rho) (seg48BlindDeltaY84 rho) (rho 39577) (rho 39578) (rho 39579) (rho 39580) (rho 39581) hacc
  · unfold seg48BlindDeltaX84 seg48BlindDeltaY84
    linear_combination r6821
  · unfold seg48BlindDeltaX84 seg48BlindDeltaY84
    linear_combination r6822
  · unfold seg48BlindDeltaX84 seg48BlindDeltaY84
    linear_combination r6823
  · unfold seg48BlindDeltaX84
    linear_combination r6824
  · unfold seg48BlindDeltaY84
    linear_combination r6825
  · linear_combination r6234

theorem seg48Blind_rows86 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6235 rho ∧ Seg48.relationRow6826 rho ∧ Seg48.relationRow6827 rho ∧ Seg48.relationRow6828 rho ∧ Seg48.relationRow6829 rho ∧ Seg48.relationRow6830 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6235, _, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6826, r6827, r6828, r6829, r6830, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6235, r6826, r6827, r6828, r6829, r6830⟩

theorem seg48Blind_rung86 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38992 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 86)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      86 (Bool.toZMod bit) (seg48BlindAccState rho 86)
      (seg48BlindAccState rho 87) := by
  obtain ⟨r6235, r6826, r6827, r6828, r6829, r6830⟩ := seg48Blind_rows86 rho h
  unfold Seg48.relationRow6235 at r6235

  unfold Seg48.relationRow6826 at r6826

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6826

  unfold Seg48.relationRow6827 at r6827

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6827

  unfold Seg48.relationRow6828 at r6828

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6828

  unfold Seg48.relationRow6829 at r6829

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6829

  unfold Seg48.relationRow6830 at r6830

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6830

  have hnextx : seg48BlindDeltaX86 rho =
      seg48BlindDeltaX85 rho + rho 39585 := by
    unfold seg48BlindDeltaX86 seg48BlindDeltaX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 85]

    ring

  have hnexty : seg48BlindDeltaY86 rho =
      seg48BlindDeltaY85 rho + rho 39586 := by
    unfold seg48BlindDeltaY86 seg48BlindDeltaY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 85]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 86
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX85 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY85 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX86 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY86 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung86_wide (rho 38906) (rho 38992) (seg48BlindDeltaX85 rho) (seg48BlindDeltaY85 rho) (rho 39582) (rho 39583) (rho 39584) (rho 39585) (rho 39586) hacc
  · unfold seg48BlindDeltaX85 seg48BlindDeltaY85
    linear_combination r6826
  · unfold seg48BlindDeltaX85 seg48BlindDeltaY85
    linear_combination r6827
  · unfold seg48BlindDeltaX85 seg48BlindDeltaY85
    linear_combination r6828
  · unfold seg48BlindDeltaX85
    linear_combination r6829
  · unfold seg48BlindDeltaY85
    linear_combination r6830
  · linear_combination r6235

theorem seg48Blind_rows87 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6236 rho ∧ Seg48.relationRow6831 rho ∧ Seg48.relationRow6832 rho ∧ Seg48.relationRow6833 rho ∧ Seg48.relationRow6834 rho ∧ Seg48.relationRow6835 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6236, _, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6831, r6832, r6833, r6834, r6835, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6236, r6831, r6832, r6833, r6834, r6835⟩

theorem seg48Blind_rung87 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38993 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 87)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      87 (Bool.toZMod bit) (seg48BlindAccState rho 87)
      (seg48BlindAccState rho 88) := by
  obtain ⟨r6236, r6831, r6832, r6833, r6834, r6835⟩ := seg48Blind_rows87 rho h
  unfold Seg48.relationRow6236 at r6236

  unfold Seg48.relationRow6831 at r6831

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6831

  unfold Seg48.relationRow6832 at r6832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6832

  unfold Seg48.relationRow6833 at r6833

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6833

  unfold Seg48.relationRow6834 at r6834

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6834

  unfold Seg48.relationRow6835 at r6835

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6835

  have hnextx : seg48BlindDeltaX87 rho =
      seg48BlindDeltaX86 rho + rho 39590 := by
    unfold seg48BlindDeltaX87 seg48BlindDeltaX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 86]

    ring

  have hnexty : seg48BlindDeltaY87 rho =
      seg48BlindDeltaY86 rho + rho 39591 := by
    unfold seg48BlindDeltaY87 seg48BlindDeltaY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 86]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 87
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX86 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY86 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX87 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY87 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung87_wide (rho 38906) (rho 38993) (seg48BlindDeltaX86 rho) (seg48BlindDeltaY86 rho) (rho 39587) (rho 39588) (rho 39589) (rho 39590) (rho 39591) hacc
  · unfold seg48BlindDeltaX86 seg48BlindDeltaY86
    linear_combination r6831
  · unfold seg48BlindDeltaX86 seg48BlindDeltaY86
    linear_combination r6832
  · unfold seg48BlindDeltaX86 seg48BlindDeltaY86
    linear_combination r6833
  · unfold seg48BlindDeltaX86
    linear_combination r6834
  · unfold seg48BlindDeltaY86
    linear_combination r6835
  · linear_combination r6236

theorem seg48Blind_rows88 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6237 rho ∧ Seg48.relationRow6836 rho ∧ Seg48.relationRow6837 rho ∧ Seg48.relationRow6838 rho ∧ Seg48.relationRow6839 rho ∧ Seg48.relationRow6840 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6237, _, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6836, r6837, r6838, r6839, r6840, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6237, r6836, r6837, r6838, r6839, r6840⟩

theorem seg48Blind_rung88 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38994 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 88)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      88 (Bool.toZMod bit) (seg48BlindAccState rho 88)
      (seg48BlindAccState rho 89) := by
  obtain ⟨r6237, r6836, r6837, r6838, r6839, r6840⟩ := seg48Blind_rows88 rho h
  unfold Seg48.relationRow6237 at r6237

  unfold Seg48.relationRow6836 at r6836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6836

  unfold Seg48.relationRow6837 at r6837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6837

  unfold Seg48.relationRow6838 at r6838

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6838

  unfold Seg48.relationRow6839 at r6839

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6839

  unfold Seg48.relationRow6840 at r6840

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6840

  have hnextx : seg48BlindDeltaX88 rho =
      seg48BlindDeltaX87 rho + rho 39595 := by
    unfold seg48BlindDeltaX88 seg48BlindDeltaX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 87]

    ring

  have hnexty : seg48BlindDeltaY88 rho =
      seg48BlindDeltaY87 rho + rho 39596 := by
    unfold seg48BlindDeltaY88 seg48BlindDeltaY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 87]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 88
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX87 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY87 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX88 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY88 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung88_wide (rho 38906) (rho 38994) (seg48BlindDeltaX87 rho) (seg48BlindDeltaY87 rho) (rho 39592) (rho 39593) (rho 39594) (rho 39595) (rho 39596) hacc
  · unfold seg48BlindDeltaX87 seg48BlindDeltaY87
    linear_combination r6836
  · unfold seg48BlindDeltaX87 seg48BlindDeltaY87
    linear_combination r6837
  · unfold seg48BlindDeltaX87 seg48BlindDeltaY87
    linear_combination r6838
  · unfold seg48BlindDeltaX87
    linear_combination r6839
  · unfold seg48BlindDeltaY87
    linear_combination r6840
  · linear_combination r6237

theorem seg48Blind_rows89 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6238 rho ∧ Seg48.relationRow6841 rho ∧ Seg48.relationRow6842 rho ∧ Seg48.relationRow6843 rho ∧ Seg48.relationRow6844 rho ∧ Seg48.relationRow6845 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6238, _⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6841, r6842, r6843, r6844, r6845, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6238, r6841, r6842, r6843, r6844, r6845⟩

theorem seg48Blind_rung89 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38995 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 89)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      89 (Bool.toZMod bit) (seg48BlindAccState rho 89)
      (seg48BlindAccState rho 90) := by
  obtain ⟨r6238, r6841, r6842, r6843, r6844, r6845⟩ := seg48Blind_rows89 rho h
  unfold Seg48.relationRow6238 at r6238

  unfold Seg48.relationRow6841 at r6841

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6841

  unfold Seg48.relationRow6842 at r6842

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6842

  unfold Seg48.relationRow6843 at r6843

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6843

  unfold Seg48.relationRow6844 at r6844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6844

  unfold Seg48.relationRow6845 at r6845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6845

  have hnextx : seg48BlindDeltaX89 rho =
      seg48BlindDeltaX88 rho + rho 39600 := by
    unfold seg48BlindDeltaX89 seg48BlindDeltaX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 88]

    ring

  have hnexty : seg48BlindDeltaY89 rho =
      seg48BlindDeltaY88 rho + rho 39601 := by
    unfold seg48BlindDeltaY89 seg48BlindDeltaY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 88]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 89
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX88 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY88 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX89 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY89 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung89_wide (rho 38906) (rho 38995) (seg48BlindDeltaX88 rho) (seg48BlindDeltaY88 rho) (rho 39597) (rho 39598) (rho 39599) (rho 39600) (rho 39601) hacc
  · unfold seg48BlindDeltaX88 seg48BlindDeltaY88
    linear_combination r6841
  · unfold seg48BlindDeltaX88 seg48BlindDeltaY88
    linear_combination r6842
  · unfold seg48BlindDeltaX88 seg48BlindDeltaY88
    linear_combination r6843
  · unfold seg48BlindDeltaX88
    linear_combination r6844
  · unfold seg48BlindDeltaY88
    linear_combination r6845
  · linear_combination r6238

theorem seg48Blind_rows90 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6239 rho ∧ Seg48.relationRow6846 rho ∧ Seg48.relationRow6847 rho ∧ Seg48.relationRow6848 rho ∧ Seg48.relationRow6849 rho ∧ Seg48.relationRow6850 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6239⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6846, r6847, r6848, r6849, r6850, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6239, r6846, r6847, r6848, r6849, r6850⟩

theorem seg48Blind_rung90 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38996 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 90)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      90 (Bool.toZMod bit) (seg48BlindAccState rho 90)
      (seg48BlindAccState rho 91) := by
  obtain ⟨r6239, r6846, r6847, r6848, r6849, r6850⟩ := seg48Blind_rows90 rho h
  unfold Seg48.relationRow6239 at r6239

  unfold Seg48.relationRow6846 at r6846

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6846

  unfold Seg48.relationRow6847 at r6847

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6847

  unfold Seg48.relationRow6848 at r6848

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6848

  unfold Seg48.relationRow6849 at r6849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6849

  unfold Seg48.relationRow6850 at r6850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6850

  have hnextx : seg48BlindDeltaX90 rho =
      seg48BlindDeltaX89 rho + rho 39605 := by
    unfold seg48BlindDeltaX90 seg48BlindDeltaX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 89]

    ring

  have hnexty : seg48BlindDeltaY90 rho =
      seg48BlindDeltaY89 rho + rho 39606 := by
    unfold seg48BlindDeltaY90 seg48BlindDeltaY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 89]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 90
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX89 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY89 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX90 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY90 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung90_wide (rho 38906) (rho 38996) (seg48BlindDeltaX89 rho) (seg48BlindDeltaY89 rho) (rho 39602) (rho 39603) (rho 39604) (rho 39605) (rho 39606) hacc
  · unfold seg48BlindDeltaX89 seg48BlindDeltaY89
    linear_combination r6846
  · unfold seg48BlindDeltaX89 seg48BlindDeltaY89
    linear_combination r6847
  · unfold seg48BlindDeltaX89 seg48BlindDeltaY89
    linear_combination r6848
  · unfold seg48BlindDeltaX89
    linear_combination r6849
  · unfold seg48BlindDeltaY89
    linear_combination r6850
  · linear_combination r6239

theorem seg48Blind_hstep_c8 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 81 ≤ i → i < 91 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc
  · exact seg48Blind_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc
  · exact seg48Blind_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc
  · exact seg48Blind_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc
  · exact seg48Blind_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc
  · exact seg48Blind_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc
  · exact seg48Blind_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc
  · exact seg48Blind_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc
  · exact seg48Blind_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc
  · exact seg48Blind_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

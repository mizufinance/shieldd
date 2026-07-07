import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6230 rho ∧ Seg52.relationRow6801 rho ∧ Seg52.relationRow6802 rho ∧ Seg52.relationRow6803 rho ∧ Seg52.relationRow6804 rho ∧ Seg52.relationRow6805 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6230, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, r6801, r6802, r6803, r6804, r6805, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6230, r6801, r6802, r6803, r6804, r6805⟩

theorem seg52Blind_rung81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50619 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 81)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      81 (Bool.toZMod bit) (seg52BlindAccState rho 81)
      (seg52BlindAccState rho 82) := by
  obtain ⟨r6230, r6801, r6802, r6803, r6804, r6805⟩ := seg52Blind_rows81 rho h
  unfold Seg52.relationRow6230 at r6230

  unfold Seg52.relationRow6801 at r6801

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6801

  unfold Seg52.relationRow6802 at r6802

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6802

  unfold Seg52.relationRow6803 at r6803

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6803

  unfold Seg52.relationRow6804 at r6804

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6804

  unfold Seg52.relationRow6805 at r6805

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6805

  have hnextx : seg52BlindDeltaX81 rho =
      seg52BlindDeltaX80 rho + rho 51192 := by
    unfold seg52BlindDeltaX81 seg52BlindDeltaX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 80]

    ring

  have hnexty : seg52BlindDeltaY81 rho =
      seg52BlindDeltaY80 rho + rho 51193 := by
    unfold seg52BlindDeltaY81 seg52BlindDeltaY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 80]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 81
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX80 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY80 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX81 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY81 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung81_wide (rho 50538) (rho 50619) (seg52BlindDeltaX80 rho) (seg52BlindDeltaY80 rho) (rho 51189) (rho 51190) (rho 51191) (rho 51192) (rho 51193) hacc
  · unfold seg52BlindDeltaX80 seg52BlindDeltaY80
    linear_combination r6801
  · unfold seg52BlindDeltaX80 seg52BlindDeltaY80
    linear_combination r6802
  · unfold seg52BlindDeltaX80 seg52BlindDeltaY80
    linear_combination r6803
  · unfold seg52BlindDeltaX80
    linear_combination r6804
  · unfold seg52BlindDeltaY80
    linear_combination r6805
  · linear_combination r6230

theorem seg52Blind_rows82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6231 rho ∧ Seg52.relationRow6806 rho ∧ Seg52.relationRow6807 rho ∧ Seg52.relationRow6808 rho ∧ Seg52.relationRow6809 rho ∧ Seg52.relationRow6810 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6231, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, r6806, r6807, r6808, r6809, r6810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6231, r6806, r6807, r6808, r6809, r6810⟩

theorem seg52Blind_rung82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50620 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 82)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      82 (Bool.toZMod bit) (seg52BlindAccState rho 82)
      (seg52BlindAccState rho 83) := by
  obtain ⟨r6231, r6806, r6807, r6808, r6809, r6810⟩ := seg52Blind_rows82 rho h
  unfold Seg52.relationRow6231 at r6231

  unfold Seg52.relationRow6806 at r6806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6806

  unfold Seg52.relationRow6807 at r6807

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6807

  unfold Seg52.relationRow6808 at r6808

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6808

  unfold Seg52.relationRow6809 at r6809

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6809

  unfold Seg52.relationRow6810 at r6810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6810

  have hnextx : seg52BlindDeltaX82 rho =
      seg52BlindDeltaX81 rho + rho 51197 := by
    unfold seg52BlindDeltaX82 seg52BlindDeltaX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 81]

    ring

  have hnexty : seg52BlindDeltaY82 rho =
      seg52BlindDeltaY81 rho + rho 51198 := by
    unfold seg52BlindDeltaY82 seg52BlindDeltaY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 81]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 82
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX81 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY81 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX82 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY82 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung82_wide (rho 50538) (rho 50620) (seg52BlindDeltaX81 rho) (seg52BlindDeltaY81 rho) (rho 51194) (rho 51195) (rho 51196) (rho 51197) (rho 51198) hacc
  · unfold seg52BlindDeltaX81 seg52BlindDeltaY81
    linear_combination r6806
  · unfold seg52BlindDeltaX81 seg52BlindDeltaY81
    linear_combination r6807
  · unfold seg52BlindDeltaX81 seg52BlindDeltaY81
    linear_combination r6808
  · unfold seg52BlindDeltaX81
    linear_combination r6809
  · unfold seg52BlindDeltaY81
    linear_combination r6810
  · linear_combination r6231

theorem seg52Blind_rows83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6232 rho ∧ Seg52.relationRow6811 rho ∧ Seg52.relationRow6812 rho ∧ Seg52.relationRow6813 rho ∧ Seg52.relationRow6814 rho ∧ Seg52.relationRow6815 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6232, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6811, r6812, r6813, r6814, r6815, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6232, r6811, r6812, r6813, r6814, r6815⟩

theorem seg52Blind_rung83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50621 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 83)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      83 (Bool.toZMod bit) (seg52BlindAccState rho 83)
      (seg52BlindAccState rho 84) := by
  obtain ⟨r6232, r6811, r6812, r6813, r6814, r6815⟩ := seg52Blind_rows83 rho h
  unfold Seg52.relationRow6232 at r6232

  unfold Seg52.relationRow6811 at r6811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6811

  unfold Seg52.relationRow6812 at r6812

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6812

  unfold Seg52.relationRow6813 at r6813

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6813

  unfold Seg52.relationRow6814 at r6814

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6814

  unfold Seg52.relationRow6815 at r6815

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6815

  have hnextx : seg52BlindDeltaX83 rho =
      seg52BlindDeltaX82 rho + rho 51202 := by
    unfold seg52BlindDeltaX83 seg52BlindDeltaX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 82]

    ring

  have hnexty : seg52BlindDeltaY83 rho =
      seg52BlindDeltaY82 rho + rho 51203 := by
    unfold seg52BlindDeltaY83 seg52BlindDeltaY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 82]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 83
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX82 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY82 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX83 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY83 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung83_wide (rho 50538) (rho 50621) (seg52BlindDeltaX82 rho) (seg52BlindDeltaY82 rho) (rho 51199) (rho 51200) (rho 51201) (rho 51202) (rho 51203) hacc
  · unfold seg52BlindDeltaX82 seg52BlindDeltaY82
    linear_combination r6811
  · unfold seg52BlindDeltaX82 seg52BlindDeltaY82
    linear_combination r6812
  · unfold seg52BlindDeltaX82 seg52BlindDeltaY82
    linear_combination r6813
  · unfold seg52BlindDeltaX82
    linear_combination r6814
  · unfold seg52BlindDeltaY82
    linear_combination r6815
  · linear_combination r6232

theorem seg52Blind_rows84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6233 rho ∧ Seg52.relationRow6816 rho ∧ Seg52.relationRow6817 rho ∧ Seg52.relationRow6818 rho ∧ Seg52.relationRow6819 rho ∧ Seg52.relationRow6820 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6233, _, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6816, r6817, r6818, r6819, r6820, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6233, r6816, r6817, r6818, r6819, r6820⟩

theorem seg52Blind_rung84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50622 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 84)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      84 (Bool.toZMod bit) (seg52BlindAccState rho 84)
      (seg52BlindAccState rho 85) := by
  obtain ⟨r6233, r6816, r6817, r6818, r6819, r6820⟩ := seg52Blind_rows84 rho h
  unfold Seg52.relationRow6233 at r6233

  unfold Seg52.relationRow6816 at r6816

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6816

  unfold Seg52.relationRow6817 at r6817

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6817

  unfold Seg52.relationRow6818 at r6818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6818

  unfold Seg52.relationRow6819 at r6819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6819

  unfold Seg52.relationRow6820 at r6820

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6820

  have hnextx : seg52BlindDeltaX84 rho =
      seg52BlindDeltaX83 rho + rho 51207 := by
    unfold seg52BlindDeltaX84 seg52BlindDeltaX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 83]

    ring

  have hnexty : seg52BlindDeltaY84 rho =
      seg52BlindDeltaY83 rho + rho 51208 := by
    unfold seg52BlindDeltaY84 seg52BlindDeltaY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 83]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 84
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX83 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY83 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX84 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY84 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung84_wide (rho 50538) (rho 50622) (seg52BlindDeltaX83 rho) (seg52BlindDeltaY83 rho) (rho 51204) (rho 51205) (rho 51206) (rho 51207) (rho 51208) hacc
  · unfold seg52BlindDeltaX83 seg52BlindDeltaY83
    linear_combination r6816
  · unfold seg52BlindDeltaX83 seg52BlindDeltaY83
    linear_combination r6817
  · unfold seg52BlindDeltaX83 seg52BlindDeltaY83
    linear_combination r6818
  · unfold seg52BlindDeltaX83
    linear_combination r6819
  · unfold seg52BlindDeltaY83
    linear_combination r6820
  · linear_combination r6233

theorem seg52Blind_rows85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6234 rho ∧ Seg52.relationRow6821 rho ∧ Seg52.relationRow6822 rho ∧ Seg52.relationRow6823 rho ∧ Seg52.relationRow6824 rho ∧ Seg52.relationRow6825 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6234, _, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6821, r6822, r6823, r6824, r6825, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6234, r6821, r6822, r6823, r6824, r6825⟩

theorem seg52Blind_rung85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50623 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 85)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      85 (Bool.toZMod bit) (seg52BlindAccState rho 85)
      (seg52BlindAccState rho 86) := by
  obtain ⟨r6234, r6821, r6822, r6823, r6824, r6825⟩ := seg52Blind_rows85 rho h
  unfold Seg52.relationRow6234 at r6234

  unfold Seg52.relationRow6821 at r6821

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6821

  unfold Seg52.relationRow6822 at r6822

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6822

  unfold Seg52.relationRow6823 at r6823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6823

  unfold Seg52.relationRow6824 at r6824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6824

  unfold Seg52.relationRow6825 at r6825

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6825

  have hnextx : seg52BlindDeltaX85 rho =
      seg52BlindDeltaX84 rho + rho 51212 := by
    unfold seg52BlindDeltaX85 seg52BlindDeltaX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 84]

    ring

  have hnexty : seg52BlindDeltaY85 rho =
      seg52BlindDeltaY84 rho + rho 51213 := by
    unfold seg52BlindDeltaY85 seg52BlindDeltaY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 84]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 85
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX84 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY84 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX85 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY85 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung85_wide (rho 50538) (rho 50623) (seg52BlindDeltaX84 rho) (seg52BlindDeltaY84 rho) (rho 51209) (rho 51210) (rho 51211) (rho 51212) (rho 51213) hacc
  · unfold seg52BlindDeltaX84 seg52BlindDeltaY84
    linear_combination r6821
  · unfold seg52BlindDeltaX84 seg52BlindDeltaY84
    linear_combination r6822
  · unfold seg52BlindDeltaX84 seg52BlindDeltaY84
    linear_combination r6823
  · unfold seg52BlindDeltaX84
    linear_combination r6824
  · unfold seg52BlindDeltaY84
    linear_combination r6825
  · linear_combination r6234

theorem seg52Blind_rows86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6235 rho ∧ Seg52.relationRow6826 rho ∧ Seg52.relationRow6827 rho ∧ Seg52.relationRow6828 rho ∧ Seg52.relationRow6829 rho ∧ Seg52.relationRow6830 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6235, _, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6826, r6827, r6828, r6829, r6830, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6235, r6826, r6827, r6828, r6829, r6830⟩

theorem seg52Blind_rung86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50624 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 86)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      86 (Bool.toZMod bit) (seg52BlindAccState rho 86)
      (seg52BlindAccState rho 87) := by
  obtain ⟨r6235, r6826, r6827, r6828, r6829, r6830⟩ := seg52Blind_rows86 rho h
  unfold Seg52.relationRow6235 at r6235

  unfold Seg52.relationRow6826 at r6826

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6826

  unfold Seg52.relationRow6827 at r6827

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6827

  unfold Seg52.relationRow6828 at r6828

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6828

  unfold Seg52.relationRow6829 at r6829

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6829

  unfold Seg52.relationRow6830 at r6830

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6830

  have hnextx : seg52BlindDeltaX86 rho =
      seg52BlindDeltaX85 rho + rho 51217 := by
    unfold seg52BlindDeltaX86 seg52BlindDeltaX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 85]

    ring

  have hnexty : seg52BlindDeltaY86 rho =
      seg52BlindDeltaY85 rho + rho 51218 := by
    unfold seg52BlindDeltaY86 seg52BlindDeltaY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 85]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 86
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX85 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY85 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX86 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY86 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung86_wide (rho 50538) (rho 50624) (seg52BlindDeltaX85 rho) (seg52BlindDeltaY85 rho) (rho 51214) (rho 51215) (rho 51216) (rho 51217) (rho 51218) hacc
  · unfold seg52BlindDeltaX85 seg52BlindDeltaY85
    linear_combination r6826
  · unfold seg52BlindDeltaX85 seg52BlindDeltaY85
    linear_combination r6827
  · unfold seg52BlindDeltaX85 seg52BlindDeltaY85
    linear_combination r6828
  · unfold seg52BlindDeltaX85
    linear_combination r6829
  · unfold seg52BlindDeltaY85
    linear_combination r6830
  · linear_combination r6235

theorem seg52Blind_rows87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6236 rho ∧ Seg52.relationRow6831 rho ∧ Seg52.relationRow6832 rho ∧ Seg52.relationRow6833 rho ∧ Seg52.relationRow6834 rho ∧ Seg52.relationRow6835 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6236, _, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6831, r6832, r6833, r6834, r6835, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6236, r6831, r6832, r6833, r6834, r6835⟩

theorem seg52Blind_rung87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50625 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 87)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      87 (Bool.toZMod bit) (seg52BlindAccState rho 87)
      (seg52BlindAccState rho 88) := by
  obtain ⟨r6236, r6831, r6832, r6833, r6834, r6835⟩ := seg52Blind_rows87 rho h
  unfold Seg52.relationRow6236 at r6236

  unfold Seg52.relationRow6831 at r6831

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6831

  unfold Seg52.relationRow6832 at r6832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6832

  unfold Seg52.relationRow6833 at r6833

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6833

  unfold Seg52.relationRow6834 at r6834

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6834

  unfold Seg52.relationRow6835 at r6835

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6835

  have hnextx : seg52BlindDeltaX87 rho =
      seg52BlindDeltaX86 rho + rho 51222 := by
    unfold seg52BlindDeltaX87 seg52BlindDeltaX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 86]

    ring

  have hnexty : seg52BlindDeltaY87 rho =
      seg52BlindDeltaY86 rho + rho 51223 := by
    unfold seg52BlindDeltaY87 seg52BlindDeltaY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 86]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 87
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX86 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY86 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX87 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY87 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung87_wide (rho 50538) (rho 50625) (seg52BlindDeltaX86 rho) (seg52BlindDeltaY86 rho) (rho 51219) (rho 51220) (rho 51221) (rho 51222) (rho 51223) hacc
  · unfold seg52BlindDeltaX86 seg52BlindDeltaY86
    linear_combination r6831
  · unfold seg52BlindDeltaX86 seg52BlindDeltaY86
    linear_combination r6832
  · unfold seg52BlindDeltaX86 seg52BlindDeltaY86
    linear_combination r6833
  · unfold seg52BlindDeltaX86
    linear_combination r6834
  · unfold seg52BlindDeltaY86
    linear_combination r6835
  · linear_combination r6236

theorem seg52Blind_rows88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6237 rho ∧ Seg52.relationRow6836 rho ∧ Seg52.relationRow6837 rho ∧ Seg52.relationRow6838 rho ∧ Seg52.relationRow6839 rho ∧ Seg52.relationRow6840 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6237, _, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6836, r6837, r6838, r6839, r6840, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6237, r6836, r6837, r6838, r6839, r6840⟩

theorem seg52Blind_rung88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50626 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 88)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      88 (Bool.toZMod bit) (seg52BlindAccState rho 88)
      (seg52BlindAccState rho 89) := by
  obtain ⟨r6237, r6836, r6837, r6838, r6839, r6840⟩ := seg52Blind_rows88 rho h
  unfold Seg52.relationRow6237 at r6237

  unfold Seg52.relationRow6836 at r6836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6836

  unfold Seg52.relationRow6837 at r6837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6837

  unfold Seg52.relationRow6838 at r6838

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6838

  unfold Seg52.relationRow6839 at r6839

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6839

  unfold Seg52.relationRow6840 at r6840

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6840

  have hnextx : seg52BlindDeltaX88 rho =
      seg52BlindDeltaX87 rho + rho 51227 := by
    unfold seg52BlindDeltaX88 seg52BlindDeltaX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 87]

    ring

  have hnexty : seg52BlindDeltaY88 rho =
      seg52BlindDeltaY87 rho + rho 51228 := by
    unfold seg52BlindDeltaY88 seg52BlindDeltaY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 87]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 88
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX87 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY87 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX88 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY88 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung88_wide (rho 50538) (rho 50626) (seg52BlindDeltaX87 rho) (seg52BlindDeltaY87 rho) (rho 51224) (rho 51225) (rho 51226) (rho 51227) (rho 51228) hacc
  · unfold seg52BlindDeltaX87 seg52BlindDeltaY87
    linear_combination r6836
  · unfold seg52BlindDeltaX87 seg52BlindDeltaY87
    linear_combination r6837
  · unfold seg52BlindDeltaX87 seg52BlindDeltaY87
    linear_combination r6838
  · unfold seg52BlindDeltaX87
    linear_combination r6839
  · unfold seg52BlindDeltaY87
    linear_combination r6840
  · linear_combination r6237

theorem seg52Blind_rows89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6238 rho ∧ Seg52.relationRow6841 rho ∧ Seg52.relationRow6842 rho ∧ Seg52.relationRow6843 rho ∧ Seg52.relationRow6844 rho ∧ Seg52.relationRow6845 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6238, _⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6841, r6842, r6843, r6844, r6845, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6238, r6841, r6842, r6843, r6844, r6845⟩

theorem seg52Blind_rung89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50627 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 89)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      89 (Bool.toZMod bit) (seg52BlindAccState rho 89)
      (seg52BlindAccState rho 90) := by
  obtain ⟨r6238, r6841, r6842, r6843, r6844, r6845⟩ := seg52Blind_rows89 rho h
  unfold Seg52.relationRow6238 at r6238

  unfold Seg52.relationRow6841 at r6841

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6841

  unfold Seg52.relationRow6842 at r6842

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6842

  unfold Seg52.relationRow6843 at r6843

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6843

  unfold Seg52.relationRow6844 at r6844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6844

  unfold Seg52.relationRow6845 at r6845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6845

  have hnextx : seg52BlindDeltaX89 rho =
      seg52BlindDeltaX88 rho + rho 51232 := by
    unfold seg52BlindDeltaX89 seg52BlindDeltaX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 88]

    ring

  have hnexty : seg52BlindDeltaY89 rho =
      seg52BlindDeltaY88 rho + rho 51233 := by
    unfold seg52BlindDeltaY89 seg52BlindDeltaY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 88]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 89
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX88 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY88 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX89 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY89 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung89_wide (rho 50538) (rho 50627) (seg52BlindDeltaX88 rho) (seg52BlindDeltaY88 rho) (rho 51229) (rho 51230) (rho 51231) (rho 51232) (rho 51233) hacc
  · unfold seg52BlindDeltaX88 seg52BlindDeltaY88
    linear_combination r6841
  · unfold seg52BlindDeltaX88 seg52BlindDeltaY88
    linear_combination r6842
  · unfold seg52BlindDeltaX88 seg52BlindDeltaY88
    linear_combination r6843
  · unfold seg52BlindDeltaX88
    linear_combination r6844
  · unfold seg52BlindDeltaY88
    linear_combination r6845
  · linear_combination r6238

theorem seg52Blind_rows90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6239 rho ∧ Seg52.relationRow6846 rho ∧ Seg52.relationRow6847 rho ∧ Seg52.relationRow6848 rho ∧ Seg52.relationRow6849 rho ∧ Seg52.relationRow6850 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6239⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6846, r6847, r6848, r6849, r6850, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6239, r6846, r6847, r6848, r6849, r6850⟩

theorem seg52Blind_rung90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50628 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 90)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      90 (Bool.toZMod bit) (seg52BlindAccState rho 90)
      (seg52BlindAccState rho 91) := by
  obtain ⟨r6239, r6846, r6847, r6848, r6849, r6850⟩ := seg52Blind_rows90 rho h
  unfold Seg52.relationRow6239 at r6239

  unfold Seg52.relationRow6846 at r6846

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6846

  unfold Seg52.relationRow6847 at r6847

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6847

  unfold Seg52.relationRow6848 at r6848

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6848

  unfold Seg52.relationRow6849 at r6849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6849

  unfold Seg52.relationRow6850 at r6850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6850

  have hnextx : seg52BlindDeltaX90 rho =
      seg52BlindDeltaX89 rho + rho 51237 := by
    unfold seg52BlindDeltaX90 seg52BlindDeltaX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 89]

    ring

  have hnexty : seg52BlindDeltaY90 rho =
      seg52BlindDeltaY89 rho + rho 51238 := by
    unfold seg52BlindDeltaY90 seg52BlindDeltaY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 89]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 90
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX89 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY89 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX90 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY90 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung90_wide (rho 50538) (rho 50628) (seg52BlindDeltaX89 rho) (seg52BlindDeltaY89 rho) (rho 51234) (rho 51235) (rho 51236) (rho 51237) (rho 51238) hacc
  · unfold seg52BlindDeltaX89 seg52BlindDeltaY89
    linear_combination r6846
  · unfold seg52BlindDeltaX89 seg52BlindDeltaY89
    linear_combination r6847
  · unfold seg52BlindDeltaX89 seg52BlindDeltaY89
    linear_combination r6848
  · unfold seg52BlindDeltaX89
    linear_combination r6849
  · unfold seg52BlindDeltaY89
    linear_combination r6850
  · linear_combination r6239

theorem seg52Blind_hstep_c8 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 81 ≤ i → i < 91 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc
  · exact seg52Blind_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc
  · exact seg52Blind_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc
  · exact seg52Blind_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc
  · exact seg52Blind_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc
  · exact seg52Blind_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc
  · exact seg52Blind_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc
  · exact seg52Blind_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc
  · exact seg52Blind_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc
  · exact seg52Blind_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

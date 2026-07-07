import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6220 rho ∧ Seg52.relationRow6751 rho ∧ Seg52.relationRow6752 rho ∧ Seg52.relationRow6753 rho ∧ Seg52.relationRow6754 rho ∧ Seg52.relationRow6755 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6220, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6751, r6752, r6753, r6754, r6755, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6220, r6751, r6752, r6753, r6754, r6755⟩

theorem seg52Blind_rung71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50609 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 71)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      71 (Bool.toZMod bit) (seg52BlindAccState rho 71)
      (seg52BlindAccState rho 72) := by
  obtain ⟨r6220, r6751, r6752, r6753, r6754, r6755⟩ := seg52Blind_rows71 rho h
  unfold Seg52.relationRow6220 at r6220

  unfold Seg52.relationRow6751 at r6751

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6751

  unfold Seg52.relationRow6752 at r6752

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6752

  unfold Seg52.relationRow6753 at r6753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6753

  unfold Seg52.relationRow6754 at r6754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6754

  unfold Seg52.relationRow6755 at r6755

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6755

  have hnextx : seg52BlindDeltaX71 rho =
      seg52BlindDeltaX70 rho + rho 51142 := by
    unfold seg52BlindDeltaX71 seg52BlindDeltaX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 70]

    ring

  have hnexty : seg52BlindDeltaY71 rho =
      seg52BlindDeltaY70 rho + rho 51143 := by
    unfold seg52BlindDeltaY71 seg52BlindDeltaY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 70]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 71
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX70 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY70 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX71 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY71 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung71_wide (rho 50538) (rho 50609) (seg52BlindDeltaX70 rho) (seg52BlindDeltaY70 rho) (rho 51139) (rho 51140) (rho 51141) (rho 51142) (rho 51143) hacc
  · unfold seg52BlindDeltaX70 seg52BlindDeltaY70
    linear_combination r6751
  · unfold seg52BlindDeltaX70 seg52BlindDeltaY70
    linear_combination r6752
  · unfold seg52BlindDeltaX70 seg52BlindDeltaY70
    linear_combination r6753
  · unfold seg52BlindDeltaX70
    linear_combination r6754
  · unfold seg52BlindDeltaY70
    linear_combination r6755
  · linear_combination r6220

theorem seg52Blind_rows72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6221 rho ∧ Seg52.relationRow6756 rho ∧ Seg52.relationRow6757 rho ∧ Seg52.relationRow6758 rho ∧ Seg52.relationRow6759 rho ∧ Seg52.relationRow6760 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6221, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6756, r6757, r6758, r6759, r6760, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6221, r6756, r6757, r6758, r6759, r6760⟩

theorem seg52Blind_rung72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50610 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 72)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      72 (Bool.toZMod bit) (seg52BlindAccState rho 72)
      (seg52BlindAccState rho 73) := by
  obtain ⟨r6221, r6756, r6757, r6758, r6759, r6760⟩ := seg52Blind_rows72 rho h
  unfold Seg52.relationRow6221 at r6221

  unfold Seg52.relationRow6756 at r6756

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6756

  unfold Seg52.relationRow6757 at r6757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6757

  unfold Seg52.relationRow6758 at r6758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6758

  unfold Seg52.relationRow6759 at r6759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6759

  unfold Seg52.relationRow6760 at r6760

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6760

  have hnextx : seg52BlindDeltaX72 rho =
      seg52BlindDeltaX71 rho + rho 51147 := by
    unfold seg52BlindDeltaX72 seg52BlindDeltaX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 71]

    ring

  have hnexty : seg52BlindDeltaY72 rho =
      seg52BlindDeltaY71 rho + rho 51148 := by
    unfold seg52BlindDeltaY72 seg52BlindDeltaY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 71]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 72
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX71 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY71 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX72 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY72 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung72_wide (rho 50538) (rho 50610) (seg52BlindDeltaX71 rho) (seg52BlindDeltaY71 rho) (rho 51144) (rho 51145) (rho 51146) (rho 51147) (rho 51148) hacc
  · unfold seg52BlindDeltaX71 seg52BlindDeltaY71
    linear_combination r6756
  · unfold seg52BlindDeltaX71 seg52BlindDeltaY71
    linear_combination r6757
  · unfold seg52BlindDeltaX71 seg52BlindDeltaY71
    linear_combination r6758
  · unfold seg52BlindDeltaX71
    linear_combination r6759
  · unfold seg52BlindDeltaY71
    linear_combination r6760
  · linear_combination r6221

theorem seg52Blind_rows73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6222 rho ∧ Seg52.relationRow6761 rho ∧ Seg52.relationRow6762 rho ∧ Seg52.relationRow6763 rho ∧ Seg52.relationRow6764 rho ∧ Seg52.relationRow6765 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6761, r6762, r6763, r6764, r6765, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6222, r6761, r6762, r6763, r6764, r6765⟩

theorem seg52Blind_rung73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50611 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 73)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      73 (Bool.toZMod bit) (seg52BlindAccState rho 73)
      (seg52BlindAccState rho 74) := by
  obtain ⟨r6222, r6761, r6762, r6763, r6764, r6765⟩ := seg52Blind_rows73 rho h
  unfold Seg52.relationRow6222 at r6222

  unfold Seg52.relationRow6761 at r6761

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6761

  unfold Seg52.relationRow6762 at r6762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6762

  unfold Seg52.relationRow6763 at r6763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6763

  unfold Seg52.relationRow6764 at r6764

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6764

  unfold Seg52.relationRow6765 at r6765

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6765

  have hnextx : seg52BlindDeltaX73 rho =
      seg52BlindDeltaX72 rho + rho 51152 := by
    unfold seg52BlindDeltaX73 seg52BlindDeltaX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 72]

    ring

  have hnexty : seg52BlindDeltaY73 rho =
      seg52BlindDeltaY72 rho + rho 51153 := by
    unfold seg52BlindDeltaY73 seg52BlindDeltaY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 72]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 73
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX72 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY72 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX73 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY73 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung73_wide (rho 50538) (rho 50611) (seg52BlindDeltaX72 rho) (seg52BlindDeltaY72 rho) (rho 51149) (rho 51150) (rho 51151) (rho 51152) (rho 51153) hacc
  · unfold seg52BlindDeltaX72 seg52BlindDeltaY72
    linear_combination r6761
  · unfold seg52BlindDeltaX72 seg52BlindDeltaY72
    linear_combination r6762
  · unfold seg52BlindDeltaX72 seg52BlindDeltaY72
    linear_combination r6763
  · unfold seg52BlindDeltaX72
    linear_combination r6764
  · unfold seg52BlindDeltaY72
    linear_combination r6765
  · linear_combination r6222

theorem seg52Blind_rows74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6223 rho ∧ Seg52.relationRow6766 rho ∧ Seg52.relationRow6767 rho ∧ Seg52.relationRow6768 rho ∧ Seg52.relationRow6769 rho ∧ Seg52.relationRow6770 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6223, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6766, r6767, r6768, r6769, r6770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6223, r6766, r6767, r6768, r6769, r6770⟩

theorem seg52Blind_rung74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50612 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 74)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      74 (Bool.toZMod bit) (seg52BlindAccState rho 74)
      (seg52BlindAccState rho 75) := by
  obtain ⟨r6223, r6766, r6767, r6768, r6769, r6770⟩ := seg52Blind_rows74 rho h
  unfold Seg52.relationRow6223 at r6223

  unfold Seg52.relationRow6766 at r6766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6766

  unfold Seg52.relationRow6767 at r6767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6767

  unfold Seg52.relationRow6768 at r6768

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6768

  unfold Seg52.relationRow6769 at r6769

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6769

  unfold Seg52.relationRow6770 at r6770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6770

  have hnextx : seg52BlindDeltaX74 rho =
      seg52BlindDeltaX73 rho + rho 51157 := by
    unfold seg52BlindDeltaX74 seg52BlindDeltaX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 73]

    ring

  have hnexty : seg52BlindDeltaY74 rho =
      seg52BlindDeltaY73 rho + rho 51158 := by
    unfold seg52BlindDeltaY74 seg52BlindDeltaY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 73]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 74
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX73 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY73 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX74 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY74 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung74_wide (rho 50538) (rho 50612) (seg52BlindDeltaX73 rho) (seg52BlindDeltaY73 rho) (rho 51154) (rho 51155) (rho 51156) (rho 51157) (rho 51158) hacc
  · unfold seg52BlindDeltaX73 seg52BlindDeltaY73
    linear_combination r6766
  · unfold seg52BlindDeltaX73 seg52BlindDeltaY73
    linear_combination r6767
  · unfold seg52BlindDeltaX73 seg52BlindDeltaY73
    linear_combination r6768
  · unfold seg52BlindDeltaX73
    linear_combination r6769
  · unfold seg52BlindDeltaY73
    linear_combination r6770
  · linear_combination r6223

theorem seg52Blind_rows75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6224 rho ∧ Seg52.relationRow6771 rho ∧ Seg52.relationRow6772 rho ∧ Seg52.relationRow6773 rho ∧ Seg52.relationRow6774 rho ∧ Seg52.relationRow6775 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6771, r6772, r6773, r6774, r6775, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6224, r6771, r6772, r6773, r6774, r6775⟩

theorem seg52Blind_rung75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50613 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 75)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      75 (Bool.toZMod bit) (seg52BlindAccState rho 75)
      (seg52BlindAccState rho 76) := by
  obtain ⟨r6224, r6771, r6772, r6773, r6774, r6775⟩ := seg52Blind_rows75 rho h
  unfold Seg52.relationRow6224 at r6224

  unfold Seg52.relationRow6771 at r6771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6771

  unfold Seg52.relationRow6772 at r6772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6772

  unfold Seg52.relationRow6773 at r6773

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6773

  unfold Seg52.relationRow6774 at r6774

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6774

  unfold Seg52.relationRow6775 at r6775

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6775

  have hnextx : seg52BlindDeltaX75 rho =
      seg52BlindDeltaX74 rho + rho 51162 := by
    unfold seg52BlindDeltaX75 seg52BlindDeltaX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 74]

    ring

  have hnexty : seg52BlindDeltaY75 rho =
      seg52BlindDeltaY74 rho + rho 51163 := by
    unfold seg52BlindDeltaY75 seg52BlindDeltaY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 74]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 75
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX74 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY74 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX75 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY75 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung75_wide (rho 50538) (rho 50613) (seg52BlindDeltaX74 rho) (seg52BlindDeltaY74 rho) (rho 51159) (rho 51160) (rho 51161) (rho 51162) (rho 51163) hacc
  · unfold seg52BlindDeltaX74 seg52BlindDeltaY74
    linear_combination r6771
  · unfold seg52BlindDeltaX74 seg52BlindDeltaY74
    linear_combination r6772
  · unfold seg52BlindDeltaX74 seg52BlindDeltaY74
    linear_combination r6773
  · unfold seg52BlindDeltaX74
    linear_combination r6774
  · unfold seg52BlindDeltaY74
    linear_combination r6775
  · linear_combination r6224

theorem seg52Blind_rows76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6225 rho ∧ Seg52.relationRow6776 rho ∧ Seg52.relationRow6777 rho ∧ Seg52.relationRow6778 rho ∧ Seg52.relationRow6779 rho ∧ Seg52.relationRow6780 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6776, r6777, r6778, r6779, r6780, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6225, r6776, r6777, r6778, r6779, r6780⟩

theorem seg52Blind_rung76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50614 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 76)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      76 (Bool.toZMod bit) (seg52BlindAccState rho 76)
      (seg52BlindAccState rho 77) := by
  obtain ⟨r6225, r6776, r6777, r6778, r6779, r6780⟩ := seg52Blind_rows76 rho h
  unfold Seg52.relationRow6225 at r6225

  unfold Seg52.relationRow6776 at r6776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6776

  unfold Seg52.relationRow6777 at r6777

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6777

  unfold Seg52.relationRow6778 at r6778

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6778

  unfold Seg52.relationRow6779 at r6779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6779

  unfold Seg52.relationRow6780 at r6780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6780

  have hnextx : seg52BlindDeltaX76 rho =
      seg52BlindDeltaX75 rho + rho 51167 := by
    unfold seg52BlindDeltaX76 seg52BlindDeltaX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 75]

    ring

  have hnexty : seg52BlindDeltaY76 rho =
      seg52BlindDeltaY75 rho + rho 51168 := by
    unfold seg52BlindDeltaY76 seg52BlindDeltaY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 75]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 76
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX75 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY75 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX76 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY76 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung76_wide (rho 50538) (rho 50614) (seg52BlindDeltaX75 rho) (seg52BlindDeltaY75 rho) (rho 51164) (rho 51165) (rho 51166) (rho 51167) (rho 51168) hacc
  · unfold seg52BlindDeltaX75 seg52BlindDeltaY75
    linear_combination r6776
  · unfold seg52BlindDeltaX75 seg52BlindDeltaY75
    linear_combination r6777
  · unfold seg52BlindDeltaX75 seg52BlindDeltaY75
    linear_combination r6778
  · unfold seg52BlindDeltaX75
    linear_combination r6779
  · unfold seg52BlindDeltaY75
    linear_combination r6780
  · linear_combination r6225

theorem seg52Blind_rows77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6226 rho ∧ Seg52.relationRow6781 rho ∧ Seg52.relationRow6782 rho ∧ Seg52.relationRow6783 rho ∧ Seg52.relationRow6784 rho ∧ Seg52.relationRow6785 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6226, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6781, r6782, r6783, r6784, r6785, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6226, r6781, r6782, r6783, r6784, r6785⟩

theorem seg52Blind_rung77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50615 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 77)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      77 (Bool.toZMod bit) (seg52BlindAccState rho 77)
      (seg52BlindAccState rho 78) := by
  obtain ⟨r6226, r6781, r6782, r6783, r6784, r6785⟩ := seg52Blind_rows77 rho h
  unfold Seg52.relationRow6226 at r6226

  unfold Seg52.relationRow6781 at r6781

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6781

  unfold Seg52.relationRow6782 at r6782

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6782

  unfold Seg52.relationRow6783 at r6783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6783

  unfold Seg52.relationRow6784 at r6784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6784

  unfold Seg52.relationRow6785 at r6785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6785

  have hnextx : seg52BlindDeltaX77 rho =
      seg52BlindDeltaX76 rho + rho 51172 := by
    unfold seg52BlindDeltaX77 seg52BlindDeltaX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 76]

    ring

  have hnexty : seg52BlindDeltaY77 rho =
      seg52BlindDeltaY76 rho + rho 51173 := by
    unfold seg52BlindDeltaY77 seg52BlindDeltaY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 76]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 77
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX76 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY76 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX77 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY77 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung77_wide (rho 50538) (rho 50615) (seg52BlindDeltaX76 rho) (seg52BlindDeltaY76 rho) (rho 51169) (rho 51170) (rho 51171) (rho 51172) (rho 51173) hacc
  · unfold seg52BlindDeltaX76 seg52BlindDeltaY76
    linear_combination r6781
  · unfold seg52BlindDeltaX76 seg52BlindDeltaY76
    linear_combination r6782
  · unfold seg52BlindDeltaX76 seg52BlindDeltaY76
    linear_combination r6783
  · unfold seg52BlindDeltaX76
    linear_combination r6784
  · unfold seg52BlindDeltaY76
    linear_combination r6785
  · linear_combination r6226

theorem seg52Blind_rows78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6227 rho ∧ Seg52.relationRow6786 rho ∧ Seg52.relationRow6787 rho ∧ Seg52.relationRow6788 rho ∧ Seg52.relationRow6789 rho ∧ Seg52.relationRow6790 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6227, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6786, r6787, r6788, r6789, r6790, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6227, r6786, r6787, r6788, r6789, r6790⟩

theorem seg52Blind_rung78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50616 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 78)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      78 (Bool.toZMod bit) (seg52BlindAccState rho 78)
      (seg52BlindAccState rho 79) := by
  obtain ⟨r6227, r6786, r6787, r6788, r6789, r6790⟩ := seg52Blind_rows78 rho h
  unfold Seg52.relationRow6227 at r6227

  unfold Seg52.relationRow6786 at r6786

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6786

  unfold Seg52.relationRow6787 at r6787

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6787

  unfold Seg52.relationRow6788 at r6788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6788

  unfold Seg52.relationRow6789 at r6789

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6789

  unfold Seg52.relationRow6790 at r6790

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6790

  have hnextx : seg52BlindDeltaX78 rho =
      seg52BlindDeltaX77 rho + rho 51177 := by
    unfold seg52BlindDeltaX78 seg52BlindDeltaX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 77]

    ring

  have hnexty : seg52BlindDeltaY78 rho =
      seg52BlindDeltaY77 rho + rho 51178 := by
    unfold seg52BlindDeltaY78 seg52BlindDeltaY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 77]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 78
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX77 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY77 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX78 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY78 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung78_wide (rho 50538) (rho 50616) (seg52BlindDeltaX77 rho) (seg52BlindDeltaY77 rho) (rho 51174) (rho 51175) (rho 51176) (rho 51177) (rho 51178) hacc
  · unfold seg52BlindDeltaX77 seg52BlindDeltaY77
    linear_combination r6786
  · unfold seg52BlindDeltaX77 seg52BlindDeltaY77
    linear_combination r6787
  · unfold seg52BlindDeltaX77 seg52BlindDeltaY77
    linear_combination r6788
  · unfold seg52BlindDeltaX77
    linear_combination r6789
  · unfold seg52BlindDeltaY77
    linear_combination r6790
  · linear_combination r6227

theorem seg52Blind_rows79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6228 rho ∧ Seg52.relationRow6791 rho ∧ Seg52.relationRow6792 rho ∧ Seg52.relationRow6793 rho ∧ Seg52.relationRow6794 rho ∧ Seg52.relationRow6795 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6228, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6791, r6792, r6793, r6794, r6795, _, _, _, _⟩

  exact ⟨r6228, r6791, r6792, r6793, r6794, r6795⟩

theorem seg52Blind_rung79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50617 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 79)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      79 (Bool.toZMod bit) (seg52BlindAccState rho 79)
      (seg52BlindAccState rho 80) := by
  obtain ⟨r6228, r6791, r6792, r6793, r6794, r6795⟩ := seg52Blind_rows79 rho h
  unfold Seg52.relationRow6228 at r6228

  unfold Seg52.relationRow6791 at r6791

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6791

  unfold Seg52.relationRow6792 at r6792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6792

  unfold Seg52.relationRow6793 at r6793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6793

  unfold Seg52.relationRow6794 at r6794

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6794

  unfold Seg52.relationRow6795 at r6795

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6795

  have hnextx : seg52BlindDeltaX79 rho =
      seg52BlindDeltaX78 rho + rho 51182 := by
    unfold seg52BlindDeltaX79 seg52BlindDeltaX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 78]

    ring

  have hnexty : seg52BlindDeltaY79 rho =
      seg52BlindDeltaY78 rho + rho 51183 := by
    unfold seg52BlindDeltaY79 seg52BlindDeltaY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 78]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 79
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX78 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY78 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX79 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY79 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung79_wide (rho 50538) (rho 50617) (seg52BlindDeltaX78 rho) (seg52BlindDeltaY78 rho) (rho 51179) (rho 51180) (rho 51181) (rho 51182) (rho 51183) hacc
  · unfold seg52BlindDeltaX78 seg52BlindDeltaY78
    linear_combination r6791
  · unfold seg52BlindDeltaX78 seg52BlindDeltaY78
    linear_combination r6792
  · unfold seg52BlindDeltaX78 seg52BlindDeltaY78
    linear_combination r6793
  · unfold seg52BlindDeltaX78
    linear_combination r6794
  · unfold seg52BlindDeltaY78
    linear_combination r6795
  · linear_combination r6228

theorem seg52Blind_rows80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6229 rho ∧ Seg52.relationRow6796 rho ∧ Seg52.relationRow6797 rho ∧ Seg52.relationRow6798 rho ∧ Seg52.relationRow6799 rho ∧ Seg52.relationRow6800 rho := by
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

    _, _, _, _, p84, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6229, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6796, r6797, r6798, r6799⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨r6800, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6229, r6796, r6797, r6798, r6799, r6800⟩

theorem seg52Blind_rung80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50618 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 80)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      80 (Bool.toZMod bit) (seg52BlindAccState rho 80)
      (seg52BlindAccState rho 81) := by
  obtain ⟨r6229, r6796, r6797, r6798, r6799, r6800⟩ := seg52Blind_rows80 rho h
  unfold Seg52.relationRow6229 at r6229

  unfold Seg52.relationRow6796 at r6796

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6796

  unfold Seg52.relationRow6797 at r6797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6797

  unfold Seg52.relationRow6798 at r6798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6798

  unfold Seg52.relationRow6799 at r6799

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6799

  unfold Seg52.relationRow6800 at r6800

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6800

  have hnextx : seg52BlindDeltaX80 rho =
      seg52BlindDeltaX79 rho + rho 51187 := by
    unfold seg52BlindDeltaX80 seg52BlindDeltaX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 79]

    ring

  have hnexty : seg52BlindDeltaY80 rho =
      seg52BlindDeltaY79 rho + rho 51188 := by
    unfold seg52BlindDeltaY80 seg52BlindDeltaY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 79]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 80
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX79 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY79 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX80 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY80 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung80_wide (rho 50538) (rho 50618) (seg52BlindDeltaX79 rho) (seg52BlindDeltaY79 rho) (rho 51184) (rho 51185) (rho 51186) (rho 51187) (rho 51188) hacc
  · unfold seg52BlindDeltaX79 seg52BlindDeltaY79
    linear_combination r6796
  · unfold seg52BlindDeltaX79 seg52BlindDeltaY79
    linear_combination r6797
  · unfold seg52BlindDeltaX79 seg52BlindDeltaY79
    linear_combination r6798
  · unfold seg52BlindDeltaX79
    linear_combination r6799
  · unfold seg52BlindDeltaY79
    linear_combination r6800
  · linear_combination r6229

theorem seg52Blind_hstep_c7 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 71 ≤ i → i < 81 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc
  · exact seg52Blind_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc
  · exact seg52Blind_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc
  · exact seg52Blind_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc
  · exact seg52Blind_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc
  · exact seg52Blind_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc
  · exact seg52Blind_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc
  · exact seg52Blind_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc
  · exact seg52Blind_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc
  · exact seg52Blind_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

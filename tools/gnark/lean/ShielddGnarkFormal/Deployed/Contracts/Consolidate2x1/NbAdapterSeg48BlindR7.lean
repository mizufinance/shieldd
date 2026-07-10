import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows71 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6220 rho ∧ Seg48.relationRow6751 rho ∧ Seg48.relationRow6752 rho ∧ Seg48.relationRow6753 rho ∧ Seg48.relationRow6754 rho ∧ Seg48.relationRow6755 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6220, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6751, r6752, r6753, r6754, r6755, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6220, r6751, r6752, r6753, r6754, r6755⟩

theorem seg48Blind_rung71 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38977 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 71)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      71 (Bool.toZMod bit) (seg48BlindAccState rho 71)
      (seg48BlindAccState rho 72) := by
  obtain ⟨r6220, r6751, r6752, r6753, r6754, r6755⟩ := seg48Blind_rows71 rho h
  unfold Seg48.relationRow6220 at r6220

  unfold Seg48.relationRow6751 at r6751

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6751

  unfold Seg48.relationRow6752 at r6752

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6752

  unfold Seg48.relationRow6753 at r6753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6753

  unfold Seg48.relationRow6754 at r6754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6754

  unfold Seg48.relationRow6755 at r6755

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6755

  have hnextx : seg48BlindDeltaX71 rho =
      seg48BlindDeltaX70 rho + rho 39510 := by
    unfold seg48BlindDeltaX71 seg48BlindDeltaX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 70]

    ring

  have hnexty : seg48BlindDeltaY71 rho =
      seg48BlindDeltaY70 rho + rho 39511 := by
    unfold seg48BlindDeltaY71 seg48BlindDeltaY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 70]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 71
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX70 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY70 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX71 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY71 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung71_wide (rho 38906) (rho 38977) (seg48BlindDeltaX70 rho) (seg48BlindDeltaY70 rho) (rho 39507) (rho 39508) (rho 39509) (rho 39510) (rho 39511) hacc
  · unfold seg48BlindDeltaX70 seg48BlindDeltaY70
    linear_combination r6751
  · unfold seg48BlindDeltaX70 seg48BlindDeltaY70
    linear_combination r6752
  · unfold seg48BlindDeltaX70 seg48BlindDeltaY70
    linear_combination r6753
  · unfold seg48BlindDeltaX70
    linear_combination r6754
  · unfold seg48BlindDeltaY70
    linear_combination r6755
  · linear_combination r6220

theorem seg48Blind_rows72 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6221 rho ∧ Seg48.relationRow6756 rho ∧ Seg48.relationRow6757 rho ∧ Seg48.relationRow6758 rho ∧ Seg48.relationRow6759 rho ∧ Seg48.relationRow6760 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6221, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6756, r6757, r6758, r6759, r6760, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6221, r6756, r6757, r6758, r6759, r6760⟩

theorem seg48Blind_rung72 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38978 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 72)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      72 (Bool.toZMod bit) (seg48BlindAccState rho 72)
      (seg48BlindAccState rho 73) := by
  obtain ⟨r6221, r6756, r6757, r6758, r6759, r6760⟩ := seg48Blind_rows72 rho h
  unfold Seg48.relationRow6221 at r6221

  unfold Seg48.relationRow6756 at r6756

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6756

  unfold Seg48.relationRow6757 at r6757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6757

  unfold Seg48.relationRow6758 at r6758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6758

  unfold Seg48.relationRow6759 at r6759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6759

  unfold Seg48.relationRow6760 at r6760

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6760

  have hnextx : seg48BlindDeltaX72 rho =
      seg48BlindDeltaX71 rho + rho 39515 := by
    unfold seg48BlindDeltaX72 seg48BlindDeltaX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 71]

    ring

  have hnexty : seg48BlindDeltaY72 rho =
      seg48BlindDeltaY71 rho + rho 39516 := by
    unfold seg48BlindDeltaY72 seg48BlindDeltaY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 71]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 72
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX71 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY71 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX72 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY72 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung72_wide (rho 38906) (rho 38978) (seg48BlindDeltaX71 rho) (seg48BlindDeltaY71 rho) (rho 39512) (rho 39513) (rho 39514) (rho 39515) (rho 39516) hacc
  · unfold seg48BlindDeltaX71 seg48BlindDeltaY71
    linear_combination r6756
  · unfold seg48BlindDeltaX71 seg48BlindDeltaY71
    linear_combination r6757
  · unfold seg48BlindDeltaX71 seg48BlindDeltaY71
    linear_combination r6758
  · unfold seg48BlindDeltaX71
    linear_combination r6759
  · unfold seg48BlindDeltaY71
    linear_combination r6760
  · linear_combination r6221

theorem seg48Blind_rows73 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6222 rho ∧ Seg48.relationRow6761 rho ∧ Seg48.relationRow6762 rho ∧ Seg48.relationRow6763 rho ∧ Seg48.relationRow6764 rho ∧ Seg48.relationRow6765 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6761, r6762, r6763, r6764, r6765, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6222, r6761, r6762, r6763, r6764, r6765⟩

theorem seg48Blind_rung73 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38979 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 73)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      73 (Bool.toZMod bit) (seg48BlindAccState rho 73)
      (seg48BlindAccState rho 74) := by
  obtain ⟨r6222, r6761, r6762, r6763, r6764, r6765⟩ := seg48Blind_rows73 rho h
  unfold Seg48.relationRow6222 at r6222

  unfold Seg48.relationRow6761 at r6761

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6761

  unfold Seg48.relationRow6762 at r6762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6762

  unfold Seg48.relationRow6763 at r6763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6763

  unfold Seg48.relationRow6764 at r6764

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6764

  unfold Seg48.relationRow6765 at r6765

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6765

  have hnextx : seg48BlindDeltaX73 rho =
      seg48BlindDeltaX72 rho + rho 39520 := by
    unfold seg48BlindDeltaX73 seg48BlindDeltaX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 72]

    ring

  have hnexty : seg48BlindDeltaY73 rho =
      seg48BlindDeltaY72 rho + rho 39521 := by
    unfold seg48BlindDeltaY73 seg48BlindDeltaY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 72]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 73
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX72 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY72 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX73 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY73 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung73_wide (rho 38906) (rho 38979) (seg48BlindDeltaX72 rho) (seg48BlindDeltaY72 rho) (rho 39517) (rho 39518) (rho 39519) (rho 39520) (rho 39521) hacc
  · unfold seg48BlindDeltaX72 seg48BlindDeltaY72
    linear_combination r6761
  · unfold seg48BlindDeltaX72 seg48BlindDeltaY72
    linear_combination r6762
  · unfold seg48BlindDeltaX72 seg48BlindDeltaY72
    linear_combination r6763
  · unfold seg48BlindDeltaX72
    linear_combination r6764
  · unfold seg48BlindDeltaY72
    linear_combination r6765
  · linear_combination r6222

theorem seg48Blind_rows74 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6223 rho ∧ Seg48.relationRow6766 rho ∧ Seg48.relationRow6767 rho ∧ Seg48.relationRow6768 rho ∧ Seg48.relationRow6769 rho ∧ Seg48.relationRow6770 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6223, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6766, r6767, r6768, r6769, r6770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6223, r6766, r6767, r6768, r6769, r6770⟩

theorem seg48Blind_rung74 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38980 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 74)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      74 (Bool.toZMod bit) (seg48BlindAccState rho 74)
      (seg48BlindAccState rho 75) := by
  obtain ⟨r6223, r6766, r6767, r6768, r6769, r6770⟩ := seg48Blind_rows74 rho h
  unfold Seg48.relationRow6223 at r6223

  unfold Seg48.relationRow6766 at r6766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6766

  unfold Seg48.relationRow6767 at r6767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6767

  unfold Seg48.relationRow6768 at r6768

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6768

  unfold Seg48.relationRow6769 at r6769

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6769

  unfold Seg48.relationRow6770 at r6770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6770

  have hnextx : seg48BlindDeltaX74 rho =
      seg48BlindDeltaX73 rho + rho 39525 := by
    unfold seg48BlindDeltaX74 seg48BlindDeltaX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 73]

    ring

  have hnexty : seg48BlindDeltaY74 rho =
      seg48BlindDeltaY73 rho + rho 39526 := by
    unfold seg48BlindDeltaY74 seg48BlindDeltaY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 73]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 74
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX73 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY73 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX74 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY74 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung74_wide (rho 38906) (rho 38980) (seg48BlindDeltaX73 rho) (seg48BlindDeltaY73 rho) (rho 39522) (rho 39523) (rho 39524) (rho 39525) (rho 39526) hacc
  · unfold seg48BlindDeltaX73 seg48BlindDeltaY73
    linear_combination r6766
  · unfold seg48BlindDeltaX73 seg48BlindDeltaY73
    linear_combination r6767
  · unfold seg48BlindDeltaX73 seg48BlindDeltaY73
    linear_combination r6768
  · unfold seg48BlindDeltaX73
    linear_combination r6769
  · unfold seg48BlindDeltaY73
    linear_combination r6770
  · linear_combination r6223

theorem seg48Blind_rows75 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6224 rho ∧ Seg48.relationRow6771 rho ∧ Seg48.relationRow6772 rho ∧ Seg48.relationRow6773 rho ∧ Seg48.relationRow6774 rho ∧ Seg48.relationRow6775 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6771, r6772, r6773, r6774, r6775, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6224, r6771, r6772, r6773, r6774, r6775⟩

theorem seg48Blind_rung75 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38981 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 75)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      75 (Bool.toZMod bit) (seg48BlindAccState rho 75)
      (seg48BlindAccState rho 76) := by
  obtain ⟨r6224, r6771, r6772, r6773, r6774, r6775⟩ := seg48Blind_rows75 rho h
  unfold Seg48.relationRow6224 at r6224

  unfold Seg48.relationRow6771 at r6771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6771

  unfold Seg48.relationRow6772 at r6772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6772

  unfold Seg48.relationRow6773 at r6773

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6773

  unfold Seg48.relationRow6774 at r6774

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6774

  unfold Seg48.relationRow6775 at r6775

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6775

  have hnextx : seg48BlindDeltaX75 rho =
      seg48BlindDeltaX74 rho + rho 39530 := by
    unfold seg48BlindDeltaX75 seg48BlindDeltaX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 74]

    ring

  have hnexty : seg48BlindDeltaY75 rho =
      seg48BlindDeltaY74 rho + rho 39531 := by
    unfold seg48BlindDeltaY75 seg48BlindDeltaY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 74]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 75
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX74 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY74 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX75 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY75 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung75_wide (rho 38906) (rho 38981) (seg48BlindDeltaX74 rho) (seg48BlindDeltaY74 rho) (rho 39527) (rho 39528) (rho 39529) (rho 39530) (rho 39531) hacc
  · unfold seg48BlindDeltaX74 seg48BlindDeltaY74
    linear_combination r6771
  · unfold seg48BlindDeltaX74 seg48BlindDeltaY74
    linear_combination r6772
  · unfold seg48BlindDeltaX74 seg48BlindDeltaY74
    linear_combination r6773
  · unfold seg48BlindDeltaX74
    linear_combination r6774
  · unfold seg48BlindDeltaY74
    linear_combination r6775
  · linear_combination r6224

theorem seg48Blind_rows76 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6225 rho ∧ Seg48.relationRow6776 rho ∧ Seg48.relationRow6777 rho ∧ Seg48.relationRow6778 rho ∧ Seg48.relationRow6779 rho ∧ Seg48.relationRow6780 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6776, r6777, r6778, r6779, r6780, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6225, r6776, r6777, r6778, r6779, r6780⟩

theorem seg48Blind_rung76 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38982 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 76)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      76 (Bool.toZMod bit) (seg48BlindAccState rho 76)
      (seg48BlindAccState rho 77) := by
  obtain ⟨r6225, r6776, r6777, r6778, r6779, r6780⟩ := seg48Blind_rows76 rho h
  unfold Seg48.relationRow6225 at r6225

  unfold Seg48.relationRow6776 at r6776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6776

  unfold Seg48.relationRow6777 at r6777

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6777

  unfold Seg48.relationRow6778 at r6778

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6778

  unfold Seg48.relationRow6779 at r6779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6779

  unfold Seg48.relationRow6780 at r6780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6780

  have hnextx : seg48BlindDeltaX76 rho =
      seg48BlindDeltaX75 rho + rho 39535 := by
    unfold seg48BlindDeltaX76 seg48BlindDeltaX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 75]

    ring

  have hnexty : seg48BlindDeltaY76 rho =
      seg48BlindDeltaY75 rho + rho 39536 := by
    unfold seg48BlindDeltaY76 seg48BlindDeltaY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 75]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 76
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX75 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY75 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX76 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY76 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung76_wide (rho 38906) (rho 38982) (seg48BlindDeltaX75 rho) (seg48BlindDeltaY75 rho) (rho 39532) (rho 39533) (rho 39534) (rho 39535) (rho 39536) hacc
  · unfold seg48BlindDeltaX75 seg48BlindDeltaY75
    linear_combination r6776
  · unfold seg48BlindDeltaX75 seg48BlindDeltaY75
    linear_combination r6777
  · unfold seg48BlindDeltaX75 seg48BlindDeltaY75
    linear_combination r6778
  · unfold seg48BlindDeltaX75
    linear_combination r6779
  · unfold seg48BlindDeltaY75
    linear_combination r6780
  · linear_combination r6225

theorem seg48Blind_rows77 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6226 rho ∧ Seg48.relationRow6781 rho ∧ Seg48.relationRow6782 rho ∧ Seg48.relationRow6783 rho ∧ Seg48.relationRow6784 rho ∧ Seg48.relationRow6785 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6226, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6781, r6782, r6783, r6784, r6785, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6226, r6781, r6782, r6783, r6784, r6785⟩

theorem seg48Blind_rung77 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38983 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 77)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      77 (Bool.toZMod bit) (seg48BlindAccState rho 77)
      (seg48BlindAccState rho 78) := by
  obtain ⟨r6226, r6781, r6782, r6783, r6784, r6785⟩ := seg48Blind_rows77 rho h
  unfold Seg48.relationRow6226 at r6226

  unfold Seg48.relationRow6781 at r6781

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6781

  unfold Seg48.relationRow6782 at r6782

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6782

  unfold Seg48.relationRow6783 at r6783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6783

  unfold Seg48.relationRow6784 at r6784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6784

  unfold Seg48.relationRow6785 at r6785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6785

  have hnextx : seg48BlindDeltaX77 rho =
      seg48BlindDeltaX76 rho + rho 39540 := by
    unfold seg48BlindDeltaX77 seg48BlindDeltaX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 76]

    ring

  have hnexty : seg48BlindDeltaY77 rho =
      seg48BlindDeltaY76 rho + rho 39541 := by
    unfold seg48BlindDeltaY77 seg48BlindDeltaY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 76]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 77
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX76 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY76 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX77 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY77 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung77_wide (rho 38906) (rho 38983) (seg48BlindDeltaX76 rho) (seg48BlindDeltaY76 rho) (rho 39537) (rho 39538) (rho 39539) (rho 39540) (rho 39541) hacc
  · unfold seg48BlindDeltaX76 seg48BlindDeltaY76
    linear_combination r6781
  · unfold seg48BlindDeltaX76 seg48BlindDeltaY76
    linear_combination r6782
  · unfold seg48BlindDeltaX76 seg48BlindDeltaY76
    linear_combination r6783
  · unfold seg48BlindDeltaX76
    linear_combination r6784
  · unfold seg48BlindDeltaY76
    linear_combination r6785
  · linear_combination r6226

theorem seg48Blind_rows78 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6227 rho ∧ Seg48.relationRow6786 rho ∧ Seg48.relationRow6787 rho ∧ Seg48.relationRow6788 rho ∧ Seg48.relationRow6789 rho ∧ Seg48.relationRow6790 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6227, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6786, r6787, r6788, r6789, r6790, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6227, r6786, r6787, r6788, r6789, r6790⟩

theorem seg48Blind_rung78 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38984 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 78)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      78 (Bool.toZMod bit) (seg48BlindAccState rho 78)
      (seg48BlindAccState rho 79) := by
  obtain ⟨r6227, r6786, r6787, r6788, r6789, r6790⟩ := seg48Blind_rows78 rho h
  unfold Seg48.relationRow6227 at r6227

  unfold Seg48.relationRow6786 at r6786

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6786

  unfold Seg48.relationRow6787 at r6787

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6787

  unfold Seg48.relationRow6788 at r6788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6788

  unfold Seg48.relationRow6789 at r6789

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6789

  unfold Seg48.relationRow6790 at r6790

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6790

  have hnextx : seg48BlindDeltaX78 rho =
      seg48BlindDeltaX77 rho + rho 39545 := by
    unfold seg48BlindDeltaX78 seg48BlindDeltaX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 77]

    ring

  have hnexty : seg48BlindDeltaY78 rho =
      seg48BlindDeltaY77 rho + rho 39546 := by
    unfold seg48BlindDeltaY78 seg48BlindDeltaY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 77]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 78
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX77 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY77 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX78 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY78 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung78_wide (rho 38906) (rho 38984) (seg48BlindDeltaX77 rho) (seg48BlindDeltaY77 rho) (rho 39542) (rho 39543) (rho 39544) (rho 39545) (rho 39546) hacc
  · unfold seg48BlindDeltaX77 seg48BlindDeltaY77
    linear_combination r6786
  · unfold seg48BlindDeltaX77 seg48BlindDeltaY77
    linear_combination r6787
  · unfold seg48BlindDeltaX77 seg48BlindDeltaY77
    linear_combination r6788
  · unfold seg48BlindDeltaX77
    linear_combination r6789
  · unfold seg48BlindDeltaY77
    linear_combination r6790
  · linear_combination r6227

theorem seg48Blind_rows79 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6228 rho ∧ Seg48.relationRow6791 rho ∧ Seg48.relationRow6792 rho ∧ Seg48.relationRow6793 rho ∧ Seg48.relationRow6794 rho ∧ Seg48.relationRow6795 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6228, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6791, r6792, r6793, r6794, r6795, _, _, _, _⟩

  exact ⟨r6228, r6791, r6792, r6793, r6794, r6795⟩

theorem seg48Blind_rung79 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38985 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 79)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      79 (Bool.toZMod bit) (seg48BlindAccState rho 79)
      (seg48BlindAccState rho 80) := by
  obtain ⟨r6228, r6791, r6792, r6793, r6794, r6795⟩ := seg48Blind_rows79 rho h
  unfold Seg48.relationRow6228 at r6228

  unfold Seg48.relationRow6791 at r6791

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6791

  unfold Seg48.relationRow6792 at r6792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6792

  unfold Seg48.relationRow6793 at r6793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6793

  unfold Seg48.relationRow6794 at r6794

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6794

  unfold Seg48.relationRow6795 at r6795

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6795

  have hnextx : seg48BlindDeltaX79 rho =
      seg48BlindDeltaX78 rho + rho 39550 := by
    unfold seg48BlindDeltaX79 seg48BlindDeltaX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 78]

    ring

  have hnexty : seg48BlindDeltaY79 rho =
      seg48BlindDeltaY78 rho + rho 39551 := by
    unfold seg48BlindDeltaY79 seg48BlindDeltaY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 78]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 79
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX78 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY78 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX79 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY79 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung79_wide (rho 38906) (rho 38985) (seg48BlindDeltaX78 rho) (seg48BlindDeltaY78 rho) (rho 39547) (rho 39548) (rho 39549) (rho 39550) (rho 39551) hacc
  · unfold seg48BlindDeltaX78 seg48BlindDeltaY78
    linear_combination r6791
  · unfold seg48BlindDeltaX78 seg48BlindDeltaY78
    linear_combination r6792
  · unfold seg48BlindDeltaX78 seg48BlindDeltaY78
    linear_combination r6793
  · unfold seg48BlindDeltaX78
    linear_combination r6794
  · unfold seg48BlindDeltaY78
    linear_combination r6795
  · linear_combination r6228

theorem seg48Blind_rows80 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6229 rho ∧ Seg48.relationRow6796 rho ∧ Seg48.relationRow6797 rho ∧ Seg48.relationRow6798 rho ∧ Seg48.relationRow6799 rho ∧ Seg48.relationRow6800 rho := by
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

    _, _, _, _, p84, p85, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6229, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6796, r6797, r6798, r6799⟩

  unfold Seg48.relationPart85 at p85

  rcases p85 with ⟨r6800, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6229, r6796, r6797, r6798, r6799, r6800⟩

theorem seg48Blind_rung80 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38986 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 80)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      80 (Bool.toZMod bit) (seg48BlindAccState rho 80)
      (seg48BlindAccState rho 81) := by
  obtain ⟨r6229, r6796, r6797, r6798, r6799, r6800⟩ := seg48Blind_rows80 rho h
  unfold Seg48.relationRow6229 at r6229

  unfold Seg48.relationRow6796 at r6796

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6796

  unfold Seg48.relationRow6797 at r6797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6797

  unfold Seg48.relationRow6798 at r6798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6798

  unfold Seg48.relationRow6799 at r6799

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6799

  unfold Seg48.relationRow6800 at r6800

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6800

  have hnextx : seg48BlindDeltaX80 rho =
      seg48BlindDeltaX79 rho + rho 39555 := by
    unfold seg48BlindDeltaX80 seg48BlindDeltaX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 79]

    ring

  have hnexty : seg48BlindDeltaY80 rho =
      seg48BlindDeltaY79 rho + rho 39556 := by
    unfold seg48BlindDeltaY80 seg48BlindDeltaY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 79]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 80
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX79 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY79 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX80 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY80 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung80_wide (rho 38906) (rho 38986) (seg48BlindDeltaX79 rho) (seg48BlindDeltaY79 rho) (rho 39552) (rho 39553) (rho 39554) (rho 39555) (rho 39556) hacc
  · unfold seg48BlindDeltaX79 seg48BlindDeltaY79
    linear_combination r6796
  · unfold seg48BlindDeltaX79 seg48BlindDeltaY79
    linear_combination r6797
  · unfold seg48BlindDeltaX79 seg48BlindDeltaY79
    linear_combination r6798
  · unfold seg48BlindDeltaX79
    linear_combination r6799
  · unfold seg48BlindDeltaY79
    linear_combination r6800
  · linear_combination r6229

theorem seg48Blind_hstep_c7 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 71 ≤ i → i < 81 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc
  · exact seg48Blind_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc
  · exact seg48Blind_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc
  · exact seg48Blind_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc
  · exact seg48Blind_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc
  · exact seg48Blind_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc
  · exact seg48Blind_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc
  · exact seg48Blind_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc
  · exact seg48Blind_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc
  · exact seg48Blind_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

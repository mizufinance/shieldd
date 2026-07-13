import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg46Blind_rows21 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow409 rho ∧ Seg46.relationRow740 rho ∧ Seg46.relationRow741 rho ∧ Seg46.relationRow742 rho ∧ Seg46.relationRow743 rho ∧ Seg46.relationRow744 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, r409, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r740, r741, r742, r743, r744, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r409, r740, r741, r742, r743, r744⟩

theorem seg46Blind_rung21 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31682 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 21)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      21 (Bool.toZMod bit) (seg46BlindAccState rho 21)
      (seg46BlindAccState rho 22) := by
  obtain ⟨r409, r740, r741, r742, r743, r744⟩ := seg46Blind_rows21 rho h
  unfold Seg46.relationRow409 at r409

  unfold Seg46.relationRow740 at r740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r740

  unfold Seg46.relationRow741 at r741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r741

  unfold Seg46.relationRow742 at r742

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r742

  unfold Seg46.relationRow743 at r743

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r743

  unfold Seg46.relationRow744 at r744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r744

  have hnextx : seg46BlindDeltaX21 rho =
      seg46BlindDeltaX20 rho + rho 32015 := by
    unfold seg46BlindDeltaX21 seg46BlindDeltaX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 20]

    ring

  have hnexty : seg46BlindDeltaY21 rho =
      seg46BlindDeltaY20 rho + rho 32016 := by
    unfold seg46BlindDeltaY21 seg46BlindDeltaY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 20]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 21
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX20 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY20 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX21 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY21 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung21_wide (rho 31661) (rho 31682) (seg46BlindDeltaX20 rho) (seg46BlindDeltaY20 rho) (rho 32012) (rho 32013) (rho 32014) (rho 32015) (rho 32016) hacc
  · unfold seg46BlindDeltaX20 seg46BlindDeltaY20
    linear_combination r740
  · unfold seg46BlindDeltaX20 seg46BlindDeltaY20
    linear_combination r741
  · unfold seg46BlindDeltaX20 seg46BlindDeltaY20
    linear_combination r742
  · unfold seg46BlindDeltaX20
    linear_combination r743
  · unfold seg46BlindDeltaY20
    linear_combination r744
  · linear_combination r409

theorem seg46Blind_rows22 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow410 rho ∧ Seg46.relationRow745 rho ∧ Seg46.relationRow746 rho ∧ Seg46.relationRow747 rho ∧ Seg46.relationRow748 rho ∧ Seg46.relationRow749 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, r410, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r745, r746, r747, r748, r749, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r410, r745, r746, r747, r748, r749⟩

theorem seg46Blind_rung22 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31683 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 22)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      22 (Bool.toZMod bit) (seg46BlindAccState rho 22)
      (seg46BlindAccState rho 23) := by
  obtain ⟨r410, r745, r746, r747, r748, r749⟩ := seg46Blind_rows22 rho h
  unfold Seg46.relationRow410 at r410

  unfold Seg46.relationRow745 at r745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r745

  unfold Seg46.relationRow746 at r746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r746

  unfold Seg46.relationRow747 at r747

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r747

  unfold Seg46.relationRow748 at r748

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r748

  unfold Seg46.relationRow749 at r749

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r749

  have hnextx : seg46BlindDeltaX22 rho =
      seg46BlindDeltaX21 rho + rho 32020 := by
    unfold seg46BlindDeltaX22 seg46BlindDeltaX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 21]

    ring

  have hnexty : seg46BlindDeltaY22 rho =
      seg46BlindDeltaY21 rho + rho 32021 := by
    unfold seg46BlindDeltaY22 seg46BlindDeltaY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 21]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 22
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX21 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY21 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX22 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY22 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung22_wide (rho 31661) (rho 31683) (seg46BlindDeltaX21 rho) (seg46BlindDeltaY21 rho) (rho 32017) (rho 32018) (rho 32019) (rho 32020) (rho 32021) hacc
  · unfold seg46BlindDeltaX21 seg46BlindDeltaY21
    linear_combination r745
  · unfold seg46BlindDeltaX21 seg46BlindDeltaY21
    linear_combination r746
  · unfold seg46BlindDeltaX21 seg46BlindDeltaY21
    linear_combination r747
  · unfold seg46BlindDeltaX21
    linear_combination r748
  · unfold seg46BlindDeltaY21
    linear_combination r749
  · linear_combination r410

theorem seg46Blind_rows23 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow411 rho ∧ Seg46.relationRow750 rho ∧ Seg46.relationRow751 rho ∧ Seg46.relationRow752 rho ∧ Seg46.relationRow753 rho ∧ Seg46.relationRow754 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, r411, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r750, r751, r752, r753, r754, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r411, r750, r751, r752, r753, r754⟩

theorem seg46Blind_rung23 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31684 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 23)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      23 (Bool.toZMod bit) (seg46BlindAccState rho 23)
      (seg46BlindAccState rho 24) := by
  obtain ⟨r411, r750, r751, r752, r753, r754⟩ := seg46Blind_rows23 rho h
  unfold Seg46.relationRow411 at r411

  unfold Seg46.relationRow750 at r750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r750

  unfold Seg46.relationRow751 at r751

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r751

  unfold Seg46.relationRow752 at r752

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r752

  unfold Seg46.relationRow753 at r753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r753

  unfold Seg46.relationRow754 at r754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r754

  have hnextx : seg46BlindDeltaX23 rho =
      seg46BlindDeltaX22 rho + rho 32025 := by
    unfold seg46BlindDeltaX23 seg46BlindDeltaX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 22]

    ring

  have hnexty : seg46BlindDeltaY23 rho =
      seg46BlindDeltaY22 rho + rho 32026 := by
    unfold seg46BlindDeltaY23 seg46BlindDeltaY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 22]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 23
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX22 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY22 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX23 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY23 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung23_wide (rho 31661) (rho 31684) (seg46BlindDeltaX22 rho) (seg46BlindDeltaY22 rho) (rho 32022) (rho 32023) (rho 32024) (rho 32025) (rho 32026) hacc
  · unfold seg46BlindDeltaX22 seg46BlindDeltaY22
    linear_combination r750
  · unfold seg46BlindDeltaX22 seg46BlindDeltaY22
    linear_combination r751
  · unfold seg46BlindDeltaX22 seg46BlindDeltaY22
    linear_combination r752
  · unfold seg46BlindDeltaX22
    linear_combination r753
  · unfold seg46BlindDeltaY22
    linear_combination r754
  · linear_combination r411

theorem seg46Blind_rows24 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow412 rho ∧ Seg46.relationRow755 rho ∧ Seg46.relationRow756 rho ∧ Seg46.relationRow757 rho ∧ Seg46.relationRow758 rho ∧ Seg46.relationRow759 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r412, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r755, r756, r757, r758, r759, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r412, r755, r756, r757, r758, r759⟩

theorem seg46Blind_rung24 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31685 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 24)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      24 (Bool.toZMod bit) (seg46BlindAccState rho 24)
      (seg46BlindAccState rho 25) := by
  obtain ⟨r412, r755, r756, r757, r758, r759⟩ := seg46Blind_rows24 rho h
  unfold Seg46.relationRow412 at r412

  unfold Seg46.relationRow755 at r755

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r755

  unfold Seg46.relationRow756 at r756

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r756

  unfold Seg46.relationRow757 at r757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r757

  unfold Seg46.relationRow758 at r758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r758

  unfold Seg46.relationRow759 at r759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r759

  have hnextx : seg46BlindDeltaX24 rho =
      seg46BlindDeltaX23 rho + rho 32030 := by
    unfold seg46BlindDeltaX24 seg46BlindDeltaX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 23]

    ring

  have hnexty : seg46BlindDeltaY24 rho =
      seg46BlindDeltaY23 rho + rho 32031 := by
    unfold seg46BlindDeltaY24 seg46BlindDeltaY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 23]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 24
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX23 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY23 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX24 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY24 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung24_wide (rho 31661) (rho 31685) (seg46BlindDeltaX23 rho) (seg46BlindDeltaY23 rho) (rho 32027) (rho 32028) (rho 32029) (rho 32030) (rho 32031) hacc
  · unfold seg46BlindDeltaX23 seg46BlindDeltaY23
    linear_combination r755
  · unfold seg46BlindDeltaX23 seg46BlindDeltaY23
    linear_combination r756
  · unfold seg46BlindDeltaX23 seg46BlindDeltaY23
    linear_combination r757
  · unfold seg46BlindDeltaX23
    linear_combination r758
  · unfold seg46BlindDeltaY23
    linear_combination r759
  · linear_combination r412

theorem seg46Blind_rows25 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow413 rho ∧ Seg46.relationRow760 rho ∧ Seg46.relationRow761 rho ∧ Seg46.relationRow762 rho ∧ Seg46.relationRow763 rho ∧ Seg46.relationRow764 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r413, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r760, r761, r762, r763, r764, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r413, r760, r761, r762, r763, r764⟩

theorem seg46Blind_rung25 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31686 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 25)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      25 (Bool.toZMod bit) (seg46BlindAccState rho 25)
      (seg46BlindAccState rho 26) := by
  obtain ⟨r413, r760, r761, r762, r763, r764⟩ := seg46Blind_rows25 rho h
  unfold Seg46.relationRow413 at r413

  unfold Seg46.relationRow760 at r760

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r760

  unfold Seg46.relationRow761 at r761

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r761

  unfold Seg46.relationRow762 at r762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r762

  unfold Seg46.relationRow763 at r763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r763

  unfold Seg46.relationRow764 at r764

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r764

  have hnextx : seg46BlindDeltaX25 rho =
      seg46BlindDeltaX24 rho + rho 32035 := by
    unfold seg46BlindDeltaX25 seg46BlindDeltaX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 24]

    ring

  have hnexty : seg46BlindDeltaY25 rho =
      seg46BlindDeltaY24 rho + rho 32036 := by
    unfold seg46BlindDeltaY25 seg46BlindDeltaY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 24]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 25
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX24 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY24 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX25 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY25 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung25_wide (rho 31661) (rho 31686) (seg46BlindDeltaX24 rho) (seg46BlindDeltaY24 rho) (rho 32032) (rho 32033) (rho 32034) (rho 32035) (rho 32036) hacc
  · unfold seg46BlindDeltaX24 seg46BlindDeltaY24
    linear_combination r760
  · unfold seg46BlindDeltaX24 seg46BlindDeltaY24
    linear_combination r761
  · unfold seg46BlindDeltaX24 seg46BlindDeltaY24
    linear_combination r762
  · unfold seg46BlindDeltaX24
    linear_combination r763
  · unfold seg46BlindDeltaY24
    linear_combination r764
  · linear_combination r413

theorem seg46Blind_rows26 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow414 rho ∧ Seg46.relationRow765 rho ∧ Seg46.relationRow766 rho ∧ Seg46.relationRow767 rho ∧ Seg46.relationRow768 rho ∧ Seg46.relationRow769 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r414, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r765, r766, r767, r768, r769, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r414, r765, r766, r767, r768, r769⟩

theorem seg46Blind_rung26 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31687 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 26)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      26 (Bool.toZMod bit) (seg46BlindAccState rho 26)
      (seg46BlindAccState rho 27) := by
  obtain ⟨r414, r765, r766, r767, r768, r769⟩ := seg46Blind_rows26 rho h
  unfold Seg46.relationRow414 at r414

  unfold Seg46.relationRow765 at r765

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r765

  unfold Seg46.relationRow766 at r766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r766

  unfold Seg46.relationRow767 at r767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r767

  unfold Seg46.relationRow768 at r768

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r768

  unfold Seg46.relationRow769 at r769

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r769

  have hnextx : seg46BlindDeltaX26 rho =
      seg46BlindDeltaX25 rho + rho 32040 := by
    unfold seg46BlindDeltaX26 seg46BlindDeltaX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 25]

    ring

  have hnexty : seg46BlindDeltaY26 rho =
      seg46BlindDeltaY25 rho + rho 32041 := by
    unfold seg46BlindDeltaY26 seg46BlindDeltaY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 25]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 26
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX25 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY25 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX26 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY26 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung26_wide (rho 31661) (rho 31687) (seg46BlindDeltaX25 rho) (seg46BlindDeltaY25 rho) (rho 32037) (rho 32038) (rho 32039) (rho 32040) (rho 32041) hacc
  · unfold seg46BlindDeltaX25 seg46BlindDeltaY25
    linear_combination r765
  · unfold seg46BlindDeltaX25 seg46BlindDeltaY25
    linear_combination r766
  · unfold seg46BlindDeltaX25 seg46BlindDeltaY25
    linear_combination r767
  · unfold seg46BlindDeltaX25
    linear_combination r768
  · unfold seg46BlindDeltaY25
    linear_combination r769
  · linear_combination r414

theorem seg46Blind_rows27 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow415 rho ∧ Seg46.relationRow770 rho ∧ Seg46.relationRow771 rho ∧ Seg46.relationRow772 rho ∧ Seg46.relationRow773 rho ∧ Seg46.relationRow774 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r415, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r770, r771, r772, r773, r774, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r415, r770, r771, r772, r773, r774⟩

theorem seg46Blind_rung27 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31688 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 27)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      27 (Bool.toZMod bit) (seg46BlindAccState rho 27)
      (seg46BlindAccState rho 28) := by
  obtain ⟨r415, r770, r771, r772, r773, r774⟩ := seg46Blind_rows27 rho h
  unfold Seg46.relationRow415 at r415

  unfold Seg46.relationRow770 at r770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r770

  unfold Seg46.relationRow771 at r771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r771

  unfold Seg46.relationRow772 at r772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r772

  unfold Seg46.relationRow773 at r773

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r773

  unfold Seg46.relationRow774 at r774

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r774

  have hnextx : seg46BlindDeltaX27 rho =
      seg46BlindDeltaX26 rho + rho 32045 := by
    unfold seg46BlindDeltaX27 seg46BlindDeltaX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 26]

    ring

  have hnexty : seg46BlindDeltaY27 rho =
      seg46BlindDeltaY26 rho + rho 32046 := by
    unfold seg46BlindDeltaY27 seg46BlindDeltaY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 26]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 27
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX26 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY26 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX27 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY27 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung27_wide (rho 31661) (rho 31688) (seg46BlindDeltaX26 rho) (seg46BlindDeltaY26 rho) (rho 32042) (rho 32043) (rho 32044) (rho 32045) (rho 32046) hacc
  · unfold seg46BlindDeltaX26 seg46BlindDeltaY26
    linear_combination r770
  · unfold seg46BlindDeltaX26 seg46BlindDeltaY26
    linear_combination r771
  · unfold seg46BlindDeltaX26 seg46BlindDeltaY26
    linear_combination r772
  · unfold seg46BlindDeltaX26
    linear_combination r773
  · unfold seg46BlindDeltaY26
    linear_combination r774
  · linear_combination r415

theorem seg46Blind_rows28 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow416 rho ∧ Seg46.relationRow775 rho ∧ Seg46.relationRow776 rho ∧ Seg46.relationRow777 rho ∧ Seg46.relationRow778 rho ∧ Seg46.relationRow779 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r416, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r775, r776, r777, r778, r779, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r416, r775, r776, r777, r778, r779⟩

theorem seg46Blind_rung28 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31689 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 28)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      28 (Bool.toZMod bit) (seg46BlindAccState rho 28)
      (seg46BlindAccState rho 29) := by
  obtain ⟨r416, r775, r776, r777, r778, r779⟩ := seg46Blind_rows28 rho h
  unfold Seg46.relationRow416 at r416

  unfold Seg46.relationRow775 at r775

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r775

  unfold Seg46.relationRow776 at r776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r776

  unfold Seg46.relationRow777 at r777

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r777

  unfold Seg46.relationRow778 at r778

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r778

  unfold Seg46.relationRow779 at r779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r779

  have hnextx : seg46BlindDeltaX28 rho =
      seg46BlindDeltaX27 rho + rho 32050 := by
    unfold seg46BlindDeltaX28 seg46BlindDeltaX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 27]

    ring

  have hnexty : seg46BlindDeltaY28 rho =
      seg46BlindDeltaY27 rho + rho 32051 := by
    unfold seg46BlindDeltaY28 seg46BlindDeltaY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 27]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 28
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX27 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY27 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX28 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY28 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung28_wide (rho 31661) (rho 31689) (seg46BlindDeltaX27 rho) (seg46BlindDeltaY27 rho) (rho 32047) (rho 32048) (rho 32049) (rho 32050) (rho 32051) hacc
  · unfold seg46BlindDeltaX27 seg46BlindDeltaY27
    linear_combination r775
  · unfold seg46BlindDeltaX27 seg46BlindDeltaY27
    linear_combination r776
  · unfold seg46BlindDeltaX27 seg46BlindDeltaY27
    linear_combination r777
  · unfold seg46BlindDeltaX27
    linear_combination r778
  · unfold seg46BlindDeltaY27
    linear_combination r779
  · linear_combination r416

theorem seg46Blind_rows29 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow417 rho ∧ Seg46.relationRow780 rho ∧ Seg46.relationRow781 rho ∧ Seg46.relationRow782 rho ∧ Seg46.relationRow783 rho ∧ Seg46.relationRow784 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r417, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r780, r781, r782, r783, r784, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r417, r780, r781, r782, r783, r784⟩

theorem seg46Blind_rung29 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31690 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 29)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      29 (Bool.toZMod bit) (seg46BlindAccState rho 29)
      (seg46BlindAccState rho 30) := by
  obtain ⟨r417, r780, r781, r782, r783, r784⟩ := seg46Blind_rows29 rho h
  unfold Seg46.relationRow417 at r417

  unfold Seg46.relationRow780 at r780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r780

  unfold Seg46.relationRow781 at r781

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r781

  unfold Seg46.relationRow782 at r782

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r782

  unfold Seg46.relationRow783 at r783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r783

  unfold Seg46.relationRow784 at r784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r784

  have hnextx : seg46BlindDeltaX29 rho =
      seg46BlindDeltaX28 rho + rho 32055 := by
    unfold seg46BlindDeltaX29 seg46BlindDeltaX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 28]

    ring

  have hnexty : seg46BlindDeltaY29 rho =
      seg46BlindDeltaY28 rho + rho 32056 := by
    unfold seg46BlindDeltaY29 seg46BlindDeltaY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 28]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 29
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX28 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY28 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX29 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY29 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung29_wide (rho 31661) (rho 31690) (seg46BlindDeltaX28 rho) (seg46BlindDeltaY28 rho) (rho 32052) (rho 32053) (rho 32054) (rho 32055) (rho 32056) hacc
  · unfold seg46BlindDeltaX28 seg46BlindDeltaY28
    linear_combination r780
  · unfold seg46BlindDeltaX28 seg46BlindDeltaY28
    linear_combination r781
  · unfold seg46BlindDeltaX28 seg46BlindDeltaY28
    linear_combination r782
  · unfold seg46BlindDeltaX28
    linear_combination r783
  · unfold seg46BlindDeltaY28
    linear_combination r784
  · linear_combination r417

theorem seg46Blind_rows30 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow418 rho ∧ Seg46.relationRow785 rho ∧ Seg46.relationRow786 rho ∧ Seg46.relationRow787 rho ∧ Seg46.relationRow788 rho ∧ Seg46.relationRow789 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, p9,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r785, r786, r787, r788, r789, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r418, r785, r786, r787, r788, r789⟩

theorem seg46Blind_rung30 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31691 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 30)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      30 (Bool.toZMod bit) (seg46BlindAccState rho 30)
      (seg46BlindAccState rho 31) := by
  obtain ⟨r418, r785, r786, r787, r788, r789⟩ := seg46Blind_rows30 rho h
  unfold Seg46.relationRow418 at r418

  unfold Seg46.relationRow785 at r785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r785

  unfold Seg46.relationRow786 at r786

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r786

  unfold Seg46.relationRow787 at r787

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r787

  unfold Seg46.relationRow788 at r788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r788

  unfold Seg46.relationRow789 at r789

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r789

  have hnextx : seg46BlindDeltaX30 rho =
      seg46BlindDeltaX29 rho + rho 32060 := by
    unfold seg46BlindDeltaX30 seg46BlindDeltaX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 29]

    ring

  have hnexty : seg46BlindDeltaY30 rho =
      seg46BlindDeltaY29 rho + rho 32061 := by
    unfold seg46BlindDeltaY30 seg46BlindDeltaY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 29]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 30
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX29 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY29 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX30 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY30 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung30_wide (rho 31661) (rho 31691) (seg46BlindDeltaX29 rho) (seg46BlindDeltaY29 rho) (rho 32057) (rho 32058) (rho 32059) (rho 32060) (rho 32061) hacc
  · unfold seg46BlindDeltaX29 seg46BlindDeltaY29
    linear_combination r785
  · unfold seg46BlindDeltaX29 seg46BlindDeltaY29
    linear_combination r786
  · unfold seg46BlindDeltaX29 seg46BlindDeltaY29
    linear_combination r787
  · unfold seg46BlindDeltaX29
    linear_combination r788
  · unfold seg46BlindDeltaY29
    linear_combination r789
  · linear_combination r418

theorem seg46Blind_hstep_c2 (rho : Nat -> Seg46.F)
    (h : Seg46.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (31661 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 21 ≤ i → i < 31 →
      EdwardsBridge.onCurve (seg46BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg46BlindAccState rho i)
        (seg46BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg46Blind_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc
  · exact seg46Blind_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc
  · exact seg46Blind_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc
  · exact seg46Blind_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc
  · exact seg46Blind_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc
  · exact seg46Blind_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc
  · exact seg46Blind_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc
  · exact seg46Blind_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc
  · exact seg46Blind_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc
  · exact seg46Blind_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

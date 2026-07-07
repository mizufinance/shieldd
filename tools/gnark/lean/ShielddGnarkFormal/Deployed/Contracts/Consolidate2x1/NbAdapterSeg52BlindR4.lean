import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6190 rho ∧ Seg52.relationRow6601 rho ∧ Seg52.relationRow6602 rho ∧ Seg52.relationRow6603 rho ∧ Seg52.relationRow6604 rho ∧ Seg52.relationRow6605 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6190, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6601, r6602, r6603, r6604, r6605, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6190, r6601, r6602, r6603, r6604, r6605⟩

theorem seg52Blind_rung41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50579 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 41)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      41 (Bool.toZMod bit) (seg52BlindAccState rho 41)
      (seg52BlindAccState rho 42) := by
  obtain ⟨r6190, r6601, r6602, r6603, r6604, r6605⟩ := seg52Blind_rows41 rho h
  unfold Seg52.relationRow6190 at r6190

  unfold Seg52.relationRow6601 at r6601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6601

  unfold Seg52.relationRow6602 at r6602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6602

  unfold Seg52.relationRow6603 at r6603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6603

  unfold Seg52.relationRow6604 at r6604

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6604

  unfold Seg52.relationRow6605 at r6605

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6605

  have hnextx : seg52BlindDeltaX41 rho =
      seg52BlindDeltaX40 rho + rho 50992 := by
    unfold seg52BlindDeltaX41 seg52BlindDeltaX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 40]

    ring

  have hnexty : seg52BlindDeltaY41 rho =
      seg52BlindDeltaY40 rho + rho 50993 := by
    unfold seg52BlindDeltaY41 seg52BlindDeltaY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 40]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 41
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX40 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY40 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX41 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY41 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung41_wide (rho 50538) (rho 50579) (seg52BlindDeltaX40 rho) (seg52BlindDeltaY40 rho) (rho 50989) (rho 50990) (rho 50991) (rho 50992) (rho 50993) hacc
  · unfold seg52BlindDeltaX40 seg52BlindDeltaY40
    linear_combination r6601
  · unfold seg52BlindDeltaX40 seg52BlindDeltaY40
    linear_combination r6602
  · unfold seg52BlindDeltaX40 seg52BlindDeltaY40
    linear_combination r6603
  · unfold seg52BlindDeltaX40
    linear_combination r6604
  · unfold seg52BlindDeltaY40
    linear_combination r6605
  · linear_combination r6190

theorem seg52Blind_rows42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6191 rho ∧ Seg52.relationRow6606 rho ∧ Seg52.relationRow6607 rho ∧ Seg52.relationRow6608 rho ∧ Seg52.relationRow6609 rho ∧ Seg52.relationRow6610 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6191, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6606, r6607, r6608, r6609, r6610, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6191, r6606, r6607, r6608, r6609, r6610⟩

theorem seg52Blind_rung42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50580 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 42)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      42 (Bool.toZMod bit) (seg52BlindAccState rho 42)
      (seg52BlindAccState rho 43) := by
  obtain ⟨r6191, r6606, r6607, r6608, r6609, r6610⟩ := seg52Blind_rows42 rho h
  unfold Seg52.relationRow6191 at r6191

  unfold Seg52.relationRow6606 at r6606

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6606

  unfold Seg52.relationRow6607 at r6607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6607

  unfold Seg52.relationRow6608 at r6608

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6608

  unfold Seg52.relationRow6609 at r6609

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6609

  unfold Seg52.relationRow6610 at r6610

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6610

  have hnextx : seg52BlindDeltaX42 rho =
      seg52BlindDeltaX41 rho + rho 50997 := by
    unfold seg52BlindDeltaX42 seg52BlindDeltaX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 41]

    ring

  have hnexty : seg52BlindDeltaY42 rho =
      seg52BlindDeltaY41 rho + rho 50998 := by
    unfold seg52BlindDeltaY42 seg52BlindDeltaY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 41]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 42
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX41 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY41 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX42 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY42 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung42_wide (rho 50538) (rho 50580) (seg52BlindDeltaX41 rho) (seg52BlindDeltaY41 rho) (rho 50994) (rho 50995) (rho 50996) (rho 50997) (rho 50998) hacc
  · unfold seg52BlindDeltaX41 seg52BlindDeltaY41
    linear_combination r6606
  · unfold seg52BlindDeltaX41 seg52BlindDeltaY41
    linear_combination r6607
  · unfold seg52BlindDeltaX41 seg52BlindDeltaY41
    linear_combination r6608
  · unfold seg52BlindDeltaX41
    linear_combination r6609
  · unfold seg52BlindDeltaY41
    linear_combination r6610
  · linear_combination r6191

theorem seg52Blind_rows43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6192 rho ∧ Seg52.relationRow6611 rho ∧ Seg52.relationRow6612 rho ∧ Seg52.relationRow6613 rho ∧ Seg52.relationRow6614 rho ∧ Seg52.relationRow6615 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6192, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6611, r6612, r6613, r6614, r6615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6192, r6611, r6612, r6613, r6614, r6615⟩

theorem seg52Blind_rung43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50581 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 43)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      43 (Bool.toZMod bit) (seg52BlindAccState rho 43)
      (seg52BlindAccState rho 44) := by
  obtain ⟨r6192, r6611, r6612, r6613, r6614, r6615⟩ := seg52Blind_rows43 rho h
  unfold Seg52.relationRow6192 at r6192

  unfold Seg52.relationRow6611 at r6611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6611

  unfold Seg52.relationRow6612 at r6612

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6612

  unfold Seg52.relationRow6613 at r6613

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6613

  unfold Seg52.relationRow6614 at r6614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6614

  unfold Seg52.relationRow6615 at r6615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6615

  have hnextx : seg52BlindDeltaX43 rho =
      seg52BlindDeltaX42 rho + rho 51002 := by
    unfold seg52BlindDeltaX43 seg52BlindDeltaX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 42]

    ring

  have hnexty : seg52BlindDeltaY43 rho =
      seg52BlindDeltaY42 rho + rho 51003 := by
    unfold seg52BlindDeltaY43 seg52BlindDeltaY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 42]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 43
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX42 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY42 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX43 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY43 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung43_wide (rho 50538) (rho 50581) (seg52BlindDeltaX42 rho) (seg52BlindDeltaY42 rho) (rho 50999) (rho 51000) (rho 51001) (rho 51002) (rho 51003) hacc
  · unfold seg52BlindDeltaX42 seg52BlindDeltaY42
    linear_combination r6611
  · unfold seg52BlindDeltaX42 seg52BlindDeltaY42
    linear_combination r6612
  · unfold seg52BlindDeltaX42 seg52BlindDeltaY42
    linear_combination r6613
  · unfold seg52BlindDeltaX42
    linear_combination r6614
  · unfold seg52BlindDeltaY42
    linear_combination r6615
  · linear_combination r6192

theorem seg52Blind_rows44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6193 rho ∧ Seg52.relationRow6616 rho ∧ Seg52.relationRow6617 rho ∧ Seg52.relationRow6618 rho ∧ Seg52.relationRow6619 rho ∧ Seg52.relationRow6620 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6193, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6616, r6617, r6618, r6619, r6620, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6193, r6616, r6617, r6618, r6619, r6620⟩

theorem seg52Blind_rung44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50582 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 44)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      44 (Bool.toZMod bit) (seg52BlindAccState rho 44)
      (seg52BlindAccState rho 45) := by
  obtain ⟨r6193, r6616, r6617, r6618, r6619, r6620⟩ := seg52Blind_rows44 rho h
  unfold Seg52.relationRow6193 at r6193

  unfold Seg52.relationRow6616 at r6616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6616

  unfold Seg52.relationRow6617 at r6617

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6617

  unfold Seg52.relationRow6618 at r6618

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6618

  unfold Seg52.relationRow6619 at r6619

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6619

  unfold Seg52.relationRow6620 at r6620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6620

  have hnextx : seg52BlindDeltaX44 rho =
      seg52BlindDeltaX43 rho + rho 51007 := by
    unfold seg52BlindDeltaX44 seg52BlindDeltaX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 43]

    ring

  have hnexty : seg52BlindDeltaY44 rho =
      seg52BlindDeltaY43 rho + rho 51008 := by
    unfold seg52BlindDeltaY44 seg52BlindDeltaY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 43]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 44
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX43 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY43 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX44 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY44 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung44_wide (rho 50538) (rho 50582) (seg52BlindDeltaX43 rho) (seg52BlindDeltaY43 rho) (rho 51004) (rho 51005) (rho 51006) (rho 51007) (rho 51008) hacc
  · unfold seg52BlindDeltaX43 seg52BlindDeltaY43
    linear_combination r6616
  · unfold seg52BlindDeltaX43 seg52BlindDeltaY43
    linear_combination r6617
  · unfold seg52BlindDeltaX43 seg52BlindDeltaY43
    linear_combination r6618
  · unfold seg52BlindDeltaX43
    linear_combination r6619
  · unfold seg52BlindDeltaY43
    linear_combination r6620
  · linear_combination r6193

theorem seg52Blind_rows45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6194 rho ∧ Seg52.relationRow6621 rho ∧ Seg52.relationRow6622 rho ∧ Seg52.relationRow6623 rho ∧ Seg52.relationRow6624 rho ∧ Seg52.relationRow6625 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6194, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6621, r6622, r6623, r6624, r6625, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6194, r6621, r6622, r6623, r6624, r6625⟩

theorem seg52Blind_rung45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50583 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 45)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      45 (Bool.toZMod bit) (seg52BlindAccState rho 45)
      (seg52BlindAccState rho 46) := by
  obtain ⟨r6194, r6621, r6622, r6623, r6624, r6625⟩ := seg52Blind_rows45 rho h
  unfold Seg52.relationRow6194 at r6194

  unfold Seg52.relationRow6621 at r6621

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6621

  unfold Seg52.relationRow6622 at r6622

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6622

  unfold Seg52.relationRow6623 at r6623

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6623

  unfold Seg52.relationRow6624 at r6624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6624

  unfold Seg52.relationRow6625 at r6625

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6625

  have hnextx : seg52BlindDeltaX45 rho =
      seg52BlindDeltaX44 rho + rho 51012 := by
    unfold seg52BlindDeltaX45 seg52BlindDeltaX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 44]

    ring

  have hnexty : seg52BlindDeltaY45 rho =
      seg52BlindDeltaY44 rho + rho 51013 := by
    unfold seg52BlindDeltaY45 seg52BlindDeltaY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 44]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 45
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX44 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY44 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX45 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY45 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung45_wide (rho 50538) (rho 50583) (seg52BlindDeltaX44 rho) (seg52BlindDeltaY44 rho) (rho 51009) (rho 51010) (rho 51011) (rho 51012) (rho 51013) hacc
  · unfold seg52BlindDeltaX44 seg52BlindDeltaY44
    linear_combination r6621
  · unfold seg52BlindDeltaX44 seg52BlindDeltaY44
    linear_combination r6622
  · unfold seg52BlindDeltaX44 seg52BlindDeltaY44
    linear_combination r6623
  · unfold seg52BlindDeltaX44
    linear_combination r6624
  · unfold seg52BlindDeltaY44
    linear_combination r6625
  · linear_combination r6194

theorem seg52Blind_rows46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6195 rho ∧ Seg52.relationRow6626 rho ∧ Seg52.relationRow6627 rho ∧ Seg52.relationRow6628 rho ∧ Seg52.relationRow6629 rho ∧ Seg52.relationRow6630 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6195, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6626, r6627, r6628, r6629, r6630, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6195, r6626, r6627, r6628, r6629, r6630⟩

theorem seg52Blind_rung46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50584 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 46)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      46 (Bool.toZMod bit) (seg52BlindAccState rho 46)
      (seg52BlindAccState rho 47) := by
  obtain ⟨r6195, r6626, r6627, r6628, r6629, r6630⟩ := seg52Blind_rows46 rho h
  unfold Seg52.relationRow6195 at r6195

  unfold Seg52.relationRow6626 at r6626

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6626

  unfold Seg52.relationRow6627 at r6627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6627

  unfold Seg52.relationRow6628 at r6628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6628

  unfold Seg52.relationRow6629 at r6629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6629

  unfold Seg52.relationRow6630 at r6630

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6630

  have hnextx : seg52BlindDeltaX46 rho =
      seg52BlindDeltaX45 rho + rho 51017 := by
    unfold seg52BlindDeltaX46 seg52BlindDeltaX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 45]

    ring

  have hnexty : seg52BlindDeltaY46 rho =
      seg52BlindDeltaY45 rho + rho 51018 := by
    unfold seg52BlindDeltaY46 seg52BlindDeltaY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 45]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 46
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX45 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY45 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX46 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY46 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung46_wide (rho 50538) (rho 50584) (seg52BlindDeltaX45 rho) (seg52BlindDeltaY45 rho) (rho 51014) (rho 51015) (rho 51016) (rho 51017) (rho 51018) hacc
  · unfold seg52BlindDeltaX45 seg52BlindDeltaY45
    linear_combination r6626
  · unfold seg52BlindDeltaX45 seg52BlindDeltaY45
    linear_combination r6627
  · unfold seg52BlindDeltaX45 seg52BlindDeltaY45
    linear_combination r6628
  · unfold seg52BlindDeltaX45
    linear_combination r6629
  · unfold seg52BlindDeltaY45
    linear_combination r6630
  · linear_combination r6195

theorem seg52Blind_rows47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6196 rho ∧ Seg52.relationRow6631 rho ∧ Seg52.relationRow6632 rho ∧ Seg52.relationRow6633 rho ∧ Seg52.relationRow6634 rho ∧ Seg52.relationRow6635 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6196, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6631, r6632, r6633, r6634, r6635, _, _, _, _⟩

  exact ⟨r6196, r6631, r6632, r6633, r6634, r6635⟩

theorem seg52Blind_rung47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50585 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 47)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      47 (Bool.toZMod bit) (seg52BlindAccState rho 47)
      (seg52BlindAccState rho 48) := by
  obtain ⟨r6196, r6631, r6632, r6633, r6634, r6635⟩ := seg52Blind_rows47 rho h
  unfold Seg52.relationRow6196 at r6196

  unfold Seg52.relationRow6631 at r6631

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6631

  unfold Seg52.relationRow6632 at r6632

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6632

  unfold Seg52.relationRow6633 at r6633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6633

  unfold Seg52.relationRow6634 at r6634

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6634

  unfold Seg52.relationRow6635 at r6635

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6635

  have hnextx : seg52BlindDeltaX47 rho =
      seg52BlindDeltaX46 rho + rho 51022 := by
    unfold seg52BlindDeltaX47 seg52BlindDeltaX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 46]

    ring

  have hnexty : seg52BlindDeltaY47 rho =
      seg52BlindDeltaY46 rho + rho 51023 := by
    unfold seg52BlindDeltaY47 seg52BlindDeltaY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 46]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 47
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX46 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY46 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX47 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY47 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung47_wide (rho 50538) (rho 50585) (seg52BlindDeltaX46 rho) (seg52BlindDeltaY46 rho) (rho 51019) (rho 51020) (rho 51021) (rho 51022) (rho 51023) hacc
  · unfold seg52BlindDeltaX46 seg52BlindDeltaY46
    linear_combination r6631
  · unfold seg52BlindDeltaX46 seg52BlindDeltaY46
    linear_combination r6632
  · unfold seg52BlindDeltaX46 seg52BlindDeltaY46
    linear_combination r6633
  · unfold seg52BlindDeltaX46
    linear_combination r6634
  · unfold seg52BlindDeltaY46
    linear_combination r6635
  · linear_combination r6196

theorem seg52Blind_rows48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6197 rho ∧ Seg52.relationRow6636 rho ∧ Seg52.relationRow6637 rho ∧ Seg52.relationRow6638 rho ∧ Seg52.relationRow6639 rho ∧ Seg52.relationRow6640 rho := by
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

    _, _, p82, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6197, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6636, r6637, r6638, r6639⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨r6640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6197, r6636, r6637, r6638, r6639, r6640⟩

theorem seg52Blind_rung48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50586 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 48)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      48 (Bool.toZMod bit) (seg52BlindAccState rho 48)
      (seg52BlindAccState rho 49) := by
  obtain ⟨r6197, r6636, r6637, r6638, r6639, r6640⟩ := seg52Blind_rows48 rho h
  unfold Seg52.relationRow6197 at r6197

  unfold Seg52.relationRow6636 at r6636

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6636

  unfold Seg52.relationRow6637 at r6637

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6637

  unfold Seg52.relationRow6638 at r6638

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6638

  unfold Seg52.relationRow6639 at r6639

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6639

  unfold Seg52.relationRow6640 at r6640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6640

  have hnextx : seg52BlindDeltaX48 rho =
      seg52BlindDeltaX47 rho + rho 51027 := by
    unfold seg52BlindDeltaX48 seg52BlindDeltaX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 47]

    ring

  have hnexty : seg52BlindDeltaY48 rho =
      seg52BlindDeltaY47 rho + rho 51028 := by
    unfold seg52BlindDeltaY48 seg52BlindDeltaY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 47]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 48
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX47 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY47 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX48 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY48 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung48_wide (rho 50538) (rho 50586) (seg52BlindDeltaX47 rho) (seg52BlindDeltaY47 rho) (rho 51024) (rho 51025) (rho 51026) (rho 51027) (rho 51028) hacc
  · unfold seg52BlindDeltaX47 seg52BlindDeltaY47
    linear_combination r6636
  · unfold seg52BlindDeltaX47 seg52BlindDeltaY47
    linear_combination r6637
  · unfold seg52BlindDeltaX47 seg52BlindDeltaY47
    linear_combination r6638
  · unfold seg52BlindDeltaX47
    linear_combination r6639
  · unfold seg52BlindDeltaY47
    linear_combination r6640
  · linear_combination r6197

theorem seg52Blind_rows49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6198 rho ∧ Seg52.relationRow6641 rho ∧ Seg52.relationRow6642 rho ∧ Seg52.relationRow6643 rho ∧ Seg52.relationRow6644 rho ∧ Seg52.relationRow6645 rho := by
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

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6198, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, r6641, r6642, r6643, r6644, r6645, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6198, r6641, r6642, r6643, r6644, r6645⟩

theorem seg52Blind_rung49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50587 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 49)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      49 (Bool.toZMod bit) (seg52BlindAccState rho 49)
      (seg52BlindAccState rho 50) := by
  obtain ⟨r6198, r6641, r6642, r6643, r6644, r6645⟩ := seg52Blind_rows49 rho h
  unfold Seg52.relationRow6198 at r6198

  unfold Seg52.relationRow6641 at r6641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6641

  unfold Seg52.relationRow6642 at r6642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6642

  unfold Seg52.relationRow6643 at r6643

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6643

  unfold Seg52.relationRow6644 at r6644

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6644

  unfold Seg52.relationRow6645 at r6645

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6645

  have hnextx : seg52BlindDeltaX49 rho =
      seg52BlindDeltaX48 rho + rho 51032 := by
    unfold seg52BlindDeltaX49 seg52BlindDeltaX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 48]

    ring

  have hnexty : seg52BlindDeltaY49 rho =
      seg52BlindDeltaY48 rho + rho 51033 := by
    unfold seg52BlindDeltaY49 seg52BlindDeltaY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 48]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 49
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX48 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY48 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX49 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY49 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung49_wide (rho 50538) (rho 50587) (seg52BlindDeltaX48 rho) (seg52BlindDeltaY48 rho) (rho 51029) (rho 51030) (rho 51031) (rho 51032) (rho 51033) hacc
  · unfold seg52BlindDeltaX48 seg52BlindDeltaY48
    linear_combination r6641
  · unfold seg52BlindDeltaX48 seg52BlindDeltaY48
    linear_combination r6642
  · unfold seg52BlindDeltaX48 seg52BlindDeltaY48
    linear_combination r6643
  · unfold seg52BlindDeltaX48
    linear_combination r6644
  · unfold seg52BlindDeltaY48
    linear_combination r6645
  · linear_combination r6198

theorem seg52Blind_rows50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6199 rho ∧ Seg52.relationRow6646 rho ∧ Seg52.relationRow6647 rho ∧ Seg52.relationRow6648 rho ∧ Seg52.relationRow6649 rho ∧ Seg52.relationRow6650 rho := by
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

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, r6646, r6647, r6648, r6649, r6650, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6199, r6646, r6647, r6648, r6649, r6650⟩

theorem seg52Blind_rung50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50588 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 50)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      50 (Bool.toZMod bit) (seg52BlindAccState rho 50)
      (seg52BlindAccState rho 51) := by
  obtain ⟨r6199, r6646, r6647, r6648, r6649, r6650⟩ := seg52Blind_rows50 rho h
  unfold Seg52.relationRow6199 at r6199

  unfold Seg52.relationRow6646 at r6646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6646

  unfold Seg52.relationRow6647 at r6647

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6647

  unfold Seg52.relationRow6648 at r6648

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6648

  unfold Seg52.relationRow6649 at r6649

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6649

  unfold Seg52.relationRow6650 at r6650

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6650

  have hnextx : seg52BlindDeltaX50 rho =
      seg52BlindDeltaX49 rho + rho 51037 := by
    unfold seg52BlindDeltaX50 seg52BlindDeltaX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 49]

    ring

  have hnexty : seg52BlindDeltaY50 rho =
      seg52BlindDeltaY49 rho + rho 51038 := by
    unfold seg52BlindDeltaY50 seg52BlindDeltaY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 49]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 50
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX49 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY49 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX50 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY50 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung50_wide (rho 50538) (rho 50588) (seg52BlindDeltaX49 rho) (seg52BlindDeltaY49 rho) (rho 51034) (rho 51035) (rho 51036) (rho 51037) (rho 51038) hacc
  · unfold seg52BlindDeltaX49 seg52BlindDeltaY49
    linear_combination r6646
  · unfold seg52BlindDeltaX49 seg52BlindDeltaY49
    linear_combination r6647
  · unfold seg52BlindDeltaX49 seg52BlindDeltaY49
    linear_combination r6648
  · unfold seg52BlindDeltaX49
    linear_combination r6649
  · unfold seg52BlindDeltaY49
    linear_combination r6650
  · linear_combination r6199

theorem seg52Blind_hstep_c4 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 41 ≤ i → i < 51 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc
  · exact seg52Blind_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc
  · exact seg52Blind_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc
  · exact seg52Blind_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc
  · exact seg52Blind_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc
  · exact seg52Blind_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc
  · exact seg52Blind_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc
  · exact seg52Blind_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc
  · exact seg52Blind_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc
  · exact seg52Blind_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

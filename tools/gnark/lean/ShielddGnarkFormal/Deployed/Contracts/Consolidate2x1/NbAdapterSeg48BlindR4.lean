import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows41 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6190 rho ∧ Seg48.relationRow6601 rho ∧ Seg48.relationRow6602 rho ∧ Seg48.relationRow6603 rho ∧ Seg48.relationRow6604 rho ∧ Seg48.relationRow6605 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6190, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6601, r6602, r6603, r6604, r6605, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6190, r6601, r6602, r6603, r6604, r6605⟩

theorem seg48Blind_rung41 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38947 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 41)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      41 (Bool.toZMod bit) (seg48BlindAccState rho 41)
      (seg48BlindAccState rho 42) := by
  obtain ⟨r6190, r6601, r6602, r6603, r6604, r6605⟩ := seg48Blind_rows41 rho h
  unfold Seg48.relationRow6190 at r6190

  unfold Seg48.relationRow6601 at r6601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6601

  unfold Seg48.relationRow6602 at r6602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6602

  unfold Seg48.relationRow6603 at r6603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6603

  unfold Seg48.relationRow6604 at r6604

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6604

  unfold Seg48.relationRow6605 at r6605

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6605

  have hnextx : seg48BlindDeltaX41 rho =
      seg48BlindDeltaX40 rho + rho 39360 := by
    unfold seg48BlindDeltaX41 seg48BlindDeltaX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 40]

    ring

  have hnexty : seg48BlindDeltaY41 rho =
      seg48BlindDeltaY40 rho + rho 39361 := by
    unfold seg48BlindDeltaY41 seg48BlindDeltaY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 40]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 41
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX40 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY40 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX41 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY41 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung41_wide (rho 38906) (rho 38947) (seg48BlindDeltaX40 rho) (seg48BlindDeltaY40 rho) (rho 39357) (rho 39358) (rho 39359) (rho 39360) (rho 39361) hacc
  · unfold seg48BlindDeltaX40 seg48BlindDeltaY40
    linear_combination r6601
  · unfold seg48BlindDeltaX40 seg48BlindDeltaY40
    linear_combination r6602
  · unfold seg48BlindDeltaX40 seg48BlindDeltaY40
    linear_combination r6603
  · unfold seg48BlindDeltaX40
    linear_combination r6604
  · unfold seg48BlindDeltaY40
    linear_combination r6605
  · linear_combination r6190

theorem seg48Blind_rows42 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6191 rho ∧ Seg48.relationRow6606 rho ∧ Seg48.relationRow6607 rho ∧ Seg48.relationRow6608 rho ∧ Seg48.relationRow6609 rho ∧ Seg48.relationRow6610 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6191, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6606, r6607, r6608, r6609, r6610, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6191, r6606, r6607, r6608, r6609, r6610⟩

theorem seg48Blind_rung42 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38948 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 42)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      42 (Bool.toZMod bit) (seg48BlindAccState rho 42)
      (seg48BlindAccState rho 43) := by
  obtain ⟨r6191, r6606, r6607, r6608, r6609, r6610⟩ := seg48Blind_rows42 rho h
  unfold Seg48.relationRow6191 at r6191

  unfold Seg48.relationRow6606 at r6606

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6606

  unfold Seg48.relationRow6607 at r6607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6607

  unfold Seg48.relationRow6608 at r6608

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6608

  unfold Seg48.relationRow6609 at r6609

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6609

  unfold Seg48.relationRow6610 at r6610

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6610

  have hnextx : seg48BlindDeltaX42 rho =
      seg48BlindDeltaX41 rho + rho 39365 := by
    unfold seg48BlindDeltaX42 seg48BlindDeltaX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 41]

    ring

  have hnexty : seg48BlindDeltaY42 rho =
      seg48BlindDeltaY41 rho + rho 39366 := by
    unfold seg48BlindDeltaY42 seg48BlindDeltaY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 41]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 42
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX41 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY41 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX42 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY42 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung42_wide (rho 38906) (rho 38948) (seg48BlindDeltaX41 rho) (seg48BlindDeltaY41 rho) (rho 39362) (rho 39363) (rho 39364) (rho 39365) (rho 39366) hacc
  · unfold seg48BlindDeltaX41 seg48BlindDeltaY41
    linear_combination r6606
  · unfold seg48BlindDeltaX41 seg48BlindDeltaY41
    linear_combination r6607
  · unfold seg48BlindDeltaX41 seg48BlindDeltaY41
    linear_combination r6608
  · unfold seg48BlindDeltaX41
    linear_combination r6609
  · unfold seg48BlindDeltaY41
    linear_combination r6610
  · linear_combination r6191

theorem seg48Blind_rows43 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6192 rho ∧ Seg48.relationRow6611 rho ∧ Seg48.relationRow6612 rho ∧ Seg48.relationRow6613 rho ∧ Seg48.relationRow6614 rho ∧ Seg48.relationRow6615 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6192, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6611, r6612, r6613, r6614, r6615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6192, r6611, r6612, r6613, r6614, r6615⟩

theorem seg48Blind_rung43 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38949 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 43)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      43 (Bool.toZMod bit) (seg48BlindAccState rho 43)
      (seg48BlindAccState rho 44) := by
  obtain ⟨r6192, r6611, r6612, r6613, r6614, r6615⟩ := seg48Blind_rows43 rho h
  unfold Seg48.relationRow6192 at r6192

  unfold Seg48.relationRow6611 at r6611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6611

  unfold Seg48.relationRow6612 at r6612

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6612

  unfold Seg48.relationRow6613 at r6613

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6613

  unfold Seg48.relationRow6614 at r6614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6614

  unfold Seg48.relationRow6615 at r6615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6615

  have hnextx : seg48BlindDeltaX43 rho =
      seg48BlindDeltaX42 rho + rho 39370 := by
    unfold seg48BlindDeltaX43 seg48BlindDeltaX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 42]

    ring

  have hnexty : seg48BlindDeltaY43 rho =
      seg48BlindDeltaY42 rho + rho 39371 := by
    unfold seg48BlindDeltaY43 seg48BlindDeltaY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 42]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 43
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX42 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY42 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX43 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY43 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung43_wide (rho 38906) (rho 38949) (seg48BlindDeltaX42 rho) (seg48BlindDeltaY42 rho) (rho 39367) (rho 39368) (rho 39369) (rho 39370) (rho 39371) hacc
  · unfold seg48BlindDeltaX42 seg48BlindDeltaY42
    linear_combination r6611
  · unfold seg48BlindDeltaX42 seg48BlindDeltaY42
    linear_combination r6612
  · unfold seg48BlindDeltaX42 seg48BlindDeltaY42
    linear_combination r6613
  · unfold seg48BlindDeltaX42
    linear_combination r6614
  · unfold seg48BlindDeltaY42
    linear_combination r6615
  · linear_combination r6192

theorem seg48Blind_rows44 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6193 rho ∧ Seg48.relationRow6616 rho ∧ Seg48.relationRow6617 rho ∧ Seg48.relationRow6618 rho ∧ Seg48.relationRow6619 rho ∧ Seg48.relationRow6620 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6193, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6616, r6617, r6618, r6619, r6620, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6193, r6616, r6617, r6618, r6619, r6620⟩

theorem seg48Blind_rung44 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38950 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 44)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      44 (Bool.toZMod bit) (seg48BlindAccState rho 44)
      (seg48BlindAccState rho 45) := by
  obtain ⟨r6193, r6616, r6617, r6618, r6619, r6620⟩ := seg48Blind_rows44 rho h
  unfold Seg48.relationRow6193 at r6193

  unfold Seg48.relationRow6616 at r6616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6616

  unfold Seg48.relationRow6617 at r6617

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6617

  unfold Seg48.relationRow6618 at r6618

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6618

  unfold Seg48.relationRow6619 at r6619

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6619

  unfold Seg48.relationRow6620 at r6620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6620

  have hnextx : seg48BlindDeltaX44 rho =
      seg48BlindDeltaX43 rho + rho 39375 := by
    unfold seg48BlindDeltaX44 seg48BlindDeltaX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 43]

    ring

  have hnexty : seg48BlindDeltaY44 rho =
      seg48BlindDeltaY43 rho + rho 39376 := by
    unfold seg48BlindDeltaY44 seg48BlindDeltaY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 43]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 44
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX43 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY43 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX44 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY44 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung44_wide (rho 38906) (rho 38950) (seg48BlindDeltaX43 rho) (seg48BlindDeltaY43 rho) (rho 39372) (rho 39373) (rho 39374) (rho 39375) (rho 39376) hacc
  · unfold seg48BlindDeltaX43 seg48BlindDeltaY43
    linear_combination r6616
  · unfold seg48BlindDeltaX43 seg48BlindDeltaY43
    linear_combination r6617
  · unfold seg48BlindDeltaX43 seg48BlindDeltaY43
    linear_combination r6618
  · unfold seg48BlindDeltaX43
    linear_combination r6619
  · unfold seg48BlindDeltaY43
    linear_combination r6620
  · linear_combination r6193

theorem seg48Blind_rows45 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6194 rho ∧ Seg48.relationRow6621 rho ∧ Seg48.relationRow6622 rho ∧ Seg48.relationRow6623 rho ∧ Seg48.relationRow6624 rho ∧ Seg48.relationRow6625 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6194, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6621, r6622, r6623, r6624, r6625, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6194, r6621, r6622, r6623, r6624, r6625⟩

theorem seg48Blind_rung45 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38951 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 45)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      45 (Bool.toZMod bit) (seg48BlindAccState rho 45)
      (seg48BlindAccState rho 46) := by
  obtain ⟨r6194, r6621, r6622, r6623, r6624, r6625⟩ := seg48Blind_rows45 rho h
  unfold Seg48.relationRow6194 at r6194

  unfold Seg48.relationRow6621 at r6621

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6621

  unfold Seg48.relationRow6622 at r6622

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6622

  unfold Seg48.relationRow6623 at r6623

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6623

  unfold Seg48.relationRow6624 at r6624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6624

  unfold Seg48.relationRow6625 at r6625

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6625

  have hnextx : seg48BlindDeltaX45 rho =
      seg48BlindDeltaX44 rho + rho 39380 := by
    unfold seg48BlindDeltaX45 seg48BlindDeltaX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 44]

    ring

  have hnexty : seg48BlindDeltaY45 rho =
      seg48BlindDeltaY44 rho + rho 39381 := by
    unfold seg48BlindDeltaY45 seg48BlindDeltaY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 44]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 45
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX44 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY44 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX45 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY45 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung45_wide (rho 38906) (rho 38951) (seg48BlindDeltaX44 rho) (seg48BlindDeltaY44 rho) (rho 39377) (rho 39378) (rho 39379) (rho 39380) (rho 39381) hacc
  · unfold seg48BlindDeltaX44 seg48BlindDeltaY44
    linear_combination r6621
  · unfold seg48BlindDeltaX44 seg48BlindDeltaY44
    linear_combination r6622
  · unfold seg48BlindDeltaX44 seg48BlindDeltaY44
    linear_combination r6623
  · unfold seg48BlindDeltaX44
    linear_combination r6624
  · unfold seg48BlindDeltaY44
    linear_combination r6625
  · linear_combination r6194

theorem seg48Blind_rows46 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6195 rho ∧ Seg48.relationRow6626 rho ∧ Seg48.relationRow6627 rho ∧ Seg48.relationRow6628 rho ∧ Seg48.relationRow6629 rho ∧ Seg48.relationRow6630 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6195, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6626, r6627, r6628, r6629, r6630, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6195, r6626, r6627, r6628, r6629, r6630⟩

theorem seg48Blind_rung46 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38952 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 46)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      46 (Bool.toZMod bit) (seg48BlindAccState rho 46)
      (seg48BlindAccState rho 47) := by
  obtain ⟨r6195, r6626, r6627, r6628, r6629, r6630⟩ := seg48Blind_rows46 rho h
  unfold Seg48.relationRow6195 at r6195

  unfold Seg48.relationRow6626 at r6626

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6626

  unfold Seg48.relationRow6627 at r6627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6627

  unfold Seg48.relationRow6628 at r6628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6628

  unfold Seg48.relationRow6629 at r6629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6629

  unfold Seg48.relationRow6630 at r6630

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6630

  have hnextx : seg48BlindDeltaX46 rho =
      seg48BlindDeltaX45 rho + rho 39385 := by
    unfold seg48BlindDeltaX46 seg48BlindDeltaX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 45]

    ring

  have hnexty : seg48BlindDeltaY46 rho =
      seg48BlindDeltaY45 rho + rho 39386 := by
    unfold seg48BlindDeltaY46 seg48BlindDeltaY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 45]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 46
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX45 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY45 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX46 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY46 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung46_wide (rho 38906) (rho 38952) (seg48BlindDeltaX45 rho) (seg48BlindDeltaY45 rho) (rho 39382) (rho 39383) (rho 39384) (rho 39385) (rho 39386) hacc
  · unfold seg48BlindDeltaX45 seg48BlindDeltaY45
    linear_combination r6626
  · unfold seg48BlindDeltaX45 seg48BlindDeltaY45
    linear_combination r6627
  · unfold seg48BlindDeltaX45 seg48BlindDeltaY45
    linear_combination r6628
  · unfold seg48BlindDeltaX45
    linear_combination r6629
  · unfold seg48BlindDeltaY45
    linear_combination r6630
  · linear_combination r6195

theorem seg48Blind_rows47 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6196 rho ∧ Seg48.relationRow6631 rho ∧ Seg48.relationRow6632 rho ∧ Seg48.relationRow6633 rho ∧ Seg48.relationRow6634 rho ∧ Seg48.relationRow6635 rho := by
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

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6196, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6631, r6632, r6633, r6634, r6635, _, _, _, _⟩

  exact ⟨r6196, r6631, r6632, r6633, r6634, r6635⟩

theorem seg48Blind_rung47 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38953 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 47)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      47 (Bool.toZMod bit) (seg48BlindAccState rho 47)
      (seg48BlindAccState rho 48) := by
  obtain ⟨r6196, r6631, r6632, r6633, r6634, r6635⟩ := seg48Blind_rows47 rho h
  unfold Seg48.relationRow6196 at r6196

  unfold Seg48.relationRow6631 at r6631

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6631

  unfold Seg48.relationRow6632 at r6632

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6632

  unfold Seg48.relationRow6633 at r6633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6633

  unfold Seg48.relationRow6634 at r6634

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6634

  unfold Seg48.relationRow6635 at r6635

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6635

  have hnextx : seg48BlindDeltaX47 rho =
      seg48BlindDeltaX46 rho + rho 39390 := by
    unfold seg48BlindDeltaX47 seg48BlindDeltaX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 46]

    ring

  have hnexty : seg48BlindDeltaY47 rho =
      seg48BlindDeltaY46 rho + rho 39391 := by
    unfold seg48BlindDeltaY47 seg48BlindDeltaY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 46]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 47
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX46 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY46 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX47 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY47 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung47_wide (rho 38906) (rho 38953) (seg48BlindDeltaX46 rho) (seg48BlindDeltaY46 rho) (rho 39387) (rho 39388) (rho 39389) (rho 39390) (rho 39391) hacc
  · unfold seg48BlindDeltaX46 seg48BlindDeltaY46
    linear_combination r6631
  · unfold seg48BlindDeltaX46 seg48BlindDeltaY46
    linear_combination r6632
  · unfold seg48BlindDeltaX46 seg48BlindDeltaY46
    linear_combination r6633
  · unfold seg48BlindDeltaX46
    linear_combination r6634
  · unfold seg48BlindDeltaY46
    linear_combination r6635
  · linear_combination r6196

theorem seg48Blind_rows48 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6197 rho ∧ Seg48.relationRow6636 rho ∧ Seg48.relationRow6637 rho ∧ Seg48.relationRow6638 rho ∧ Seg48.relationRow6639 rho ∧ Seg48.relationRow6640 rho := by
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

    _, _, p82, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6197, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6636, r6637, r6638, r6639⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨r6640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6197, r6636, r6637, r6638, r6639, r6640⟩

theorem seg48Blind_rung48 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38954 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 48)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      48 (Bool.toZMod bit) (seg48BlindAccState rho 48)
      (seg48BlindAccState rho 49) := by
  obtain ⟨r6197, r6636, r6637, r6638, r6639, r6640⟩ := seg48Blind_rows48 rho h
  unfold Seg48.relationRow6197 at r6197

  unfold Seg48.relationRow6636 at r6636

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6636

  unfold Seg48.relationRow6637 at r6637

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6637

  unfold Seg48.relationRow6638 at r6638

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6638

  unfold Seg48.relationRow6639 at r6639

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6639

  unfold Seg48.relationRow6640 at r6640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6640

  have hnextx : seg48BlindDeltaX48 rho =
      seg48BlindDeltaX47 rho + rho 39395 := by
    unfold seg48BlindDeltaX48 seg48BlindDeltaX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 47]

    ring

  have hnexty : seg48BlindDeltaY48 rho =
      seg48BlindDeltaY47 rho + rho 39396 := by
    unfold seg48BlindDeltaY48 seg48BlindDeltaY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 47]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 48
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX47 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY47 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX48 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY48 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung48_wide (rho 38906) (rho 38954) (seg48BlindDeltaX47 rho) (seg48BlindDeltaY47 rho) (rho 39392) (rho 39393) (rho 39394) (rho 39395) (rho 39396) hacc
  · unfold seg48BlindDeltaX47 seg48BlindDeltaY47
    linear_combination r6636
  · unfold seg48BlindDeltaX47 seg48BlindDeltaY47
    linear_combination r6637
  · unfold seg48BlindDeltaX47 seg48BlindDeltaY47
    linear_combination r6638
  · unfold seg48BlindDeltaX47
    linear_combination r6639
  · unfold seg48BlindDeltaY47
    linear_combination r6640
  · linear_combination r6197

theorem seg48Blind_rows49 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6198 rho ∧ Seg48.relationRow6641 rho ∧ Seg48.relationRow6642 rho ∧ Seg48.relationRow6643 rho ∧ Seg48.relationRow6644 rho ∧ Seg48.relationRow6645 rho := by
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

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6198, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, r6641, r6642, r6643, r6644, r6645, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6198, r6641, r6642, r6643, r6644, r6645⟩

theorem seg48Blind_rung49 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38955 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 49)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      49 (Bool.toZMod bit) (seg48BlindAccState rho 49)
      (seg48BlindAccState rho 50) := by
  obtain ⟨r6198, r6641, r6642, r6643, r6644, r6645⟩ := seg48Blind_rows49 rho h
  unfold Seg48.relationRow6198 at r6198

  unfold Seg48.relationRow6641 at r6641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6641

  unfold Seg48.relationRow6642 at r6642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6642

  unfold Seg48.relationRow6643 at r6643

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6643

  unfold Seg48.relationRow6644 at r6644

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6644

  unfold Seg48.relationRow6645 at r6645

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6645

  have hnextx : seg48BlindDeltaX49 rho =
      seg48BlindDeltaX48 rho + rho 39400 := by
    unfold seg48BlindDeltaX49 seg48BlindDeltaX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 48]

    ring

  have hnexty : seg48BlindDeltaY49 rho =
      seg48BlindDeltaY48 rho + rho 39401 := by
    unfold seg48BlindDeltaY49 seg48BlindDeltaY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 48]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 49
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX48 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY48 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX49 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY49 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung49_wide (rho 38906) (rho 38955) (seg48BlindDeltaX48 rho) (seg48BlindDeltaY48 rho) (rho 39397) (rho 39398) (rho 39399) (rho 39400) (rho 39401) hacc
  · unfold seg48BlindDeltaX48 seg48BlindDeltaY48
    linear_combination r6641
  · unfold seg48BlindDeltaX48 seg48BlindDeltaY48
    linear_combination r6642
  · unfold seg48BlindDeltaX48 seg48BlindDeltaY48
    linear_combination r6643
  · unfold seg48BlindDeltaX48
    linear_combination r6644
  · unfold seg48BlindDeltaY48
    linear_combination r6645
  · linear_combination r6198

theorem seg48Blind_rows50 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6199 rho ∧ Seg48.relationRow6646 rho ∧ Seg48.relationRow6647 rho ∧ Seg48.relationRow6648 rho ∧ Seg48.relationRow6649 rho ∧ Seg48.relationRow6650 rho := by
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

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, r6646, r6647, r6648, r6649, r6650, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6199, r6646, r6647, r6648, r6649, r6650⟩

theorem seg48Blind_rung50 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38956 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 50)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      50 (Bool.toZMod bit) (seg48BlindAccState rho 50)
      (seg48BlindAccState rho 51) := by
  obtain ⟨r6199, r6646, r6647, r6648, r6649, r6650⟩ := seg48Blind_rows50 rho h
  unfold Seg48.relationRow6199 at r6199

  unfold Seg48.relationRow6646 at r6646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6646

  unfold Seg48.relationRow6647 at r6647

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6647

  unfold Seg48.relationRow6648 at r6648

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6648

  unfold Seg48.relationRow6649 at r6649

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6649

  unfold Seg48.relationRow6650 at r6650

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6650

  have hnextx : seg48BlindDeltaX50 rho =
      seg48BlindDeltaX49 rho + rho 39405 := by
    unfold seg48BlindDeltaX50 seg48BlindDeltaX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 49]

    ring

  have hnexty : seg48BlindDeltaY50 rho =
      seg48BlindDeltaY49 rho + rho 39406 := by
    unfold seg48BlindDeltaY50 seg48BlindDeltaY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 49]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 50
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX49 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY49 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX50 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY50 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung50_wide (rho 38906) (rho 38956) (seg48BlindDeltaX49 rho) (seg48BlindDeltaY49 rho) (rho 39402) (rho 39403) (rho 39404) (rho 39405) (rho 39406) hacc
  · unfold seg48BlindDeltaX49 seg48BlindDeltaY49
    linear_combination r6646
  · unfold seg48BlindDeltaX49 seg48BlindDeltaY49
    linear_combination r6647
  · unfold seg48BlindDeltaX49 seg48BlindDeltaY49
    linear_combination r6648
  · unfold seg48BlindDeltaX49
    linear_combination r6649
  · unfold seg48BlindDeltaY49
    linear_combination r6650
  · linear_combination r6199

theorem seg48Blind_hstep_c4 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 41 ≤ i → i < 51 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc
  · exact seg48Blind_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc
  · exact seg48Blind_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc
  · exact seg48Blind_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc
  · exact seg48Blind_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc
  · exact seg48Blind_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc
  · exact seg48Blind_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc
  · exact seg48Blind_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc
  · exact seg48Blind_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc
  · exact seg48Blind_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

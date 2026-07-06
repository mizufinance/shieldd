import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6180 rho ∧ Seg52.relationRow6551 rho ∧ Seg52.relationRow6552 rho ∧ Seg52.relationRow6553 rho ∧ Seg52.relationRow6554 rho ∧ Seg52.relationRow6555 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6551, r6552, r6553, r6554, r6555, _, _, _, _⟩

  exact ⟨r6180, r6551, r6552, r6553, r6554, r6555⟩

theorem seg52Blind_rung31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50569 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 31)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      31 (Bool.toZMod bit) (seg52BlindAccState rho 31)
      (seg52BlindAccState rho 32) := by
  obtain ⟨r6180, r6551, r6552, r6553, r6554, r6555⟩ := seg52Blind_rows31 rho h
  unfold Seg52.relationRow6180 at r6180

  unfold Seg52.relationRow6551 at r6551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6551

  unfold Seg52.relationRow6552 at r6552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6552

  unfold Seg52.relationRow6553 at r6553

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6553

  unfold Seg52.relationRow6554 at r6554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6554

  unfold Seg52.relationRow6555 at r6555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6555

  have hnextx : seg52BlindDeltaX31 rho =
      seg52BlindDeltaX30 rho + rho 50942 := by
    unfold seg52BlindDeltaX31 seg52BlindDeltaX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 30]

    ring

  have hnexty : seg52BlindDeltaY31 rho =
      seg52BlindDeltaY30 rho + rho 50943 := by
    unfold seg52BlindDeltaY31 seg52BlindDeltaY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 30]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 31
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX30 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY30 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX31 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY31 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung31_wide (rho 50538) (rho 50569) (seg52BlindDeltaX30 rho) (seg52BlindDeltaY30 rho) (rho 50939) (rho 50940) (rho 50941) (rho 50942) (rho 50943) hacc
  · unfold seg52BlindDeltaX30 seg52BlindDeltaY30
    linear_combination r6551
  · unfold seg52BlindDeltaX30 seg52BlindDeltaY30
    linear_combination r6552
  · unfold seg52BlindDeltaX30 seg52BlindDeltaY30
    linear_combination r6553
  · unfold seg52BlindDeltaX30
    linear_combination r6554
  · unfold seg52BlindDeltaY30
    linear_combination r6555
  · linear_combination r6180

theorem seg52Blind_rows32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6181 rho ∧ Seg52.relationRow6556 rho ∧ Seg52.relationRow6557 rho ∧ Seg52.relationRow6558 rho ∧ Seg52.relationRow6559 rho ∧ Seg52.relationRow6560 rho := by
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

    _, p81, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6181, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6556, r6557, r6558, r6559⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨r6560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6181, r6556, r6557, r6558, r6559, r6560⟩

theorem seg52Blind_rung32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50570 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 32)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      32 (Bool.toZMod bit) (seg52BlindAccState rho 32)
      (seg52BlindAccState rho 33) := by
  obtain ⟨r6181, r6556, r6557, r6558, r6559, r6560⟩ := seg52Blind_rows32 rho h
  unfold Seg52.relationRow6181 at r6181

  unfold Seg52.relationRow6556 at r6556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6556

  unfold Seg52.relationRow6557 at r6557

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6557

  unfold Seg52.relationRow6558 at r6558

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6558

  unfold Seg52.relationRow6559 at r6559

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6559

  unfold Seg52.relationRow6560 at r6560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6560

  have hnextx : seg52BlindDeltaX32 rho =
      seg52BlindDeltaX31 rho + rho 50947 := by
    unfold seg52BlindDeltaX32 seg52BlindDeltaX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 31]

    ring

  have hnexty : seg52BlindDeltaY32 rho =
      seg52BlindDeltaY31 rho + rho 50948 := by
    unfold seg52BlindDeltaY32 seg52BlindDeltaY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 31]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 32
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX31 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY31 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX32 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY32 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung32_wide (rho 50538) (rho 50570) (seg52BlindDeltaX31 rho) (seg52BlindDeltaY31 rho) (rho 50944) (rho 50945) (rho 50946) (rho 50947) (rho 50948) hacc
  · unfold seg52BlindDeltaX31 seg52BlindDeltaY31
    linear_combination r6556
  · unfold seg52BlindDeltaX31 seg52BlindDeltaY31
    linear_combination r6557
  · unfold seg52BlindDeltaX31 seg52BlindDeltaY31
    linear_combination r6558
  · unfold seg52BlindDeltaX31
    linear_combination r6559
  · unfold seg52BlindDeltaY31
    linear_combination r6560
  · linear_combination r6181

theorem seg52Blind_rows33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6182 rho ∧ Seg52.relationRow6561 rho ∧ Seg52.relationRow6562 rho ∧ Seg52.relationRow6563 rho ∧ Seg52.relationRow6564 rho ∧ Seg52.relationRow6565 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6182, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, r6561, r6562, r6563, r6564, r6565, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6182, r6561, r6562, r6563, r6564, r6565⟩

theorem seg52Blind_rung33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50571 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 33)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      33 (Bool.toZMod bit) (seg52BlindAccState rho 33)
      (seg52BlindAccState rho 34) := by
  obtain ⟨r6182, r6561, r6562, r6563, r6564, r6565⟩ := seg52Blind_rows33 rho h
  unfold Seg52.relationRow6182 at r6182

  unfold Seg52.relationRow6561 at r6561

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6561

  unfold Seg52.relationRow6562 at r6562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6562

  unfold Seg52.relationRow6563 at r6563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6563

  unfold Seg52.relationRow6564 at r6564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6564

  unfold Seg52.relationRow6565 at r6565

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6565

  have hnextx : seg52BlindDeltaX33 rho =
      seg52BlindDeltaX32 rho + rho 50952 := by
    unfold seg52BlindDeltaX33 seg52BlindDeltaX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 32]

    ring

  have hnexty : seg52BlindDeltaY33 rho =
      seg52BlindDeltaY32 rho + rho 50953 := by
    unfold seg52BlindDeltaY33 seg52BlindDeltaY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 32]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 33
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX32 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY32 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX33 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY33 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung33_wide (rho 50538) (rho 50571) (seg52BlindDeltaX32 rho) (seg52BlindDeltaY32 rho) (rho 50949) (rho 50950) (rho 50951) (rho 50952) (rho 50953) hacc
  · unfold seg52BlindDeltaX32 seg52BlindDeltaY32
    linear_combination r6561
  · unfold seg52BlindDeltaX32 seg52BlindDeltaY32
    linear_combination r6562
  · unfold seg52BlindDeltaX32 seg52BlindDeltaY32
    linear_combination r6563
  · unfold seg52BlindDeltaX32
    linear_combination r6564
  · unfold seg52BlindDeltaY32
    linear_combination r6565
  · linear_combination r6182

theorem seg52Blind_rows34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6183 rho ∧ Seg52.relationRow6566 rho ∧ Seg52.relationRow6567 rho ∧ Seg52.relationRow6568 rho ∧ Seg52.relationRow6569 rho ∧ Seg52.relationRow6570 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6183, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, r6566, r6567, r6568, r6569, r6570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6183, r6566, r6567, r6568, r6569, r6570⟩

theorem seg52Blind_rung34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50572 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 34)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      34 (Bool.toZMod bit) (seg52BlindAccState rho 34)
      (seg52BlindAccState rho 35) := by
  obtain ⟨r6183, r6566, r6567, r6568, r6569, r6570⟩ := seg52Blind_rows34 rho h
  unfold Seg52.relationRow6183 at r6183

  unfold Seg52.relationRow6566 at r6566

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6566

  unfold Seg52.relationRow6567 at r6567

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6567

  unfold Seg52.relationRow6568 at r6568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6568

  unfold Seg52.relationRow6569 at r6569

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6569

  unfold Seg52.relationRow6570 at r6570

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6570

  have hnextx : seg52BlindDeltaX34 rho =
      seg52BlindDeltaX33 rho + rho 50957 := by
    unfold seg52BlindDeltaX34 seg52BlindDeltaX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 33]

    ring

  have hnexty : seg52BlindDeltaY34 rho =
      seg52BlindDeltaY33 rho + rho 50958 := by
    unfold seg52BlindDeltaY34 seg52BlindDeltaY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 33]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 34
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX33 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY33 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX34 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY34 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung34_wide (rho 50538) (rho 50572) (seg52BlindDeltaX33 rho) (seg52BlindDeltaY33 rho) (rho 50954) (rho 50955) (rho 50956) (rho 50957) (rho 50958) hacc
  · unfold seg52BlindDeltaX33 seg52BlindDeltaY33
    linear_combination r6566
  · unfold seg52BlindDeltaX33 seg52BlindDeltaY33
    linear_combination r6567
  · unfold seg52BlindDeltaX33 seg52BlindDeltaY33
    linear_combination r6568
  · unfold seg52BlindDeltaX33
    linear_combination r6569
  · unfold seg52BlindDeltaY33
    linear_combination r6570
  · linear_combination r6183

theorem seg52Blind_rows35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6184 rho ∧ Seg52.relationRow6571 rho ∧ Seg52.relationRow6572 rho ∧ Seg52.relationRow6573 rho ∧ Seg52.relationRow6574 rho ∧ Seg52.relationRow6575 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6184, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6571, r6572, r6573, r6574, r6575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6184, r6571, r6572, r6573, r6574, r6575⟩

theorem seg52Blind_rung35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50573 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 35)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      35 (Bool.toZMod bit) (seg52BlindAccState rho 35)
      (seg52BlindAccState rho 36) := by
  obtain ⟨r6184, r6571, r6572, r6573, r6574, r6575⟩ := seg52Blind_rows35 rho h
  unfold Seg52.relationRow6184 at r6184

  unfold Seg52.relationRow6571 at r6571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6571

  unfold Seg52.relationRow6572 at r6572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6572

  unfold Seg52.relationRow6573 at r6573

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6573

  unfold Seg52.relationRow6574 at r6574

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6574

  unfold Seg52.relationRow6575 at r6575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6575

  have hnextx : seg52BlindDeltaX35 rho =
      seg52BlindDeltaX34 rho + rho 50962 := by
    unfold seg52BlindDeltaX35 seg52BlindDeltaX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 34]

    ring

  have hnexty : seg52BlindDeltaY35 rho =
      seg52BlindDeltaY34 rho + rho 50963 := by
    unfold seg52BlindDeltaY35 seg52BlindDeltaY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 34]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 35
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX34 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY34 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX35 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY35 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung35_wide (rho 50538) (rho 50573) (seg52BlindDeltaX34 rho) (seg52BlindDeltaY34 rho) (rho 50959) (rho 50960) (rho 50961) (rho 50962) (rho 50963) hacc
  · unfold seg52BlindDeltaX34 seg52BlindDeltaY34
    linear_combination r6571
  · unfold seg52BlindDeltaX34 seg52BlindDeltaY34
    linear_combination r6572
  · unfold seg52BlindDeltaX34 seg52BlindDeltaY34
    linear_combination r6573
  · unfold seg52BlindDeltaX34
    linear_combination r6574
  · unfold seg52BlindDeltaY34
    linear_combination r6575
  · linear_combination r6184

theorem seg52Blind_rows36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6185 rho ∧ Seg52.relationRow6576 rho ∧ Seg52.relationRow6577 rho ∧ Seg52.relationRow6578 rho ∧ Seg52.relationRow6579 rho ∧ Seg52.relationRow6580 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6185, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6576, r6577, r6578, r6579, r6580, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6185, r6576, r6577, r6578, r6579, r6580⟩

theorem seg52Blind_rung36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50574 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 36)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      36 (Bool.toZMod bit) (seg52BlindAccState rho 36)
      (seg52BlindAccState rho 37) := by
  obtain ⟨r6185, r6576, r6577, r6578, r6579, r6580⟩ := seg52Blind_rows36 rho h
  unfold Seg52.relationRow6185 at r6185

  unfold Seg52.relationRow6576 at r6576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6576

  unfold Seg52.relationRow6577 at r6577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6577

  unfold Seg52.relationRow6578 at r6578

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6578

  unfold Seg52.relationRow6579 at r6579

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6579

  unfold Seg52.relationRow6580 at r6580

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6580

  have hnextx : seg52BlindDeltaX36 rho =
      seg52BlindDeltaX35 rho + rho 50967 := by
    unfold seg52BlindDeltaX36 seg52BlindDeltaX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 35]

    ring

  have hnexty : seg52BlindDeltaY36 rho =
      seg52BlindDeltaY35 rho + rho 50968 := by
    unfold seg52BlindDeltaY36 seg52BlindDeltaY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 35]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 36
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX35 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY35 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX36 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY36 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung36_wide (rho 50538) (rho 50574) (seg52BlindDeltaX35 rho) (seg52BlindDeltaY35 rho) (rho 50964) (rho 50965) (rho 50966) (rho 50967) (rho 50968) hacc
  · unfold seg52BlindDeltaX35 seg52BlindDeltaY35
    linear_combination r6576
  · unfold seg52BlindDeltaX35 seg52BlindDeltaY35
    linear_combination r6577
  · unfold seg52BlindDeltaX35 seg52BlindDeltaY35
    linear_combination r6578
  · unfold seg52BlindDeltaX35
    linear_combination r6579
  · unfold seg52BlindDeltaY35
    linear_combination r6580
  · linear_combination r6185

theorem seg52Blind_rows37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6186 rho ∧ Seg52.relationRow6581 rho ∧ Seg52.relationRow6582 rho ∧ Seg52.relationRow6583 rho ∧ Seg52.relationRow6584 rho ∧ Seg52.relationRow6585 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6581, r6582, r6583, r6584, r6585, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6186, r6581, r6582, r6583, r6584, r6585⟩

theorem seg52Blind_rung37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50575 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 37)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      37 (Bool.toZMod bit) (seg52BlindAccState rho 37)
      (seg52BlindAccState rho 38) := by
  obtain ⟨r6186, r6581, r6582, r6583, r6584, r6585⟩ := seg52Blind_rows37 rho h
  unfold Seg52.relationRow6186 at r6186

  unfold Seg52.relationRow6581 at r6581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6581

  unfold Seg52.relationRow6582 at r6582

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6582

  unfold Seg52.relationRow6583 at r6583

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6583

  unfold Seg52.relationRow6584 at r6584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6584

  unfold Seg52.relationRow6585 at r6585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6585

  have hnextx : seg52BlindDeltaX37 rho =
      seg52BlindDeltaX36 rho + rho 50972 := by
    unfold seg52BlindDeltaX37 seg52BlindDeltaX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 36]

    ring

  have hnexty : seg52BlindDeltaY37 rho =
      seg52BlindDeltaY36 rho + rho 50973 := by
    unfold seg52BlindDeltaY37 seg52BlindDeltaY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 36]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 37
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX36 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY36 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX37 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY37 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung37_wide (rho 50538) (rho 50575) (seg52BlindDeltaX36 rho) (seg52BlindDeltaY36 rho) (rho 50969) (rho 50970) (rho 50971) (rho 50972) (rho 50973) hacc
  · unfold seg52BlindDeltaX36 seg52BlindDeltaY36
    linear_combination r6581
  · unfold seg52BlindDeltaX36 seg52BlindDeltaY36
    linear_combination r6582
  · unfold seg52BlindDeltaX36 seg52BlindDeltaY36
    linear_combination r6583
  · unfold seg52BlindDeltaX36
    linear_combination r6584
  · unfold seg52BlindDeltaY36
    linear_combination r6585
  · linear_combination r6186

theorem seg52Blind_rows38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6187 rho ∧ Seg52.relationRow6586 rho ∧ Seg52.relationRow6587 rho ∧ Seg52.relationRow6588 rho ∧ Seg52.relationRow6589 rho ∧ Seg52.relationRow6590 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6187, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6586, r6587, r6588, r6589, r6590, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6187, r6586, r6587, r6588, r6589, r6590⟩

theorem seg52Blind_rung38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50576 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 38)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      38 (Bool.toZMod bit) (seg52BlindAccState rho 38)
      (seg52BlindAccState rho 39) := by
  obtain ⟨r6187, r6586, r6587, r6588, r6589, r6590⟩ := seg52Blind_rows38 rho h
  unfold Seg52.relationRow6187 at r6187

  unfold Seg52.relationRow6586 at r6586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6586

  unfold Seg52.relationRow6587 at r6587

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6587

  unfold Seg52.relationRow6588 at r6588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6588

  unfold Seg52.relationRow6589 at r6589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6589

  unfold Seg52.relationRow6590 at r6590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6590

  have hnextx : seg52BlindDeltaX38 rho =
      seg52BlindDeltaX37 rho + rho 50977 := by
    unfold seg52BlindDeltaX38 seg52BlindDeltaX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 37]

    ring

  have hnexty : seg52BlindDeltaY38 rho =
      seg52BlindDeltaY37 rho + rho 50978 := by
    unfold seg52BlindDeltaY38 seg52BlindDeltaY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 37]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 38
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX37 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY37 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX38 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY38 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung38_wide (rho 50538) (rho 50576) (seg52BlindDeltaX37 rho) (seg52BlindDeltaY37 rho) (rho 50974) (rho 50975) (rho 50976) (rho 50977) (rho 50978) hacc
  · unfold seg52BlindDeltaX37 seg52BlindDeltaY37
    linear_combination r6586
  · unfold seg52BlindDeltaX37 seg52BlindDeltaY37
    linear_combination r6587
  · unfold seg52BlindDeltaX37 seg52BlindDeltaY37
    linear_combination r6588
  · unfold seg52BlindDeltaX37
    linear_combination r6589
  · unfold seg52BlindDeltaY37
    linear_combination r6590
  · linear_combination r6187

theorem seg52Blind_rows39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6188 rho ∧ Seg52.relationRow6591 rho ∧ Seg52.relationRow6592 rho ∧ Seg52.relationRow6593 rho ∧ Seg52.relationRow6594 rho ∧ Seg52.relationRow6595 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6188, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6591, r6592, r6593, r6594, r6595, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6188, r6591, r6592, r6593, r6594, r6595⟩

theorem seg52Blind_rung39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50577 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 39)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      39 (Bool.toZMod bit) (seg52BlindAccState rho 39)
      (seg52BlindAccState rho 40) := by
  obtain ⟨r6188, r6591, r6592, r6593, r6594, r6595⟩ := seg52Blind_rows39 rho h
  unfold Seg52.relationRow6188 at r6188

  unfold Seg52.relationRow6591 at r6591

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6591

  unfold Seg52.relationRow6592 at r6592

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6592

  unfold Seg52.relationRow6593 at r6593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6593

  unfold Seg52.relationRow6594 at r6594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6594

  unfold Seg52.relationRow6595 at r6595

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6595

  have hnextx : seg52BlindDeltaX39 rho =
      seg52BlindDeltaX38 rho + rho 50982 := by
    unfold seg52BlindDeltaX39 seg52BlindDeltaX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 38]

    ring

  have hnexty : seg52BlindDeltaY39 rho =
      seg52BlindDeltaY38 rho + rho 50983 := by
    unfold seg52BlindDeltaY39 seg52BlindDeltaY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 38]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 39
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX38 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY38 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX39 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY39 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung39_wide (rho 50538) (rho 50577) (seg52BlindDeltaX38 rho) (seg52BlindDeltaY38 rho) (rho 50979) (rho 50980) (rho 50981) (rho 50982) (rho 50983) hacc
  · unfold seg52BlindDeltaX38 seg52BlindDeltaY38
    linear_combination r6591
  · unfold seg52BlindDeltaX38 seg52BlindDeltaY38
    linear_combination r6592
  · unfold seg52BlindDeltaX38 seg52BlindDeltaY38
    linear_combination r6593
  · unfold seg52BlindDeltaX38
    linear_combination r6594
  · unfold seg52BlindDeltaY38
    linear_combination r6595
  · linear_combination r6188

theorem seg52Blind_rows40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6189 rho ∧ Seg52.relationRow6596 rho ∧ Seg52.relationRow6597 rho ∧ Seg52.relationRow6598 rho ∧ Seg52.relationRow6599 rho ∧ Seg52.relationRow6600 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6189, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6596, r6597, r6598, r6599, r6600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6189, r6596, r6597, r6598, r6599, r6600⟩

theorem seg52Blind_rung40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50578 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 40)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      40 (Bool.toZMod bit) (seg52BlindAccState rho 40)
      (seg52BlindAccState rho 41) := by
  obtain ⟨r6189, r6596, r6597, r6598, r6599, r6600⟩ := seg52Blind_rows40 rho h
  unfold Seg52.relationRow6189 at r6189

  unfold Seg52.relationRow6596 at r6596

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6596

  unfold Seg52.relationRow6597 at r6597

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6597

  unfold Seg52.relationRow6598 at r6598

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6598

  unfold Seg52.relationRow6599 at r6599

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6599

  unfold Seg52.relationRow6600 at r6600

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6600

  have hnextx : seg52BlindDeltaX40 rho =
      seg52BlindDeltaX39 rho + rho 50987 := by
    unfold seg52BlindDeltaX40 seg52BlindDeltaX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 39]

    ring

  have hnexty : seg52BlindDeltaY40 rho =
      seg52BlindDeltaY39 rho + rho 50988 := by
    unfold seg52BlindDeltaY40 seg52BlindDeltaY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 39]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 40
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX39 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY39 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX40 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY40 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung40_wide (rho 50538) (rho 50578) (seg52BlindDeltaX39 rho) (seg52BlindDeltaY39 rho) (rho 50984) (rho 50985) (rho 50986) (rho 50987) (rho 50988) hacc
  · unfold seg52BlindDeltaX39 seg52BlindDeltaY39
    linear_combination r6596
  · unfold seg52BlindDeltaX39 seg52BlindDeltaY39
    linear_combination r6597
  · unfold seg52BlindDeltaX39 seg52BlindDeltaY39
    linear_combination r6598
  · unfold seg52BlindDeltaX39
    linear_combination r6599
  · unfold seg52BlindDeltaY39
    linear_combination r6600
  · linear_combination r6189

theorem seg52Blind_hstep_c3 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 31 ≤ i → i < 41 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc
  · exact seg52Blind_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc
  · exact seg52Blind_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc
  · exact seg52Blind_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc
  · exact seg52Blind_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc
  · exact seg52Blind_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc
  · exact seg52Blind_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc
  · exact seg52Blind_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc
  · exact seg52Blind_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc
  · exact seg52Blind_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

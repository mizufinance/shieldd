import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6890 rho ∧ Seg52.relationRow7541 rho ∧ Seg52.relationRow7542 rho ∧ Seg52.relationRow7543 rho ∧ Seg52.relationRow7544 rho ∧ Seg52.relationRow7545 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, r6890, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7541, r7542, r7543, r7544, r7545, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6890, r7541, r7542, r7543, r7544, r7545⟩

theorem seg52Blind_rung101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51279 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 101)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      101 (Bool.toZMod bit) (seg52BlindAccState rho 101)
      (seg52BlindAccState rho 102) := by
  obtain ⟨r6890, r7541, r7542, r7543, r7544, r7545⟩ := seg52Blind_rows101 rho h
  unfold Seg52.relationRow6890 at r6890

  unfold Seg52.relationRow7541 at r7541

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7541

  unfold Seg52.relationRow7542 at r7542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7542

  unfold Seg52.relationRow7543 at r7543

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7543

  unfold Seg52.relationRow7544 at r7544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7544

  unfold Seg52.relationRow7545 at r7545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7545

  have hnextx : seg52BlindDeltaX101 rho =
      seg52BlindDeltaX100 rho + rho 51932 := by
    unfold seg52BlindDeltaX101 seg52BlindDeltaX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 100]

    ring

  have hnexty : seg52BlindDeltaY101 rho =
      seg52BlindDeltaY100 rho + rho 51933 := by
    unfold seg52BlindDeltaY101 seg52BlindDeltaY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 100]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 101
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX100 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY100 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX101 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY101 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung101_wide (rho 51178) (rho 51279) (seg52BlindDeltaX100 rho) (seg52BlindDeltaY100 rho) (rho 51929) (rho 51930) (rho 51931) (rho 51932) (rho 51933) hacc
  · unfold seg52BlindDeltaX100 seg52BlindDeltaY100
    linear_combination r7541
  · unfold seg52BlindDeltaX100 seg52BlindDeltaY100
    linear_combination r7542
  · unfold seg52BlindDeltaX100 seg52BlindDeltaY100
    linear_combination r7543
  · unfold seg52BlindDeltaX100
    linear_combination r7544
  · unfold seg52BlindDeltaY100
    linear_combination r7545
  · linear_combination r6890

theorem seg52Blind_rows102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6891 rho ∧ Seg52.relationRow7546 rho ∧ Seg52.relationRow7547 rho ∧ Seg52.relationRow7548 rho ∧ Seg52.relationRow7549 rho ∧ Seg52.relationRow7550 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6891, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7546, r7547, r7548, r7549, r7550, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6891, r7546, r7547, r7548, r7549, r7550⟩

theorem seg52Blind_rung102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51280 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 102)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      102 (Bool.toZMod bit) (seg52BlindAccState rho 102)
      (seg52BlindAccState rho 103) := by
  obtain ⟨r6891, r7546, r7547, r7548, r7549, r7550⟩ := seg52Blind_rows102 rho h
  unfold Seg52.relationRow6891 at r6891

  unfold Seg52.relationRow7546 at r7546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7546

  unfold Seg52.relationRow7547 at r7547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7547

  unfold Seg52.relationRow7548 at r7548

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7548

  unfold Seg52.relationRow7549 at r7549

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7549

  unfold Seg52.relationRow7550 at r7550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7550

  have hnextx : seg52BlindDeltaX102 rho =
      seg52BlindDeltaX101 rho + rho 51937 := by
    unfold seg52BlindDeltaX102 seg52BlindDeltaX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 101]

    ring

  have hnexty : seg52BlindDeltaY102 rho =
      seg52BlindDeltaY101 rho + rho 51938 := by
    unfold seg52BlindDeltaY102 seg52BlindDeltaY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 101]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 102
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX101 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY101 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX102 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY102 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung102_wide (rho 51178) (rho 51280) (seg52BlindDeltaX101 rho) (seg52BlindDeltaY101 rho) (rho 51934) (rho 51935) (rho 51936) (rho 51937) (rho 51938) hacc
  · unfold seg52BlindDeltaX101 seg52BlindDeltaY101
    linear_combination r7546
  · unfold seg52BlindDeltaX101 seg52BlindDeltaY101
    linear_combination r7547
  · unfold seg52BlindDeltaX101 seg52BlindDeltaY101
    linear_combination r7548
  · unfold seg52BlindDeltaX101
    linear_combination r7549
  · unfold seg52BlindDeltaY101
    linear_combination r7550
  · linear_combination r6891

theorem seg52Blind_rows103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6892 rho ∧ Seg52.relationRow7551 rho ∧ Seg52.relationRow7552 rho ∧ Seg52.relationRow7553 rho ∧ Seg52.relationRow7554 rho ∧ Seg52.relationRow7555 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r6892, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7551, r7552, r7553, r7554, r7555, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6892, r7551, r7552, r7553, r7554, r7555⟩

theorem seg52Blind_rung103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51281 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 103)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      103 (Bool.toZMod bit) (seg52BlindAccState rho 103)
      (seg52BlindAccState rho 104) := by
  obtain ⟨r6892, r7551, r7552, r7553, r7554, r7555⟩ := seg52Blind_rows103 rho h
  unfold Seg52.relationRow6892 at r6892

  unfold Seg52.relationRow7551 at r7551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7551

  unfold Seg52.relationRow7552 at r7552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7552

  unfold Seg52.relationRow7553 at r7553

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7553

  unfold Seg52.relationRow7554 at r7554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7554

  unfold Seg52.relationRow7555 at r7555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7555

  have hnextx : seg52BlindDeltaX103 rho =
      seg52BlindDeltaX102 rho + rho 51942 := by
    unfold seg52BlindDeltaX103 seg52BlindDeltaX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 102]

    ring

  have hnexty : seg52BlindDeltaY103 rho =
      seg52BlindDeltaY102 rho + rho 51943 := by
    unfold seg52BlindDeltaY103 seg52BlindDeltaY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 102]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 103
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX102 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY102 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX103 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY103 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung103_wide (rho 51178) (rho 51281) (seg52BlindDeltaX102 rho) (seg52BlindDeltaY102 rho) (rho 51939) (rho 51940) (rho 51941) (rho 51942) (rho 51943) hacc
  · unfold seg52BlindDeltaX102 seg52BlindDeltaY102
    linear_combination r7551
  · unfold seg52BlindDeltaX102 seg52BlindDeltaY102
    linear_combination r7552
  · unfold seg52BlindDeltaX102 seg52BlindDeltaY102
    linear_combination r7553
  · unfold seg52BlindDeltaX102
    linear_combination r7554
  · unfold seg52BlindDeltaY102
    linear_combination r7555
  · linear_combination r6892

theorem seg52Blind_rows104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6893 rho ∧ Seg52.relationRow7556 rho ∧ Seg52.relationRow7557 rho ∧ Seg52.relationRow7558 rho ∧ Seg52.relationRow7559 rho ∧ Seg52.relationRow7560 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6893, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7556, r7557, r7558, r7559, r7560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6893, r7556, r7557, r7558, r7559, r7560⟩

theorem seg52Blind_rung104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51282 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 104)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      104 (Bool.toZMod bit) (seg52BlindAccState rho 104)
      (seg52BlindAccState rho 105) := by
  obtain ⟨r6893, r7556, r7557, r7558, r7559, r7560⟩ := seg52Blind_rows104 rho h
  unfold Seg52.relationRow6893 at r6893

  unfold Seg52.relationRow7556 at r7556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7556

  unfold Seg52.relationRow7557 at r7557

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7557

  unfold Seg52.relationRow7558 at r7558

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7558

  unfold Seg52.relationRow7559 at r7559

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7559

  unfold Seg52.relationRow7560 at r7560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7560

  have hnextx : seg52BlindDeltaX104 rho =
      seg52BlindDeltaX103 rho + rho 51947 := by
    unfold seg52BlindDeltaX104 seg52BlindDeltaX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 103]

    ring

  have hnexty : seg52BlindDeltaY104 rho =
      seg52BlindDeltaY103 rho + rho 51948 := by
    unfold seg52BlindDeltaY104 seg52BlindDeltaY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 103]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 104
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX103 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY103 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX104 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY104 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung104_wide (rho 51178) (rho 51282) (seg52BlindDeltaX103 rho) (seg52BlindDeltaY103 rho) (rho 51944) (rho 51945) (rho 51946) (rho 51947) (rho 51948) hacc
  · unfold seg52BlindDeltaX103 seg52BlindDeltaY103
    linear_combination r7556
  · unfold seg52BlindDeltaX103 seg52BlindDeltaY103
    linear_combination r7557
  · unfold seg52BlindDeltaX103 seg52BlindDeltaY103
    linear_combination r7558
  · unfold seg52BlindDeltaX103
    linear_combination r7559
  · unfold seg52BlindDeltaY103
    linear_combination r7560
  · linear_combination r6893

theorem seg52Blind_rows105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6894 rho ∧ Seg52.relationRow7561 rho ∧ Seg52.relationRow7562 rho ∧ Seg52.relationRow7563 rho ∧ Seg52.relationRow7564 rho ∧ Seg52.relationRow7565 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7561, r7562, r7563, r7564, r7565, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6894, r7561, r7562, r7563, r7564, r7565⟩

theorem seg52Blind_rung105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51283 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 105)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      105 (Bool.toZMod bit) (seg52BlindAccState rho 105)
      (seg52BlindAccState rho 106) := by
  obtain ⟨r6894, r7561, r7562, r7563, r7564, r7565⟩ := seg52Blind_rows105 rho h
  unfold Seg52.relationRow6894 at r6894

  unfold Seg52.relationRow7561 at r7561

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7561

  unfold Seg52.relationRow7562 at r7562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7562

  unfold Seg52.relationRow7563 at r7563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7563

  unfold Seg52.relationRow7564 at r7564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7564

  unfold Seg52.relationRow7565 at r7565

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7565

  have hnextx : seg52BlindDeltaX105 rho =
      seg52BlindDeltaX104 rho + rho 51952 := by
    unfold seg52BlindDeltaX105 seg52BlindDeltaX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 104]

    ring

  have hnexty : seg52BlindDeltaY105 rho =
      seg52BlindDeltaY104 rho + rho 51953 := by
    unfold seg52BlindDeltaY105 seg52BlindDeltaY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 104]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 105
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX104 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY104 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX105 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY105 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung105_wide (rho 51178) (rho 51283) (seg52BlindDeltaX104 rho) (seg52BlindDeltaY104 rho) (rho 51949) (rho 51950) (rho 51951) (rho 51952) (rho 51953) hacc
  · unfold seg52BlindDeltaX104 seg52BlindDeltaY104
    linear_combination r7561
  · unfold seg52BlindDeltaX104 seg52BlindDeltaY104
    linear_combination r7562
  · unfold seg52BlindDeltaX104 seg52BlindDeltaY104
    linear_combination r7563
  · unfold seg52BlindDeltaX104
    linear_combination r7564
  · unfold seg52BlindDeltaY104
    linear_combination r7565
  · linear_combination r6894

theorem seg52Blind_rows106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6895 rho ∧ Seg52.relationRow7566 rho ∧ Seg52.relationRow7567 rho ∧ Seg52.relationRow7568 rho ∧ Seg52.relationRow7569 rho ∧ Seg52.relationRow7570 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6895, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7566, r7567, r7568, r7569, r7570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6895, r7566, r7567, r7568, r7569, r7570⟩

theorem seg52Blind_rung106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51284 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 106)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      106 (Bool.toZMod bit) (seg52BlindAccState rho 106)
      (seg52BlindAccState rho 107) := by
  obtain ⟨r6895, r7566, r7567, r7568, r7569, r7570⟩ := seg52Blind_rows106 rho h
  unfold Seg52.relationRow6895 at r6895

  unfold Seg52.relationRow7566 at r7566

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7566

  unfold Seg52.relationRow7567 at r7567

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7567

  unfold Seg52.relationRow7568 at r7568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7568

  unfold Seg52.relationRow7569 at r7569

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7569

  unfold Seg52.relationRow7570 at r7570

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7570

  have hnextx : seg52BlindDeltaX106 rho =
      seg52BlindDeltaX105 rho + rho 51957 := by
    unfold seg52BlindDeltaX106 seg52BlindDeltaX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 105]

    ring

  have hnexty : seg52BlindDeltaY106 rho =
      seg52BlindDeltaY105 rho + rho 51958 := by
    unfold seg52BlindDeltaY106 seg52BlindDeltaY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 105]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 106
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX105 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY105 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX106 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY106 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung106_wide (rho 51178) (rho 51284) (seg52BlindDeltaX105 rho) (seg52BlindDeltaY105 rho) (rho 51954) (rho 51955) (rho 51956) (rho 51957) (rho 51958) hacc
  · unfold seg52BlindDeltaX105 seg52BlindDeltaY105
    linear_combination r7566
  · unfold seg52BlindDeltaX105 seg52BlindDeltaY105
    linear_combination r7567
  · unfold seg52BlindDeltaX105 seg52BlindDeltaY105
    linear_combination r7568
  · unfold seg52BlindDeltaX105
    linear_combination r7569
  · unfold seg52BlindDeltaY105
    linear_combination r7570
  · linear_combination r6895

theorem seg52Blind_rows107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6896 rho ∧ Seg52.relationRow7571 rho ∧ Seg52.relationRow7572 rho ∧ Seg52.relationRow7573 rho ∧ Seg52.relationRow7574 rho ∧ Seg52.relationRow7575 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6896, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7571, r7572, r7573, r7574, r7575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6896, r7571, r7572, r7573, r7574, r7575⟩

theorem seg52Blind_rung107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51285 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 107)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      107 (Bool.toZMod bit) (seg52BlindAccState rho 107)
      (seg52BlindAccState rho 108) := by
  obtain ⟨r6896, r7571, r7572, r7573, r7574, r7575⟩ := seg52Blind_rows107 rho h
  unfold Seg52.relationRow6896 at r6896

  unfold Seg52.relationRow7571 at r7571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7571

  unfold Seg52.relationRow7572 at r7572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7572

  unfold Seg52.relationRow7573 at r7573

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7573

  unfold Seg52.relationRow7574 at r7574

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7574

  unfold Seg52.relationRow7575 at r7575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7575

  have hnextx : seg52BlindDeltaX107 rho =
      seg52BlindDeltaX106 rho + rho 51962 := by
    unfold seg52BlindDeltaX107 seg52BlindDeltaX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 106]

    ring

  have hnexty : seg52BlindDeltaY107 rho =
      seg52BlindDeltaY106 rho + rho 51963 := by
    unfold seg52BlindDeltaY107 seg52BlindDeltaY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 106]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 107
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX106 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY106 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX107 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY107 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung107_wide (rho 51178) (rho 51285) (seg52BlindDeltaX106 rho) (seg52BlindDeltaY106 rho) (rho 51959) (rho 51960) (rho 51961) (rho 51962) (rho 51963) hacc
  · unfold seg52BlindDeltaX106 seg52BlindDeltaY106
    linear_combination r7571
  · unfold seg52BlindDeltaX106 seg52BlindDeltaY106
    linear_combination r7572
  · unfold seg52BlindDeltaX106 seg52BlindDeltaY106
    linear_combination r7573
  · unfold seg52BlindDeltaX106
    linear_combination r7574
  · unfold seg52BlindDeltaY106
    linear_combination r7575
  · linear_combination r6896

theorem seg52Blind_rows108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6897 rho ∧ Seg52.relationRow7576 rho ∧ Seg52.relationRow7577 rho ∧ Seg52.relationRow7578 rho ∧ Seg52.relationRow7579 rho ∧ Seg52.relationRow7580 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6897, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7576, r7577, r7578, r7579, r7580, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6897, r7576, r7577, r7578, r7579, r7580⟩

theorem seg52Blind_rung108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51286 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 108)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      108 (Bool.toZMod bit) (seg52BlindAccState rho 108)
      (seg52BlindAccState rho 109) := by
  obtain ⟨r6897, r7576, r7577, r7578, r7579, r7580⟩ := seg52Blind_rows108 rho h
  unfold Seg52.relationRow6897 at r6897

  unfold Seg52.relationRow7576 at r7576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7576

  unfold Seg52.relationRow7577 at r7577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7577

  unfold Seg52.relationRow7578 at r7578

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7578

  unfold Seg52.relationRow7579 at r7579

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7579

  unfold Seg52.relationRow7580 at r7580

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7580

  have hnextx : seg52BlindDeltaX108 rho =
      seg52BlindDeltaX107 rho + rho 51967 := by
    unfold seg52BlindDeltaX108 seg52BlindDeltaX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 107]

    ring

  have hnexty : seg52BlindDeltaY108 rho =
      seg52BlindDeltaY107 rho + rho 51968 := by
    unfold seg52BlindDeltaY108 seg52BlindDeltaY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 107]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 108
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX107 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY107 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX108 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY108 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung108_wide (rho 51178) (rho 51286) (seg52BlindDeltaX107 rho) (seg52BlindDeltaY107 rho) (rho 51964) (rho 51965) (rho 51966) (rho 51967) (rho 51968) hacc
  · unfold seg52BlindDeltaX107 seg52BlindDeltaY107
    linear_combination r7576
  · unfold seg52BlindDeltaX107 seg52BlindDeltaY107
    linear_combination r7577
  · unfold seg52BlindDeltaX107 seg52BlindDeltaY107
    linear_combination r7578
  · unfold seg52BlindDeltaX107
    linear_combination r7579
  · unfold seg52BlindDeltaY107
    linear_combination r7580
  · linear_combination r6897

theorem seg52Blind_rows109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6898 rho ∧ Seg52.relationRow7581 rho ∧ Seg52.relationRow7582 rho ∧ Seg52.relationRow7583 rho ∧ Seg52.relationRow7584 rho ∧ Seg52.relationRow7585 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6898, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7581, r7582, r7583, r7584, r7585, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6898, r7581, r7582, r7583, r7584, r7585⟩

theorem seg52Blind_rung109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51287 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 109)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      109 (Bool.toZMod bit) (seg52BlindAccState rho 109)
      (seg52BlindAccState rho 110) := by
  obtain ⟨r6898, r7581, r7582, r7583, r7584, r7585⟩ := seg52Blind_rows109 rho h
  unfold Seg52.relationRow6898 at r6898

  unfold Seg52.relationRow7581 at r7581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7581

  unfold Seg52.relationRow7582 at r7582

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7582

  unfold Seg52.relationRow7583 at r7583

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7583

  unfold Seg52.relationRow7584 at r7584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7584

  unfold Seg52.relationRow7585 at r7585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7585

  have hnextx : seg52BlindDeltaX109 rho =
      seg52BlindDeltaX108 rho + rho 51972 := by
    unfold seg52BlindDeltaX109 seg52BlindDeltaX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 108]

    ring

  have hnexty : seg52BlindDeltaY109 rho =
      seg52BlindDeltaY108 rho + rho 51973 := by
    unfold seg52BlindDeltaY109 seg52BlindDeltaY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 108]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 109
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX108 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY108 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX109 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY109 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung109_wide (rho 51178) (rho 51287) (seg52BlindDeltaX108 rho) (seg52BlindDeltaY108 rho) (rho 51969) (rho 51970) (rho 51971) (rho 51972) (rho 51973) hacc
  · unfold seg52BlindDeltaX108 seg52BlindDeltaY108
    linear_combination r7581
  · unfold seg52BlindDeltaX108 seg52BlindDeltaY108
    linear_combination r7582
  · unfold seg52BlindDeltaX108 seg52BlindDeltaY108
    linear_combination r7583
  · unfold seg52BlindDeltaX108
    linear_combination r7584
  · unfold seg52BlindDeltaY108
    linear_combination r7585
  · linear_combination r6898

theorem seg52Blind_rows110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6899 rho ∧ Seg52.relationRow7586 rho ∧ Seg52.relationRow7587 rho ∧ Seg52.relationRow7588 rho ∧ Seg52.relationRow7589 rho ∧ Seg52.relationRow7590 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p86, _, _, _,

    _, _, _, _, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6899, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7586, r7587, r7588, r7589, r7590, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6899, r7586, r7587, r7588, r7589, r7590⟩

theorem seg52Blind_rung110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51288 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 110)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      110 (Bool.toZMod bit) (seg52BlindAccState rho 110)
      (seg52BlindAccState rho 111) := by
  obtain ⟨r6899, r7586, r7587, r7588, r7589, r7590⟩ := seg52Blind_rows110 rho h
  unfold Seg52.relationRow6899 at r6899

  unfold Seg52.relationRow7586 at r7586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7586

  unfold Seg52.relationRow7587 at r7587

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7587

  unfold Seg52.relationRow7588 at r7588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7588

  unfold Seg52.relationRow7589 at r7589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7589

  unfold Seg52.relationRow7590 at r7590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7590

  have hnextx : seg52BlindDeltaX110 rho =
      seg52BlindDeltaX109 rho + rho 51977 := by
    unfold seg52BlindDeltaX110 seg52BlindDeltaX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 109]

    ring

  have hnexty : seg52BlindDeltaY110 rho =
      seg52BlindDeltaY109 rho + rho 51978 := by
    unfold seg52BlindDeltaY110 seg52BlindDeltaY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 109]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 110
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX109 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY109 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX110 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY110 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung110_wide (rho 51178) (rho 51288) (seg52BlindDeltaX109 rho) (seg52BlindDeltaY109 rho) (rho 51974) (rho 51975) (rho 51976) (rho 51977) (rho 51978) hacc
  · unfold seg52BlindDeltaX109 seg52BlindDeltaY109
    linear_combination r7586
  · unfold seg52BlindDeltaX109 seg52BlindDeltaY109
    linear_combination r7587
  · unfold seg52BlindDeltaX109 seg52BlindDeltaY109
    linear_combination r7588
  · unfold seg52BlindDeltaX109
    linear_combination r7589
  · unfold seg52BlindDeltaY109
    linear_combination r7590
  · linear_combination r6899

theorem seg52Blind_hstep_c10 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 101 ≤ i → i < 111 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc
  · exact seg52Blind_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc
  · exact seg52Blind_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc
  · exact seg52Blind_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc
  · exact seg52Blind_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc
  · exact seg52Blind_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc
  · exact seg52Blind_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc
  · exact seg52Blind_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc
  · exact seg52Blind_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc
  · exact seg52Blind_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

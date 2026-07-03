import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6900 rho ∧ Seg52.relationRow7591 rho ∧ Seg52.relationRow7592 rho ∧ Seg52.relationRow7593 rho ∧ Seg52.relationRow7594 rho ∧ Seg52.relationRow7595 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7591, r7592, r7593, r7594, r7595, _, _, _, _⟩

  exact ⟨r6900, r7591, r7592, r7593, r7594, r7595⟩

theorem seg52Blind_rung111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51289 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 111)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      111 (Bool.toZMod bit) (seg52BlindAccState rho 111)
      (seg52BlindAccState rho 112) := by
  obtain ⟨r6900, r7591, r7592, r7593, r7594, r7595⟩ := seg52Blind_rows111 rho h
  unfold Seg52.relationRow6900 at r6900

  unfold Seg52.relationRow7591 at r7591

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7591

  unfold Seg52.relationRow7592 at r7592

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7592

  unfold Seg52.relationRow7593 at r7593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7593

  unfold Seg52.relationRow7594 at r7594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7594

  unfold Seg52.relationRow7595 at r7595

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7595

  have hnextx : seg52BlindDeltaX111 rho =
      seg52BlindDeltaX110 rho + rho 51982 := by
    unfold seg52BlindDeltaX111 seg52BlindDeltaX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 110]

    ring

  have hnexty : seg52BlindDeltaY111 rho =
      seg52BlindDeltaY110 rho + rho 51983 := by
    unfold seg52BlindDeltaY111 seg52BlindDeltaY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 110]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 111
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX110 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY110 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX111 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY111 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung111_wide (rho 51178) (rho 51289) (seg52BlindDeltaX110 rho) (seg52BlindDeltaY110 rho) (rho 51979) (rho 51980) (rho 51981) (rho 51982) (rho 51983) hacc
  · unfold seg52BlindDeltaX110 seg52BlindDeltaY110
    linear_combination r7591
  · unfold seg52BlindDeltaX110 seg52BlindDeltaY110
    linear_combination r7592
  · unfold seg52BlindDeltaX110 seg52BlindDeltaY110
    linear_combination r7593
  · unfold seg52BlindDeltaX110
    linear_combination r7594
  · unfold seg52BlindDeltaY110
    linear_combination r7595
  · linear_combination r6900

theorem seg52Blind_rows112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6901 rho ∧ Seg52.relationRow7596 rho ∧ Seg52.relationRow7597 rho ∧ Seg52.relationRow7598 rho ∧ Seg52.relationRow7599 rho ∧ Seg52.relationRow7600 rho := by
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

    _, _, _, _, p94, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6901, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7596, r7597, r7598, r7599⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨r7600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6901, r7596, r7597, r7598, r7599, r7600⟩

theorem seg52Blind_rung112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51290 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 112)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      112 (Bool.toZMod bit) (seg52BlindAccState rho 112)
      (seg52BlindAccState rho 113) := by
  obtain ⟨r6901, r7596, r7597, r7598, r7599, r7600⟩ := seg52Blind_rows112 rho h
  unfold Seg52.relationRow6901 at r6901

  unfold Seg52.relationRow7596 at r7596

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7596

  unfold Seg52.relationRow7597 at r7597

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7597

  unfold Seg52.relationRow7598 at r7598

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7598

  unfold Seg52.relationRow7599 at r7599

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7599

  unfold Seg52.relationRow7600 at r7600

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7600

  have hnextx : seg52BlindDeltaX112 rho =
      seg52BlindDeltaX111 rho + rho 51987 := by
    unfold seg52BlindDeltaX112 seg52BlindDeltaX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 111]

    ring

  have hnexty : seg52BlindDeltaY112 rho =
      seg52BlindDeltaY111 rho + rho 51988 := by
    unfold seg52BlindDeltaY112 seg52BlindDeltaY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 111]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 112
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX111 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY111 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX112 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY112 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung112_wide (rho 51178) (rho 51290) (seg52BlindDeltaX111 rho) (seg52BlindDeltaY111 rho) (rho 51984) (rho 51985) (rho 51986) (rho 51987) (rho 51988) hacc
  · unfold seg52BlindDeltaX111 seg52BlindDeltaY111
    linear_combination r7596
  · unfold seg52BlindDeltaX111 seg52BlindDeltaY111
    linear_combination r7597
  · unfold seg52BlindDeltaX111 seg52BlindDeltaY111
    linear_combination r7598
  · unfold seg52BlindDeltaX111
    linear_combination r7599
  · unfold seg52BlindDeltaY111
    linear_combination r7600
  · linear_combination r6901

theorem seg52Blind_rows113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6902 rho ∧ Seg52.relationRow7601 rho ∧ Seg52.relationRow7602 rho ∧ Seg52.relationRow7603 rho ∧ Seg52.relationRow7604 rho ∧ Seg52.relationRow7605 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6902, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, r7601, r7602, r7603, r7604, r7605, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6902, r7601, r7602, r7603, r7604, r7605⟩

theorem seg52Blind_rung113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51291 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 113)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      113 (Bool.toZMod bit) (seg52BlindAccState rho 113)
      (seg52BlindAccState rho 114) := by
  obtain ⟨r6902, r7601, r7602, r7603, r7604, r7605⟩ := seg52Blind_rows113 rho h
  unfold Seg52.relationRow6902 at r6902

  unfold Seg52.relationRow7601 at r7601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7601

  unfold Seg52.relationRow7602 at r7602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7602

  unfold Seg52.relationRow7603 at r7603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7603

  unfold Seg52.relationRow7604 at r7604

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7604

  unfold Seg52.relationRow7605 at r7605

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7605

  have hnextx : seg52BlindDeltaX113 rho =
      seg52BlindDeltaX112 rho + rho 51992 := by
    unfold seg52BlindDeltaX113 seg52BlindDeltaX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 112]

    ring

  have hnexty : seg52BlindDeltaY113 rho =
      seg52BlindDeltaY112 rho + rho 51993 := by
    unfold seg52BlindDeltaY113 seg52BlindDeltaY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 112]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 113
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX112 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY112 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX113 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY113 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung113_wide (rho 51178) (rho 51291) (seg52BlindDeltaX112 rho) (seg52BlindDeltaY112 rho) (rho 51989) (rho 51990) (rho 51991) (rho 51992) (rho 51993) hacc
  · unfold seg52BlindDeltaX112 seg52BlindDeltaY112
    linear_combination r7601
  · unfold seg52BlindDeltaX112 seg52BlindDeltaY112
    linear_combination r7602
  · unfold seg52BlindDeltaX112 seg52BlindDeltaY112
    linear_combination r7603
  · unfold seg52BlindDeltaX112
    linear_combination r7604
  · unfold seg52BlindDeltaY112
    linear_combination r7605
  · linear_combination r6902

theorem seg52Blind_rows114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6903 rho ∧ Seg52.relationRow7606 rho ∧ Seg52.relationRow7607 rho ∧ Seg52.relationRow7608 rho ∧ Seg52.relationRow7609 rho ∧ Seg52.relationRow7610 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6903, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, r7606, r7607, r7608, r7609, r7610, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6903, r7606, r7607, r7608, r7609, r7610⟩

theorem seg52Blind_rung114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51292 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 114)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      114 (Bool.toZMod bit) (seg52BlindAccState rho 114)
      (seg52BlindAccState rho 115) := by
  obtain ⟨r6903, r7606, r7607, r7608, r7609, r7610⟩ := seg52Blind_rows114 rho h
  unfold Seg52.relationRow6903 at r6903

  unfold Seg52.relationRow7606 at r7606

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7606

  unfold Seg52.relationRow7607 at r7607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7607

  unfold Seg52.relationRow7608 at r7608

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7608

  unfold Seg52.relationRow7609 at r7609

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7609

  unfold Seg52.relationRow7610 at r7610

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7610

  have hnextx : seg52BlindDeltaX114 rho =
      seg52BlindDeltaX113 rho + rho 51997 := by
    unfold seg52BlindDeltaX114 seg52BlindDeltaX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 113]

    ring

  have hnexty : seg52BlindDeltaY114 rho =
      seg52BlindDeltaY113 rho + rho 51998 := by
    unfold seg52BlindDeltaY114 seg52BlindDeltaY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 113]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 114
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX113 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY113 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX114 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY114 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung114_wide (rho 51178) (rho 51292) (seg52BlindDeltaX113 rho) (seg52BlindDeltaY113 rho) (rho 51994) (rho 51995) (rho 51996) (rho 51997) (rho 51998) hacc
  · unfold seg52BlindDeltaX113 seg52BlindDeltaY113
    linear_combination r7606
  · unfold seg52BlindDeltaX113 seg52BlindDeltaY113
    linear_combination r7607
  · unfold seg52BlindDeltaX113 seg52BlindDeltaY113
    linear_combination r7608
  · unfold seg52BlindDeltaX113
    linear_combination r7609
  · unfold seg52BlindDeltaY113
    linear_combination r7610
  · linear_combination r6903

theorem seg52Blind_rows115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6904 rho ∧ Seg52.relationRow7611 rho ∧ Seg52.relationRow7612 rho ∧ Seg52.relationRow7613 rho ∧ Seg52.relationRow7614 rho ∧ Seg52.relationRow7615 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6904, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7611, r7612, r7613, r7614, r7615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6904, r7611, r7612, r7613, r7614, r7615⟩

theorem seg52Blind_rung115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51293 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 115)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      115 (Bool.toZMod bit) (seg52BlindAccState rho 115)
      (seg52BlindAccState rho 116) := by
  obtain ⟨r6904, r7611, r7612, r7613, r7614, r7615⟩ := seg52Blind_rows115 rho h
  unfold Seg52.relationRow6904 at r6904

  unfold Seg52.relationRow7611 at r7611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7611

  unfold Seg52.relationRow7612 at r7612

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7612

  unfold Seg52.relationRow7613 at r7613

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7613

  unfold Seg52.relationRow7614 at r7614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7614

  unfold Seg52.relationRow7615 at r7615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7615

  have hnextx : seg52BlindDeltaX115 rho =
      seg52BlindDeltaX114 rho + rho 52002 := by
    unfold seg52BlindDeltaX115 seg52BlindDeltaX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 114]

    ring

  have hnexty : seg52BlindDeltaY115 rho =
      seg52BlindDeltaY114 rho + rho 52003 := by
    unfold seg52BlindDeltaY115 seg52BlindDeltaY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 114]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 115
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX114 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY114 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX115 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY115 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung115_wide (rho 51178) (rho 51293) (seg52BlindDeltaX114 rho) (seg52BlindDeltaY114 rho) (rho 51999) (rho 52000) (rho 52001) (rho 52002) (rho 52003) hacc
  · unfold seg52BlindDeltaX114 seg52BlindDeltaY114
    linear_combination r7611
  · unfold seg52BlindDeltaX114 seg52BlindDeltaY114
    linear_combination r7612
  · unfold seg52BlindDeltaX114 seg52BlindDeltaY114
    linear_combination r7613
  · unfold seg52BlindDeltaX114
    linear_combination r7614
  · unfold seg52BlindDeltaY114
    linear_combination r7615
  · linear_combination r6904

theorem seg52Blind_rows116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6905 rho ∧ Seg52.relationRow7616 rho ∧ Seg52.relationRow7617 rho ∧ Seg52.relationRow7618 rho ∧ Seg52.relationRow7619 rho ∧ Seg52.relationRow7620 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6905, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7616, r7617, r7618, r7619, r7620, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6905, r7616, r7617, r7618, r7619, r7620⟩

theorem seg52Blind_rung116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51294 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 116)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      116 (Bool.toZMod bit) (seg52BlindAccState rho 116)
      (seg52BlindAccState rho 117) := by
  obtain ⟨r6905, r7616, r7617, r7618, r7619, r7620⟩ := seg52Blind_rows116 rho h
  unfold Seg52.relationRow6905 at r6905

  unfold Seg52.relationRow7616 at r7616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7616

  unfold Seg52.relationRow7617 at r7617

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7617

  unfold Seg52.relationRow7618 at r7618

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7618

  unfold Seg52.relationRow7619 at r7619

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7619

  unfold Seg52.relationRow7620 at r7620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7620

  have hnextx : seg52BlindDeltaX116 rho =
      seg52BlindDeltaX115 rho + rho 52007 := by
    unfold seg52BlindDeltaX116 seg52BlindDeltaX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 115]

    ring

  have hnexty : seg52BlindDeltaY116 rho =
      seg52BlindDeltaY115 rho + rho 52008 := by
    unfold seg52BlindDeltaY116 seg52BlindDeltaY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 115]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 116
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX115 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY115 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX116 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY116 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung116_wide (rho 51178) (rho 51294) (seg52BlindDeltaX115 rho) (seg52BlindDeltaY115 rho) (rho 52004) (rho 52005) (rho 52006) (rho 52007) (rho 52008) hacc
  · unfold seg52BlindDeltaX115 seg52BlindDeltaY115
    linear_combination r7616
  · unfold seg52BlindDeltaX115 seg52BlindDeltaY115
    linear_combination r7617
  · unfold seg52BlindDeltaX115 seg52BlindDeltaY115
    linear_combination r7618
  · unfold seg52BlindDeltaX115
    linear_combination r7619
  · unfold seg52BlindDeltaY115
    linear_combination r7620
  · linear_combination r6905

theorem seg52Blind_rows117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6906 rho ∧ Seg52.relationRow7621 rho ∧ Seg52.relationRow7622 rho ∧ Seg52.relationRow7623 rho ∧ Seg52.relationRow7624 rho ∧ Seg52.relationRow7625 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6906, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7621, r7622, r7623, r7624, r7625, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6906, r7621, r7622, r7623, r7624, r7625⟩

theorem seg52Blind_rung117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51295 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 117)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      117 (Bool.toZMod bit) (seg52BlindAccState rho 117)
      (seg52BlindAccState rho 118) := by
  obtain ⟨r6906, r7621, r7622, r7623, r7624, r7625⟩ := seg52Blind_rows117 rho h
  unfold Seg52.relationRow6906 at r6906

  unfold Seg52.relationRow7621 at r7621

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7621

  unfold Seg52.relationRow7622 at r7622

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7622

  unfold Seg52.relationRow7623 at r7623

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7623

  unfold Seg52.relationRow7624 at r7624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7624

  unfold Seg52.relationRow7625 at r7625

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7625

  have hnextx : seg52BlindDeltaX117 rho =
      seg52BlindDeltaX116 rho + rho 52012 := by
    unfold seg52BlindDeltaX117 seg52BlindDeltaX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 116]

    ring

  have hnexty : seg52BlindDeltaY117 rho =
      seg52BlindDeltaY116 rho + rho 52013 := by
    unfold seg52BlindDeltaY117 seg52BlindDeltaY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 116]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 117
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX116 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY116 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX117 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY117 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung117_wide (rho 51178) (rho 51295) (seg52BlindDeltaX116 rho) (seg52BlindDeltaY116 rho) (rho 52009) (rho 52010) (rho 52011) (rho 52012) (rho 52013) hacc
  · unfold seg52BlindDeltaX116 seg52BlindDeltaY116
    linear_combination r7621
  · unfold seg52BlindDeltaX116 seg52BlindDeltaY116
    linear_combination r7622
  · unfold seg52BlindDeltaX116 seg52BlindDeltaY116
    linear_combination r7623
  · unfold seg52BlindDeltaX116
    linear_combination r7624
  · unfold seg52BlindDeltaY116
    linear_combination r7625
  · linear_combination r6906

theorem seg52Blind_rows118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6907 rho ∧ Seg52.relationRow7626 rho ∧ Seg52.relationRow7627 rho ∧ Seg52.relationRow7628 rho ∧ Seg52.relationRow7629 rho ∧ Seg52.relationRow7630 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6907, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7626, r7627, r7628, r7629, r7630, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6907, r7626, r7627, r7628, r7629, r7630⟩

theorem seg52Blind_rung118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51296 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 118)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      118 (Bool.toZMod bit) (seg52BlindAccState rho 118)
      (seg52BlindAccState rho 119) := by
  obtain ⟨r6907, r7626, r7627, r7628, r7629, r7630⟩ := seg52Blind_rows118 rho h
  unfold Seg52.relationRow6907 at r6907

  unfold Seg52.relationRow7626 at r7626

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7626

  unfold Seg52.relationRow7627 at r7627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7627

  unfold Seg52.relationRow7628 at r7628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7628

  unfold Seg52.relationRow7629 at r7629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7629

  unfold Seg52.relationRow7630 at r7630

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7630

  have hnextx : seg52BlindDeltaX118 rho =
      seg52BlindDeltaX117 rho + rho 52017 := by
    unfold seg52BlindDeltaX118 seg52BlindDeltaX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 117]

    ring

  have hnexty : seg52BlindDeltaY118 rho =
      seg52BlindDeltaY117 rho + rho 52018 := by
    unfold seg52BlindDeltaY118 seg52BlindDeltaY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 117]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 118
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX117 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY117 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX118 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY118 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung118_wide (rho 51178) (rho 51296) (seg52BlindDeltaX117 rho) (seg52BlindDeltaY117 rho) (rho 52014) (rho 52015) (rho 52016) (rho 52017) (rho 52018) hacc
  · unfold seg52BlindDeltaX117 seg52BlindDeltaY117
    linear_combination r7626
  · unfold seg52BlindDeltaX117 seg52BlindDeltaY117
    linear_combination r7627
  · unfold seg52BlindDeltaX117 seg52BlindDeltaY117
    linear_combination r7628
  · unfold seg52BlindDeltaX117
    linear_combination r7629
  · unfold seg52BlindDeltaY117
    linear_combination r7630
  · linear_combination r6907

theorem seg52Blind_rows119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6908 rho ∧ Seg52.relationRow7631 rho ∧ Seg52.relationRow7632 rho ∧ Seg52.relationRow7633 rho ∧ Seg52.relationRow7634 rho ∧ Seg52.relationRow7635 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6908, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7631, r7632, r7633, r7634, r7635, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6908, r7631, r7632, r7633, r7634, r7635⟩

theorem seg52Blind_rung119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51297 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 119)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      119 (Bool.toZMod bit) (seg52BlindAccState rho 119)
      (seg52BlindAccState rho 120) := by
  obtain ⟨r6908, r7631, r7632, r7633, r7634, r7635⟩ := seg52Blind_rows119 rho h
  unfold Seg52.relationRow6908 at r6908

  unfold Seg52.relationRow7631 at r7631

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7631

  unfold Seg52.relationRow7632 at r7632

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7632

  unfold Seg52.relationRow7633 at r7633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7633

  unfold Seg52.relationRow7634 at r7634

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7634

  unfold Seg52.relationRow7635 at r7635

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7635

  have hnextx : seg52BlindDeltaX119 rho =
      seg52BlindDeltaX118 rho + rho 52022 := by
    unfold seg52BlindDeltaX119 seg52BlindDeltaX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 118]

    ring

  have hnexty : seg52BlindDeltaY119 rho =
      seg52BlindDeltaY118 rho + rho 52023 := by
    unfold seg52BlindDeltaY119 seg52BlindDeltaY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 118]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 119
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX118 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY118 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX119 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY119 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung119_wide (rho 51178) (rho 51297) (seg52BlindDeltaX118 rho) (seg52BlindDeltaY118 rho) (rho 52019) (rho 52020) (rho 52021) (rho 52022) (rho 52023) hacc
  · unfold seg52BlindDeltaX118 seg52BlindDeltaY118
    linear_combination r7631
  · unfold seg52BlindDeltaX118 seg52BlindDeltaY118
    linear_combination r7632
  · unfold seg52BlindDeltaX118 seg52BlindDeltaY118
    linear_combination r7633
  · unfold seg52BlindDeltaX118
    linear_combination r7634
  · unfold seg52BlindDeltaY118
    linear_combination r7635
  · linear_combination r6908

theorem seg52Blind_rows120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6909 rho ∧ Seg52.relationRow7636 rho ∧ Seg52.relationRow7637 rho ∧ Seg52.relationRow7638 rho ∧ Seg52.relationRow7639 rho ∧ Seg52.relationRow7640 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6909, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7636, r7637, r7638, r7639, r7640, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6909, r7636, r7637, r7638, r7639, r7640⟩

theorem seg52Blind_rung120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51298 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 120)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      120 (Bool.toZMod bit) (seg52BlindAccState rho 120)
      (seg52BlindAccState rho 121) := by
  obtain ⟨r6909, r7636, r7637, r7638, r7639, r7640⟩ := seg52Blind_rows120 rho h
  unfold Seg52.relationRow6909 at r6909

  unfold Seg52.relationRow7636 at r7636

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7636

  unfold Seg52.relationRow7637 at r7637

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7637

  unfold Seg52.relationRow7638 at r7638

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7638

  unfold Seg52.relationRow7639 at r7639

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7639

  unfold Seg52.relationRow7640 at r7640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7640

  have hnextx : seg52BlindDeltaX120 rho =
      seg52BlindDeltaX119 rho + rho 52027 := by
    unfold seg52BlindDeltaX120 seg52BlindDeltaX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 119]

    ring

  have hnexty : seg52BlindDeltaY120 rho =
      seg52BlindDeltaY119 rho + rho 52028 := by
    unfold seg52BlindDeltaY120 seg52BlindDeltaY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 119]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 120
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX119 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY119 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX120 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY120 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung120_wide (rho 51178) (rho 51298) (seg52BlindDeltaX119 rho) (seg52BlindDeltaY119 rho) (rho 52024) (rho 52025) (rho 52026) (rho 52027) (rho 52028) hacc
  · unfold seg52BlindDeltaX119 seg52BlindDeltaY119
    linear_combination r7636
  · unfold seg52BlindDeltaX119 seg52BlindDeltaY119
    linear_combination r7637
  · unfold seg52BlindDeltaX119 seg52BlindDeltaY119
    linear_combination r7638
  · unfold seg52BlindDeltaX119
    linear_combination r7639
  · unfold seg52BlindDeltaY119
    linear_combination r7640
  · linear_combination r6909

theorem seg52Blind_hstep_c11 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 111 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc
  · exact seg52Blind_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc
  · exact seg52Blind_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc
  · exact seg52Blind_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc
  · exact seg52Blind_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc
  · exact seg52Blind_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc
  · exact seg52Blind_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc
  · exact seg52Blind_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc
  · exact seg52Blind_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc
  · exact seg52Blind_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

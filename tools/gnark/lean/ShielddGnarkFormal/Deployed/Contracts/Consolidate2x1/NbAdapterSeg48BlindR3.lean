import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows31 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6180 rho ∧ Seg48.relationRow6551 rho ∧ Seg48.relationRow6552 rho ∧ Seg48.relationRow6553 rho ∧ Seg48.relationRow6554 rho ∧ Seg48.relationRow6555 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6551, r6552, r6553, r6554, r6555, _, _, _, _⟩

  exact ⟨r6180, r6551, r6552, r6553, r6554, r6555⟩

theorem seg48Blind_rung31 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38937 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 31)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      31 (Bool.toZMod bit) (seg48BlindAccState rho 31)
      (seg48BlindAccState rho 32) := by
  obtain ⟨r6180, r6551, r6552, r6553, r6554, r6555⟩ := seg48Blind_rows31 rho h
  unfold Seg48.relationRow6180 at r6180

  unfold Seg48.relationRow6551 at r6551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6551

  unfold Seg48.relationRow6552 at r6552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6552

  unfold Seg48.relationRow6553 at r6553

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6553

  unfold Seg48.relationRow6554 at r6554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6554

  unfold Seg48.relationRow6555 at r6555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6555

  have hnextx : seg48BlindDeltaX31 rho =
      seg48BlindDeltaX30 rho + rho 39310 := by
    unfold seg48BlindDeltaX31 seg48BlindDeltaX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 30]

    ring

  have hnexty : seg48BlindDeltaY31 rho =
      seg48BlindDeltaY30 rho + rho 39311 := by
    unfold seg48BlindDeltaY31 seg48BlindDeltaY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 30]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 31
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX30 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY30 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX31 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY31 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung31_wide (rho 38906) (rho 38937) (seg48BlindDeltaX30 rho) (seg48BlindDeltaY30 rho) (rho 39307) (rho 39308) (rho 39309) (rho 39310) (rho 39311) hacc
  · unfold seg48BlindDeltaX30 seg48BlindDeltaY30
    linear_combination r6551
  · unfold seg48BlindDeltaX30 seg48BlindDeltaY30
    linear_combination r6552
  · unfold seg48BlindDeltaX30 seg48BlindDeltaY30
    linear_combination r6553
  · unfold seg48BlindDeltaX30
    linear_combination r6554
  · unfold seg48BlindDeltaY30
    linear_combination r6555
  · linear_combination r6180

theorem seg48Blind_rows32 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6181 rho ∧ Seg48.relationRow6556 rho ∧ Seg48.relationRow6557 rho ∧ Seg48.relationRow6558 rho ∧ Seg48.relationRow6559 rho ∧ Seg48.relationRow6560 rho := by
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

    _, p81, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6181, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6556, r6557, r6558, r6559⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨r6560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6181, r6556, r6557, r6558, r6559, r6560⟩

theorem seg48Blind_rung32 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38938 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 32)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      32 (Bool.toZMod bit) (seg48BlindAccState rho 32)
      (seg48BlindAccState rho 33) := by
  obtain ⟨r6181, r6556, r6557, r6558, r6559, r6560⟩ := seg48Blind_rows32 rho h
  unfold Seg48.relationRow6181 at r6181

  unfold Seg48.relationRow6556 at r6556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6556

  unfold Seg48.relationRow6557 at r6557

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6557

  unfold Seg48.relationRow6558 at r6558

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6558

  unfold Seg48.relationRow6559 at r6559

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6559

  unfold Seg48.relationRow6560 at r6560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6560

  have hnextx : seg48BlindDeltaX32 rho =
      seg48BlindDeltaX31 rho + rho 39315 := by
    unfold seg48BlindDeltaX32 seg48BlindDeltaX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 31]

    ring

  have hnexty : seg48BlindDeltaY32 rho =
      seg48BlindDeltaY31 rho + rho 39316 := by
    unfold seg48BlindDeltaY32 seg48BlindDeltaY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 31]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 32
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX31 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY31 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX32 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY32 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung32_wide (rho 38906) (rho 38938) (seg48BlindDeltaX31 rho) (seg48BlindDeltaY31 rho) (rho 39312) (rho 39313) (rho 39314) (rho 39315) (rho 39316) hacc
  · unfold seg48BlindDeltaX31 seg48BlindDeltaY31
    linear_combination r6556
  · unfold seg48BlindDeltaX31 seg48BlindDeltaY31
    linear_combination r6557
  · unfold seg48BlindDeltaX31 seg48BlindDeltaY31
    linear_combination r6558
  · unfold seg48BlindDeltaX31
    linear_combination r6559
  · unfold seg48BlindDeltaY31
    linear_combination r6560
  · linear_combination r6181

theorem seg48Blind_rows33 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6182 rho ∧ Seg48.relationRow6561 rho ∧ Seg48.relationRow6562 rho ∧ Seg48.relationRow6563 rho ∧ Seg48.relationRow6564 rho ∧ Seg48.relationRow6565 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6182, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, r6561, r6562, r6563, r6564, r6565, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6182, r6561, r6562, r6563, r6564, r6565⟩

theorem seg48Blind_rung33 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38939 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 33)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      33 (Bool.toZMod bit) (seg48BlindAccState rho 33)
      (seg48BlindAccState rho 34) := by
  obtain ⟨r6182, r6561, r6562, r6563, r6564, r6565⟩ := seg48Blind_rows33 rho h
  unfold Seg48.relationRow6182 at r6182

  unfold Seg48.relationRow6561 at r6561

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6561

  unfold Seg48.relationRow6562 at r6562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6562

  unfold Seg48.relationRow6563 at r6563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6563

  unfold Seg48.relationRow6564 at r6564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6564

  unfold Seg48.relationRow6565 at r6565

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6565

  have hnextx : seg48BlindDeltaX33 rho =
      seg48BlindDeltaX32 rho + rho 39320 := by
    unfold seg48BlindDeltaX33 seg48BlindDeltaX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 32]

    ring

  have hnexty : seg48BlindDeltaY33 rho =
      seg48BlindDeltaY32 rho + rho 39321 := by
    unfold seg48BlindDeltaY33 seg48BlindDeltaY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 32]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 33
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX32 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY32 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX33 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY33 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung33_wide (rho 38906) (rho 38939) (seg48BlindDeltaX32 rho) (seg48BlindDeltaY32 rho) (rho 39317) (rho 39318) (rho 39319) (rho 39320) (rho 39321) hacc
  · unfold seg48BlindDeltaX32 seg48BlindDeltaY32
    linear_combination r6561
  · unfold seg48BlindDeltaX32 seg48BlindDeltaY32
    linear_combination r6562
  · unfold seg48BlindDeltaX32 seg48BlindDeltaY32
    linear_combination r6563
  · unfold seg48BlindDeltaX32
    linear_combination r6564
  · unfold seg48BlindDeltaY32
    linear_combination r6565
  · linear_combination r6182

theorem seg48Blind_rows34 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6183 rho ∧ Seg48.relationRow6566 rho ∧ Seg48.relationRow6567 rho ∧ Seg48.relationRow6568 rho ∧ Seg48.relationRow6569 rho ∧ Seg48.relationRow6570 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6183, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, r6566, r6567, r6568, r6569, r6570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6183, r6566, r6567, r6568, r6569, r6570⟩

theorem seg48Blind_rung34 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38940 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 34)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      34 (Bool.toZMod bit) (seg48BlindAccState rho 34)
      (seg48BlindAccState rho 35) := by
  obtain ⟨r6183, r6566, r6567, r6568, r6569, r6570⟩ := seg48Blind_rows34 rho h
  unfold Seg48.relationRow6183 at r6183

  unfold Seg48.relationRow6566 at r6566

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6566

  unfold Seg48.relationRow6567 at r6567

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6567

  unfold Seg48.relationRow6568 at r6568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6568

  unfold Seg48.relationRow6569 at r6569

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6569

  unfold Seg48.relationRow6570 at r6570

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6570

  have hnextx : seg48BlindDeltaX34 rho =
      seg48BlindDeltaX33 rho + rho 39325 := by
    unfold seg48BlindDeltaX34 seg48BlindDeltaX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 33]

    ring

  have hnexty : seg48BlindDeltaY34 rho =
      seg48BlindDeltaY33 rho + rho 39326 := by
    unfold seg48BlindDeltaY34 seg48BlindDeltaY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 33]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 34
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX33 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY33 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX34 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY34 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung34_wide (rho 38906) (rho 38940) (seg48BlindDeltaX33 rho) (seg48BlindDeltaY33 rho) (rho 39322) (rho 39323) (rho 39324) (rho 39325) (rho 39326) hacc
  · unfold seg48BlindDeltaX33 seg48BlindDeltaY33
    linear_combination r6566
  · unfold seg48BlindDeltaX33 seg48BlindDeltaY33
    linear_combination r6567
  · unfold seg48BlindDeltaX33 seg48BlindDeltaY33
    linear_combination r6568
  · unfold seg48BlindDeltaX33
    linear_combination r6569
  · unfold seg48BlindDeltaY33
    linear_combination r6570
  · linear_combination r6183

theorem seg48Blind_rows35 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6184 rho ∧ Seg48.relationRow6571 rho ∧ Seg48.relationRow6572 rho ∧ Seg48.relationRow6573 rho ∧ Seg48.relationRow6574 rho ∧ Seg48.relationRow6575 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6184, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6571, r6572, r6573, r6574, r6575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6184, r6571, r6572, r6573, r6574, r6575⟩

theorem seg48Blind_rung35 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38941 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 35)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      35 (Bool.toZMod bit) (seg48BlindAccState rho 35)
      (seg48BlindAccState rho 36) := by
  obtain ⟨r6184, r6571, r6572, r6573, r6574, r6575⟩ := seg48Blind_rows35 rho h
  unfold Seg48.relationRow6184 at r6184

  unfold Seg48.relationRow6571 at r6571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6571

  unfold Seg48.relationRow6572 at r6572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6572

  unfold Seg48.relationRow6573 at r6573

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6573

  unfold Seg48.relationRow6574 at r6574

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6574

  unfold Seg48.relationRow6575 at r6575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6575

  have hnextx : seg48BlindDeltaX35 rho =
      seg48BlindDeltaX34 rho + rho 39330 := by
    unfold seg48BlindDeltaX35 seg48BlindDeltaX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 34]

    ring

  have hnexty : seg48BlindDeltaY35 rho =
      seg48BlindDeltaY34 rho + rho 39331 := by
    unfold seg48BlindDeltaY35 seg48BlindDeltaY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 34]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 35
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX34 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY34 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX35 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY35 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung35_wide (rho 38906) (rho 38941) (seg48BlindDeltaX34 rho) (seg48BlindDeltaY34 rho) (rho 39327) (rho 39328) (rho 39329) (rho 39330) (rho 39331) hacc
  · unfold seg48BlindDeltaX34 seg48BlindDeltaY34
    linear_combination r6571
  · unfold seg48BlindDeltaX34 seg48BlindDeltaY34
    linear_combination r6572
  · unfold seg48BlindDeltaX34 seg48BlindDeltaY34
    linear_combination r6573
  · unfold seg48BlindDeltaX34
    linear_combination r6574
  · unfold seg48BlindDeltaY34
    linear_combination r6575
  · linear_combination r6184

theorem seg48Blind_rows36 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6185 rho ∧ Seg48.relationRow6576 rho ∧ Seg48.relationRow6577 rho ∧ Seg48.relationRow6578 rho ∧ Seg48.relationRow6579 rho ∧ Seg48.relationRow6580 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6185, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6576, r6577, r6578, r6579, r6580, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6185, r6576, r6577, r6578, r6579, r6580⟩

theorem seg48Blind_rung36 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38942 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 36)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      36 (Bool.toZMod bit) (seg48BlindAccState rho 36)
      (seg48BlindAccState rho 37) := by
  obtain ⟨r6185, r6576, r6577, r6578, r6579, r6580⟩ := seg48Blind_rows36 rho h
  unfold Seg48.relationRow6185 at r6185

  unfold Seg48.relationRow6576 at r6576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6576

  unfold Seg48.relationRow6577 at r6577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6577

  unfold Seg48.relationRow6578 at r6578

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6578

  unfold Seg48.relationRow6579 at r6579

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6579

  unfold Seg48.relationRow6580 at r6580

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6580

  have hnextx : seg48BlindDeltaX36 rho =
      seg48BlindDeltaX35 rho + rho 39335 := by
    unfold seg48BlindDeltaX36 seg48BlindDeltaX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 35]

    ring

  have hnexty : seg48BlindDeltaY36 rho =
      seg48BlindDeltaY35 rho + rho 39336 := by
    unfold seg48BlindDeltaY36 seg48BlindDeltaY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 35]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 36
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX35 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY35 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX36 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY36 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung36_wide (rho 38906) (rho 38942) (seg48BlindDeltaX35 rho) (seg48BlindDeltaY35 rho) (rho 39332) (rho 39333) (rho 39334) (rho 39335) (rho 39336) hacc
  · unfold seg48BlindDeltaX35 seg48BlindDeltaY35
    linear_combination r6576
  · unfold seg48BlindDeltaX35 seg48BlindDeltaY35
    linear_combination r6577
  · unfold seg48BlindDeltaX35 seg48BlindDeltaY35
    linear_combination r6578
  · unfold seg48BlindDeltaX35
    linear_combination r6579
  · unfold seg48BlindDeltaY35
    linear_combination r6580
  · linear_combination r6185

theorem seg48Blind_rows37 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6186 rho ∧ Seg48.relationRow6581 rho ∧ Seg48.relationRow6582 rho ∧ Seg48.relationRow6583 rho ∧ Seg48.relationRow6584 rho ∧ Seg48.relationRow6585 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6581, r6582, r6583, r6584, r6585, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6186, r6581, r6582, r6583, r6584, r6585⟩

theorem seg48Blind_rung37 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38943 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 37)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      37 (Bool.toZMod bit) (seg48BlindAccState rho 37)
      (seg48BlindAccState rho 38) := by
  obtain ⟨r6186, r6581, r6582, r6583, r6584, r6585⟩ := seg48Blind_rows37 rho h
  unfold Seg48.relationRow6186 at r6186

  unfold Seg48.relationRow6581 at r6581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6581

  unfold Seg48.relationRow6582 at r6582

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6582

  unfold Seg48.relationRow6583 at r6583

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6583

  unfold Seg48.relationRow6584 at r6584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6584

  unfold Seg48.relationRow6585 at r6585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6585

  have hnextx : seg48BlindDeltaX37 rho =
      seg48BlindDeltaX36 rho + rho 39340 := by
    unfold seg48BlindDeltaX37 seg48BlindDeltaX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 36]

    ring

  have hnexty : seg48BlindDeltaY37 rho =
      seg48BlindDeltaY36 rho + rho 39341 := by
    unfold seg48BlindDeltaY37 seg48BlindDeltaY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 36]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 37
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX36 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY36 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX37 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY37 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung37_wide (rho 38906) (rho 38943) (seg48BlindDeltaX36 rho) (seg48BlindDeltaY36 rho) (rho 39337) (rho 39338) (rho 39339) (rho 39340) (rho 39341) hacc
  · unfold seg48BlindDeltaX36 seg48BlindDeltaY36
    linear_combination r6581
  · unfold seg48BlindDeltaX36 seg48BlindDeltaY36
    linear_combination r6582
  · unfold seg48BlindDeltaX36 seg48BlindDeltaY36
    linear_combination r6583
  · unfold seg48BlindDeltaX36
    linear_combination r6584
  · unfold seg48BlindDeltaY36
    linear_combination r6585
  · linear_combination r6186

theorem seg48Blind_rows38 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6187 rho ∧ Seg48.relationRow6586 rho ∧ Seg48.relationRow6587 rho ∧ Seg48.relationRow6588 rho ∧ Seg48.relationRow6589 rho ∧ Seg48.relationRow6590 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6187, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6586, r6587, r6588, r6589, r6590, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6187, r6586, r6587, r6588, r6589, r6590⟩

theorem seg48Blind_rung38 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38944 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 38)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      38 (Bool.toZMod bit) (seg48BlindAccState rho 38)
      (seg48BlindAccState rho 39) := by
  obtain ⟨r6187, r6586, r6587, r6588, r6589, r6590⟩ := seg48Blind_rows38 rho h
  unfold Seg48.relationRow6187 at r6187

  unfold Seg48.relationRow6586 at r6586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6586

  unfold Seg48.relationRow6587 at r6587

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6587

  unfold Seg48.relationRow6588 at r6588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6588

  unfold Seg48.relationRow6589 at r6589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6589

  unfold Seg48.relationRow6590 at r6590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6590

  have hnextx : seg48BlindDeltaX38 rho =
      seg48BlindDeltaX37 rho + rho 39345 := by
    unfold seg48BlindDeltaX38 seg48BlindDeltaX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 37]

    ring

  have hnexty : seg48BlindDeltaY38 rho =
      seg48BlindDeltaY37 rho + rho 39346 := by
    unfold seg48BlindDeltaY38 seg48BlindDeltaY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 37]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 38
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX37 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY37 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX38 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY38 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung38_wide (rho 38906) (rho 38944) (seg48BlindDeltaX37 rho) (seg48BlindDeltaY37 rho) (rho 39342) (rho 39343) (rho 39344) (rho 39345) (rho 39346) hacc
  · unfold seg48BlindDeltaX37 seg48BlindDeltaY37
    linear_combination r6586
  · unfold seg48BlindDeltaX37 seg48BlindDeltaY37
    linear_combination r6587
  · unfold seg48BlindDeltaX37 seg48BlindDeltaY37
    linear_combination r6588
  · unfold seg48BlindDeltaX37
    linear_combination r6589
  · unfold seg48BlindDeltaY37
    linear_combination r6590
  · linear_combination r6187

theorem seg48Blind_rows39 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6188 rho ∧ Seg48.relationRow6591 rho ∧ Seg48.relationRow6592 rho ∧ Seg48.relationRow6593 rho ∧ Seg48.relationRow6594 rho ∧ Seg48.relationRow6595 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6188, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6591, r6592, r6593, r6594, r6595, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6188, r6591, r6592, r6593, r6594, r6595⟩

theorem seg48Blind_rung39 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38945 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 39)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      39 (Bool.toZMod bit) (seg48BlindAccState rho 39)
      (seg48BlindAccState rho 40) := by
  obtain ⟨r6188, r6591, r6592, r6593, r6594, r6595⟩ := seg48Blind_rows39 rho h
  unfold Seg48.relationRow6188 at r6188

  unfold Seg48.relationRow6591 at r6591

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6591

  unfold Seg48.relationRow6592 at r6592

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6592

  unfold Seg48.relationRow6593 at r6593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6593

  unfold Seg48.relationRow6594 at r6594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6594

  unfold Seg48.relationRow6595 at r6595

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6595

  have hnextx : seg48BlindDeltaX39 rho =
      seg48BlindDeltaX38 rho + rho 39350 := by
    unfold seg48BlindDeltaX39 seg48BlindDeltaX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 38]

    ring

  have hnexty : seg48BlindDeltaY39 rho =
      seg48BlindDeltaY38 rho + rho 39351 := by
    unfold seg48BlindDeltaY39 seg48BlindDeltaY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 38]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 39
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX38 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY38 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX39 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY39 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung39_wide (rho 38906) (rho 38945) (seg48BlindDeltaX38 rho) (seg48BlindDeltaY38 rho) (rho 39347) (rho 39348) (rho 39349) (rho 39350) (rho 39351) hacc
  · unfold seg48BlindDeltaX38 seg48BlindDeltaY38
    linear_combination r6591
  · unfold seg48BlindDeltaX38 seg48BlindDeltaY38
    linear_combination r6592
  · unfold seg48BlindDeltaX38 seg48BlindDeltaY38
    linear_combination r6593
  · unfold seg48BlindDeltaX38
    linear_combination r6594
  · unfold seg48BlindDeltaY38
    linear_combination r6595
  · linear_combination r6188

theorem seg48Blind_rows40 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6189 rho ∧ Seg48.relationRow6596 rho ∧ Seg48.relationRow6597 rho ∧ Seg48.relationRow6598 rho ∧ Seg48.relationRow6599 rho ∧ Seg48.relationRow6600 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6189, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6596, r6597, r6598, r6599, r6600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6189, r6596, r6597, r6598, r6599, r6600⟩

theorem seg48Blind_rung40 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38946 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 40)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      40 (Bool.toZMod bit) (seg48BlindAccState rho 40)
      (seg48BlindAccState rho 41) := by
  obtain ⟨r6189, r6596, r6597, r6598, r6599, r6600⟩ := seg48Blind_rows40 rho h
  unfold Seg48.relationRow6189 at r6189

  unfold Seg48.relationRow6596 at r6596

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6596

  unfold Seg48.relationRow6597 at r6597

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6597

  unfold Seg48.relationRow6598 at r6598

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6598

  unfold Seg48.relationRow6599 at r6599

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6599

  unfold Seg48.relationRow6600 at r6600

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6600

  have hnextx : seg48BlindDeltaX40 rho =
      seg48BlindDeltaX39 rho + rho 39355 := by
    unfold seg48BlindDeltaX40 seg48BlindDeltaX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 39]

    ring

  have hnexty : seg48BlindDeltaY40 rho =
      seg48BlindDeltaY39 rho + rho 39356 := by
    unfold seg48BlindDeltaY40 seg48BlindDeltaY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 39]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 40
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX39 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY39 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX40 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY40 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung40_wide (rho 38906) (rho 38946) (seg48BlindDeltaX39 rho) (seg48BlindDeltaY39 rho) (rho 39352) (rho 39353) (rho 39354) (rho 39355) (rho 39356) hacc
  · unfold seg48BlindDeltaX39 seg48BlindDeltaY39
    linear_combination r6596
  · unfold seg48BlindDeltaX39 seg48BlindDeltaY39
    linear_combination r6597
  · unfold seg48BlindDeltaX39 seg48BlindDeltaY39
    linear_combination r6598
  · unfold seg48BlindDeltaX39
    linear_combination r6599
  · unfold seg48BlindDeltaY39
    linear_combination r6600
  · linear_combination r6189

theorem seg48Blind_hstep_c3 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 31 ≤ i → i < 41 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc
  · exact seg48Blind_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc
  · exact seg48Blind_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc
  · exact seg48Blind_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc
  · exact seg48Blind_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc
  · exact seg48Blind_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc
  · exact seg48Blind_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc
  · exact seg48Blind_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc
  · exact seg48Blind_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc
  · exact seg48Blind_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows21 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6170 rho ∧ Seg48.relationRow6501 rho ∧ Seg48.relationRow6502 rho ∧ Seg48.relationRow6503 rho ∧ Seg48.relationRow6504 rho ∧ Seg48.relationRow6505 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, r6170, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6501, r6502, r6503, r6504, r6505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6170, r6501, r6502, r6503, r6504, r6505⟩

theorem seg48Blind_rung21 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38927 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 21)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      21 (Bool.toZMod bit) (seg48BlindAccState rho 21)
      (seg48BlindAccState rho 22) := by
  obtain ⟨r6170, r6501, r6502, r6503, r6504, r6505⟩ := seg48Blind_rows21 rho h
  unfold Seg48.relationRow6170 at r6170

  unfold Seg48.relationRow6501 at r6501

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6501

  unfold Seg48.relationRow6502 at r6502

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6502

  unfold Seg48.relationRow6503 at r6503

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6503

  unfold Seg48.relationRow6504 at r6504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6504

  unfold Seg48.relationRow6505 at r6505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6505

  have hnextx : seg48BlindDeltaX21 rho =
      seg48BlindDeltaX20 rho + rho 39260 := by
    unfold seg48BlindDeltaX21 seg48BlindDeltaX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 20]

    ring

  have hnexty : seg48BlindDeltaY21 rho =
      seg48BlindDeltaY20 rho + rho 39261 := by
    unfold seg48BlindDeltaY21 seg48BlindDeltaY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 20]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 21
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX20 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY20 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX21 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY21 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung21_wide (rho 38906) (rho 38927) (seg48BlindDeltaX20 rho) (seg48BlindDeltaY20 rho) (rho 39257) (rho 39258) (rho 39259) (rho 39260) (rho 39261) hacc
  · unfold seg48BlindDeltaX20 seg48BlindDeltaY20
    linear_combination r6501
  · unfold seg48BlindDeltaX20 seg48BlindDeltaY20
    linear_combination r6502
  · unfold seg48BlindDeltaX20 seg48BlindDeltaY20
    linear_combination r6503
  · unfold seg48BlindDeltaX20
    linear_combination r6504
  · unfold seg48BlindDeltaY20
    linear_combination r6505
  · linear_combination r6170

theorem seg48Blind_rows22 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6171 rho ∧ Seg48.relationRow6506 rho ∧ Seg48.relationRow6507 rho ∧ Seg48.relationRow6508 rho ∧ Seg48.relationRow6509 rho ∧ Seg48.relationRow6510 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6171, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6506, r6507, r6508, r6509, r6510, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6171, r6506, r6507, r6508, r6509, r6510⟩

theorem seg48Blind_rung22 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38928 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 22)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      22 (Bool.toZMod bit) (seg48BlindAccState rho 22)
      (seg48BlindAccState rho 23) := by
  obtain ⟨r6171, r6506, r6507, r6508, r6509, r6510⟩ := seg48Blind_rows22 rho h
  unfold Seg48.relationRow6171 at r6171

  unfold Seg48.relationRow6506 at r6506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6506

  unfold Seg48.relationRow6507 at r6507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6507

  unfold Seg48.relationRow6508 at r6508

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6508

  unfold Seg48.relationRow6509 at r6509

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6509

  unfold Seg48.relationRow6510 at r6510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6510

  have hnextx : seg48BlindDeltaX22 rho =
      seg48BlindDeltaX21 rho + rho 39265 := by
    unfold seg48BlindDeltaX22 seg48BlindDeltaX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 21]

    ring

  have hnexty : seg48BlindDeltaY22 rho =
      seg48BlindDeltaY21 rho + rho 39266 := by
    unfold seg48BlindDeltaY22 seg48BlindDeltaY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 21]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 22
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX21 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY21 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX22 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY22 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung22_wide (rho 38906) (rho 38928) (seg48BlindDeltaX21 rho) (seg48BlindDeltaY21 rho) (rho 39262) (rho 39263) (rho 39264) (rho 39265) (rho 39266) hacc
  · unfold seg48BlindDeltaX21 seg48BlindDeltaY21
    linear_combination r6506
  · unfold seg48BlindDeltaX21 seg48BlindDeltaY21
    linear_combination r6507
  · unfold seg48BlindDeltaX21 seg48BlindDeltaY21
    linear_combination r6508
  · unfold seg48BlindDeltaX21
    linear_combination r6509
  · unfold seg48BlindDeltaY21
    linear_combination r6510
  · linear_combination r6171

theorem seg48Blind_rows23 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6172 rho ∧ Seg48.relationRow6511 rho ∧ Seg48.relationRow6512 rho ∧ Seg48.relationRow6513 rho ∧ Seg48.relationRow6514 rho ∧ Seg48.relationRow6515 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r6172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6511, r6512, r6513, r6514, r6515, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6172, r6511, r6512, r6513, r6514, r6515⟩

theorem seg48Blind_rung23 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38929 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 23)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      23 (Bool.toZMod bit) (seg48BlindAccState rho 23)
      (seg48BlindAccState rho 24) := by
  obtain ⟨r6172, r6511, r6512, r6513, r6514, r6515⟩ := seg48Blind_rows23 rho h
  unfold Seg48.relationRow6172 at r6172

  unfold Seg48.relationRow6511 at r6511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6511

  unfold Seg48.relationRow6512 at r6512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6512

  unfold Seg48.relationRow6513 at r6513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6513

  unfold Seg48.relationRow6514 at r6514

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6514

  unfold Seg48.relationRow6515 at r6515

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6515

  have hnextx : seg48BlindDeltaX23 rho =
      seg48BlindDeltaX22 rho + rho 39270 := by
    unfold seg48BlindDeltaX23 seg48BlindDeltaX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 22]

    ring

  have hnexty : seg48BlindDeltaY23 rho =
      seg48BlindDeltaY22 rho + rho 39271 := by
    unfold seg48BlindDeltaY23 seg48BlindDeltaY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 22]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 23
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX22 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY22 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX23 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY23 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung23_wide (rho 38906) (rho 38929) (seg48BlindDeltaX22 rho) (seg48BlindDeltaY22 rho) (rho 39267) (rho 39268) (rho 39269) (rho 39270) (rho 39271) hacc
  · unfold seg48BlindDeltaX22 seg48BlindDeltaY22
    linear_combination r6511
  · unfold seg48BlindDeltaX22 seg48BlindDeltaY22
    linear_combination r6512
  · unfold seg48BlindDeltaX22 seg48BlindDeltaY22
    linear_combination r6513
  · unfold seg48BlindDeltaX22
    linear_combination r6514
  · unfold seg48BlindDeltaY22
    linear_combination r6515
  · linear_combination r6172

theorem seg48Blind_rows24 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6173 rho ∧ Seg48.relationRow6516 rho ∧ Seg48.relationRow6517 rho ∧ Seg48.relationRow6518 rho ∧ Seg48.relationRow6519 rho ∧ Seg48.relationRow6520 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6516, r6517, r6518, r6519, r6520, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6173, r6516, r6517, r6518, r6519, r6520⟩

theorem seg48Blind_rung24 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38930 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 24)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      24 (Bool.toZMod bit) (seg48BlindAccState rho 24)
      (seg48BlindAccState rho 25) := by
  obtain ⟨r6173, r6516, r6517, r6518, r6519, r6520⟩ := seg48Blind_rows24 rho h
  unfold Seg48.relationRow6173 at r6173

  unfold Seg48.relationRow6516 at r6516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6516

  unfold Seg48.relationRow6517 at r6517

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6517

  unfold Seg48.relationRow6518 at r6518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6518

  unfold Seg48.relationRow6519 at r6519

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6519

  unfold Seg48.relationRow6520 at r6520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6520

  have hnextx : seg48BlindDeltaX24 rho =
      seg48BlindDeltaX23 rho + rho 39275 := by
    unfold seg48BlindDeltaX24 seg48BlindDeltaX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 23]

    ring

  have hnexty : seg48BlindDeltaY24 rho =
      seg48BlindDeltaY23 rho + rho 39276 := by
    unfold seg48BlindDeltaY24 seg48BlindDeltaY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 23]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 24
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX23 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY23 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX24 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY24 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung24_wide (rho 38906) (rho 38930) (seg48BlindDeltaX23 rho) (seg48BlindDeltaY23 rho) (rho 39272) (rho 39273) (rho 39274) (rho 39275) (rho 39276) hacc
  · unfold seg48BlindDeltaX23 seg48BlindDeltaY23
    linear_combination r6516
  · unfold seg48BlindDeltaX23 seg48BlindDeltaY23
    linear_combination r6517
  · unfold seg48BlindDeltaX23 seg48BlindDeltaY23
    linear_combination r6518
  · unfold seg48BlindDeltaX23
    linear_combination r6519
  · unfold seg48BlindDeltaY23
    linear_combination r6520
  · linear_combination r6173

theorem seg48Blind_rows25 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6174 rho ∧ Seg48.relationRow6521 rho ∧ Seg48.relationRow6522 rho ∧ Seg48.relationRow6523 rho ∧ Seg48.relationRow6524 rho ∧ Seg48.relationRow6525 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6174, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6521, r6522, r6523, r6524, r6525, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6174, r6521, r6522, r6523, r6524, r6525⟩

theorem seg48Blind_rung25 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38931 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 25)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      25 (Bool.toZMod bit) (seg48BlindAccState rho 25)
      (seg48BlindAccState rho 26) := by
  obtain ⟨r6174, r6521, r6522, r6523, r6524, r6525⟩ := seg48Blind_rows25 rho h
  unfold Seg48.relationRow6174 at r6174

  unfold Seg48.relationRow6521 at r6521

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6521

  unfold Seg48.relationRow6522 at r6522

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6522

  unfold Seg48.relationRow6523 at r6523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6523

  unfold Seg48.relationRow6524 at r6524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6524

  unfold Seg48.relationRow6525 at r6525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6525

  have hnextx : seg48BlindDeltaX25 rho =
      seg48BlindDeltaX24 rho + rho 39280 := by
    unfold seg48BlindDeltaX25 seg48BlindDeltaX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 24]

    ring

  have hnexty : seg48BlindDeltaY25 rho =
      seg48BlindDeltaY24 rho + rho 39281 := by
    unfold seg48BlindDeltaY25 seg48BlindDeltaY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 24]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 25
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX24 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY24 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX25 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY25 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung25_wide (rho 38906) (rho 38931) (seg48BlindDeltaX24 rho) (seg48BlindDeltaY24 rho) (rho 39277) (rho 39278) (rho 39279) (rho 39280) (rho 39281) hacc
  · unfold seg48BlindDeltaX24 seg48BlindDeltaY24
    linear_combination r6521
  · unfold seg48BlindDeltaX24 seg48BlindDeltaY24
    linear_combination r6522
  · unfold seg48BlindDeltaX24 seg48BlindDeltaY24
    linear_combination r6523
  · unfold seg48BlindDeltaX24
    linear_combination r6524
  · unfold seg48BlindDeltaY24
    linear_combination r6525
  · linear_combination r6174

theorem seg48Blind_rows26 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6175 rho ∧ Seg48.relationRow6526 rho ∧ Seg48.relationRow6527 rho ∧ Seg48.relationRow6528 rho ∧ Seg48.relationRow6529 rho ∧ Seg48.relationRow6530 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6175, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6526, r6527, r6528, r6529, r6530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6175, r6526, r6527, r6528, r6529, r6530⟩

theorem seg48Blind_rung26 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38932 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 26)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      26 (Bool.toZMod bit) (seg48BlindAccState rho 26)
      (seg48BlindAccState rho 27) := by
  obtain ⟨r6175, r6526, r6527, r6528, r6529, r6530⟩ := seg48Blind_rows26 rho h
  unfold Seg48.relationRow6175 at r6175

  unfold Seg48.relationRow6526 at r6526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6526

  unfold Seg48.relationRow6527 at r6527

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6527

  unfold Seg48.relationRow6528 at r6528

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6528

  unfold Seg48.relationRow6529 at r6529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6529

  unfold Seg48.relationRow6530 at r6530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6530

  have hnextx : seg48BlindDeltaX26 rho =
      seg48BlindDeltaX25 rho + rho 39285 := by
    unfold seg48BlindDeltaX26 seg48BlindDeltaX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 25]

    ring

  have hnexty : seg48BlindDeltaY26 rho =
      seg48BlindDeltaY25 rho + rho 39286 := by
    unfold seg48BlindDeltaY26 seg48BlindDeltaY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 25]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 26
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX25 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY25 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX26 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY26 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung26_wide (rho 38906) (rho 38932) (seg48BlindDeltaX25 rho) (seg48BlindDeltaY25 rho) (rho 39282) (rho 39283) (rho 39284) (rho 39285) (rho 39286) hacc
  · unfold seg48BlindDeltaX25 seg48BlindDeltaY25
    linear_combination r6526
  · unfold seg48BlindDeltaX25 seg48BlindDeltaY25
    linear_combination r6527
  · unfold seg48BlindDeltaX25 seg48BlindDeltaY25
    linear_combination r6528
  · unfold seg48BlindDeltaX25
    linear_combination r6529
  · unfold seg48BlindDeltaY25
    linear_combination r6530
  · linear_combination r6175

theorem seg48Blind_rows27 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6176 rho ∧ Seg48.relationRow6531 rho ∧ Seg48.relationRow6532 rho ∧ Seg48.relationRow6533 rho ∧ Seg48.relationRow6534 rho ∧ Seg48.relationRow6535 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6176, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6531, r6532, r6533, r6534, r6535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6176, r6531, r6532, r6533, r6534, r6535⟩

theorem seg48Blind_rung27 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38933 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 27)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      27 (Bool.toZMod bit) (seg48BlindAccState rho 27)
      (seg48BlindAccState rho 28) := by
  obtain ⟨r6176, r6531, r6532, r6533, r6534, r6535⟩ := seg48Blind_rows27 rho h
  unfold Seg48.relationRow6176 at r6176

  unfold Seg48.relationRow6531 at r6531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6531

  unfold Seg48.relationRow6532 at r6532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6532

  unfold Seg48.relationRow6533 at r6533

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6533

  unfold Seg48.relationRow6534 at r6534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6534

  unfold Seg48.relationRow6535 at r6535

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6535

  have hnextx : seg48BlindDeltaX27 rho =
      seg48BlindDeltaX26 rho + rho 39290 := by
    unfold seg48BlindDeltaX27 seg48BlindDeltaX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 26]

    ring

  have hnexty : seg48BlindDeltaY27 rho =
      seg48BlindDeltaY26 rho + rho 39291 := by
    unfold seg48BlindDeltaY27 seg48BlindDeltaY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 26]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 27
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX26 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY26 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX27 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY27 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung27_wide (rho 38906) (rho 38933) (seg48BlindDeltaX26 rho) (seg48BlindDeltaY26 rho) (rho 39287) (rho 39288) (rho 39289) (rho 39290) (rho 39291) hacc
  · unfold seg48BlindDeltaX26 seg48BlindDeltaY26
    linear_combination r6531
  · unfold seg48BlindDeltaX26 seg48BlindDeltaY26
    linear_combination r6532
  · unfold seg48BlindDeltaX26 seg48BlindDeltaY26
    linear_combination r6533
  · unfold seg48BlindDeltaX26
    linear_combination r6534
  · unfold seg48BlindDeltaY26
    linear_combination r6535
  · linear_combination r6176

theorem seg48Blind_rows28 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6177 rho ∧ Seg48.relationRow6536 rho ∧ Seg48.relationRow6537 rho ∧ Seg48.relationRow6538 rho ∧ Seg48.relationRow6539 rho ∧ Seg48.relationRow6540 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6536, r6537, r6538, r6539, r6540, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6177, r6536, r6537, r6538, r6539, r6540⟩

theorem seg48Blind_rung28 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38934 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 28)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      28 (Bool.toZMod bit) (seg48BlindAccState rho 28)
      (seg48BlindAccState rho 29) := by
  obtain ⟨r6177, r6536, r6537, r6538, r6539, r6540⟩ := seg48Blind_rows28 rho h
  unfold Seg48.relationRow6177 at r6177

  unfold Seg48.relationRow6536 at r6536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6536

  unfold Seg48.relationRow6537 at r6537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6537

  unfold Seg48.relationRow6538 at r6538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6538

  unfold Seg48.relationRow6539 at r6539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6539

  unfold Seg48.relationRow6540 at r6540

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6540

  have hnextx : seg48BlindDeltaX28 rho =
      seg48BlindDeltaX27 rho + rho 39295 := by
    unfold seg48BlindDeltaX28 seg48BlindDeltaX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 27]

    ring

  have hnexty : seg48BlindDeltaY28 rho =
      seg48BlindDeltaY27 rho + rho 39296 := by
    unfold seg48BlindDeltaY28 seg48BlindDeltaY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 27]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 28
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX27 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY27 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX28 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY28 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung28_wide (rho 38906) (rho 38934) (seg48BlindDeltaX27 rho) (seg48BlindDeltaY27 rho) (rho 39292) (rho 39293) (rho 39294) (rho 39295) (rho 39296) hacc
  · unfold seg48BlindDeltaX27 seg48BlindDeltaY27
    linear_combination r6536
  · unfold seg48BlindDeltaX27 seg48BlindDeltaY27
    linear_combination r6537
  · unfold seg48BlindDeltaX27 seg48BlindDeltaY27
    linear_combination r6538
  · unfold seg48BlindDeltaX27
    linear_combination r6539
  · unfold seg48BlindDeltaY27
    linear_combination r6540
  · linear_combination r6177

theorem seg48Blind_rows29 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6178 rho ∧ Seg48.relationRow6541 rho ∧ Seg48.relationRow6542 rho ∧ Seg48.relationRow6543 rho ∧ Seg48.relationRow6544 rho ∧ Seg48.relationRow6545 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6178, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6541, r6542, r6543, r6544, r6545, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6178, r6541, r6542, r6543, r6544, r6545⟩

theorem seg48Blind_rung29 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38935 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 29)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      29 (Bool.toZMod bit) (seg48BlindAccState rho 29)
      (seg48BlindAccState rho 30) := by
  obtain ⟨r6178, r6541, r6542, r6543, r6544, r6545⟩ := seg48Blind_rows29 rho h
  unfold Seg48.relationRow6178 at r6178

  unfold Seg48.relationRow6541 at r6541

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6541

  unfold Seg48.relationRow6542 at r6542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6542

  unfold Seg48.relationRow6543 at r6543

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6543

  unfold Seg48.relationRow6544 at r6544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6544

  unfold Seg48.relationRow6545 at r6545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6545

  have hnextx : seg48BlindDeltaX29 rho =
      seg48BlindDeltaX28 rho + rho 39300 := by
    unfold seg48BlindDeltaX29 seg48BlindDeltaX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 28]

    ring

  have hnexty : seg48BlindDeltaY29 rho =
      seg48BlindDeltaY28 rho + rho 39301 := by
    unfold seg48BlindDeltaY29 seg48BlindDeltaY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 28]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 29
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX28 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY28 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX29 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY29 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung29_wide (rho 38906) (rho 38935) (seg48BlindDeltaX28 rho) (seg48BlindDeltaY28 rho) (rho 39297) (rho 39298) (rho 39299) (rho 39300) (rho 39301) hacc
  · unfold seg48BlindDeltaX28 seg48BlindDeltaY28
    linear_combination r6541
  · unfold seg48BlindDeltaX28 seg48BlindDeltaY28
    linear_combination r6542
  · unfold seg48BlindDeltaX28 seg48BlindDeltaY28
    linear_combination r6543
  · unfold seg48BlindDeltaX28
    linear_combination r6544
  · unfold seg48BlindDeltaY28
    linear_combination r6545
  · linear_combination r6178

theorem seg48Blind_rows30 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6179 rho ∧ Seg48.relationRow6546 rho ∧ Seg48.relationRow6547 rho ∧ Seg48.relationRow6548 rho ∧ Seg48.relationRow6549 rho ∧ Seg48.relationRow6550 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6179, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6546, r6547, r6548, r6549, r6550, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6179, r6546, r6547, r6548, r6549, r6550⟩

theorem seg48Blind_rung30 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38936 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 30)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      30 (Bool.toZMod bit) (seg48BlindAccState rho 30)
      (seg48BlindAccState rho 31) := by
  obtain ⟨r6179, r6546, r6547, r6548, r6549, r6550⟩ := seg48Blind_rows30 rho h
  unfold Seg48.relationRow6179 at r6179

  unfold Seg48.relationRow6546 at r6546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6546

  unfold Seg48.relationRow6547 at r6547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6547

  unfold Seg48.relationRow6548 at r6548

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6548

  unfold Seg48.relationRow6549 at r6549

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6549

  unfold Seg48.relationRow6550 at r6550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6550

  have hnextx : seg48BlindDeltaX30 rho =
      seg48BlindDeltaX29 rho + rho 39305 := by
    unfold seg48BlindDeltaX30 seg48BlindDeltaX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 29]

    ring

  have hnexty : seg48BlindDeltaY30 rho =
      seg48BlindDeltaY29 rho + rho 39306 := by
    unfold seg48BlindDeltaY30 seg48BlindDeltaY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 29]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 30
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX29 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY29 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX30 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY30 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung30_wide (rho 38906) (rho 38936) (seg48BlindDeltaX29 rho) (seg48BlindDeltaY29 rho) (rho 39302) (rho 39303) (rho 39304) (rho 39305) (rho 39306) hacc
  · unfold seg48BlindDeltaX29 seg48BlindDeltaY29
    linear_combination r6546
  · unfold seg48BlindDeltaX29 seg48BlindDeltaY29
    linear_combination r6547
  · unfold seg48BlindDeltaX29 seg48BlindDeltaY29
    linear_combination r6548
  · unfold seg48BlindDeltaX29
    linear_combination r6549
  · unfold seg48BlindDeltaY29
    linear_combination r6550
  · linear_combination r6179

theorem seg48Blind_hstep_c2 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 21 ≤ i → i < 31 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc
  · exact seg48Blind_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc
  · exact seg48Blind_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc
  · exact seg48Blind_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc
  · exact seg48Blind_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc
  · exact seg48Blind_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc
  · exact seg48Blind_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc
  · exact seg48Blind_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc
  · exact seg48Blind_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc
  · exact seg48Blind_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6170 rho ∧ Seg52.relationRow6501 rho ∧ Seg52.relationRow6502 rho ∧ Seg52.relationRow6503 rho ∧ Seg52.relationRow6504 rho ∧ Seg52.relationRow6505 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, r6170, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6501, r6502, r6503, r6504, r6505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6170, r6501, r6502, r6503, r6504, r6505⟩

theorem seg52Blind_rung21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50559 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 21)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      21 (Bool.toZMod bit) (seg52BlindAccState rho 21)
      (seg52BlindAccState rho 22) := by
  obtain ⟨r6170, r6501, r6502, r6503, r6504, r6505⟩ := seg52Blind_rows21 rho h
  unfold Seg52.relationRow6170 at r6170

  unfold Seg52.relationRow6501 at r6501

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6501

  unfold Seg52.relationRow6502 at r6502

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6502

  unfold Seg52.relationRow6503 at r6503

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6503

  unfold Seg52.relationRow6504 at r6504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6504

  unfold Seg52.relationRow6505 at r6505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6505

  have hnextx : seg52BlindDeltaX21 rho =
      seg52BlindDeltaX20 rho + rho 50892 := by
    unfold seg52BlindDeltaX21 seg52BlindDeltaX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 20]

    ring

  have hnexty : seg52BlindDeltaY21 rho =
      seg52BlindDeltaY20 rho + rho 50893 := by
    unfold seg52BlindDeltaY21 seg52BlindDeltaY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 20]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 21
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX20 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY20 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX21 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY21 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung21_wide (rho 50538) (rho 50559) (seg52BlindDeltaX20 rho) (seg52BlindDeltaY20 rho) (rho 50889) (rho 50890) (rho 50891) (rho 50892) (rho 50893) hacc
  · unfold seg52BlindDeltaX20 seg52BlindDeltaY20
    linear_combination r6501
  · unfold seg52BlindDeltaX20 seg52BlindDeltaY20
    linear_combination r6502
  · unfold seg52BlindDeltaX20 seg52BlindDeltaY20
    linear_combination r6503
  · unfold seg52BlindDeltaX20
    linear_combination r6504
  · unfold seg52BlindDeltaY20
    linear_combination r6505
  · linear_combination r6170

theorem seg52Blind_rows22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6171 rho ∧ Seg52.relationRow6506 rho ∧ Seg52.relationRow6507 rho ∧ Seg52.relationRow6508 rho ∧ Seg52.relationRow6509 rho ∧ Seg52.relationRow6510 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6171, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6506, r6507, r6508, r6509, r6510, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6171, r6506, r6507, r6508, r6509, r6510⟩

theorem seg52Blind_rung22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50560 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 22)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      22 (Bool.toZMod bit) (seg52BlindAccState rho 22)
      (seg52BlindAccState rho 23) := by
  obtain ⟨r6171, r6506, r6507, r6508, r6509, r6510⟩ := seg52Blind_rows22 rho h
  unfold Seg52.relationRow6171 at r6171

  unfold Seg52.relationRow6506 at r6506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6506

  unfold Seg52.relationRow6507 at r6507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6507

  unfold Seg52.relationRow6508 at r6508

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6508

  unfold Seg52.relationRow6509 at r6509

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6509

  unfold Seg52.relationRow6510 at r6510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6510

  have hnextx : seg52BlindDeltaX22 rho =
      seg52BlindDeltaX21 rho + rho 50897 := by
    unfold seg52BlindDeltaX22 seg52BlindDeltaX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 21]

    ring

  have hnexty : seg52BlindDeltaY22 rho =
      seg52BlindDeltaY21 rho + rho 50898 := by
    unfold seg52BlindDeltaY22 seg52BlindDeltaY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 21]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 22
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX21 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY21 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX22 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY22 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung22_wide (rho 50538) (rho 50560) (seg52BlindDeltaX21 rho) (seg52BlindDeltaY21 rho) (rho 50894) (rho 50895) (rho 50896) (rho 50897) (rho 50898) hacc
  · unfold seg52BlindDeltaX21 seg52BlindDeltaY21
    linear_combination r6506
  · unfold seg52BlindDeltaX21 seg52BlindDeltaY21
    linear_combination r6507
  · unfold seg52BlindDeltaX21 seg52BlindDeltaY21
    linear_combination r6508
  · unfold seg52BlindDeltaX21
    linear_combination r6509
  · unfold seg52BlindDeltaY21
    linear_combination r6510
  · linear_combination r6171

theorem seg52Blind_rows23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6172 rho ∧ Seg52.relationRow6511 rho ∧ Seg52.relationRow6512 rho ∧ Seg52.relationRow6513 rho ∧ Seg52.relationRow6514 rho ∧ Seg52.relationRow6515 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r6172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6511, r6512, r6513, r6514, r6515, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6172, r6511, r6512, r6513, r6514, r6515⟩

theorem seg52Blind_rung23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50561 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 23)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      23 (Bool.toZMod bit) (seg52BlindAccState rho 23)
      (seg52BlindAccState rho 24) := by
  obtain ⟨r6172, r6511, r6512, r6513, r6514, r6515⟩ := seg52Blind_rows23 rho h
  unfold Seg52.relationRow6172 at r6172

  unfold Seg52.relationRow6511 at r6511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6511

  unfold Seg52.relationRow6512 at r6512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6512

  unfold Seg52.relationRow6513 at r6513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6513

  unfold Seg52.relationRow6514 at r6514

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6514

  unfold Seg52.relationRow6515 at r6515

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6515

  have hnextx : seg52BlindDeltaX23 rho =
      seg52BlindDeltaX22 rho + rho 50902 := by
    unfold seg52BlindDeltaX23 seg52BlindDeltaX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 22]

    ring

  have hnexty : seg52BlindDeltaY23 rho =
      seg52BlindDeltaY22 rho + rho 50903 := by
    unfold seg52BlindDeltaY23 seg52BlindDeltaY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 22]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 23
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX22 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY22 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX23 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY23 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung23_wide (rho 50538) (rho 50561) (seg52BlindDeltaX22 rho) (seg52BlindDeltaY22 rho) (rho 50899) (rho 50900) (rho 50901) (rho 50902) (rho 50903) hacc
  · unfold seg52BlindDeltaX22 seg52BlindDeltaY22
    linear_combination r6511
  · unfold seg52BlindDeltaX22 seg52BlindDeltaY22
    linear_combination r6512
  · unfold seg52BlindDeltaX22 seg52BlindDeltaY22
    linear_combination r6513
  · unfold seg52BlindDeltaX22
    linear_combination r6514
  · unfold seg52BlindDeltaY22
    linear_combination r6515
  · linear_combination r6172

theorem seg52Blind_rows24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6173 rho ∧ Seg52.relationRow6516 rho ∧ Seg52.relationRow6517 rho ∧ Seg52.relationRow6518 rho ∧ Seg52.relationRow6519 rho ∧ Seg52.relationRow6520 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6516, r6517, r6518, r6519, r6520, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6173, r6516, r6517, r6518, r6519, r6520⟩

theorem seg52Blind_rung24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50562 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 24)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      24 (Bool.toZMod bit) (seg52BlindAccState rho 24)
      (seg52BlindAccState rho 25) := by
  obtain ⟨r6173, r6516, r6517, r6518, r6519, r6520⟩ := seg52Blind_rows24 rho h
  unfold Seg52.relationRow6173 at r6173

  unfold Seg52.relationRow6516 at r6516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6516

  unfold Seg52.relationRow6517 at r6517

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6517

  unfold Seg52.relationRow6518 at r6518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6518

  unfold Seg52.relationRow6519 at r6519

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6519

  unfold Seg52.relationRow6520 at r6520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6520

  have hnextx : seg52BlindDeltaX24 rho =
      seg52BlindDeltaX23 rho + rho 50907 := by
    unfold seg52BlindDeltaX24 seg52BlindDeltaX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 23]

    ring

  have hnexty : seg52BlindDeltaY24 rho =
      seg52BlindDeltaY23 rho + rho 50908 := by
    unfold seg52BlindDeltaY24 seg52BlindDeltaY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 23]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 24
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX23 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY23 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX24 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY24 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung24_wide (rho 50538) (rho 50562) (seg52BlindDeltaX23 rho) (seg52BlindDeltaY23 rho) (rho 50904) (rho 50905) (rho 50906) (rho 50907) (rho 50908) hacc
  · unfold seg52BlindDeltaX23 seg52BlindDeltaY23
    linear_combination r6516
  · unfold seg52BlindDeltaX23 seg52BlindDeltaY23
    linear_combination r6517
  · unfold seg52BlindDeltaX23 seg52BlindDeltaY23
    linear_combination r6518
  · unfold seg52BlindDeltaX23
    linear_combination r6519
  · unfold seg52BlindDeltaY23
    linear_combination r6520
  · linear_combination r6173

theorem seg52Blind_rows25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6174 rho ∧ Seg52.relationRow6521 rho ∧ Seg52.relationRow6522 rho ∧ Seg52.relationRow6523 rho ∧ Seg52.relationRow6524 rho ∧ Seg52.relationRow6525 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6174, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6521, r6522, r6523, r6524, r6525, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6174, r6521, r6522, r6523, r6524, r6525⟩

theorem seg52Blind_rung25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50563 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 25)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      25 (Bool.toZMod bit) (seg52BlindAccState rho 25)
      (seg52BlindAccState rho 26) := by
  obtain ⟨r6174, r6521, r6522, r6523, r6524, r6525⟩ := seg52Blind_rows25 rho h
  unfold Seg52.relationRow6174 at r6174

  unfold Seg52.relationRow6521 at r6521

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6521

  unfold Seg52.relationRow6522 at r6522

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6522

  unfold Seg52.relationRow6523 at r6523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6523

  unfold Seg52.relationRow6524 at r6524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6524

  unfold Seg52.relationRow6525 at r6525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6525

  have hnextx : seg52BlindDeltaX25 rho =
      seg52BlindDeltaX24 rho + rho 50912 := by
    unfold seg52BlindDeltaX25 seg52BlindDeltaX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 24]

    ring

  have hnexty : seg52BlindDeltaY25 rho =
      seg52BlindDeltaY24 rho + rho 50913 := by
    unfold seg52BlindDeltaY25 seg52BlindDeltaY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 24]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 25
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX24 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY24 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX25 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY25 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung25_wide (rho 50538) (rho 50563) (seg52BlindDeltaX24 rho) (seg52BlindDeltaY24 rho) (rho 50909) (rho 50910) (rho 50911) (rho 50912) (rho 50913) hacc
  · unfold seg52BlindDeltaX24 seg52BlindDeltaY24
    linear_combination r6521
  · unfold seg52BlindDeltaX24 seg52BlindDeltaY24
    linear_combination r6522
  · unfold seg52BlindDeltaX24 seg52BlindDeltaY24
    linear_combination r6523
  · unfold seg52BlindDeltaX24
    linear_combination r6524
  · unfold seg52BlindDeltaY24
    linear_combination r6525
  · linear_combination r6174

theorem seg52Blind_rows26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6175 rho ∧ Seg52.relationRow6526 rho ∧ Seg52.relationRow6527 rho ∧ Seg52.relationRow6528 rho ∧ Seg52.relationRow6529 rho ∧ Seg52.relationRow6530 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6175, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6526, r6527, r6528, r6529, r6530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6175, r6526, r6527, r6528, r6529, r6530⟩

theorem seg52Blind_rung26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50564 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 26)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      26 (Bool.toZMod bit) (seg52BlindAccState rho 26)
      (seg52BlindAccState rho 27) := by
  obtain ⟨r6175, r6526, r6527, r6528, r6529, r6530⟩ := seg52Blind_rows26 rho h
  unfold Seg52.relationRow6175 at r6175

  unfold Seg52.relationRow6526 at r6526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6526

  unfold Seg52.relationRow6527 at r6527

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6527

  unfold Seg52.relationRow6528 at r6528

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6528

  unfold Seg52.relationRow6529 at r6529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6529

  unfold Seg52.relationRow6530 at r6530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6530

  have hnextx : seg52BlindDeltaX26 rho =
      seg52BlindDeltaX25 rho + rho 50917 := by
    unfold seg52BlindDeltaX26 seg52BlindDeltaX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 25]

    ring

  have hnexty : seg52BlindDeltaY26 rho =
      seg52BlindDeltaY25 rho + rho 50918 := by
    unfold seg52BlindDeltaY26 seg52BlindDeltaY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 25]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 26
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX25 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY25 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX26 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY26 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung26_wide (rho 50538) (rho 50564) (seg52BlindDeltaX25 rho) (seg52BlindDeltaY25 rho) (rho 50914) (rho 50915) (rho 50916) (rho 50917) (rho 50918) hacc
  · unfold seg52BlindDeltaX25 seg52BlindDeltaY25
    linear_combination r6526
  · unfold seg52BlindDeltaX25 seg52BlindDeltaY25
    linear_combination r6527
  · unfold seg52BlindDeltaX25 seg52BlindDeltaY25
    linear_combination r6528
  · unfold seg52BlindDeltaX25
    linear_combination r6529
  · unfold seg52BlindDeltaY25
    linear_combination r6530
  · linear_combination r6175

theorem seg52Blind_rows27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6176 rho ∧ Seg52.relationRow6531 rho ∧ Seg52.relationRow6532 rho ∧ Seg52.relationRow6533 rho ∧ Seg52.relationRow6534 rho ∧ Seg52.relationRow6535 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6176, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6531, r6532, r6533, r6534, r6535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6176, r6531, r6532, r6533, r6534, r6535⟩

theorem seg52Blind_rung27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50565 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 27)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      27 (Bool.toZMod bit) (seg52BlindAccState rho 27)
      (seg52BlindAccState rho 28) := by
  obtain ⟨r6176, r6531, r6532, r6533, r6534, r6535⟩ := seg52Blind_rows27 rho h
  unfold Seg52.relationRow6176 at r6176

  unfold Seg52.relationRow6531 at r6531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6531

  unfold Seg52.relationRow6532 at r6532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6532

  unfold Seg52.relationRow6533 at r6533

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6533

  unfold Seg52.relationRow6534 at r6534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6534

  unfold Seg52.relationRow6535 at r6535

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6535

  have hnextx : seg52BlindDeltaX27 rho =
      seg52BlindDeltaX26 rho + rho 50922 := by
    unfold seg52BlindDeltaX27 seg52BlindDeltaX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 26]

    ring

  have hnexty : seg52BlindDeltaY27 rho =
      seg52BlindDeltaY26 rho + rho 50923 := by
    unfold seg52BlindDeltaY27 seg52BlindDeltaY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 26]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 27
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX26 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY26 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX27 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY27 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung27_wide (rho 50538) (rho 50565) (seg52BlindDeltaX26 rho) (seg52BlindDeltaY26 rho) (rho 50919) (rho 50920) (rho 50921) (rho 50922) (rho 50923) hacc
  · unfold seg52BlindDeltaX26 seg52BlindDeltaY26
    linear_combination r6531
  · unfold seg52BlindDeltaX26 seg52BlindDeltaY26
    linear_combination r6532
  · unfold seg52BlindDeltaX26 seg52BlindDeltaY26
    linear_combination r6533
  · unfold seg52BlindDeltaX26
    linear_combination r6534
  · unfold seg52BlindDeltaY26
    linear_combination r6535
  · linear_combination r6176

theorem seg52Blind_rows28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6177 rho ∧ Seg52.relationRow6536 rho ∧ Seg52.relationRow6537 rho ∧ Seg52.relationRow6538 rho ∧ Seg52.relationRow6539 rho ∧ Seg52.relationRow6540 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6536, r6537, r6538, r6539, r6540, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6177, r6536, r6537, r6538, r6539, r6540⟩

theorem seg52Blind_rung28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50566 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 28)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      28 (Bool.toZMod bit) (seg52BlindAccState rho 28)
      (seg52BlindAccState rho 29) := by
  obtain ⟨r6177, r6536, r6537, r6538, r6539, r6540⟩ := seg52Blind_rows28 rho h
  unfold Seg52.relationRow6177 at r6177

  unfold Seg52.relationRow6536 at r6536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6536

  unfold Seg52.relationRow6537 at r6537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6537

  unfold Seg52.relationRow6538 at r6538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6538

  unfold Seg52.relationRow6539 at r6539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6539

  unfold Seg52.relationRow6540 at r6540

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6540

  have hnextx : seg52BlindDeltaX28 rho =
      seg52BlindDeltaX27 rho + rho 50927 := by
    unfold seg52BlindDeltaX28 seg52BlindDeltaX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 27]

    ring

  have hnexty : seg52BlindDeltaY28 rho =
      seg52BlindDeltaY27 rho + rho 50928 := by
    unfold seg52BlindDeltaY28 seg52BlindDeltaY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 27]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 28
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX27 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY27 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX28 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY28 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung28_wide (rho 50538) (rho 50566) (seg52BlindDeltaX27 rho) (seg52BlindDeltaY27 rho) (rho 50924) (rho 50925) (rho 50926) (rho 50927) (rho 50928) hacc
  · unfold seg52BlindDeltaX27 seg52BlindDeltaY27
    linear_combination r6536
  · unfold seg52BlindDeltaX27 seg52BlindDeltaY27
    linear_combination r6537
  · unfold seg52BlindDeltaX27 seg52BlindDeltaY27
    linear_combination r6538
  · unfold seg52BlindDeltaX27
    linear_combination r6539
  · unfold seg52BlindDeltaY27
    linear_combination r6540
  · linear_combination r6177

theorem seg52Blind_rows29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6178 rho ∧ Seg52.relationRow6541 rho ∧ Seg52.relationRow6542 rho ∧ Seg52.relationRow6543 rho ∧ Seg52.relationRow6544 rho ∧ Seg52.relationRow6545 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6178, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6541, r6542, r6543, r6544, r6545, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6178, r6541, r6542, r6543, r6544, r6545⟩

theorem seg52Blind_rung29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50567 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 29)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      29 (Bool.toZMod bit) (seg52BlindAccState rho 29)
      (seg52BlindAccState rho 30) := by
  obtain ⟨r6178, r6541, r6542, r6543, r6544, r6545⟩ := seg52Blind_rows29 rho h
  unfold Seg52.relationRow6178 at r6178

  unfold Seg52.relationRow6541 at r6541

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6541

  unfold Seg52.relationRow6542 at r6542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6542

  unfold Seg52.relationRow6543 at r6543

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6543

  unfold Seg52.relationRow6544 at r6544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6544

  unfold Seg52.relationRow6545 at r6545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6545

  have hnextx : seg52BlindDeltaX29 rho =
      seg52BlindDeltaX28 rho + rho 50932 := by
    unfold seg52BlindDeltaX29 seg52BlindDeltaX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 28]

    ring

  have hnexty : seg52BlindDeltaY29 rho =
      seg52BlindDeltaY28 rho + rho 50933 := by
    unfold seg52BlindDeltaY29 seg52BlindDeltaY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 28]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 29
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX28 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY28 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX29 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY29 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung29_wide (rho 50538) (rho 50567) (seg52BlindDeltaX28 rho) (seg52BlindDeltaY28 rho) (rho 50929) (rho 50930) (rho 50931) (rho 50932) (rho 50933) hacc
  · unfold seg52BlindDeltaX28 seg52BlindDeltaY28
    linear_combination r6541
  · unfold seg52BlindDeltaX28 seg52BlindDeltaY28
    linear_combination r6542
  · unfold seg52BlindDeltaX28 seg52BlindDeltaY28
    linear_combination r6543
  · unfold seg52BlindDeltaX28
    linear_combination r6544
  · unfold seg52BlindDeltaY28
    linear_combination r6545
  · linear_combination r6178

theorem seg52Blind_rows30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6179 rho ∧ Seg52.relationRow6546 rho ∧ Seg52.relationRow6547 rho ∧ Seg52.relationRow6548 rho ∧ Seg52.relationRow6549 rho ∧ Seg52.relationRow6550 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6179, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6546, r6547, r6548, r6549, r6550, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6179, r6546, r6547, r6548, r6549, r6550⟩

theorem seg52Blind_rung30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50568 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 30)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      30 (Bool.toZMod bit) (seg52BlindAccState rho 30)
      (seg52BlindAccState rho 31) := by
  obtain ⟨r6179, r6546, r6547, r6548, r6549, r6550⟩ := seg52Blind_rows30 rho h
  unfold Seg52.relationRow6179 at r6179

  unfold Seg52.relationRow6546 at r6546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6546

  unfold Seg52.relationRow6547 at r6547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6547

  unfold Seg52.relationRow6548 at r6548

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6548

  unfold Seg52.relationRow6549 at r6549

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6549

  unfold Seg52.relationRow6550 at r6550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6550

  have hnextx : seg52BlindDeltaX30 rho =
      seg52BlindDeltaX29 rho + rho 50937 := by
    unfold seg52BlindDeltaX30 seg52BlindDeltaX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 29]

    ring

  have hnexty : seg52BlindDeltaY30 rho =
      seg52BlindDeltaY29 rho + rho 50938 := by
    unfold seg52BlindDeltaY30 seg52BlindDeltaY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 29]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 30
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX29 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY29 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX30 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY30 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung30_wide (rho 50538) (rho 50568) (seg52BlindDeltaX29 rho) (seg52BlindDeltaY29 rho) (rho 50934) (rho 50935) (rho 50936) (rho 50937) (rho 50938) hacc
  · unfold seg52BlindDeltaX29 seg52BlindDeltaY29
    linear_combination r6546
  · unfold seg52BlindDeltaX29 seg52BlindDeltaY29
    linear_combination r6547
  · unfold seg52BlindDeltaX29 seg52BlindDeltaY29
    linear_combination r6548
  · unfold seg52BlindDeltaX29
    linear_combination r6549
  · unfold seg52BlindDeltaY29
    linear_combination r6550
  · linear_combination r6179

theorem seg52Blind_hstep_c2 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 21 ≤ i → i < 31 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc
  · exact seg52Blind_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc
  · exact seg52Blind_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc
  · exact seg52Blind_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc
  · exact seg52Blind_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc
  · exact seg52Blind_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc
  · exact seg52Blind_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc
  · exact seg52Blind_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc
  · exact seg52Blind_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc
  · exact seg52Blind_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

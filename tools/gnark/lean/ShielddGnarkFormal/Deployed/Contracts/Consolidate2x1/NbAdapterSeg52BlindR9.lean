import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6880 rho ∧ Seg52.relationRow7491 rho ∧ Seg52.relationRow7492 rho ∧ Seg52.relationRow7493 rho ∧ Seg52.relationRow7494 rho ∧ Seg52.relationRow7495 rho := by
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

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨r6880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7491, r7492, r7493, r7494, r7495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6880, r7491, r7492, r7493, r7494, r7495⟩

theorem seg52Blind_rung91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51269 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 91)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      91 (Bool.toZMod bit) (seg52BlindAccState rho 91)
      (seg52BlindAccState rho 92) := by
  obtain ⟨r6880, r7491, r7492, r7493, r7494, r7495⟩ := seg52Blind_rows91 rho h
  unfold Seg52.relationRow6880 at r6880

  unfold Seg52.relationRow7491 at r7491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7491

  unfold Seg52.relationRow7492 at r7492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7492

  unfold Seg52.relationRow7493 at r7493

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7493

  unfold Seg52.relationRow7494 at r7494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7494

  unfold Seg52.relationRow7495 at r7495

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7495

  have hnextx : seg52BlindDeltaX91 rho =
      seg52BlindDeltaX90 rho + rho 51882 := by
    unfold seg52BlindDeltaX91 seg52BlindDeltaX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 90]

    ring

  have hnexty : seg52BlindDeltaY91 rho =
      seg52BlindDeltaY90 rho + rho 51883 := by
    unfold seg52BlindDeltaY91 seg52BlindDeltaY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 90]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 91
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX90 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY90 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX91 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY91 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung91_wide (rho 51178) (rho 51269) (seg52BlindDeltaX90 rho) (seg52BlindDeltaY90 rho) (rho 51879) (rho 51880) (rho 51881) (rho 51882) (rho 51883) hacc
  · unfold seg52BlindDeltaX90 seg52BlindDeltaY90
    linear_combination r7491
  · unfold seg52BlindDeltaX90 seg52BlindDeltaY90
    linear_combination r7492
  · unfold seg52BlindDeltaX90 seg52BlindDeltaY90
    linear_combination r7493
  · unfold seg52BlindDeltaX90
    linear_combination r7494
  · unfold seg52BlindDeltaY90
    linear_combination r7495
  · linear_combination r6880

theorem seg52Blind_rows92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6881 rho ∧ Seg52.relationRow7496 rho ∧ Seg52.relationRow7497 rho ∧ Seg52.relationRow7498 rho ∧ Seg52.relationRow7499 rho ∧ Seg52.relationRow7500 rho := by
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

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, r6881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7496, r7497, r7498, r7499, r7500, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6881, r7496, r7497, r7498, r7499, r7500⟩

theorem seg52Blind_rung92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51270 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 92)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      92 (Bool.toZMod bit) (seg52BlindAccState rho 92)
      (seg52BlindAccState rho 93) := by
  obtain ⟨r6881, r7496, r7497, r7498, r7499, r7500⟩ := seg52Blind_rows92 rho h
  unfold Seg52.relationRow6881 at r6881

  unfold Seg52.relationRow7496 at r7496

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7496

  unfold Seg52.relationRow7497 at r7497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7497

  unfold Seg52.relationRow7498 at r7498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7498

  unfold Seg52.relationRow7499 at r7499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7499

  unfold Seg52.relationRow7500 at r7500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7500

  have hnextx : seg52BlindDeltaX92 rho =
      seg52BlindDeltaX91 rho + rho 51887 := by
    unfold seg52BlindDeltaX92 seg52BlindDeltaX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 91]

    ring

  have hnexty : seg52BlindDeltaY92 rho =
      seg52BlindDeltaY91 rho + rho 51888 := by
    unfold seg52BlindDeltaY92 seg52BlindDeltaY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 91]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 92
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX91 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY91 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX92 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY92 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung92_wide (rho 51178) (rho 51270) (seg52BlindDeltaX91 rho) (seg52BlindDeltaY91 rho) (rho 51884) (rho 51885) (rho 51886) (rho 51887) (rho 51888) hacc
  · unfold seg52BlindDeltaX91 seg52BlindDeltaY91
    linear_combination r7496
  · unfold seg52BlindDeltaX91 seg52BlindDeltaY91
    linear_combination r7497
  · unfold seg52BlindDeltaX91 seg52BlindDeltaY91
    linear_combination r7498
  · unfold seg52BlindDeltaX91
    linear_combination r7499
  · unfold seg52BlindDeltaY91
    linear_combination r7500
  · linear_combination r6881

theorem seg52Blind_rows93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6882 rho ∧ Seg52.relationRow7501 rho ∧ Seg52.relationRow7502 rho ∧ Seg52.relationRow7503 rho ∧ Seg52.relationRow7504 rho ∧ Seg52.relationRow7505 rho := by
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

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, r6882, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7501, r7502, r7503, r7504, r7505, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6882, r7501, r7502, r7503, r7504, r7505⟩

theorem seg52Blind_rung93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51271 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 93)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      93 (Bool.toZMod bit) (seg52BlindAccState rho 93)
      (seg52BlindAccState rho 94) := by
  obtain ⟨r6882, r7501, r7502, r7503, r7504, r7505⟩ := seg52Blind_rows93 rho h
  unfold Seg52.relationRow6882 at r6882

  unfold Seg52.relationRow7501 at r7501

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7501

  unfold Seg52.relationRow7502 at r7502

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7502

  unfold Seg52.relationRow7503 at r7503

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7503

  unfold Seg52.relationRow7504 at r7504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7504

  unfold Seg52.relationRow7505 at r7505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7505

  have hnextx : seg52BlindDeltaX93 rho =
      seg52BlindDeltaX92 rho + rho 51892 := by
    unfold seg52BlindDeltaX93 seg52BlindDeltaX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 92]

    ring

  have hnexty : seg52BlindDeltaY93 rho =
      seg52BlindDeltaY92 rho + rho 51893 := by
    unfold seg52BlindDeltaY93 seg52BlindDeltaY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 92]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 93
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX92 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY92 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX93 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY93 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung93_wide (rho 51178) (rho 51271) (seg52BlindDeltaX92 rho) (seg52BlindDeltaY92 rho) (rho 51889) (rho 51890) (rho 51891) (rho 51892) (rho 51893) hacc
  · unfold seg52BlindDeltaX92 seg52BlindDeltaY92
    linear_combination r7501
  · unfold seg52BlindDeltaX92 seg52BlindDeltaY92
    linear_combination r7502
  · unfold seg52BlindDeltaX92 seg52BlindDeltaY92
    linear_combination r7503
  · unfold seg52BlindDeltaX92
    linear_combination r7504
  · unfold seg52BlindDeltaY92
    linear_combination r7505
  · linear_combination r6882

theorem seg52Blind_rows94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6883 rho ∧ Seg52.relationRow7506 rho ∧ Seg52.relationRow7507 rho ∧ Seg52.relationRow7508 rho ∧ Seg52.relationRow7509 rho ∧ Seg52.relationRow7510 rho := by
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

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, r6883, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7506, r7507, r7508, r7509, r7510, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6883, r7506, r7507, r7508, r7509, r7510⟩

theorem seg52Blind_rung94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51272 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 94)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      94 (Bool.toZMod bit) (seg52BlindAccState rho 94)
      (seg52BlindAccState rho 95) := by
  obtain ⟨r6883, r7506, r7507, r7508, r7509, r7510⟩ := seg52Blind_rows94 rho h
  unfold Seg52.relationRow6883 at r6883

  unfold Seg52.relationRow7506 at r7506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7506

  unfold Seg52.relationRow7507 at r7507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7507

  unfold Seg52.relationRow7508 at r7508

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7508

  unfold Seg52.relationRow7509 at r7509

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7509

  unfold Seg52.relationRow7510 at r7510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7510

  have hnextx : seg52BlindDeltaX94 rho =
      seg52BlindDeltaX93 rho + rho 51897 := by
    unfold seg52BlindDeltaX94 seg52BlindDeltaX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 93]

    ring

  have hnexty : seg52BlindDeltaY94 rho =
      seg52BlindDeltaY93 rho + rho 51898 := by
    unfold seg52BlindDeltaY94 seg52BlindDeltaY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 93]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 94
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX93 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY93 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX94 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY94 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung94_wide (rho 51178) (rho 51272) (seg52BlindDeltaX93 rho) (seg52BlindDeltaY93 rho) (rho 51894) (rho 51895) (rho 51896) (rho 51897) (rho 51898) hacc
  · unfold seg52BlindDeltaX93 seg52BlindDeltaY93
    linear_combination r7506
  · unfold seg52BlindDeltaX93 seg52BlindDeltaY93
    linear_combination r7507
  · unfold seg52BlindDeltaX93 seg52BlindDeltaY93
    linear_combination r7508
  · unfold seg52BlindDeltaX93
    linear_combination r7509
  · unfold seg52BlindDeltaY93
    linear_combination r7510
  · linear_combination r6883

theorem seg52Blind_rows95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6884 rho ∧ Seg52.relationRow7511 rho ∧ Seg52.relationRow7512 rho ∧ Seg52.relationRow7513 rho ∧ Seg52.relationRow7514 rho ∧ Seg52.relationRow7515 rho := by
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

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, r6884, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7511, r7512, r7513, r7514, r7515, _, _, _, _⟩

  exact ⟨r6884, r7511, r7512, r7513, r7514, r7515⟩

theorem seg52Blind_rung95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51273 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 95)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      95 (Bool.toZMod bit) (seg52BlindAccState rho 95)
      (seg52BlindAccState rho 96) := by
  obtain ⟨r6884, r7511, r7512, r7513, r7514, r7515⟩ := seg52Blind_rows95 rho h
  unfold Seg52.relationRow6884 at r6884

  unfold Seg52.relationRow7511 at r7511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7511

  unfold Seg52.relationRow7512 at r7512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7512

  unfold Seg52.relationRow7513 at r7513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7513

  unfold Seg52.relationRow7514 at r7514

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7514

  unfold Seg52.relationRow7515 at r7515

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7515

  have hnextx : seg52BlindDeltaX95 rho =
      seg52BlindDeltaX94 rho + rho 51902 := by
    unfold seg52BlindDeltaX95 seg52BlindDeltaX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 94]

    ring

  have hnexty : seg52BlindDeltaY95 rho =
      seg52BlindDeltaY94 rho + rho 51903 := by
    unfold seg52BlindDeltaY95 seg52BlindDeltaY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 94]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 95
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX94 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY94 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX95 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY95 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung95_wide (rho 51178) (rho 51273) (seg52BlindDeltaX94 rho) (seg52BlindDeltaY94 rho) (rho 51899) (rho 51900) (rho 51901) (rho 51902) (rho 51903) hacc
  · unfold seg52BlindDeltaX94 seg52BlindDeltaY94
    linear_combination r7511
  · unfold seg52BlindDeltaX94 seg52BlindDeltaY94
    linear_combination r7512
  · unfold seg52BlindDeltaX94 seg52BlindDeltaY94
    linear_combination r7513
  · unfold seg52BlindDeltaX94
    linear_combination r7514
  · unfold seg52BlindDeltaY94
    linear_combination r7515
  · linear_combination r6884

theorem seg52Blind_rows96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6885 rho ∧ Seg52.relationRow7516 rho ∧ Seg52.relationRow7517 rho ∧ Seg52.relationRow7518 rho ∧ Seg52.relationRow7519 rho ∧ Seg52.relationRow7520 rho := by
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

    _, _, _, p93, p94, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, r6885, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7516, r7517, r7518, r7519⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨r7520, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6885, r7516, r7517, r7518, r7519, r7520⟩

theorem seg52Blind_rung96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51274 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 96)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      96 (Bool.toZMod bit) (seg52BlindAccState rho 96)
      (seg52BlindAccState rho 97) := by
  obtain ⟨r6885, r7516, r7517, r7518, r7519, r7520⟩ := seg52Blind_rows96 rho h
  unfold Seg52.relationRow6885 at r6885

  unfold Seg52.relationRow7516 at r7516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7516

  unfold Seg52.relationRow7517 at r7517

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7517

  unfold Seg52.relationRow7518 at r7518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7518

  unfold Seg52.relationRow7519 at r7519

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7519

  unfold Seg52.relationRow7520 at r7520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7520

  have hnextx : seg52BlindDeltaX96 rho =
      seg52BlindDeltaX95 rho + rho 51907 := by
    unfold seg52BlindDeltaX96 seg52BlindDeltaX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 95]

    ring

  have hnexty : seg52BlindDeltaY96 rho =
      seg52BlindDeltaY95 rho + rho 51908 := by
    unfold seg52BlindDeltaY96 seg52BlindDeltaY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 95]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 96
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX95 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY95 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX96 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY96 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung96_wide (rho 51178) (rho 51274) (seg52BlindDeltaX95 rho) (seg52BlindDeltaY95 rho) (rho 51904) (rho 51905) (rho 51906) (rho 51907) (rho 51908) hacc
  · unfold seg52BlindDeltaX95 seg52BlindDeltaY95
    linear_combination r7516
  · unfold seg52BlindDeltaX95 seg52BlindDeltaY95
    linear_combination r7517
  · unfold seg52BlindDeltaX95 seg52BlindDeltaY95
    linear_combination r7518
  · unfold seg52BlindDeltaX95
    linear_combination r7519
  · unfold seg52BlindDeltaY95
    linear_combination r7520
  · linear_combination r6885

theorem seg52Blind_rows97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6886 rho ∧ Seg52.relationRow7521 rho ∧ Seg52.relationRow7522 rho ∧ Seg52.relationRow7523 rho ∧ Seg52.relationRow7524 rho ∧ Seg52.relationRow7525 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, r6886, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, r7521, r7522, r7523, r7524, r7525, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6886, r7521, r7522, r7523, r7524, r7525⟩

theorem seg52Blind_rung97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51275 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 97)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      97 (Bool.toZMod bit) (seg52BlindAccState rho 97)
      (seg52BlindAccState rho 98) := by
  obtain ⟨r6886, r7521, r7522, r7523, r7524, r7525⟩ := seg52Blind_rows97 rho h
  unfold Seg52.relationRow6886 at r6886

  unfold Seg52.relationRow7521 at r7521

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7521

  unfold Seg52.relationRow7522 at r7522

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7522

  unfold Seg52.relationRow7523 at r7523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7523

  unfold Seg52.relationRow7524 at r7524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7524

  unfold Seg52.relationRow7525 at r7525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7525

  have hnextx : seg52BlindDeltaX97 rho =
      seg52BlindDeltaX96 rho + rho 51912 := by
    unfold seg52BlindDeltaX97 seg52BlindDeltaX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 96]

    ring

  have hnexty : seg52BlindDeltaY97 rho =
      seg52BlindDeltaY96 rho + rho 51913 := by
    unfold seg52BlindDeltaY97 seg52BlindDeltaY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 96]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 97
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX96 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY96 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX97 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY97 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung97_wide (rho 51178) (rho 51275) (seg52BlindDeltaX96 rho) (seg52BlindDeltaY96 rho) (rho 51909) (rho 51910) (rho 51911) (rho 51912) (rho 51913) hacc
  · unfold seg52BlindDeltaX96 seg52BlindDeltaY96
    linear_combination r7521
  · unfold seg52BlindDeltaX96 seg52BlindDeltaY96
    linear_combination r7522
  · unfold seg52BlindDeltaX96 seg52BlindDeltaY96
    linear_combination r7523
  · unfold seg52BlindDeltaX96
    linear_combination r7524
  · unfold seg52BlindDeltaY96
    linear_combination r7525
  · linear_combination r6886

theorem seg52Blind_rows98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6887 rho ∧ Seg52.relationRow7526 rho ∧ Seg52.relationRow7527 rho ∧ Seg52.relationRow7528 rho ∧ Seg52.relationRow7529 rho ∧ Seg52.relationRow7530 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, _, r6887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, r7526, r7527, r7528, r7529, r7530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6887, r7526, r7527, r7528, r7529, r7530⟩

theorem seg52Blind_rung98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51276 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 98)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      98 (Bool.toZMod bit) (seg52BlindAccState rho 98)
      (seg52BlindAccState rho 99) := by
  obtain ⟨r6887, r7526, r7527, r7528, r7529, r7530⟩ := seg52Blind_rows98 rho h
  unfold Seg52.relationRow6887 at r6887

  unfold Seg52.relationRow7526 at r7526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7526

  unfold Seg52.relationRow7527 at r7527

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7527

  unfold Seg52.relationRow7528 at r7528

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7528

  unfold Seg52.relationRow7529 at r7529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7529

  unfold Seg52.relationRow7530 at r7530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7530

  have hnextx : seg52BlindDeltaX98 rho =
      seg52BlindDeltaX97 rho + rho 51917 := by
    unfold seg52BlindDeltaX98 seg52BlindDeltaX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 97]

    ring

  have hnexty : seg52BlindDeltaY98 rho =
      seg52BlindDeltaY97 rho + rho 51918 := by
    unfold seg52BlindDeltaY98 seg52BlindDeltaY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 97]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 98
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX97 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY97 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX98 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY98 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung98_wide (rho 51178) (rho 51276) (seg52BlindDeltaX97 rho) (seg52BlindDeltaY97 rho) (rho 51914) (rho 51915) (rho 51916) (rho 51917) (rho 51918) hacc
  · unfold seg52BlindDeltaX97 seg52BlindDeltaY97
    linear_combination r7526
  · unfold seg52BlindDeltaX97 seg52BlindDeltaY97
    linear_combination r7527
  · unfold seg52BlindDeltaX97 seg52BlindDeltaY97
    linear_combination r7528
  · unfold seg52BlindDeltaX97
    linear_combination r7529
  · unfold seg52BlindDeltaY97
    linear_combination r7530
  · linear_combination r6887

theorem seg52Blind_rows99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6888 rho ∧ Seg52.relationRow7531 rho ∧ Seg52.relationRow7532 rho ∧ Seg52.relationRow7533 rho ∧ Seg52.relationRow7534 rho ∧ Seg52.relationRow7535 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, _, _, r6888, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7531, r7532, r7533, r7534, r7535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6888, r7531, r7532, r7533, r7534, r7535⟩

theorem seg52Blind_rung99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51277 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 99)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      99 (Bool.toZMod bit) (seg52BlindAccState rho 99)
      (seg52BlindAccState rho 100) := by
  obtain ⟨r6888, r7531, r7532, r7533, r7534, r7535⟩ := seg52Blind_rows99 rho h
  unfold Seg52.relationRow6888 at r6888

  unfold Seg52.relationRow7531 at r7531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7531

  unfold Seg52.relationRow7532 at r7532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7532

  unfold Seg52.relationRow7533 at r7533

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7533

  unfold Seg52.relationRow7534 at r7534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7534

  unfold Seg52.relationRow7535 at r7535

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7535

  have hnextx : seg52BlindDeltaX99 rho =
      seg52BlindDeltaX98 rho + rho 51922 := by
    unfold seg52BlindDeltaX99 seg52BlindDeltaX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 98]

    ring

  have hnexty : seg52BlindDeltaY99 rho =
      seg52BlindDeltaY98 rho + rho 51923 := by
    unfold seg52BlindDeltaY99 seg52BlindDeltaY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 98]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 99
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX98 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY98 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX99 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY99 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung99_wide (rho 51178) (rho 51277) (seg52BlindDeltaX98 rho) (seg52BlindDeltaY98 rho) (rho 51919) (rho 51920) (rho 51921) (rho 51922) (rho 51923) hacc
  · unfold seg52BlindDeltaX98 seg52BlindDeltaY98
    linear_combination r7531
  · unfold seg52BlindDeltaX98 seg52BlindDeltaY98
    linear_combination r7532
  · unfold seg52BlindDeltaX98 seg52BlindDeltaY98
    linear_combination r7533
  · unfold seg52BlindDeltaX98
    linear_combination r7534
  · unfold seg52BlindDeltaY98
    linear_combination r7535
  · linear_combination r6888

theorem seg52Blind_rows100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6889 rho ∧ Seg52.relationRow7536 rho ∧ Seg52.relationRow7537 rho ∧ Seg52.relationRow7538 rho ∧ Seg52.relationRow7539 rho ∧ Seg52.relationRow7540 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, r6889, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7536, r7537, r7538, r7539, r7540, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6889, r7536, r7537, r7538, r7539, r7540⟩

theorem seg52Blind_rung100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51278 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 100)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      100 (Bool.toZMod bit) (seg52BlindAccState rho 100)
      (seg52BlindAccState rho 101) := by
  obtain ⟨r6889, r7536, r7537, r7538, r7539, r7540⟩ := seg52Blind_rows100 rho h
  unfold Seg52.relationRow6889 at r6889

  unfold Seg52.relationRow7536 at r7536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7536

  unfold Seg52.relationRow7537 at r7537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7537

  unfold Seg52.relationRow7538 at r7538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7538

  unfold Seg52.relationRow7539 at r7539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7539

  unfold Seg52.relationRow7540 at r7540

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7540

  have hnextx : seg52BlindDeltaX100 rho =
      seg52BlindDeltaX99 rho + rho 51927 := by
    unfold seg52BlindDeltaX100 seg52BlindDeltaX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 99]

    ring

  have hnexty : seg52BlindDeltaY100 rho =
      seg52BlindDeltaY99 rho + rho 51928 := by
    unfold seg52BlindDeltaY100 seg52BlindDeltaY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 99]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 100
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX99 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY99 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX100 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY100 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung100_wide (rho 51178) (rho 51278) (seg52BlindDeltaX99 rho) (seg52BlindDeltaY99 rho) (rho 51924) (rho 51925) (rho 51926) (rho 51927) (rho 51928) hacc
  · unfold seg52BlindDeltaX99 seg52BlindDeltaY99
    linear_combination r7536
  · unfold seg52BlindDeltaX99 seg52BlindDeltaY99
    linear_combination r7537
  · unfold seg52BlindDeltaX99 seg52BlindDeltaY99
    linear_combination r7538
  · unfold seg52BlindDeltaX99
    linear_combination r7539
  · unfold seg52BlindDeltaY99
    linear_combination r7540
  · linear_combination r6889

theorem seg52Blind_hstep_c9 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 91 ≤ i → i < 101 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc
  · exact seg52Blind_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc
  · exact seg52Blind_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc
  · exact seg52Blind_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc
  · exact seg52Blind_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc
  · exact seg52Blind_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc
  · exact seg52Blind_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc
  · exact seg52Blind_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc
  · exact seg52Blind_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc
  · exact seg52Blind_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

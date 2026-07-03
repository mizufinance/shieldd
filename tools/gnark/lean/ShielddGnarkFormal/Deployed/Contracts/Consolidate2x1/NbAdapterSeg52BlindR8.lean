import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6870 rho ∧ Seg52.relationRow7441 rho ∧ Seg52.relationRow7442 rho ∧ Seg52.relationRow7443 rho ∧ Seg52.relationRow7444 rho ∧ Seg52.relationRow7445 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6870, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, r7441, r7442, r7443, r7444, r7445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6870, r7441, r7442, r7443, r7444, r7445⟩

theorem seg52Blind_rung81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51259 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 81)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      81 (Bool.toZMod bit) (seg52BlindAccState rho 81)
      (seg52BlindAccState rho 82) := by
  obtain ⟨r6870, r7441, r7442, r7443, r7444, r7445⟩ := seg52Blind_rows81 rho h
  unfold Seg52.relationRow6870 at r6870

  unfold Seg52.relationRow7441 at r7441

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7441

  unfold Seg52.relationRow7442 at r7442

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7442

  unfold Seg52.relationRow7443 at r7443

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7443

  unfold Seg52.relationRow7444 at r7444

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7444

  unfold Seg52.relationRow7445 at r7445

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7445

  have hnextx : seg52BlindDeltaX81 rho =
      seg52BlindDeltaX80 rho + rho 51832 := by
    unfold seg52BlindDeltaX81 seg52BlindDeltaX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 80]

    ring

  have hnexty : seg52BlindDeltaY81 rho =
      seg52BlindDeltaY80 rho + rho 51833 := by
    unfold seg52BlindDeltaY81 seg52BlindDeltaY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 80]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 81
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX80 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY80 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX81 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY81 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung81_wide (rho 51178) (rho 51259) (seg52BlindDeltaX80 rho) (seg52BlindDeltaY80 rho) (rho 51829) (rho 51830) (rho 51831) (rho 51832) (rho 51833) hacc
  · unfold seg52BlindDeltaX80 seg52BlindDeltaY80
    linear_combination r7441
  · unfold seg52BlindDeltaX80 seg52BlindDeltaY80
    linear_combination r7442
  · unfold seg52BlindDeltaX80 seg52BlindDeltaY80
    linear_combination r7443
  · unfold seg52BlindDeltaX80
    linear_combination r7444
  · unfold seg52BlindDeltaY80
    linear_combination r7445
  · linear_combination r6870

theorem seg52Blind_rows82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6871 rho ∧ Seg52.relationRow7446 rho ∧ Seg52.relationRow7447 rho ∧ Seg52.relationRow7448 rho ∧ Seg52.relationRow7449 rho ∧ Seg52.relationRow7450 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6871, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, r7446, r7447, r7448, r7449, r7450, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6871, r7446, r7447, r7448, r7449, r7450⟩

theorem seg52Blind_rung82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51260 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 82)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      82 (Bool.toZMod bit) (seg52BlindAccState rho 82)
      (seg52BlindAccState rho 83) := by
  obtain ⟨r6871, r7446, r7447, r7448, r7449, r7450⟩ := seg52Blind_rows82 rho h
  unfold Seg52.relationRow6871 at r6871

  unfold Seg52.relationRow7446 at r7446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7446

  unfold Seg52.relationRow7447 at r7447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7447

  unfold Seg52.relationRow7448 at r7448

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7448

  unfold Seg52.relationRow7449 at r7449

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7449

  unfold Seg52.relationRow7450 at r7450

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7450

  have hnextx : seg52BlindDeltaX82 rho =
      seg52BlindDeltaX81 rho + rho 51837 := by
    unfold seg52BlindDeltaX82 seg52BlindDeltaX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 81]

    ring

  have hnexty : seg52BlindDeltaY82 rho =
      seg52BlindDeltaY81 rho + rho 51838 := by
    unfold seg52BlindDeltaY82 seg52BlindDeltaY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 81]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 82
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX81 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY81 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX82 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY82 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung82_wide (rho 51178) (rho 51260) (seg52BlindDeltaX81 rho) (seg52BlindDeltaY81 rho) (rho 51834) (rho 51835) (rho 51836) (rho 51837) (rho 51838) hacc
  · unfold seg52BlindDeltaX81 seg52BlindDeltaY81
    linear_combination r7446
  · unfold seg52BlindDeltaX81 seg52BlindDeltaY81
    linear_combination r7447
  · unfold seg52BlindDeltaX81 seg52BlindDeltaY81
    linear_combination r7448
  · unfold seg52BlindDeltaX81
    linear_combination r7449
  · unfold seg52BlindDeltaY81
    linear_combination r7450
  · linear_combination r6871

theorem seg52Blind_rows83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6872 rho ∧ Seg52.relationRow7451 rho ∧ Seg52.relationRow7452 rho ∧ Seg52.relationRow7453 rho ∧ Seg52.relationRow7454 rho ∧ Seg52.relationRow7455 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6872, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7451, r7452, r7453, r7454, r7455, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6872, r7451, r7452, r7453, r7454, r7455⟩

theorem seg52Blind_rung83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51261 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 83)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      83 (Bool.toZMod bit) (seg52BlindAccState rho 83)
      (seg52BlindAccState rho 84) := by
  obtain ⟨r6872, r7451, r7452, r7453, r7454, r7455⟩ := seg52Blind_rows83 rho h
  unfold Seg52.relationRow6872 at r6872

  unfold Seg52.relationRow7451 at r7451

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7451

  unfold Seg52.relationRow7452 at r7452

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7452

  unfold Seg52.relationRow7453 at r7453

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7453

  unfold Seg52.relationRow7454 at r7454

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7454

  unfold Seg52.relationRow7455 at r7455

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7455

  have hnextx : seg52BlindDeltaX83 rho =
      seg52BlindDeltaX82 rho + rho 51842 := by
    unfold seg52BlindDeltaX83 seg52BlindDeltaX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 82]

    ring

  have hnexty : seg52BlindDeltaY83 rho =
      seg52BlindDeltaY82 rho + rho 51843 := by
    unfold seg52BlindDeltaY83 seg52BlindDeltaY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 82]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 83
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX82 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY82 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX83 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY83 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung83_wide (rho 51178) (rho 51261) (seg52BlindDeltaX82 rho) (seg52BlindDeltaY82 rho) (rho 51839) (rho 51840) (rho 51841) (rho 51842) (rho 51843) hacc
  · unfold seg52BlindDeltaX82 seg52BlindDeltaY82
    linear_combination r7451
  · unfold seg52BlindDeltaX82 seg52BlindDeltaY82
    linear_combination r7452
  · unfold seg52BlindDeltaX82 seg52BlindDeltaY82
    linear_combination r7453
  · unfold seg52BlindDeltaX82
    linear_combination r7454
  · unfold seg52BlindDeltaY82
    linear_combination r7455
  · linear_combination r6872

theorem seg52Blind_rows84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6873 rho ∧ Seg52.relationRow7456 rho ∧ Seg52.relationRow7457 rho ∧ Seg52.relationRow7458 rho ∧ Seg52.relationRow7459 rho ∧ Seg52.relationRow7460 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6873, _, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7456, r7457, r7458, r7459, r7460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6873, r7456, r7457, r7458, r7459, r7460⟩

theorem seg52Blind_rung84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51262 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 84)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      84 (Bool.toZMod bit) (seg52BlindAccState rho 84)
      (seg52BlindAccState rho 85) := by
  obtain ⟨r6873, r7456, r7457, r7458, r7459, r7460⟩ := seg52Blind_rows84 rho h
  unfold Seg52.relationRow6873 at r6873

  unfold Seg52.relationRow7456 at r7456

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7456

  unfold Seg52.relationRow7457 at r7457

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7457

  unfold Seg52.relationRow7458 at r7458

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7458

  unfold Seg52.relationRow7459 at r7459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7459

  unfold Seg52.relationRow7460 at r7460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7460

  have hnextx : seg52BlindDeltaX84 rho =
      seg52BlindDeltaX83 rho + rho 51847 := by
    unfold seg52BlindDeltaX84 seg52BlindDeltaX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 83]

    ring

  have hnexty : seg52BlindDeltaY84 rho =
      seg52BlindDeltaY83 rho + rho 51848 := by
    unfold seg52BlindDeltaY84 seg52BlindDeltaY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 83]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 84
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX83 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY83 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX84 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY84 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung84_wide (rho 51178) (rho 51262) (seg52BlindDeltaX83 rho) (seg52BlindDeltaY83 rho) (rho 51844) (rho 51845) (rho 51846) (rho 51847) (rho 51848) hacc
  · unfold seg52BlindDeltaX83 seg52BlindDeltaY83
    linear_combination r7456
  · unfold seg52BlindDeltaX83 seg52BlindDeltaY83
    linear_combination r7457
  · unfold seg52BlindDeltaX83 seg52BlindDeltaY83
    linear_combination r7458
  · unfold seg52BlindDeltaX83
    linear_combination r7459
  · unfold seg52BlindDeltaY83
    linear_combination r7460
  · linear_combination r6873

theorem seg52Blind_rows85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6874 rho ∧ Seg52.relationRow7461 rho ∧ Seg52.relationRow7462 rho ∧ Seg52.relationRow7463 rho ∧ Seg52.relationRow7464 rho ∧ Seg52.relationRow7465 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6874, _, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7461, r7462, r7463, r7464, r7465, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6874, r7461, r7462, r7463, r7464, r7465⟩

theorem seg52Blind_rung85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51263 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 85)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      85 (Bool.toZMod bit) (seg52BlindAccState rho 85)
      (seg52BlindAccState rho 86) := by
  obtain ⟨r6874, r7461, r7462, r7463, r7464, r7465⟩ := seg52Blind_rows85 rho h
  unfold Seg52.relationRow6874 at r6874

  unfold Seg52.relationRow7461 at r7461

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7461

  unfold Seg52.relationRow7462 at r7462

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7462

  unfold Seg52.relationRow7463 at r7463

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7463

  unfold Seg52.relationRow7464 at r7464

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7464

  unfold Seg52.relationRow7465 at r7465

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7465

  have hnextx : seg52BlindDeltaX85 rho =
      seg52BlindDeltaX84 rho + rho 51852 := by
    unfold seg52BlindDeltaX85 seg52BlindDeltaX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 84]

    ring

  have hnexty : seg52BlindDeltaY85 rho =
      seg52BlindDeltaY84 rho + rho 51853 := by
    unfold seg52BlindDeltaY85 seg52BlindDeltaY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 84]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 85
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX84 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY84 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX85 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY85 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung85_wide (rho 51178) (rho 51263) (seg52BlindDeltaX84 rho) (seg52BlindDeltaY84 rho) (rho 51849) (rho 51850) (rho 51851) (rho 51852) (rho 51853) hacc
  · unfold seg52BlindDeltaX84 seg52BlindDeltaY84
    linear_combination r7461
  · unfold seg52BlindDeltaX84 seg52BlindDeltaY84
    linear_combination r7462
  · unfold seg52BlindDeltaX84 seg52BlindDeltaY84
    linear_combination r7463
  · unfold seg52BlindDeltaX84
    linear_combination r7464
  · unfold seg52BlindDeltaY84
    linear_combination r7465
  · linear_combination r6874

theorem seg52Blind_rows86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6875 rho ∧ Seg52.relationRow7466 rho ∧ Seg52.relationRow7467 rho ∧ Seg52.relationRow7468 rho ∧ Seg52.relationRow7469 rho ∧ Seg52.relationRow7470 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6875, _, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7466, r7467, r7468, r7469, r7470, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6875, r7466, r7467, r7468, r7469, r7470⟩

theorem seg52Blind_rung86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51264 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 86)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      86 (Bool.toZMod bit) (seg52BlindAccState rho 86)
      (seg52BlindAccState rho 87) := by
  obtain ⟨r6875, r7466, r7467, r7468, r7469, r7470⟩ := seg52Blind_rows86 rho h
  unfold Seg52.relationRow6875 at r6875

  unfold Seg52.relationRow7466 at r7466

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7466

  unfold Seg52.relationRow7467 at r7467

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7467

  unfold Seg52.relationRow7468 at r7468

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7468

  unfold Seg52.relationRow7469 at r7469

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7469

  unfold Seg52.relationRow7470 at r7470

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7470

  have hnextx : seg52BlindDeltaX86 rho =
      seg52BlindDeltaX85 rho + rho 51857 := by
    unfold seg52BlindDeltaX86 seg52BlindDeltaX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 85]

    ring

  have hnexty : seg52BlindDeltaY86 rho =
      seg52BlindDeltaY85 rho + rho 51858 := by
    unfold seg52BlindDeltaY86 seg52BlindDeltaY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 85]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 86
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX85 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY85 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX86 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY86 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung86_wide (rho 51178) (rho 51264) (seg52BlindDeltaX85 rho) (seg52BlindDeltaY85 rho) (rho 51854) (rho 51855) (rho 51856) (rho 51857) (rho 51858) hacc
  · unfold seg52BlindDeltaX85 seg52BlindDeltaY85
    linear_combination r7466
  · unfold seg52BlindDeltaX85 seg52BlindDeltaY85
    linear_combination r7467
  · unfold seg52BlindDeltaX85 seg52BlindDeltaY85
    linear_combination r7468
  · unfold seg52BlindDeltaX85
    linear_combination r7469
  · unfold seg52BlindDeltaY85
    linear_combination r7470
  · linear_combination r6875

theorem seg52Blind_rows87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6876 rho ∧ Seg52.relationRow7471 rho ∧ Seg52.relationRow7472 rho ∧ Seg52.relationRow7473 rho ∧ Seg52.relationRow7474 rho ∧ Seg52.relationRow7475 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6876, _, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7471, r7472, r7473, r7474, r7475, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6876, r7471, r7472, r7473, r7474, r7475⟩

theorem seg52Blind_rung87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51265 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 87)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      87 (Bool.toZMod bit) (seg52BlindAccState rho 87)
      (seg52BlindAccState rho 88) := by
  obtain ⟨r6876, r7471, r7472, r7473, r7474, r7475⟩ := seg52Blind_rows87 rho h
  unfold Seg52.relationRow6876 at r6876

  unfold Seg52.relationRow7471 at r7471

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7471

  unfold Seg52.relationRow7472 at r7472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7472

  unfold Seg52.relationRow7473 at r7473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7473

  unfold Seg52.relationRow7474 at r7474

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7474

  unfold Seg52.relationRow7475 at r7475

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7475

  have hnextx : seg52BlindDeltaX87 rho =
      seg52BlindDeltaX86 rho + rho 51862 := by
    unfold seg52BlindDeltaX87 seg52BlindDeltaX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 86]

    ring

  have hnexty : seg52BlindDeltaY87 rho =
      seg52BlindDeltaY86 rho + rho 51863 := by
    unfold seg52BlindDeltaY87 seg52BlindDeltaY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 86]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 87
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX86 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY86 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX87 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY87 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung87_wide (rho 51178) (rho 51265) (seg52BlindDeltaX86 rho) (seg52BlindDeltaY86 rho) (rho 51859) (rho 51860) (rho 51861) (rho 51862) (rho 51863) hacc
  · unfold seg52BlindDeltaX86 seg52BlindDeltaY86
    linear_combination r7471
  · unfold seg52BlindDeltaX86 seg52BlindDeltaY86
    linear_combination r7472
  · unfold seg52BlindDeltaX86 seg52BlindDeltaY86
    linear_combination r7473
  · unfold seg52BlindDeltaX86
    linear_combination r7474
  · unfold seg52BlindDeltaY86
    linear_combination r7475
  · linear_combination r6876

theorem seg52Blind_rows88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6877 rho ∧ Seg52.relationRow7476 rho ∧ Seg52.relationRow7477 rho ∧ Seg52.relationRow7478 rho ∧ Seg52.relationRow7479 rho ∧ Seg52.relationRow7480 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6877, _, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7476, r7477, r7478, r7479, r7480, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6877, r7476, r7477, r7478, r7479, r7480⟩

theorem seg52Blind_rung88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51266 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 88)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      88 (Bool.toZMod bit) (seg52BlindAccState rho 88)
      (seg52BlindAccState rho 89) := by
  obtain ⟨r6877, r7476, r7477, r7478, r7479, r7480⟩ := seg52Blind_rows88 rho h
  unfold Seg52.relationRow6877 at r6877

  unfold Seg52.relationRow7476 at r7476

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7476

  unfold Seg52.relationRow7477 at r7477

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7477

  unfold Seg52.relationRow7478 at r7478

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7478

  unfold Seg52.relationRow7479 at r7479

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7479

  unfold Seg52.relationRow7480 at r7480

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7480

  have hnextx : seg52BlindDeltaX88 rho =
      seg52BlindDeltaX87 rho + rho 51867 := by
    unfold seg52BlindDeltaX88 seg52BlindDeltaX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 87]

    ring

  have hnexty : seg52BlindDeltaY88 rho =
      seg52BlindDeltaY87 rho + rho 51868 := by
    unfold seg52BlindDeltaY88 seg52BlindDeltaY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 87]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 88
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX87 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY87 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX88 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY88 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung88_wide (rho 51178) (rho 51266) (seg52BlindDeltaX87 rho) (seg52BlindDeltaY87 rho) (rho 51864) (rho 51865) (rho 51866) (rho 51867) (rho 51868) hacc
  · unfold seg52BlindDeltaX87 seg52BlindDeltaY87
    linear_combination r7476
  · unfold seg52BlindDeltaX87 seg52BlindDeltaY87
    linear_combination r7477
  · unfold seg52BlindDeltaX87 seg52BlindDeltaY87
    linear_combination r7478
  · unfold seg52BlindDeltaX87
    linear_combination r7479
  · unfold seg52BlindDeltaY87
    linear_combination r7480
  · linear_combination r6877

theorem seg52Blind_rows89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6878 rho ∧ Seg52.relationRow7481 rho ∧ Seg52.relationRow7482 rho ∧ Seg52.relationRow7483 rho ∧ Seg52.relationRow7484 rho ∧ Seg52.relationRow7485 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6878, _⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7481, r7482, r7483, r7484, r7485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6878, r7481, r7482, r7483, r7484, r7485⟩

theorem seg52Blind_rung89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51267 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 89)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      89 (Bool.toZMod bit) (seg52BlindAccState rho 89)
      (seg52BlindAccState rho 90) := by
  obtain ⟨r6878, r7481, r7482, r7483, r7484, r7485⟩ := seg52Blind_rows89 rho h
  unfold Seg52.relationRow6878 at r6878

  unfold Seg52.relationRow7481 at r7481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7481

  unfold Seg52.relationRow7482 at r7482

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7482

  unfold Seg52.relationRow7483 at r7483

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7483

  unfold Seg52.relationRow7484 at r7484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7484

  unfold Seg52.relationRow7485 at r7485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7485

  have hnextx : seg52BlindDeltaX89 rho =
      seg52BlindDeltaX88 rho + rho 51872 := by
    unfold seg52BlindDeltaX89 seg52BlindDeltaX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 88]

    ring

  have hnexty : seg52BlindDeltaY89 rho =
      seg52BlindDeltaY88 rho + rho 51873 := by
    unfold seg52BlindDeltaY89 seg52BlindDeltaY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 88]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 89
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX88 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY88 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX89 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY89 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung89_wide (rho 51178) (rho 51267) (seg52BlindDeltaX88 rho) (seg52BlindDeltaY88 rho) (rho 51869) (rho 51870) (rho 51871) (rho 51872) (rho 51873) hacc
  · unfold seg52BlindDeltaX88 seg52BlindDeltaY88
    linear_combination r7481
  · unfold seg52BlindDeltaX88 seg52BlindDeltaY88
    linear_combination r7482
  · unfold seg52BlindDeltaX88 seg52BlindDeltaY88
    linear_combination r7483
  · unfold seg52BlindDeltaX88
    linear_combination r7484
  · unfold seg52BlindDeltaY88
    linear_combination r7485
  · linear_combination r6878

theorem seg52Blind_rows90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6879 rho ∧ Seg52.relationRow7486 rho ∧ Seg52.relationRow7487 rho ∧ Seg52.relationRow7488 rho ∧ Seg52.relationRow7489 rho ∧ Seg52.relationRow7490 rho := by
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

    _, _, _, _, _, p85, _, _, _, _,

    _, _, _, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6879⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7486, r7487, r7488, r7489, r7490, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6879, r7486, r7487, r7488, r7489, r7490⟩

theorem seg52Blind_rung90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51268 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 90)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      90 (Bool.toZMod bit) (seg52BlindAccState rho 90)
      (seg52BlindAccState rho 91) := by
  obtain ⟨r6879, r7486, r7487, r7488, r7489, r7490⟩ := seg52Blind_rows90 rho h
  unfold Seg52.relationRow6879 at r6879

  unfold Seg52.relationRow7486 at r7486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7486

  unfold Seg52.relationRow7487 at r7487

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7487

  unfold Seg52.relationRow7488 at r7488

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7488

  unfold Seg52.relationRow7489 at r7489

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7489

  unfold Seg52.relationRow7490 at r7490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7490

  have hnextx : seg52BlindDeltaX90 rho =
      seg52BlindDeltaX89 rho + rho 51877 := by
    unfold seg52BlindDeltaX90 seg52BlindDeltaX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 89]

    ring

  have hnexty : seg52BlindDeltaY90 rho =
      seg52BlindDeltaY89 rho + rho 51878 := by
    unfold seg52BlindDeltaY90 seg52BlindDeltaY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 89]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 90
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX89 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY89 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX90 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY90 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung90_wide (rho 51178) (rho 51268) (seg52BlindDeltaX89 rho) (seg52BlindDeltaY89 rho) (rho 51874) (rho 51875) (rho 51876) (rho 51877) (rho 51878) hacc
  · unfold seg52BlindDeltaX89 seg52BlindDeltaY89
    linear_combination r7486
  · unfold seg52BlindDeltaX89 seg52BlindDeltaY89
    linear_combination r7487
  · unfold seg52BlindDeltaX89 seg52BlindDeltaY89
    linear_combination r7488
  · unfold seg52BlindDeltaX89
    linear_combination r7489
  · unfold seg52BlindDeltaY89
    linear_combination r7490
  · linear_combination r6879

theorem seg52Blind_hstep_c8 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 81 ≤ i → i < 91 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc
  · exact seg52Blind_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc
  · exact seg52Blind_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc
  · exact seg52Blind_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc
  · exact seg52Blind_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc
  · exact seg52Blind_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc
  · exact seg52Blind_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc
  · exact seg52Blind_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc
  · exact seg52Blind_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc
  · exact seg52Blind_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

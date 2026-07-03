import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6860 rho ∧ Seg52.relationRow7391 rho ∧ Seg52.relationRow7392 rho ∧ Seg52.relationRow7393 rho ∧ Seg52.relationRow7394 rho ∧ Seg52.relationRow7395 rho := by
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

    _, _, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6860, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7391, r7392, r7393, r7394, r7395, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6860, r7391, r7392, r7393, r7394, r7395⟩

theorem seg52Blind_rung71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51249 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 71)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      71 (Bool.toZMod bit) (seg52BlindAccState rho 71)
      (seg52BlindAccState rho 72) := by
  obtain ⟨r6860, r7391, r7392, r7393, r7394, r7395⟩ := seg52Blind_rows71 rho h
  unfold Seg52.relationRow6860 at r6860

  unfold Seg52.relationRow7391 at r7391

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7391

  unfold Seg52.relationRow7392 at r7392

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7392

  unfold Seg52.relationRow7393 at r7393

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7393

  unfold Seg52.relationRow7394 at r7394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7394

  unfold Seg52.relationRow7395 at r7395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7395

  have hnextx : seg52BlindDeltaX71 rho =
      seg52BlindDeltaX70 rho + rho 51782 := by
    unfold seg52BlindDeltaX71 seg52BlindDeltaX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 70]

    ring

  have hnexty : seg52BlindDeltaY71 rho =
      seg52BlindDeltaY70 rho + rho 51783 := by
    unfold seg52BlindDeltaY71 seg52BlindDeltaY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 70]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 71
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX70 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY70 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX71 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY71 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung71_wide (rho 51178) (rho 51249) (seg52BlindDeltaX70 rho) (seg52BlindDeltaY70 rho) (rho 51779) (rho 51780) (rho 51781) (rho 51782) (rho 51783) hacc
  · unfold seg52BlindDeltaX70 seg52BlindDeltaY70
    linear_combination r7391
  · unfold seg52BlindDeltaX70 seg52BlindDeltaY70
    linear_combination r7392
  · unfold seg52BlindDeltaX70 seg52BlindDeltaY70
    linear_combination r7393
  · unfold seg52BlindDeltaX70
    linear_combination r7394
  · unfold seg52BlindDeltaY70
    linear_combination r7395
  · linear_combination r6860

theorem seg52Blind_rows72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6861 rho ∧ Seg52.relationRow7396 rho ∧ Seg52.relationRow7397 rho ∧ Seg52.relationRow7398 rho ∧ Seg52.relationRow7399 rho ∧ Seg52.relationRow7400 rho := by
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

    _, _, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7396, r7397, r7398, r7399, r7400, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6861, r7396, r7397, r7398, r7399, r7400⟩

theorem seg52Blind_rung72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51250 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 72)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      72 (Bool.toZMod bit) (seg52BlindAccState rho 72)
      (seg52BlindAccState rho 73) := by
  obtain ⟨r6861, r7396, r7397, r7398, r7399, r7400⟩ := seg52Blind_rows72 rho h
  unfold Seg52.relationRow6861 at r6861

  unfold Seg52.relationRow7396 at r7396

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7396

  unfold Seg52.relationRow7397 at r7397

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7397

  unfold Seg52.relationRow7398 at r7398

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7398

  unfold Seg52.relationRow7399 at r7399

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7399

  unfold Seg52.relationRow7400 at r7400

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7400

  have hnextx : seg52BlindDeltaX72 rho =
      seg52BlindDeltaX71 rho + rho 51787 := by
    unfold seg52BlindDeltaX72 seg52BlindDeltaX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 71]

    ring

  have hnexty : seg52BlindDeltaY72 rho =
      seg52BlindDeltaY71 rho + rho 51788 := by
    unfold seg52BlindDeltaY72 seg52BlindDeltaY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 71]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 72
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX71 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY71 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX72 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY72 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung72_wide (rho 51178) (rho 51250) (seg52BlindDeltaX71 rho) (seg52BlindDeltaY71 rho) (rho 51784) (rho 51785) (rho 51786) (rho 51787) (rho 51788) hacc
  · unfold seg52BlindDeltaX71 seg52BlindDeltaY71
    linear_combination r7396
  · unfold seg52BlindDeltaX71 seg52BlindDeltaY71
    linear_combination r7397
  · unfold seg52BlindDeltaX71 seg52BlindDeltaY71
    linear_combination r7398
  · unfold seg52BlindDeltaX71
    linear_combination r7399
  · unfold seg52BlindDeltaY71
    linear_combination r7400
  · linear_combination r6861

theorem seg52Blind_rows73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6862 rho ∧ Seg52.relationRow7401 rho ∧ Seg52.relationRow7402 rho ∧ Seg52.relationRow7403 rho ∧ Seg52.relationRow7404 rho ∧ Seg52.relationRow7405 rho := by
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

    _, _, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6862, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7401, r7402, r7403, r7404, r7405, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6862, r7401, r7402, r7403, r7404, r7405⟩

theorem seg52Blind_rung73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51251 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 73)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      73 (Bool.toZMod bit) (seg52BlindAccState rho 73)
      (seg52BlindAccState rho 74) := by
  obtain ⟨r6862, r7401, r7402, r7403, r7404, r7405⟩ := seg52Blind_rows73 rho h
  unfold Seg52.relationRow6862 at r6862

  unfold Seg52.relationRow7401 at r7401

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7401

  unfold Seg52.relationRow7402 at r7402

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7402

  unfold Seg52.relationRow7403 at r7403

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7403

  unfold Seg52.relationRow7404 at r7404

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7404

  unfold Seg52.relationRow7405 at r7405

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7405

  have hnextx : seg52BlindDeltaX73 rho =
      seg52BlindDeltaX72 rho + rho 51792 := by
    unfold seg52BlindDeltaX73 seg52BlindDeltaX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 72]

    ring

  have hnexty : seg52BlindDeltaY73 rho =
      seg52BlindDeltaY72 rho + rho 51793 := by
    unfold seg52BlindDeltaY73 seg52BlindDeltaY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 72]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 73
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX72 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY72 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX73 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY73 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung73_wide (rho 51178) (rho 51251) (seg52BlindDeltaX72 rho) (seg52BlindDeltaY72 rho) (rho 51789) (rho 51790) (rho 51791) (rho 51792) (rho 51793) hacc
  · unfold seg52BlindDeltaX72 seg52BlindDeltaY72
    linear_combination r7401
  · unfold seg52BlindDeltaX72 seg52BlindDeltaY72
    linear_combination r7402
  · unfold seg52BlindDeltaX72 seg52BlindDeltaY72
    linear_combination r7403
  · unfold seg52BlindDeltaX72
    linear_combination r7404
  · unfold seg52BlindDeltaY72
    linear_combination r7405
  · linear_combination r6862

theorem seg52Blind_rows74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6863 rho ∧ Seg52.relationRow7406 rho ∧ Seg52.relationRow7407 rho ∧ Seg52.relationRow7408 rho ∧ Seg52.relationRow7409 rho ∧ Seg52.relationRow7410 rho := by
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

    _, _, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6863, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7406, r7407, r7408, r7409, r7410, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6863, r7406, r7407, r7408, r7409, r7410⟩

theorem seg52Blind_rung74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51252 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 74)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      74 (Bool.toZMod bit) (seg52BlindAccState rho 74)
      (seg52BlindAccState rho 75) := by
  obtain ⟨r6863, r7406, r7407, r7408, r7409, r7410⟩ := seg52Blind_rows74 rho h
  unfold Seg52.relationRow6863 at r6863

  unfold Seg52.relationRow7406 at r7406

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7406

  unfold Seg52.relationRow7407 at r7407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7407

  unfold Seg52.relationRow7408 at r7408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7408

  unfold Seg52.relationRow7409 at r7409

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7409

  unfold Seg52.relationRow7410 at r7410

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7410

  have hnextx : seg52BlindDeltaX74 rho =
      seg52BlindDeltaX73 rho + rho 51797 := by
    unfold seg52BlindDeltaX74 seg52BlindDeltaX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 73]

    ring

  have hnexty : seg52BlindDeltaY74 rho =
      seg52BlindDeltaY73 rho + rho 51798 := by
    unfold seg52BlindDeltaY74 seg52BlindDeltaY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 73]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 74
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX73 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY73 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX74 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY74 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung74_wide (rho 51178) (rho 51252) (seg52BlindDeltaX73 rho) (seg52BlindDeltaY73 rho) (rho 51794) (rho 51795) (rho 51796) (rho 51797) (rho 51798) hacc
  · unfold seg52BlindDeltaX73 seg52BlindDeltaY73
    linear_combination r7406
  · unfold seg52BlindDeltaX73 seg52BlindDeltaY73
    linear_combination r7407
  · unfold seg52BlindDeltaX73 seg52BlindDeltaY73
    linear_combination r7408
  · unfold seg52BlindDeltaX73
    linear_combination r7409
  · unfold seg52BlindDeltaY73
    linear_combination r7410
  · linear_combination r6863

theorem seg52Blind_rows75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6864 rho ∧ Seg52.relationRow7411 rho ∧ Seg52.relationRow7412 rho ∧ Seg52.relationRow7413 rho ∧ Seg52.relationRow7414 rho ∧ Seg52.relationRow7415 rho := by
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

    _, _, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6864, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7411, r7412, r7413, r7414, r7415, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6864, r7411, r7412, r7413, r7414, r7415⟩

theorem seg52Blind_rung75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51253 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 75)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      75 (Bool.toZMod bit) (seg52BlindAccState rho 75)
      (seg52BlindAccState rho 76) := by
  obtain ⟨r6864, r7411, r7412, r7413, r7414, r7415⟩ := seg52Blind_rows75 rho h
  unfold Seg52.relationRow6864 at r6864

  unfold Seg52.relationRow7411 at r7411

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7411

  unfold Seg52.relationRow7412 at r7412

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7412

  unfold Seg52.relationRow7413 at r7413

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7413

  unfold Seg52.relationRow7414 at r7414

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7414

  unfold Seg52.relationRow7415 at r7415

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7415

  have hnextx : seg52BlindDeltaX75 rho =
      seg52BlindDeltaX74 rho + rho 51802 := by
    unfold seg52BlindDeltaX75 seg52BlindDeltaX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 74]

    ring

  have hnexty : seg52BlindDeltaY75 rho =
      seg52BlindDeltaY74 rho + rho 51803 := by
    unfold seg52BlindDeltaY75 seg52BlindDeltaY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 74]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 75
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX74 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY74 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX75 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY75 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung75_wide (rho 51178) (rho 51253) (seg52BlindDeltaX74 rho) (seg52BlindDeltaY74 rho) (rho 51799) (rho 51800) (rho 51801) (rho 51802) (rho 51803) hacc
  · unfold seg52BlindDeltaX74 seg52BlindDeltaY74
    linear_combination r7411
  · unfold seg52BlindDeltaX74 seg52BlindDeltaY74
    linear_combination r7412
  · unfold seg52BlindDeltaX74 seg52BlindDeltaY74
    linear_combination r7413
  · unfold seg52BlindDeltaX74
    linear_combination r7414
  · unfold seg52BlindDeltaY74
    linear_combination r7415
  · linear_combination r6864

theorem seg52Blind_rows76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6865 rho ∧ Seg52.relationRow7416 rho ∧ Seg52.relationRow7417 rho ∧ Seg52.relationRow7418 rho ∧ Seg52.relationRow7419 rho ∧ Seg52.relationRow7420 rho := by
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

    _, _, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6865, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7416, r7417, r7418, r7419, r7420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6865, r7416, r7417, r7418, r7419, r7420⟩

theorem seg52Blind_rung76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51254 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 76)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      76 (Bool.toZMod bit) (seg52BlindAccState rho 76)
      (seg52BlindAccState rho 77) := by
  obtain ⟨r6865, r7416, r7417, r7418, r7419, r7420⟩ := seg52Blind_rows76 rho h
  unfold Seg52.relationRow6865 at r6865

  unfold Seg52.relationRow7416 at r7416

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7416

  unfold Seg52.relationRow7417 at r7417

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7417

  unfold Seg52.relationRow7418 at r7418

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7418

  unfold Seg52.relationRow7419 at r7419

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7419

  unfold Seg52.relationRow7420 at r7420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7420

  have hnextx : seg52BlindDeltaX76 rho =
      seg52BlindDeltaX75 rho + rho 51807 := by
    unfold seg52BlindDeltaX76 seg52BlindDeltaX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 75]

    ring

  have hnexty : seg52BlindDeltaY76 rho =
      seg52BlindDeltaY75 rho + rho 51808 := by
    unfold seg52BlindDeltaY76 seg52BlindDeltaY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 75]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 76
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX75 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY75 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX76 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY76 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung76_wide (rho 51178) (rho 51254) (seg52BlindDeltaX75 rho) (seg52BlindDeltaY75 rho) (rho 51804) (rho 51805) (rho 51806) (rho 51807) (rho 51808) hacc
  · unfold seg52BlindDeltaX75 seg52BlindDeltaY75
    linear_combination r7416
  · unfold seg52BlindDeltaX75 seg52BlindDeltaY75
    linear_combination r7417
  · unfold seg52BlindDeltaX75 seg52BlindDeltaY75
    linear_combination r7418
  · unfold seg52BlindDeltaX75
    linear_combination r7419
  · unfold seg52BlindDeltaY75
    linear_combination r7420
  · linear_combination r6865

theorem seg52Blind_rows77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6866 rho ∧ Seg52.relationRow7421 rho ∧ Seg52.relationRow7422 rho ∧ Seg52.relationRow7423 rho ∧ Seg52.relationRow7424 rho ∧ Seg52.relationRow7425 rho := by
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

    _, _, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6866, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7421, r7422, r7423, r7424, r7425, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6866, r7421, r7422, r7423, r7424, r7425⟩

theorem seg52Blind_rung77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51255 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 77)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      77 (Bool.toZMod bit) (seg52BlindAccState rho 77)
      (seg52BlindAccState rho 78) := by
  obtain ⟨r6866, r7421, r7422, r7423, r7424, r7425⟩ := seg52Blind_rows77 rho h
  unfold Seg52.relationRow6866 at r6866

  unfold Seg52.relationRow7421 at r7421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7421

  unfold Seg52.relationRow7422 at r7422

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7422

  unfold Seg52.relationRow7423 at r7423

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7423

  unfold Seg52.relationRow7424 at r7424

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7424

  unfold Seg52.relationRow7425 at r7425

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7425

  have hnextx : seg52BlindDeltaX77 rho =
      seg52BlindDeltaX76 rho + rho 51812 := by
    unfold seg52BlindDeltaX77 seg52BlindDeltaX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 76]

    ring

  have hnexty : seg52BlindDeltaY77 rho =
      seg52BlindDeltaY76 rho + rho 51813 := by
    unfold seg52BlindDeltaY77 seg52BlindDeltaY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 76]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 77
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX76 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY76 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX77 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY77 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung77_wide (rho 51178) (rho 51255) (seg52BlindDeltaX76 rho) (seg52BlindDeltaY76 rho) (rho 51809) (rho 51810) (rho 51811) (rho 51812) (rho 51813) hacc
  · unfold seg52BlindDeltaX76 seg52BlindDeltaY76
    linear_combination r7421
  · unfold seg52BlindDeltaX76 seg52BlindDeltaY76
    linear_combination r7422
  · unfold seg52BlindDeltaX76 seg52BlindDeltaY76
    linear_combination r7423
  · unfold seg52BlindDeltaX76
    linear_combination r7424
  · unfold seg52BlindDeltaY76
    linear_combination r7425
  · linear_combination r6866

theorem seg52Blind_rows78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6867 rho ∧ Seg52.relationRow7426 rho ∧ Seg52.relationRow7427 rho ∧ Seg52.relationRow7428 rho ∧ Seg52.relationRow7429 rho ∧ Seg52.relationRow7430 rho := by
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

    _, _, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6867, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7426, r7427, r7428, r7429, r7430, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6867, r7426, r7427, r7428, r7429, r7430⟩

theorem seg52Blind_rung78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51256 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 78)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      78 (Bool.toZMod bit) (seg52BlindAccState rho 78)
      (seg52BlindAccState rho 79) := by
  obtain ⟨r6867, r7426, r7427, r7428, r7429, r7430⟩ := seg52Blind_rows78 rho h
  unfold Seg52.relationRow6867 at r6867

  unfold Seg52.relationRow7426 at r7426

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7426

  unfold Seg52.relationRow7427 at r7427

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7427

  unfold Seg52.relationRow7428 at r7428

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7428

  unfold Seg52.relationRow7429 at r7429

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7429

  unfold Seg52.relationRow7430 at r7430

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7430

  have hnextx : seg52BlindDeltaX78 rho =
      seg52BlindDeltaX77 rho + rho 51817 := by
    unfold seg52BlindDeltaX78 seg52BlindDeltaX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 77]

    ring

  have hnexty : seg52BlindDeltaY78 rho =
      seg52BlindDeltaY77 rho + rho 51818 := by
    unfold seg52BlindDeltaY78 seg52BlindDeltaY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 77]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 78
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX77 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY77 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX78 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY78 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung78_wide (rho 51178) (rho 51256) (seg52BlindDeltaX77 rho) (seg52BlindDeltaY77 rho) (rho 51814) (rho 51815) (rho 51816) (rho 51817) (rho 51818) hacc
  · unfold seg52BlindDeltaX77 seg52BlindDeltaY77
    linear_combination r7426
  · unfold seg52BlindDeltaX77 seg52BlindDeltaY77
    linear_combination r7427
  · unfold seg52BlindDeltaX77 seg52BlindDeltaY77
    linear_combination r7428
  · unfold seg52BlindDeltaX77
    linear_combination r7429
  · unfold seg52BlindDeltaY77
    linear_combination r7430
  · linear_combination r6867

theorem seg52Blind_rows79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6868 rho ∧ Seg52.relationRow7431 rho ∧ Seg52.relationRow7432 rho ∧ Seg52.relationRow7433 rho ∧ Seg52.relationRow7434 rho ∧ Seg52.relationRow7435 rho := by
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

    _, _, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6868, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7431, r7432, r7433, r7434, r7435, _, _, _, _⟩

  exact ⟨r6868, r7431, r7432, r7433, r7434, r7435⟩

theorem seg52Blind_rung79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51257 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 79)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      79 (Bool.toZMod bit) (seg52BlindAccState rho 79)
      (seg52BlindAccState rho 80) := by
  obtain ⟨r6868, r7431, r7432, r7433, r7434, r7435⟩ := seg52Blind_rows79 rho h
  unfold Seg52.relationRow6868 at r6868

  unfold Seg52.relationRow7431 at r7431

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7431

  unfold Seg52.relationRow7432 at r7432

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7432

  unfold Seg52.relationRow7433 at r7433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7433

  unfold Seg52.relationRow7434 at r7434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7434

  unfold Seg52.relationRow7435 at r7435

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7435

  have hnextx : seg52BlindDeltaX79 rho =
      seg52BlindDeltaX78 rho + rho 51822 := by
    unfold seg52BlindDeltaX79 seg52BlindDeltaX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 78]

    ring

  have hnexty : seg52BlindDeltaY79 rho =
      seg52BlindDeltaY78 rho + rho 51823 := by
    unfold seg52BlindDeltaY79 seg52BlindDeltaY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 78]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 79
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX78 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY78 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX79 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY79 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung79_wide (rho 51178) (rho 51257) (seg52BlindDeltaX78 rho) (seg52BlindDeltaY78 rho) (rho 51819) (rho 51820) (rho 51821) (rho 51822) (rho 51823) hacc
  · unfold seg52BlindDeltaX78 seg52BlindDeltaY78
    linear_combination r7431
  · unfold seg52BlindDeltaX78 seg52BlindDeltaY78
    linear_combination r7432
  · unfold seg52BlindDeltaX78 seg52BlindDeltaY78
    linear_combination r7433
  · unfold seg52BlindDeltaX78
    linear_combination r7434
  · unfold seg52BlindDeltaY78
    linear_combination r7435
  · linear_combination r6868

theorem seg52Blind_rows80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6869 rho ∧ Seg52.relationRow7436 rho ∧ Seg52.relationRow7437 rho ∧ Seg52.relationRow7438 rho ∧ Seg52.relationRow7439 rho ∧ Seg52.relationRow7440 rho := by
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

    _, _, p92, p93, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6869, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7436, r7437, r7438, r7439⟩

  unfold Seg52.relationPart93 at p93

  rcases p93 with ⟨r7440, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6869, r7436, r7437, r7438, r7439, r7440⟩

theorem seg52Blind_rung80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51258 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 80)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      80 (Bool.toZMod bit) (seg52BlindAccState rho 80)
      (seg52BlindAccState rho 81) := by
  obtain ⟨r6869, r7436, r7437, r7438, r7439, r7440⟩ := seg52Blind_rows80 rho h
  unfold Seg52.relationRow6869 at r6869

  unfold Seg52.relationRow7436 at r7436

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7436

  unfold Seg52.relationRow7437 at r7437

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7437

  unfold Seg52.relationRow7438 at r7438

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7438

  unfold Seg52.relationRow7439 at r7439

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7439

  unfold Seg52.relationRow7440 at r7440

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7440

  have hnextx : seg52BlindDeltaX80 rho =
      seg52BlindDeltaX79 rho + rho 51827 := by
    unfold seg52BlindDeltaX80 seg52BlindDeltaX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 79]

    ring

  have hnexty : seg52BlindDeltaY80 rho =
      seg52BlindDeltaY79 rho + rho 51828 := by
    unfold seg52BlindDeltaY80 seg52BlindDeltaY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 79]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 80
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX79 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY79 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX80 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY80 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung80_wide (rho 51178) (rho 51258) (seg52BlindDeltaX79 rho) (seg52BlindDeltaY79 rho) (rho 51824) (rho 51825) (rho 51826) (rho 51827) (rho 51828) hacc
  · unfold seg52BlindDeltaX79 seg52BlindDeltaY79
    linear_combination r7436
  · unfold seg52BlindDeltaX79 seg52BlindDeltaY79
    linear_combination r7437
  · unfold seg52BlindDeltaX79 seg52BlindDeltaY79
    linear_combination r7438
  · unfold seg52BlindDeltaX79
    linear_combination r7439
  · unfold seg52BlindDeltaY79
    linear_combination r7440
  · linear_combination r6869

theorem seg52Blind_hstep_c7 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 71 ≤ i → i < 81 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc
  · exact seg52Blind_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc
  · exact seg52Blind_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc
  · exact seg52Blind_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc
  · exact seg52Blind_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc
  · exact seg52Blind_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc
  · exact seg52Blind_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc
  · exact seg52Blind_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc
  · exact seg52Blind_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc
  · exact seg52Blind_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

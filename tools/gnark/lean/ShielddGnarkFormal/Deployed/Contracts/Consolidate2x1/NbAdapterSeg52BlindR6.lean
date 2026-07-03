import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6850 rho ∧ Seg52.relationRow7341 rho ∧ Seg52.relationRow7342 rho ∧ Seg52.relationRow7343 rho ∧ Seg52.relationRow7344 rho ∧ Seg52.relationRow7345 rho := by
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

    _, p91, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6850, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7341, r7342, r7343, r7344, r7345, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6850, r7341, r7342, r7343, r7344, r7345⟩

theorem seg52Blind_rung61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51239 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 61)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      61 (Bool.toZMod bit) (seg52BlindAccState rho 61)
      (seg52BlindAccState rho 62) := by
  obtain ⟨r6850, r7341, r7342, r7343, r7344, r7345⟩ := seg52Blind_rows61 rho h
  unfold Seg52.relationRow6850 at r6850

  unfold Seg52.relationRow7341 at r7341

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7341

  unfold Seg52.relationRow7342 at r7342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7342

  unfold Seg52.relationRow7343 at r7343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7343

  unfold Seg52.relationRow7344 at r7344

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7344

  unfold Seg52.relationRow7345 at r7345

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7345

  have hnextx : seg52BlindDeltaX61 rho =
      seg52BlindDeltaX60 rho + rho 51732 := by
    unfold seg52BlindDeltaX61 seg52BlindDeltaX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 60]

    ring

  have hnexty : seg52BlindDeltaY61 rho =
      seg52BlindDeltaY60 rho + rho 51733 := by
    unfold seg52BlindDeltaY61 seg52BlindDeltaY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 60]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 61
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX60 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY60 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX61 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY61 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung61_wide (rho 51178) (rho 51239) (seg52BlindDeltaX60 rho) (seg52BlindDeltaY60 rho) (rho 51729) (rho 51730) (rho 51731) (rho 51732) (rho 51733) hacc
  · unfold seg52BlindDeltaX60 seg52BlindDeltaY60
    linear_combination r7341
  · unfold seg52BlindDeltaX60 seg52BlindDeltaY60
    linear_combination r7342
  · unfold seg52BlindDeltaX60 seg52BlindDeltaY60
    linear_combination r7343
  · unfold seg52BlindDeltaX60
    linear_combination r7344
  · unfold seg52BlindDeltaY60
    linear_combination r7345
  · linear_combination r6850

theorem seg52Blind_rows62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6851 rho ∧ Seg52.relationRow7346 rho ∧ Seg52.relationRow7347 rho ∧ Seg52.relationRow7348 rho ∧ Seg52.relationRow7349 rho ∧ Seg52.relationRow7350 rho := by
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

    _, p91, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6851, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7346, r7347, r7348, r7349, r7350, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6851, r7346, r7347, r7348, r7349, r7350⟩

theorem seg52Blind_rung62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51240 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 62)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      62 (Bool.toZMod bit) (seg52BlindAccState rho 62)
      (seg52BlindAccState rho 63) := by
  obtain ⟨r6851, r7346, r7347, r7348, r7349, r7350⟩ := seg52Blind_rows62 rho h
  unfold Seg52.relationRow6851 at r6851

  unfold Seg52.relationRow7346 at r7346

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7346

  unfold Seg52.relationRow7347 at r7347

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7347

  unfold Seg52.relationRow7348 at r7348

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7348

  unfold Seg52.relationRow7349 at r7349

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7349

  unfold Seg52.relationRow7350 at r7350

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7350

  have hnextx : seg52BlindDeltaX62 rho =
      seg52BlindDeltaX61 rho + rho 51737 := by
    unfold seg52BlindDeltaX62 seg52BlindDeltaX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 61]

    ring

  have hnexty : seg52BlindDeltaY62 rho =
      seg52BlindDeltaY61 rho + rho 51738 := by
    unfold seg52BlindDeltaY62 seg52BlindDeltaY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 61]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 62
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX61 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY61 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX62 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY62 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung62_wide (rho 51178) (rho 51240) (seg52BlindDeltaX61 rho) (seg52BlindDeltaY61 rho) (rho 51734) (rho 51735) (rho 51736) (rho 51737) (rho 51738) hacc
  · unfold seg52BlindDeltaX61 seg52BlindDeltaY61
    linear_combination r7346
  · unfold seg52BlindDeltaX61 seg52BlindDeltaY61
    linear_combination r7347
  · unfold seg52BlindDeltaX61 seg52BlindDeltaY61
    linear_combination r7348
  · unfold seg52BlindDeltaX61
    linear_combination r7349
  · unfold seg52BlindDeltaY61
    linear_combination r7350
  · linear_combination r6851

theorem seg52Blind_rows63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6852 rho ∧ Seg52.relationRow7351 rho ∧ Seg52.relationRow7352 rho ∧ Seg52.relationRow7353 rho ∧ Seg52.relationRow7354 rho ∧ Seg52.relationRow7355 rho := by
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

    _, p91, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6852, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7351, r7352, r7353, r7354, r7355, _, _, _, _⟩

  exact ⟨r6852, r7351, r7352, r7353, r7354, r7355⟩

theorem seg52Blind_rung63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51241 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 63)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      63 (Bool.toZMod bit) (seg52BlindAccState rho 63)
      (seg52BlindAccState rho 64) := by
  obtain ⟨r6852, r7351, r7352, r7353, r7354, r7355⟩ := seg52Blind_rows63 rho h
  unfold Seg52.relationRow6852 at r6852

  unfold Seg52.relationRow7351 at r7351

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7351

  unfold Seg52.relationRow7352 at r7352

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7352

  unfold Seg52.relationRow7353 at r7353

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7353

  unfold Seg52.relationRow7354 at r7354

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7354

  unfold Seg52.relationRow7355 at r7355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7355

  have hnextx : seg52BlindDeltaX63 rho =
      seg52BlindDeltaX62 rho + rho 51742 := by
    unfold seg52BlindDeltaX63 seg52BlindDeltaX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 62]

    ring

  have hnexty : seg52BlindDeltaY63 rho =
      seg52BlindDeltaY62 rho + rho 51743 := by
    unfold seg52BlindDeltaY63 seg52BlindDeltaY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 62]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 63
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX62 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY62 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX63 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY63 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung63_wide (rho 51178) (rho 51241) (seg52BlindDeltaX62 rho) (seg52BlindDeltaY62 rho) (rho 51739) (rho 51740) (rho 51741) (rho 51742) (rho 51743) hacc
  · unfold seg52BlindDeltaX62 seg52BlindDeltaY62
    linear_combination r7351
  · unfold seg52BlindDeltaX62 seg52BlindDeltaY62
    linear_combination r7352
  · unfold seg52BlindDeltaX62 seg52BlindDeltaY62
    linear_combination r7353
  · unfold seg52BlindDeltaX62
    linear_combination r7354
  · unfold seg52BlindDeltaY62
    linear_combination r7355
  · linear_combination r6852

theorem seg52Blind_rows64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6853 rho ∧ Seg52.relationRow7356 rho ∧ Seg52.relationRow7357 rho ∧ Seg52.relationRow7358 rho ∧ Seg52.relationRow7359 rho ∧ Seg52.relationRow7360 rho := by
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

    _, p91, p92, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6853, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7356, r7357, r7358, r7359⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨r7360, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6853, r7356, r7357, r7358, r7359, r7360⟩

theorem seg52Blind_rung64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51242 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 64)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      64 (Bool.toZMod bit) (seg52BlindAccState rho 64)
      (seg52BlindAccState rho 65) := by
  obtain ⟨r6853, r7356, r7357, r7358, r7359, r7360⟩ := seg52Blind_rows64 rho h
  unfold Seg52.relationRow6853 at r6853

  unfold Seg52.relationRow7356 at r7356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7356

  unfold Seg52.relationRow7357 at r7357

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7357

  unfold Seg52.relationRow7358 at r7358

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7358

  unfold Seg52.relationRow7359 at r7359

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7359

  unfold Seg52.relationRow7360 at r7360

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7360

  have hnextx : seg52BlindDeltaX64 rho =
      seg52BlindDeltaX63 rho + rho 51747 := by
    unfold seg52BlindDeltaX64 seg52BlindDeltaX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 63]

    ring

  have hnexty : seg52BlindDeltaY64 rho =
      seg52BlindDeltaY63 rho + rho 51748 := by
    unfold seg52BlindDeltaY64 seg52BlindDeltaY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 63]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 64
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX63 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY63 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX64 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY64 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung64_wide (rho 51178) (rho 51242) (seg52BlindDeltaX63 rho) (seg52BlindDeltaY63 rho) (rho 51744) (rho 51745) (rho 51746) (rho 51747) (rho 51748) hacc
  · unfold seg52BlindDeltaX63 seg52BlindDeltaY63
    linear_combination r7356
  · unfold seg52BlindDeltaX63 seg52BlindDeltaY63
    linear_combination r7357
  · unfold seg52BlindDeltaX63 seg52BlindDeltaY63
    linear_combination r7358
  · unfold seg52BlindDeltaX63
    linear_combination r7359
  · unfold seg52BlindDeltaY63
    linear_combination r7360
  · linear_combination r6853

theorem seg52Blind_rows65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6854 rho ∧ Seg52.relationRow7361 rho ∧ Seg52.relationRow7362 rho ∧ Seg52.relationRow7363 rho ∧ Seg52.relationRow7364 rho ∧ Seg52.relationRow7365 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6854, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, r7361, r7362, r7363, r7364, r7365, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6854, r7361, r7362, r7363, r7364, r7365⟩

theorem seg52Blind_rung65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51243 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 65)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      65 (Bool.toZMod bit) (seg52BlindAccState rho 65)
      (seg52BlindAccState rho 66) := by
  obtain ⟨r6854, r7361, r7362, r7363, r7364, r7365⟩ := seg52Blind_rows65 rho h
  unfold Seg52.relationRow6854 at r6854

  unfold Seg52.relationRow7361 at r7361

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7361

  unfold Seg52.relationRow7362 at r7362

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7362

  unfold Seg52.relationRow7363 at r7363

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7363

  unfold Seg52.relationRow7364 at r7364

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7364

  unfold Seg52.relationRow7365 at r7365

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7365

  have hnextx : seg52BlindDeltaX65 rho =
      seg52BlindDeltaX64 rho + rho 51752 := by
    unfold seg52BlindDeltaX65 seg52BlindDeltaX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 64]

    ring

  have hnexty : seg52BlindDeltaY65 rho =
      seg52BlindDeltaY64 rho + rho 51753 := by
    unfold seg52BlindDeltaY65 seg52BlindDeltaY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 64]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 65
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX64 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY64 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX65 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY65 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung65_wide (rho 51178) (rho 51243) (seg52BlindDeltaX64 rho) (seg52BlindDeltaY64 rho) (rho 51749) (rho 51750) (rho 51751) (rho 51752) (rho 51753) hacc
  · unfold seg52BlindDeltaX64 seg52BlindDeltaY64
    linear_combination r7361
  · unfold seg52BlindDeltaX64 seg52BlindDeltaY64
    linear_combination r7362
  · unfold seg52BlindDeltaX64 seg52BlindDeltaY64
    linear_combination r7363
  · unfold seg52BlindDeltaX64
    linear_combination r7364
  · unfold seg52BlindDeltaY64
    linear_combination r7365
  · linear_combination r6854

theorem seg52Blind_rows66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6855 rho ∧ Seg52.relationRow7366 rho ∧ Seg52.relationRow7367 rho ∧ Seg52.relationRow7368 rho ∧ Seg52.relationRow7369 rho ∧ Seg52.relationRow7370 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6855, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, r7366, r7367, r7368, r7369, r7370, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6855, r7366, r7367, r7368, r7369, r7370⟩

theorem seg52Blind_rung66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51244 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 66)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      66 (Bool.toZMod bit) (seg52BlindAccState rho 66)
      (seg52BlindAccState rho 67) := by
  obtain ⟨r6855, r7366, r7367, r7368, r7369, r7370⟩ := seg52Blind_rows66 rho h
  unfold Seg52.relationRow6855 at r6855

  unfold Seg52.relationRow7366 at r7366

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7366

  unfold Seg52.relationRow7367 at r7367

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7367

  unfold Seg52.relationRow7368 at r7368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7368

  unfold Seg52.relationRow7369 at r7369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7369

  unfold Seg52.relationRow7370 at r7370

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7370

  have hnextx : seg52BlindDeltaX66 rho =
      seg52BlindDeltaX65 rho + rho 51757 := by
    unfold seg52BlindDeltaX66 seg52BlindDeltaX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 65]

    ring

  have hnexty : seg52BlindDeltaY66 rho =
      seg52BlindDeltaY65 rho + rho 51758 := by
    unfold seg52BlindDeltaY66 seg52BlindDeltaY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 65]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 66
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX65 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY65 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX66 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY66 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung66_wide (rho 51178) (rho 51244) (seg52BlindDeltaX65 rho) (seg52BlindDeltaY65 rho) (rho 51754) (rho 51755) (rho 51756) (rho 51757) (rho 51758) hacc
  · unfold seg52BlindDeltaX65 seg52BlindDeltaY65
    linear_combination r7366
  · unfold seg52BlindDeltaX65 seg52BlindDeltaY65
    linear_combination r7367
  · unfold seg52BlindDeltaX65 seg52BlindDeltaY65
    linear_combination r7368
  · unfold seg52BlindDeltaX65
    linear_combination r7369
  · unfold seg52BlindDeltaY65
    linear_combination r7370
  · linear_combination r6855

theorem seg52Blind_rows67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6856 rho ∧ Seg52.relationRow7371 rho ∧ Seg52.relationRow7372 rho ∧ Seg52.relationRow7373 rho ∧ Seg52.relationRow7374 rho ∧ Seg52.relationRow7375 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6856, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7371, r7372, r7373, r7374, r7375, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6856, r7371, r7372, r7373, r7374, r7375⟩

theorem seg52Blind_rung67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51245 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 67)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      67 (Bool.toZMod bit) (seg52BlindAccState rho 67)
      (seg52BlindAccState rho 68) := by
  obtain ⟨r6856, r7371, r7372, r7373, r7374, r7375⟩ := seg52Blind_rows67 rho h
  unfold Seg52.relationRow6856 at r6856

  unfold Seg52.relationRow7371 at r7371

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7371

  unfold Seg52.relationRow7372 at r7372

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7372

  unfold Seg52.relationRow7373 at r7373

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7373

  unfold Seg52.relationRow7374 at r7374

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7374

  unfold Seg52.relationRow7375 at r7375

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7375

  have hnextx : seg52BlindDeltaX67 rho =
      seg52BlindDeltaX66 rho + rho 51762 := by
    unfold seg52BlindDeltaX67 seg52BlindDeltaX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 66]

    ring

  have hnexty : seg52BlindDeltaY67 rho =
      seg52BlindDeltaY66 rho + rho 51763 := by
    unfold seg52BlindDeltaY67 seg52BlindDeltaY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 66]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 67
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX66 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY66 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX67 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY67 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung67_wide (rho 51178) (rho 51245) (seg52BlindDeltaX66 rho) (seg52BlindDeltaY66 rho) (rho 51759) (rho 51760) (rho 51761) (rho 51762) (rho 51763) hacc
  · unfold seg52BlindDeltaX66 seg52BlindDeltaY66
    linear_combination r7371
  · unfold seg52BlindDeltaX66 seg52BlindDeltaY66
    linear_combination r7372
  · unfold seg52BlindDeltaX66 seg52BlindDeltaY66
    linear_combination r7373
  · unfold seg52BlindDeltaX66
    linear_combination r7374
  · unfold seg52BlindDeltaY66
    linear_combination r7375
  · linear_combination r6856

theorem seg52Blind_rows68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6857 rho ∧ Seg52.relationRow7376 rho ∧ Seg52.relationRow7377 rho ∧ Seg52.relationRow7378 rho ∧ Seg52.relationRow7379 rho ∧ Seg52.relationRow7380 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6857, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7376, r7377, r7378, r7379, r7380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6857, r7376, r7377, r7378, r7379, r7380⟩

theorem seg52Blind_rung68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51246 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 68)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      68 (Bool.toZMod bit) (seg52BlindAccState rho 68)
      (seg52BlindAccState rho 69) := by
  obtain ⟨r6857, r7376, r7377, r7378, r7379, r7380⟩ := seg52Blind_rows68 rho h
  unfold Seg52.relationRow6857 at r6857

  unfold Seg52.relationRow7376 at r7376

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7376

  unfold Seg52.relationRow7377 at r7377

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7377

  unfold Seg52.relationRow7378 at r7378

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7378

  unfold Seg52.relationRow7379 at r7379

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7379

  unfold Seg52.relationRow7380 at r7380

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7380

  have hnextx : seg52BlindDeltaX68 rho =
      seg52BlindDeltaX67 rho + rho 51767 := by
    unfold seg52BlindDeltaX68 seg52BlindDeltaX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 67]

    ring

  have hnexty : seg52BlindDeltaY68 rho =
      seg52BlindDeltaY67 rho + rho 51768 := by
    unfold seg52BlindDeltaY68 seg52BlindDeltaY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 67]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 68
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX67 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY67 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX68 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY68 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung68_wide (rho 51178) (rho 51246) (seg52BlindDeltaX67 rho) (seg52BlindDeltaY67 rho) (rho 51764) (rho 51765) (rho 51766) (rho 51767) (rho 51768) hacc
  · unfold seg52BlindDeltaX67 seg52BlindDeltaY67
    linear_combination r7376
  · unfold seg52BlindDeltaX67 seg52BlindDeltaY67
    linear_combination r7377
  · unfold seg52BlindDeltaX67 seg52BlindDeltaY67
    linear_combination r7378
  · unfold seg52BlindDeltaX67
    linear_combination r7379
  · unfold seg52BlindDeltaY67
    linear_combination r7380
  · linear_combination r6857

theorem seg52Blind_rows69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6858 rho ∧ Seg52.relationRow7381 rho ∧ Seg52.relationRow7382 rho ∧ Seg52.relationRow7383 rho ∧ Seg52.relationRow7384 rho ∧ Seg52.relationRow7385 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7381, r7382, r7383, r7384, r7385, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6858, r7381, r7382, r7383, r7384, r7385⟩

theorem seg52Blind_rung69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51247 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 69)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      69 (Bool.toZMod bit) (seg52BlindAccState rho 69)
      (seg52BlindAccState rho 70) := by
  obtain ⟨r6858, r7381, r7382, r7383, r7384, r7385⟩ := seg52Blind_rows69 rho h
  unfold Seg52.relationRow6858 at r6858

  unfold Seg52.relationRow7381 at r7381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7381

  unfold Seg52.relationRow7382 at r7382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7382

  unfold Seg52.relationRow7383 at r7383

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7383

  unfold Seg52.relationRow7384 at r7384

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7384

  unfold Seg52.relationRow7385 at r7385

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7385

  have hnextx : seg52BlindDeltaX69 rho =
      seg52BlindDeltaX68 rho + rho 51772 := by
    unfold seg52BlindDeltaX69 seg52BlindDeltaX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 68]

    ring

  have hnexty : seg52BlindDeltaY69 rho =
      seg52BlindDeltaY68 rho + rho 51773 := by
    unfold seg52BlindDeltaY69 seg52BlindDeltaY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 68]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 69
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX68 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY68 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX69 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY69 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung69_wide (rho 51178) (rho 51247) (seg52BlindDeltaX68 rho) (seg52BlindDeltaY68 rho) (rho 51769) (rho 51770) (rho 51771) (rho 51772) (rho 51773) hacc
  · unfold seg52BlindDeltaX68 seg52BlindDeltaY68
    linear_combination r7381
  · unfold seg52BlindDeltaX68 seg52BlindDeltaY68
    linear_combination r7382
  · unfold seg52BlindDeltaX68 seg52BlindDeltaY68
    linear_combination r7383
  · unfold seg52BlindDeltaX68
    linear_combination r7384
  · unfold seg52BlindDeltaY68
    linear_combination r7385
  · linear_combination r6858

theorem seg52Blind_rows70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6859 rho ∧ Seg52.relationRow7386 rho ∧ Seg52.relationRow7387 rho ∧ Seg52.relationRow7388 rho ∧ Seg52.relationRow7389 rho ∧ Seg52.relationRow7390 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6859, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart92 at p92

  rcases p92 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7386, r7387, r7388, r7389, r7390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6859, r7386, r7387, r7388, r7389, r7390⟩

theorem seg52Blind_rung70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51248 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 70)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      70 (Bool.toZMod bit) (seg52BlindAccState rho 70)
      (seg52BlindAccState rho 71) := by
  obtain ⟨r6859, r7386, r7387, r7388, r7389, r7390⟩ := seg52Blind_rows70 rho h
  unfold Seg52.relationRow6859 at r6859

  unfold Seg52.relationRow7386 at r7386

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7386

  unfold Seg52.relationRow7387 at r7387

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7387

  unfold Seg52.relationRow7388 at r7388

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7388

  unfold Seg52.relationRow7389 at r7389

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7389

  unfold Seg52.relationRow7390 at r7390

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7390

  have hnextx : seg52BlindDeltaX70 rho =
      seg52BlindDeltaX69 rho + rho 51777 := by
    unfold seg52BlindDeltaX70 seg52BlindDeltaX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 69]

    ring

  have hnexty : seg52BlindDeltaY70 rho =
      seg52BlindDeltaY69 rho + rho 51778 := by
    unfold seg52BlindDeltaY70 seg52BlindDeltaY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 69]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 70
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX69 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY69 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX70 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY70 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung70_wide (rho 51178) (rho 51248) (seg52BlindDeltaX69 rho) (seg52BlindDeltaY69 rho) (rho 51774) (rho 51775) (rho 51776) (rho 51777) (rho 51778) hacc
  · unfold seg52BlindDeltaX69 seg52BlindDeltaY69
    linear_combination r7386
  · unfold seg52BlindDeltaX69 seg52BlindDeltaY69
    linear_combination r7387
  · unfold seg52BlindDeltaX69 seg52BlindDeltaY69
    linear_combination r7388
  · unfold seg52BlindDeltaX69
    linear_combination r7389
  · unfold seg52BlindDeltaY69
    linear_combination r7390
  · linear_combination r6859

theorem seg52Blind_hstep_c6 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 61 ≤ i → i < 71 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc
  · exact seg52Blind_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc
  · exact seg52Blind_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc
  · exact seg52Blind_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc
  · exact seg52Blind_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc
  · exact seg52Blind_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc
  · exact seg52Blind_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc
  · exact seg52Blind_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc
  · exact seg52Blind_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc
  · exact seg52Blind_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

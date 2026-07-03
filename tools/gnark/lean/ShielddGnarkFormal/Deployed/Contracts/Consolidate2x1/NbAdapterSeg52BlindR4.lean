import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6830 rho ∧ Seg52.relationRow7241 rho ∧ Seg52.relationRow7242 rho ∧ Seg52.relationRow7243 rho ∧ Seg52.relationRow7244 rho ∧ Seg52.relationRow7245 rho := by
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

    p90, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6830, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7241, r7242, r7243, r7244, r7245, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6830, r7241, r7242, r7243, r7244, r7245⟩

theorem seg52Blind_rung41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51219 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 41)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      41 (Bool.toZMod bit) (seg52BlindAccState rho 41)
      (seg52BlindAccState rho 42) := by
  obtain ⟨r6830, r7241, r7242, r7243, r7244, r7245⟩ := seg52Blind_rows41 rho h
  unfold Seg52.relationRow6830 at r6830

  unfold Seg52.relationRow7241 at r7241

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7241

  unfold Seg52.relationRow7242 at r7242

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7242

  unfold Seg52.relationRow7243 at r7243

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7243

  unfold Seg52.relationRow7244 at r7244

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7244

  unfold Seg52.relationRow7245 at r7245

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7245

  have hnextx : seg52BlindDeltaX41 rho =
      seg52BlindDeltaX40 rho + rho 51632 := by
    unfold seg52BlindDeltaX41 seg52BlindDeltaX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 40]

    ring

  have hnexty : seg52BlindDeltaY41 rho =
      seg52BlindDeltaY40 rho + rho 51633 := by
    unfold seg52BlindDeltaY41 seg52BlindDeltaY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 40]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 41
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX40 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY40 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX41 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY41 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung41_wide (rho 51178) (rho 51219) (seg52BlindDeltaX40 rho) (seg52BlindDeltaY40 rho) (rho 51629) (rho 51630) (rho 51631) (rho 51632) (rho 51633) hacc
  · unfold seg52BlindDeltaX40 seg52BlindDeltaY40
    linear_combination r7241
  · unfold seg52BlindDeltaX40 seg52BlindDeltaY40
    linear_combination r7242
  · unfold seg52BlindDeltaX40 seg52BlindDeltaY40
    linear_combination r7243
  · unfold seg52BlindDeltaX40
    linear_combination r7244
  · unfold seg52BlindDeltaY40
    linear_combination r7245
  · linear_combination r6830

theorem seg52Blind_rows42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6831 rho ∧ Seg52.relationRow7246 rho ∧ Seg52.relationRow7247 rho ∧ Seg52.relationRow7248 rho ∧ Seg52.relationRow7249 rho ∧ Seg52.relationRow7250 rho := by
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

    p90, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6831, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7246, r7247, r7248, r7249, r7250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6831, r7246, r7247, r7248, r7249, r7250⟩

theorem seg52Blind_rung42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51220 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 42)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      42 (Bool.toZMod bit) (seg52BlindAccState rho 42)
      (seg52BlindAccState rho 43) := by
  obtain ⟨r6831, r7246, r7247, r7248, r7249, r7250⟩ := seg52Blind_rows42 rho h
  unfold Seg52.relationRow6831 at r6831

  unfold Seg52.relationRow7246 at r7246

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7246

  unfold Seg52.relationRow7247 at r7247

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7247

  unfold Seg52.relationRow7248 at r7248

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7248

  unfold Seg52.relationRow7249 at r7249

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7249

  unfold Seg52.relationRow7250 at r7250

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7250

  have hnextx : seg52BlindDeltaX42 rho =
      seg52BlindDeltaX41 rho + rho 51637 := by
    unfold seg52BlindDeltaX42 seg52BlindDeltaX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 41]

    ring

  have hnexty : seg52BlindDeltaY42 rho =
      seg52BlindDeltaY41 rho + rho 51638 := by
    unfold seg52BlindDeltaY42 seg52BlindDeltaY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 41]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 42
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX41 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY41 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX42 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY42 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung42_wide (rho 51178) (rho 51220) (seg52BlindDeltaX41 rho) (seg52BlindDeltaY41 rho) (rho 51634) (rho 51635) (rho 51636) (rho 51637) (rho 51638) hacc
  · unfold seg52BlindDeltaX41 seg52BlindDeltaY41
    linear_combination r7246
  · unfold seg52BlindDeltaX41 seg52BlindDeltaY41
    linear_combination r7247
  · unfold seg52BlindDeltaX41 seg52BlindDeltaY41
    linear_combination r7248
  · unfold seg52BlindDeltaX41
    linear_combination r7249
  · unfold seg52BlindDeltaY41
    linear_combination r7250
  · linear_combination r6831

theorem seg52Blind_rows43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6832 rho ∧ Seg52.relationRow7251 rho ∧ Seg52.relationRow7252 rho ∧ Seg52.relationRow7253 rho ∧ Seg52.relationRow7254 rho ∧ Seg52.relationRow7255 rho := by
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

    p90, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6832, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7251, r7252, r7253, r7254, r7255, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6832, r7251, r7252, r7253, r7254, r7255⟩

theorem seg52Blind_rung43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51221 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 43)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      43 (Bool.toZMod bit) (seg52BlindAccState rho 43)
      (seg52BlindAccState rho 44) := by
  obtain ⟨r6832, r7251, r7252, r7253, r7254, r7255⟩ := seg52Blind_rows43 rho h
  unfold Seg52.relationRow6832 at r6832

  unfold Seg52.relationRow7251 at r7251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7251

  unfold Seg52.relationRow7252 at r7252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7252

  unfold Seg52.relationRow7253 at r7253

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7253

  unfold Seg52.relationRow7254 at r7254

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7254

  unfold Seg52.relationRow7255 at r7255

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7255

  have hnextx : seg52BlindDeltaX43 rho =
      seg52BlindDeltaX42 rho + rho 51642 := by
    unfold seg52BlindDeltaX43 seg52BlindDeltaX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 42]

    ring

  have hnexty : seg52BlindDeltaY43 rho =
      seg52BlindDeltaY42 rho + rho 51643 := by
    unfold seg52BlindDeltaY43 seg52BlindDeltaY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 42]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 43
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX42 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY42 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX43 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY43 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung43_wide (rho 51178) (rho 51221) (seg52BlindDeltaX42 rho) (seg52BlindDeltaY42 rho) (rho 51639) (rho 51640) (rho 51641) (rho 51642) (rho 51643) hacc
  · unfold seg52BlindDeltaX42 seg52BlindDeltaY42
    linear_combination r7251
  · unfold seg52BlindDeltaX42 seg52BlindDeltaY42
    linear_combination r7252
  · unfold seg52BlindDeltaX42 seg52BlindDeltaY42
    linear_combination r7253
  · unfold seg52BlindDeltaX42
    linear_combination r7254
  · unfold seg52BlindDeltaY42
    linear_combination r7255
  · linear_combination r6832

theorem seg52Blind_rows44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6833 rho ∧ Seg52.relationRow7256 rho ∧ Seg52.relationRow7257 rho ∧ Seg52.relationRow7258 rho ∧ Seg52.relationRow7259 rho ∧ Seg52.relationRow7260 rho := by
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

    p90, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6833, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7256, r7257, r7258, r7259, r7260, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6833, r7256, r7257, r7258, r7259, r7260⟩

theorem seg52Blind_rung44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51222 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 44)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      44 (Bool.toZMod bit) (seg52BlindAccState rho 44)
      (seg52BlindAccState rho 45) := by
  obtain ⟨r6833, r7256, r7257, r7258, r7259, r7260⟩ := seg52Blind_rows44 rho h
  unfold Seg52.relationRow6833 at r6833

  unfold Seg52.relationRow7256 at r7256

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7256

  unfold Seg52.relationRow7257 at r7257

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7257

  unfold Seg52.relationRow7258 at r7258

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7258

  unfold Seg52.relationRow7259 at r7259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7259

  unfold Seg52.relationRow7260 at r7260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7260

  have hnextx : seg52BlindDeltaX44 rho =
      seg52BlindDeltaX43 rho + rho 51647 := by
    unfold seg52BlindDeltaX44 seg52BlindDeltaX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 43]

    ring

  have hnexty : seg52BlindDeltaY44 rho =
      seg52BlindDeltaY43 rho + rho 51648 := by
    unfold seg52BlindDeltaY44 seg52BlindDeltaY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 43]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 44
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX43 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY43 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX44 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY44 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung44_wide (rho 51178) (rho 51222) (seg52BlindDeltaX43 rho) (seg52BlindDeltaY43 rho) (rho 51644) (rho 51645) (rho 51646) (rho 51647) (rho 51648) hacc
  · unfold seg52BlindDeltaX43 seg52BlindDeltaY43
    linear_combination r7256
  · unfold seg52BlindDeltaX43 seg52BlindDeltaY43
    linear_combination r7257
  · unfold seg52BlindDeltaX43 seg52BlindDeltaY43
    linear_combination r7258
  · unfold seg52BlindDeltaX43
    linear_combination r7259
  · unfold seg52BlindDeltaY43
    linear_combination r7260
  · linear_combination r6833

theorem seg52Blind_rows45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6834 rho ∧ Seg52.relationRow7261 rho ∧ Seg52.relationRow7262 rho ∧ Seg52.relationRow7263 rho ∧ Seg52.relationRow7264 rho ∧ Seg52.relationRow7265 rho := by
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

    p90, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6834, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7261, r7262, r7263, r7264, r7265, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6834, r7261, r7262, r7263, r7264, r7265⟩

theorem seg52Blind_rung45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51223 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 45)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      45 (Bool.toZMod bit) (seg52BlindAccState rho 45)
      (seg52BlindAccState rho 46) := by
  obtain ⟨r6834, r7261, r7262, r7263, r7264, r7265⟩ := seg52Blind_rows45 rho h
  unfold Seg52.relationRow6834 at r6834

  unfold Seg52.relationRow7261 at r7261

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7261

  unfold Seg52.relationRow7262 at r7262

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7262

  unfold Seg52.relationRow7263 at r7263

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7263

  unfold Seg52.relationRow7264 at r7264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7264

  unfold Seg52.relationRow7265 at r7265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7265

  have hnextx : seg52BlindDeltaX45 rho =
      seg52BlindDeltaX44 rho + rho 51652 := by
    unfold seg52BlindDeltaX45 seg52BlindDeltaX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 44]

    ring

  have hnexty : seg52BlindDeltaY45 rho =
      seg52BlindDeltaY44 rho + rho 51653 := by
    unfold seg52BlindDeltaY45 seg52BlindDeltaY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 44]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 45
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX44 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY44 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX45 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY45 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung45_wide (rho 51178) (rho 51223) (seg52BlindDeltaX44 rho) (seg52BlindDeltaY44 rho) (rho 51649) (rho 51650) (rho 51651) (rho 51652) (rho 51653) hacc
  · unfold seg52BlindDeltaX44 seg52BlindDeltaY44
    linear_combination r7261
  · unfold seg52BlindDeltaX44 seg52BlindDeltaY44
    linear_combination r7262
  · unfold seg52BlindDeltaX44 seg52BlindDeltaY44
    linear_combination r7263
  · unfold seg52BlindDeltaX44
    linear_combination r7264
  · unfold seg52BlindDeltaY44
    linear_combination r7265
  · linear_combination r6834

theorem seg52Blind_rows46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6835 rho ∧ Seg52.relationRow7266 rho ∧ Seg52.relationRow7267 rho ∧ Seg52.relationRow7268 rho ∧ Seg52.relationRow7269 rho ∧ Seg52.relationRow7270 rho := by
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

    p90, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6835, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7266, r7267, r7268, r7269, r7270, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6835, r7266, r7267, r7268, r7269, r7270⟩

theorem seg52Blind_rung46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51224 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 46)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      46 (Bool.toZMod bit) (seg52BlindAccState rho 46)
      (seg52BlindAccState rho 47) := by
  obtain ⟨r6835, r7266, r7267, r7268, r7269, r7270⟩ := seg52Blind_rows46 rho h
  unfold Seg52.relationRow6835 at r6835

  unfold Seg52.relationRow7266 at r7266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7266

  unfold Seg52.relationRow7267 at r7267

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7267

  unfold Seg52.relationRow7268 at r7268

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7268

  unfold Seg52.relationRow7269 at r7269

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7269

  unfold Seg52.relationRow7270 at r7270

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7270

  have hnextx : seg52BlindDeltaX46 rho =
      seg52BlindDeltaX45 rho + rho 51657 := by
    unfold seg52BlindDeltaX46 seg52BlindDeltaX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 45]

    ring

  have hnexty : seg52BlindDeltaY46 rho =
      seg52BlindDeltaY45 rho + rho 51658 := by
    unfold seg52BlindDeltaY46 seg52BlindDeltaY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 45]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 46
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX45 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY45 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX46 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY46 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung46_wide (rho 51178) (rho 51224) (seg52BlindDeltaX45 rho) (seg52BlindDeltaY45 rho) (rho 51654) (rho 51655) (rho 51656) (rho 51657) (rho 51658) hacc
  · unfold seg52BlindDeltaX45 seg52BlindDeltaY45
    linear_combination r7266
  · unfold seg52BlindDeltaX45 seg52BlindDeltaY45
    linear_combination r7267
  · unfold seg52BlindDeltaX45 seg52BlindDeltaY45
    linear_combination r7268
  · unfold seg52BlindDeltaX45
    linear_combination r7269
  · unfold seg52BlindDeltaY45
    linear_combination r7270
  · linear_combination r6835

theorem seg52Blind_rows47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6836 rho ∧ Seg52.relationRow7271 rho ∧ Seg52.relationRow7272 rho ∧ Seg52.relationRow7273 rho ∧ Seg52.relationRow7274 rho ∧ Seg52.relationRow7275 rho := by
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

    p90, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6836, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7271, r7272, r7273, r7274, r7275, _, _, _, _⟩

  exact ⟨r6836, r7271, r7272, r7273, r7274, r7275⟩

theorem seg52Blind_rung47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51225 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 47)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      47 (Bool.toZMod bit) (seg52BlindAccState rho 47)
      (seg52BlindAccState rho 48) := by
  obtain ⟨r6836, r7271, r7272, r7273, r7274, r7275⟩ := seg52Blind_rows47 rho h
  unfold Seg52.relationRow6836 at r6836

  unfold Seg52.relationRow7271 at r7271

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7271

  unfold Seg52.relationRow7272 at r7272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7272

  unfold Seg52.relationRow7273 at r7273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7273

  unfold Seg52.relationRow7274 at r7274

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7274

  unfold Seg52.relationRow7275 at r7275

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7275

  have hnextx : seg52BlindDeltaX47 rho =
      seg52BlindDeltaX46 rho + rho 51662 := by
    unfold seg52BlindDeltaX47 seg52BlindDeltaX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 46]

    ring

  have hnexty : seg52BlindDeltaY47 rho =
      seg52BlindDeltaY46 rho + rho 51663 := by
    unfold seg52BlindDeltaY47 seg52BlindDeltaY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 46]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 47
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX46 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY46 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX47 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY47 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung47_wide (rho 51178) (rho 51225) (seg52BlindDeltaX46 rho) (seg52BlindDeltaY46 rho) (rho 51659) (rho 51660) (rho 51661) (rho 51662) (rho 51663) hacc
  · unfold seg52BlindDeltaX46 seg52BlindDeltaY46
    linear_combination r7271
  · unfold seg52BlindDeltaX46 seg52BlindDeltaY46
    linear_combination r7272
  · unfold seg52BlindDeltaX46 seg52BlindDeltaY46
    linear_combination r7273
  · unfold seg52BlindDeltaX46
    linear_combination r7274
  · unfold seg52BlindDeltaY46
    linear_combination r7275
  · linear_combination r6836

theorem seg52Blind_rows48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6837 rho ∧ Seg52.relationRow7276 rho ∧ Seg52.relationRow7277 rho ∧ Seg52.relationRow7278 rho ∧ Seg52.relationRow7279 rho ∧ Seg52.relationRow7280 rho := by
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

    p90, p91, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6837, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7276, r7277, r7278, r7279⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨r7280, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6837, r7276, r7277, r7278, r7279, r7280⟩

theorem seg52Blind_rung48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51226 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 48)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      48 (Bool.toZMod bit) (seg52BlindAccState rho 48)
      (seg52BlindAccState rho 49) := by
  obtain ⟨r6837, r7276, r7277, r7278, r7279, r7280⟩ := seg52Blind_rows48 rho h
  unfold Seg52.relationRow6837 at r6837

  unfold Seg52.relationRow7276 at r7276

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7276

  unfold Seg52.relationRow7277 at r7277

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7277

  unfold Seg52.relationRow7278 at r7278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7278

  unfold Seg52.relationRow7279 at r7279

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7279

  unfold Seg52.relationRow7280 at r7280

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7280

  have hnextx : seg52BlindDeltaX48 rho =
      seg52BlindDeltaX47 rho + rho 51667 := by
    unfold seg52BlindDeltaX48 seg52BlindDeltaX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 47]

    ring

  have hnexty : seg52BlindDeltaY48 rho =
      seg52BlindDeltaY47 rho + rho 51668 := by
    unfold seg52BlindDeltaY48 seg52BlindDeltaY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 47]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 48
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX47 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY47 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX48 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY48 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung48_wide (rho 51178) (rho 51226) (seg52BlindDeltaX47 rho) (seg52BlindDeltaY47 rho) (rho 51664) (rho 51665) (rho 51666) (rho 51667) (rho 51668) hacc
  · unfold seg52BlindDeltaX47 seg52BlindDeltaY47
    linear_combination r7276
  · unfold seg52BlindDeltaX47 seg52BlindDeltaY47
    linear_combination r7277
  · unfold seg52BlindDeltaX47 seg52BlindDeltaY47
    linear_combination r7278
  · unfold seg52BlindDeltaX47
    linear_combination r7279
  · unfold seg52BlindDeltaY47
    linear_combination r7280
  · linear_combination r6837

theorem seg52Blind_rows49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6838 rho ∧ Seg52.relationRow7281 rho ∧ Seg52.relationRow7282 rho ∧ Seg52.relationRow7283 rho ∧ Seg52.relationRow7284 rho ∧ Seg52.relationRow7285 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6838, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, r7281, r7282, r7283, r7284, r7285, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6838, r7281, r7282, r7283, r7284, r7285⟩

theorem seg52Blind_rung49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51227 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 49)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      49 (Bool.toZMod bit) (seg52BlindAccState rho 49)
      (seg52BlindAccState rho 50) := by
  obtain ⟨r6838, r7281, r7282, r7283, r7284, r7285⟩ := seg52Blind_rows49 rho h
  unfold Seg52.relationRow6838 at r6838

  unfold Seg52.relationRow7281 at r7281

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7281

  unfold Seg52.relationRow7282 at r7282

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7282

  unfold Seg52.relationRow7283 at r7283

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7283

  unfold Seg52.relationRow7284 at r7284

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7284

  unfold Seg52.relationRow7285 at r7285

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7285

  have hnextx : seg52BlindDeltaX49 rho =
      seg52BlindDeltaX48 rho + rho 51672 := by
    unfold seg52BlindDeltaX49 seg52BlindDeltaX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 48]

    ring

  have hnexty : seg52BlindDeltaY49 rho =
      seg52BlindDeltaY48 rho + rho 51673 := by
    unfold seg52BlindDeltaY49 seg52BlindDeltaY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 48]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 49
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX48 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY48 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX49 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY49 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung49_wide (rho 51178) (rho 51227) (seg52BlindDeltaX48 rho) (seg52BlindDeltaY48 rho) (rho 51669) (rho 51670) (rho 51671) (rho 51672) (rho 51673) hacc
  · unfold seg52BlindDeltaX48 seg52BlindDeltaY48
    linear_combination r7281
  · unfold seg52BlindDeltaX48 seg52BlindDeltaY48
    linear_combination r7282
  · unfold seg52BlindDeltaX48 seg52BlindDeltaY48
    linear_combination r7283
  · unfold seg52BlindDeltaX48
    linear_combination r7284
  · unfold seg52BlindDeltaY48
    linear_combination r7285
  · linear_combination r6838

theorem seg52Blind_rows50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6839 rho ∧ Seg52.relationRow7286 rho ∧ Seg52.relationRow7287 rho ∧ Seg52.relationRow7288 rho ∧ Seg52.relationRow7289 rho ∧ Seg52.relationRow7290 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6839, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, r7286, r7287, r7288, r7289, r7290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6839, r7286, r7287, r7288, r7289, r7290⟩

theorem seg52Blind_rung50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51228 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 50)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      50 (Bool.toZMod bit) (seg52BlindAccState rho 50)
      (seg52BlindAccState rho 51) := by
  obtain ⟨r6839, r7286, r7287, r7288, r7289, r7290⟩ := seg52Blind_rows50 rho h
  unfold Seg52.relationRow6839 at r6839

  unfold Seg52.relationRow7286 at r7286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7286

  unfold Seg52.relationRow7287 at r7287

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7287

  unfold Seg52.relationRow7288 at r7288

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7288

  unfold Seg52.relationRow7289 at r7289

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7289

  unfold Seg52.relationRow7290 at r7290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7290

  have hnextx : seg52BlindDeltaX50 rho =
      seg52BlindDeltaX49 rho + rho 51677 := by
    unfold seg52BlindDeltaX50 seg52BlindDeltaX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 49]

    ring

  have hnexty : seg52BlindDeltaY50 rho =
      seg52BlindDeltaY49 rho + rho 51678 := by
    unfold seg52BlindDeltaY50 seg52BlindDeltaY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 49]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 50
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX49 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY49 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX50 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY50 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung50_wide (rho 51178) (rho 51228) (seg52BlindDeltaX49 rho) (seg52BlindDeltaY49 rho) (rho 51674) (rho 51675) (rho 51676) (rho 51677) (rho 51678) hacc
  · unfold seg52BlindDeltaX49 seg52BlindDeltaY49
    linear_combination r7286
  · unfold seg52BlindDeltaX49 seg52BlindDeltaY49
    linear_combination r7287
  · unfold seg52BlindDeltaX49 seg52BlindDeltaY49
    linear_combination r7288
  · unfold seg52BlindDeltaX49
    linear_combination r7289
  · unfold seg52BlindDeltaY49
    linear_combination r7290
  · linear_combination r6839

theorem seg52Blind_hstep_c4 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 41 ≤ i → i < 51 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc
  · exact seg52Blind_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc
  · exact seg52Blind_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc
  · exact seg52Blind_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc
  · exact seg52Blind_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc
  · exact seg52Blind_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc
  · exact seg52Blind_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc
  · exact seg52Blind_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc
  · exact seg52Blind_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc
  · exact seg52Blind_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

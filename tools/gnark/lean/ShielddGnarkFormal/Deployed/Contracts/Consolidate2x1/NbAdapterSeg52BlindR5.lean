import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6840 rho ∧ Seg52.relationRow7291 rho ∧ Seg52.relationRow7292 rho ∧ Seg52.relationRow7293 rho ∧ Seg52.relationRow7294 rho ∧ Seg52.relationRow7295 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6840, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7291, r7292, r7293, r7294, r7295, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6840, r7291, r7292, r7293, r7294, r7295⟩

theorem seg52Blind_rung51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51229 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 51)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      51 (Bool.toZMod bit) (seg52BlindAccState rho 51)
      (seg52BlindAccState rho 52) := by
  obtain ⟨r6840, r7291, r7292, r7293, r7294, r7295⟩ := seg52Blind_rows51 rho h
  unfold Seg52.relationRow6840 at r6840

  unfold Seg52.relationRow7291 at r7291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7291

  unfold Seg52.relationRow7292 at r7292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7292

  unfold Seg52.relationRow7293 at r7293

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7293

  unfold Seg52.relationRow7294 at r7294

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7294

  unfold Seg52.relationRow7295 at r7295

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7295

  have hnextx : seg52BlindDeltaX51 rho =
      seg52BlindDeltaX50 rho + rho 51682 := by
    unfold seg52BlindDeltaX51 seg52BlindDeltaX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 50]

    ring

  have hnexty : seg52BlindDeltaY51 rho =
      seg52BlindDeltaY50 rho + rho 51683 := by
    unfold seg52BlindDeltaY51 seg52BlindDeltaY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 50]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 51
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX50 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY50 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX51 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY51 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung51_wide (rho 51178) (rho 51229) (seg52BlindDeltaX50 rho) (seg52BlindDeltaY50 rho) (rho 51679) (rho 51680) (rho 51681) (rho 51682) (rho 51683) hacc
  · unfold seg52BlindDeltaX50 seg52BlindDeltaY50
    linear_combination r7291
  · unfold seg52BlindDeltaX50 seg52BlindDeltaY50
    linear_combination r7292
  · unfold seg52BlindDeltaX50 seg52BlindDeltaY50
    linear_combination r7293
  · unfold seg52BlindDeltaX50
    linear_combination r7294
  · unfold seg52BlindDeltaY50
    linear_combination r7295
  · linear_combination r6840

theorem seg52Blind_rows52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6841 rho ∧ Seg52.relationRow7296 rho ∧ Seg52.relationRow7297 rho ∧ Seg52.relationRow7298 rho ∧ Seg52.relationRow7299 rho ∧ Seg52.relationRow7300 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6841, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7296, r7297, r7298, r7299, r7300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6841, r7296, r7297, r7298, r7299, r7300⟩

theorem seg52Blind_rung52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51230 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 52)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      52 (Bool.toZMod bit) (seg52BlindAccState rho 52)
      (seg52BlindAccState rho 53) := by
  obtain ⟨r6841, r7296, r7297, r7298, r7299, r7300⟩ := seg52Blind_rows52 rho h
  unfold Seg52.relationRow6841 at r6841

  unfold Seg52.relationRow7296 at r7296

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7296

  unfold Seg52.relationRow7297 at r7297

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7297

  unfold Seg52.relationRow7298 at r7298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7298

  unfold Seg52.relationRow7299 at r7299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7299

  unfold Seg52.relationRow7300 at r7300

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7300

  have hnextx : seg52BlindDeltaX52 rho =
      seg52BlindDeltaX51 rho + rho 51687 := by
    unfold seg52BlindDeltaX52 seg52BlindDeltaX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 51]

    ring

  have hnexty : seg52BlindDeltaY52 rho =
      seg52BlindDeltaY51 rho + rho 51688 := by
    unfold seg52BlindDeltaY52 seg52BlindDeltaY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 51]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 52
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX51 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY51 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX52 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY52 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung52_wide (rho 51178) (rho 51230) (seg52BlindDeltaX51 rho) (seg52BlindDeltaY51 rho) (rho 51684) (rho 51685) (rho 51686) (rho 51687) (rho 51688) hacc
  · unfold seg52BlindDeltaX51 seg52BlindDeltaY51
    linear_combination r7296
  · unfold seg52BlindDeltaX51 seg52BlindDeltaY51
    linear_combination r7297
  · unfold seg52BlindDeltaX51 seg52BlindDeltaY51
    linear_combination r7298
  · unfold seg52BlindDeltaX51
    linear_combination r7299
  · unfold seg52BlindDeltaY51
    linear_combination r7300
  · linear_combination r6841

theorem seg52Blind_rows53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6842 rho ∧ Seg52.relationRow7301 rho ∧ Seg52.relationRow7302 rho ∧ Seg52.relationRow7303 rho ∧ Seg52.relationRow7304 rho ∧ Seg52.relationRow7305 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6842, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7301, r7302, r7303, r7304, r7305, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6842, r7301, r7302, r7303, r7304, r7305⟩

theorem seg52Blind_rung53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51231 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 53)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      53 (Bool.toZMod bit) (seg52BlindAccState rho 53)
      (seg52BlindAccState rho 54) := by
  obtain ⟨r6842, r7301, r7302, r7303, r7304, r7305⟩ := seg52Blind_rows53 rho h
  unfold Seg52.relationRow6842 at r6842

  unfold Seg52.relationRow7301 at r7301

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7301

  unfold Seg52.relationRow7302 at r7302

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7302

  unfold Seg52.relationRow7303 at r7303

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7303

  unfold Seg52.relationRow7304 at r7304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7304

  unfold Seg52.relationRow7305 at r7305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7305

  have hnextx : seg52BlindDeltaX53 rho =
      seg52BlindDeltaX52 rho + rho 51692 := by
    unfold seg52BlindDeltaX53 seg52BlindDeltaX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 52]

    ring

  have hnexty : seg52BlindDeltaY53 rho =
      seg52BlindDeltaY52 rho + rho 51693 := by
    unfold seg52BlindDeltaY53 seg52BlindDeltaY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 52]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 53
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX52 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY52 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX53 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY53 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung53_wide (rho 51178) (rho 51231) (seg52BlindDeltaX52 rho) (seg52BlindDeltaY52 rho) (rho 51689) (rho 51690) (rho 51691) (rho 51692) (rho 51693) hacc
  · unfold seg52BlindDeltaX52 seg52BlindDeltaY52
    linear_combination r7301
  · unfold seg52BlindDeltaX52 seg52BlindDeltaY52
    linear_combination r7302
  · unfold seg52BlindDeltaX52 seg52BlindDeltaY52
    linear_combination r7303
  · unfold seg52BlindDeltaX52
    linear_combination r7304
  · unfold seg52BlindDeltaY52
    linear_combination r7305
  · linear_combination r6842

theorem seg52Blind_rows54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6843 rho ∧ Seg52.relationRow7306 rho ∧ Seg52.relationRow7307 rho ∧ Seg52.relationRow7308 rho ∧ Seg52.relationRow7309 rho ∧ Seg52.relationRow7310 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7306, r7307, r7308, r7309, r7310, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6843, r7306, r7307, r7308, r7309, r7310⟩

theorem seg52Blind_rung54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51232 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 54)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      54 (Bool.toZMod bit) (seg52BlindAccState rho 54)
      (seg52BlindAccState rho 55) := by
  obtain ⟨r6843, r7306, r7307, r7308, r7309, r7310⟩ := seg52Blind_rows54 rho h
  unfold Seg52.relationRow6843 at r6843

  unfold Seg52.relationRow7306 at r7306

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7306

  unfold Seg52.relationRow7307 at r7307

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7307

  unfold Seg52.relationRow7308 at r7308

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7308

  unfold Seg52.relationRow7309 at r7309

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7309

  unfold Seg52.relationRow7310 at r7310

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7310

  have hnextx : seg52BlindDeltaX54 rho =
      seg52BlindDeltaX53 rho + rho 51697 := by
    unfold seg52BlindDeltaX54 seg52BlindDeltaX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 53]

    ring

  have hnexty : seg52BlindDeltaY54 rho =
      seg52BlindDeltaY53 rho + rho 51698 := by
    unfold seg52BlindDeltaY54 seg52BlindDeltaY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 53]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 54
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX53 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY53 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX54 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY54 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung54_wide (rho 51178) (rho 51232) (seg52BlindDeltaX53 rho) (seg52BlindDeltaY53 rho) (rho 51694) (rho 51695) (rho 51696) (rho 51697) (rho 51698) hacc
  · unfold seg52BlindDeltaX53 seg52BlindDeltaY53
    linear_combination r7306
  · unfold seg52BlindDeltaX53 seg52BlindDeltaY53
    linear_combination r7307
  · unfold seg52BlindDeltaX53 seg52BlindDeltaY53
    linear_combination r7308
  · unfold seg52BlindDeltaX53
    linear_combination r7309
  · unfold seg52BlindDeltaY53
    linear_combination r7310
  · linear_combination r6843

theorem seg52Blind_rows55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6844 rho ∧ Seg52.relationRow7311 rho ∧ Seg52.relationRow7312 rho ∧ Seg52.relationRow7313 rho ∧ Seg52.relationRow7314 rho ∧ Seg52.relationRow7315 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6844, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7311, r7312, r7313, r7314, r7315, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6844, r7311, r7312, r7313, r7314, r7315⟩

theorem seg52Blind_rung55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51233 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 55)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      55 (Bool.toZMod bit) (seg52BlindAccState rho 55)
      (seg52BlindAccState rho 56) := by
  obtain ⟨r6844, r7311, r7312, r7313, r7314, r7315⟩ := seg52Blind_rows55 rho h
  unfold Seg52.relationRow6844 at r6844

  unfold Seg52.relationRow7311 at r7311

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7311

  unfold Seg52.relationRow7312 at r7312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7312

  unfold Seg52.relationRow7313 at r7313

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7313

  unfold Seg52.relationRow7314 at r7314

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7314

  unfold Seg52.relationRow7315 at r7315

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7315

  have hnextx : seg52BlindDeltaX55 rho =
      seg52BlindDeltaX54 rho + rho 51702 := by
    unfold seg52BlindDeltaX55 seg52BlindDeltaX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 54]

    ring

  have hnexty : seg52BlindDeltaY55 rho =
      seg52BlindDeltaY54 rho + rho 51703 := by
    unfold seg52BlindDeltaY55 seg52BlindDeltaY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 54]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 55
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX54 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY54 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX55 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY55 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung55_wide (rho 51178) (rho 51233) (seg52BlindDeltaX54 rho) (seg52BlindDeltaY54 rho) (rho 51699) (rho 51700) (rho 51701) (rho 51702) (rho 51703) hacc
  · unfold seg52BlindDeltaX54 seg52BlindDeltaY54
    linear_combination r7311
  · unfold seg52BlindDeltaX54 seg52BlindDeltaY54
    linear_combination r7312
  · unfold seg52BlindDeltaX54 seg52BlindDeltaY54
    linear_combination r7313
  · unfold seg52BlindDeltaX54
    linear_combination r7314
  · unfold seg52BlindDeltaY54
    linear_combination r7315
  · linear_combination r6844

theorem seg52Blind_rows56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6845 rho ∧ Seg52.relationRow7316 rho ∧ Seg52.relationRow7317 rho ∧ Seg52.relationRow7318 rho ∧ Seg52.relationRow7319 rho ∧ Seg52.relationRow7320 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6845, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7316, r7317, r7318, r7319, r7320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6845, r7316, r7317, r7318, r7319, r7320⟩

theorem seg52Blind_rung56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51234 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 56)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      56 (Bool.toZMod bit) (seg52BlindAccState rho 56)
      (seg52BlindAccState rho 57) := by
  obtain ⟨r6845, r7316, r7317, r7318, r7319, r7320⟩ := seg52Blind_rows56 rho h
  unfold Seg52.relationRow6845 at r6845

  unfold Seg52.relationRow7316 at r7316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7316

  unfold Seg52.relationRow7317 at r7317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7317

  unfold Seg52.relationRow7318 at r7318

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7318

  unfold Seg52.relationRow7319 at r7319

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7319

  unfold Seg52.relationRow7320 at r7320

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7320

  have hnextx : seg52BlindDeltaX56 rho =
      seg52BlindDeltaX55 rho + rho 51707 := by
    unfold seg52BlindDeltaX56 seg52BlindDeltaX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 55]

    ring

  have hnexty : seg52BlindDeltaY56 rho =
      seg52BlindDeltaY55 rho + rho 51708 := by
    unfold seg52BlindDeltaY56 seg52BlindDeltaY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 55]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 56
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX55 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY55 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX56 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY56 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung56_wide (rho 51178) (rho 51234) (seg52BlindDeltaX55 rho) (seg52BlindDeltaY55 rho) (rho 51704) (rho 51705) (rho 51706) (rho 51707) (rho 51708) hacc
  · unfold seg52BlindDeltaX55 seg52BlindDeltaY55
    linear_combination r7316
  · unfold seg52BlindDeltaX55 seg52BlindDeltaY55
    linear_combination r7317
  · unfold seg52BlindDeltaX55 seg52BlindDeltaY55
    linear_combination r7318
  · unfold seg52BlindDeltaX55
    linear_combination r7319
  · unfold seg52BlindDeltaY55
    linear_combination r7320
  · linear_combination r6845

theorem seg52Blind_rows57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6846 rho ∧ Seg52.relationRow7321 rho ∧ Seg52.relationRow7322 rho ∧ Seg52.relationRow7323 rho ∧ Seg52.relationRow7324 rho ∧ Seg52.relationRow7325 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6846, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7321, r7322, r7323, r7324, r7325, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6846, r7321, r7322, r7323, r7324, r7325⟩

theorem seg52Blind_rung57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51235 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 57)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      57 (Bool.toZMod bit) (seg52BlindAccState rho 57)
      (seg52BlindAccState rho 58) := by
  obtain ⟨r6846, r7321, r7322, r7323, r7324, r7325⟩ := seg52Blind_rows57 rho h
  unfold Seg52.relationRow6846 at r6846

  unfold Seg52.relationRow7321 at r7321

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7321

  unfold Seg52.relationRow7322 at r7322

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7322

  unfold Seg52.relationRow7323 at r7323

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7323

  unfold Seg52.relationRow7324 at r7324

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7324

  unfold Seg52.relationRow7325 at r7325

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7325

  have hnextx : seg52BlindDeltaX57 rho =
      seg52BlindDeltaX56 rho + rho 51712 := by
    unfold seg52BlindDeltaX57 seg52BlindDeltaX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 56]

    ring

  have hnexty : seg52BlindDeltaY57 rho =
      seg52BlindDeltaY56 rho + rho 51713 := by
    unfold seg52BlindDeltaY57 seg52BlindDeltaY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 56]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 57
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX56 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY56 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX57 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY57 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung57_wide (rho 51178) (rho 51235) (seg52BlindDeltaX56 rho) (seg52BlindDeltaY56 rho) (rho 51709) (rho 51710) (rho 51711) (rho 51712) (rho 51713) hacc
  · unfold seg52BlindDeltaX56 seg52BlindDeltaY56
    linear_combination r7321
  · unfold seg52BlindDeltaX56 seg52BlindDeltaY56
    linear_combination r7322
  · unfold seg52BlindDeltaX56 seg52BlindDeltaY56
    linear_combination r7323
  · unfold seg52BlindDeltaX56
    linear_combination r7324
  · unfold seg52BlindDeltaY56
    linear_combination r7325
  · linear_combination r6846

theorem seg52Blind_rows58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6847 rho ∧ Seg52.relationRow7326 rho ∧ Seg52.relationRow7327 rho ∧ Seg52.relationRow7328 rho ∧ Seg52.relationRow7329 rho ∧ Seg52.relationRow7330 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7326, r7327, r7328, r7329, r7330, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6847, r7326, r7327, r7328, r7329, r7330⟩

theorem seg52Blind_rung58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51236 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 58)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      58 (Bool.toZMod bit) (seg52BlindAccState rho 58)
      (seg52BlindAccState rho 59) := by
  obtain ⟨r6847, r7326, r7327, r7328, r7329, r7330⟩ := seg52Blind_rows58 rho h
  unfold Seg52.relationRow6847 at r6847

  unfold Seg52.relationRow7326 at r7326

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7326

  unfold Seg52.relationRow7327 at r7327

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7327

  unfold Seg52.relationRow7328 at r7328

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7328

  unfold Seg52.relationRow7329 at r7329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7329

  unfold Seg52.relationRow7330 at r7330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7330

  have hnextx : seg52BlindDeltaX58 rho =
      seg52BlindDeltaX57 rho + rho 51717 := by
    unfold seg52BlindDeltaX58 seg52BlindDeltaX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 57]

    ring

  have hnexty : seg52BlindDeltaY58 rho =
      seg52BlindDeltaY57 rho + rho 51718 := by
    unfold seg52BlindDeltaY58 seg52BlindDeltaY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 57]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 58
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX57 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY57 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX58 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY58 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung58_wide (rho 51178) (rho 51236) (seg52BlindDeltaX57 rho) (seg52BlindDeltaY57 rho) (rho 51714) (rho 51715) (rho 51716) (rho 51717) (rho 51718) hacc
  · unfold seg52BlindDeltaX57 seg52BlindDeltaY57
    linear_combination r7326
  · unfold seg52BlindDeltaX57 seg52BlindDeltaY57
    linear_combination r7327
  · unfold seg52BlindDeltaX57 seg52BlindDeltaY57
    linear_combination r7328
  · unfold seg52BlindDeltaX57
    linear_combination r7329
  · unfold seg52BlindDeltaY57
    linear_combination r7330
  · linear_combination r6847

theorem seg52Blind_rows59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6848 rho ∧ Seg52.relationRow7331 rho ∧ Seg52.relationRow7332 rho ∧ Seg52.relationRow7333 rho ∧ Seg52.relationRow7334 rho ∧ Seg52.relationRow7335 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7331, r7332, r7333, r7334, r7335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6848, r7331, r7332, r7333, r7334, r7335⟩

theorem seg52Blind_rung59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51237 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 59)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      59 (Bool.toZMod bit) (seg52BlindAccState rho 59)
      (seg52BlindAccState rho 60) := by
  obtain ⟨r6848, r7331, r7332, r7333, r7334, r7335⟩ := seg52Blind_rows59 rho h
  unfold Seg52.relationRow6848 at r6848

  unfold Seg52.relationRow7331 at r7331

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7331

  unfold Seg52.relationRow7332 at r7332

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7332

  unfold Seg52.relationRow7333 at r7333

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7333

  unfold Seg52.relationRow7334 at r7334

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7334

  unfold Seg52.relationRow7335 at r7335

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7335

  have hnextx : seg52BlindDeltaX59 rho =
      seg52BlindDeltaX58 rho + rho 51722 := by
    unfold seg52BlindDeltaX59 seg52BlindDeltaX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 58]

    ring

  have hnexty : seg52BlindDeltaY59 rho =
      seg52BlindDeltaY58 rho + rho 51723 := by
    unfold seg52BlindDeltaY59 seg52BlindDeltaY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 58]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 59
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX58 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY58 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX59 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY59 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung59_wide (rho 51178) (rho 51237) (seg52BlindDeltaX58 rho) (seg52BlindDeltaY58 rho) (rho 51719) (rho 51720) (rho 51721) (rho 51722) (rho 51723) hacc
  · unfold seg52BlindDeltaX58 seg52BlindDeltaY58
    linear_combination r7331
  · unfold seg52BlindDeltaX58 seg52BlindDeltaY58
    linear_combination r7332
  · unfold seg52BlindDeltaX58 seg52BlindDeltaY58
    linear_combination r7333
  · unfold seg52BlindDeltaX58
    linear_combination r7334
  · unfold seg52BlindDeltaY58
    linear_combination r7335
  · linear_combination r6848

theorem seg52Blind_rows60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6849 rho ∧ Seg52.relationRow7336 rho ∧ Seg52.relationRow7337 rho ∧ Seg52.relationRow7338 rho ∧ Seg52.relationRow7339 rho ∧ Seg52.relationRow7340 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart91 at p91

  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7336, r7337, r7338, r7339, r7340, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6849, r7336, r7337, r7338, r7339, r7340⟩

theorem seg52Blind_rung60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51238 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 60)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      60 (Bool.toZMod bit) (seg52BlindAccState rho 60)
      (seg52BlindAccState rho 61) := by
  obtain ⟨r6849, r7336, r7337, r7338, r7339, r7340⟩ := seg52Blind_rows60 rho h
  unfold Seg52.relationRow6849 at r6849

  unfold Seg52.relationRow7336 at r7336

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7336

  unfold Seg52.relationRow7337 at r7337

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7337

  unfold Seg52.relationRow7338 at r7338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7338

  unfold Seg52.relationRow7339 at r7339

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7339

  unfold Seg52.relationRow7340 at r7340

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7340

  have hnextx : seg52BlindDeltaX60 rho =
      seg52BlindDeltaX59 rho + rho 51727 := by
    unfold seg52BlindDeltaX60 seg52BlindDeltaX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 59]

    ring

  have hnexty : seg52BlindDeltaY60 rho =
      seg52BlindDeltaY59 rho + rho 51728 := by
    unfold seg52BlindDeltaY60 seg52BlindDeltaY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 59]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 60
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX59 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY59 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX60 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY60 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung60_wide (rho 51178) (rho 51238) (seg52BlindDeltaX59 rho) (seg52BlindDeltaY59 rho) (rho 51724) (rho 51725) (rho 51726) (rho 51727) (rho 51728) hacc
  · unfold seg52BlindDeltaX59 seg52BlindDeltaY59
    linear_combination r7336
  · unfold seg52BlindDeltaX59 seg52BlindDeltaY59
    linear_combination r7337
  · unfold seg52BlindDeltaX59 seg52BlindDeltaY59
    linear_combination r7338
  · unfold seg52BlindDeltaX59
    linear_combination r7339
  · unfold seg52BlindDeltaY59
    linear_combination r7340
  · linear_combination r6849

theorem seg52Blind_hstep_c5 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 51 ≤ i → i < 61 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc
  · exact seg52Blind_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc
  · exact seg52Blind_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc
  · exact seg52Blind_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc
  · exact seg52Blind_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc
  · exact seg52Blind_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc
  · exact seg52Blind_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc
  · exact seg52Blind_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc
  · exact seg52Blind_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc
  · exact seg52Blind_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

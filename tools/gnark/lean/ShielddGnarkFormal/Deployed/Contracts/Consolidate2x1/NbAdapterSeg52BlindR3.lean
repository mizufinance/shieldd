import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6820 rho ∧ Seg52.relationRow7191 rho ∧ Seg52.relationRow7192 rho ∧ Seg52.relationRow7193 rho ∧ Seg52.relationRow7194 rho ∧ Seg52.relationRow7195 rho := by
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

    _, _, _, _, _, p85, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6820, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7191, r7192, r7193, r7194, r7195, _, _, _, _⟩

  exact ⟨r6820, r7191, r7192, r7193, r7194, r7195⟩

theorem seg52Blind_rung31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51209 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 31)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      31 (Bool.toZMod bit) (seg52BlindAccState rho 31)
      (seg52BlindAccState rho 32) := by
  obtain ⟨r6820, r7191, r7192, r7193, r7194, r7195⟩ := seg52Blind_rows31 rho h
  unfold Seg52.relationRow6820 at r6820

  unfold Seg52.relationRow7191 at r7191

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7191

  unfold Seg52.relationRow7192 at r7192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7192

  unfold Seg52.relationRow7193 at r7193

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7193

  unfold Seg52.relationRow7194 at r7194

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7194

  unfold Seg52.relationRow7195 at r7195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7195

  have hnextx : seg52BlindDeltaX31 rho =
      seg52BlindDeltaX30 rho + rho 51582 := by
    unfold seg52BlindDeltaX31 seg52BlindDeltaX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 30]

    ring

  have hnexty : seg52BlindDeltaY31 rho =
      seg52BlindDeltaY30 rho + rho 51583 := by
    unfold seg52BlindDeltaY31 seg52BlindDeltaY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 30]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 31
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX30 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY30 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX31 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY31 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung31_wide (rho 51178) (rho 51209) (seg52BlindDeltaX30 rho) (seg52BlindDeltaY30 rho) (rho 51579) (rho 51580) (rho 51581) (rho 51582) (rho 51583) hacc
  · unfold seg52BlindDeltaX30 seg52BlindDeltaY30
    linear_combination r7191
  · unfold seg52BlindDeltaX30 seg52BlindDeltaY30
    linear_combination r7192
  · unfold seg52BlindDeltaX30 seg52BlindDeltaY30
    linear_combination r7193
  · unfold seg52BlindDeltaX30
    linear_combination r7194
  · unfold seg52BlindDeltaY30
    linear_combination r7195
  · linear_combination r6820

theorem seg52Blind_rows32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6821 rho ∧ Seg52.relationRow7196 rho ∧ Seg52.relationRow7197 rho ∧ Seg52.relationRow7198 rho ∧ Seg52.relationRow7199 rho ∧ Seg52.relationRow7200 rho := by
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

    _, _, _, _, _, p85, _, _, _, p89,

    p90, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6821, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7196, r7197, r7198, r7199⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨r7200, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6821, r7196, r7197, r7198, r7199, r7200⟩

theorem seg52Blind_rung32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51210 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 32)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      32 (Bool.toZMod bit) (seg52BlindAccState rho 32)
      (seg52BlindAccState rho 33) := by
  obtain ⟨r6821, r7196, r7197, r7198, r7199, r7200⟩ := seg52Blind_rows32 rho h
  unfold Seg52.relationRow6821 at r6821

  unfold Seg52.relationRow7196 at r7196

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7196

  unfold Seg52.relationRow7197 at r7197

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7197

  unfold Seg52.relationRow7198 at r7198

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7198

  unfold Seg52.relationRow7199 at r7199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7199

  unfold Seg52.relationRow7200 at r7200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7200

  have hnextx : seg52BlindDeltaX32 rho =
      seg52BlindDeltaX31 rho + rho 51587 := by
    unfold seg52BlindDeltaX32 seg52BlindDeltaX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 31]

    ring

  have hnexty : seg52BlindDeltaY32 rho =
      seg52BlindDeltaY31 rho + rho 51588 := by
    unfold seg52BlindDeltaY32 seg52BlindDeltaY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 31]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 32
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX31 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY31 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX32 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY32 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung32_wide (rho 51178) (rho 51210) (seg52BlindDeltaX31 rho) (seg52BlindDeltaY31 rho) (rho 51584) (rho 51585) (rho 51586) (rho 51587) (rho 51588) hacc
  · unfold seg52BlindDeltaX31 seg52BlindDeltaY31
    linear_combination r7196
  · unfold seg52BlindDeltaX31 seg52BlindDeltaY31
    linear_combination r7197
  · unfold seg52BlindDeltaX31 seg52BlindDeltaY31
    linear_combination r7198
  · unfold seg52BlindDeltaX31
    linear_combination r7199
  · unfold seg52BlindDeltaY31
    linear_combination r7200
  · linear_combination r6821

theorem seg52Blind_rows33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6822 rho ∧ Seg52.relationRow7201 rho ∧ Seg52.relationRow7202 rho ∧ Seg52.relationRow7203 rho ∧ Seg52.relationRow7204 rho ∧ Seg52.relationRow7205 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6822, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, r7201, r7202, r7203, r7204, r7205, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6822, r7201, r7202, r7203, r7204, r7205⟩

theorem seg52Blind_rung33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51211 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 33)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      33 (Bool.toZMod bit) (seg52BlindAccState rho 33)
      (seg52BlindAccState rho 34) := by
  obtain ⟨r6822, r7201, r7202, r7203, r7204, r7205⟩ := seg52Blind_rows33 rho h
  unfold Seg52.relationRow6822 at r6822

  unfold Seg52.relationRow7201 at r7201

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7201

  unfold Seg52.relationRow7202 at r7202

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7202

  unfold Seg52.relationRow7203 at r7203

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7203

  unfold Seg52.relationRow7204 at r7204

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7204

  unfold Seg52.relationRow7205 at r7205

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7205

  have hnextx : seg52BlindDeltaX33 rho =
      seg52BlindDeltaX32 rho + rho 51592 := by
    unfold seg52BlindDeltaX33 seg52BlindDeltaX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 32]

    ring

  have hnexty : seg52BlindDeltaY33 rho =
      seg52BlindDeltaY32 rho + rho 51593 := by
    unfold seg52BlindDeltaY33 seg52BlindDeltaY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 32]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 33
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX32 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY32 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX33 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY33 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung33_wide (rho 51178) (rho 51211) (seg52BlindDeltaX32 rho) (seg52BlindDeltaY32 rho) (rho 51589) (rho 51590) (rho 51591) (rho 51592) (rho 51593) hacc
  · unfold seg52BlindDeltaX32 seg52BlindDeltaY32
    linear_combination r7201
  · unfold seg52BlindDeltaX32 seg52BlindDeltaY32
    linear_combination r7202
  · unfold seg52BlindDeltaX32 seg52BlindDeltaY32
    linear_combination r7203
  · unfold seg52BlindDeltaX32
    linear_combination r7204
  · unfold seg52BlindDeltaY32
    linear_combination r7205
  · linear_combination r6822

theorem seg52Blind_rows34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6823 rho ∧ Seg52.relationRow7206 rho ∧ Seg52.relationRow7207 rho ∧ Seg52.relationRow7208 rho ∧ Seg52.relationRow7209 rho ∧ Seg52.relationRow7210 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6823, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, r7206, r7207, r7208, r7209, r7210, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6823, r7206, r7207, r7208, r7209, r7210⟩

theorem seg52Blind_rung34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51212 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 34)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      34 (Bool.toZMod bit) (seg52BlindAccState rho 34)
      (seg52BlindAccState rho 35) := by
  obtain ⟨r6823, r7206, r7207, r7208, r7209, r7210⟩ := seg52Blind_rows34 rho h
  unfold Seg52.relationRow6823 at r6823

  unfold Seg52.relationRow7206 at r7206

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7206

  unfold Seg52.relationRow7207 at r7207

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7207

  unfold Seg52.relationRow7208 at r7208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7208

  unfold Seg52.relationRow7209 at r7209

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7209

  unfold Seg52.relationRow7210 at r7210

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7210

  have hnextx : seg52BlindDeltaX34 rho =
      seg52BlindDeltaX33 rho + rho 51597 := by
    unfold seg52BlindDeltaX34 seg52BlindDeltaX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 33]

    ring

  have hnexty : seg52BlindDeltaY34 rho =
      seg52BlindDeltaY33 rho + rho 51598 := by
    unfold seg52BlindDeltaY34 seg52BlindDeltaY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 33]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 34
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX33 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY33 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX34 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY34 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung34_wide (rho 51178) (rho 51212) (seg52BlindDeltaX33 rho) (seg52BlindDeltaY33 rho) (rho 51594) (rho 51595) (rho 51596) (rho 51597) (rho 51598) hacc
  · unfold seg52BlindDeltaX33 seg52BlindDeltaY33
    linear_combination r7206
  · unfold seg52BlindDeltaX33 seg52BlindDeltaY33
    linear_combination r7207
  · unfold seg52BlindDeltaX33 seg52BlindDeltaY33
    linear_combination r7208
  · unfold seg52BlindDeltaX33
    linear_combination r7209
  · unfold seg52BlindDeltaY33
    linear_combination r7210
  · linear_combination r6823

theorem seg52Blind_rows35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6824 rho ∧ Seg52.relationRow7211 rho ∧ Seg52.relationRow7212 rho ∧ Seg52.relationRow7213 rho ∧ Seg52.relationRow7214 rho ∧ Seg52.relationRow7215 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6824, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7211, r7212, r7213, r7214, r7215, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6824, r7211, r7212, r7213, r7214, r7215⟩

theorem seg52Blind_rung35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51213 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 35)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      35 (Bool.toZMod bit) (seg52BlindAccState rho 35)
      (seg52BlindAccState rho 36) := by
  obtain ⟨r6824, r7211, r7212, r7213, r7214, r7215⟩ := seg52Blind_rows35 rho h
  unfold Seg52.relationRow6824 at r6824

  unfold Seg52.relationRow7211 at r7211

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7211

  unfold Seg52.relationRow7212 at r7212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7212

  unfold Seg52.relationRow7213 at r7213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7213

  unfold Seg52.relationRow7214 at r7214

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7214

  unfold Seg52.relationRow7215 at r7215

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7215

  have hnextx : seg52BlindDeltaX35 rho =
      seg52BlindDeltaX34 rho + rho 51602 := by
    unfold seg52BlindDeltaX35 seg52BlindDeltaX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 34]

    ring

  have hnexty : seg52BlindDeltaY35 rho =
      seg52BlindDeltaY34 rho + rho 51603 := by
    unfold seg52BlindDeltaY35 seg52BlindDeltaY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 34]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 35
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX34 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY34 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX35 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY35 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung35_wide (rho 51178) (rho 51213) (seg52BlindDeltaX34 rho) (seg52BlindDeltaY34 rho) (rho 51599) (rho 51600) (rho 51601) (rho 51602) (rho 51603) hacc
  · unfold seg52BlindDeltaX34 seg52BlindDeltaY34
    linear_combination r7211
  · unfold seg52BlindDeltaX34 seg52BlindDeltaY34
    linear_combination r7212
  · unfold seg52BlindDeltaX34 seg52BlindDeltaY34
    linear_combination r7213
  · unfold seg52BlindDeltaX34
    linear_combination r7214
  · unfold seg52BlindDeltaY34
    linear_combination r7215
  · linear_combination r6824

theorem seg52Blind_rows36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6825 rho ∧ Seg52.relationRow7216 rho ∧ Seg52.relationRow7217 rho ∧ Seg52.relationRow7218 rho ∧ Seg52.relationRow7219 rho ∧ Seg52.relationRow7220 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6825, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7216, r7217, r7218, r7219, r7220, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6825, r7216, r7217, r7218, r7219, r7220⟩

theorem seg52Blind_rung36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51214 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 36)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      36 (Bool.toZMod bit) (seg52BlindAccState rho 36)
      (seg52BlindAccState rho 37) := by
  obtain ⟨r6825, r7216, r7217, r7218, r7219, r7220⟩ := seg52Blind_rows36 rho h
  unfold Seg52.relationRow6825 at r6825

  unfold Seg52.relationRow7216 at r7216

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7216

  unfold Seg52.relationRow7217 at r7217

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7217

  unfold Seg52.relationRow7218 at r7218

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7218

  unfold Seg52.relationRow7219 at r7219

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7219

  unfold Seg52.relationRow7220 at r7220

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7220

  have hnextx : seg52BlindDeltaX36 rho =
      seg52BlindDeltaX35 rho + rho 51607 := by
    unfold seg52BlindDeltaX36 seg52BlindDeltaX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 35]

    ring

  have hnexty : seg52BlindDeltaY36 rho =
      seg52BlindDeltaY35 rho + rho 51608 := by
    unfold seg52BlindDeltaY36 seg52BlindDeltaY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 35]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 36
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX35 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY35 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX36 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY36 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung36_wide (rho 51178) (rho 51214) (seg52BlindDeltaX35 rho) (seg52BlindDeltaY35 rho) (rho 51604) (rho 51605) (rho 51606) (rho 51607) (rho 51608) hacc
  · unfold seg52BlindDeltaX35 seg52BlindDeltaY35
    linear_combination r7216
  · unfold seg52BlindDeltaX35 seg52BlindDeltaY35
    linear_combination r7217
  · unfold seg52BlindDeltaX35 seg52BlindDeltaY35
    linear_combination r7218
  · unfold seg52BlindDeltaX35
    linear_combination r7219
  · unfold seg52BlindDeltaY35
    linear_combination r7220
  · linear_combination r6825

theorem seg52Blind_rows37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6826 rho ∧ Seg52.relationRow7221 rho ∧ Seg52.relationRow7222 rho ∧ Seg52.relationRow7223 rho ∧ Seg52.relationRow7224 rho ∧ Seg52.relationRow7225 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6826, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7221, r7222, r7223, r7224, r7225, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6826, r7221, r7222, r7223, r7224, r7225⟩

theorem seg52Blind_rung37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51215 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 37)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      37 (Bool.toZMod bit) (seg52BlindAccState rho 37)
      (seg52BlindAccState rho 38) := by
  obtain ⟨r6826, r7221, r7222, r7223, r7224, r7225⟩ := seg52Blind_rows37 rho h
  unfold Seg52.relationRow6826 at r6826

  unfold Seg52.relationRow7221 at r7221

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7221

  unfold Seg52.relationRow7222 at r7222

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7222

  unfold Seg52.relationRow7223 at r7223

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7223

  unfold Seg52.relationRow7224 at r7224

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7224

  unfold Seg52.relationRow7225 at r7225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7225

  have hnextx : seg52BlindDeltaX37 rho =
      seg52BlindDeltaX36 rho + rho 51612 := by
    unfold seg52BlindDeltaX37 seg52BlindDeltaX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 36]

    ring

  have hnexty : seg52BlindDeltaY37 rho =
      seg52BlindDeltaY36 rho + rho 51613 := by
    unfold seg52BlindDeltaY37 seg52BlindDeltaY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 36]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 37
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX36 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY36 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX37 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY37 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung37_wide (rho 51178) (rho 51215) (seg52BlindDeltaX36 rho) (seg52BlindDeltaY36 rho) (rho 51609) (rho 51610) (rho 51611) (rho 51612) (rho 51613) hacc
  · unfold seg52BlindDeltaX36 seg52BlindDeltaY36
    linear_combination r7221
  · unfold seg52BlindDeltaX36 seg52BlindDeltaY36
    linear_combination r7222
  · unfold seg52BlindDeltaX36 seg52BlindDeltaY36
    linear_combination r7223
  · unfold seg52BlindDeltaX36
    linear_combination r7224
  · unfold seg52BlindDeltaY36
    linear_combination r7225
  · linear_combination r6826

theorem seg52Blind_rows38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6827 rho ∧ Seg52.relationRow7226 rho ∧ Seg52.relationRow7227 rho ∧ Seg52.relationRow7228 rho ∧ Seg52.relationRow7229 rho ∧ Seg52.relationRow7230 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6827, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7226, r7227, r7228, r7229, r7230, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6827, r7226, r7227, r7228, r7229, r7230⟩

theorem seg52Blind_rung38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51216 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 38)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      38 (Bool.toZMod bit) (seg52BlindAccState rho 38)
      (seg52BlindAccState rho 39) := by
  obtain ⟨r6827, r7226, r7227, r7228, r7229, r7230⟩ := seg52Blind_rows38 rho h
  unfold Seg52.relationRow6827 at r6827

  unfold Seg52.relationRow7226 at r7226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7226

  unfold Seg52.relationRow7227 at r7227

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7227

  unfold Seg52.relationRow7228 at r7228

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7228

  unfold Seg52.relationRow7229 at r7229

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7229

  unfold Seg52.relationRow7230 at r7230

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7230

  have hnextx : seg52BlindDeltaX38 rho =
      seg52BlindDeltaX37 rho + rho 51617 := by
    unfold seg52BlindDeltaX38 seg52BlindDeltaX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 37]

    ring

  have hnexty : seg52BlindDeltaY38 rho =
      seg52BlindDeltaY37 rho + rho 51618 := by
    unfold seg52BlindDeltaY38 seg52BlindDeltaY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 37]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 38
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX37 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY37 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX38 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY38 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung38_wide (rho 51178) (rho 51216) (seg52BlindDeltaX37 rho) (seg52BlindDeltaY37 rho) (rho 51614) (rho 51615) (rho 51616) (rho 51617) (rho 51618) hacc
  · unfold seg52BlindDeltaX37 seg52BlindDeltaY37
    linear_combination r7226
  · unfold seg52BlindDeltaX37 seg52BlindDeltaY37
    linear_combination r7227
  · unfold seg52BlindDeltaX37 seg52BlindDeltaY37
    linear_combination r7228
  · unfold seg52BlindDeltaX37
    linear_combination r7229
  · unfold seg52BlindDeltaY37
    linear_combination r7230
  · linear_combination r6827

theorem seg52Blind_rows39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6828 rho ∧ Seg52.relationRow7231 rho ∧ Seg52.relationRow7232 rho ∧ Seg52.relationRow7233 rho ∧ Seg52.relationRow7234 rho ∧ Seg52.relationRow7235 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6828, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7231, r7232, r7233, r7234, r7235, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6828, r7231, r7232, r7233, r7234, r7235⟩

theorem seg52Blind_rung39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51217 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 39)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      39 (Bool.toZMod bit) (seg52BlindAccState rho 39)
      (seg52BlindAccState rho 40) := by
  obtain ⟨r6828, r7231, r7232, r7233, r7234, r7235⟩ := seg52Blind_rows39 rho h
  unfold Seg52.relationRow6828 at r6828

  unfold Seg52.relationRow7231 at r7231

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7231

  unfold Seg52.relationRow7232 at r7232

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7232

  unfold Seg52.relationRow7233 at r7233

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7233

  unfold Seg52.relationRow7234 at r7234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7234

  unfold Seg52.relationRow7235 at r7235

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7235

  have hnextx : seg52BlindDeltaX39 rho =
      seg52BlindDeltaX38 rho + rho 51622 := by
    unfold seg52BlindDeltaX39 seg52BlindDeltaX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 38]

    ring

  have hnexty : seg52BlindDeltaY39 rho =
      seg52BlindDeltaY38 rho + rho 51623 := by
    unfold seg52BlindDeltaY39 seg52BlindDeltaY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 38]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 39
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX38 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY38 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX39 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY39 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung39_wide (rho 51178) (rho 51217) (seg52BlindDeltaX38 rho) (seg52BlindDeltaY38 rho) (rho 51619) (rho 51620) (rho 51621) (rho 51622) (rho 51623) hacc
  · unfold seg52BlindDeltaX38 seg52BlindDeltaY38
    linear_combination r7231
  · unfold seg52BlindDeltaX38 seg52BlindDeltaY38
    linear_combination r7232
  · unfold seg52BlindDeltaX38 seg52BlindDeltaY38
    linear_combination r7233
  · unfold seg52BlindDeltaX38
    linear_combination r7234
  · unfold seg52BlindDeltaY38
    linear_combination r7235
  · linear_combination r6828

theorem seg52Blind_rows40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6829 rho ∧ Seg52.relationRow7236 rho ∧ Seg52.relationRow7237 rho ∧ Seg52.relationRow7238 rho ∧ Seg52.relationRow7239 rho ∧ Seg52.relationRow7240 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6829, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart90 at p90

  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7236, r7237, r7238, r7239, r7240, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6829, r7236, r7237, r7238, r7239, r7240⟩

theorem seg52Blind_rung40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51218 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 40)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      40 (Bool.toZMod bit) (seg52BlindAccState rho 40)
      (seg52BlindAccState rho 41) := by
  obtain ⟨r6829, r7236, r7237, r7238, r7239, r7240⟩ := seg52Blind_rows40 rho h
  unfold Seg52.relationRow6829 at r6829

  unfold Seg52.relationRow7236 at r7236

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7236

  unfold Seg52.relationRow7237 at r7237

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7237

  unfold Seg52.relationRow7238 at r7238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7238

  unfold Seg52.relationRow7239 at r7239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7239

  unfold Seg52.relationRow7240 at r7240

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7240

  have hnextx : seg52BlindDeltaX40 rho =
      seg52BlindDeltaX39 rho + rho 51627 := by
    unfold seg52BlindDeltaX40 seg52BlindDeltaX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 39]

    ring

  have hnexty : seg52BlindDeltaY40 rho =
      seg52BlindDeltaY39 rho + rho 51628 := by
    unfold seg52BlindDeltaY40 seg52BlindDeltaY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 39]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 40
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX39 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY39 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX40 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY40 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung40_wide (rho 51178) (rho 51218) (seg52BlindDeltaX39 rho) (seg52BlindDeltaY39 rho) (rho 51624) (rho 51625) (rho 51626) (rho 51627) (rho 51628) hacc
  · unfold seg52BlindDeltaX39 seg52BlindDeltaY39
    linear_combination r7236
  · unfold seg52BlindDeltaX39 seg52BlindDeltaY39
    linear_combination r7237
  · unfold seg52BlindDeltaX39 seg52BlindDeltaY39
    linear_combination r7238
  · unfold seg52BlindDeltaX39
    linear_combination r7239
  · unfold seg52BlindDeltaY39
    linear_combination r7240
  · linear_combination r6829

theorem seg52Blind_hstep_c3 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 31 ≤ i → i < 41 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc
  · exact seg52Blind_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc
  · exact seg52Blind_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc
  · exact seg52Blind_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc
  · exact seg52Blind_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc
  · exact seg52Blind_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc
  · exact seg52Blind_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc
  · exact seg52Blind_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc
  · exact seg52Blind_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc
  · exact seg52Blind_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

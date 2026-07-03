import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6810 rho ∧ Seg52.relationRow7141 rho ∧ Seg52.relationRow7142 rho ∧ Seg52.relationRow7143 rho ∧ Seg52.relationRow7144 rho ∧ Seg52.relationRow7145 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, r6810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7141, r7142, r7143, r7144, r7145, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6810, r7141, r7142, r7143, r7144, r7145⟩

theorem seg52Blind_rung21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51199 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 21)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      21 (Bool.toZMod bit) (seg52BlindAccState rho 21)
      (seg52BlindAccState rho 22) := by
  obtain ⟨r6810, r7141, r7142, r7143, r7144, r7145⟩ := seg52Blind_rows21 rho h
  unfold Seg52.relationRow6810 at r6810

  unfold Seg52.relationRow7141 at r7141

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7141

  unfold Seg52.relationRow7142 at r7142

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7142

  unfold Seg52.relationRow7143 at r7143

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7143

  unfold Seg52.relationRow7144 at r7144

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7144

  unfold Seg52.relationRow7145 at r7145

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7145

  have hnextx : seg52BlindDeltaX21 rho =
      seg52BlindDeltaX20 rho + rho 51532 := by
    unfold seg52BlindDeltaX21 seg52BlindDeltaX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 20]

    ring

  have hnexty : seg52BlindDeltaY21 rho =
      seg52BlindDeltaY20 rho + rho 51533 := by
    unfold seg52BlindDeltaY21 seg52BlindDeltaY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 20]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 21
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX20 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY20 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX21 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY21 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung21_wide (rho 51178) (rho 51199) (seg52BlindDeltaX20 rho) (seg52BlindDeltaY20 rho) (rho 51529) (rho 51530) (rho 51531) (rho 51532) (rho 51533) hacc
  · unfold seg52BlindDeltaX20 seg52BlindDeltaY20
    linear_combination r7141
  · unfold seg52BlindDeltaX20 seg52BlindDeltaY20
    linear_combination r7142
  · unfold seg52BlindDeltaX20 seg52BlindDeltaY20
    linear_combination r7143
  · unfold seg52BlindDeltaX20
    linear_combination r7144
  · unfold seg52BlindDeltaY20
    linear_combination r7145
  · linear_combination r6810

theorem seg52Blind_rows22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6811 rho ∧ Seg52.relationRow7146 rho ∧ Seg52.relationRow7147 rho ∧ Seg52.relationRow7148 rho ∧ Seg52.relationRow7149 rho ∧ Seg52.relationRow7150 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6811, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7146, r7147, r7148, r7149, r7150, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6811, r7146, r7147, r7148, r7149, r7150⟩

theorem seg52Blind_rung22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51200 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 22)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      22 (Bool.toZMod bit) (seg52BlindAccState rho 22)
      (seg52BlindAccState rho 23) := by
  obtain ⟨r6811, r7146, r7147, r7148, r7149, r7150⟩ := seg52Blind_rows22 rho h
  unfold Seg52.relationRow6811 at r6811

  unfold Seg52.relationRow7146 at r7146

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7146

  unfold Seg52.relationRow7147 at r7147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7147

  unfold Seg52.relationRow7148 at r7148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7148

  unfold Seg52.relationRow7149 at r7149

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7149

  unfold Seg52.relationRow7150 at r7150

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7150

  have hnextx : seg52BlindDeltaX22 rho =
      seg52BlindDeltaX21 rho + rho 51537 := by
    unfold seg52BlindDeltaX22 seg52BlindDeltaX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 21]

    ring

  have hnexty : seg52BlindDeltaY22 rho =
      seg52BlindDeltaY21 rho + rho 51538 := by
    unfold seg52BlindDeltaY22 seg52BlindDeltaY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 21]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 22
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX21 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY21 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX22 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY22 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung22_wide (rho 51178) (rho 51200) (seg52BlindDeltaX21 rho) (seg52BlindDeltaY21 rho) (rho 51534) (rho 51535) (rho 51536) (rho 51537) (rho 51538) hacc
  · unfold seg52BlindDeltaX21 seg52BlindDeltaY21
    linear_combination r7146
  · unfold seg52BlindDeltaX21 seg52BlindDeltaY21
    linear_combination r7147
  · unfold seg52BlindDeltaX21 seg52BlindDeltaY21
    linear_combination r7148
  · unfold seg52BlindDeltaX21
    linear_combination r7149
  · unfold seg52BlindDeltaY21
    linear_combination r7150
  · linear_combination r6811

theorem seg52Blind_rows23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6812 rho ∧ Seg52.relationRow7151 rho ∧ Seg52.relationRow7152 rho ∧ Seg52.relationRow7153 rho ∧ Seg52.relationRow7154 rho ∧ Seg52.relationRow7155 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r6812, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7151, r7152, r7153, r7154, r7155, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6812, r7151, r7152, r7153, r7154, r7155⟩

theorem seg52Blind_rung23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51201 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 23)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      23 (Bool.toZMod bit) (seg52BlindAccState rho 23)
      (seg52BlindAccState rho 24) := by
  obtain ⟨r6812, r7151, r7152, r7153, r7154, r7155⟩ := seg52Blind_rows23 rho h
  unfold Seg52.relationRow6812 at r6812

  unfold Seg52.relationRow7151 at r7151

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7151

  unfold Seg52.relationRow7152 at r7152

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7152

  unfold Seg52.relationRow7153 at r7153

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7153

  unfold Seg52.relationRow7154 at r7154

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7154

  unfold Seg52.relationRow7155 at r7155

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7155

  have hnextx : seg52BlindDeltaX23 rho =
      seg52BlindDeltaX22 rho + rho 51542 := by
    unfold seg52BlindDeltaX23 seg52BlindDeltaX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 22]

    ring

  have hnexty : seg52BlindDeltaY23 rho =
      seg52BlindDeltaY22 rho + rho 51543 := by
    unfold seg52BlindDeltaY23 seg52BlindDeltaY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 22]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 23
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX22 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY22 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX23 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY23 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung23_wide (rho 51178) (rho 51201) (seg52BlindDeltaX22 rho) (seg52BlindDeltaY22 rho) (rho 51539) (rho 51540) (rho 51541) (rho 51542) (rho 51543) hacc
  · unfold seg52BlindDeltaX22 seg52BlindDeltaY22
    linear_combination r7151
  · unfold seg52BlindDeltaX22 seg52BlindDeltaY22
    linear_combination r7152
  · unfold seg52BlindDeltaX22 seg52BlindDeltaY22
    linear_combination r7153
  · unfold seg52BlindDeltaX22
    linear_combination r7154
  · unfold seg52BlindDeltaY22
    linear_combination r7155
  · linear_combination r6812

theorem seg52Blind_rows24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6813 rho ∧ Seg52.relationRow7156 rho ∧ Seg52.relationRow7157 rho ∧ Seg52.relationRow7158 rho ∧ Seg52.relationRow7159 rho ∧ Seg52.relationRow7160 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6813, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7156, r7157, r7158, r7159, r7160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6813, r7156, r7157, r7158, r7159, r7160⟩

theorem seg52Blind_rung24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51202 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 24)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      24 (Bool.toZMod bit) (seg52BlindAccState rho 24)
      (seg52BlindAccState rho 25) := by
  obtain ⟨r6813, r7156, r7157, r7158, r7159, r7160⟩ := seg52Blind_rows24 rho h
  unfold Seg52.relationRow6813 at r6813

  unfold Seg52.relationRow7156 at r7156

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7156

  unfold Seg52.relationRow7157 at r7157

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7157

  unfold Seg52.relationRow7158 at r7158

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7158

  unfold Seg52.relationRow7159 at r7159

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7159

  unfold Seg52.relationRow7160 at r7160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7160

  have hnextx : seg52BlindDeltaX24 rho =
      seg52BlindDeltaX23 rho + rho 51547 := by
    unfold seg52BlindDeltaX24 seg52BlindDeltaX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 23]

    ring

  have hnexty : seg52BlindDeltaY24 rho =
      seg52BlindDeltaY23 rho + rho 51548 := by
    unfold seg52BlindDeltaY24 seg52BlindDeltaY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 23]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 24
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX23 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY23 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX24 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY24 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung24_wide (rho 51178) (rho 51202) (seg52BlindDeltaX23 rho) (seg52BlindDeltaY23 rho) (rho 51544) (rho 51545) (rho 51546) (rho 51547) (rho 51548) hacc
  · unfold seg52BlindDeltaX23 seg52BlindDeltaY23
    linear_combination r7156
  · unfold seg52BlindDeltaX23 seg52BlindDeltaY23
    linear_combination r7157
  · unfold seg52BlindDeltaX23 seg52BlindDeltaY23
    linear_combination r7158
  · unfold seg52BlindDeltaX23
    linear_combination r7159
  · unfold seg52BlindDeltaY23
    linear_combination r7160
  · linear_combination r6813

theorem seg52Blind_rows25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6814 rho ∧ Seg52.relationRow7161 rho ∧ Seg52.relationRow7162 rho ∧ Seg52.relationRow7163 rho ∧ Seg52.relationRow7164 rho ∧ Seg52.relationRow7165 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6814, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7161, r7162, r7163, r7164, r7165, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6814, r7161, r7162, r7163, r7164, r7165⟩

theorem seg52Blind_rung25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51203 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 25)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      25 (Bool.toZMod bit) (seg52BlindAccState rho 25)
      (seg52BlindAccState rho 26) := by
  obtain ⟨r6814, r7161, r7162, r7163, r7164, r7165⟩ := seg52Blind_rows25 rho h
  unfold Seg52.relationRow6814 at r6814

  unfold Seg52.relationRow7161 at r7161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7161

  unfold Seg52.relationRow7162 at r7162

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7162

  unfold Seg52.relationRow7163 at r7163

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7163

  unfold Seg52.relationRow7164 at r7164

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7164

  unfold Seg52.relationRow7165 at r7165

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7165

  have hnextx : seg52BlindDeltaX25 rho =
      seg52BlindDeltaX24 rho + rho 51552 := by
    unfold seg52BlindDeltaX25 seg52BlindDeltaX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 24]

    ring

  have hnexty : seg52BlindDeltaY25 rho =
      seg52BlindDeltaY24 rho + rho 51553 := by
    unfold seg52BlindDeltaY25 seg52BlindDeltaY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 24]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 25
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX24 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY24 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX25 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY25 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung25_wide (rho 51178) (rho 51203) (seg52BlindDeltaX24 rho) (seg52BlindDeltaY24 rho) (rho 51549) (rho 51550) (rho 51551) (rho 51552) (rho 51553) hacc
  · unfold seg52BlindDeltaX24 seg52BlindDeltaY24
    linear_combination r7161
  · unfold seg52BlindDeltaX24 seg52BlindDeltaY24
    linear_combination r7162
  · unfold seg52BlindDeltaX24 seg52BlindDeltaY24
    linear_combination r7163
  · unfold seg52BlindDeltaX24
    linear_combination r7164
  · unfold seg52BlindDeltaY24
    linear_combination r7165
  · linear_combination r6814

theorem seg52Blind_rows26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6815 rho ∧ Seg52.relationRow7166 rho ∧ Seg52.relationRow7167 rho ∧ Seg52.relationRow7168 rho ∧ Seg52.relationRow7169 rho ∧ Seg52.relationRow7170 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6815, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7166, r7167, r7168, r7169, r7170, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6815, r7166, r7167, r7168, r7169, r7170⟩

theorem seg52Blind_rung26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51204 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 26)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      26 (Bool.toZMod bit) (seg52BlindAccState rho 26)
      (seg52BlindAccState rho 27) := by
  obtain ⟨r6815, r7166, r7167, r7168, r7169, r7170⟩ := seg52Blind_rows26 rho h
  unfold Seg52.relationRow6815 at r6815

  unfold Seg52.relationRow7166 at r7166

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7166

  unfold Seg52.relationRow7167 at r7167

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7167

  unfold Seg52.relationRow7168 at r7168

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7168

  unfold Seg52.relationRow7169 at r7169

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7169

  unfold Seg52.relationRow7170 at r7170

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7170

  have hnextx : seg52BlindDeltaX26 rho =
      seg52BlindDeltaX25 rho + rho 51557 := by
    unfold seg52BlindDeltaX26 seg52BlindDeltaX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 25]

    ring

  have hnexty : seg52BlindDeltaY26 rho =
      seg52BlindDeltaY25 rho + rho 51558 := by
    unfold seg52BlindDeltaY26 seg52BlindDeltaY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 25]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 26
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX25 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY25 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX26 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY26 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung26_wide (rho 51178) (rho 51204) (seg52BlindDeltaX25 rho) (seg52BlindDeltaY25 rho) (rho 51554) (rho 51555) (rho 51556) (rho 51557) (rho 51558) hacc
  · unfold seg52BlindDeltaX25 seg52BlindDeltaY25
    linear_combination r7166
  · unfold seg52BlindDeltaX25 seg52BlindDeltaY25
    linear_combination r7167
  · unfold seg52BlindDeltaX25 seg52BlindDeltaY25
    linear_combination r7168
  · unfold seg52BlindDeltaX25
    linear_combination r7169
  · unfold seg52BlindDeltaY25
    linear_combination r7170
  · linear_combination r6815

theorem seg52Blind_rows27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6816 rho ∧ Seg52.relationRow7171 rho ∧ Seg52.relationRow7172 rho ∧ Seg52.relationRow7173 rho ∧ Seg52.relationRow7174 rho ∧ Seg52.relationRow7175 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7171, r7172, r7173, r7174, r7175, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6816, r7171, r7172, r7173, r7174, r7175⟩

theorem seg52Blind_rung27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51205 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 27)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      27 (Bool.toZMod bit) (seg52BlindAccState rho 27)
      (seg52BlindAccState rho 28) := by
  obtain ⟨r6816, r7171, r7172, r7173, r7174, r7175⟩ := seg52Blind_rows27 rho h
  unfold Seg52.relationRow6816 at r6816

  unfold Seg52.relationRow7171 at r7171

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7171

  unfold Seg52.relationRow7172 at r7172

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7172

  unfold Seg52.relationRow7173 at r7173

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7173

  unfold Seg52.relationRow7174 at r7174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7174

  unfold Seg52.relationRow7175 at r7175

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7175

  have hnextx : seg52BlindDeltaX27 rho =
      seg52BlindDeltaX26 rho + rho 51562 := by
    unfold seg52BlindDeltaX27 seg52BlindDeltaX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 26]

    ring

  have hnexty : seg52BlindDeltaY27 rho =
      seg52BlindDeltaY26 rho + rho 51563 := by
    unfold seg52BlindDeltaY27 seg52BlindDeltaY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 26]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 27
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX26 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY26 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX27 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY27 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung27_wide (rho 51178) (rho 51205) (seg52BlindDeltaX26 rho) (seg52BlindDeltaY26 rho) (rho 51559) (rho 51560) (rho 51561) (rho 51562) (rho 51563) hacc
  · unfold seg52BlindDeltaX26 seg52BlindDeltaY26
    linear_combination r7171
  · unfold seg52BlindDeltaX26 seg52BlindDeltaY26
    linear_combination r7172
  · unfold seg52BlindDeltaX26 seg52BlindDeltaY26
    linear_combination r7173
  · unfold seg52BlindDeltaX26
    linear_combination r7174
  · unfold seg52BlindDeltaY26
    linear_combination r7175
  · linear_combination r6816

theorem seg52Blind_rows28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6817 rho ∧ Seg52.relationRow7176 rho ∧ Seg52.relationRow7177 rho ∧ Seg52.relationRow7178 rho ∧ Seg52.relationRow7179 rho ∧ Seg52.relationRow7180 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6817, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7176, r7177, r7178, r7179, r7180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6817, r7176, r7177, r7178, r7179, r7180⟩

theorem seg52Blind_rung28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51206 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 28)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      28 (Bool.toZMod bit) (seg52BlindAccState rho 28)
      (seg52BlindAccState rho 29) := by
  obtain ⟨r6817, r7176, r7177, r7178, r7179, r7180⟩ := seg52Blind_rows28 rho h
  unfold Seg52.relationRow6817 at r6817

  unfold Seg52.relationRow7176 at r7176

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7176

  unfold Seg52.relationRow7177 at r7177

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7177

  unfold Seg52.relationRow7178 at r7178

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7178

  unfold Seg52.relationRow7179 at r7179

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7179

  unfold Seg52.relationRow7180 at r7180

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7180

  have hnextx : seg52BlindDeltaX28 rho =
      seg52BlindDeltaX27 rho + rho 51567 := by
    unfold seg52BlindDeltaX28 seg52BlindDeltaX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 27]

    ring

  have hnexty : seg52BlindDeltaY28 rho =
      seg52BlindDeltaY27 rho + rho 51568 := by
    unfold seg52BlindDeltaY28 seg52BlindDeltaY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 27]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 28
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX27 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY27 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX28 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY28 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung28_wide (rho 51178) (rho 51206) (seg52BlindDeltaX27 rho) (seg52BlindDeltaY27 rho) (rho 51564) (rho 51565) (rho 51566) (rho 51567) (rho 51568) hacc
  · unfold seg52BlindDeltaX27 seg52BlindDeltaY27
    linear_combination r7176
  · unfold seg52BlindDeltaX27 seg52BlindDeltaY27
    linear_combination r7177
  · unfold seg52BlindDeltaX27 seg52BlindDeltaY27
    linear_combination r7178
  · unfold seg52BlindDeltaX27
    linear_combination r7179
  · unfold seg52BlindDeltaY27
    linear_combination r7180
  · linear_combination r6817

theorem seg52Blind_rows29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6818 rho ∧ Seg52.relationRow7181 rho ∧ Seg52.relationRow7182 rho ∧ Seg52.relationRow7183 rho ∧ Seg52.relationRow7184 rho ∧ Seg52.relationRow7185 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6818, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7181, r7182, r7183, r7184, r7185, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6818, r7181, r7182, r7183, r7184, r7185⟩

theorem seg52Blind_rung29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51207 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 29)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      29 (Bool.toZMod bit) (seg52BlindAccState rho 29)
      (seg52BlindAccState rho 30) := by
  obtain ⟨r6818, r7181, r7182, r7183, r7184, r7185⟩ := seg52Blind_rows29 rho h
  unfold Seg52.relationRow6818 at r6818

  unfold Seg52.relationRow7181 at r7181

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7181

  unfold Seg52.relationRow7182 at r7182

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7182

  unfold Seg52.relationRow7183 at r7183

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7183

  unfold Seg52.relationRow7184 at r7184

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7184

  unfold Seg52.relationRow7185 at r7185

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7185

  have hnextx : seg52BlindDeltaX29 rho =
      seg52BlindDeltaX28 rho + rho 51572 := by
    unfold seg52BlindDeltaX29 seg52BlindDeltaX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 28]

    ring

  have hnexty : seg52BlindDeltaY29 rho =
      seg52BlindDeltaY28 rho + rho 51573 := by
    unfold seg52BlindDeltaY29 seg52BlindDeltaY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 28]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 29
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX28 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY28 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX29 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY29 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung29_wide (rho 51178) (rho 51207) (seg52BlindDeltaX28 rho) (seg52BlindDeltaY28 rho) (rho 51569) (rho 51570) (rho 51571) (rho 51572) (rho 51573) hacc
  · unfold seg52BlindDeltaX28 seg52BlindDeltaY28
    linear_combination r7181
  · unfold seg52BlindDeltaX28 seg52BlindDeltaY28
    linear_combination r7182
  · unfold seg52BlindDeltaX28 seg52BlindDeltaY28
    linear_combination r7183
  · unfold seg52BlindDeltaX28
    linear_combination r7184
  · unfold seg52BlindDeltaY28
    linear_combination r7185
  · linear_combination r6818

theorem seg52Blind_rows30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6819 rho ∧ Seg52.relationRow7186 rho ∧ Seg52.relationRow7187 rho ∧ Seg52.relationRow7188 rho ∧ Seg52.relationRow7189 rho ∧ Seg52.relationRow7190 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6819, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7186, r7187, r7188, r7189, r7190, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6819, r7186, r7187, r7188, r7189, r7190⟩

theorem seg52Blind_rung30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51208 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 30)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      30 (Bool.toZMod bit) (seg52BlindAccState rho 30)
      (seg52BlindAccState rho 31) := by
  obtain ⟨r6819, r7186, r7187, r7188, r7189, r7190⟩ := seg52Blind_rows30 rho h
  unfold Seg52.relationRow6819 at r6819

  unfold Seg52.relationRow7186 at r7186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7186

  unfold Seg52.relationRow7187 at r7187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7187

  unfold Seg52.relationRow7188 at r7188

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7188

  unfold Seg52.relationRow7189 at r7189

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7189

  unfold Seg52.relationRow7190 at r7190

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7190

  have hnextx : seg52BlindDeltaX30 rho =
      seg52BlindDeltaX29 rho + rho 51577 := by
    unfold seg52BlindDeltaX30 seg52BlindDeltaX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 29]

    ring

  have hnexty : seg52BlindDeltaY30 rho =
      seg52BlindDeltaY29 rho + rho 51578 := by
    unfold seg52BlindDeltaY30 seg52BlindDeltaY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 29]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 30
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX29 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY29 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX30 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY30 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung30_wide (rho 51178) (rho 51208) (seg52BlindDeltaX29 rho) (seg52BlindDeltaY29 rho) (rho 51574) (rho 51575) (rho 51576) (rho 51577) (rho 51578) hacc
  · unfold seg52BlindDeltaX29 seg52BlindDeltaY29
    linear_combination r7186
  · unfold seg52BlindDeltaX29 seg52BlindDeltaY29
    linear_combination r7187
  · unfold seg52BlindDeltaX29 seg52BlindDeltaY29
    linear_combination r7188
  · unfold seg52BlindDeltaX29
    linear_combination r7189
  · unfold seg52BlindDeltaY29
    linear_combination r7190
  · linear_combination r6819

theorem seg52Blind_hstep_c2 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
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

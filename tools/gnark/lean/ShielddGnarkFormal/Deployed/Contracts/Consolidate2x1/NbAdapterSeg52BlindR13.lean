import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows131 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6920 rho ∧ Seg52.relationRow7691 rho ∧ Seg52.relationRow7692 rho ∧ Seg52.relationRow7693 rho ∧ Seg52.relationRow7694 rho ∧ Seg52.relationRow7695 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6920, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7691, r7692, r7693, r7694, r7695, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6920, r7691, r7692, r7693, r7694, r7695⟩

theorem seg52Blind_rung131 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51309 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 131)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      131 (Bool.toZMod bit) (seg52BlindAccState rho 131)
      (seg52BlindAccState rho 132) := by
  obtain ⟨r6920, r7691, r7692, r7693, r7694, r7695⟩ := seg52Blind_rows131 rho h
  unfold Seg52.relationRow6920 at r6920

  unfold Seg52.relationRow7691 at r7691

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7691

  unfold Seg52.relationRow7692 at r7692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7692

  unfold Seg52.relationRow7693 at r7693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7693

  unfold Seg52.relationRow7694 at r7694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7694

  unfold Seg52.relationRow7695 at r7695

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7695

  have hnextx : seg52BlindDeltaX131 rho =
      seg52BlindDeltaX130 rho + rho 52082 := by
    unfold seg52BlindDeltaX131 seg52BlindDeltaX130
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 130]

    ring

  have hnexty : seg52BlindDeltaY131 rho =
      seg52BlindDeltaY130 rho + rho 52083 := by
    unfold seg52BlindDeltaY131 seg52BlindDeltaY130
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 130]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 131
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX130 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY130 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX131 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY131 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung131_wide (rho 51178) (rho 51309) (seg52BlindDeltaX130 rho) (seg52BlindDeltaY130 rho) (rho 52079) (rho 52080) (rho 52081) (rho 52082) (rho 52083) hacc
  · unfold seg52BlindDeltaX130 seg52BlindDeltaY130
    linear_combination r7691
  · unfold seg52BlindDeltaX130 seg52BlindDeltaY130
    linear_combination r7692
  · unfold seg52BlindDeltaX130 seg52BlindDeltaY130
    linear_combination r7693
  · unfold seg52BlindDeltaX130
    linear_combination r7694
  · unfold seg52BlindDeltaY130
    linear_combination r7695
  · linear_combination r6920

theorem seg52Blind_rows132 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6921 rho ∧ Seg52.relationRow7696 rho ∧ Seg52.relationRow7697 rho ∧ Seg52.relationRow7698 rho ∧ Seg52.relationRow7699 rho ∧ Seg52.relationRow7700 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7696, r7697, r7698, r7699, r7700, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6921, r7696, r7697, r7698, r7699, r7700⟩

theorem seg52Blind_rung132 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51310 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 132)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      132 (Bool.toZMod bit) (seg52BlindAccState rho 132)
      (seg52BlindAccState rho 133) := by
  obtain ⟨r6921, r7696, r7697, r7698, r7699, r7700⟩ := seg52Blind_rows132 rho h
  unfold Seg52.relationRow6921 at r6921

  unfold Seg52.relationRow7696 at r7696

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7696

  unfold Seg52.relationRow7697 at r7697

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7697

  unfold Seg52.relationRow7698 at r7698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7698

  unfold Seg52.relationRow7699 at r7699

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7699

  unfold Seg52.relationRow7700 at r7700

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7700

  have hnextx : seg52BlindDeltaX132 rho =
      seg52BlindDeltaX131 rho + rho 52087 := by
    unfold seg52BlindDeltaX132 seg52BlindDeltaX131
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 131]

    ring

  have hnexty : seg52BlindDeltaY132 rho =
      seg52BlindDeltaY131 rho + rho 52088 := by
    unfold seg52BlindDeltaY132 seg52BlindDeltaY131
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 131]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 132
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX131 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY131 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX132 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY132 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung132_wide (rho 51178) (rho 51310) (seg52BlindDeltaX131 rho) (seg52BlindDeltaY131 rho) (rho 52084) (rho 52085) (rho 52086) (rho 52087) (rho 52088) hacc
  · unfold seg52BlindDeltaX131 seg52BlindDeltaY131
    linear_combination r7696
  · unfold seg52BlindDeltaX131 seg52BlindDeltaY131
    linear_combination r7697
  · unfold seg52BlindDeltaX131 seg52BlindDeltaY131
    linear_combination r7698
  · unfold seg52BlindDeltaX131
    linear_combination r7699
  · unfold seg52BlindDeltaY131
    linear_combination r7700
  · linear_combination r6921

theorem seg52Blind_rows133 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6922 rho ∧ Seg52.relationRow7701 rho ∧ Seg52.relationRow7702 rho ∧ Seg52.relationRow7703 rho ∧ Seg52.relationRow7704 rho ∧ Seg52.relationRow7705 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7701, r7702, r7703, r7704, r7705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6922, r7701, r7702, r7703, r7704, r7705⟩

theorem seg52Blind_rung133 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51311 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 133)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      133 (Bool.toZMod bit) (seg52BlindAccState rho 133)
      (seg52BlindAccState rho 134) := by
  obtain ⟨r6922, r7701, r7702, r7703, r7704, r7705⟩ := seg52Blind_rows133 rho h
  unfold Seg52.relationRow6922 at r6922

  unfold Seg52.relationRow7701 at r7701

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7701

  unfold Seg52.relationRow7702 at r7702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7702

  unfold Seg52.relationRow7703 at r7703

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7703

  unfold Seg52.relationRow7704 at r7704

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7704

  unfold Seg52.relationRow7705 at r7705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7705

  have hnextx : seg52BlindDeltaX133 rho =
      seg52BlindDeltaX132 rho + rho 52092 := by
    unfold seg52BlindDeltaX133 seg52BlindDeltaX132
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 132]

    ring

  have hnexty : seg52BlindDeltaY133 rho =
      seg52BlindDeltaY132 rho + rho 52093 := by
    unfold seg52BlindDeltaY133 seg52BlindDeltaY132
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 132]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 133
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX132 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY132 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX133 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY133 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung133_wide (rho 51178) (rho 51311) (seg52BlindDeltaX132 rho) (seg52BlindDeltaY132 rho) (rho 52089) (rho 52090) (rho 52091) (rho 52092) (rho 52093) hacc
  · unfold seg52BlindDeltaX132 seg52BlindDeltaY132
    linear_combination r7701
  · unfold seg52BlindDeltaX132 seg52BlindDeltaY132
    linear_combination r7702
  · unfold seg52BlindDeltaX132 seg52BlindDeltaY132
    linear_combination r7703
  · unfold seg52BlindDeltaX132
    linear_combination r7704
  · unfold seg52BlindDeltaY132
    linear_combination r7705
  · linear_combination r6922

theorem seg52Blind_rows134 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6923 rho ∧ Seg52.relationRow7706 rho ∧ Seg52.relationRow7707 rho ∧ Seg52.relationRow7708 rho ∧ Seg52.relationRow7709 rho ∧ Seg52.relationRow7710 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6923, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7706, r7707, r7708, r7709, r7710, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6923, r7706, r7707, r7708, r7709, r7710⟩

theorem seg52Blind_rung134 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51312 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 134)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      134 (Bool.toZMod bit) (seg52BlindAccState rho 134)
      (seg52BlindAccState rho 135) := by
  obtain ⟨r6923, r7706, r7707, r7708, r7709, r7710⟩ := seg52Blind_rows134 rho h
  unfold Seg52.relationRow6923 at r6923

  unfold Seg52.relationRow7706 at r7706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7706

  unfold Seg52.relationRow7707 at r7707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7707

  unfold Seg52.relationRow7708 at r7708

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7708

  unfold Seg52.relationRow7709 at r7709

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7709

  unfold Seg52.relationRow7710 at r7710

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7710

  have hnextx : seg52BlindDeltaX134 rho =
      seg52BlindDeltaX133 rho + rho 52097 := by
    unfold seg52BlindDeltaX134 seg52BlindDeltaX133
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 133]

    ring

  have hnexty : seg52BlindDeltaY134 rho =
      seg52BlindDeltaY133 rho + rho 52098 := by
    unfold seg52BlindDeltaY134 seg52BlindDeltaY133
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 133]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 134
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX133 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY133 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX134 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY134 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung134_wide (rho 51178) (rho 51312) (seg52BlindDeltaX133 rho) (seg52BlindDeltaY133 rho) (rho 52094) (rho 52095) (rho 52096) (rho 52097) (rho 52098) hacc
  · unfold seg52BlindDeltaX133 seg52BlindDeltaY133
    linear_combination r7706
  · unfold seg52BlindDeltaX133 seg52BlindDeltaY133
    linear_combination r7707
  · unfold seg52BlindDeltaX133 seg52BlindDeltaY133
    linear_combination r7708
  · unfold seg52BlindDeltaX133
    linear_combination r7709
  · unfold seg52BlindDeltaY133
    linear_combination r7710
  · linear_combination r6923

theorem seg52Blind_rows135 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6924 rho ∧ Seg52.relationRow7711 rho ∧ Seg52.relationRow7712 rho ∧ Seg52.relationRow7713 rho ∧ Seg52.relationRow7714 rho ∧ Seg52.relationRow7715 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6924, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7711, r7712, r7713, r7714, r7715, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6924, r7711, r7712, r7713, r7714, r7715⟩

theorem seg52Blind_rung135 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51313 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 135)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      135 (Bool.toZMod bit) (seg52BlindAccState rho 135)
      (seg52BlindAccState rho 136) := by
  obtain ⟨r6924, r7711, r7712, r7713, r7714, r7715⟩ := seg52Blind_rows135 rho h
  unfold Seg52.relationRow6924 at r6924

  unfold Seg52.relationRow7711 at r7711

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7711

  unfold Seg52.relationRow7712 at r7712

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7712

  unfold Seg52.relationRow7713 at r7713

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7713

  unfold Seg52.relationRow7714 at r7714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7714

  unfold Seg52.relationRow7715 at r7715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7715

  have hnextx : seg52BlindDeltaX135 rho =
      seg52BlindDeltaX134 rho + rho 52102 := by
    unfold seg52BlindDeltaX135 seg52BlindDeltaX134
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 134]

    ring

  have hnexty : seg52BlindDeltaY135 rho =
      seg52BlindDeltaY134 rho + rho 52103 := by
    unfold seg52BlindDeltaY135 seg52BlindDeltaY134
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 134]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 135
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX134 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY134 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX135 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY135 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung135_wide (rho 51178) (rho 51313) (seg52BlindDeltaX134 rho) (seg52BlindDeltaY134 rho) (rho 52099) (rho 52100) (rho 52101) (rho 52102) (rho 52103) hacc
  · unfold seg52BlindDeltaX134 seg52BlindDeltaY134
    linear_combination r7711
  · unfold seg52BlindDeltaX134 seg52BlindDeltaY134
    linear_combination r7712
  · unfold seg52BlindDeltaX134 seg52BlindDeltaY134
    linear_combination r7713
  · unfold seg52BlindDeltaX134
    linear_combination r7714
  · unfold seg52BlindDeltaY134
    linear_combination r7715
  · linear_combination r6924

theorem seg52Blind_rows136 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6925 rho ∧ Seg52.relationRow7716 rho ∧ Seg52.relationRow7717 rho ∧ Seg52.relationRow7718 rho ∧ Seg52.relationRow7719 rho ∧ Seg52.relationRow7720 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7716, r7717, r7718, r7719, r7720, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6925, r7716, r7717, r7718, r7719, r7720⟩

theorem seg52Blind_rung136 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51314 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 136)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      136 (Bool.toZMod bit) (seg52BlindAccState rho 136)
      (seg52BlindAccState rho 137) := by
  obtain ⟨r6925, r7716, r7717, r7718, r7719, r7720⟩ := seg52Blind_rows136 rho h
  unfold Seg52.relationRow6925 at r6925

  unfold Seg52.relationRow7716 at r7716

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7716

  unfold Seg52.relationRow7717 at r7717

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7717

  unfold Seg52.relationRow7718 at r7718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7718

  unfold Seg52.relationRow7719 at r7719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7719

  unfold Seg52.relationRow7720 at r7720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7720

  have hnextx : seg52BlindDeltaX136 rho =
      seg52BlindDeltaX135 rho + rho 52107 := by
    unfold seg52BlindDeltaX136 seg52BlindDeltaX135
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 135]

    ring

  have hnexty : seg52BlindDeltaY136 rho =
      seg52BlindDeltaY135 rho + rho 52108 := by
    unfold seg52BlindDeltaY136 seg52BlindDeltaY135
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 135]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 136
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX135 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY135 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX136 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY136 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung136_wide (rho 51178) (rho 51314) (seg52BlindDeltaX135 rho) (seg52BlindDeltaY135 rho) (rho 52104) (rho 52105) (rho 52106) (rho 52107) (rho 52108) hacc
  · unfold seg52BlindDeltaX135 seg52BlindDeltaY135
    linear_combination r7716
  · unfold seg52BlindDeltaX135 seg52BlindDeltaY135
    linear_combination r7717
  · unfold seg52BlindDeltaX135 seg52BlindDeltaY135
    linear_combination r7718
  · unfold seg52BlindDeltaX135
    linear_combination r7719
  · unfold seg52BlindDeltaY135
    linear_combination r7720
  · linear_combination r6925

theorem seg52Blind_rows137 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6926 rho ∧ Seg52.relationRow7721 rho ∧ Seg52.relationRow7722 rho ∧ Seg52.relationRow7723 rho ∧ Seg52.relationRow7724 rho ∧ Seg52.relationRow7725 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6926, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7721, r7722, r7723, r7724, r7725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6926, r7721, r7722, r7723, r7724, r7725⟩

theorem seg52Blind_rung137 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51315 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 137)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      137 (Bool.toZMod bit) (seg52BlindAccState rho 137)
      (seg52BlindAccState rho 138) := by
  obtain ⟨r6926, r7721, r7722, r7723, r7724, r7725⟩ := seg52Blind_rows137 rho h
  unfold Seg52.relationRow6926 at r6926

  unfold Seg52.relationRow7721 at r7721

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7721

  unfold Seg52.relationRow7722 at r7722

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7722

  unfold Seg52.relationRow7723 at r7723

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7723

  unfold Seg52.relationRow7724 at r7724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7724

  unfold Seg52.relationRow7725 at r7725

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7725

  have hnextx : seg52BlindDeltaX137 rho =
      seg52BlindDeltaX136 rho + rho 52112 := by
    unfold seg52BlindDeltaX137 seg52BlindDeltaX136
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 136]

    ring

  have hnexty : seg52BlindDeltaY137 rho =
      seg52BlindDeltaY136 rho + rho 52113 := by
    unfold seg52BlindDeltaY137 seg52BlindDeltaY136
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 136]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 137
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX136 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY136 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX137 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY137 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung137_wide (rho 51178) (rho 51315) (seg52BlindDeltaX136 rho) (seg52BlindDeltaY136 rho) (rho 52109) (rho 52110) (rho 52111) (rho 52112) (rho 52113) hacc
  · unfold seg52BlindDeltaX136 seg52BlindDeltaY136
    linear_combination r7721
  · unfold seg52BlindDeltaX136 seg52BlindDeltaY136
    linear_combination r7722
  · unfold seg52BlindDeltaX136 seg52BlindDeltaY136
    linear_combination r7723
  · unfold seg52BlindDeltaX136
    linear_combination r7724
  · unfold seg52BlindDeltaY136
    linear_combination r7725
  · linear_combination r6926

theorem seg52Blind_rows138 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6927 rho ∧ Seg52.relationRow7726 rho ∧ Seg52.relationRow7727 rho ∧ Seg52.relationRow7728 rho ∧ Seg52.relationRow7729 rho ∧ Seg52.relationRow7730 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6927, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7726, r7727, r7728, r7729, r7730, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6927, r7726, r7727, r7728, r7729, r7730⟩

theorem seg52Blind_rung138 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51316 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 138)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      138 (Bool.toZMod bit) (seg52BlindAccState rho 138)
      (seg52BlindAccState rho 139) := by
  obtain ⟨r6927, r7726, r7727, r7728, r7729, r7730⟩ := seg52Blind_rows138 rho h
  unfold Seg52.relationRow6927 at r6927

  unfold Seg52.relationRow7726 at r7726

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7726

  unfold Seg52.relationRow7727 at r7727

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7727

  unfold Seg52.relationRow7728 at r7728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7728

  unfold Seg52.relationRow7729 at r7729

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7729

  unfold Seg52.relationRow7730 at r7730

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7730

  have hnextx : seg52BlindDeltaX138 rho =
      seg52BlindDeltaX137 rho + rho 52117 := by
    unfold seg52BlindDeltaX138 seg52BlindDeltaX137
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 137]

    ring

  have hnexty : seg52BlindDeltaY138 rho =
      seg52BlindDeltaY137 rho + rho 52118 := by
    unfold seg52BlindDeltaY138 seg52BlindDeltaY137
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 137]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 138
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX137 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY137 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX138 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY138 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung138_wide (rho 51178) (rho 51316) (seg52BlindDeltaX137 rho) (seg52BlindDeltaY137 rho) (rho 52114) (rho 52115) (rho 52116) (rho 52117) (rho 52118) hacc
  · unfold seg52BlindDeltaX137 seg52BlindDeltaY137
    linear_combination r7726
  · unfold seg52BlindDeltaX137 seg52BlindDeltaY137
    linear_combination r7727
  · unfold seg52BlindDeltaX137 seg52BlindDeltaY137
    linear_combination r7728
  · unfold seg52BlindDeltaX137
    linear_combination r7729
  · unfold seg52BlindDeltaY137
    linear_combination r7730
  · linear_combination r6927

theorem seg52Blind_rows139 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6928 rho ∧ Seg52.relationRow7731 rho ∧ Seg52.relationRow7732 rho ∧ Seg52.relationRow7733 rho ∧ Seg52.relationRow7734 rho ∧ Seg52.relationRow7735 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7731, r7732, r7733, r7734, r7735, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6928, r7731, r7732, r7733, r7734, r7735⟩

theorem seg52Blind_rung139 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51317 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 139)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      139 (Bool.toZMod bit) (seg52BlindAccState rho 139)
      (seg52BlindAccState rho 140) := by
  obtain ⟨r6928, r7731, r7732, r7733, r7734, r7735⟩ := seg52Blind_rows139 rho h
  unfold Seg52.relationRow6928 at r6928

  unfold Seg52.relationRow7731 at r7731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7731

  unfold Seg52.relationRow7732 at r7732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7732

  unfold Seg52.relationRow7733 at r7733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7733

  unfold Seg52.relationRow7734 at r7734

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7734

  unfold Seg52.relationRow7735 at r7735

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7735

  have hnextx : seg52BlindDeltaX139 rho =
      seg52BlindDeltaX138 rho + rho 52122 := by
    unfold seg52BlindDeltaX139 seg52BlindDeltaX138
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 138]

    ring

  have hnexty : seg52BlindDeltaY139 rho =
      seg52BlindDeltaY138 rho + rho 52123 := by
    unfold seg52BlindDeltaY139 seg52BlindDeltaY138
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 138]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 139
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX138 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY138 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX139 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY139 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung139_wide (rho 51178) (rho 51317) (seg52BlindDeltaX138 rho) (seg52BlindDeltaY138 rho) (rho 52119) (rho 52120) (rho 52121) (rho 52122) (rho 52123) hacc
  · unfold seg52BlindDeltaX138 seg52BlindDeltaY138
    linear_combination r7731
  · unfold seg52BlindDeltaX138 seg52BlindDeltaY138
    linear_combination r7732
  · unfold seg52BlindDeltaX138 seg52BlindDeltaY138
    linear_combination r7733
  · unfold seg52BlindDeltaX138
    linear_combination r7734
  · unfold seg52BlindDeltaY138
    linear_combination r7735
  · linear_combination r6928

theorem seg52Blind_rows140 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6929 rho ∧ Seg52.relationRow7736 rho ∧ Seg52.relationRow7737 rho ∧ Seg52.relationRow7738 rho ∧ Seg52.relationRow7739 rho ∧ Seg52.relationRow7740 rho := by
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

    _, _, _, _, _, _, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6929, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7736, r7737, r7738, r7739, r7740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6929, r7736, r7737, r7738, r7739, r7740⟩

theorem seg52Blind_rung140 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51318 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 140)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      140 (Bool.toZMod bit) (seg52BlindAccState rho 140)
      (seg52BlindAccState rho 141) := by
  obtain ⟨r6929, r7736, r7737, r7738, r7739, r7740⟩ := seg52Blind_rows140 rho h
  unfold Seg52.relationRow6929 at r6929

  unfold Seg52.relationRow7736 at r7736

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7736

  unfold Seg52.relationRow7737 at r7737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7737

  unfold Seg52.relationRow7738 at r7738

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7738

  unfold Seg52.relationRow7739 at r7739

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7739

  unfold Seg52.relationRow7740 at r7740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7740

  have hnextx : seg52BlindDeltaX140 rho =
      seg52BlindDeltaX139 rho + rho 52127 := by
    unfold seg52BlindDeltaX140 seg52BlindDeltaX139
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 139]

    ring

  have hnexty : seg52BlindDeltaY140 rho =
      seg52BlindDeltaY139 rho + rho 52128 := by
    unfold seg52BlindDeltaY140 seg52BlindDeltaY139
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 139]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 140
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX139 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY139 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX140 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY140 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung140_wide (rho 51178) (rho 51318) (seg52BlindDeltaX139 rho) (seg52BlindDeltaY139 rho) (rho 52124) (rho 52125) (rho 52126) (rho 52127) (rho 52128) hacc
  · unfold seg52BlindDeltaX139 seg52BlindDeltaY139
    linear_combination r7736
  · unfold seg52BlindDeltaX139 seg52BlindDeltaY139
    linear_combination r7737
  · unfold seg52BlindDeltaX139 seg52BlindDeltaY139
    linear_combination r7738
  · unfold seg52BlindDeltaX139
    linear_combination r7739
  · unfold seg52BlindDeltaY139
    linear_combination r7740
  · linear_combination r6929

theorem seg52Blind_hstep_c13 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 131 ≤ i → i < 141 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc
  · exact seg52Blind_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc
  · exact seg52Blind_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc
  · exact seg52Blind_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc
  · exact seg52Blind_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc
  · exact seg52Blind_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc
  · exact seg52Blind_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc
  · exact seg52Blind_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc
  · exact seg52Blind_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc
  · exact seg52Blind_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows131 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6280 rho ∧ Seg52.relationRow7051 rho ∧ Seg52.relationRow7052 rho ∧ Seg52.relationRow7053 rho ∧ Seg52.relationRow7054 rho ∧ Seg52.relationRow7055 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6280, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7051, r7052, r7053, r7054, r7055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6280, r7051, r7052, r7053, r7054, r7055⟩

theorem seg52Blind_rung131 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50669 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 131)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      131 (Bool.toZMod bit) (seg52BlindAccState rho 131)
      (seg52BlindAccState rho 132) := by
  obtain ⟨r6280, r7051, r7052, r7053, r7054, r7055⟩ := seg52Blind_rows131 rho h
  unfold Seg52.relationRow6280 at r6280

  unfold Seg52.relationRow7051 at r7051

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7051

  unfold Seg52.relationRow7052 at r7052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7052

  unfold Seg52.relationRow7053 at r7053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7053

  unfold Seg52.relationRow7054 at r7054

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7054

  unfold Seg52.relationRow7055 at r7055

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7055

  have hnextx : seg52BlindDeltaX131 rho =
      seg52BlindDeltaX130 rho + rho 51442 := by
    unfold seg52BlindDeltaX131 seg52BlindDeltaX130
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 130]

    ring

  have hnexty : seg52BlindDeltaY131 rho =
      seg52BlindDeltaY130 rho + rho 51443 := by
    unfold seg52BlindDeltaY131 seg52BlindDeltaY130
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 130]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 131
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX130 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY130 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX131 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY131 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung131_wide (rho 50538) (rho 50669) (seg52BlindDeltaX130 rho) (seg52BlindDeltaY130 rho) (rho 51439) (rho 51440) (rho 51441) (rho 51442) (rho 51443) hacc
  · unfold seg52BlindDeltaX130 seg52BlindDeltaY130
    linear_combination r7051
  · unfold seg52BlindDeltaX130 seg52BlindDeltaY130
    linear_combination r7052
  · unfold seg52BlindDeltaX130 seg52BlindDeltaY130
    linear_combination r7053
  · unfold seg52BlindDeltaX130
    linear_combination r7054
  · unfold seg52BlindDeltaY130
    linear_combination r7055
  · linear_combination r6280

theorem seg52Blind_rows132 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6281 rho ∧ Seg52.relationRow7056 rho ∧ Seg52.relationRow7057 rho ∧ Seg52.relationRow7058 rho ∧ Seg52.relationRow7059 rho ∧ Seg52.relationRow7060 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6281, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7056, r7057, r7058, r7059, r7060, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6281, r7056, r7057, r7058, r7059, r7060⟩

theorem seg52Blind_rung132 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50670 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 132)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      132 (Bool.toZMod bit) (seg52BlindAccState rho 132)
      (seg52BlindAccState rho 133) := by
  obtain ⟨r6281, r7056, r7057, r7058, r7059, r7060⟩ := seg52Blind_rows132 rho h
  unfold Seg52.relationRow6281 at r6281

  unfold Seg52.relationRow7056 at r7056

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7056

  unfold Seg52.relationRow7057 at r7057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7057

  unfold Seg52.relationRow7058 at r7058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7058

  unfold Seg52.relationRow7059 at r7059

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7059

  unfold Seg52.relationRow7060 at r7060

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7060

  have hnextx : seg52BlindDeltaX132 rho =
      seg52BlindDeltaX131 rho + rho 51447 := by
    unfold seg52BlindDeltaX132 seg52BlindDeltaX131
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 131]

    ring

  have hnexty : seg52BlindDeltaY132 rho =
      seg52BlindDeltaY131 rho + rho 51448 := by
    unfold seg52BlindDeltaY132 seg52BlindDeltaY131
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 131]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 132
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX131 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY131 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX132 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY132 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung132_wide (rho 50538) (rho 50670) (seg52BlindDeltaX131 rho) (seg52BlindDeltaY131 rho) (rho 51444) (rho 51445) (rho 51446) (rho 51447) (rho 51448) hacc
  · unfold seg52BlindDeltaX131 seg52BlindDeltaY131
    linear_combination r7056
  · unfold seg52BlindDeltaX131 seg52BlindDeltaY131
    linear_combination r7057
  · unfold seg52BlindDeltaX131 seg52BlindDeltaY131
    linear_combination r7058
  · unfold seg52BlindDeltaX131
    linear_combination r7059
  · unfold seg52BlindDeltaY131
    linear_combination r7060
  · linear_combination r6281

theorem seg52Blind_rows133 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6282 rho ∧ Seg52.relationRow7061 rho ∧ Seg52.relationRow7062 rho ∧ Seg52.relationRow7063 rho ∧ Seg52.relationRow7064 rho ∧ Seg52.relationRow7065 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7061, r7062, r7063, r7064, r7065, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6282, r7061, r7062, r7063, r7064, r7065⟩

theorem seg52Blind_rung133 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50671 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 133)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      133 (Bool.toZMod bit) (seg52BlindAccState rho 133)
      (seg52BlindAccState rho 134) := by
  obtain ⟨r6282, r7061, r7062, r7063, r7064, r7065⟩ := seg52Blind_rows133 rho h
  unfold Seg52.relationRow6282 at r6282

  unfold Seg52.relationRow7061 at r7061

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7061

  unfold Seg52.relationRow7062 at r7062

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7062

  unfold Seg52.relationRow7063 at r7063

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7063

  unfold Seg52.relationRow7064 at r7064

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7064

  unfold Seg52.relationRow7065 at r7065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7065

  have hnextx : seg52BlindDeltaX133 rho =
      seg52BlindDeltaX132 rho + rho 51452 := by
    unfold seg52BlindDeltaX133 seg52BlindDeltaX132
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 132]

    ring

  have hnexty : seg52BlindDeltaY133 rho =
      seg52BlindDeltaY132 rho + rho 51453 := by
    unfold seg52BlindDeltaY133 seg52BlindDeltaY132
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 132]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 133
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX132 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY132 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX133 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY133 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung133_wide (rho 50538) (rho 50671) (seg52BlindDeltaX132 rho) (seg52BlindDeltaY132 rho) (rho 51449) (rho 51450) (rho 51451) (rho 51452) (rho 51453) hacc
  · unfold seg52BlindDeltaX132 seg52BlindDeltaY132
    linear_combination r7061
  · unfold seg52BlindDeltaX132 seg52BlindDeltaY132
    linear_combination r7062
  · unfold seg52BlindDeltaX132 seg52BlindDeltaY132
    linear_combination r7063
  · unfold seg52BlindDeltaX132
    linear_combination r7064
  · unfold seg52BlindDeltaY132
    linear_combination r7065
  · linear_combination r6282

theorem seg52Blind_rows134 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6283 rho ∧ Seg52.relationRow7066 rho ∧ Seg52.relationRow7067 rho ∧ Seg52.relationRow7068 rho ∧ Seg52.relationRow7069 rho ∧ Seg52.relationRow7070 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6283, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7066, r7067, r7068, r7069, r7070, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6283, r7066, r7067, r7068, r7069, r7070⟩

theorem seg52Blind_rung134 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50672 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 134)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      134 (Bool.toZMod bit) (seg52BlindAccState rho 134)
      (seg52BlindAccState rho 135) := by
  obtain ⟨r6283, r7066, r7067, r7068, r7069, r7070⟩ := seg52Blind_rows134 rho h
  unfold Seg52.relationRow6283 at r6283

  unfold Seg52.relationRow7066 at r7066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7066

  unfold Seg52.relationRow7067 at r7067

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7067

  unfold Seg52.relationRow7068 at r7068

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7068

  unfold Seg52.relationRow7069 at r7069

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7069

  unfold Seg52.relationRow7070 at r7070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7070

  have hnextx : seg52BlindDeltaX134 rho =
      seg52BlindDeltaX133 rho + rho 51457 := by
    unfold seg52BlindDeltaX134 seg52BlindDeltaX133
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 133]

    ring

  have hnexty : seg52BlindDeltaY134 rho =
      seg52BlindDeltaY133 rho + rho 51458 := by
    unfold seg52BlindDeltaY134 seg52BlindDeltaY133
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 133]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 134
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX133 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY133 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX134 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY134 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung134_wide (rho 50538) (rho 50672) (seg52BlindDeltaX133 rho) (seg52BlindDeltaY133 rho) (rho 51454) (rho 51455) (rho 51456) (rho 51457) (rho 51458) hacc
  · unfold seg52BlindDeltaX133 seg52BlindDeltaY133
    linear_combination r7066
  · unfold seg52BlindDeltaX133 seg52BlindDeltaY133
    linear_combination r7067
  · unfold seg52BlindDeltaX133 seg52BlindDeltaY133
    linear_combination r7068
  · unfold seg52BlindDeltaX133
    linear_combination r7069
  · unfold seg52BlindDeltaY133
    linear_combination r7070
  · linear_combination r6283

theorem seg52Blind_rows135 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6284 rho ∧ Seg52.relationRow7071 rho ∧ Seg52.relationRow7072 rho ∧ Seg52.relationRow7073 rho ∧ Seg52.relationRow7074 rho ∧ Seg52.relationRow7075 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6284, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7071, r7072, r7073, r7074, r7075, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6284, r7071, r7072, r7073, r7074, r7075⟩

theorem seg52Blind_rung135 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50673 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 135)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      135 (Bool.toZMod bit) (seg52BlindAccState rho 135)
      (seg52BlindAccState rho 136) := by
  obtain ⟨r6284, r7071, r7072, r7073, r7074, r7075⟩ := seg52Blind_rows135 rho h
  unfold Seg52.relationRow6284 at r6284

  unfold Seg52.relationRow7071 at r7071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7071

  unfold Seg52.relationRow7072 at r7072

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7072

  unfold Seg52.relationRow7073 at r7073

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7073

  unfold Seg52.relationRow7074 at r7074

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7074

  unfold Seg52.relationRow7075 at r7075

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7075

  have hnextx : seg52BlindDeltaX135 rho =
      seg52BlindDeltaX134 rho + rho 51462 := by
    unfold seg52BlindDeltaX135 seg52BlindDeltaX134
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 134]

    ring

  have hnexty : seg52BlindDeltaY135 rho =
      seg52BlindDeltaY134 rho + rho 51463 := by
    unfold seg52BlindDeltaY135 seg52BlindDeltaY134
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 134]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 135
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX134 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY134 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX135 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY135 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung135_wide (rho 50538) (rho 50673) (seg52BlindDeltaX134 rho) (seg52BlindDeltaY134 rho) (rho 51459) (rho 51460) (rho 51461) (rho 51462) (rho 51463) hacc
  · unfold seg52BlindDeltaX134 seg52BlindDeltaY134
    linear_combination r7071
  · unfold seg52BlindDeltaX134 seg52BlindDeltaY134
    linear_combination r7072
  · unfold seg52BlindDeltaX134 seg52BlindDeltaY134
    linear_combination r7073
  · unfold seg52BlindDeltaX134
    linear_combination r7074
  · unfold seg52BlindDeltaY134
    linear_combination r7075
  · linear_combination r6284

theorem seg52Blind_rows136 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6285 rho ∧ Seg52.relationRow7076 rho ∧ Seg52.relationRow7077 rho ∧ Seg52.relationRow7078 rho ∧ Seg52.relationRow7079 rho ∧ Seg52.relationRow7080 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6285, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7076, r7077, r7078, r7079, r7080, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6285, r7076, r7077, r7078, r7079, r7080⟩

theorem seg52Blind_rung136 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50674 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 136)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      136 (Bool.toZMod bit) (seg52BlindAccState rho 136)
      (seg52BlindAccState rho 137) := by
  obtain ⟨r6285, r7076, r7077, r7078, r7079, r7080⟩ := seg52Blind_rows136 rho h
  unfold Seg52.relationRow6285 at r6285

  unfold Seg52.relationRow7076 at r7076

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7076

  unfold Seg52.relationRow7077 at r7077

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7077

  unfold Seg52.relationRow7078 at r7078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7078

  unfold Seg52.relationRow7079 at r7079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7079

  unfold Seg52.relationRow7080 at r7080

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7080

  have hnextx : seg52BlindDeltaX136 rho =
      seg52BlindDeltaX135 rho + rho 51467 := by
    unfold seg52BlindDeltaX136 seg52BlindDeltaX135
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 135]

    ring

  have hnexty : seg52BlindDeltaY136 rho =
      seg52BlindDeltaY135 rho + rho 51468 := by
    unfold seg52BlindDeltaY136 seg52BlindDeltaY135
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 135]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 136
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX135 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY135 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX136 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY136 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung136_wide (rho 50538) (rho 50674) (seg52BlindDeltaX135 rho) (seg52BlindDeltaY135 rho) (rho 51464) (rho 51465) (rho 51466) (rho 51467) (rho 51468) hacc
  · unfold seg52BlindDeltaX135 seg52BlindDeltaY135
    linear_combination r7076
  · unfold seg52BlindDeltaX135 seg52BlindDeltaY135
    linear_combination r7077
  · unfold seg52BlindDeltaX135 seg52BlindDeltaY135
    linear_combination r7078
  · unfold seg52BlindDeltaX135
    linear_combination r7079
  · unfold seg52BlindDeltaY135
    linear_combination r7080
  · linear_combination r6285

theorem seg52Blind_rows137 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6286 rho ∧ Seg52.relationRow7081 rho ∧ Seg52.relationRow7082 rho ∧ Seg52.relationRow7083 rho ∧ Seg52.relationRow7084 rho ∧ Seg52.relationRow7085 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7081, r7082, r7083, r7084, r7085, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6286, r7081, r7082, r7083, r7084, r7085⟩

theorem seg52Blind_rung137 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50675 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 137)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      137 (Bool.toZMod bit) (seg52BlindAccState rho 137)
      (seg52BlindAccState rho 138) := by
  obtain ⟨r6286, r7081, r7082, r7083, r7084, r7085⟩ := seg52Blind_rows137 rho h
  unfold Seg52.relationRow6286 at r6286

  unfold Seg52.relationRow7081 at r7081

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7081

  unfold Seg52.relationRow7082 at r7082

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7082

  unfold Seg52.relationRow7083 at r7083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7083

  unfold Seg52.relationRow7084 at r7084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7084

  unfold Seg52.relationRow7085 at r7085

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7085

  have hnextx : seg52BlindDeltaX137 rho =
      seg52BlindDeltaX136 rho + rho 51472 := by
    unfold seg52BlindDeltaX137 seg52BlindDeltaX136
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 136]

    ring

  have hnexty : seg52BlindDeltaY137 rho =
      seg52BlindDeltaY136 rho + rho 51473 := by
    unfold seg52BlindDeltaY137 seg52BlindDeltaY136
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 136]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 137
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX136 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY136 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX137 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY137 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung137_wide (rho 50538) (rho 50675) (seg52BlindDeltaX136 rho) (seg52BlindDeltaY136 rho) (rho 51469) (rho 51470) (rho 51471) (rho 51472) (rho 51473) hacc
  · unfold seg52BlindDeltaX136 seg52BlindDeltaY136
    linear_combination r7081
  · unfold seg52BlindDeltaX136 seg52BlindDeltaY136
    linear_combination r7082
  · unfold seg52BlindDeltaX136 seg52BlindDeltaY136
    linear_combination r7083
  · unfold seg52BlindDeltaX136
    linear_combination r7084
  · unfold seg52BlindDeltaY136
    linear_combination r7085
  · linear_combination r6286

theorem seg52Blind_rows138 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6287 rho ∧ Seg52.relationRow7086 rho ∧ Seg52.relationRow7087 rho ∧ Seg52.relationRow7088 rho ∧ Seg52.relationRow7089 rho ∧ Seg52.relationRow7090 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7086, r7087, r7088, r7089, r7090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6287, r7086, r7087, r7088, r7089, r7090⟩

theorem seg52Blind_rung138 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50676 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 138)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      138 (Bool.toZMod bit) (seg52BlindAccState rho 138)
      (seg52BlindAccState rho 139) := by
  obtain ⟨r6287, r7086, r7087, r7088, r7089, r7090⟩ := seg52Blind_rows138 rho h
  unfold Seg52.relationRow6287 at r6287

  unfold Seg52.relationRow7086 at r7086

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7086

  unfold Seg52.relationRow7087 at r7087

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7087

  unfold Seg52.relationRow7088 at r7088

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7088

  unfold Seg52.relationRow7089 at r7089

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7089

  unfold Seg52.relationRow7090 at r7090

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7090

  have hnextx : seg52BlindDeltaX138 rho =
      seg52BlindDeltaX137 rho + rho 51477 := by
    unfold seg52BlindDeltaX138 seg52BlindDeltaX137
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 137]

    ring

  have hnexty : seg52BlindDeltaY138 rho =
      seg52BlindDeltaY137 rho + rho 51478 := by
    unfold seg52BlindDeltaY138 seg52BlindDeltaY137
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 137]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 138
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX137 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY137 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX138 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY138 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung138_wide (rho 50538) (rho 50676) (seg52BlindDeltaX137 rho) (seg52BlindDeltaY137 rho) (rho 51474) (rho 51475) (rho 51476) (rho 51477) (rho 51478) hacc
  · unfold seg52BlindDeltaX137 seg52BlindDeltaY137
    linear_combination r7086
  · unfold seg52BlindDeltaX137 seg52BlindDeltaY137
    linear_combination r7087
  · unfold seg52BlindDeltaX137 seg52BlindDeltaY137
    linear_combination r7088
  · unfold seg52BlindDeltaX137
    linear_combination r7089
  · unfold seg52BlindDeltaY137
    linear_combination r7090
  · linear_combination r6287

theorem seg52Blind_rows139 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6288 rho ∧ Seg52.relationRow7091 rho ∧ Seg52.relationRow7092 rho ∧ Seg52.relationRow7093 rho ∧ Seg52.relationRow7094 rho ∧ Seg52.relationRow7095 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6288, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7091, r7092, r7093, r7094, r7095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6288, r7091, r7092, r7093, r7094, r7095⟩

theorem seg52Blind_rung139 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50677 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 139)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      139 (Bool.toZMod bit) (seg52BlindAccState rho 139)
      (seg52BlindAccState rho 140) := by
  obtain ⟨r6288, r7091, r7092, r7093, r7094, r7095⟩ := seg52Blind_rows139 rho h
  unfold Seg52.relationRow6288 at r6288

  unfold Seg52.relationRow7091 at r7091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7091

  unfold Seg52.relationRow7092 at r7092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7092

  unfold Seg52.relationRow7093 at r7093

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7093

  unfold Seg52.relationRow7094 at r7094

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7094

  unfold Seg52.relationRow7095 at r7095

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7095

  have hnextx : seg52BlindDeltaX139 rho =
      seg52BlindDeltaX138 rho + rho 51482 := by
    unfold seg52BlindDeltaX139 seg52BlindDeltaX138
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 138]

    ring

  have hnexty : seg52BlindDeltaY139 rho =
      seg52BlindDeltaY138 rho + rho 51483 := by
    unfold seg52BlindDeltaY139 seg52BlindDeltaY138
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 138]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 139
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX138 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY138 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX139 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY139 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung139_wide (rho 50538) (rho 50677) (seg52BlindDeltaX138 rho) (seg52BlindDeltaY138 rho) (rho 51479) (rho 51480) (rho 51481) (rho 51482) (rho 51483) hacc
  · unfold seg52BlindDeltaX138 seg52BlindDeltaY138
    linear_combination r7091
  · unfold seg52BlindDeltaX138 seg52BlindDeltaY138
    linear_combination r7092
  · unfold seg52BlindDeltaX138 seg52BlindDeltaY138
    linear_combination r7093
  · unfold seg52BlindDeltaX138
    linear_combination r7094
  · unfold seg52BlindDeltaY138
    linear_combination r7095
  · linear_combination r6288

theorem seg52Blind_rows140 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6289 rho ∧ Seg52.relationRow7096 rho ∧ Seg52.relationRow7097 rho ∧ Seg52.relationRow7098 rho ∧ Seg52.relationRow7099 rho ∧ Seg52.relationRow7100 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7096, r7097, r7098, r7099, r7100, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6289, r7096, r7097, r7098, r7099, r7100⟩

theorem seg52Blind_rung140 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50678 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 140)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      140 (Bool.toZMod bit) (seg52BlindAccState rho 140)
      (seg52BlindAccState rho 141) := by
  obtain ⟨r6289, r7096, r7097, r7098, r7099, r7100⟩ := seg52Blind_rows140 rho h
  unfold Seg52.relationRow6289 at r6289

  unfold Seg52.relationRow7096 at r7096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7096

  unfold Seg52.relationRow7097 at r7097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7097

  unfold Seg52.relationRow7098 at r7098

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7098

  unfold Seg52.relationRow7099 at r7099

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7099

  unfold Seg52.relationRow7100 at r7100

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7100

  have hnextx : seg52BlindDeltaX140 rho =
      seg52BlindDeltaX139 rho + rho 51487 := by
    unfold seg52BlindDeltaX140 seg52BlindDeltaX139
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 139]

    ring

  have hnexty : seg52BlindDeltaY140 rho =
      seg52BlindDeltaY139 rho + rho 51488 := by
    unfold seg52BlindDeltaY140 seg52BlindDeltaY139
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 139]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 140
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX139 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY139 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX140 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY140 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung140_wide (rho 50538) (rho 50678) (seg52BlindDeltaX139 rho) (seg52BlindDeltaY139 rho) (rho 51484) (rho 51485) (rho 51486) (rho 51487) (rho 51488) hacc
  · unfold seg52BlindDeltaX139 seg52BlindDeltaY139
    linear_combination r7096
  · unfold seg52BlindDeltaX139 seg52BlindDeltaY139
    linear_combination r7097
  · unfold seg52BlindDeltaX139 seg52BlindDeltaY139
    linear_combination r7098
  · unfold seg52BlindDeltaX139
    linear_combination r7099
  · unfold seg52BlindDeltaY139
    linear_combination r7100
  · linear_combination r6289

theorem seg52Blind_hstep_c13 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
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

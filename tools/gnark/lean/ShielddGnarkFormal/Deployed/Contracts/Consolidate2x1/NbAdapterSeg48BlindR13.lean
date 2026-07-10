import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows131 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6280 rho ∧ Seg48.relationRow7051 rho ∧ Seg48.relationRow7052 rho ∧ Seg48.relationRow7053 rho ∧ Seg48.relationRow7054 rho ∧ Seg48.relationRow7055 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6280, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7051, r7052, r7053, r7054, r7055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6280, r7051, r7052, r7053, r7054, r7055⟩

theorem seg48Blind_rung131 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39037 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 131)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      131 (Bool.toZMod bit) (seg48BlindAccState rho 131)
      (seg48BlindAccState rho 132) := by
  obtain ⟨r6280, r7051, r7052, r7053, r7054, r7055⟩ := seg48Blind_rows131 rho h
  unfold Seg48.relationRow6280 at r6280

  unfold Seg48.relationRow7051 at r7051

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7051

  unfold Seg48.relationRow7052 at r7052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7052

  unfold Seg48.relationRow7053 at r7053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7053

  unfold Seg48.relationRow7054 at r7054

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7054

  unfold Seg48.relationRow7055 at r7055

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7055

  have hnextx : seg48BlindDeltaX131 rho =
      seg48BlindDeltaX130 rho + rho 39810 := by
    unfold seg48BlindDeltaX131 seg48BlindDeltaX130
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 130]

    ring

  have hnexty : seg48BlindDeltaY131 rho =
      seg48BlindDeltaY130 rho + rho 39811 := by
    unfold seg48BlindDeltaY131 seg48BlindDeltaY130
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 130]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 131
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX130 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY130 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX131 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY131 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung131_wide (rho 38906) (rho 39037) (seg48BlindDeltaX130 rho) (seg48BlindDeltaY130 rho) (rho 39807) (rho 39808) (rho 39809) (rho 39810) (rho 39811) hacc
  · unfold seg48BlindDeltaX130 seg48BlindDeltaY130
    linear_combination r7051
  · unfold seg48BlindDeltaX130 seg48BlindDeltaY130
    linear_combination r7052
  · unfold seg48BlindDeltaX130 seg48BlindDeltaY130
    linear_combination r7053
  · unfold seg48BlindDeltaX130
    linear_combination r7054
  · unfold seg48BlindDeltaY130
    linear_combination r7055
  · linear_combination r6280

theorem seg48Blind_rows132 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6281 rho ∧ Seg48.relationRow7056 rho ∧ Seg48.relationRow7057 rho ∧ Seg48.relationRow7058 rho ∧ Seg48.relationRow7059 rho ∧ Seg48.relationRow7060 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6281, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7056, r7057, r7058, r7059, r7060, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6281, r7056, r7057, r7058, r7059, r7060⟩

theorem seg48Blind_rung132 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39038 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 132)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      132 (Bool.toZMod bit) (seg48BlindAccState rho 132)
      (seg48BlindAccState rho 133) := by
  obtain ⟨r6281, r7056, r7057, r7058, r7059, r7060⟩ := seg48Blind_rows132 rho h
  unfold Seg48.relationRow6281 at r6281

  unfold Seg48.relationRow7056 at r7056

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7056

  unfold Seg48.relationRow7057 at r7057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7057

  unfold Seg48.relationRow7058 at r7058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7058

  unfold Seg48.relationRow7059 at r7059

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7059

  unfold Seg48.relationRow7060 at r7060

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7060

  have hnextx : seg48BlindDeltaX132 rho =
      seg48BlindDeltaX131 rho + rho 39815 := by
    unfold seg48BlindDeltaX132 seg48BlindDeltaX131
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 131]

    ring

  have hnexty : seg48BlindDeltaY132 rho =
      seg48BlindDeltaY131 rho + rho 39816 := by
    unfold seg48BlindDeltaY132 seg48BlindDeltaY131
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 131]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 132
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX131 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY131 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX132 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY132 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung132_wide (rho 38906) (rho 39038) (seg48BlindDeltaX131 rho) (seg48BlindDeltaY131 rho) (rho 39812) (rho 39813) (rho 39814) (rho 39815) (rho 39816) hacc
  · unfold seg48BlindDeltaX131 seg48BlindDeltaY131
    linear_combination r7056
  · unfold seg48BlindDeltaX131 seg48BlindDeltaY131
    linear_combination r7057
  · unfold seg48BlindDeltaX131 seg48BlindDeltaY131
    linear_combination r7058
  · unfold seg48BlindDeltaX131
    linear_combination r7059
  · unfold seg48BlindDeltaY131
    linear_combination r7060
  · linear_combination r6281

theorem seg48Blind_rows133 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6282 rho ∧ Seg48.relationRow7061 rho ∧ Seg48.relationRow7062 rho ∧ Seg48.relationRow7063 rho ∧ Seg48.relationRow7064 rho ∧ Seg48.relationRow7065 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7061, r7062, r7063, r7064, r7065, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6282, r7061, r7062, r7063, r7064, r7065⟩

theorem seg48Blind_rung133 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39039 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 133)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      133 (Bool.toZMod bit) (seg48BlindAccState rho 133)
      (seg48BlindAccState rho 134) := by
  obtain ⟨r6282, r7061, r7062, r7063, r7064, r7065⟩ := seg48Blind_rows133 rho h
  unfold Seg48.relationRow6282 at r6282

  unfold Seg48.relationRow7061 at r7061

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7061

  unfold Seg48.relationRow7062 at r7062

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7062

  unfold Seg48.relationRow7063 at r7063

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7063

  unfold Seg48.relationRow7064 at r7064

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7064

  unfold Seg48.relationRow7065 at r7065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7065

  have hnextx : seg48BlindDeltaX133 rho =
      seg48BlindDeltaX132 rho + rho 39820 := by
    unfold seg48BlindDeltaX133 seg48BlindDeltaX132
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 132]

    ring

  have hnexty : seg48BlindDeltaY133 rho =
      seg48BlindDeltaY132 rho + rho 39821 := by
    unfold seg48BlindDeltaY133 seg48BlindDeltaY132
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 132]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 133
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX132 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY132 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX133 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY133 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung133_wide (rho 38906) (rho 39039) (seg48BlindDeltaX132 rho) (seg48BlindDeltaY132 rho) (rho 39817) (rho 39818) (rho 39819) (rho 39820) (rho 39821) hacc
  · unfold seg48BlindDeltaX132 seg48BlindDeltaY132
    linear_combination r7061
  · unfold seg48BlindDeltaX132 seg48BlindDeltaY132
    linear_combination r7062
  · unfold seg48BlindDeltaX132 seg48BlindDeltaY132
    linear_combination r7063
  · unfold seg48BlindDeltaX132
    linear_combination r7064
  · unfold seg48BlindDeltaY132
    linear_combination r7065
  · linear_combination r6282

theorem seg48Blind_rows134 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6283 rho ∧ Seg48.relationRow7066 rho ∧ Seg48.relationRow7067 rho ∧ Seg48.relationRow7068 rho ∧ Seg48.relationRow7069 rho ∧ Seg48.relationRow7070 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6283, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7066, r7067, r7068, r7069, r7070, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6283, r7066, r7067, r7068, r7069, r7070⟩

theorem seg48Blind_rung134 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39040 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 134)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      134 (Bool.toZMod bit) (seg48BlindAccState rho 134)
      (seg48BlindAccState rho 135) := by
  obtain ⟨r6283, r7066, r7067, r7068, r7069, r7070⟩ := seg48Blind_rows134 rho h
  unfold Seg48.relationRow6283 at r6283

  unfold Seg48.relationRow7066 at r7066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7066

  unfold Seg48.relationRow7067 at r7067

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7067

  unfold Seg48.relationRow7068 at r7068

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7068

  unfold Seg48.relationRow7069 at r7069

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7069

  unfold Seg48.relationRow7070 at r7070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7070

  have hnextx : seg48BlindDeltaX134 rho =
      seg48BlindDeltaX133 rho + rho 39825 := by
    unfold seg48BlindDeltaX134 seg48BlindDeltaX133
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 133]

    ring

  have hnexty : seg48BlindDeltaY134 rho =
      seg48BlindDeltaY133 rho + rho 39826 := by
    unfold seg48BlindDeltaY134 seg48BlindDeltaY133
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 133]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 134
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX133 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY133 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX134 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY134 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung134_wide (rho 38906) (rho 39040) (seg48BlindDeltaX133 rho) (seg48BlindDeltaY133 rho) (rho 39822) (rho 39823) (rho 39824) (rho 39825) (rho 39826) hacc
  · unfold seg48BlindDeltaX133 seg48BlindDeltaY133
    linear_combination r7066
  · unfold seg48BlindDeltaX133 seg48BlindDeltaY133
    linear_combination r7067
  · unfold seg48BlindDeltaX133 seg48BlindDeltaY133
    linear_combination r7068
  · unfold seg48BlindDeltaX133
    linear_combination r7069
  · unfold seg48BlindDeltaY133
    linear_combination r7070
  · linear_combination r6283

theorem seg48Blind_rows135 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6284 rho ∧ Seg48.relationRow7071 rho ∧ Seg48.relationRow7072 rho ∧ Seg48.relationRow7073 rho ∧ Seg48.relationRow7074 rho ∧ Seg48.relationRow7075 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6284, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7071, r7072, r7073, r7074, r7075, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6284, r7071, r7072, r7073, r7074, r7075⟩

theorem seg48Blind_rung135 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39041 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 135)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      135 (Bool.toZMod bit) (seg48BlindAccState rho 135)
      (seg48BlindAccState rho 136) := by
  obtain ⟨r6284, r7071, r7072, r7073, r7074, r7075⟩ := seg48Blind_rows135 rho h
  unfold Seg48.relationRow6284 at r6284

  unfold Seg48.relationRow7071 at r7071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7071

  unfold Seg48.relationRow7072 at r7072

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7072

  unfold Seg48.relationRow7073 at r7073

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7073

  unfold Seg48.relationRow7074 at r7074

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7074

  unfold Seg48.relationRow7075 at r7075

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7075

  have hnextx : seg48BlindDeltaX135 rho =
      seg48BlindDeltaX134 rho + rho 39830 := by
    unfold seg48BlindDeltaX135 seg48BlindDeltaX134
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 134]

    ring

  have hnexty : seg48BlindDeltaY135 rho =
      seg48BlindDeltaY134 rho + rho 39831 := by
    unfold seg48BlindDeltaY135 seg48BlindDeltaY134
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 134]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 135
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX134 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY134 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX135 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY135 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung135_wide (rho 38906) (rho 39041) (seg48BlindDeltaX134 rho) (seg48BlindDeltaY134 rho) (rho 39827) (rho 39828) (rho 39829) (rho 39830) (rho 39831) hacc
  · unfold seg48BlindDeltaX134 seg48BlindDeltaY134
    linear_combination r7071
  · unfold seg48BlindDeltaX134 seg48BlindDeltaY134
    linear_combination r7072
  · unfold seg48BlindDeltaX134 seg48BlindDeltaY134
    linear_combination r7073
  · unfold seg48BlindDeltaX134
    linear_combination r7074
  · unfold seg48BlindDeltaY134
    linear_combination r7075
  · linear_combination r6284

theorem seg48Blind_rows136 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6285 rho ∧ Seg48.relationRow7076 rho ∧ Seg48.relationRow7077 rho ∧ Seg48.relationRow7078 rho ∧ Seg48.relationRow7079 rho ∧ Seg48.relationRow7080 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6285, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7076, r7077, r7078, r7079, r7080, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6285, r7076, r7077, r7078, r7079, r7080⟩

theorem seg48Blind_rung136 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39042 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 136)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      136 (Bool.toZMod bit) (seg48BlindAccState rho 136)
      (seg48BlindAccState rho 137) := by
  obtain ⟨r6285, r7076, r7077, r7078, r7079, r7080⟩ := seg48Blind_rows136 rho h
  unfold Seg48.relationRow6285 at r6285

  unfold Seg48.relationRow7076 at r7076

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7076

  unfold Seg48.relationRow7077 at r7077

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7077

  unfold Seg48.relationRow7078 at r7078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7078

  unfold Seg48.relationRow7079 at r7079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7079

  unfold Seg48.relationRow7080 at r7080

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7080

  have hnextx : seg48BlindDeltaX136 rho =
      seg48BlindDeltaX135 rho + rho 39835 := by
    unfold seg48BlindDeltaX136 seg48BlindDeltaX135
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 135]

    ring

  have hnexty : seg48BlindDeltaY136 rho =
      seg48BlindDeltaY135 rho + rho 39836 := by
    unfold seg48BlindDeltaY136 seg48BlindDeltaY135
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 135]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 136
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX135 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY135 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX136 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY136 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung136_wide (rho 38906) (rho 39042) (seg48BlindDeltaX135 rho) (seg48BlindDeltaY135 rho) (rho 39832) (rho 39833) (rho 39834) (rho 39835) (rho 39836) hacc
  · unfold seg48BlindDeltaX135 seg48BlindDeltaY135
    linear_combination r7076
  · unfold seg48BlindDeltaX135 seg48BlindDeltaY135
    linear_combination r7077
  · unfold seg48BlindDeltaX135 seg48BlindDeltaY135
    linear_combination r7078
  · unfold seg48BlindDeltaX135
    linear_combination r7079
  · unfold seg48BlindDeltaY135
    linear_combination r7080
  · linear_combination r6285

theorem seg48Blind_rows137 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6286 rho ∧ Seg48.relationRow7081 rho ∧ Seg48.relationRow7082 rho ∧ Seg48.relationRow7083 rho ∧ Seg48.relationRow7084 rho ∧ Seg48.relationRow7085 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7081, r7082, r7083, r7084, r7085, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6286, r7081, r7082, r7083, r7084, r7085⟩

theorem seg48Blind_rung137 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39043 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 137)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      137 (Bool.toZMod bit) (seg48BlindAccState rho 137)
      (seg48BlindAccState rho 138) := by
  obtain ⟨r6286, r7081, r7082, r7083, r7084, r7085⟩ := seg48Blind_rows137 rho h
  unfold Seg48.relationRow6286 at r6286

  unfold Seg48.relationRow7081 at r7081

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7081

  unfold Seg48.relationRow7082 at r7082

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7082

  unfold Seg48.relationRow7083 at r7083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7083

  unfold Seg48.relationRow7084 at r7084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7084

  unfold Seg48.relationRow7085 at r7085

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7085

  have hnextx : seg48BlindDeltaX137 rho =
      seg48BlindDeltaX136 rho + rho 39840 := by
    unfold seg48BlindDeltaX137 seg48BlindDeltaX136
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 136]

    ring

  have hnexty : seg48BlindDeltaY137 rho =
      seg48BlindDeltaY136 rho + rho 39841 := by
    unfold seg48BlindDeltaY137 seg48BlindDeltaY136
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 136]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 137
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX136 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY136 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX137 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY137 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung137_wide (rho 38906) (rho 39043) (seg48BlindDeltaX136 rho) (seg48BlindDeltaY136 rho) (rho 39837) (rho 39838) (rho 39839) (rho 39840) (rho 39841) hacc
  · unfold seg48BlindDeltaX136 seg48BlindDeltaY136
    linear_combination r7081
  · unfold seg48BlindDeltaX136 seg48BlindDeltaY136
    linear_combination r7082
  · unfold seg48BlindDeltaX136 seg48BlindDeltaY136
    linear_combination r7083
  · unfold seg48BlindDeltaX136
    linear_combination r7084
  · unfold seg48BlindDeltaY136
    linear_combination r7085
  · linear_combination r6286

theorem seg48Blind_rows138 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6287 rho ∧ Seg48.relationRow7086 rho ∧ Seg48.relationRow7087 rho ∧ Seg48.relationRow7088 rho ∧ Seg48.relationRow7089 rho ∧ Seg48.relationRow7090 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7086, r7087, r7088, r7089, r7090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6287, r7086, r7087, r7088, r7089, r7090⟩

theorem seg48Blind_rung138 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39044 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 138)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      138 (Bool.toZMod bit) (seg48BlindAccState rho 138)
      (seg48BlindAccState rho 139) := by
  obtain ⟨r6287, r7086, r7087, r7088, r7089, r7090⟩ := seg48Blind_rows138 rho h
  unfold Seg48.relationRow6287 at r6287

  unfold Seg48.relationRow7086 at r7086

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7086

  unfold Seg48.relationRow7087 at r7087

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7087

  unfold Seg48.relationRow7088 at r7088

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7088

  unfold Seg48.relationRow7089 at r7089

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7089

  unfold Seg48.relationRow7090 at r7090

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7090

  have hnextx : seg48BlindDeltaX138 rho =
      seg48BlindDeltaX137 rho + rho 39845 := by
    unfold seg48BlindDeltaX138 seg48BlindDeltaX137
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 137]

    ring

  have hnexty : seg48BlindDeltaY138 rho =
      seg48BlindDeltaY137 rho + rho 39846 := by
    unfold seg48BlindDeltaY138 seg48BlindDeltaY137
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 137]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 138
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX137 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY137 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX138 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY138 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung138_wide (rho 38906) (rho 39044) (seg48BlindDeltaX137 rho) (seg48BlindDeltaY137 rho) (rho 39842) (rho 39843) (rho 39844) (rho 39845) (rho 39846) hacc
  · unfold seg48BlindDeltaX137 seg48BlindDeltaY137
    linear_combination r7086
  · unfold seg48BlindDeltaX137 seg48BlindDeltaY137
    linear_combination r7087
  · unfold seg48BlindDeltaX137 seg48BlindDeltaY137
    linear_combination r7088
  · unfold seg48BlindDeltaX137
    linear_combination r7089
  · unfold seg48BlindDeltaY137
    linear_combination r7090
  · linear_combination r6287

theorem seg48Blind_rows139 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6288 rho ∧ Seg48.relationRow7091 rho ∧ Seg48.relationRow7092 rho ∧ Seg48.relationRow7093 rho ∧ Seg48.relationRow7094 rho ∧ Seg48.relationRow7095 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6288, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7091, r7092, r7093, r7094, r7095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6288, r7091, r7092, r7093, r7094, r7095⟩

theorem seg48Blind_rung139 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39045 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 139)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      139 (Bool.toZMod bit) (seg48BlindAccState rho 139)
      (seg48BlindAccState rho 140) := by
  obtain ⟨r6288, r7091, r7092, r7093, r7094, r7095⟩ := seg48Blind_rows139 rho h
  unfold Seg48.relationRow6288 at r6288

  unfold Seg48.relationRow7091 at r7091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7091

  unfold Seg48.relationRow7092 at r7092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7092

  unfold Seg48.relationRow7093 at r7093

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7093

  unfold Seg48.relationRow7094 at r7094

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7094

  unfold Seg48.relationRow7095 at r7095

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7095

  have hnextx : seg48BlindDeltaX139 rho =
      seg48BlindDeltaX138 rho + rho 39850 := by
    unfold seg48BlindDeltaX139 seg48BlindDeltaX138
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 138]

    ring

  have hnexty : seg48BlindDeltaY139 rho =
      seg48BlindDeltaY138 rho + rho 39851 := by
    unfold seg48BlindDeltaY139 seg48BlindDeltaY138
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 138]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 139
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX138 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY138 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX139 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY139 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung139_wide (rho 38906) (rho 39045) (seg48BlindDeltaX138 rho) (seg48BlindDeltaY138 rho) (rho 39847) (rho 39848) (rho 39849) (rho 39850) (rho 39851) hacc
  · unfold seg48BlindDeltaX138 seg48BlindDeltaY138
    linear_combination r7091
  · unfold seg48BlindDeltaX138 seg48BlindDeltaY138
    linear_combination r7092
  · unfold seg48BlindDeltaX138 seg48BlindDeltaY138
    linear_combination r7093
  · unfold seg48BlindDeltaX138
    linear_combination r7094
  · unfold seg48BlindDeltaY138
    linear_combination r7095
  · linear_combination r6288

theorem seg48Blind_rows140 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6289 rho ∧ Seg48.relationRow7096 rho ∧ Seg48.relationRow7097 rho ∧ Seg48.relationRow7098 rho ∧ Seg48.relationRow7099 rho ∧ Seg48.relationRow7100 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7096, r7097, r7098, r7099, r7100, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6289, r7096, r7097, r7098, r7099, r7100⟩

theorem seg48Blind_rung140 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39046 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 140)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      140 (Bool.toZMod bit) (seg48BlindAccState rho 140)
      (seg48BlindAccState rho 141) := by
  obtain ⟨r6289, r7096, r7097, r7098, r7099, r7100⟩ := seg48Blind_rows140 rho h
  unfold Seg48.relationRow6289 at r6289

  unfold Seg48.relationRow7096 at r7096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7096

  unfold Seg48.relationRow7097 at r7097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7097

  unfold Seg48.relationRow7098 at r7098

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7098

  unfold Seg48.relationRow7099 at r7099

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7099

  unfold Seg48.relationRow7100 at r7100

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7100

  have hnextx : seg48BlindDeltaX140 rho =
      seg48BlindDeltaX139 rho + rho 39855 := by
    unfold seg48BlindDeltaX140 seg48BlindDeltaX139
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 139]

    ring

  have hnexty : seg48BlindDeltaY140 rho =
      seg48BlindDeltaY139 rho + rho 39856 := by
    unfold seg48BlindDeltaY140 seg48BlindDeltaY139
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 139]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 140
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX139 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY139 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX140 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY140 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung140_wide (rho 38906) (rho 39046) (seg48BlindDeltaX139 rho) (seg48BlindDeltaY139 rho) (rho 39852) (rho 39853) (rho 39854) (rho 39855) (rho 39856) hacc
  · unfold seg48BlindDeltaX139 seg48BlindDeltaY139
    linear_combination r7096
  · unfold seg48BlindDeltaX139 seg48BlindDeltaY139
    linear_combination r7097
  · unfold seg48BlindDeltaX139 seg48BlindDeltaY139
    linear_combination r7098
  · unfold seg48BlindDeltaX139
    linear_combination r7099
  · unfold seg48BlindDeltaY139
    linear_combination r7100
  · linear_combination r6289

theorem seg48Blind_hstep_c13 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 131 ≤ i → i < 141 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung131 rho h bits[131]! (hbitAt 131 (by omega)) hacc
  · exact seg48Blind_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc
  · exact seg48Blind_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc
  · exact seg48Blind_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc
  · exact seg48Blind_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc
  · exact seg48Blind_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc
  · exact seg48Blind_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc
  · exact seg48Blind_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc
  · exact seg48Blind_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc
  · exact seg48Blind_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

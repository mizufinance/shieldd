import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows141 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6290 rho ∧ Seg52.relationRow7101 rho ∧ Seg52.relationRow7102 rho ∧ Seg52.relationRow7103 rho ∧ Seg52.relationRow7104 rho ∧ Seg52.relationRow7105 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7101, r7102, r7103, r7104, r7105, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6290, r7101, r7102, r7103, r7104, r7105⟩

theorem seg52Blind_rung141 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50679 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 141)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      141 (Bool.toZMod bit) (seg52BlindAccState rho 141)
      (seg52BlindAccState rho 142) := by
  obtain ⟨r6290, r7101, r7102, r7103, r7104, r7105⟩ := seg52Blind_rows141 rho h
  unfold Seg52.relationRow6290 at r6290

  unfold Seg52.relationRow7101 at r7101

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7101

  unfold Seg52.relationRow7102 at r7102

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7102

  unfold Seg52.relationRow7103 at r7103

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7103

  unfold Seg52.relationRow7104 at r7104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7104

  unfold Seg52.relationRow7105 at r7105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7105

  have hnextx : seg52BlindDeltaX141 rho =
      seg52BlindDeltaX140 rho + rho 51492 := by
    unfold seg52BlindDeltaX141 seg52BlindDeltaX140
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 140]

    ring

  have hnexty : seg52BlindDeltaY141 rho =
      seg52BlindDeltaY140 rho + rho 51493 := by
    unfold seg52BlindDeltaY141 seg52BlindDeltaY140
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 140]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 141
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX140 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY140 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX141 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY141 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung141_wide (rho 50538) (rho 50679) (seg52BlindDeltaX140 rho) (seg52BlindDeltaY140 rho) (rho 51489) (rho 51490) (rho 51491) (rho 51492) (rho 51493) hacc
  · unfold seg52BlindDeltaX140 seg52BlindDeltaY140
    linear_combination r7101
  · unfold seg52BlindDeltaX140 seg52BlindDeltaY140
    linear_combination r7102
  · unfold seg52BlindDeltaX140 seg52BlindDeltaY140
    linear_combination r7103
  · unfold seg52BlindDeltaX140
    linear_combination r7104
  · unfold seg52BlindDeltaY140
    linear_combination r7105
  · linear_combination r6290

theorem seg52Blind_rows142 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6291 rho ∧ Seg52.relationRow7106 rho ∧ Seg52.relationRow7107 rho ∧ Seg52.relationRow7108 rho ∧ Seg52.relationRow7109 rho ∧ Seg52.relationRow7110 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6291, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7106, r7107, r7108, r7109, r7110, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6291, r7106, r7107, r7108, r7109, r7110⟩

theorem seg52Blind_rung142 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50680 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 142)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      142 (Bool.toZMod bit) (seg52BlindAccState rho 142)
      (seg52BlindAccState rho 143) := by
  obtain ⟨r6291, r7106, r7107, r7108, r7109, r7110⟩ := seg52Blind_rows142 rho h
  unfold Seg52.relationRow6291 at r6291

  unfold Seg52.relationRow7106 at r7106

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7106

  unfold Seg52.relationRow7107 at r7107

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7107

  unfold Seg52.relationRow7108 at r7108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7108

  unfold Seg52.relationRow7109 at r7109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7109

  unfold Seg52.relationRow7110 at r7110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7110

  have hnextx : seg52BlindDeltaX142 rho =
      seg52BlindDeltaX141 rho + rho 51497 := by
    unfold seg52BlindDeltaX142 seg52BlindDeltaX141
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 141]

    ring

  have hnexty : seg52BlindDeltaY142 rho =
      seg52BlindDeltaY141 rho + rho 51498 := by
    unfold seg52BlindDeltaY142 seg52BlindDeltaY141
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 141]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 142
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX141 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY141 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX142 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY142 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung142_wide (rho 50538) (rho 50680) (seg52BlindDeltaX141 rho) (seg52BlindDeltaY141 rho) (rho 51494) (rho 51495) (rho 51496) (rho 51497) (rho 51498) hacc
  · unfold seg52BlindDeltaX141 seg52BlindDeltaY141
    linear_combination r7106
  · unfold seg52BlindDeltaX141 seg52BlindDeltaY141
    linear_combination r7107
  · unfold seg52BlindDeltaX141 seg52BlindDeltaY141
    linear_combination r7108
  · unfold seg52BlindDeltaX141
    linear_combination r7109
  · unfold seg52BlindDeltaY141
    linear_combination r7110
  · linear_combination r6291

theorem seg52Blind_rows143 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6292 rho ∧ Seg52.relationRow7111 rho ∧ Seg52.relationRow7112 rho ∧ Seg52.relationRow7113 rho ∧ Seg52.relationRow7114 rho ∧ Seg52.relationRow7115 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7111, r7112, r7113, r7114, r7115, _, _, _, _⟩

  exact ⟨r6292, r7111, r7112, r7113, r7114, r7115⟩

theorem seg52Blind_rung143 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50681 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 143)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      143 (Bool.toZMod bit) (seg52BlindAccState rho 143)
      (seg52BlindAccState rho 144) := by
  obtain ⟨r6292, r7111, r7112, r7113, r7114, r7115⟩ := seg52Blind_rows143 rho h
  unfold Seg52.relationRow6292 at r6292

  unfold Seg52.relationRow7111 at r7111

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7111

  unfold Seg52.relationRow7112 at r7112

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7112

  unfold Seg52.relationRow7113 at r7113

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7113

  unfold Seg52.relationRow7114 at r7114

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7114

  unfold Seg52.relationRow7115 at r7115

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7115

  have hnextx : seg52BlindDeltaX143 rho =
      seg52BlindDeltaX142 rho + rho 51502 := by
    unfold seg52BlindDeltaX143 seg52BlindDeltaX142
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 142]

    ring

  have hnexty : seg52BlindDeltaY143 rho =
      seg52BlindDeltaY142 rho + rho 51503 := by
    unfold seg52BlindDeltaY143 seg52BlindDeltaY142
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 142]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 143
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX142 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY142 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX143 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY143 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung143_wide (rho 50538) (rho 50681) (seg52BlindDeltaX142 rho) (seg52BlindDeltaY142 rho) (rho 51499) (rho 51500) (rho 51501) (rho 51502) (rho 51503) hacc
  · unfold seg52BlindDeltaX142 seg52BlindDeltaY142
    linear_combination r7111
  · unfold seg52BlindDeltaX142 seg52BlindDeltaY142
    linear_combination r7112
  · unfold seg52BlindDeltaX142 seg52BlindDeltaY142
    linear_combination r7113
  · unfold seg52BlindDeltaX142
    linear_combination r7114
  · unfold seg52BlindDeltaY142
    linear_combination r7115
  · linear_combination r6292

theorem seg52Blind_rows144 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6293 rho ∧ Seg52.relationRow7116 rho ∧ Seg52.relationRow7117 rho ∧ Seg52.relationRow7118 rho ∧ Seg52.relationRow7119 rho ∧ Seg52.relationRow7120 rho := by
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

    _, _, _, _, _, _, _, _, p88, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6293, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7116, r7117, r7118, r7119⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨r7120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6293, r7116, r7117, r7118, r7119, r7120⟩

theorem seg52Blind_rung144 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50682 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 144)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      144 (Bool.toZMod bit) (seg52BlindAccState rho 144)
      (seg52BlindAccState rho 145) := by
  obtain ⟨r6293, r7116, r7117, r7118, r7119, r7120⟩ := seg52Blind_rows144 rho h
  unfold Seg52.relationRow6293 at r6293

  unfold Seg52.relationRow7116 at r7116

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7116

  unfold Seg52.relationRow7117 at r7117

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7117

  unfold Seg52.relationRow7118 at r7118

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7118

  unfold Seg52.relationRow7119 at r7119

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7119

  unfold Seg52.relationRow7120 at r7120

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7120

  have hnextx : seg52BlindDeltaX144 rho =
      seg52BlindDeltaX143 rho + rho 51507 := by
    unfold seg52BlindDeltaX144 seg52BlindDeltaX143
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 143]

    ring

  have hnexty : seg52BlindDeltaY144 rho =
      seg52BlindDeltaY143 rho + rho 51508 := by
    unfold seg52BlindDeltaY144 seg52BlindDeltaY143
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 143]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 144
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX143 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY143 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX144 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY144 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung144_wide (rho 50538) (rho 50682) (seg52BlindDeltaX143 rho) (seg52BlindDeltaY143 rho) (rho 51504) (rho 51505) (rho 51506) (rho 51507) (rho 51508) hacc
  · unfold seg52BlindDeltaX143 seg52BlindDeltaY143
    linear_combination r7116
  · unfold seg52BlindDeltaX143 seg52BlindDeltaY143
    linear_combination r7117
  · unfold seg52BlindDeltaX143 seg52BlindDeltaY143
    linear_combination r7118
  · unfold seg52BlindDeltaX143
    linear_combination r7119
  · unfold seg52BlindDeltaY143
    linear_combination r7120
  · linear_combination r6293

theorem seg52Blind_rows145 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6294 rho ∧ Seg52.relationRow7121 rho ∧ Seg52.relationRow7122 rho ∧ Seg52.relationRow7123 rho ∧ Seg52.relationRow7124 rho ∧ Seg52.relationRow7125 rho := by
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

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6294, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, r7121, r7122, r7123, r7124, r7125, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6294, r7121, r7122, r7123, r7124, r7125⟩

theorem seg52Blind_rung145 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50683 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 145)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      145 (Bool.toZMod bit) (seg52BlindAccState rho 145)
      (seg52BlindAccState rho 146) := by
  obtain ⟨r6294, r7121, r7122, r7123, r7124, r7125⟩ := seg52Blind_rows145 rho h
  unfold Seg52.relationRow6294 at r6294

  unfold Seg52.relationRow7121 at r7121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7121

  unfold Seg52.relationRow7122 at r7122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7122

  unfold Seg52.relationRow7123 at r7123

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7123

  unfold Seg52.relationRow7124 at r7124

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7124

  unfold Seg52.relationRow7125 at r7125

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7125

  have hnextx : seg52BlindDeltaX145 rho =
      seg52BlindDeltaX144 rho + rho 51512 := by
    unfold seg52BlindDeltaX145 seg52BlindDeltaX144
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 144]

    ring

  have hnexty : seg52BlindDeltaY145 rho =
      seg52BlindDeltaY144 rho + rho 51513 := by
    unfold seg52BlindDeltaY145 seg52BlindDeltaY144
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 144]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 145
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX144 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY144 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX145 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY145 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung145_wide (rho 50538) (rho 50683) (seg52BlindDeltaX144 rho) (seg52BlindDeltaY144 rho) (rho 51509) (rho 51510) (rho 51511) (rho 51512) (rho 51513) hacc
  · unfold seg52BlindDeltaX144 seg52BlindDeltaY144
    linear_combination r7121
  · unfold seg52BlindDeltaX144 seg52BlindDeltaY144
    linear_combination r7122
  · unfold seg52BlindDeltaX144 seg52BlindDeltaY144
    linear_combination r7123
  · unfold seg52BlindDeltaX144
    linear_combination r7124
  · unfold seg52BlindDeltaY144
    linear_combination r7125
  · linear_combination r6294

theorem seg52Blind_rows146 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6295 rho ∧ Seg52.relationRow7126 rho ∧ Seg52.relationRow7127 rho ∧ Seg52.relationRow7128 rho ∧ Seg52.relationRow7129 rho ∧ Seg52.relationRow7130 rho := by
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

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6295, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, r7126, r7127, r7128, r7129, r7130, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6295, r7126, r7127, r7128, r7129, r7130⟩

theorem seg52Blind_rung146 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50684 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 146)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      146 (Bool.toZMod bit) (seg52BlindAccState rho 146)
      (seg52BlindAccState rho 147) := by
  obtain ⟨r6295, r7126, r7127, r7128, r7129, r7130⟩ := seg52Blind_rows146 rho h
  unfold Seg52.relationRow6295 at r6295

  unfold Seg52.relationRow7126 at r7126

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7126

  unfold Seg52.relationRow7127 at r7127

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7127

  unfold Seg52.relationRow7128 at r7128

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7128

  unfold Seg52.relationRow7129 at r7129

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7129

  unfold Seg52.relationRow7130 at r7130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7130

  have hnextx : seg52BlindDeltaX146 rho =
      seg52BlindDeltaX145 rho + rho 51517 := by
    unfold seg52BlindDeltaX146 seg52BlindDeltaX145
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 145]

    ring

  have hnexty : seg52BlindDeltaY146 rho =
      seg52BlindDeltaY145 rho + rho 51518 := by
    unfold seg52BlindDeltaY146 seg52BlindDeltaY145
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 145]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 146
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX145 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY145 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX146 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY146 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung146_wide (rho 50538) (rho 50684) (seg52BlindDeltaX145 rho) (seg52BlindDeltaY145 rho) (rho 51514) (rho 51515) (rho 51516) (rho 51517) (rho 51518) hacc
  · unfold seg52BlindDeltaX145 seg52BlindDeltaY145
    linear_combination r7126
  · unfold seg52BlindDeltaX145 seg52BlindDeltaY145
    linear_combination r7127
  · unfold seg52BlindDeltaX145 seg52BlindDeltaY145
    linear_combination r7128
  · unfold seg52BlindDeltaX145
    linear_combination r7129
  · unfold seg52BlindDeltaY145
    linear_combination r7130
  · linear_combination r6295

theorem seg52Blind_rows147 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6296 rho ∧ Seg52.relationRow7131 rho ∧ Seg52.relationRow7132 rho ∧ Seg52.relationRow7133 rho ∧ Seg52.relationRow7134 rho ∧ Seg52.relationRow7135 rho := by
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

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7131, r7132, r7133, r7134, r7135, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6296, r7131, r7132, r7133, r7134, r7135⟩

theorem seg52Blind_rung147 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50685 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 147)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      147 (Bool.toZMod bit) (seg52BlindAccState rho 147)
      (seg52BlindAccState rho 148) := by
  obtain ⟨r6296, r7131, r7132, r7133, r7134, r7135⟩ := seg52Blind_rows147 rho h
  unfold Seg52.relationRow6296 at r6296

  unfold Seg52.relationRow7131 at r7131

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7131

  unfold Seg52.relationRow7132 at r7132

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7132

  unfold Seg52.relationRow7133 at r7133

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7133

  unfold Seg52.relationRow7134 at r7134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7134

  unfold Seg52.relationRow7135 at r7135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7135

  have hnextx : seg52BlindDeltaX147 rho =
      seg52BlindDeltaX146 rho + rho 51522 := by
    unfold seg52BlindDeltaX147 seg52BlindDeltaX146
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 146]

    ring

  have hnexty : seg52BlindDeltaY147 rho =
      seg52BlindDeltaY146 rho + rho 51523 := by
    unfold seg52BlindDeltaY147 seg52BlindDeltaY146
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 146]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 147
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX146 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY146 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX147 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY147 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung147_wide (rho 50538) (rho 50685) (seg52BlindDeltaX146 rho) (seg52BlindDeltaY146 rho) (rho 51519) (rho 51520) (rho 51521) (rho 51522) (rho 51523) hacc
  · unfold seg52BlindDeltaX146 seg52BlindDeltaY146
    linear_combination r7131
  · unfold seg52BlindDeltaX146 seg52BlindDeltaY146
    linear_combination r7132
  · unfold seg52BlindDeltaX146 seg52BlindDeltaY146
    linear_combination r7133
  · unfold seg52BlindDeltaX146
    linear_combination r7134
  · unfold seg52BlindDeltaY146
    linear_combination r7135
  · linear_combination r6296

theorem seg52Blind_rows148 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6297 rho ∧ Seg52.relationRow7136 rho ∧ Seg52.relationRow7137 rho ∧ Seg52.relationRow7138 rho ∧ Seg52.relationRow7139 rho ∧ Seg52.relationRow7140 rho := by
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

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7136, r7137, r7138, r7139, r7140, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6297, r7136, r7137, r7138, r7139, r7140⟩

theorem seg52Blind_rung148 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50686 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 148)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      148 (Bool.toZMod bit) (seg52BlindAccState rho 148)
      (seg52BlindAccState rho 149) := by
  obtain ⟨r6297, r7136, r7137, r7138, r7139, r7140⟩ := seg52Blind_rows148 rho h
  unfold Seg52.relationRow6297 at r6297

  unfold Seg52.relationRow7136 at r7136

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7136

  unfold Seg52.relationRow7137 at r7137

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7137

  unfold Seg52.relationRow7138 at r7138

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7138

  unfold Seg52.relationRow7139 at r7139

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7139

  unfold Seg52.relationRow7140 at r7140

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7140

  have hnextx : seg52BlindDeltaX148 rho =
      seg52BlindDeltaX147 rho + rho 51527 := by
    unfold seg52BlindDeltaX148 seg52BlindDeltaX147
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 147]

    ring

  have hnexty : seg52BlindDeltaY148 rho =
      seg52BlindDeltaY147 rho + rho 51528 := by
    unfold seg52BlindDeltaY148 seg52BlindDeltaY147
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 147]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 148
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX147 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY147 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX148 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY148 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung148_wide (rho 50538) (rho 50686) (seg52BlindDeltaX147 rho) (seg52BlindDeltaY147 rho) (rho 51524) (rho 51525) (rho 51526) (rho 51527) (rho 51528) hacc
  · unfold seg52BlindDeltaX147 seg52BlindDeltaY147
    linear_combination r7136
  · unfold seg52BlindDeltaX147 seg52BlindDeltaY147
    linear_combination r7137
  · unfold seg52BlindDeltaX147 seg52BlindDeltaY147
    linear_combination r7138
  · unfold seg52BlindDeltaX147
    linear_combination r7139
  · unfold seg52BlindDeltaY147
    linear_combination r7140
  · linear_combination r6297

theorem seg52Blind_rows149 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6298 rho ∧ Seg52.relationRow7141 rho ∧ Seg52.relationRow7142 rho ∧ Seg52.relationRow7143 rho ∧ Seg52.relationRow7144 rho ∧ Seg52.relationRow7145 rho := by
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

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6298, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7141, r7142, r7143, r7144, r7145, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6298, r7141, r7142, r7143, r7144, r7145⟩

theorem seg52Blind_rung149 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50687 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 149)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      149 (Bool.toZMod bit) (seg52BlindAccState rho 149)
      (seg52BlindAccState rho 150) := by
  obtain ⟨r6298, r7141, r7142, r7143, r7144, r7145⟩ := seg52Blind_rows149 rho h
  unfold Seg52.relationRow6298 at r6298

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

  have hnextx : seg52BlindDeltaX149 rho =
      seg52BlindDeltaX148 rho + rho 51532 := by
    unfold seg52BlindDeltaX149 seg52BlindDeltaX148
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 148]

    ring

  have hnexty : seg52BlindDeltaY149 rho =
      seg52BlindDeltaY148 rho + rho 51533 := by
    unfold seg52BlindDeltaY149 seg52BlindDeltaY148
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 148]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 149
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX148 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY148 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX149 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY149 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung149_wide (rho 50538) (rho 50687) (seg52BlindDeltaX148 rho) (seg52BlindDeltaY148 rho) (rho 51529) (rho 51530) (rho 51531) (rho 51532) (rho 51533) hacc
  · unfold seg52BlindDeltaX148 seg52BlindDeltaY148
    linear_combination r7141
  · unfold seg52BlindDeltaX148 seg52BlindDeltaY148
    linear_combination r7142
  · unfold seg52BlindDeltaX148 seg52BlindDeltaY148
    linear_combination r7143
  · unfold seg52BlindDeltaX148
    linear_combination r7144
  · unfold seg52BlindDeltaY148
    linear_combination r7145
  · linear_combination r6298

theorem seg52Blind_rows150 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6299 rho ∧ Seg52.relationRow7146 rho ∧ Seg52.relationRow7147 rho ∧ Seg52.relationRow7148 rho ∧ Seg52.relationRow7149 rho ∧ Seg52.relationRow7150 rho ∧ Seg52.relationRow7151 rho ∧ Seg52.relationRow7152 rho ∧ Seg52.relationRow7153 rho := by
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

    _, _, _, _, _, _, _, _, _, p89,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6299, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7146, r7147, r7148, r7149, r7150, r7151, r7152, r7153, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6299, r7146, r7147, r7148, r7149, r7150, r7151, r7152, r7153⟩

theorem seg52Blind_rung150 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50688 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 150)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      150 (Bool.toZMod bit) (seg52BlindAccState rho 150)
      (seg52BlindAccState rho 151) := by
  obtain ⟨r6299, r7146, r7147, r7148, r7149, r7150, r7151, r7152, r7153⟩ := seg52Blind_rows150 rho h
  unfold Seg52.relationRow6299 at r6299

  unfold Seg52.relationRow7146 at r7146

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7146

  unfold Seg52.relationRow7147 at r7147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7147

  unfold Seg52.relationRow7148 at r7148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7148

  unfold Seg52.relationRow7149 at r7149

  unfold Seg52.relationRow7150 at r7150

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7150

  unfold Seg52.relationRow7151 at r7151

  unfold Seg52.relationRow7152 at r7152

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7152

  unfold Seg52.relationRow7153 at r7153

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7153

  have hnextx : seg52BlindDeltaX150 rho =
      seg52BlindDeltaX149 rho + rho 51540 := by
    unfold seg52BlindDeltaX150 seg52BlindDeltaX149
    ring

  have hnexty : seg52BlindDeltaY150 rho =
      seg52BlindDeltaY149 rho + rho 51541 := by
    unfold seg52BlindDeltaY150 seg52BlindDeltaY149
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 150
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX149 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY149 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX150 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY150 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538)
    (seg52BlindDeltaY149 rho) (rho 51541)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 150)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7868758121497751340208737127760862170304367533794900100080662008177780307253 : Seg52.F) (2189559325092424109491349279187113818206609874948979374114924904743857200993 : Seg52.F)
    (1613855697161805025451261468166429457135078073589815646260353457004228269205 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2645171301799192586536245358319910734839252795234711927900341247861170030750 : Seg52.F) (4189255197022180768636901000763825229828366975462594921711874705377393462042 : Seg52.F)
    (5342522809091263807831683907005673064454098137889293612326091254709019033459 : Seg52.F) (4343208657784301069959309717305894900600161165029415341727249247918865073143 : Seg52.F)
    (6254902424335946314757475659594432713169289460205084453820308551173552038048 : Seg52.F) (575703627930619084040087811020684361071531801359163727854571447739628931788 : Seg52.F)
    (4101253091644069354289515221475651630775738170124648486207984207998544165898 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 50538) (seg52BlindDeltaX149 rho) (seg52BlindDeltaY149 rho) (rho 50688)
    (rho 51534) (rho 51535) (rho 51536) (rho 51538)
    (rho 51537) (rho 51539) (rho 51540) (rho 51541) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 150)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L150]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX149 seg52BlindDeltaY149;
        first | linear_combination r7146 | linear_combination -r7146)
    (by unfold seg52BlindDeltaX149 seg52BlindDeltaY149;
        first | linear_combination r7147 | linear_combination -r7147)
    (by unfold seg52BlindDeltaX149 seg52BlindDeltaY149;
        first | linear_combination r7148 | linear_combination -r7148)
    (by first | linear_combination r7149 | linear_combination -r7149)
    (by unfold seg52BlindDeltaX149 seg52BlindDeltaY149;
        first | linear_combination r7150 | linear_combination -r7150)
    (by first | linear_combination r7151 | linear_combination -r7151)
    (by unfold seg52BlindDeltaX149; first | linear_combination r7152 | linear_combination -r7152)
    (by unfold seg52BlindDeltaY149; first | linear_combination r7153 | linear_combination -r7153)
    (by linear_combination r6299)

theorem seg52Blind_hstep_c14 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 141 ≤ i → i < 151 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung141 rho h bits[141]! (hbitAt 141 (by omega)) hacc
  · exact seg52Blind_rung142 rho h bits[142]! (hbitAt 142 (by omega)) hacc
  · exact seg52Blind_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc
  · exact seg52Blind_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc
  · exact seg52Blind_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc
  · exact seg52Blind_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc
  · exact seg52Blind_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc
  · exact seg52Blind_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc
  · exact seg52Blind_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc
  · exact seg52Blind_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

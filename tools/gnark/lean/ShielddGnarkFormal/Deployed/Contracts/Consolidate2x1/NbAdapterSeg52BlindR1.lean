import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6800 rho ∧ Seg52.relationRow7091 rho ∧ Seg52.relationRow7092 rho ∧ Seg52.relationRow7093 rho ∧ Seg52.relationRow7094 rho ∧ Seg52.relationRow7095 rho := by
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

    _, _, _, _, _, p85, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨r6800, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7091, r7092, r7093, r7094, r7095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6800, r7091, r7092, r7093, r7094, r7095⟩

theorem seg52Blind_rung11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51189 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 11)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      11 (Bool.toZMod bit) (seg52BlindAccState rho 11)
      (seg52BlindAccState rho 12) := by
  obtain ⟨r6800, r7091, r7092, r7093, r7094, r7095⟩ := seg52Blind_rows11 rho h
  unfold Seg52.relationRow6800 at r6800

  unfold Seg52.relationRow7091 at r7091

  unfold Seg52.relationRow7092 at r7092

  unfold Seg52.relationRow7093 at r7093

  unfold Seg52.relationRow7094 at r7094

  unfold Seg52.relationRow7095 at r7095

  have hnextx : seg52BlindDeltaX11 rho =
      seg52BlindDeltaX10 rho + rho 51482 := by
    unfold seg52BlindDeltaX11 seg52BlindDeltaX10
    ring

  have hnexty : seg52BlindDeltaY11 rho =
      seg52BlindDeltaY10 rho + rho 51483 := by
    unfold seg52BlindDeltaY11 seg52BlindDeltaY10
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 11
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX10 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY10 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX11 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY11 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung11_wide (rho 51178) (rho 51189) (seg52BlindDeltaX10 rho) (seg52BlindDeltaY10 rho) (rho 51479) (rho 51480) (rho 51481) (rho 51482) (rho 51483) hacc
  · unfold seg52BlindDeltaX10 seg52BlindDeltaY10
    linear_combination r7091
  · unfold seg52BlindDeltaX10 seg52BlindDeltaY10
    linear_combination r7092
  · unfold seg52BlindDeltaX10 seg52BlindDeltaY10
    linear_combination r7093
  · unfold seg52BlindDeltaX10
    linear_combination r7094
  · unfold seg52BlindDeltaY10
    linear_combination r7095
  · linear_combination r6800

theorem seg52Blind_rows12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6801 rho ∧ Seg52.relationRow7096 rho ∧ Seg52.relationRow7097 rho ∧ Seg52.relationRow7098 rho ∧ Seg52.relationRow7099 rho ∧ Seg52.relationRow7100 rho := by
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

    _, _, _, _, _, p85, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, r6801, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7096, r7097, r7098, r7099, r7100, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6801, r7096, r7097, r7098, r7099, r7100⟩

theorem seg52Blind_rung12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51190 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 12)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      12 (Bool.toZMod bit) (seg52BlindAccState rho 12)
      (seg52BlindAccState rho 13) := by
  obtain ⟨r6801, r7096, r7097, r7098, r7099, r7100⟩ := seg52Blind_rows12 rho h
  unfold Seg52.relationRow6801 at r6801

  unfold Seg52.relationRow7096 at r7096

  unfold Seg52.relationRow7097 at r7097

  unfold Seg52.relationRow7098 at r7098

  unfold Seg52.relationRow7099 at r7099

  unfold Seg52.relationRow7100 at r7100

  have hnextx : seg52BlindDeltaX12 rho =
      seg52BlindDeltaX11 rho + rho 51487 := by
    unfold seg52BlindDeltaX12 seg52BlindDeltaX11
    ring

  have hnexty : seg52BlindDeltaY12 rho =
      seg52BlindDeltaY11 rho + rho 51488 := by
    unfold seg52BlindDeltaY12 seg52BlindDeltaY11
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 12
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX11 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY11 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX12 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY12 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung12_wide (rho 51178) (rho 51190) (seg52BlindDeltaX11 rho) (seg52BlindDeltaY11 rho) (rho 51484) (rho 51485) (rho 51486) (rho 51487) (rho 51488) hacc
  · unfold seg52BlindDeltaX11 seg52BlindDeltaY11
    linear_combination r7096
  · unfold seg52BlindDeltaX11 seg52BlindDeltaY11
    linear_combination r7097
  · unfold seg52BlindDeltaX11 seg52BlindDeltaY11
    linear_combination r7098
  · unfold seg52BlindDeltaX11
    linear_combination r7099
  · unfold seg52BlindDeltaY11
    linear_combination r7100
  · linear_combination r6801

theorem seg52Blind_rows13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6802 rho ∧ Seg52.relationRow7101 rho ∧ Seg52.relationRow7102 rho ∧ Seg52.relationRow7103 rho ∧ Seg52.relationRow7104 rho ∧ Seg52.relationRow7105 rho := by
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

    _, _, _, _, _, p85, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, r6802, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7101, r7102, r7103, r7104, r7105, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6802, r7101, r7102, r7103, r7104, r7105⟩

theorem seg52Blind_rung13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51191 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 13)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      13 (Bool.toZMod bit) (seg52BlindAccState rho 13)
      (seg52BlindAccState rho 14) := by
  obtain ⟨r6802, r7101, r7102, r7103, r7104, r7105⟩ := seg52Blind_rows13 rho h
  unfold Seg52.relationRow6802 at r6802

  unfold Seg52.relationRow7101 at r7101

  unfold Seg52.relationRow7102 at r7102

  unfold Seg52.relationRow7103 at r7103

  unfold Seg52.relationRow7104 at r7104

  unfold Seg52.relationRow7105 at r7105

  have hnextx : seg52BlindDeltaX13 rho =
      seg52BlindDeltaX12 rho + rho 51492 := by
    unfold seg52BlindDeltaX13 seg52BlindDeltaX12
    ring

  have hnexty : seg52BlindDeltaY13 rho =
      seg52BlindDeltaY12 rho + rho 51493 := by
    unfold seg52BlindDeltaY13 seg52BlindDeltaY12
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 13
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX12 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY12 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX13 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY13 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung13_wide (rho 51178) (rho 51191) (seg52BlindDeltaX12 rho) (seg52BlindDeltaY12 rho) (rho 51489) (rho 51490) (rho 51491) (rho 51492) (rho 51493) hacc
  · unfold seg52BlindDeltaX12 seg52BlindDeltaY12
    linear_combination r7101
  · unfold seg52BlindDeltaX12 seg52BlindDeltaY12
    linear_combination r7102
  · unfold seg52BlindDeltaX12 seg52BlindDeltaY12
    linear_combination r7103
  · unfold seg52BlindDeltaX12
    linear_combination r7104
  · unfold seg52BlindDeltaY12
    linear_combination r7105
  · linear_combination r6802

theorem seg52Blind_rows14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6803 rho ∧ Seg52.relationRow7106 rho ∧ Seg52.relationRow7107 rho ∧ Seg52.relationRow7108 rho ∧ Seg52.relationRow7109 rho ∧ Seg52.relationRow7110 rho := by
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

    _, _, _, _, _, p85, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, r6803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7106, r7107, r7108, r7109, r7110, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6803, r7106, r7107, r7108, r7109, r7110⟩

theorem seg52Blind_rung14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51192 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 14)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      14 (Bool.toZMod bit) (seg52BlindAccState rho 14)
      (seg52BlindAccState rho 15) := by
  obtain ⟨r6803, r7106, r7107, r7108, r7109, r7110⟩ := seg52Blind_rows14 rho h
  unfold Seg52.relationRow6803 at r6803

  unfold Seg52.relationRow7106 at r7106

  unfold Seg52.relationRow7107 at r7107

  unfold Seg52.relationRow7108 at r7108

  unfold Seg52.relationRow7109 at r7109

  unfold Seg52.relationRow7110 at r7110

  have hnextx : seg52BlindDeltaX14 rho =
      seg52BlindDeltaX13 rho + rho 51497 := by
    unfold seg52BlindDeltaX14 seg52BlindDeltaX13
    ring

  have hnexty : seg52BlindDeltaY14 rho =
      seg52BlindDeltaY13 rho + rho 51498 := by
    unfold seg52BlindDeltaY14 seg52BlindDeltaY13
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 14
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX13 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY13 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX14 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY14 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung14_wide (rho 51178) (rho 51192) (seg52BlindDeltaX13 rho) (seg52BlindDeltaY13 rho) (rho 51494) (rho 51495) (rho 51496) (rho 51497) (rho 51498) hacc
  · unfold seg52BlindDeltaX13 seg52BlindDeltaY13
    linear_combination r7106
  · unfold seg52BlindDeltaX13 seg52BlindDeltaY13
    linear_combination r7107
  · unfold seg52BlindDeltaX13 seg52BlindDeltaY13
    linear_combination r7108
  · unfold seg52BlindDeltaX13
    linear_combination r7109
  · unfold seg52BlindDeltaY13
    linear_combination r7110
  · linear_combination r6803

theorem seg52Blind_rows15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6804 rho ∧ Seg52.relationRow7111 rho ∧ Seg52.relationRow7112 rho ∧ Seg52.relationRow7113 rho ∧ Seg52.relationRow7114 rho ∧ Seg52.relationRow7115 rho := by
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

    _, _, _, _, _, p85, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, r6804, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7111, r7112, r7113, r7114, r7115, _, _, _, _⟩

  exact ⟨r6804, r7111, r7112, r7113, r7114, r7115⟩

theorem seg52Blind_rung15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51193 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 15)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      15 (Bool.toZMod bit) (seg52BlindAccState rho 15)
      (seg52BlindAccState rho 16) := by
  obtain ⟨r6804, r7111, r7112, r7113, r7114, r7115⟩ := seg52Blind_rows15 rho h
  unfold Seg52.relationRow6804 at r6804

  unfold Seg52.relationRow7111 at r7111

  unfold Seg52.relationRow7112 at r7112

  unfold Seg52.relationRow7113 at r7113

  unfold Seg52.relationRow7114 at r7114

  unfold Seg52.relationRow7115 at r7115

  have hnextx : seg52BlindDeltaX15 rho =
      seg52BlindDeltaX14 rho + rho 51502 := by
    unfold seg52BlindDeltaX15 seg52BlindDeltaX14
    ring

  have hnexty : seg52BlindDeltaY15 rho =
      seg52BlindDeltaY14 rho + rho 51503 := by
    unfold seg52BlindDeltaY15 seg52BlindDeltaY14
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 15
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX14 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY14 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX15 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY15 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung15_wide (rho 51178) (rho 51193) (seg52BlindDeltaX14 rho) (seg52BlindDeltaY14 rho) (rho 51499) (rho 51500) (rho 51501) (rho 51502) (rho 51503) hacc
  · unfold seg52BlindDeltaX14 seg52BlindDeltaY14
    linear_combination r7111
  · unfold seg52BlindDeltaX14 seg52BlindDeltaY14
    linear_combination r7112
  · unfold seg52BlindDeltaX14 seg52BlindDeltaY14
    linear_combination r7113
  · unfold seg52BlindDeltaX14
    linear_combination r7114
  · unfold seg52BlindDeltaY14
    linear_combination r7115
  · linear_combination r6804

theorem seg52Blind_rows16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6805 rho ∧ Seg52.relationRow7116 rho ∧ Seg52.relationRow7117 rho ∧ Seg52.relationRow7118 rho ∧ Seg52.relationRow7119 rho ∧ Seg52.relationRow7120 rho := by
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

    _, _, _, _, _, p85, _, _, p88, p89,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨_, _, _, _, _, r6805, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7116, r7117, r7118, r7119⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨r7120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6805, r7116, r7117, r7118, r7119, r7120⟩

theorem seg52Blind_rung16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51194 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 16)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      16 (Bool.toZMod bit) (seg52BlindAccState rho 16)
      (seg52BlindAccState rho 17) := by
  obtain ⟨r6805, r7116, r7117, r7118, r7119, r7120⟩ := seg52Blind_rows16 rho h
  unfold Seg52.relationRow6805 at r6805

  unfold Seg52.relationRow7116 at r7116

  unfold Seg52.relationRow7117 at r7117

  unfold Seg52.relationRow7118 at r7118

  unfold Seg52.relationRow7119 at r7119

  unfold Seg52.relationRow7120 at r7120

  have hnextx : seg52BlindDeltaX16 rho =
      seg52BlindDeltaX15 rho + rho 51507 := by
    unfold seg52BlindDeltaX16 seg52BlindDeltaX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 51432 5]

    ring

  have hnexty : seg52BlindDeltaY16 rho =
      seg52BlindDeltaY15 rho + rho 51508 := by
    unfold seg52BlindDeltaY16 seg52BlindDeltaY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 51433 5]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 16
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX15 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY15 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX16 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY16 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung16_wide (rho 51178) (rho 51194) (seg52BlindDeltaX15 rho) (seg52BlindDeltaY15 rho) (rho 51504) (rho 51505) (rho 51506) (rho 51507) (rho 51508) hacc
  · unfold seg52BlindDeltaX15 seg52BlindDeltaY15
    linear_combination r7116
  · unfold seg52BlindDeltaX15 seg52BlindDeltaY15
    linear_combination r7117
  · unfold seg52BlindDeltaX15 seg52BlindDeltaY15
    linear_combination r7118
  · unfold seg52BlindDeltaX15
    linear_combination r7119
  · unfold seg52BlindDeltaY15
    linear_combination r7120
  · linear_combination r6805

theorem seg52Blind_rows17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6806 rho ∧ Seg52.relationRow7121 rho ∧ Seg52.relationRow7122 rho ∧ Seg52.relationRow7123 rho ∧ Seg52.relationRow7124 rho ∧ Seg52.relationRow7125 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, r6806, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, r7121, r7122, r7123, r7124, r7125, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6806, r7121, r7122, r7123, r7124, r7125⟩

theorem seg52Blind_rung17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51195 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 17)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      17 (Bool.toZMod bit) (seg52BlindAccState rho 17)
      (seg52BlindAccState rho 18) := by
  obtain ⟨r6806, r7121, r7122, r7123, r7124, r7125⟩ := seg52Blind_rows17 rho h
  unfold Seg52.relationRow6806 at r6806

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

  have hnextx : seg52BlindDeltaX17 rho =
      seg52BlindDeltaX16 rho + rho 51512 := by
    unfold seg52BlindDeltaX17 seg52BlindDeltaX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 16]

    ring

  have hnexty : seg52BlindDeltaY17 rho =
      seg52BlindDeltaY16 rho + rho 51513 := by
    unfold seg52BlindDeltaY17 seg52BlindDeltaY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 16]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 17
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX16 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY16 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX17 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY17 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung17_wide (rho 51178) (rho 51195) (seg52BlindDeltaX16 rho) (seg52BlindDeltaY16 rho) (rho 51509) (rho 51510) (rho 51511) (rho 51512) (rho 51513) hacc
  · unfold seg52BlindDeltaX16 seg52BlindDeltaY16
    linear_combination r7121
  · unfold seg52BlindDeltaX16 seg52BlindDeltaY16
    linear_combination r7122
  · unfold seg52BlindDeltaX16 seg52BlindDeltaY16
    linear_combination r7123
  · unfold seg52BlindDeltaX16
    linear_combination r7124
  · unfold seg52BlindDeltaY16
    linear_combination r7125
  · linear_combination r6806

theorem seg52Blind_rows18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6807 rho ∧ Seg52.relationRow7126 rho ∧ Seg52.relationRow7127 rho ∧ Seg52.relationRow7128 rho ∧ Seg52.relationRow7129 rho ∧ Seg52.relationRow7130 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, r6807, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, r7126, r7127, r7128, r7129, r7130, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6807, r7126, r7127, r7128, r7129, r7130⟩

theorem seg52Blind_rung18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51196 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 18)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      18 (Bool.toZMod bit) (seg52BlindAccState rho 18)
      (seg52BlindAccState rho 19) := by
  obtain ⟨r6807, r7126, r7127, r7128, r7129, r7130⟩ := seg52Blind_rows18 rho h
  unfold Seg52.relationRow6807 at r6807

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

  have hnextx : seg52BlindDeltaX18 rho =
      seg52BlindDeltaX17 rho + rho 51517 := by
    unfold seg52BlindDeltaX18 seg52BlindDeltaX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 17]

    ring

  have hnexty : seg52BlindDeltaY18 rho =
      seg52BlindDeltaY17 rho + rho 51518 := by
    unfold seg52BlindDeltaY18 seg52BlindDeltaY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 17]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 18
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX17 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY17 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX18 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY18 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung18_wide (rho 51178) (rho 51196) (seg52BlindDeltaX17 rho) (seg52BlindDeltaY17 rho) (rho 51514) (rho 51515) (rho 51516) (rho 51517) (rho 51518) hacc
  · unfold seg52BlindDeltaX17 seg52BlindDeltaY17
    linear_combination r7126
  · unfold seg52BlindDeltaX17 seg52BlindDeltaY17
    linear_combination r7127
  · unfold seg52BlindDeltaX17 seg52BlindDeltaY17
    linear_combination r7128
  · unfold seg52BlindDeltaX17
    linear_combination r7129
  · unfold seg52BlindDeltaY17
    linear_combination r7130
  · linear_combination r6807

theorem seg52Blind_rows19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6808 rho ∧ Seg52.relationRow7131 rho ∧ Seg52.relationRow7132 rho ∧ Seg52.relationRow7133 rho ∧ Seg52.relationRow7134 rho ∧ Seg52.relationRow7135 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, r6808, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7131, r7132, r7133, r7134, r7135, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6808, r7131, r7132, r7133, r7134, r7135⟩

theorem seg52Blind_rung19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51197 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 19)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      19 (Bool.toZMod bit) (seg52BlindAccState rho 19)
      (seg52BlindAccState rho 20) := by
  obtain ⟨r6808, r7131, r7132, r7133, r7134, r7135⟩ := seg52Blind_rows19 rho h
  unfold Seg52.relationRow6808 at r6808

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

  have hnextx : seg52BlindDeltaX19 rho =
      seg52BlindDeltaX18 rho + rho 51522 := by
    unfold seg52BlindDeltaX19 seg52BlindDeltaX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 18]

    ring

  have hnexty : seg52BlindDeltaY19 rho =
      seg52BlindDeltaY18 rho + rho 51523 := by
    unfold seg52BlindDeltaY19 seg52BlindDeltaY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 18]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 19
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX18 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY18 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX19 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY19 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung19_wide (rho 51178) (rho 51197) (seg52BlindDeltaX18 rho) (seg52BlindDeltaY18 rho) (rho 51519) (rho 51520) (rho 51521) (rho 51522) (rho 51523) hacc
  · unfold seg52BlindDeltaX18 seg52BlindDeltaY18
    linear_combination r7131
  · unfold seg52BlindDeltaX18 seg52BlindDeltaY18
    linear_combination r7132
  · unfold seg52BlindDeltaX18 seg52BlindDeltaY18
    linear_combination r7133
  · unfold seg52BlindDeltaX18
    linear_combination r7134
  · unfold seg52BlindDeltaY18
    linear_combination r7135
  · linear_combination r6808

theorem seg52Blind_rows20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6809 rho ∧ Seg52.relationRow7136 rho ∧ Seg52.relationRow7137 rho ∧ Seg52.relationRow7138 rho ∧ Seg52.relationRow7139 rho ∧ Seg52.relationRow7140 rho := by
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

  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, r6809, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart89 at p89

  rcases p89 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7136, r7137, r7138, r7139, r7140, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6809, r7136, r7137, r7138, r7139, r7140⟩

theorem seg52Blind_rung20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51198 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 20)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      20 (Bool.toZMod bit) (seg52BlindAccState rho 20)
      (seg52BlindAccState rho 21) := by
  obtain ⟨r6809, r7136, r7137, r7138, r7139, r7140⟩ := seg52Blind_rows20 rho h
  unfold Seg52.relationRow6809 at r6809

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

  have hnextx : seg52BlindDeltaX20 rho =
      seg52BlindDeltaX19 rho + rho 51527 := by
    unfold seg52BlindDeltaX20 seg52BlindDeltaX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 19]

    ring

  have hnexty : seg52BlindDeltaY20 rho =
      seg52BlindDeltaY19 rho + rho 51528 := by
    unfold seg52BlindDeltaY20 seg52BlindDeltaY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 19]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 20
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX19 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY19 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX20 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY20 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung20_wide (rho 51178) (rho 51198) (seg52BlindDeltaX19 rho) (seg52BlindDeltaY19 rho) (rho 51524) (rho 51525) (rho 51526) (rho 51527) (rho 51528) hacc
  · unfold seg52BlindDeltaX19 seg52BlindDeltaY19
    linear_combination r7136
  · unfold seg52BlindDeltaX19 seg52BlindDeltaY19
    linear_combination r7137
  · unfold seg52BlindDeltaX19 seg52BlindDeltaY19
    linear_combination r7138
  · unfold seg52BlindDeltaX19
    linear_combination r7139
  · unfold seg52BlindDeltaY19
    linear_combination r7140
  · linear_combination r6809

theorem seg52Blind_hstep_c1 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 21 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc
  · exact seg52Blind_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc
  · exact seg52Blind_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc
  · exact seg52Blind_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc
  · exact seg52Blind_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc
  · exact seg52Blind_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc
  · exact seg52Blind_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc
  · exact seg52Blind_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc
  · exact seg52Blind_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc
  · exact seg52Blind_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

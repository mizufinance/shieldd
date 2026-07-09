import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows121 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6270 rho ∧ Seg48.relationRow7001 rho ∧ Seg48.relationRow7002 rho ∧ Seg48.relationRow7003 rho ∧ Seg48.relationRow7004 rho ∧ Seg48.relationRow7005 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6270, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7001, r7002, r7003, r7004, r7005, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6270, r7001, r7002, r7003, r7004, r7005⟩

theorem seg48Blind_rung121 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39027 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 121)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      121 (Bool.toZMod bit) (seg48BlindAccState rho 121)
      (seg48BlindAccState rho 122) := by
  obtain ⟨r6270, r7001, r7002, r7003, r7004, r7005⟩ := seg48Blind_rows121 rho h
  unfold Seg48.relationRow6270 at r6270

  unfold Seg48.relationRow7001 at r7001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7001

  unfold Seg48.relationRow7002 at r7002

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7002

  unfold Seg48.relationRow7003 at r7003

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7003

  unfold Seg48.relationRow7004 at r7004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7004

  unfold Seg48.relationRow7005 at r7005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7005

  have hnextx : seg48BlindDeltaX121 rho =
      seg48BlindDeltaX120 rho + rho 39760 := by
    unfold seg48BlindDeltaX121 seg48BlindDeltaX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 120]

    ring

  have hnexty : seg48BlindDeltaY121 rho =
      seg48BlindDeltaY120 rho + rho 39761 := by
    unfold seg48BlindDeltaY121 seg48BlindDeltaY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 120]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 121
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX120 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY120 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX121 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY121 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung121_wide (rho 38906) (rho 39027) (seg48BlindDeltaX120 rho) (seg48BlindDeltaY120 rho) (rho 39757) (rho 39758) (rho 39759) (rho 39760) (rho 39761) hacc
  · unfold seg48BlindDeltaX120 seg48BlindDeltaY120
    linear_combination r7001
  · unfold seg48BlindDeltaX120 seg48BlindDeltaY120
    linear_combination r7002
  · unfold seg48BlindDeltaX120 seg48BlindDeltaY120
    linear_combination r7003
  · unfold seg48BlindDeltaX120
    linear_combination r7004
  · unfold seg48BlindDeltaY120
    linear_combination r7005
  · linear_combination r6270

theorem seg48Blind_rows122 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6271 rho ∧ Seg48.relationRow7006 rho ∧ Seg48.relationRow7007 rho ∧ Seg48.relationRow7008 rho ∧ Seg48.relationRow7009 rho ∧ Seg48.relationRow7010 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6271, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7006, r7007, r7008, r7009, r7010, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6271, r7006, r7007, r7008, r7009, r7010⟩

theorem seg48Blind_rung122 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39028 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 122)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      122 (Bool.toZMod bit) (seg48BlindAccState rho 122)
      (seg48BlindAccState rho 123) := by
  obtain ⟨r6271, r7006, r7007, r7008, r7009, r7010⟩ := seg48Blind_rows122 rho h
  unfold Seg48.relationRow6271 at r6271

  unfold Seg48.relationRow7006 at r7006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7006

  unfold Seg48.relationRow7007 at r7007

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7007

  unfold Seg48.relationRow7008 at r7008

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7008

  unfold Seg48.relationRow7009 at r7009

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7009

  unfold Seg48.relationRow7010 at r7010

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7010

  have hnextx : seg48BlindDeltaX122 rho =
      seg48BlindDeltaX121 rho + rho 39765 := by
    unfold seg48BlindDeltaX122 seg48BlindDeltaX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 121]

    ring

  have hnexty : seg48BlindDeltaY122 rho =
      seg48BlindDeltaY121 rho + rho 39766 := by
    unfold seg48BlindDeltaY122 seg48BlindDeltaY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 121]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 122
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX121 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY121 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX122 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY122 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung122_wide (rho 38906) (rho 39028) (seg48BlindDeltaX121 rho) (seg48BlindDeltaY121 rho) (rho 39762) (rho 39763) (rho 39764) (rho 39765) (rho 39766) hacc
  · unfold seg48BlindDeltaX121 seg48BlindDeltaY121
    linear_combination r7006
  · unfold seg48BlindDeltaX121 seg48BlindDeltaY121
    linear_combination r7007
  · unfold seg48BlindDeltaX121 seg48BlindDeltaY121
    linear_combination r7008
  · unfold seg48BlindDeltaX121
    linear_combination r7009
  · unfold seg48BlindDeltaY121
    linear_combination r7010
  · linear_combination r6271

theorem seg48Blind_rows123 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6272 rho ∧ Seg48.relationRow7011 rho ∧ Seg48.relationRow7012 rho ∧ Seg48.relationRow7013 rho ∧ Seg48.relationRow7014 rho ∧ Seg48.relationRow7015 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7011, r7012, r7013, r7014, r7015, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6272, r7011, r7012, r7013, r7014, r7015⟩

theorem seg48Blind_rung123 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39029 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 123)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      123 (Bool.toZMod bit) (seg48BlindAccState rho 123)
      (seg48BlindAccState rho 124) := by
  obtain ⟨r6272, r7011, r7012, r7013, r7014, r7015⟩ := seg48Blind_rows123 rho h
  unfold Seg48.relationRow6272 at r6272

  unfold Seg48.relationRow7011 at r7011

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7011

  unfold Seg48.relationRow7012 at r7012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7012

  unfold Seg48.relationRow7013 at r7013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7013

  unfold Seg48.relationRow7014 at r7014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7014

  unfold Seg48.relationRow7015 at r7015

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7015

  have hnextx : seg48BlindDeltaX123 rho =
      seg48BlindDeltaX122 rho + rho 39770 := by
    unfold seg48BlindDeltaX123 seg48BlindDeltaX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 122]

    ring

  have hnexty : seg48BlindDeltaY123 rho =
      seg48BlindDeltaY122 rho + rho 39771 := by
    unfold seg48BlindDeltaY123 seg48BlindDeltaY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 122]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 123
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX122 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY122 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX123 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY123 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung123_wide (rho 38906) (rho 39029) (seg48BlindDeltaX122 rho) (seg48BlindDeltaY122 rho) (rho 39767) (rho 39768) (rho 39769) (rho 39770) (rho 39771) hacc
  · unfold seg48BlindDeltaX122 seg48BlindDeltaY122
    linear_combination r7011
  · unfold seg48BlindDeltaX122 seg48BlindDeltaY122
    linear_combination r7012
  · unfold seg48BlindDeltaX122 seg48BlindDeltaY122
    linear_combination r7013
  · unfold seg48BlindDeltaX122
    linear_combination r7014
  · unfold seg48BlindDeltaY122
    linear_combination r7015
  · linear_combination r6272

theorem seg48Blind_rows124 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6273 rho ∧ Seg48.relationRow7016 rho ∧ Seg48.relationRow7017 rho ∧ Seg48.relationRow7018 rho ∧ Seg48.relationRow7019 rho ∧ Seg48.relationRow7020 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6273, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7016, r7017, r7018, r7019, r7020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6273, r7016, r7017, r7018, r7019, r7020⟩

theorem seg48Blind_rung124 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39030 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 124)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      124 (Bool.toZMod bit) (seg48BlindAccState rho 124)
      (seg48BlindAccState rho 125) := by
  obtain ⟨r6273, r7016, r7017, r7018, r7019, r7020⟩ := seg48Blind_rows124 rho h
  unfold Seg48.relationRow6273 at r6273

  unfold Seg48.relationRow7016 at r7016

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7016

  unfold Seg48.relationRow7017 at r7017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7017

  unfold Seg48.relationRow7018 at r7018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7018

  unfold Seg48.relationRow7019 at r7019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7019

  unfold Seg48.relationRow7020 at r7020

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7020

  have hnextx : seg48BlindDeltaX124 rho =
      seg48BlindDeltaX123 rho + rho 39775 := by
    unfold seg48BlindDeltaX124 seg48BlindDeltaX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 123]

    ring

  have hnexty : seg48BlindDeltaY124 rho =
      seg48BlindDeltaY123 rho + rho 39776 := by
    unfold seg48BlindDeltaY124 seg48BlindDeltaY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 123]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 124
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX123 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY123 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX124 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY124 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung124_wide (rho 38906) (rho 39030) (seg48BlindDeltaX123 rho) (seg48BlindDeltaY123 rho) (rho 39772) (rho 39773) (rho 39774) (rho 39775) (rho 39776) hacc
  · unfold seg48BlindDeltaX123 seg48BlindDeltaY123
    linear_combination r7016
  · unfold seg48BlindDeltaX123 seg48BlindDeltaY123
    linear_combination r7017
  · unfold seg48BlindDeltaX123 seg48BlindDeltaY123
    linear_combination r7018
  · unfold seg48BlindDeltaX123
    linear_combination r7019
  · unfold seg48BlindDeltaY123
    linear_combination r7020
  · linear_combination r6273

theorem seg48Blind_rows125 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6274 rho ∧ Seg48.relationRow7021 rho ∧ Seg48.relationRow7022 rho ∧ Seg48.relationRow7023 rho ∧ Seg48.relationRow7024 rho ∧ Seg48.relationRow7025 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6274, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7021, r7022, r7023, r7024, r7025, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6274, r7021, r7022, r7023, r7024, r7025⟩

theorem seg48Blind_rung125 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39031 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 125)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      125 (Bool.toZMod bit) (seg48BlindAccState rho 125)
      (seg48BlindAccState rho 126) := by
  obtain ⟨r6274, r7021, r7022, r7023, r7024, r7025⟩ := seg48Blind_rows125 rho h
  unfold Seg48.relationRow6274 at r6274

  unfold Seg48.relationRow7021 at r7021

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7021

  unfold Seg48.relationRow7022 at r7022

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7022

  unfold Seg48.relationRow7023 at r7023

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7023

  unfold Seg48.relationRow7024 at r7024

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7024

  unfold Seg48.relationRow7025 at r7025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7025

  have hnextx : seg48BlindDeltaX125 rho =
      seg48BlindDeltaX124 rho + rho 39780 := by
    unfold seg48BlindDeltaX125 seg48BlindDeltaX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 124]

    ring

  have hnexty : seg48BlindDeltaY125 rho =
      seg48BlindDeltaY124 rho + rho 39781 := by
    unfold seg48BlindDeltaY125 seg48BlindDeltaY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 124]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 125
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX124 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY124 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX125 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY125 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung125_wide (rho 38906) (rho 39031) (seg48BlindDeltaX124 rho) (seg48BlindDeltaY124 rho) (rho 39777) (rho 39778) (rho 39779) (rho 39780) (rho 39781) hacc
  · unfold seg48BlindDeltaX124 seg48BlindDeltaY124
    linear_combination r7021
  · unfold seg48BlindDeltaX124 seg48BlindDeltaY124
    linear_combination r7022
  · unfold seg48BlindDeltaX124 seg48BlindDeltaY124
    linear_combination r7023
  · unfold seg48BlindDeltaX124
    linear_combination r7024
  · unfold seg48BlindDeltaY124
    linear_combination r7025
  · linear_combination r6274

theorem seg48Blind_rows126 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6275 rho ∧ Seg48.relationRow7026 rho ∧ Seg48.relationRow7027 rho ∧ Seg48.relationRow7028 rho ∧ Seg48.relationRow7029 rho ∧ Seg48.relationRow7030 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6275, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7026, r7027, r7028, r7029, r7030, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6275, r7026, r7027, r7028, r7029, r7030⟩

theorem seg48Blind_rung126 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39032 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 126)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      126 (Bool.toZMod bit) (seg48BlindAccState rho 126)
      (seg48BlindAccState rho 127) := by
  obtain ⟨r6275, r7026, r7027, r7028, r7029, r7030⟩ := seg48Blind_rows126 rho h
  unfold Seg48.relationRow6275 at r6275

  unfold Seg48.relationRow7026 at r7026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7026

  unfold Seg48.relationRow7027 at r7027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7027

  unfold Seg48.relationRow7028 at r7028

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7028

  unfold Seg48.relationRow7029 at r7029

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7029

  unfold Seg48.relationRow7030 at r7030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7030

  have hnextx : seg48BlindDeltaX126 rho =
      seg48BlindDeltaX125 rho + rho 39785 := by
    unfold seg48BlindDeltaX126 seg48BlindDeltaX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 125]

    ring

  have hnexty : seg48BlindDeltaY126 rho =
      seg48BlindDeltaY125 rho + rho 39786 := by
    unfold seg48BlindDeltaY126 seg48BlindDeltaY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 125]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 126
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX125 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY125 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX126 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY126 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung126_wide (rho 38906) (rho 39032) (seg48BlindDeltaX125 rho) (seg48BlindDeltaY125 rho) (rho 39782) (rho 39783) (rho 39784) (rho 39785) (rho 39786) hacc
  · unfold seg48BlindDeltaX125 seg48BlindDeltaY125
    linear_combination r7026
  · unfold seg48BlindDeltaX125 seg48BlindDeltaY125
    linear_combination r7027
  · unfold seg48BlindDeltaX125 seg48BlindDeltaY125
    linear_combination r7028
  · unfold seg48BlindDeltaX125
    linear_combination r7029
  · unfold seg48BlindDeltaY125
    linear_combination r7030
  · linear_combination r6275

theorem seg48Blind_rows127 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6276 rho ∧ Seg48.relationRow7031 rho ∧ Seg48.relationRow7032 rho ∧ Seg48.relationRow7033 rho ∧ Seg48.relationRow7034 rho ∧ Seg48.relationRow7035 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6276, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7031, r7032, r7033, r7034, r7035, _, _, _, _⟩

  exact ⟨r6276, r7031, r7032, r7033, r7034, r7035⟩

theorem seg48Blind_rung127 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39033 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 127)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      127 (Bool.toZMod bit) (seg48BlindAccState rho 127)
      (seg48BlindAccState rho 128) := by
  obtain ⟨r6276, r7031, r7032, r7033, r7034, r7035⟩ := seg48Blind_rows127 rho h
  unfold Seg48.relationRow6276 at r6276

  unfold Seg48.relationRow7031 at r7031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7031

  unfold Seg48.relationRow7032 at r7032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7032

  unfold Seg48.relationRow7033 at r7033

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7033

  unfold Seg48.relationRow7034 at r7034

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7034

  unfold Seg48.relationRow7035 at r7035

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7035

  have hnextx : seg48BlindDeltaX127 rho =
      seg48BlindDeltaX126 rho + rho 39790 := by
    unfold seg48BlindDeltaX127 seg48BlindDeltaX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 126]

    ring

  have hnexty : seg48BlindDeltaY127 rho =
      seg48BlindDeltaY126 rho + rho 39791 := by
    unfold seg48BlindDeltaY127 seg48BlindDeltaY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 126]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 127
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX126 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY126 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX127 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY127 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung127_wide (rho 38906) (rho 39033) (seg48BlindDeltaX126 rho) (seg48BlindDeltaY126 rho) (rho 39787) (rho 39788) (rho 39789) (rho 39790) (rho 39791) hacc
  · unfold seg48BlindDeltaX126 seg48BlindDeltaY126
    linear_combination r7031
  · unfold seg48BlindDeltaX126 seg48BlindDeltaY126
    linear_combination r7032
  · unfold seg48BlindDeltaX126 seg48BlindDeltaY126
    linear_combination r7033
  · unfold seg48BlindDeltaX126
    linear_combination r7034
  · unfold seg48BlindDeltaY126
    linear_combination r7035
  · linear_combination r6276

theorem seg48Blind_rows128 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6277 rho ∧ Seg48.relationRow7036 rho ∧ Seg48.relationRow7037 rho ∧ Seg48.relationRow7038 rho ∧ Seg48.relationRow7039 rho ∧ Seg48.relationRow7040 rho := by
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

    _, _, _, _, _, _, _, p87, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7036, r7037, r7038, r7039⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨r7040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6277, r7036, r7037, r7038, r7039, r7040⟩

theorem seg48Blind_rung128 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39034 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 128)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      128 (Bool.toZMod bit) (seg48BlindAccState rho 128)
      (seg48BlindAccState rho 129) := by
  obtain ⟨r6277, r7036, r7037, r7038, r7039, r7040⟩ := seg48Blind_rows128 rho h
  unfold Seg48.relationRow6277 at r6277

  unfold Seg48.relationRow7036 at r7036

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7036

  unfold Seg48.relationRow7037 at r7037

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7037

  unfold Seg48.relationRow7038 at r7038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7038

  unfold Seg48.relationRow7039 at r7039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7039

  unfold Seg48.relationRow7040 at r7040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7040

  have hnextx : seg48BlindDeltaX128 rho =
      seg48BlindDeltaX127 rho + rho 39795 := by
    unfold seg48BlindDeltaX128 seg48BlindDeltaX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 127]

    ring

  have hnexty : seg48BlindDeltaY128 rho =
      seg48BlindDeltaY127 rho + rho 39796 := by
    unfold seg48BlindDeltaY128 seg48BlindDeltaY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 127]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 128
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX127 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY127 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX128 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY128 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung128_wide (rho 38906) (rho 39034) (seg48BlindDeltaX127 rho) (seg48BlindDeltaY127 rho) (rho 39792) (rho 39793) (rho 39794) (rho 39795) (rho 39796) hacc
  · unfold seg48BlindDeltaX127 seg48BlindDeltaY127
    linear_combination r7036
  · unfold seg48BlindDeltaX127 seg48BlindDeltaY127
    linear_combination r7037
  · unfold seg48BlindDeltaX127 seg48BlindDeltaY127
    linear_combination r7038
  · unfold seg48BlindDeltaX127
    linear_combination r7039
  · unfold seg48BlindDeltaY127
    linear_combination r7040
  · linear_combination r6277

theorem seg48Blind_rows129 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6278 rho ∧ Seg48.relationRow7041 rho ∧ Seg48.relationRow7042 rho ∧ Seg48.relationRow7043 rho ∧ Seg48.relationRow7044 rho ∧ Seg48.relationRow7045 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6278, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, r7041, r7042, r7043, r7044, r7045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6278, r7041, r7042, r7043, r7044, r7045⟩

theorem seg48Blind_rung129 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39035 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 129)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      129 (Bool.toZMod bit) (seg48BlindAccState rho 129)
      (seg48BlindAccState rho 130) := by
  obtain ⟨r6278, r7041, r7042, r7043, r7044, r7045⟩ := seg48Blind_rows129 rho h
  unfold Seg48.relationRow6278 at r6278

  unfold Seg48.relationRow7041 at r7041

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7041

  unfold Seg48.relationRow7042 at r7042

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7042

  unfold Seg48.relationRow7043 at r7043

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7043

  unfold Seg48.relationRow7044 at r7044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7044

  unfold Seg48.relationRow7045 at r7045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7045

  have hnextx : seg48BlindDeltaX129 rho =
      seg48BlindDeltaX128 rho + rho 39800 := by
    unfold seg48BlindDeltaX129 seg48BlindDeltaX128
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 128]

    ring

  have hnexty : seg48BlindDeltaY129 rho =
      seg48BlindDeltaY128 rho + rho 39801 := by
    unfold seg48BlindDeltaY129 seg48BlindDeltaY128
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 128]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 129
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX128 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY128 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX129 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY129 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung129_wide (rho 38906) (rho 39035) (seg48BlindDeltaX128 rho) (seg48BlindDeltaY128 rho) (rho 39797) (rho 39798) (rho 39799) (rho 39800) (rho 39801) hacc
  · unfold seg48BlindDeltaX128 seg48BlindDeltaY128
    linear_combination r7041
  · unfold seg48BlindDeltaX128 seg48BlindDeltaY128
    linear_combination r7042
  · unfold seg48BlindDeltaX128 seg48BlindDeltaY128
    linear_combination r7043
  · unfold seg48BlindDeltaX128
    linear_combination r7044
  · unfold seg48BlindDeltaY128
    linear_combination r7045
  · linear_combination r6278

theorem seg48Blind_rows130 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6279 rho ∧ Seg48.relationRow7046 rho ∧ Seg48.relationRow7047 rho ∧ Seg48.relationRow7048 rho ∧ Seg48.relationRow7049 rho ∧ Seg48.relationRow7050 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6279, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, r7046, r7047, r7048, r7049, r7050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6279, r7046, r7047, r7048, r7049, r7050⟩

theorem seg48Blind_rung130 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39036 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 130)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      130 (Bool.toZMod bit) (seg48BlindAccState rho 130)
      (seg48BlindAccState rho 131) := by
  obtain ⟨r6279, r7046, r7047, r7048, r7049, r7050⟩ := seg48Blind_rows130 rho h
  unfold Seg48.relationRow6279 at r6279

  unfold Seg48.relationRow7046 at r7046

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7046

  unfold Seg48.relationRow7047 at r7047

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7047

  unfold Seg48.relationRow7048 at r7048

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7048

  unfold Seg48.relationRow7049 at r7049

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7049

  unfold Seg48.relationRow7050 at r7050

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7050

  have hnextx : seg48BlindDeltaX130 rho =
      seg48BlindDeltaX129 rho + rho 39805 := by
    unfold seg48BlindDeltaX130 seg48BlindDeltaX129
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 129]

    ring

  have hnexty : seg48BlindDeltaY130 rho =
      seg48BlindDeltaY129 rho + rho 39806 := by
    unfold seg48BlindDeltaY130 seg48BlindDeltaY129
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 129]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 130
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX129 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY129 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX130 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY130 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung130_wide (rho 38906) (rho 39036) (seg48BlindDeltaX129 rho) (seg48BlindDeltaY129 rho) (rho 39802) (rho 39803) (rho 39804) (rho 39805) (rho 39806) hacc
  · unfold seg48BlindDeltaX129 seg48BlindDeltaY129
    linear_combination r7046
  · unfold seg48BlindDeltaX129 seg48BlindDeltaY129
    linear_combination r7047
  · unfold seg48BlindDeltaX129 seg48BlindDeltaY129
    linear_combination r7048
  · unfold seg48BlindDeltaX129
    linear_combination r7049
  · unfold seg48BlindDeltaY129
    linear_combination r7050
  · linear_combination r6279

theorem seg48Blind_hstep_c12 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 131 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc
  · exact seg48Blind_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc
  · exact seg48Blind_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc
  · exact seg48Blind_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc
  · exact seg48Blind_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc
  · exact seg48Blind_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc
  · exact seg48Blind_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc
  · exact seg48Blind_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc
  · exact seg48Blind_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc
  · exact seg48Blind_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

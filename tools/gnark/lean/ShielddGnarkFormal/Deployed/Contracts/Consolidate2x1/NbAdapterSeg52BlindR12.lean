import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6270 rho ∧ Seg52.relationRow7001 rho ∧ Seg52.relationRow7002 rho ∧ Seg52.relationRow7003 rho ∧ Seg52.relationRow7004 rho ∧ Seg52.relationRow7005 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6270, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7001, r7002, r7003, r7004, r7005, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6270, r7001, r7002, r7003, r7004, r7005⟩

theorem seg52Blind_rung121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50659 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 121)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      121 (Bool.toZMod bit) (seg52BlindAccState rho 121)
      (seg52BlindAccState rho 122) := by
  obtain ⟨r6270, r7001, r7002, r7003, r7004, r7005⟩ := seg52Blind_rows121 rho h
  unfold Seg52.relationRow6270 at r6270

  unfold Seg52.relationRow7001 at r7001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7001

  unfold Seg52.relationRow7002 at r7002

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7002

  unfold Seg52.relationRow7003 at r7003

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7003

  unfold Seg52.relationRow7004 at r7004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7004

  unfold Seg52.relationRow7005 at r7005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7005

  have hnextx : seg52BlindDeltaX121 rho =
      seg52BlindDeltaX120 rho + rho 51392 := by
    unfold seg52BlindDeltaX121 seg52BlindDeltaX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 120]

    ring

  have hnexty : seg52BlindDeltaY121 rho =
      seg52BlindDeltaY120 rho + rho 51393 := by
    unfold seg52BlindDeltaY121 seg52BlindDeltaY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 120]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 121
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX120 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY120 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX121 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY121 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung121_wide (rho 50538) (rho 50659) (seg52BlindDeltaX120 rho) (seg52BlindDeltaY120 rho) (rho 51389) (rho 51390) (rho 51391) (rho 51392) (rho 51393) hacc
  · unfold seg52BlindDeltaX120 seg52BlindDeltaY120
    linear_combination r7001
  · unfold seg52BlindDeltaX120 seg52BlindDeltaY120
    linear_combination r7002
  · unfold seg52BlindDeltaX120 seg52BlindDeltaY120
    linear_combination r7003
  · unfold seg52BlindDeltaX120
    linear_combination r7004
  · unfold seg52BlindDeltaY120
    linear_combination r7005
  · linear_combination r6270

theorem seg52Blind_rows122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6271 rho ∧ Seg52.relationRow7006 rho ∧ Seg52.relationRow7007 rho ∧ Seg52.relationRow7008 rho ∧ Seg52.relationRow7009 rho ∧ Seg52.relationRow7010 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6271, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7006, r7007, r7008, r7009, r7010, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6271, r7006, r7007, r7008, r7009, r7010⟩

theorem seg52Blind_rung122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50660 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 122)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      122 (Bool.toZMod bit) (seg52BlindAccState rho 122)
      (seg52BlindAccState rho 123) := by
  obtain ⟨r6271, r7006, r7007, r7008, r7009, r7010⟩ := seg52Blind_rows122 rho h
  unfold Seg52.relationRow6271 at r6271

  unfold Seg52.relationRow7006 at r7006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7006

  unfold Seg52.relationRow7007 at r7007

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7007

  unfold Seg52.relationRow7008 at r7008

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7008

  unfold Seg52.relationRow7009 at r7009

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7009

  unfold Seg52.relationRow7010 at r7010

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7010

  have hnextx : seg52BlindDeltaX122 rho =
      seg52BlindDeltaX121 rho + rho 51397 := by
    unfold seg52BlindDeltaX122 seg52BlindDeltaX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 121]

    ring

  have hnexty : seg52BlindDeltaY122 rho =
      seg52BlindDeltaY121 rho + rho 51398 := by
    unfold seg52BlindDeltaY122 seg52BlindDeltaY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 121]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 122
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX121 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY121 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX122 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY122 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung122_wide (rho 50538) (rho 50660) (seg52BlindDeltaX121 rho) (seg52BlindDeltaY121 rho) (rho 51394) (rho 51395) (rho 51396) (rho 51397) (rho 51398) hacc
  · unfold seg52BlindDeltaX121 seg52BlindDeltaY121
    linear_combination r7006
  · unfold seg52BlindDeltaX121 seg52BlindDeltaY121
    linear_combination r7007
  · unfold seg52BlindDeltaX121 seg52BlindDeltaY121
    linear_combination r7008
  · unfold seg52BlindDeltaX121
    linear_combination r7009
  · unfold seg52BlindDeltaY121
    linear_combination r7010
  · linear_combination r6271

theorem seg52Blind_rows123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6272 rho ∧ Seg52.relationRow7011 rho ∧ Seg52.relationRow7012 rho ∧ Seg52.relationRow7013 rho ∧ Seg52.relationRow7014 rho ∧ Seg52.relationRow7015 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7011, r7012, r7013, r7014, r7015, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6272, r7011, r7012, r7013, r7014, r7015⟩

theorem seg52Blind_rung123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50661 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 123)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      123 (Bool.toZMod bit) (seg52BlindAccState rho 123)
      (seg52BlindAccState rho 124) := by
  obtain ⟨r6272, r7011, r7012, r7013, r7014, r7015⟩ := seg52Blind_rows123 rho h
  unfold Seg52.relationRow6272 at r6272

  unfold Seg52.relationRow7011 at r7011

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7011

  unfold Seg52.relationRow7012 at r7012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7012

  unfold Seg52.relationRow7013 at r7013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7013

  unfold Seg52.relationRow7014 at r7014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7014

  unfold Seg52.relationRow7015 at r7015

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7015

  have hnextx : seg52BlindDeltaX123 rho =
      seg52BlindDeltaX122 rho + rho 51402 := by
    unfold seg52BlindDeltaX123 seg52BlindDeltaX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 122]

    ring

  have hnexty : seg52BlindDeltaY123 rho =
      seg52BlindDeltaY122 rho + rho 51403 := by
    unfold seg52BlindDeltaY123 seg52BlindDeltaY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 122]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 123
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX122 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY122 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX123 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY123 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung123_wide (rho 50538) (rho 50661) (seg52BlindDeltaX122 rho) (seg52BlindDeltaY122 rho) (rho 51399) (rho 51400) (rho 51401) (rho 51402) (rho 51403) hacc
  · unfold seg52BlindDeltaX122 seg52BlindDeltaY122
    linear_combination r7011
  · unfold seg52BlindDeltaX122 seg52BlindDeltaY122
    linear_combination r7012
  · unfold seg52BlindDeltaX122 seg52BlindDeltaY122
    linear_combination r7013
  · unfold seg52BlindDeltaX122
    linear_combination r7014
  · unfold seg52BlindDeltaY122
    linear_combination r7015
  · linear_combination r6272

theorem seg52Blind_rows124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6273 rho ∧ Seg52.relationRow7016 rho ∧ Seg52.relationRow7017 rho ∧ Seg52.relationRow7018 rho ∧ Seg52.relationRow7019 rho ∧ Seg52.relationRow7020 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6273, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7016, r7017, r7018, r7019, r7020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6273, r7016, r7017, r7018, r7019, r7020⟩

theorem seg52Blind_rung124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50662 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 124)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      124 (Bool.toZMod bit) (seg52BlindAccState rho 124)
      (seg52BlindAccState rho 125) := by
  obtain ⟨r6273, r7016, r7017, r7018, r7019, r7020⟩ := seg52Blind_rows124 rho h
  unfold Seg52.relationRow6273 at r6273

  unfold Seg52.relationRow7016 at r7016

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7016

  unfold Seg52.relationRow7017 at r7017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7017

  unfold Seg52.relationRow7018 at r7018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7018

  unfold Seg52.relationRow7019 at r7019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7019

  unfold Seg52.relationRow7020 at r7020

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7020

  have hnextx : seg52BlindDeltaX124 rho =
      seg52BlindDeltaX123 rho + rho 51407 := by
    unfold seg52BlindDeltaX124 seg52BlindDeltaX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 123]

    ring

  have hnexty : seg52BlindDeltaY124 rho =
      seg52BlindDeltaY123 rho + rho 51408 := by
    unfold seg52BlindDeltaY124 seg52BlindDeltaY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 123]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 124
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX123 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY123 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX124 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY124 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung124_wide (rho 50538) (rho 50662) (seg52BlindDeltaX123 rho) (seg52BlindDeltaY123 rho) (rho 51404) (rho 51405) (rho 51406) (rho 51407) (rho 51408) hacc
  · unfold seg52BlindDeltaX123 seg52BlindDeltaY123
    linear_combination r7016
  · unfold seg52BlindDeltaX123 seg52BlindDeltaY123
    linear_combination r7017
  · unfold seg52BlindDeltaX123 seg52BlindDeltaY123
    linear_combination r7018
  · unfold seg52BlindDeltaX123
    linear_combination r7019
  · unfold seg52BlindDeltaY123
    linear_combination r7020
  · linear_combination r6273

theorem seg52Blind_rows125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6274 rho ∧ Seg52.relationRow7021 rho ∧ Seg52.relationRow7022 rho ∧ Seg52.relationRow7023 rho ∧ Seg52.relationRow7024 rho ∧ Seg52.relationRow7025 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6274, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7021, r7022, r7023, r7024, r7025, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6274, r7021, r7022, r7023, r7024, r7025⟩

theorem seg52Blind_rung125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50663 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 125)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      125 (Bool.toZMod bit) (seg52BlindAccState rho 125)
      (seg52BlindAccState rho 126) := by
  obtain ⟨r6274, r7021, r7022, r7023, r7024, r7025⟩ := seg52Blind_rows125 rho h
  unfold Seg52.relationRow6274 at r6274

  unfold Seg52.relationRow7021 at r7021

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7021

  unfold Seg52.relationRow7022 at r7022

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7022

  unfold Seg52.relationRow7023 at r7023

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7023

  unfold Seg52.relationRow7024 at r7024

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7024

  unfold Seg52.relationRow7025 at r7025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7025

  have hnextx : seg52BlindDeltaX125 rho =
      seg52BlindDeltaX124 rho + rho 51412 := by
    unfold seg52BlindDeltaX125 seg52BlindDeltaX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 124]

    ring

  have hnexty : seg52BlindDeltaY125 rho =
      seg52BlindDeltaY124 rho + rho 51413 := by
    unfold seg52BlindDeltaY125 seg52BlindDeltaY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 124]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 125
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX124 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY124 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX125 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY125 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung125_wide (rho 50538) (rho 50663) (seg52BlindDeltaX124 rho) (seg52BlindDeltaY124 rho) (rho 51409) (rho 51410) (rho 51411) (rho 51412) (rho 51413) hacc
  · unfold seg52BlindDeltaX124 seg52BlindDeltaY124
    linear_combination r7021
  · unfold seg52BlindDeltaX124 seg52BlindDeltaY124
    linear_combination r7022
  · unfold seg52BlindDeltaX124 seg52BlindDeltaY124
    linear_combination r7023
  · unfold seg52BlindDeltaX124
    linear_combination r7024
  · unfold seg52BlindDeltaY124
    linear_combination r7025
  · linear_combination r6274

theorem seg52Blind_rows126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6275 rho ∧ Seg52.relationRow7026 rho ∧ Seg52.relationRow7027 rho ∧ Seg52.relationRow7028 rho ∧ Seg52.relationRow7029 rho ∧ Seg52.relationRow7030 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6275, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7026, r7027, r7028, r7029, r7030, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6275, r7026, r7027, r7028, r7029, r7030⟩

theorem seg52Blind_rung126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50664 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 126)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      126 (Bool.toZMod bit) (seg52BlindAccState rho 126)
      (seg52BlindAccState rho 127) := by
  obtain ⟨r6275, r7026, r7027, r7028, r7029, r7030⟩ := seg52Blind_rows126 rho h
  unfold Seg52.relationRow6275 at r6275

  unfold Seg52.relationRow7026 at r7026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7026

  unfold Seg52.relationRow7027 at r7027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7027

  unfold Seg52.relationRow7028 at r7028

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7028

  unfold Seg52.relationRow7029 at r7029

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7029

  unfold Seg52.relationRow7030 at r7030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7030

  have hnextx : seg52BlindDeltaX126 rho =
      seg52BlindDeltaX125 rho + rho 51417 := by
    unfold seg52BlindDeltaX126 seg52BlindDeltaX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 125]

    ring

  have hnexty : seg52BlindDeltaY126 rho =
      seg52BlindDeltaY125 rho + rho 51418 := by
    unfold seg52BlindDeltaY126 seg52BlindDeltaY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 125]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 126
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX125 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY125 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX126 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY126 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung126_wide (rho 50538) (rho 50664) (seg52BlindDeltaX125 rho) (seg52BlindDeltaY125 rho) (rho 51414) (rho 51415) (rho 51416) (rho 51417) (rho 51418) hacc
  · unfold seg52BlindDeltaX125 seg52BlindDeltaY125
    linear_combination r7026
  · unfold seg52BlindDeltaX125 seg52BlindDeltaY125
    linear_combination r7027
  · unfold seg52BlindDeltaX125 seg52BlindDeltaY125
    linear_combination r7028
  · unfold seg52BlindDeltaX125
    linear_combination r7029
  · unfold seg52BlindDeltaY125
    linear_combination r7030
  · linear_combination r6275

theorem seg52Blind_rows127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6276 rho ∧ Seg52.relationRow7031 rho ∧ Seg52.relationRow7032 rho ∧ Seg52.relationRow7033 rho ∧ Seg52.relationRow7034 rho ∧ Seg52.relationRow7035 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6276, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7031, r7032, r7033, r7034, r7035, _, _, _, _⟩

  exact ⟨r6276, r7031, r7032, r7033, r7034, r7035⟩

theorem seg52Blind_rung127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50665 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 127)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      127 (Bool.toZMod bit) (seg52BlindAccState rho 127)
      (seg52BlindAccState rho 128) := by
  obtain ⟨r6276, r7031, r7032, r7033, r7034, r7035⟩ := seg52Blind_rows127 rho h
  unfold Seg52.relationRow6276 at r6276

  unfold Seg52.relationRow7031 at r7031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7031

  unfold Seg52.relationRow7032 at r7032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7032

  unfold Seg52.relationRow7033 at r7033

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7033

  unfold Seg52.relationRow7034 at r7034

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7034

  unfold Seg52.relationRow7035 at r7035

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7035

  have hnextx : seg52BlindDeltaX127 rho =
      seg52BlindDeltaX126 rho + rho 51422 := by
    unfold seg52BlindDeltaX127 seg52BlindDeltaX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 126]

    ring

  have hnexty : seg52BlindDeltaY127 rho =
      seg52BlindDeltaY126 rho + rho 51423 := by
    unfold seg52BlindDeltaY127 seg52BlindDeltaY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 126]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 127
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX126 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY126 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX127 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY127 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung127_wide (rho 50538) (rho 50665) (seg52BlindDeltaX126 rho) (seg52BlindDeltaY126 rho) (rho 51419) (rho 51420) (rho 51421) (rho 51422) (rho 51423) hacc
  · unfold seg52BlindDeltaX126 seg52BlindDeltaY126
    linear_combination r7031
  · unfold seg52BlindDeltaX126 seg52BlindDeltaY126
    linear_combination r7032
  · unfold seg52BlindDeltaX126 seg52BlindDeltaY126
    linear_combination r7033
  · unfold seg52BlindDeltaX126
    linear_combination r7034
  · unfold seg52BlindDeltaY126
    linear_combination r7035
  · linear_combination r6276

theorem seg52Blind_rows128 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6277 rho ∧ Seg52.relationRow7036 rho ∧ Seg52.relationRow7037 rho ∧ Seg52.relationRow7038 rho ∧ Seg52.relationRow7039 rho ∧ Seg52.relationRow7040 rho := by
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

    _, _, _, _, _, _, _, p87, p88, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7036, r7037, r7038, r7039⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨r7040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6277, r7036, r7037, r7038, r7039, r7040⟩

theorem seg52Blind_rung128 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50666 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 128)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      128 (Bool.toZMod bit) (seg52BlindAccState rho 128)
      (seg52BlindAccState rho 129) := by
  obtain ⟨r6277, r7036, r7037, r7038, r7039, r7040⟩ := seg52Blind_rows128 rho h
  unfold Seg52.relationRow6277 at r6277

  unfold Seg52.relationRow7036 at r7036

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7036

  unfold Seg52.relationRow7037 at r7037

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7037

  unfold Seg52.relationRow7038 at r7038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7038

  unfold Seg52.relationRow7039 at r7039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7039

  unfold Seg52.relationRow7040 at r7040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7040

  have hnextx : seg52BlindDeltaX128 rho =
      seg52BlindDeltaX127 rho + rho 51427 := by
    unfold seg52BlindDeltaX128 seg52BlindDeltaX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 127]

    ring

  have hnexty : seg52BlindDeltaY128 rho =
      seg52BlindDeltaY127 rho + rho 51428 := by
    unfold seg52BlindDeltaY128 seg52BlindDeltaY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 127]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 128
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX127 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY127 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX128 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY128 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung128_wide (rho 50538) (rho 50666) (seg52BlindDeltaX127 rho) (seg52BlindDeltaY127 rho) (rho 51424) (rho 51425) (rho 51426) (rho 51427) (rho 51428) hacc
  · unfold seg52BlindDeltaX127 seg52BlindDeltaY127
    linear_combination r7036
  · unfold seg52BlindDeltaX127 seg52BlindDeltaY127
    linear_combination r7037
  · unfold seg52BlindDeltaX127 seg52BlindDeltaY127
    linear_combination r7038
  · unfold seg52BlindDeltaX127
    linear_combination r7039
  · unfold seg52BlindDeltaY127
    linear_combination r7040
  · linear_combination r6277

theorem seg52Blind_rows129 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6278 rho ∧ Seg52.relationRow7041 rho ∧ Seg52.relationRow7042 rho ∧ Seg52.relationRow7043 rho ∧ Seg52.relationRow7044 rho ∧ Seg52.relationRow7045 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6278, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, r7041, r7042, r7043, r7044, r7045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6278, r7041, r7042, r7043, r7044, r7045⟩

theorem seg52Blind_rung129 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50667 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 129)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      129 (Bool.toZMod bit) (seg52BlindAccState rho 129)
      (seg52BlindAccState rho 130) := by
  obtain ⟨r6278, r7041, r7042, r7043, r7044, r7045⟩ := seg52Blind_rows129 rho h
  unfold Seg52.relationRow6278 at r6278

  unfold Seg52.relationRow7041 at r7041

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7041

  unfold Seg52.relationRow7042 at r7042

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7042

  unfold Seg52.relationRow7043 at r7043

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7043

  unfold Seg52.relationRow7044 at r7044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7044

  unfold Seg52.relationRow7045 at r7045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7045

  have hnextx : seg52BlindDeltaX129 rho =
      seg52BlindDeltaX128 rho + rho 51432 := by
    unfold seg52BlindDeltaX129 seg52BlindDeltaX128
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 128]

    ring

  have hnexty : seg52BlindDeltaY129 rho =
      seg52BlindDeltaY128 rho + rho 51433 := by
    unfold seg52BlindDeltaY129 seg52BlindDeltaY128
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 128]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 129
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX128 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY128 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX129 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY129 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung129_wide (rho 50538) (rho 50667) (seg52BlindDeltaX128 rho) (seg52BlindDeltaY128 rho) (rho 51429) (rho 51430) (rho 51431) (rho 51432) (rho 51433) hacc
  · unfold seg52BlindDeltaX128 seg52BlindDeltaY128
    linear_combination r7041
  · unfold seg52BlindDeltaX128 seg52BlindDeltaY128
    linear_combination r7042
  · unfold seg52BlindDeltaX128 seg52BlindDeltaY128
    linear_combination r7043
  · unfold seg52BlindDeltaX128
    linear_combination r7044
  · unfold seg52BlindDeltaY128
    linear_combination r7045
  · linear_combination r6278

theorem seg52Blind_rows130 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6279 rho ∧ Seg52.relationRow7046 rho ∧ Seg52.relationRow7047 rho ∧ Seg52.relationRow7048 rho ∧ Seg52.relationRow7049 rho ∧ Seg52.relationRow7050 rho := by
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

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6279, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, r7046, r7047, r7048, r7049, r7050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6279, r7046, r7047, r7048, r7049, r7050⟩

theorem seg52Blind_rung130 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50668 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 130)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      130 (Bool.toZMod bit) (seg52BlindAccState rho 130)
      (seg52BlindAccState rho 131) := by
  obtain ⟨r6279, r7046, r7047, r7048, r7049, r7050⟩ := seg52Blind_rows130 rho h
  unfold Seg52.relationRow6279 at r6279

  unfold Seg52.relationRow7046 at r7046

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7046

  unfold Seg52.relationRow7047 at r7047

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7047

  unfold Seg52.relationRow7048 at r7048

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7048

  unfold Seg52.relationRow7049 at r7049

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7049

  unfold Seg52.relationRow7050 at r7050

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7050

  have hnextx : seg52BlindDeltaX130 rho =
      seg52BlindDeltaX129 rho + rho 51437 := by
    unfold seg52BlindDeltaX130 seg52BlindDeltaX129
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 129]

    ring

  have hnexty : seg52BlindDeltaY130 rho =
      seg52BlindDeltaY129 rho + rho 51438 := by
    unfold seg52BlindDeltaY130 seg52BlindDeltaY129
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 129]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 130
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX129 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY129 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX130 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY130 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung130_wide (rho 50538) (rho 50668) (seg52BlindDeltaX129 rho) (seg52BlindDeltaY129 rho) (rho 51434) (rho 51435) (rho 51436) (rho 51437) (rho 51438) hacc
  · unfold seg52BlindDeltaX129 seg52BlindDeltaY129
    linear_combination r7046
  · unfold seg52BlindDeltaX129 seg52BlindDeltaY129
    linear_combination r7047
  · unfold seg52BlindDeltaX129 seg52BlindDeltaY129
    linear_combination r7048
  · unfold seg52BlindDeltaX129
    linear_combination r7049
  · unfold seg52BlindDeltaY129
    linear_combination r7050
  · linear_combination r6279

theorem seg52Blind_hstep_c12 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 131 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc
  · exact seg52Blind_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc
  · exact seg52Blind_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc
  · exact seg52Blind_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc
  · exact seg52Blind_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc
  · exact seg52Blind_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc
  · exact seg52Blind_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc
  · exact seg52Blind_rung128 rho h bits[128]! (hbitAt 128 (by omega)) hacc
  · exact seg52Blind_rung129 rho h bits[129]! (hbitAt 129 (by omega)) hacc
  · exact seg52Blind_rung130 rho h bits[130]! (hbitAt 130 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

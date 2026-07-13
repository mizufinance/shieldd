import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg46Blind_rows71 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow459 rho ∧ Seg46.relationRow990 rho ∧ Seg46.relationRow991 rho ∧ Seg46.relationRow992 rho ∧ Seg46.relationRow993 rho ∧ Seg46.relationRow994 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r990, r991, r992, r993, r994, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r459, r990, r991, r992, r993, r994⟩

theorem seg46Blind_rung71 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31732 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 71)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      71 (Bool.toZMod bit) (seg46BlindAccState rho 71)
      (seg46BlindAccState rho 72) := by
  obtain ⟨r459, r990, r991, r992, r993, r994⟩ := seg46Blind_rows71 rho h
  unfold Seg46.relationRow459 at r459

  unfold Seg46.relationRow990 at r990

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r990

  unfold Seg46.relationRow991 at r991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r991

  unfold Seg46.relationRow992 at r992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r992

  unfold Seg46.relationRow993 at r993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r993

  unfold Seg46.relationRow994 at r994

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r994

  have hnextx : seg46BlindDeltaX71 rho =
      seg46BlindDeltaX70 rho + rho 32265 := by
    unfold seg46BlindDeltaX71 seg46BlindDeltaX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 70]

    ring

  have hnexty : seg46BlindDeltaY71 rho =
      seg46BlindDeltaY70 rho + rho 32266 := by
    unfold seg46BlindDeltaY71 seg46BlindDeltaY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 70]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 71
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX70 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY70 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX71 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY71 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung71_wide (rho 31661) (rho 31732) (seg46BlindDeltaX70 rho) (seg46BlindDeltaY70 rho) (rho 32262) (rho 32263) (rho 32264) (rho 32265) (rho 32266) hacc
  · unfold seg46BlindDeltaX70 seg46BlindDeltaY70
    linear_combination r990
  · unfold seg46BlindDeltaX70 seg46BlindDeltaY70
    linear_combination r991
  · unfold seg46BlindDeltaX70 seg46BlindDeltaY70
    linear_combination r992
  · unfold seg46BlindDeltaX70
    linear_combination r993
  · unfold seg46BlindDeltaY70
    linear_combination r994
  · linear_combination r459

theorem seg46Blind_rows72 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow460 rho ∧ Seg46.relationRow995 rho ∧ Seg46.relationRow996 rho ∧ Seg46.relationRow997 rho ∧ Seg46.relationRow998 rho ∧ Seg46.relationRow999 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r995, r996, r997, r998, r999, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r460, r995, r996, r997, r998, r999⟩

theorem seg46Blind_rung72 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31733 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 72)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      72 (Bool.toZMod bit) (seg46BlindAccState rho 72)
      (seg46BlindAccState rho 73) := by
  obtain ⟨r460, r995, r996, r997, r998, r999⟩ := seg46Blind_rows72 rho h
  unfold Seg46.relationRow460 at r460

  unfold Seg46.relationRow995 at r995

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r995

  unfold Seg46.relationRow996 at r996

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r996

  unfold Seg46.relationRow997 at r997

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r997

  unfold Seg46.relationRow998 at r998

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r998

  unfold Seg46.relationRow999 at r999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r999

  have hnextx : seg46BlindDeltaX72 rho =
      seg46BlindDeltaX71 rho + rho 32270 := by
    unfold seg46BlindDeltaX72 seg46BlindDeltaX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 71]

    ring

  have hnexty : seg46BlindDeltaY72 rho =
      seg46BlindDeltaY71 rho + rho 32271 := by
    unfold seg46BlindDeltaY72 seg46BlindDeltaY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 71]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 72
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX71 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY71 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX72 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY72 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung72_wide (rho 31661) (rho 31733) (seg46BlindDeltaX71 rho) (seg46BlindDeltaY71 rho) (rho 32267) (rho 32268) (rho 32269) (rho 32270) (rho 32271) hacc
  · unfold seg46BlindDeltaX71 seg46BlindDeltaY71
    linear_combination r995
  · unfold seg46BlindDeltaX71 seg46BlindDeltaY71
    linear_combination r996
  · unfold seg46BlindDeltaX71 seg46BlindDeltaY71
    linear_combination r997
  · unfold seg46BlindDeltaX71
    linear_combination r998
  · unfold seg46BlindDeltaY71
    linear_combination r999
  · linear_combination r460

theorem seg46Blind_rows73 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow461 rho ∧ Seg46.relationRow1000 rho ∧ Seg46.relationRow1001 rho ∧ Seg46.relationRow1002 rho ∧ Seg46.relationRow1003 rho ∧ Seg46.relationRow1004 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r461, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1000, r1001, r1002, r1003, r1004, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r461, r1000, r1001, r1002, r1003, r1004⟩

theorem seg46Blind_rung73 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31734 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 73)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      73 (Bool.toZMod bit) (seg46BlindAccState rho 73)
      (seg46BlindAccState rho 74) := by
  obtain ⟨r461, r1000, r1001, r1002, r1003, r1004⟩ := seg46Blind_rows73 rho h
  unfold Seg46.relationRow461 at r461

  unfold Seg46.relationRow1000 at r1000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1000

  unfold Seg46.relationRow1001 at r1001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1001

  unfold Seg46.relationRow1002 at r1002

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1002

  unfold Seg46.relationRow1003 at r1003

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1003

  unfold Seg46.relationRow1004 at r1004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1004

  have hnextx : seg46BlindDeltaX73 rho =
      seg46BlindDeltaX72 rho + rho 32275 := by
    unfold seg46BlindDeltaX73 seg46BlindDeltaX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 72]

    ring

  have hnexty : seg46BlindDeltaY73 rho =
      seg46BlindDeltaY72 rho + rho 32276 := by
    unfold seg46BlindDeltaY73 seg46BlindDeltaY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 72]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 73
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX72 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY72 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX73 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY73 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung73_wide (rho 31661) (rho 31734) (seg46BlindDeltaX72 rho) (seg46BlindDeltaY72 rho) (rho 32272) (rho 32273) (rho 32274) (rho 32275) (rho 32276) hacc
  · unfold seg46BlindDeltaX72 seg46BlindDeltaY72
    linear_combination r1000
  · unfold seg46BlindDeltaX72 seg46BlindDeltaY72
    linear_combination r1001
  · unfold seg46BlindDeltaX72 seg46BlindDeltaY72
    linear_combination r1002
  · unfold seg46BlindDeltaX72
    linear_combination r1003
  · unfold seg46BlindDeltaY72
    linear_combination r1004
  · linear_combination r461

theorem seg46Blind_rows74 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow462 rho ∧ Seg46.relationRow1005 rho ∧ Seg46.relationRow1006 rho ∧ Seg46.relationRow1007 rho ∧ Seg46.relationRow1008 rho ∧ Seg46.relationRow1009 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r462, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1005, r1006, r1007, r1008, r1009, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r462, r1005, r1006, r1007, r1008, r1009⟩

theorem seg46Blind_rung74 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31735 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 74)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      74 (Bool.toZMod bit) (seg46BlindAccState rho 74)
      (seg46BlindAccState rho 75) := by
  obtain ⟨r462, r1005, r1006, r1007, r1008, r1009⟩ := seg46Blind_rows74 rho h
  unfold Seg46.relationRow462 at r462

  unfold Seg46.relationRow1005 at r1005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1005

  unfold Seg46.relationRow1006 at r1006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1006

  unfold Seg46.relationRow1007 at r1007

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1007

  unfold Seg46.relationRow1008 at r1008

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1008

  unfold Seg46.relationRow1009 at r1009

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1009

  have hnextx : seg46BlindDeltaX74 rho =
      seg46BlindDeltaX73 rho + rho 32280 := by
    unfold seg46BlindDeltaX74 seg46BlindDeltaX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 73]

    ring

  have hnexty : seg46BlindDeltaY74 rho =
      seg46BlindDeltaY73 rho + rho 32281 := by
    unfold seg46BlindDeltaY74 seg46BlindDeltaY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 73]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 74
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX73 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY73 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX74 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY74 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung74_wide (rho 31661) (rho 31735) (seg46BlindDeltaX73 rho) (seg46BlindDeltaY73 rho) (rho 32277) (rho 32278) (rho 32279) (rho 32280) (rho 32281) hacc
  · unfold seg46BlindDeltaX73 seg46BlindDeltaY73
    linear_combination r1005
  · unfold seg46BlindDeltaX73 seg46BlindDeltaY73
    linear_combination r1006
  · unfold seg46BlindDeltaX73 seg46BlindDeltaY73
    linear_combination r1007
  · unfold seg46BlindDeltaX73
    linear_combination r1008
  · unfold seg46BlindDeltaY73
    linear_combination r1009
  · linear_combination r462

theorem seg46Blind_rows75 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow463 rho ∧ Seg46.relationRow1010 rho ∧ Seg46.relationRow1011 rho ∧ Seg46.relationRow1012 rho ∧ Seg46.relationRow1013 rho ∧ Seg46.relationRow1014 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r463, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1010, r1011, r1012, r1013, r1014, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r463, r1010, r1011, r1012, r1013, r1014⟩

theorem seg46Blind_rung75 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31736 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 75)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      75 (Bool.toZMod bit) (seg46BlindAccState rho 75)
      (seg46BlindAccState rho 76) := by
  obtain ⟨r463, r1010, r1011, r1012, r1013, r1014⟩ := seg46Blind_rows75 rho h
  unfold Seg46.relationRow463 at r463

  unfold Seg46.relationRow1010 at r1010

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1010

  unfold Seg46.relationRow1011 at r1011

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1011

  unfold Seg46.relationRow1012 at r1012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1012

  unfold Seg46.relationRow1013 at r1013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1013

  unfold Seg46.relationRow1014 at r1014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1014

  have hnextx : seg46BlindDeltaX75 rho =
      seg46BlindDeltaX74 rho + rho 32285 := by
    unfold seg46BlindDeltaX75 seg46BlindDeltaX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 74]

    ring

  have hnexty : seg46BlindDeltaY75 rho =
      seg46BlindDeltaY74 rho + rho 32286 := by
    unfold seg46BlindDeltaY75 seg46BlindDeltaY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 74]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 75
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX74 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY74 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX75 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY75 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung75_wide (rho 31661) (rho 31736) (seg46BlindDeltaX74 rho) (seg46BlindDeltaY74 rho) (rho 32282) (rho 32283) (rho 32284) (rho 32285) (rho 32286) hacc
  · unfold seg46BlindDeltaX74 seg46BlindDeltaY74
    linear_combination r1010
  · unfold seg46BlindDeltaX74 seg46BlindDeltaY74
    linear_combination r1011
  · unfold seg46BlindDeltaX74 seg46BlindDeltaY74
    linear_combination r1012
  · unfold seg46BlindDeltaX74
    linear_combination r1013
  · unfold seg46BlindDeltaY74
    linear_combination r1014
  · linear_combination r463

theorem seg46Blind_rows76 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow464 rho ∧ Seg46.relationRow1015 rho ∧ Seg46.relationRow1016 rho ∧ Seg46.relationRow1017 rho ∧ Seg46.relationRow1018 rho ∧ Seg46.relationRow1019 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r464, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1015, r1016, r1017, r1018, r1019, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r464, r1015, r1016, r1017, r1018, r1019⟩

theorem seg46Blind_rung76 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31737 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 76)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      76 (Bool.toZMod bit) (seg46BlindAccState rho 76)
      (seg46BlindAccState rho 77) := by
  obtain ⟨r464, r1015, r1016, r1017, r1018, r1019⟩ := seg46Blind_rows76 rho h
  unfold Seg46.relationRow464 at r464

  unfold Seg46.relationRow1015 at r1015

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1015

  unfold Seg46.relationRow1016 at r1016

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1016

  unfold Seg46.relationRow1017 at r1017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1017

  unfold Seg46.relationRow1018 at r1018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1018

  unfold Seg46.relationRow1019 at r1019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1019

  have hnextx : seg46BlindDeltaX76 rho =
      seg46BlindDeltaX75 rho + rho 32290 := by
    unfold seg46BlindDeltaX76 seg46BlindDeltaX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 75]

    ring

  have hnexty : seg46BlindDeltaY76 rho =
      seg46BlindDeltaY75 rho + rho 32291 := by
    unfold seg46BlindDeltaY76 seg46BlindDeltaY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 75]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 76
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX75 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY75 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX76 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY76 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung76_wide (rho 31661) (rho 31737) (seg46BlindDeltaX75 rho) (seg46BlindDeltaY75 rho) (rho 32287) (rho 32288) (rho 32289) (rho 32290) (rho 32291) hacc
  · unfold seg46BlindDeltaX75 seg46BlindDeltaY75
    linear_combination r1015
  · unfold seg46BlindDeltaX75 seg46BlindDeltaY75
    linear_combination r1016
  · unfold seg46BlindDeltaX75 seg46BlindDeltaY75
    linear_combination r1017
  · unfold seg46BlindDeltaX75
    linear_combination r1018
  · unfold seg46BlindDeltaY75
    linear_combination r1019
  · linear_combination r464

theorem seg46Blind_rows77 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow465 rho ∧ Seg46.relationRow1020 rho ∧ Seg46.relationRow1021 rho ∧ Seg46.relationRow1022 rho ∧ Seg46.relationRow1023 rho ∧ Seg46.relationRow1024 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r465, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1020, r1021, r1022, r1023, r1024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r465, r1020, r1021, r1022, r1023, r1024⟩

theorem seg46Blind_rung77 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31738 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 77)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      77 (Bool.toZMod bit) (seg46BlindAccState rho 77)
      (seg46BlindAccState rho 78) := by
  obtain ⟨r465, r1020, r1021, r1022, r1023, r1024⟩ := seg46Blind_rows77 rho h
  unfold Seg46.relationRow465 at r465

  unfold Seg46.relationRow1020 at r1020

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1020

  unfold Seg46.relationRow1021 at r1021

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1021

  unfold Seg46.relationRow1022 at r1022

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1022

  unfold Seg46.relationRow1023 at r1023

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1023

  unfold Seg46.relationRow1024 at r1024

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1024

  have hnextx : seg46BlindDeltaX77 rho =
      seg46BlindDeltaX76 rho + rho 32295 := by
    unfold seg46BlindDeltaX77 seg46BlindDeltaX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 76]

    ring

  have hnexty : seg46BlindDeltaY77 rho =
      seg46BlindDeltaY76 rho + rho 32296 := by
    unfold seg46BlindDeltaY77 seg46BlindDeltaY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 76]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 77
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX76 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY76 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX77 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY77 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung77_wide (rho 31661) (rho 31738) (seg46BlindDeltaX76 rho) (seg46BlindDeltaY76 rho) (rho 32292) (rho 32293) (rho 32294) (rho 32295) (rho 32296) hacc
  · unfold seg46BlindDeltaX76 seg46BlindDeltaY76
    linear_combination r1020
  · unfold seg46BlindDeltaX76 seg46BlindDeltaY76
    linear_combination r1021
  · unfold seg46BlindDeltaX76 seg46BlindDeltaY76
    linear_combination r1022
  · unfold seg46BlindDeltaX76
    linear_combination r1023
  · unfold seg46BlindDeltaY76
    linear_combination r1024
  · linear_combination r465

theorem seg46Blind_rows78 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow466 rho ∧ Seg46.relationRow1025 rho ∧ Seg46.relationRow1026 rho ∧ Seg46.relationRow1027 rho ∧ Seg46.relationRow1028 rho ∧ Seg46.relationRow1029 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r466, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1025, r1026, r1027, r1028, r1029, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r466, r1025, r1026, r1027, r1028, r1029⟩

theorem seg46Blind_rung78 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31739 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 78)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      78 (Bool.toZMod bit) (seg46BlindAccState rho 78)
      (seg46BlindAccState rho 79) := by
  obtain ⟨r466, r1025, r1026, r1027, r1028, r1029⟩ := seg46Blind_rows78 rho h
  unfold Seg46.relationRow466 at r466

  unfold Seg46.relationRow1025 at r1025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1025

  unfold Seg46.relationRow1026 at r1026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1026

  unfold Seg46.relationRow1027 at r1027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1027

  unfold Seg46.relationRow1028 at r1028

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1028

  unfold Seg46.relationRow1029 at r1029

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1029

  have hnextx : seg46BlindDeltaX78 rho =
      seg46BlindDeltaX77 rho + rho 32300 := by
    unfold seg46BlindDeltaX78 seg46BlindDeltaX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 77]

    ring

  have hnexty : seg46BlindDeltaY78 rho =
      seg46BlindDeltaY77 rho + rho 32301 := by
    unfold seg46BlindDeltaY78 seg46BlindDeltaY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 77]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 78
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX77 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY77 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX78 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY78 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung78_wide (rho 31661) (rho 31739) (seg46BlindDeltaX77 rho) (seg46BlindDeltaY77 rho) (rho 32297) (rho 32298) (rho 32299) (rho 32300) (rho 32301) hacc
  · unfold seg46BlindDeltaX77 seg46BlindDeltaY77
    linear_combination r1025
  · unfold seg46BlindDeltaX77 seg46BlindDeltaY77
    linear_combination r1026
  · unfold seg46BlindDeltaX77 seg46BlindDeltaY77
    linear_combination r1027
  · unfold seg46BlindDeltaX77
    linear_combination r1028
  · unfold seg46BlindDeltaY77
    linear_combination r1029
  · linear_combination r466

theorem seg46Blind_rows79 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow467 rho ∧ Seg46.relationRow1030 rho ∧ Seg46.relationRow1031 rho ∧ Seg46.relationRow1032 rho ∧ Seg46.relationRow1033 rho ∧ Seg46.relationRow1034 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r467, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1030, r1031, r1032, r1033, r1034, _, _, _, _, _⟩

  exact ⟨r467, r1030, r1031, r1032, r1033, r1034⟩

theorem seg46Blind_rung79 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31740 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 79)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      79 (Bool.toZMod bit) (seg46BlindAccState rho 79)
      (seg46BlindAccState rho 80) := by
  obtain ⟨r467, r1030, r1031, r1032, r1033, r1034⟩ := seg46Blind_rows79 rho h
  unfold Seg46.relationRow467 at r467

  unfold Seg46.relationRow1030 at r1030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1030

  unfold Seg46.relationRow1031 at r1031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1031

  unfold Seg46.relationRow1032 at r1032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1032

  unfold Seg46.relationRow1033 at r1033

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1033

  unfold Seg46.relationRow1034 at r1034

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1034

  have hnextx : seg46BlindDeltaX79 rho =
      seg46BlindDeltaX78 rho + rho 32305 := by
    unfold seg46BlindDeltaX79 seg46BlindDeltaX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 78]

    ring

  have hnexty : seg46BlindDeltaY79 rho =
      seg46BlindDeltaY78 rho + rho 32306 := by
    unfold seg46BlindDeltaY79 seg46BlindDeltaY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 78]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 79
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX78 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY78 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX79 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY79 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung79_wide (rho 31661) (rho 31740) (seg46BlindDeltaX78 rho) (seg46BlindDeltaY78 rho) (rho 32302) (rho 32303) (rho 32304) (rho 32305) (rho 32306) hacc
  · unfold seg46BlindDeltaX78 seg46BlindDeltaY78
    linear_combination r1030
  · unfold seg46BlindDeltaX78 seg46BlindDeltaY78
    linear_combination r1031
  · unfold seg46BlindDeltaX78 seg46BlindDeltaY78
    linear_combination r1032
  · unfold seg46BlindDeltaX78
    linear_combination r1033
  · unfold seg46BlindDeltaY78
    linear_combination r1034
  · linear_combination r467

theorem seg46Blind_rows80 (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Seg46.relationRow468 rho ∧ Seg46.relationRow1035 rho ∧ Seg46.relationRow1036 rho ∧ Seg46.relationRow1037 rho ∧ Seg46.relationRow1038 rho ∧ Seg46.relationRow1039 rho := by
  unfold Seg46.relation at h

  rcases h with ⟨

    _, _, _, _, _, p5, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart5 at p5

  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r468, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1035, r1036, r1037, r1038, r1039⟩

  exact ⟨r468, r1035, r1036, r1037, r1038, r1039⟩

theorem seg46Blind_rung80 (rho : Nat -> Seg46.F) (h : Seg46.relation rho)
    (bit : Bool) (hbitValue : rho 31741 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg46BlindAccState rho 80)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      80 (Bool.toZMod bit) (seg46BlindAccState rho 80)
      (seg46BlindAccState rho 81) := by
  obtain ⟨r468, r1035, r1036, r1037, r1038, r1039⟩ := seg46Blind_rows80 rho h
  unfold Seg46.relationRow468 at r468

  unfold Seg46.relationRow1035 at r1035

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1035

  unfold Seg46.relationRow1036 at r1036

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1036

  unfold Seg46.relationRow1037 at r1037

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1037

  unfold Seg46.relationRow1038 at r1038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1038

  unfold Seg46.relationRow1039 at r1039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1039

  have hnextx : seg46BlindDeltaX80 rho =
      seg46BlindDeltaX79 rho + rho 32310 := by
    unfold seg46BlindDeltaX80 seg46BlindDeltaX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31915 5 79]

    ring

  have hnexty : seg46BlindDeltaY80 rho =
      seg46BlindDeltaY79 rho + rho 32311 := by
    unfold seg46BlindDeltaY80 seg46BlindDeltaY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 31916 5 79]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 80
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX79 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY79 rho : Seg46.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 + seg46BlindDeltaX80 rho : Seg46.F),
      ((1 : Seg46.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 + seg46BlindDeltaY80 rho : Seg46.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung80_wide (rho 31661) (rho 31741) (seg46BlindDeltaX79 rho) (seg46BlindDeltaY79 rho) (rho 32307) (rho 32308) (rho 32309) (rho 32310) (rho 32311) hacc
  · unfold seg46BlindDeltaX79 seg46BlindDeltaY79
    linear_combination r1035
  · unfold seg46BlindDeltaX79 seg46BlindDeltaY79
    linear_combination r1036
  · unfold seg46BlindDeltaX79 seg46BlindDeltaY79
    linear_combination r1037
  · unfold seg46BlindDeltaX79
    linear_combination r1038
  · unfold seg46BlindDeltaY79
    linear_combination r1039
  · linear_combination r468

theorem seg46Blind_hstep_c7 (rho : Nat -> Seg46.F)
    (h : Seg46.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (31661 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 71 ≤ i → i < 81 →
      EdwardsBridge.onCurve (seg46BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg46BlindAccState rho i)
        (seg46BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg46Blind_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc
  · exact seg46Blind_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc
  · exact seg46Blind_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc
  · exact seg46Blind_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc
  · exact seg46Blind_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc
  · exact seg46Blind_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc
  · exact seg46Blind_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc
  · exact seg46Blind_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc
  · exact seg46Blind_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc
  · exact seg46Blind_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

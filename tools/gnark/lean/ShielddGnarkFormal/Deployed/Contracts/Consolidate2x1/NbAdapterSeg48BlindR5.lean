import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows51 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6200 rho ∧ Seg48.relationRow6651 rho ∧ Seg48.relationRow6652 rho ∧ Seg48.relationRow6653 rho ∧ Seg48.relationRow6654 rho ∧ Seg48.relationRow6655 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6200, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6651, r6652, r6653, r6654, r6655, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6200, r6651, r6652, r6653, r6654, r6655⟩

theorem seg48Blind_rung51 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38957 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 51)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      51 (Bool.toZMod bit) (seg48BlindAccState rho 51)
      (seg48BlindAccState rho 52) := by
  obtain ⟨r6200, r6651, r6652, r6653, r6654, r6655⟩ := seg48Blind_rows51 rho h
  unfold Seg48.relationRow6200 at r6200

  unfold Seg48.relationRow6651 at r6651

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6651

  unfold Seg48.relationRow6652 at r6652

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6652

  unfold Seg48.relationRow6653 at r6653

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6653

  unfold Seg48.relationRow6654 at r6654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6654

  unfold Seg48.relationRow6655 at r6655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6655

  have hnextx : seg48BlindDeltaX51 rho =
      seg48BlindDeltaX50 rho + rho 39410 := by
    unfold seg48BlindDeltaX51 seg48BlindDeltaX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 50]

    ring

  have hnexty : seg48BlindDeltaY51 rho =
      seg48BlindDeltaY50 rho + rho 39411 := by
    unfold seg48BlindDeltaY51 seg48BlindDeltaY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 50]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 51
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX50 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY50 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX51 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY51 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung51_wide (rho 38906) (rho 38957) (seg48BlindDeltaX50 rho) (seg48BlindDeltaY50 rho) (rho 39407) (rho 39408) (rho 39409) (rho 39410) (rho 39411) hacc
  · unfold seg48BlindDeltaX50 seg48BlindDeltaY50
    linear_combination r6651
  · unfold seg48BlindDeltaX50 seg48BlindDeltaY50
    linear_combination r6652
  · unfold seg48BlindDeltaX50 seg48BlindDeltaY50
    linear_combination r6653
  · unfold seg48BlindDeltaX50
    linear_combination r6654
  · unfold seg48BlindDeltaY50
    linear_combination r6655
  · linear_combination r6200

theorem seg48Blind_rows52 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6201 rho ∧ Seg48.relationRow6656 rho ∧ Seg48.relationRow6657 rho ∧ Seg48.relationRow6658 rho ∧ Seg48.relationRow6659 rho ∧ Seg48.relationRow6660 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6201, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6656, r6657, r6658, r6659, r6660, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6201, r6656, r6657, r6658, r6659, r6660⟩

theorem seg48Blind_rung52 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38958 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 52)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      52 (Bool.toZMod bit) (seg48BlindAccState rho 52)
      (seg48BlindAccState rho 53) := by
  obtain ⟨r6201, r6656, r6657, r6658, r6659, r6660⟩ := seg48Blind_rows52 rho h
  unfold Seg48.relationRow6201 at r6201

  unfold Seg48.relationRow6656 at r6656

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6656

  unfold Seg48.relationRow6657 at r6657

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6657

  unfold Seg48.relationRow6658 at r6658

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6658

  unfold Seg48.relationRow6659 at r6659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6659

  unfold Seg48.relationRow6660 at r6660

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6660

  have hnextx : seg48BlindDeltaX52 rho =
      seg48BlindDeltaX51 rho + rho 39415 := by
    unfold seg48BlindDeltaX52 seg48BlindDeltaX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 51]

    ring

  have hnexty : seg48BlindDeltaY52 rho =
      seg48BlindDeltaY51 rho + rho 39416 := by
    unfold seg48BlindDeltaY52 seg48BlindDeltaY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 51]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 52
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX51 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY51 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX52 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY52 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung52_wide (rho 38906) (rho 38958) (seg48BlindDeltaX51 rho) (seg48BlindDeltaY51 rho) (rho 39412) (rho 39413) (rho 39414) (rho 39415) (rho 39416) hacc
  · unfold seg48BlindDeltaX51 seg48BlindDeltaY51
    linear_combination r6656
  · unfold seg48BlindDeltaX51 seg48BlindDeltaY51
    linear_combination r6657
  · unfold seg48BlindDeltaX51 seg48BlindDeltaY51
    linear_combination r6658
  · unfold seg48BlindDeltaX51
    linear_combination r6659
  · unfold seg48BlindDeltaY51
    linear_combination r6660
  · linear_combination r6201

theorem seg48Blind_rows53 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6202 rho ∧ Seg48.relationRow6661 rho ∧ Seg48.relationRow6662 rho ∧ Seg48.relationRow6663 rho ∧ Seg48.relationRow6664 rho ∧ Seg48.relationRow6665 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6202, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6661, r6662, r6663, r6664, r6665, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6202, r6661, r6662, r6663, r6664, r6665⟩

theorem seg48Blind_rung53 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38959 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 53)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      53 (Bool.toZMod bit) (seg48BlindAccState rho 53)
      (seg48BlindAccState rho 54) := by
  obtain ⟨r6202, r6661, r6662, r6663, r6664, r6665⟩ := seg48Blind_rows53 rho h
  unfold Seg48.relationRow6202 at r6202

  unfold Seg48.relationRow6661 at r6661

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6661

  unfold Seg48.relationRow6662 at r6662

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6662

  unfold Seg48.relationRow6663 at r6663

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6663

  unfold Seg48.relationRow6664 at r6664

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6664

  unfold Seg48.relationRow6665 at r6665

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6665

  have hnextx : seg48BlindDeltaX53 rho =
      seg48BlindDeltaX52 rho + rho 39420 := by
    unfold seg48BlindDeltaX53 seg48BlindDeltaX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 52]

    ring

  have hnexty : seg48BlindDeltaY53 rho =
      seg48BlindDeltaY52 rho + rho 39421 := by
    unfold seg48BlindDeltaY53 seg48BlindDeltaY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 52]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 53
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX52 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY52 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX53 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY53 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung53_wide (rho 38906) (rho 38959) (seg48BlindDeltaX52 rho) (seg48BlindDeltaY52 rho) (rho 39417) (rho 39418) (rho 39419) (rho 39420) (rho 39421) hacc
  · unfold seg48BlindDeltaX52 seg48BlindDeltaY52
    linear_combination r6661
  · unfold seg48BlindDeltaX52 seg48BlindDeltaY52
    linear_combination r6662
  · unfold seg48BlindDeltaX52 seg48BlindDeltaY52
    linear_combination r6663
  · unfold seg48BlindDeltaX52
    linear_combination r6664
  · unfold seg48BlindDeltaY52
    linear_combination r6665
  · linear_combination r6202

theorem seg48Blind_rows54 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6203 rho ∧ Seg48.relationRow6666 rho ∧ Seg48.relationRow6667 rho ∧ Seg48.relationRow6668 rho ∧ Seg48.relationRow6669 rho ∧ Seg48.relationRow6670 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6203, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6666, r6667, r6668, r6669, r6670, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6203, r6666, r6667, r6668, r6669, r6670⟩

theorem seg48Blind_rung54 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38960 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 54)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      54 (Bool.toZMod bit) (seg48BlindAccState rho 54)
      (seg48BlindAccState rho 55) := by
  obtain ⟨r6203, r6666, r6667, r6668, r6669, r6670⟩ := seg48Blind_rows54 rho h
  unfold Seg48.relationRow6203 at r6203

  unfold Seg48.relationRow6666 at r6666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6666

  unfold Seg48.relationRow6667 at r6667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6667

  unfold Seg48.relationRow6668 at r6668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6668

  unfold Seg48.relationRow6669 at r6669

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6669

  unfold Seg48.relationRow6670 at r6670

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6670

  have hnextx : seg48BlindDeltaX54 rho =
      seg48BlindDeltaX53 rho + rho 39425 := by
    unfold seg48BlindDeltaX54 seg48BlindDeltaX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 53]

    ring

  have hnexty : seg48BlindDeltaY54 rho =
      seg48BlindDeltaY53 rho + rho 39426 := by
    unfold seg48BlindDeltaY54 seg48BlindDeltaY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 53]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 54
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX53 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY53 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX54 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY54 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung54_wide (rho 38906) (rho 38960) (seg48BlindDeltaX53 rho) (seg48BlindDeltaY53 rho) (rho 39422) (rho 39423) (rho 39424) (rho 39425) (rho 39426) hacc
  · unfold seg48BlindDeltaX53 seg48BlindDeltaY53
    linear_combination r6666
  · unfold seg48BlindDeltaX53 seg48BlindDeltaY53
    linear_combination r6667
  · unfold seg48BlindDeltaX53 seg48BlindDeltaY53
    linear_combination r6668
  · unfold seg48BlindDeltaX53
    linear_combination r6669
  · unfold seg48BlindDeltaY53
    linear_combination r6670
  · linear_combination r6203

theorem seg48Blind_rows55 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6204 rho ∧ Seg48.relationRow6671 rho ∧ Seg48.relationRow6672 rho ∧ Seg48.relationRow6673 rho ∧ Seg48.relationRow6674 rho ∧ Seg48.relationRow6675 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6204, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6671, r6672, r6673, r6674, r6675, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6204, r6671, r6672, r6673, r6674, r6675⟩

theorem seg48Blind_rung55 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38961 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 55)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      55 (Bool.toZMod bit) (seg48BlindAccState rho 55)
      (seg48BlindAccState rho 56) := by
  obtain ⟨r6204, r6671, r6672, r6673, r6674, r6675⟩ := seg48Blind_rows55 rho h
  unfold Seg48.relationRow6204 at r6204

  unfold Seg48.relationRow6671 at r6671

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6671

  unfold Seg48.relationRow6672 at r6672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6672

  unfold Seg48.relationRow6673 at r6673

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6673

  unfold Seg48.relationRow6674 at r6674

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6674

  unfold Seg48.relationRow6675 at r6675

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6675

  have hnextx : seg48BlindDeltaX55 rho =
      seg48BlindDeltaX54 rho + rho 39430 := by
    unfold seg48BlindDeltaX55 seg48BlindDeltaX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 54]

    ring

  have hnexty : seg48BlindDeltaY55 rho =
      seg48BlindDeltaY54 rho + rho 39431 := by
    unfold seg48BlindDeltaY55 seg48BlindDeltaY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 54]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 55
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX54 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY54 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX55 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY55 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung55_wide (rho 38906) (rho 38961) (seg48BlindDeltaX54 rho) (seg48BlindDeltaY54 rho) (rho 39427) (rho 39428) (rho 39429) (rho 39430) (rho 39431) hacc
  · unfold seg48BlindDeltaX54 seg48BlindDeltaY54
    linear_combination r6671
  · unfold seg48BlindDeltaX54 seg48BlindDeltaY54
    linear_combination r6672
  · unfold seg48BlindDeltaX54 seg48BlindDeltaY54
    linear_combination r6673
  · unfold seg48BlindDeltaX54
    linear_combination r6674
  · unfold seg48BlindDeltaY54
    linear_combination r6675
  · linear_combination r6204

theorem seg48Blind_rows56 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6205 rho ∧ Seg48.relationRow6676 rho ∧ Seg48.relationRow6677 rho ∧ Seg48.relationRow6678 rho ∧ Seg48.relationRow6679 rho ∧ Seg48.relationRow6680 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6205, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6676, r6677, r6678, r6679, r6680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6205, r6676, r6677, r6678, r6679, r6680⟩

theorem seg48Blind_rung56 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38962 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 56)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      56 (Bool.toZMod bit) (seg48BlindAccState rho 56)
      (seg48BlindAccState rho 57) := by
  obtain ⟨r6205, r6676, r6677, r6678, r6679, r6680⟩ := seg48Blind_rows56 rho h
  unfold Seg48.relationRow6205 at r6205

  unfold Seg48.relationRow6676 at r6676

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6676

  unfold Seg48.relationRow6677 at r6677

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6677

  unfold Seg48.relationRow6678 at r6678

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6678

  unfold Seg48.relationRow6679 at r6679

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6679

  unfold Seg48.relationRow6680 at r6680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6680

  have hnextx : seg48BlindDeltaX56 rho =
      seg48BlindDeltaX55 rho + rho 39435 := by
    unfold seg48BlindDeltaX56 seg48BlindDeltaX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 55]

    ring

  have hnexty : seg48BlindDeltaY56 rho =
      seg48BlindDeltaY55 rho + rho 39436 := by
    unfold seg48BlindDeltaY56 seg48BlindDeltaY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 55]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 56
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX55 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY55 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX56 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY56 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung56_wide (rho 38906) (rho 38962) (seg48BlindDeltaX55 rho) (seg48BlindDeltaY55 rho) (rho 39432) (rho 39433) (rho 39434) (rho 39435) (rho 39436) hacc
  · unfold seg48BlindDeltaX55 seg48BlindDeltaY55
    linear_combination r6676
  · unfold seg48BlindDeltaX55 seg48BlindDeltaY55
    linear_combination r6677
  · unfold seg48BlindDeltaX55 seg48BlindDeltaY55
    linear_combination r6678
  · unfold seg48BlindDeltaX55
    linear_combination r6679
  · unfold seg48BlindDeltaY55
    linear_combination r6680
  · linear_combination r6205

theorem seg48Blind_rows57 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6206 rho ∧ Seg48.relationRow6681 rho ∧ Seg48.relationRow6682 rho ∧ Seg48.relationRow6683 rho ∧ Seg48.relationRow6684 rho ∧ Seg48.relationRow6685 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6681, r6682, r6683, r6684, r6685, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6206, r6681, r6682, r6683, r6684, r6685⟩

theorem seg48Blind_rung57 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38963 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 57)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      57 (Bool.toZMod bit) (seg48BlindAccState rho 57)
      (seg48BlindAccState rho 58) := by
  obtain ⟨r6206, r6681, r6682, r6683, r6684, r6685⟩ := seg48Blind_rows57 rho h
  unfold Seg48.relationRow6206 at r6206

  unfold Seg48.relationRow6681 at r6681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6681

  unfold Seg48.relationRow6682 at r6682

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6682

  unfold Seg48.relationRow6683 at r6683

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6683

  unfold Seg48.relationRow6684 at r6684

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6684

  unfold Seg48.relationRow6685 at r6685

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6685

  have hnextx : seg48BlindDeltaX57 rho =
      seg48BlindDeltaX56 rho + rho 39440 := by
    unfold seg48BlindDeltaX57 seg48BlindDeltaX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 56]

    ring

  have hnexty : seg48BlindDeltaY57 rho =
      seg48BlindDeltaY56 rho + rho 39441 := by
    unfold seg48BlindDeltaY57 seg48BlindDeltaY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 56]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 57
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX56 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY56 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX57 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY57 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung57_wide (rho 38906) (rho 38963) (seg48BlindDeltaX56 rho) (seg48BlindDeltaY56 rho) (rho 39437) (rho 39438) (rho 39439) (rho 39440) (rho 39441) hacc
  · unfold seg48BlindDeltaX56 seg48BlindDeltaY56
    linear_combination r6681
  · unfold seg48BlindDeltaX56 seg48BlindDeltaY56
    linear_combination r6682
  · unfold seg48BlindDeltaX56 seg48BlindDeltaY56
    linear_combination r6683
  · unfold seg48BlindDeltaX56
    linear_combination r6684
  · unfold seg48BlindDeltaY56
    linear_combination r6685
  · linear_combination r6206

theorem seg48Blind_rows58 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6207 rho ∧ Seg48.relationRow6686 rho ∧ Seg48.relationRow6687 rho ∧ Seg48.relationRow6688 rho ∧ Seg48.relationRow6689 rho ∧ Seg48.relationRow6690 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6207, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6686, r6687, r6688, r6689, r6690, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6207, r6686, r6687, r6688, r6689, r6690⟩

theorem seg48Blind_rung58 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38964 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 58)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      58 (Bool.toZMod bit) (seg48BlindAccState rho 58)
      (seg48BlindAccState rho 59) := by
  obtain ⟨r6207, r6686, r6687, r6688, r6689, r6690⟩ := seg48Blind_rows58 rho h
  unfold Seg48.relationRow6207 at r6207

  unfold Seg48.relationRow6686 at r6686

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6686

  unfold Seg48.relationRow6687 at r6687

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6687

  unfold Seg48.relationRow6688 at r6688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6688

  unfold Seg48.relationRow6689 at r6689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6689

  unfold Seg48.relationRow6690 at r6690

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6690

  have hnextx : seg48BlindDeltaX58 rho =
      seg48BlindDeltaX57 rho + rho 39445 := by
    unfold seg48BlindDeltaX58 seg48BlindDeltaX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 57]

    ring

  have hnexty : seg48BlindDeltaY58 rho =
      seg48BlindDeltaY57 rho + rho 39446 := by
    unfold seg48BlindDeltaY58 seg48BlindDeltaY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 57]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 58
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX57 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY57 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX58 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY58 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung58_wide (rho 38906) (rho 38964) (seg48BlindDeltaX57 rho) (seg48BlindDeltaY57 rho) (rho 39442) (rho 39443) (rho 39444) (rho 39445) (rho 39446) hacc
  · unfold seg48BlindDeltaX57 seg48BlindDeltaY57
    linear_combination r6686
  · unfold seg48BlindDeltaX57 seg48BlindDeltaY57
    linear_combination r6687
  · unfold seg48BlindDeltaX57 seg48BlindDeltaY57
    linear_combination r6688
  · unfold seg48BlindDeltaX57
    linear_combination r6689
  · unfold seg48BlindDeltaY57
    linear_combination r6690
  · linear_combination r6207

theorem seg48Blind_rows59 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6208 rho ∧ Seg48.relationRow6691 rho ∧ Seg48.relationRow6692 rho ∧ Seg48.relationRow6693 rho ∧ Seg48.relationRow6694 rho ∧ Seg48.relationRow6695 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6691, r6692, r6693, r6694, r6695, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6208, r6691, r6692, r6693, r6694, r6695⟩

theorem seg48Blind_rung59 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38965 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 59)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      59 (Bool.toZMod bit) (seg48BlindAccState rho 59)
      (seg48BlindAccState rho 60) := by
  obtain ⟨r6208, r6691, r6692, r6693, r6694, r6695⟩ := seg48Blind_rows59 rho h
  unfold Seg48.relationRow6208 at r6208

  unfold Seg48.relationRow6691 at r6691

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6691

  unfold Seg48.relationRow6692 at r6692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6692

  unfold Seg48.relationRow6693 at r6693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6693

  unfold Seg48.relationRow6694 at r6694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6694

  unfold Seg48.relationRow6695 at r6695

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6695

  have hnextx : seg48BlindDeltaX59 rho =
      seg48BlindDeltaX58 rho + rho 39450 := by
    unfold seg48BlindDeltaX59 seg48BlindDeltaX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 58]

    ring

  have hnexty : seg48BlindDeltaY59 rho =
      seg48BlindDeltaY58 rho + rho 39451 := by
    unfold seg48BlindDeltaY59 seg48BlindDeltaY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 58]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 59
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX58 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY58 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX59 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY59 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung59_wide (rho 38906) (rho 38965) (seg48BlindDeltaX58 rho) (seg48BlindDeltaY58 rho) (rho 39447) (rho 39448) (rho 39449) (rho 39450) (rho 39451) hacc
  · unfold seg48BlindDeltaX58 seg48BlindDeltaY58
    linear_combination r6691
  · unfold seg48BlindDeltaX58 seg48BlindDeltaY58
    linear_combination r6692
  · unfold seg48BlindDeltaX58 seg48BlindDeltaY58
    linear_combination r6693
  · unfold seg48BlindDeltaX58
    linear_combination r6694
  · unfold seg48BlindDeltaY58
    linear_combination r6695
  · linear_combination r6208

theorem seg48Blind_rows60 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6209 rho ∧ Seg48.relationRow6696 rho ∧ Seg48.relationRow6697 rho ∧ Seg48.relationRow6698 rho ∧ Seg48.relationRow6699 rho ∧ Seg48.relationRow6700 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6696, r6697, r6698, r6699, r6700, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6209, r6696, r6697, r6698, r6699, r6700⟩

theorem seg48Blind_rung60 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38966 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 60)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      60 (Bool.toZMod bit) (seg48BlindAccState rho 60)
      (seg48BlindAccState rho 61) := by
  obtain ⟨r6209, r6696, r6697, r6698, r6699, r6700⟩ := seg48Blind_rows60 rho h
  unfold Seg48.relationRow6209 at r6209

  unfold Seg48.relationRow6696 at r6696

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6696

  unfold Seg48.relationRow6697 at r6697

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6697

  unfold Seg48.relationRow6698 at r6698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6698

  unfold Seg48.relationRow6699 at r6699

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6699

  unfold Seg48.relationRow6700 at r6700

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6700

  have hnextx : seg48BlindDeltaX60 rho =
      seg48BlindDeltaX59 rho + rho 39455 := by
    unfold seg48BlindDeltaX60 seg48BlindDeltaX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 59]

    ring

  have hnexty : seg48BlindDeltaY60 rho =
      seg48BlindDeltaY59 rho + rho 39456 := by
    unfold seg48BlindDeltaY60 seg48BlindDeltaY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 59]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 60
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX59 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY59 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX60 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY60 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung60_wide (rho 38906) (rho 38966) (seg48BlindDeltaX59 rho) (seg48BlindDeltaY59 rho) (rho 39452) (rho 39453) (rho 39454) (rho 39455) (rho 39456) hacc
  · unfold seg48BlindDeltaX59 seg48BlindDeltaY59
    linear_combination r6696
  · unfold seg48BlindDeltaX59 seg48BlindDeltaY59
    linear_combination r6697
  · unfold seg48BlindDeltaX59 seg48BlindDeltaY59
    linear_combination r6698
  · unfold seg48BlindDeltaX59
    linear_combination r6699
  · unfold seg48BlindDeltaY59
    linear_combination r6700
  · linear_combination r6209

theorem seg48Blind_hstep_c5 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 51 ≤ i → i < 61 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc
  · exact seg48Blind_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc
  · exact seg48Blind_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc
  · exact seg48Blind_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc
  · exact seg48Blind_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc
  · exact seg48Blind_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc
  · exact seg48Blind_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc
  · exact seg48Blind_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc
  · exact seg48Blind_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc
  · exact seg48Blind_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

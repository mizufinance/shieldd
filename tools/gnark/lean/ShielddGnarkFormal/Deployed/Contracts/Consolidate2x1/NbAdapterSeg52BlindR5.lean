import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6200 rho ∧ Seg52.relationRow6651 rho ∧ Seg52.relationRow6652 rho ∧ Seg52.relationRow6653 rho ∧ Seg52.relationRow6654 rho ∧ Seg52.relationRow6655 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6200, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6651, r6652, r6653, r6654, r6655, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6200, r6651, r6652, r6653, r6654, r6655⟩

theorem seg52Blind_rung51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50589 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 51)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      51 (Bool.toZMod bit) (seg52BlindAccState rho 51)
      (seg52BlindAccState rho 52) := by
  obtain ⟨r6200, r6651, r6652, r6653, r6654, r6655⟩ := seg52Blind_rows51 rho h
  unfold Seg52.relationRow6200 at r6200

  unfold Seg52.relationRow6651 at r6651

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6651

  unfold Seg52.relationRow6652 at r6652

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6652

  unfold Seg52.relationRow6653 at r6653

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6653

  unfold Seg52.relationRow6654 at r6654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6654

  unfold Seg52.relationRow6655 at r6655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6655

  have hnextx : seg52BlindDeltaX51 rho =
      seg52BlindDeltaX50 rho + rho 51042 := by
    unfold seg52BlindDeltaX51 seg52BlindDeltaX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 50]

    ring

  have hnexty : seg52BlindDeltaY51 rho =
      seg52BlindDeltaY50 rho + rho 51043 := by
    unfold seg52BlindDeltaY51 seg52BlindDeltaY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 50]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 51
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX50 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY50 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX51 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY51 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung51_wide (rho 50538) (rho 50589) (seg52BlindDeltaX50 rho) (seg52BlindDeltaY50 rho) (rho 51039) (rho 51040) (rho 51041) (rho 51042) (rho 51043) hacc
  · unfold seg52BlindDeltaX50 seg52BlindDeltaY50
    linear_combination r6651
  · unfold seg52BlindDeltaX50 seg52BlindDeltaY50
    linear_combination r6652
  · unfold seg52BlindDeltaX50 seg52BlindDeltaY50
    linear_combination r6653
  · unfold seg52BlindDeltaX50
    linear_combination r6654
  · unfold seg52BlindDeltaY50
    linear_combination r6655
  · linear_combination r6200

theorem seg52Blind_rows52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6201 rho ∧ Seg52.relationRow6656 rho ∧ Seg52.relationRow6657 rho ∧ Seg52.relationRow6658 rho ∧ Seg52.relationRow6659 rho ∧ Seg52.relationRow6660 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6201, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6656, r6657, r6658, r6659, r6660, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6201, r6656, r6657, r6658, r6659, r6660⟩

theorem seg52Blind_rung52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50590 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 52)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      52 (Bool.toZMod bit) (seg52BlindAccState rho 52)
      (seg52BlindAccState rho 53) := by
  obtain ⟨r6201, r6656, r6657, r6658, r6659, r6660⟩ := seg52Blind_rows52 rho h
  unfold Seg52.relationRow6201 at r6201

  unfold Seg52.relationRow6656 at r6656

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6656

  unfold Seg52.relationRow6657 at r6657

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6657

  unfold Seg52.relationRow6658 at r6658

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6658

  unfold Seg52.relationRow6659 at r6659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6659

  unfold Seg52.relationRow6660 at r6660

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6660

  have hnextx : seg52BlindDeltaX52 rho =
      seg52BlindDeltaX51 rho + rho 51047 := by
    unfold seg52BlindDeltaX52 seg52BlindDeltaX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 51]

    ring

  have hnexty : seg52BlindDeltaY52 rho =
      seg52BlindDeltaY51 rho + rho 51048 := by
    unfold seg52BlindDeltaY52 seg52BlindDeltaY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 51]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 52
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX51 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY51 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX52 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY52 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung52_wide (rho 50538) (rho 50590) (seg52BlindDeltaX51 rho) (seg52BlindDeltaY51 rho) (rho 51044) (rho 51045) (rho 51046) (rho 51047) (rho 51048) hacc
  · unfold seg52BlindDeltaX51 seg52BlindDeltaY51
    linear_combination r6656
  · unfold seg52BlindDeltaX51 seg52BlindDeltaY51
    linear_combination r6657
  · unfold seg52BlindDeltaX51 seg52BlindDeltaY51
    linear_combination r6658
  · unfold seg52BlindDeltaX51
    linear_combination r6659
  · unfold seg52BlindDeltaY51
    linear_combination r6660
  · linear_combination r6201

theorem seg52Blind_rows53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6202 rho ∧ Seg52.relationRow6661 rho ∧ Seg52.relationRow6662 rho ∧ Seg52.relationRow6663 rho ∧ Seg52.relationRow6664 rho ∧ Seg52.relationRow6665 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6202, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6661, r6662, r6663, r6664, r6665, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6202, r6661, r6662, r6663, r6664, r6665⟩

theorem seg52Blind_rung53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50591 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 53)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      53 (Bool.toZMod bit) (seg52BlindAccState rho 53)
      (seg52BlindAccState rho 54) := by
  obtain ⟨r6202, r6661, r6662, r6663, r6664, r6665⟩ := seg52Blind_rows53 rho h
  unfold Seg52.relationRow6202 at r6202

  unfold Seg52.relationRow6661 at r6661

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6661

  unfold Seg52.relationRow6662 at r6662

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6662

  unfold Seg52.relationRow6663 at r6663

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6663

  unfold Seg52.relationRow6664 at r6664

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6664

  unfold Seg52.relationRow6665 at r6665

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6665

  have hnextx : seg52BlindDeltaX53 rho =
      seg52BlindDeltaX52 rho + rho 51052 := by
    unfold seg52BlindDeltaX53 seg52BlindDeltaX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 52]

    ring

  have hnexty : seg52BlindDeltaY53 rho =
      seg52BlindDeltaY52 rho + rho 51053 := by
    unfold seg52BlindDeltaY53 seg52BlindDeltaY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 52]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 53
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX52 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY52 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX53 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY53 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung53_wide (rho 50538) (rho 50591) (seg52BlindDeltaX52 rho) (seg52BlindDeltaY52 rho) (rho 51049) (rho 51050) (rho 51051) (rho 51052) (rho 51053) hacc
  · unfold seg52BlindDeltaX52 seg52BlindDeltaY52
    linear_combination r6661
  · unfold seg52BlindDeltaX52 seg52BlindDeltaY52
    linear_combination r6662
  · unfold seg52BlindDeltaX52 seg52BlindDeltaY52
    linear_combination r6663
  · unfold seg52BlindDeltaX52
    linear_combination r6664
  · unfold seg52BlindDeltaY52
    linear_combination r6665
  · linear_combination r6202

theorem seg52Blind_rows54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6203 rho ∧ Seg52.relationRow6666 rho ∧ Seg52.relationRow6667 rho ∧ Seg52.relationRow6668 rho ∧ Seg52.relationRow6669 rho ∧ Seg52.relationRow6670 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6203, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6666, r6667, r6668, r6669, r6670, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6203, r6666, r6667, r6668, r6669, r6670⟩

theorem seg52Blind_rung54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50592 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 54)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      54 (Bool.toZMod bit) (seg52BlindAccState rho 54)
      (seg52BlindAccState rho 55) := by
  obtain ⟨r6203, r6666, r6667, r6668, r6669, r6670⟩ := seg52Blind_rows54 rho h
  unfold Seg52.relationRow6203 at r6203

  unfold Seg52.relationRow6666 at r6666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6666

  unfold Seg52.relationRow6667 at r6667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6667

  unfold Seg52.relationRow6668 at r6668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6668

  unfold Seg52.relationRow6669 at r6669

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6669

  unfold Seg52.relationRow6670 at r6670

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6670

  have hnextx : seg52BlindDeltaX54 rho =
      seg52BlindDeltaX53 rho + rho 51057 := by
    unfold seg52BlindDeltaX54 seg52BlindDeltaX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 53]

    ring

  have hnexty : seg52BlindDeltaY54 rho =
      seg52BlindDeltaY53 rho + rho 51058 := by
    unfold seg52BlindDeltaY54 seg52BlindDeltaY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 53]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 54
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX53 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY53 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX54 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY54 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung54_wide (rho 50538) (rho 50592) (seg52BlindDeltaX53 rho) (seg52BlindDeltaY53 rho) (rho 51054) (rho 51055) (rho 51056) (rho 51057) (rho 51058) hacc
  · unfold seg52BlindDeltaX53 seg52BlindDeltaY53
    linear_combination r6666
  · unfold seg52BlindDeltaX53 seg52BlindDeltaY53
    linear_combination r6667
  · unfold seg52BlindDeltaX53 seg52BlindDeltaY53
    linear_combination r6668
  · unfold seg52BlindDeltaX53
    linear_combination r6669
  · unfold seg52BlindDeltaY53
    linear_combination r6670
  · linear_combination r6203

theorem seg52Blind_rows55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6204 rho ∧ Seg52.relationRow6671 rho ∧ Seg52.relationRow6672 rho ∧ Seg52.relationRow6673 rho ∧ Seg52.relationRow6674 rho ∧ Seg52.relationRow6675 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6204, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6671, r6672, r6673, r6674, r6675, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6204, r6671, r6672, r6673, r6674, r6675⟩

theorem seg52Blind_rung55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50593 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 55)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      55 (Bool.toZMod bit) (seg52BlindAccState rho 55)
      (seg52BlindAccState rho 56) := by
  obtain ⟨r6204, r6671, r6672, r6673, r6674, r6675⟩ := seg52Blind_rows55 rho h
  unfold Seg52.relationRow6204 at r6204

  unfold Seg52.relationRow6671 at r6671

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6671

  unfold Seg52.relationRow6672 at r6672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6672

  unfold Seg52.relationRow6673 at r6673

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6673

  unfold Seg52.relationRow6674 at r6674

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6674

  unfold Seg52.relationRow6675 at r6675

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6675

  have hnextx : seg52BlindDeltaX55 rho =
      seg52BlindDeltaX54 rho + rho 51062 := by
    unfold seg52BlindDeltaX55 seg52BlindDeltaX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 54]

    ring

  have hnexty : seg52BlindDeltaY55 rho =
      seg52BlindDeltaY54 rho + rho 51063 := by
    unfold seg52BlindDeltaY55 seg52BlindDeltaY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 54]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 55
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX54 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY54 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX55 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY55 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung55_wide (rho 50538) (rho 50593) (seg52BlindDeltaX54 rho) (seg52BlindDeltaY54 rho) (rho 51059) (rho 51060) (rho 51061) (rho 51062) (rho 51063) hacc
  · unfold seg52BlindDeltaX54 seg52BlindDeltaY54
    linear_combination r6671
  · unfold seg52BlindDeltaX54 seg52BlindDeltaY54
    linear_combination r6672
  · unfold seg52BlindDeltaX54 seg52BlindDeltaY54
    linear_combination r6673
  · unfold seg52BlindDeltaX54
    linear_combination r6674
  · unfold seg52BlindDeltaY54
    linear_combination r6675
  · linear_combination r6204

theorem seg52Blind_rows56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6205 rho ∧ Seg52.relationRow6676 rho ∧ Seg52.relationRow6677 rho ∧ Seg52.relationRow6678 rho ∧ Seg52.relationRow6679 rho ∧ Seg52.relationRow6680 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6205, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6676, r6677, r6678, r6679, r6680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6205, r6676, r6677, r6678, r6679, r6680⟩

theorem seg52Blind_rung56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50594 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 56)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      56 (Bool.toZMod bit) (seg52BlindAccState rho 56)
      (seg52BlindAccState rho 57) := by
  obtain ⟨r6205, r6676, r6677, r6678, r6679, r6680⟩ := seg52Blind_rows56 rho h
  unfold Seg52.relationRow6205 at r6205

  unfold Seg52.relationRow6676 at r6676

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6676

  unfold Seg52.relationRow6677 at r6677

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6677

  unfold Seg52.relationRow6678 at r6678

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6678

  unfold Seg52.relationRow6679 at r6679

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6679

  unfold Seg52.relationRow6680 at r6680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6680

  have hnextx : seg52BlindDeltaX56 rho =
      seg52BlindDeltaX55 rho + rho 51067 := by
    unfold seg52BlindDeltaX56 seg52BlindDeltaX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 55]

    ring

  have hnexty : seg52BlindDeltaY56 rho =
      seg52BlindDeltaY55 rho + rho 51068 := by
    unfold seg52BlindDeltaY56 seg52BlindDeltaY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 55]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 56
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX55 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY55 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX56 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY56 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung56_wide (rho 50538) (rho 50594) (seg52BlindDeltaX55 rho) (seg52BlindDeltaY55 rho) (rho 51064) (rho 51065) (rho 51066) (rho 51067) (rho 51068) hacc
  · unfold seg52BlindDeltaX55 seg52BlindDeltaY55
    linear_combination r6676
  · unfold seg52BlindDeltaX55 seg52BlindDeltaY55
    linear_combination r6677
  · unfold seg52BlindDeltaX55 seg52BlindDeltaY55
    linear_combination r6678
  · unfold seg52BlindDeltaX55
    linear_combination r6679
  · unfold seg52BlindDeltaY55
    linear_combination r6680
  · linear_combination r6205

theorem seg52Blind_rows57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6206 rho ∧ Seg52.relationRow6681 rho ∧ Seg52.relationRow6682 rho ∧ Seg52.relationRow6683 rho ∧ Seg52.relationRow6684 rho ∧ Seg52.relationRow6685 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6681, r6682, r6683, r6684, r6685, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6206, r6681, r6682, r6683, r6684, r6685⟩

theorem seg52Blind_rung57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50595 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 57)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      57 (Bool.toZMod bit) (seg52BlindAccState rho 57)
      (seg52BlindAccState rho 58) := by
  obtain ⟨r6206, r6681, r6682, r6683, r6684, r6685⟩ := seg52Blind_rows57 rho h
  unfold Seg52.relationRow6206 at r6206

  unfold Seg52.relationRow6681 at r6681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6681

  unfold Seg52.relationRow6682 at r6682

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6682

  unfold Seg52.relationRow6683 at r6683

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6683

  unfold Seg52.relationRow6684 at r6684

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6684

  unfold Seg52.relationRow6685 at r6685

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6685

  have hnextx : seg52BlindDeltaX57 rho =
      seg52BlindDeltaX56 rho + rho 51072 := by
    unfold seg52BlindDeltaX57 seg52BlindDeltaX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 56]

    ring

  have hnexty : seg52BlindDeltaY57 rho =
      seg52BlindDeltaY56 rho + rho 51073 := by
    unfold seg52BlindDeltaY57 seg52BlindDeltaY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 56]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 57
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX56 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY56 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX57 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY57 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung57_wide (rho 50538) (rho 50595) (seg52BlindDeltaX56 rho) (seg52BlindDeltaY56 rho) (rho 51069) (rho 51070) (rho 51071) (rho 51072) (rho 51073) hacc
  · unfold seg52BlindDeltaX56 seg52BlindDeltaY56
    linear_combination r6681
  · unfold seg52BlindDeltaX56 seg52BlindDeltaY56
    linear_combination r6682
  · unfold seg52BlindDeltaX56 seg52BlindDeltaY56
    linear_combination r6683
  · unfold seg52BlindDeltaX56
    linear_combination r6684
  · unfold seg52BlindDeltaY56
    linear_combination r6685
  · linear_combination r6206

theorem seg52Blind_rows58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6207 rho ∧ Seg52.relationRow6686 rho ∧ Seg52.relationRow6687 rho ∧ Seg52.relationRow6688 rho ∧ Seg52.relationRow6689 rho ∧ Seg52.relationRow6690 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6207, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6686, r6687, r6688, r6689, r6690, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6207, r6686, r6687, r6688, r6689, r6690⟩

theorem seg52Blind_rung58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50596 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 58)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      58 (Bool.toZMod bit) (seg52BlindAccState rho 58)
      (seg52BlindAccState rho 59) := by
  obtain ⟨r6207, r6686, r6687, r6688, r6689, r6690⟩ := seg52Blind_rows58 rho h
  unfold Seg52.relationRow6207 at r6207

  unfold Seg52.relationRow6686 at r6686

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6686

  unfold Seg52.relationRow6687 at r6687

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6687

  unfold Seg52.relationRow6688 at r6688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6688

  unfold Seg52.relationRow6689 at r6689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6689

  unfold Seg52.relationRow6690 at r6690

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6690

  have hnextx : seg52BlindDeltaX58 rho =
      seg52BlindDeltaX57 rho + rho 51077 := by
    unfold seg52BlindDeltaX58 seg52BlindDeltaX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 57]

    ring

  have hnexty : seg52BlindDeltaY58 rho =
      seg52BlindDeltaY57 rho + rho 51078 := by
    unfold seg52BlindDeltaY58 seg52BlindDeltaY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 57]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 58
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX57 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY57 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX58 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY58 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung58_wide (rho 50538) (rho 50596) (seg52BlindDeltaX57 rho) (seg52BlindDeltaY57 rho) (rho 51074) (rho 51075) (rho 51076) (rho 51077) (rho 51078) hacc
  · unfold seg52BlindDeltaX57 seg52BlindDeltaY57
    linear_combination r6686
  · unfold seg52BlindDeltaX57 seg52BlindDeltaY57
    linear_combination r6687
  · unfold seg52BlindDeltaX57 seg52BlindDeltaY57
    linear_combination r6688
  · unfold seg52BlindDeltaX57
    linear_combination r6689
  · unfold seg52BlindDeltaY57
    linear_combination r6690
  · linear_combination r6207

theorem seg52Blind_rows59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6208 rho ∧ Seg52.relationRow6691 rho ∧ Seg52.relationRow6692 rho ∧ Seg52.relationRow6693 rho ∧ Seg52.relationRow6694 rho ∧ Seg52.relationRow6695 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6691, r6692, r6693, r6694, r6695, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6208, r6691, r6692, r6693, r6694, r6695⟩

theorem seg52Blind_rung59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50597 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 59)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      59 (Bool.toZMod bit) (seg52BlindAccState rho 59)
      (seg52BlindAccState rho 60) := by
  obtain ⟨r6208, r6691, r6692, r6693, r6694, r6695⟩ := seg52Blind_rows59 rho h
  unfold Seg52.relationRow6208 at r6208

  unfold Seg52.relationRow6691 at r6691

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6691

  unfold Seg52.relationRow6692 at r6692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6692

  unfold Seg52.relationRow6693 at r6693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6693

  unfold Seg52.relationRow6694 at r6694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6694

  unfold Seg52.relationRow6695 at r6695

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6695

  have hnextx : seg52BlindDeltaX59 rho =
      seg52BlindDeltaX58 rho + rho 51082 := by
    unfold seg52BlindDeltaX59 seg52BlindDeltaX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 58]

    ring

  have hnexty : seg52BlindDeltaY59 rho =
      seg52BlindDeltaY58 rho + rho 51083 := by
    unfold seg52BlindDeltaY59 seg52BlindDeltaY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 58]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 59
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX58 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY58 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX59 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY59 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung59_wide (rho 50538) (rho 50597) (seg52BlindDeltaX58 rho) (seg52BlindDeltaY58 rho) (rho 51079) (rho 51080) (rho 51081) (rho 51082) (rho 51083) hacc
  · unfold seg52BlindDeltaX58 seg52BlindDeltaY58
    linear_combination r6691
  · unfold seg52BlindDeltaX58 seg52BlindDeltaY58
    linear_combination r6692
  · unfold seg52BlindDeltaX58 seg52BlindDeltaY58
    linear_combination r6693
  · unfold seg52BlindDeltaX58
    linear_combination r6694
  · unfold seg52BlindDeltaY58
    linear_combination r6695
  · linear_combination r6208

theorem seg52Blind_rows60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6209 rho ∧ Seg52.relationRow6696 rho ∧ Seg52.relationRow6697 rho ∧ Seg52.relationRow6698 rho ∧ Seg52.relationRow6699 rho ∧ Seg52.relationRow6700 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6696, r6697, r6698, r6699, r6700, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6209, r6696, r6697, r6698, r6699, r6700⟩

theorem seg52Blind_rung60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50598 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 60)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      60 (Bool.toZMod bit) (seg52BlindAccState rho 60)
      (seg52BlindAccState rho 61) := by
  obtain ⟨r6209, r6696, r6697, r6698, r6699, r6700⟩ := seg52Blind_rows60 rho h
  unfold Seg52.relationRow6209 at r6209

  unfold Seg52.relationRow6696 at r6696

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6696

  unfold Seg52.relationRow6697 at r6697

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6697

  unfold Seg52.relationRow6698 at r6698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6698

  unfold Seg52.relationRow6699 at r6699

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6699

  unfold Seg52.relationRow6700 at r6700

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6700

  have hnextx : seg52BlindDeltaX60 rho =
      seg52BlindDeltaX59 rho + rho 51087 := by
    unfold seg52BlindDeltaX60 seg52BlindDeltaX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 59]

    ring

  have hnexty : seg52BlindDeltaY60 rho =
      seg52BlindDeltaY59 rho + rho 51088 := by
    unfold seg52BlindDeltaY60 seg52BlindDeltaY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 59]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 60
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX59 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY59 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX60 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY60 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung60_wide (rho 50538) (rho 50598) (seg52BlindDeltaX59 rho) (seg52BlindDeltaY59 rho) (rho 51084) (rho 51085) (rho 51086) (rho 51087) (rho 51088) hacc
  · unfold seg52BlindDeltaX59 seg52BlindDeltaY59
    linear_combination r6696
  · unfold seg52BlindDeltaX59 seg52BlindDeltaY59
    linear_combination r6697
  · unfold seg52BlindDeltaX59 seg52BlindDeltaY59
    linear_combination r6698
  · unfold seg52BlindDeltaX59
    linear_combination r6699
  · unfold seg52BlindDeltaY59
    linear_combination r6700
  · linear_combination r6209

theorem seg52Blind_hstep_c5 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 51 ≤ i → i < 61 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc
  · exact seg52Blind_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc
  · exact seg52Blind_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc
  · exact seg52Blind_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc
  · exact seg52Blind_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc
  · exact seg52Blind_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc
  · exact seg52Blind_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc
  · exact seg52Blind_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc
  · exact seg52Blind_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc
  · exact seg52Blind_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

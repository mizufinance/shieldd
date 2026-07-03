import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6910 rho ∧ Seg52.relationRow7641 rho ∧ Seg52.relationRow7642 rho ∧ Seg52.relationRow7643 rho ∧ Seg52.relationRow7644 rho ∧ Seg52.relationRow7645 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6910, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7641, r7642, r7643, r7644, r7645, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6910, r7641, r7642, r7643, r7644, r7645⟩

theorem seg52Blind_rung121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51299 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 121)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      121 (Bool.toZMod bit) (seg52BlindAccState rho 121)
      (seg52BlindAccState rho 122) := by
  obtain ⟨r6910, r7641, r7642, r7643, r7644, r7645⟩ := seg52Blind_rows121 rho h
  unfold Seg52.relationRow6910 at r6910

  unfold Seg52.relationRow7641 at r7641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7641

  unfold Seg52.relationRow7642 at r7642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7642

  unfold Seg52.relationRow7643 at r7643

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7643

  unfold Seg52.relationRow7644 at r7644

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7644

  unfold Seg52.relationRow7645 at r7645

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7645

  have hnextx : seg52BlindDeltaX121 rho =
      seg52BlindDeltaX120 rho + rho 52032 := by
    unfold seg52BlindDeltaX121 seg52BlindDeltaX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 120]

    ring

  have hnexty : seg52BlindDeltaY121 rho =
      seg52BlindDeltaY120 rho + rho 52033 := by
    unfold seg52BlindDeltaY121 seg52BlindDeltaY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 120]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 121
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX120 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY120 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX121 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY121 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung121_wide (rho 51178) (rho 51299) (seg52BlindDeltaX120 rho) (seg52BlindDeltaY120 rho) (rho 52029) (rho 52030) (rho 52031) (rho 52032) (rho 52033) hacc
  · unfold seg52BlindDeltaX120 seg52BlindDeltaY120
    linear_combination r7641
  · unfold seg52BlindDeltaX120 seg52BlindDeltaY120
    linear_combination r7642
  · unfold seg52BlindDeltaX120 seg52BlindDeltaY120
    linear_combination r7643
  · unfold seg52BlindDeltaX120
    linear_combination r7644
  · unfold seg52BlindDeltaY120
    linear_combination r7645
  · linear_combination r6910

theorem seg52Blind_rows122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6911 rho ∧ Seg52.relationRow7646 rho ∧ Seg52.relationRow7647 rho ∧ Seg52.relationRow7648 rho ∧ Seg52.relationRow7649 rho ∧ Seg52.relationRow7650 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6911, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7646, r7647, r7648, r7649, r7650, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6911, r7646, r7647, r7648, r7649, r7650⟩

theorem seg52Blind_rung122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51300 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 122)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      122 (Bool.toZMod bit) (seg52BlindAccState rho 122)
      (seg52BlindAccState rho 123) := by
  obtain ⟨r6911, r7646, r7647, r7648, r7649, r7650⟩ := seg52Blind_rows122 rho h
  unfold Seg52.relationRow6911 at r6911

  unfold Seg52.relationRow7646 at r7646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7646

  unfold Seg52.relationRow7647 at r7647

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7647

  unfold Seg52.relationRow7648 at r7648

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7648

  unfold Seg52.relationRow7649 at r7649

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7649

  unfold Seg52.relationRow7650 at r7650

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7650

  have hnextx : seg52BlindDeltaX122 rho =
      seg52BlindDeltaX121 rho + rho 52037 := by
    unfold seg52BlindDeltaX122 seg52BlindDeltaX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 121]

    ring

  have hnexty : seg52BlindDeltaY122 rho =
      seg52BlindDeltaY121 rho + rho 52038 := by
    unfold seg52BlindDeltaY122 seg52BlindDeltaY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 121]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 122
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX121 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY121 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX122 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY122 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung122_wide (rho 51178) (rho 51300) (seg52BlindDeltaX121 rho) (seg52BlindDeltaY121 rho) (rho 52034) (rho 52035) (rho 52036) (rho 52037) (rho 52038) hacc
  · unfold seg52BlindDeltaX121 seg52BlindDeltaY121
    linear_combination r7646
  · unfold seg52BlindDeltaX121 seg52BlindDeltaY121
    linear_combination r7647
  · unfold seg52BlindDeltaX121 seg52BlindDeltaY121
    linear_combination r7648
  · unfold seg52BlindDeltaX121
    linear_combination r7649
  · unfold seg52BlindDeltaY121
    linear_combination r7650
  · linear_combination r6911

theorem seg52Blind_rows123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6912 rho ∧ Seg52.relationRow7651 rho ∧ Seg52.relationRow7652 rho ∧ Seg52.relationRow7653 rho ∧ Seg52.relationRow7654 rho ∧ Seg52.relationRow7655 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6912, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7651, r7652, r7653, r7654, r7655, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6912, r7651, r7652, r7653, r7654, r7655⟩

theorem seg52Blind_rung123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51301 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 123)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      123 (Bool.toZMod bit) (seg52BlindAccState rho 123)
      (seg52BlindAccState rho 124) := by
  obtain ⟨r6912, r7651, r7652, r7653, r7654, r7655⟩ := seg52Blind_rows123 rho h
  unfold Seg52.relationRow6912 at r6912

  unfold Seg52.relationRow7651 at r7651

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7651

  unfold Seg52.relationRow7652 at r7652

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7652

  unfold Seg52.relationRow7653 at r7653

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7653

  unfold Seg52.relationRow7654 at r7654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7654

  unfold Seg52.relationRow7655 at r7655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7655

  have hnextx : seg52BlindDeltaX123 rho =
      seg52BlindDeltaX122 rho + rho 52042 := by
    unfold seg52BlindDeltaX123 seg52BlindDeltaX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 122]

    ring

  have hnexty : seg52BlindDeltaY123 rho =
      seg52BlindDeltaY122 rho + rho 52043 := by
    unfold seg52BlindDeltaY123 seg52BlindDeltaY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 122]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 123
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX122 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY122 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX123 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY123 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung123_wide (rho 51178) (rho 51301) (seg52BlindDeltaX122 rho) (seg52BlindDeltaY122 rho) (rho 52039) (rho 52040) (rho 52041) (rho 52042) (rho 52043) hacc
  · unfold seg52BlindDeltaX122 seg52BlindDeltaY122
    linear_combination r7651
  · unfold seg52BlindDeltaX122 seg52BlindDeltaY122
    linear_combination r7652
  · unfold seg52BlindDeltaX122 seg52BlindDeltaY122
    linear_combination r7653
  · unfold seg52BlindDeltaX122
    linear_combination r7654
  · unfold seg52BlindDeltaY122
    linear_combination r7655
  · linear_combination r6912

theorem seg52Blind_rows124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6913 rho ∧ Seg52.relationRow7656 rho ∧ Seg52.relationRow7657 rho ∧ Seg52.relationRow7658 rho ∧ Seg52.relationRow7659 rho ∧ Seg52.relationRow7660 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6913, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7656, r7657, r7658, r7659, r7660, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6913, r7656, r7657, r7658, r7659, r7660⟩

theorem seg52Blind_rung124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51302 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 124)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      124 (Bool.toZMod bit) (seg52BlindAccState rho 124)
      (seg52BlindAccState rho 125) := by
  obtain ⟨r6913, r7656, r7657, r7658, r7659, r7660⟩ := seg52Blind_rows124 rho h
  unfold Seg52.relationRow6913 at r6913

  unfold Seg52.relationRow7656 at r7656

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7656

  unfold Seg52.relationRow7657 at r7657

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7657

  unfold Seg52.relationRow7658 at r7658

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7658

  unfold Seg52.relationRow7659 at r7659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7659

  unfold Seg52.relationRow7660 at r7660

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7660

  have hnextx : seg52BlindDeltaX124 rho =
      seg52BlindDeltaX123 rho + rho 52047 := by
    unfold seg52BlindDeltaX124 seg52BlindDeltaX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 123]

    ring

  have hnexty : seg52BlindDeltaY124 rho =
      seg52BlindDeltaY123 rho + rho 52048 := by
    unfold seg52BlindDeltaY124 seg52BlindDeltaY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 123]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 124
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX123 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY123 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX124 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY124 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung124_wide (rho 51178) (rho 51302) (seg52BlindDeltaX123 rho) (seg52BlindDeltaY123 rho) (rho 52044) (rho 52045) (rho 52046) (rho 52047) (rho 52048) hacc
  · unfold seg52BlindDeltaX123 seg52BlindDeltaY123
    linear_combination r7656
  · unfold seg52BlindDeltaX123 seg52BlindDeltaY123
    linear_combination r7657
  · unfold seg52BlindDeltaX123 seg52BlindDeltaY123
    linear_combination r7658
  · unfold seg52BlindDeltaX123
    linear_combination r7659
  · unfold seg52BlindDeltaY123
    linear_combination r7660
  · linear_combination r6913

theorem seg52Blind_rows125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6914 rho ∧ Seg52.relationRow7661 rho ∧ Seg52.relationRow7662 rho ∧ Seg52.relationRow7663 rho ∧ Seg52.relationRow7664 rho ∧ Seg52.relationRow7665 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7661, r7662, r7663, r7664, r7665, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6914, r7661, r7662, r7663, r7664, r7665⟩

theorem seg52Blind_rung125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51303 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 125)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      125 (Bool.toZMod bit) (seg52BlindAccState rho 125)
      (seg52BlindAccState rho 126) := by
  obtain ⟨r6914, r7661, r7662, r7663, r7664, r7665⟩ := seg52Blind_rows125 rho h
  unfold Seg52.relationRow6914 at r6914

  unfold Seg52.relationRow7661 at r7661

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7661

  unfold Seg52.relationRow7662 at r7662

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7662

  unfold Seg52.relationRow7663 at r7663

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7663

  unfold Seg52.relationRow7664 at r7664

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7664

  unfold Seg52.relationRow7665 at r7665

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7665

  have hnextx : seg52BlindDeltaX125 rho =
      seg52BlindDeltaX124 rho + rho 52052 := by
    unfold seg52BlindDeltaX125 seg52BlindDeltaX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 124]

    ring

  have hnexty : seg52BlindDeltaY125 rho =
      seg52BlindDeltaY124 rho + rho 52053 := by
    unfold seg52BlindDeltaY125 seg52BlindDeltaY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 124]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 125
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX124 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY124 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX125 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY125 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung125_wide (rho 51178) (rho 51303) (seg52BlindDeltaX124 rho) (seg52BlindDeltaY124 rho) (rho 52049) (rho 52050) (rho 52051) (rho 52052) (rho 52053) hacc
  · unfold seg52BlindDeltaX124 seg52BlindDeltaY124
    linear_combination r7661
  · unfold seg52BlindDeltaX124 seg52BlindDeltaY124
    linear_combination r7662
  · unfold seg52BlindDeltaX124 seg52BlindDeltaY124
    linear_combination r7663
  · unfold seg52BlindDeltaX124
    linear_combination r7664
  · unfold seg52BlindDeltaY124
    linear_combination r7665
  · linear_combination r6914

theorem seg52Blind_rows126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6915 rho ∧ Seg52.relationRow7666 rho ∧ Seg52.relationRow7667 rho ∧ Seg52.relationRow7668 rho ∧ Seg52.relationRow7669 rho ∧ Seg52.relationRow7670 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6915, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7666, r7667, r7668, r7669, r7670, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6915, r7666, r7667, r7668, r7669, r7670⟩

theorem seg52Blind_rung126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51304 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 126)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      126 (Bool.toZMod bit) (seg52BlindAccState rho 126)
      (seg52BlindAccState rho 127) := by
  obtain ⟨r6915, r7666, r7667, r7668, r7669, r7670⟩ := seg52Blind_rows126 rho h
  unfold Seg52.relationRow6915 at r6915

  unfold Seg52.relationRow7666 at r7666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7666

  unfold Seg52.relationRow7667 at r7667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7667

  unfold Seg52.relationRow7668 at r7668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7668

  unfold Seg52.relationRow7669 at r7669

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7669

  unfold Seg52.relationRow7670 at r7670

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7670

  have hnextx : seg52BlindDeltaX126 rho =
      seg52BlindDeltaX125 rho + rho 52057 := by
    unfold seg52BlindDeltaX126 seg52BlindDeltaX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 125]

    ring

  have hnexty : seg52BlindDeltaY126 rho =
      seg52BlindDeltaY125 rho + rho 52058 := by
    unfold seg52BlindDeltaY126 seg52BlindDeltaY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 125]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 126
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX125 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY125 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX126 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY126 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung126_wide (rho 51178) (rho 51304) (seg52BlindDeltaX125 rho) (seg52BlindDeltaY125 rho) (rho 52054) (rho 52055) (rho 52056) (rho 52057) (rho 52058) hacc
  · unfold seg52BlindDeltaX125 seg52BlindDeltaY125
    linear_combination r7666
  · unfold seg52BlindDeltaX125 seg52BlindDeltaY125
    linear_combination r7667
  · unfold seg52BlindDeltaX125 seg52BlindDeltaY125
    linear_combination r7668
  · unfold seg52BlindDeltaX125
    linear_combination r7669
  · unfold seg52BlindDeltaY125
    linear_combination r7670
  · linear_combination r6915

theorem seg52Blind_rows127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6916 rho ∧ Seg52.relationRow7671 rho ∧ Seg52.relationRow7672 rho ∧ Seg52.relationRow7673 rho ∧ Seg52.relationRow7674 rho ∧ Seg52.relationRow7675 rho := by
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

    _, _, _, _, _, p95, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6916, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7671, r7672, r7673, r7674, r7675, _, _, _, _⟩

  exact ⟨r6916, r7671, r7672, r7673, r7674, r7675⟩

theorem seg52Blind_rung127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51305 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 127)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      127 (Bool.toZMod bit) (seg52BlindAccState rho 127)
      (seg52BlindAccState rho 128) := by
  obtain ⟨r6916, r7671, r7672, r7673, r7674, r7675⟩ := seg52Blind_rows127 rho h
  unfold Seg52.relationRow6916 at r6916

  unfold Seg52.relationRow7671 at r7671

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7671

  unfold Seg52.relationRow7672 at r7672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7672

  unfold Seg52.relationRow7673 at r7673

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7673

  unfold Seg52.relationRow7674 at r7674

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7674

  unfold Seg52.relationRow7675 at r7675

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7675

  have hnextx : seg52BlindDeltaX127 rho =
      seg52BlindDeltaX126 rho + rho 52062 := by
    unfold seg52BlindDeltaX127 seg52BlindDeltaX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 126]

    ring

  have hnexty : seg52BlindDeltaY127 rho =
      seg52BlindDeltaY126 rho + rho 52063 := by
    unfold seg52BlindDeltaY127 seg52BlindDeltaY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 126]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 127
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX126 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY126 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX127 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY127 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung127_wide (rho 51178) (rho 51305) (seg52BlindDeltaX126 rho) (seg52BlindDeltaY126 rho) (rho 52059) (rho 52060) (rho 52061) (rho 52062) (rho 52063) hacc
  · unfold seg52BlindDeltaX126 seg52BlindDeltaY126
    linear_combination r7671
  · unfold seg52BlindDeltaX126 seg52BlindDeltaY126
    linear_combination r7672
  · unfold seg52BlindDeltaX126 seg52BlindDeltaY126
    linear_combination r7673
  · unfold seg52BlindDeltaX126
    linear_combination r7674
  · unfold seg52BlindDeltaY126
    linear_combination r7675
  · linear_combination r6916

theorem seg52Blind_rows128 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6917 rho ∧ Seg52.relationRow7676 rho ∧ Seg52.relationRow7677 rho ∧ Seg52.relationRow7678 rho ∧ Seg52.relationRow7679 rho ∧ Seg52.relationRow7680 rho := by
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

    _, _, _, _, _, p95, p96, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6917, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7676, r7677, r7678, r7679⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨r7680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6917, r7676, r7677, r7678, r7679, r7680⟩

theorem seg52Blind_rung128 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51306 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 128)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      128 (Bool.toZMod bit) (seg52BlindAccState rho 128)
      (seg52BlindAccState rho 129) := by
  obtain ⟨r6917, r7676, r7677, r7678, r7679, r7680⟩ := seg52Blind_rows128 rho h
  unfold Seg52.relationRow6917 at r6917

  unfold Seg52.relationRow7676 at r7676

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7676

  unfold Seg52.relationRow7677 at r7677

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7677

  unfold Seg52.relationRow7678 at r7678

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7678

  unfold Seg52.relationRow7679 at r7679

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7679

  unfold Seg52.relationRow7680 at r7680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7680

  have hnextx : seg52BlindDeltaX128 rho =
      seg52BlindDeltaX127 rho + rho 52067 := by
    unfold seg52BlindDeltaX128 seg52BlindDeltaX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 127]

    ring

  have hnexty : seg52BlindDeltaY128 rho =
      seg52BlindDeltaY127 rho + rho 52068 := by
    unfold seg52BlindDeltaY128 seg52BlindDeltaY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 127]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 128
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX127 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY127 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX128 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY128 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung128_wide (rho 51178) (rho 51306) (seg52BlindDeltaX127 rho) (seg52BlindDeltaY127 rho) (rho 52064) (rho 52065) (rho 52066) (rho 52067) (rho 52068) hacc
  · unfold seg52BlindDeltaX127 seg52BlindDeltaY127
    linear_combination r7676
  · unfold seg52BlindDeltaX127 seg52BlindDeltaY127
    linear_combination r7677
  · unfold seg52BlindDeltaX127 seg52BlindDeltaY127
    linear_combination r7678
  · unfold seg52BlindDeltaX127
    linear_combination r7679
  · unfold seg52BlindDeltaY127
    linear_combination r7680
  · linear_combination r6917

theorem seg52Blind_rows129 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6918 rho ∧ Seg52.relationRow7681 rho ∧ Seg52.relationRow7682 rho ∧ Seg52.relationRow7683 rho ∧ Seg52.relationRow7684 rho ∧ Seg52.relationRow7685 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6918, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, r7681, r7682, r7683, r7684, r7685, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6918, r7681, r7682, r7683, r7684, r7685⟩

theorem seg52Blind_rung129 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51307 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 129)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      129 (Bool.toZMod bit) (seg52BlindAccState rho 129)
      (seg52BlindAccState rho 130) := by
  obtain ⟨r6918, r7681, r7682, r7683, r7684, r7685⟩ := seg52Blind_rows129 rho h
  unfold Seg52.relationRow6918 at r6918

  unfold Seg52.relationRow7681 at r7681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7681

  unfold Seg52.relationRow7682 at r7682

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7682

  unfold Seg52.relationRow7683 at r7683

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7683

  unfold Seg52.relationRow7684 at r7684

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7684

  unfold Seg52.relationRow7685 at r7685

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7685

  have hnextx : seg52BlindDeltaX129 rho =
      seg52BlindDeltaX128 rho + rho 52072 := by
    unfold seg52BlindDeltaX129 seg52BlindDeltaX128
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 128]

    ring

  have hnexty : seg52BlindDeltaY129 rho =
      seg52BlindDeltaY128 rho + rho 52073 := by
    unfold seg52BlindDeltaY129 seg52BlindDeltaY128
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 128]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 129
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX128 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY128 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX129 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY129 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung129_wide (rho 51178) (rho 51307) (seg52BlindDeltaX128 rho) (seg52BlindDeltaY128 rho) (rho 52069) (rho 52070) (rho 52071) (rho 52072) (rho 52073) hacc
  · unfold seg52BlindDeltaX128 seg52BlindDeltaY128
    linear_combination r7681
  · unfold seg52BlindDeltaX128 seg52BlindDeltaY128
    linear_combination r7682
  · unfold seg52BlindDeltaX128 seg52BlindDeltaY128
    linear_combination r7683
  · unfold seg52BlindDeltaX128
    linear_combination r7684
  · unfold seg52BlindDeltaY128
    linear_combination r7685
  · linear_combination r6918

theorem seg52Blind_rows130 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6919 rho ∧ Seg52.relationRow7686 rho ∧ Seg52.relationRow7687 rho ∧ Seg52.relationRow7688 rho ∧ Seg52.relationRow7689 rho ∧ Seg52.relationRow7690 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6919, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, r7686, r7687, r7688, r7689, r7690, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6919, r7686, r7687, r7688, r7689, r7690⟩

theorem seg52Blind_rung130 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51308 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 130)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      130 (Bool.toZMod bit) (seg52BlindAccState rho 130)
      (seg52BlindAccState rho 131) := by
  obtain ⟨r6919, r7686, r7687, r7688, r7689, r7690⟩ := seg52Blind_rows130 rho h
  unfold Seg52.relationRow6919 at r6919

  unfold Seg52.relationRow7686 at r7686

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7686

  unfold Seg52.relationRow7687 at r7687

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7687

  unfold Seg52.relationRow7688 at r7688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7688

  unfold Seg52.relationRow7689 at r7689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7689

  unfold Seg52.relationRow7690 at r7690

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7690

  have hnextx : seg52BlindDeltaX130 rho =
      seg52BlindDeltaX129 rho + rho 52077 := by
    unfold seg52BlindDeltaX130 seg52BlindDeltaX129
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 129]

    ring

  have hnexty : seg52BlindDeltaY130 rho =
      seg52BlindDeltaY129 rho + rho 52078 := by
    unfold seg52BlindDeltaY130 seg52BlindDeltaY129
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 129]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 130
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX129 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY129 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX130 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY130 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung130_wide (rho 51178) (rho 51308) (seg52BlindDeltaX129 rho) (seg52BlindDeltaY129 rho) (rho 52074) (rho 52075) (rho 52076) (rho 52077) (rho 52078) hacc
  · unfold seg52BlindDeltaX129 seg52BlindDeltaY129
    linear_combination r7686
  · unfold seg52BlindDeltaX129 seg52BlindDeltaY129
    linear_combination r7687
  · unfold seg52BlindDeltaX129 seg52BlindDeltaY129
    linear_combination r7688
  · unfold seg52BlindDeltaX129
    linear_combination r7689
  · unfold seg52BlindDeltaY129
    linear_combination r7690
  · linear_combination r6919

theorem seg52Blind_hstep_c12 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
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

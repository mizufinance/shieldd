import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows141 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6930 rho ∧ Seg52.relationRow7741 rho ∧ Seg52.relationRow7742 rho ∧ Seg52.relationRow7743 rho ∧ Seg52.relationRow7744 rho ∧ Seg52.relationRow7745 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6930, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7741, r7742, r7743, r7744, r7745, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6930, r7741, r7742, r7743, r7744, r7745⟩

theorem seg52Blind_rung141 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51319 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 141)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      141 (Bool.toZMod bit) (seg52BlindAccState rho 141)
      (seg52BlindAccState rho 142) := by
  obtain ⟨r6930, r7741, r7742, r7743, r7744, r7745⟩ := seg52Blind_rows141 rho h
  unfold Seg52.relationRow6930 at r6930

  unfold Seg52.relationRow7741 at r7741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7741

  unfold Seg52.relationRow7742 at r7742

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7742

  unfold Seg52.relationRow7743 at r7743

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7743

  unfold Seg52.relationRow7744 at r7744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7744

  unfold Seg52.relationRow7745 at r7745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7745

  have hnextx : seg52BlindDeltaX141 rho =
      seg52BlindDeltaX140 rho + rho 52132 := by
    unfold seg52BlindDeltaX141 seg52BlindDeltaX140
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 140]

    ring

  have hnexty : seg52BlindDeltaY141 rho =
      seg52BlindDeltaY140 rho + rho 52133 := by
    unfold seg52BlindDeltaY141 seg52BlindDeltaY140
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 140]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 141
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX140 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY140 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX141 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY141 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung141_wide (rho 51178) (rho 51319) (seg52BlindDeltaX140 rho) (seg52BlindDeltaY140 rho) (rho 52129) (rho 52130) (rho 52131) (rho 52132) (rho 52133) hacc
  · unfold seg52BlindDeltaX140 seg52BlindDeltaY140
    linear_combination r7741
  · unfold seg52BlindDeltaX140 seg52BlindDeltaY140
    linear_combination r7742
  · unfold seg52BlindDeltaX140 seg52BlindDeltaY140
    linear_combination r7743
  · unfold seg52BlindDeltaX140
    linear_combination r7744
  · unfold seg52BlindDeltaY140
    linear_combination r7745
  · linear_combination r6930

theorem seg52Blind_rows142 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6931 rho ∧ Seg52.relationRow7746 rho ∧ Seg52.relationRow7747 rho ∧ Seg52.relationRow7748 rho ∧ Seg52.relationRow7749 rho ∧ Seg52.relationRow7750 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6931, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7746, r7747, r7748, r7749, r7750, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6931, r7746, r7747, r7748, r7749, r7750⟩

theorem seg52Blind_rung142 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51320 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 142)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      142 (Bool.toZMod bit) (seg52BlindAccState rho 142)
      (seg52BlindAccState rho 143) := by
  obtain ⟨r6931, r7746, r7747, r7748, r7749, r7750⟩ := seg52Blind_rows142 rho h
  unfold Seg52.relationRow6931 at r6931

  unfold Seg52.relationRow7746 at r7746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7746

  unfold Seg52.relationRow7747 at r7747

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7747

  unfold Seg52.relationRow7748 at r7748

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7748

  unfold Seg52.relationRow7749 at r7749

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7749

  unfold Seg52.relationRow7750 at r7750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7750

  have hnextx : seg52BlindDeltaX142 rho =
      seg52BlindDeltaX141 rho + rho 52137 := by
    unfold seg52BlindDeltaX142 seg52BlindDeltaX141
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 141]

    ring

  have hnexty : seg52BlindDeltaY142 rho =
      seg52BlindDeltaY141 rho + rho 52138 := by
    unfold seg52BlindDeltaY142 seg52BlindDeltaY141
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 141]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 142
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX141 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY141 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX142 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY142 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung142_wide (rho 51178) (rho 51320) (seg52BlindDeltaX141 rho) (seg52BlindDeltaY141 rho) (rho 52134) (rho 52135) (rho 52136) (rho 52137) (rho 52138) hacc
  · unfold seg52BlindDeltaX141 seg52BlindDeltaY141
    linear_combination r7746
  · unfold seg52BlindDeltaX141 seg52BlindDeltaY141
    linear_combination r7747
  · unfold seg52BlindDeltaX141 seg52BlindDeltaY141
    linear_combination r7748
  · unfold seg52BlindDeltaX141
    linear_combination r7749
  · unfold seg52BlindDeltaY141
    linear_combination r7750
  · linear_combination r6931

theorem seg52Blind_rows143 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6932 rho ∧ Seg52.relationRow7751 rho ∧ Seg52.relationRow7752 rho ∧ Seg52.relationRow7753 rho ∧ Seg52.relationRow7754 rho ∧ Seg52.relationRow7755 rho := by
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

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6932, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7751, r7752, r7753, r7754, r7755, _, _, _, _⟩

  exact ⟨r6932, r7751, r7752, r7753, r7754, r7755⟩

theorem seg52Blind_rung143 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51321 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 143)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      143 (Bool.toZMod bit) (seg52BlindAccState rho 143)
      (seg52BlindAccState rho 144) := by
  obtain ⟨r6932, r7751, r7752, r7753, r7754, r7755⟩ := seg52Blind_rows143 rho h
  unfold Seg52.relationRow6932 at r6932

  unfold Seg52.relationRow7751 at r7751

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7751

  unfold Seg52.relationRow7752 at r7752

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7752

  unfold Seg52.relationRow7753 at r7753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7753

  unfold Seg52.relationRow7754 at r7754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7754

  unfold Seg52.relationRow7755 at r7755

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7755

  have hnextx : seg52BlindDeltaX143 rho =
      seg52BlindDeltaX142 rho + rho 52142 := by
    unfold seg52BlindDeltaX143 seg52BlindDeltaX142
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 142]

    ring

  have hnexty : seg52BlindDeltaY143 rho =
      seg52BlindDeltaY142 rho + rho 52143 := by
    unfold seg52BlindDeltaY143 seg52BlindDeltaY142
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 142]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 143
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX142 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY142 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX143 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY143 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung143_wide (rho 51178) (rho 51321) (seg52BlindDeltaX142 rho) (seg52BlindDeltaY142 rho) (rho 52139) (rho 52140) (rho 52141) (rho 52142) (rho 52143) hacc
  · unfold seg52BlindDeltaX142 seg52BlindDeltaY142
    linear_combination r7751
  · unfold seg52BlindDeltaX142 seg52BlindDeltaY142
    linear_combination r7752
  · unfold seg52BlindDeltaX142 seg52BlindDeltaY142
    linear_combination r7753
  · unfold seg52BlindDeltaX142
    linear_combination r7754
  · unfold seg52BlindDeltaY142
    linear_combination r7755
  · linear_combination r6932

theorem seg52Blind_rows144 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6933 rho ∧ Seg52.relationRow7756 rho ∧ Seg52.relationRow7757 rho ∧ Seg52.relationRow7758 rho ∧ Seg52.relationRow7759 rho ∧ Seg52.relationRow7760 rho := by
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

    _, _, _, _, _, _, p96, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6933, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7756, r7757, r7758, r7759⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨r7760, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6933, r7756, r7757, r7758, r7759, r7760⟩

theorem seg52Blind_rung144 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51322 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 144)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      144 (Bool.toZMod bit) (seg52BlindAccState rho 144)
      (seg52BlindAccState rho 145) := by
  obtain ⟨r6933, r7756, r7757, r7758, r7759, r7760⟩ := seg52Blind_rows144 rho h
  unfold Seg52.relationRow6933 at r6933

  unfold Seg52.relationRow7756 at r7756

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7756

  unfold Seg52.relationRow7757 at r7757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7757

  unfold Seg52.relationRow7758 at r7758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7758

  unfold Seg52.relationRow7759 at r7759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7759

  unfold Seg52.relationRow7760 at r7760

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7760

  have hnextx : seg52BlindDeltaX144 rho =
      seg52BlindDeltaX143 rho + rho 52147 := by
    unfold seg52BlindDeltaX144 seg52BlindDeltaX143
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 143]

    ring

  have hnexty : seg52BlindDeltaY144 rho =
      seg52BlindDeltaY143 rho + rho 52148 := by
    unfold seg52BlindDeltaY144 seg52BlindDeltaY143
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 143]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 144
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX143 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY143 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX144 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY144 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung144_wide (rho 51178) (rho 51322) (seg52BlindDeltaX143 rho) (seg52BlindDeltaY143 rho) (rho 52144) (rho 52145) (rho 52146) (rho 52147) (rho 52148) hacc
  · unfold seg52BlindDeltaX143 seg52BlindDeltaY143
    linear_combination r7756
  · unfold seg52BlindDeltaX143 seg52BlindDeltaY143
    linear_combination r7757
  · unfold seg52BlindDeltaX143 seg52BlindDeltaY143
    linear_combination r7758
  · unfold seg52BlindDeltaX143
    linear_combination r7759
  · unfold seg52BlindDeltaY143
    linear_combination r7760
  · linear_combination r6933

theorem seg52Blind_rows145 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6934 rho ∧ Seg52.relationRow7761 rho ∧ Seg52.relationRow7762 rho ∧ Seg52.relationRow7763 rho ∧ Seg52.relationRow7764 rho ∧ Seg52.relationRow7765 rho := by
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

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, r7761, r7762, r7763, r7764, r7765, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6934, r7761, r7762, r7763, r7764, r7765⟩

theorem seg52Blind_rung145 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51323 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 145)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      145 (Bool.toZMod bit) (seg52BlindAccState rho 145)
      (seg52BlindAccState rho 146) := by
  obtain ⟨r6934, r7761, r7762, r7763, r7764, r7765⟩ := seg52Blind_rows145 rho h
  unfold Seg52.relationRow6934 at r6934

  unfold Seg52.relationRow7761 at r7761

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7761

  unfold Seg52.relationRow7762 at r7762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7762

  unfold Seg52.relationRow7763 at r7763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7763

  unfold Seg52.relationRow7764 at r7764

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7764

  unfold Seg52.relationRow7765 at r7765

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7765

  have hnextx : seg52BlindDeltaX145 rho =
      seg52BlindDeltaX144 rho + rho 52152 := by
    unfold seg52BlindDeltaX145 seg52BlindDeltaX144
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 144]

    ring

  have hnexty : seg52BlindDeltaY145 rho =
      seg52BlindDeltaY144 rho + rho 52153 := by
    unfold seg52BlindDeltaY145 seg52BlindDeltaY144
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 144]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 145
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX144 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY144 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX145 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY145 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung145_wide (rho 51178) (rho 51323) (seg52BlindDeltaX144 rho) (seg52BlindDeltaY144 rho) (rho 52149) (rho 52150) (rho 52151) (rho 52152) (rho 52153) hacc
  · unfold seg52BlindDeltaX144 seg52BlindDeltaY144
    linear_combination r7761
  · unfold seg52BlindDeltaX144 seg52BlindDeltaY144
    linear_combination r7762
  · unfold seg52BlindDeltaX144 seg52BlindDeltaY144
    linear_combination r7763
  · unfold seg52BlindDeltaX144
    linear_combination r7764
  · unfold seg52BlindDeltaY144
    linear_combination r7765
  · linear_combination r6934

theorem seg52Blind_rows146 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6935 rho ∧ Seg52.relationRow7766 rho ∧ Seg52.relationRow7767 rho ∧ Seg52.relationRow7768 rho ∧ Seg52.relationRow7769 rho ∧ Seg52.relationRow7770 rho := by
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

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6935, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, r7766, r7767, r7768, r7769, r7770, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6935, r7766, r7767, r7768, r7769, r7770⟩

theorem seg52Blind_rung146 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51324 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 146)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      146 (Bool.toZMod bit) (seg52BlindAccState rho 146)
      (seg52BlindAccState rho 147) := by
  obtain ⟨r6935, r7766, r7767, r7768, r7769, r7770⟩ := seg52Blind_rows146 rho h
  unfold Seg52.relationRow6935 at r6935

  unfold Seg52.relationRow7766 at r7766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7766

  unfold Seg52.relationRow7767 at r7767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7767

  unfold Seg52.relationRow7768 at r7768

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7768

  unfold Seg52.relationRow7769 at r7769

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7769

  unfold Seg52.relationRow7770 at r7770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7770

  have hnextx : seg52BlindDeltaX146 rho =
      seg52BlindDeltaX145 rho + rho 52157 := by
    unfold seg52BlindDeltaX146 seg52BlindDeltaX145
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 145]

    ring

  have hnexty : seg52BlindDeltaY146 rho =
      seg52BlindDeltaY145 rho + rho 52158 := by
    unfold seg52BlindDeltaY146 seg52BlindDeltaY145
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 145]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 146
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX145 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY145 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX146 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY146 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung146_wide (rho 51178) (rho 51324) (seg52BlindDeltaX145 rho) (seg52BlindDeltaY145 rho) (rho 52154) (rho 52155) (rho 52156) (rho 52157) (rho 52158) hacc
  · unfold seg52BlindDeltaX145 seg52BlindDeltaY145
    linear_combination r7766
  · unfold seg52BlindDeltaX145 seg52BlindDeltaY145
    linear_combination r7767
  · unfold seg52BlindDeltaX145 seg52BlindDeltaY145
    linear_combination r7768
  · unfold seg52BlindDeltaX145
    linear_combination r7769
  · unfold seg52BlindDeltaY145
    linear_combination r7770
  · linear_combination r6935

theorem seg52Blind_rows147 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6936 rho ∧ Seg52.relationRow7771 rho ∧ Seg52.relationRow7772 rho ∧ Seg52.relationRow7773 rho ∧ Seg52.relationRow7774 rho ∧ Seg52.relationRow7775 rho := by
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

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7771, r7772, r7773, r7774, r7775, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6936, r7771, r7772, r7773, r7774, r7775⟩

theorem seg52Blind_rung147 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51325 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 147)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      147 (Bool.toZMod bit) (seg52BlindAccState rho 147)
      (seg52BlindAccState rho 148) := by
  obtain ⟨r6936, r7771, r7772, r7773, r7774, r7775⟩ := seg52Blind_rows147 rho h
  unfold Seg52.relationRow6936 at r6936

  unfold Seg52.relationRow7771 at r7771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7771

  unfold Seg52.relationRow7772 at r7772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7772

  unfold Seg52.relationRow7773 at r7773

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7773

  unfold Seg52.relationRow7774 at r7774

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7774

  unfold Seg52.relationRow7775 at r7775

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7775

  have hnextx : seg52BlindDeltaX147 rho =
      seg52BlindDeltaX146 rho + rho 52162 := by
    unfold seg52BlindDeltaX147 seg52BlindDeltaX146
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 146]

    ring

  have hnexty : seg52BlindDeltaY147 rho =
      seg52BlindDeltaY146 rho + rho 52163 := by
    unfold seg52BlindDeltaY147 seg52BlindDeltaY146
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 146]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 147
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX146 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY146 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX147 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY147 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung147_wide (rho 51178) (rho 51325) (seg52BlindDeltaX146 rho) (seg52BlindDeltaY146 rho) (rho 52159) (rho 52160) (rho 52161) (rho 52162) (rho 52163) hacc
  · unfold seg52BlindDeltaX146 seg52BlindDeltaY146
    linear_combination r7771
  · unfold seg52BlindDeltaX146 seg52BlindDeltaY146
    linear_combination r7772
  · unfold seg52BlindDeltaX146 seg52BlindDeltaY146
    linear_combination r7773
  · unfold seg52BlindDeltaX146
    linear_combination r7774
  · unfold seg52BlindDeltaY146
    linear_combination r7775
  · linear_combination r6936

theorem seg52Blind_rows148 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6937 rho ∧ Seg52.relationRow7776 rho ∧ Seg52.relationRow7777 rho ∧ Seg52.relationRow7778 rho ∧ Seg52.relationRow7779 rho ∧ Seg52.relationRow7780 rho := by
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

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7776, r7777, r7778, r7779, r7780, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6937, r7776, r7777, r7778, r7779, r7780⟩

theorem seg52Blind_rung148 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51326 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 148)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      148 (Bool.toZMod bit) (seg52BlindAccState rho 148)
      (seg52BlindAccState rho 149) := by
  obtain ⟨r6937, r7776, r7777, r7778, r7779, r7780⟩ := seg52Blind_rows148 rho h
  unfold Seg52.relationRow6937 at r6937

  unfold Seg52.relationRow7776 at r7776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7776

  unfold Seg52.relationRow7777 at r7777

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7777

  unfold Seg52.relationRow7778 at r7778

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7778

  unfold Seg52.relationRow7779 at r7779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7779

  unfold Seg52.relationRow7780 at r7780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7780

  have hnextx : seg52BlindDeltaX148 rho =
      seg52BlindDeltaX147 rho + rho 52167 := by
    unfold seg52BlindDeltaX148 seg52BlindDeltaX147
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 147]

    ring

  have hnexty : seg52BlindDeltaY148 rho =
      seg52BlindDeltaY147 rho + rho 52168 := by
    unfold seg52BlindDeltaY148 seg52BlindDeltaY147
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 147]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 148
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX147 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY147 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX148 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY148 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung148_wide (rho 51178) (rho 51326) (seg52BlindDeltaX147 rho) (seg52BlindDeltaY147 rho) (rho 52164) (rho 52165) (rho 52166) (rho 52167) (rho 52168) hacc
  · unfold seg52BlindDeltaX147 seg52BlindDeltaY147
    linear_combination r7776
  · unfold seg52BlindDeltaX147 seg52BlindDeltaY147
    linear_combination r7777
  · unfold seg52BlindDeltaX147 seg52BlindDeltaY147
    linear_combination r7778
  · unfold seg52BlindDeltaX147
    linear_combination r7779
  · unfold seg52BlindDeltaY147
    linear_combination r7780
  · linear_combination r6937

theorem seg52Blind_rows149 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6938 rho ∧ Seg52.relationRow7781 rho ∧ Seg52.relationRow7782 rho ∧ Seg52.relationRow7783 rho ∧ Seg52.relationRow7784 rho ∧ Seg52.relationRow7785 rho := by
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

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6938, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7781, r7782, r7783, r7784, r7785, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6938, r7781, r7782, r7783, r7784, r7785⟩

theorem seg52Blind_rung149 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51327 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 149)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      149 (Bool.toZMod bit) (seg52BlindAccState rho 149)
      (seg52BlindAccState rho 150) := by
  obtain ⟨r6938, r7781, r7782, r7783, r7784, r7785⟩ := seg52Blind_rows149 rho h
  unfold Seg52.relationRow6938 at r6938

  unfold Seg52.relationRow7781 at r7781

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7781

  unfold Seg52.relationRow7782 at r7782

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7782

  unfold Seg52.relationRow7783 at r7783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7783

  unfold Seg52.relationRow7784 at r7784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7784

  unfold Seg52.relationRow7785 at r7785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7785

  have hnextx : seg52BlindDeltaX149 rho =
      seg52BlindDeltaX148 rho + rho 52172 := by
    unfold seg52BlindDeltaX149 seg52BlindDeltaX148
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51432 5 148]

    ring

  have hnexty : seg52BlindDeltaY149 rho =
      seg52BlindDeltaY148 rho + rho 52173 := by
    unfold seg52BlindDeltaY149 seg52BlindDeltaY148
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 51433 5 148]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 149
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX148 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY148 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX149 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY149 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung149_wide (rho 51178) (rho 51327) (seg52BlindDeltaX148 rho) (seg52BlindDeltaY148 rho) (rho 52169) (rho 52170) (rho 52171) (rho 52172) (rho 52173) hacc
  · unfold seg52BlindDeltaX148 seg52BlindDeltaY148
    linear_combination r7781
  · unfold seg52BlindDeltaX148 seg52BlindDeltaY148
    linear_combination r7782
  · unfold seg52BlindDeltaX148 seg52BlindDeltaY148
    linear_combination r7783
  · unfold seg52BlindDeltaX148
    linear_combination r7784
  · unfold seg52BlindDeltaY148
    linear_combination r7785
  · linear_combination r6938

theorem seg52Blind_rows150 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6939 rho ∧ Seg52.relationRow7786 rho ∧ Seg52.relationRow7787 rho ∧ Seg52.relationRow7788 rho ∧ Seg52.relationRow7789 rho ∧ Seg52.relationRow7790 rho ∧ Seg52.relationRow7791 rho ∧ Seg52.relationRow7792 rho ∧ Seg52.relationRow7793 rho := by
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

    _, _, _, _, _, _, _, p97, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6939, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7786, r7787, r7788, r7789, r7790, r7791, r7792, r7793, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6939, r7786, r7787, r7788, r7789, r7790, r7791, r7792, r7793⟩

theorem seg52Blind_rung150 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51328 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 150)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      150 (Bool.toZMod bit) (seg52BlindAccState rho 150)
      (seg52BlindAccState rho 151) := by
  obtain ⟨r6939, r7786, r7787, r7788, r7789, r7790, r7791, r7792, r7793⟩ := seg52Blind_rows150 rho h
  unfold Seg52.relationRow6939 at r6939

  unfold Seg52.relationRow7786 at r7786

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7786

  unfold Seg52.relationRow7787 at r7787

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7787

  unfold Seg52.relationRow7788 at r7788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7788

  unfold Seg52.relationRow7789 at r7789

  unfold Seg52.relationRow7790 at r7790

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7790

  unfold Seg52.relationRow7791 at r7791

  unfold Seg52.relationRow7792 at r7792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7792

  unfold Seg52.relationRow7793 at r7793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7793

  have hnextx : seg52BlindDeltaX150 rho =
      seg52BlindDeltaX149 rho + rho 52180 := by
    unfold seg52BlindDeltaX150 seg52BlindDeltaX149
    ring

  have hnexty : seg52BlindDeltaY150 rho =
      seg52BlindDeltaY149 rho + rho 52181 := by
    unfold seg52BlindDeltaY150 seg52BlindDeltaY149
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 150
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX149 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY149 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX150 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY150 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY149 rho) (rho 52181)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 150)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7868758121497751340208737127760862170304367533794900100080662008177780307253 : Seg52.F) (2189559325092424109491349279187113818206609874948979374114924904743857200993 : Seg52.F)
    (1613855697161805025451261468166429457135078073589815646260353457004228269205 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2645171301799192586536245358319910734839252795234711927900341247861170030750 : Seg52.F) (4189255197022180768636901000763825229828366975462594921711874705377393462042 : Seg52.F)
    (5342522809091263807831683907005673064454098137889293612326091254709019033459 : Seg52.F) (4343208657784301069959309717305894900600161165029415341727249247918865073143 : Seg52.F)
    (6254902424335946314757475659594432713169289460205084453820308551173552038048 : Seg52.F) (575703627930619084040087811020684361071531801359163727854571447739628931788 : Seg52.F)
    (4101253091644069354289515221475651630775738170124648486207984207998544165898 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX149 rho) (seg52BlindDeltaY149 rho) (rho 51328)
    (rho 52174) (rho 52175) (rho 52176) (rho 52178)
    (rho 52177) (rho 52179) (rho 52180) (rho 52181) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 150)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L150]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX149 seg52BlindDeltaY149;
        first | linear_combination r7786 | linear_combination -r7786)
    (by unfold seg52BlindDeltaX149 seg52BlindDeltaY149;
        first | linear_combination r7787 | linear_combination -r7787)
    (by unfold seg52BlindDeltaX149 seg52BlindDeltaY149;
        first | linear_combination r7788 | linear_combination -r7788)
    (by first | linear_combination r7789 | linear_combination -r7789)
    (by unfold seg52BlindDeltaX149 seg52BlindDeltaY149;
        first | linear_combination r7790 | linear_combination -r7790)
    (by first | linear_combination r7791 | linear_combination -r7791)
    (by unfold seg52BlindDeltaX149; first | linear_combination r7792 | linear_combination -r7792)
    (by unfold seg52BlindDeltaY149; first | linear_combination r7793 | linear_combination -r7793)
    (by linear_combination r6939)

theorem seg52Blind_hstep_c14 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
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

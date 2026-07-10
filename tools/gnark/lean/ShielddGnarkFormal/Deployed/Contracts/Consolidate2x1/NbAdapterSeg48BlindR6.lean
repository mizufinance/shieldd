import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows61 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6210 rho ∧ Seg48.relationRow6701 rho ∧ Seg48.relationRow6702 rho ∧ Seg48.relationRow6703 rho ∧ Seg48.relationRow6704 rho ∧ Seg48.relationRow6705 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6210, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6701, r6702, r6703, r6704, r6705, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6210, r6701, r6702, r6703, r6704, r6705⟩

theorem seg48Blind_rung61 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38967 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 61)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      61 (Bool.toZMod bit) (seg48BlindAccState rho 61)
      (seg48BlindAccState rho 62) := by
  obtain ⟨r6210, r6701, r6702, r6703, r6704, r6705⟩ := seg48Blind_rows61 rho h
  unfold Seg48.relationRow6210 at r6210

  unfold Seg48.relationRow6701 at r6701

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6701

  unfold Seg48.relationRow6702 at r6702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6702

  unfold Seg48.relationRow6703 at r6703

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6703

  unfold Seg48.relationRow6704 at r6704

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6704

  unfold Seg48.relationRow6705 at r6705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6705

  have hnextx : seg48BlindDeltaX61 rho =
      seg48BlindDeltaX60 rho + rho 39460 := by
    unfold seg48BlindDeltaX61 seg48BlindDeltaX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 60]

    ring

  have hnexty : seg48BlindDeltaY61 rho =
      seg48BlindDeltaY60 rho + rho 39461 := by
    unfold seg48BlindDeltaY61 seg48BlindDeltaY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 60]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 61
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX60 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY60 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX61 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY61 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung61_wide (rho 38906) (rho 38967) (seg48BlindDeltaX60 rho) (seg48BlindDeltaY60 rho) (rho 39457) (rho 39458) (rho 39459) (rho 39460) (rho 39461) hacc
  · unfold seg48BlindDeltaX60 seg48BlindDeltaY60
    linear_combination r6701
  · unfold seg48BlindDeltaX60 seg48BlindDeltaY60
    linear_combination r6702
  · unfold seg48BlindDeltaX60 seg48BlindDeltaY60
    linear_combination r6703
  · unfold seg48BlindDeltaX60
    linear_combination r6704
  · unfold seg48BlindDeltaY60
    linear_combination r6705
  · linear_combination r6210

theorem seg48Blind_rows62 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6211 rho ∧ Seg48.relationRow6706 rho ∧ Seg48.relationRow6707 rho ∧ Seg48.relationRow6708 rho ∧ Seg48.relationRow6709 rho ∧ Seg48.relationRow6710 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6706, r6707, r6708, r6709, r6710, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6211, r6706, r6707, r6708, r6709, r6710⟩

theorem seg48Blind_rung62 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38968 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 62)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      62 (Bool.toZMod bit) (seg48BlindAccState rho 62)
      (seg48BlindAccState rho 63) := by
  obtain ⟨r6211, r6706, r6707, r6708, r6709, r6710⟩ := seg48Blind_rows62 rho h
  unfold Seg48.relationRow6211 at r6211

  unfold Seg48.relationRow6706 at r6706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6706

  unfold Seg48.relationRow6707 at r6707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6707

  unfold Seg48.relationRow6708 at r6708

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6708

  unfold Seg48.relationRow6709 at r6709

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6709

  unfold Seg48.relationRow6710 at r6710

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6710

  have hnextx : seg48BlindDeltaX62 rho =
      seg48BlindDeltaX61 rho + rho 39465 := by
    unfold seg48BlindDeltaX62 seg48BlindDeltaX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 61]

    ring

  have hnexty : seg48BlindDeltaY62 rho =
      seg48BlindDeltaY61 rho + rho 39466 := by
    unfold seg48BlindDeltaY62 seg48BlindDeltaY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 61]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 62
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX61 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY61 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX62 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY62 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung62_wide (rho 38906) (rho 38968) (seg48BlindDeltaX61 rho) (seg48BlindDeltaY61 rho) (rho 39462) (rho 39463) (rho 39464) (rho 39465) (rho 39466) hacc
  · unfold seg48BlindDeltaX61 seg48BlindDeltaY61
    linear_combination r6706
  · unfold seg48BlindDeltaX61 seg48BlindDeltaY61
    linear_combination r6707
  · unfold seg48BlindDeltaX61 seg48BlindDeltaY61
    linear_combination r6708
  · unfold seg48BlindDeltaX61
    linear_combination r6709
  · unfold seg48BlindDeltaY61
    linear_combination r6710
  · linear_combination r6211

theorem seg48Blind_rows63 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6212 rho ∧ Seg48.relationRow6711 rho ∧ Seg48.relationRow6712 rho ∧ Seg48.relationRow6713 rho ∧ Seg48.relationRow6714 rho ∧ Seg48.relationRow6715 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6212, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6711, r6712, r6713, r6714, r6715, _, _, _, _⟩

  exact ⟨r6212, r6711, r6712, r6713, r6714, r6715⟩

theorem seg48Blind_rung63 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38969 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 63)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      63 (Bool.toZMod bit) (seg48BlindAccState rho 63)
      (seg48BlindAccState rho 64) := by
  obtain ⟨r6212, r6711, r6712, r6713, r6714, r6715⟩ := seg48Blind_rows63 rho h
  unfold Seg48.relationRow6212 at r6212

  unfold Seg48.relationRow6711 at r6711

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6711

  unfold Seg48.relationRow6712 at r6712

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6712

  unfold Seg48.relationRow6713 at r6713

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6713

  unfold Seg48.relationRow6714 at r6714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6714

  unfold Seg48.relationRow6715 at r6715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6715

  have hnextx : seg48BlindDeltaX63 rho =
      seg48BlindDeltaX62 rho + rho 39470 := by
    unfold seg48BlindDeltaX63 seg48BlindDeltaX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 62]

    ring

  have hnexty : seg48BlindDeltaY63 rho =
      seg48BlindDeltaY62 rho + rho 39471 := by
    unfold seg48BlindDeltaY63 seg48BlindDeltaY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 62]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 63
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX62 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY62 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX63 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY63 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung63_wide (rho 38906) (rho 38969) (seg48BlindDeltaX62 rho) (seg48BlindDeltaY62 rho) (rho 39467) (rho 39468) (rho 39469) (rho 39470) (rho 39471) hacc
  · unfold seg48BlindDeltaX62 seg48BlindDeltaY62
    linear_combination r6711
  · unfold seg48BlindDeltaX62 seg48BlindDeltaY62
    linear_combination r6712
  · unfold seg48BlindDeltaX62 seg48BlindDeltaY62
    linear_combination r6713
  · unfold seg48BlindDeltaX62
    linear_combination r6714
  · unfold seg48BlindDeltaY62
    linear_combination r6715
  · linear_combination r6212

theorem seg48Blind_rows64 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6213 rho ∧ Seg48.relationRow6716 rho ∧ Seg48.relationRow6717 rho ∧ Seg48.relationRow6718 rho ∧ Seg48.relationRow6719 rho ∧ Seg48.relationRow6720 rho := by
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

    _, _, _, p83, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6213, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6716, r6717, r6718, r6719⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨r6720, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6213, r6716, r6717, r6718, r6719, r6720⟩

theorem seg48Blind_rung64 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38970 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 64)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      64 (Bool.toZMod bit) (seg48BlindAccState rho 64)
      (seg48BlindAccState rho 65) := by
  obtain ⟨r6213, r6716, r6717, r6718, r6719, r6720⟩ := seg48Blind_rows64 rho h
  unfold Seg48.relationRow6213 at r6213

  unfold Seg48.relationRow6716 at r6716

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6716

  unfold Seg48.relationRow6717 at r6717

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6717

  unfold Seg48.relationRow6718 at r6718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6718

  unfold Seg48.relationRow6719 at r6719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6719

  unfold Seg48.relationRow6720 at r6720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6720

  have hnextx : seg48BlindDeltaX64 rho =
      seg48BlindDeltaX63 rho + rho 39475 := by
    unfold seg48BlindDeltaX64 seg48BlindDeltaX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 63]

    ring

  have hnexty : seg48BlindDeltaY64 rho =
      seg48BlindDeltaY63 rho + rho 39476 := by
    unfold seg48BlindDeltaY64 seg48BlindDeltaY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 63]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 64
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX63 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY63 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX64 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY64 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung64_wide (rho 38906) (rho 38970) (seg48BlindDeltaX63 rho) (seg48BlindDeltaY63 rho) (rho 39472) (rho 39473) (rho 39474) (rho 39475) (rho 39476) hacc
  · unfold seg48BlindDeltaX63 seg48BlindDeltaY63
    linear_combination r6716
  · unfold seg48BlindDeltaX63 seg48BlindDeltaY63
    linear_combination r6717
  · unfold seg48BlindDeltaX63 seg48BlindDeltaY63
    linear_combination r6718
  · unfold seg48BlindDeltaX63
    linear_combination r6719
  · unfold seg48BlindDeltaY63
    linear_combination r6720
  · linear_combination r6213

theorem seg48Blind_rows65 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6214 rho ∧ Seg48.relationRow6721 rho ∧ Seg48.relationRow6722 rho ∧ Seg48.relationRow6723 rho ∧ Seg48.relationRow6724 rho ∧ Seg48.relationRow6725 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, r6721, r6722, r6723, r6724, r6725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6214, r6721, r6722, r6723, r6724, r6725⟩

theorem seg48Blind_rung65 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38971 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 65)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      65 (Bool.toZMod bit) (seg48BlindAccState rho 65)
      (seg48BlindAccState rho 66) := by
  obtain ⟨r6214, r6721, r6722, r6723, r6724, r6725⟩ := seg48Blind_rows65 rho h
  unfold Seg48.relationRow6214 at r6214

  unfold Seg48.relationRow6721 at r6721

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6721

  unfold Seg48.relationRow6722 at r6722

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6722

  unfold Seg48.relationRow6723 at r6723

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6723

  unfold Seg48.relationRow6724 at r6724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6724

  unfold Seg48.relationRow6725 at r6725

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6725

  have hnextx : seg48BlindDeltaX65 rho =
      seg48BlindDeltaX64 rho + rho 39480 := by
    unfold seg48BlindDeltaX65 seg48BlindDeltaX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 64]

    ring

  have hnexty : seg48BlindDeltaY65 rho =
      seg48BlindDeltaY64 rho + rho 39481 := by
    unfold seg48BlindDeltaY65 seg48BlindDeltaY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 64]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 65
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX64 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY64 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX65 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY65 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung65_wide (rho 38906) (rho 38971) (seg48BlindDeltaX64 rho) (seg48BlindDeltaY64 rho) (rho 39477) (rho 39478) (rho 39479) (rho 39480) (rho 39481) hacc
  · unfold seg48BlindDeltaX64 seg48BlindDeltaY64
    linear_combination r6721
  · unfold seg48BlindDeltaX64 seg48BlindDeltaY64
    linear_combination r6722
  · unfold seg48BlindDeltaX64 seg48BlindDeltaY64
    linear_combination r6723
  · unfold seg48BlindDeltaX64
    linear_combination r6724
  · unfold seg48BlindDeltaY64
    linear_combination r6725
  · linear_combination r6214

theorem seg48Blind_rows66 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6215 rho ∧ Seg48.relationRow6726 rho ∧ Seg48.relationRow6727 rho ∧ Seg48.relationRow6728 rho ∧ Seg48.relationRow6729 rho ∧ Seg48.relationRow6730 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6215, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, r6726, r6727, r6728, r6729, r6730, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6215, r6726, r6727, r6728, r6729, r6730⟩

theorem seg48Blind_rung66 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38972 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 66)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      66 (Bool.toZMod bit) (seg48BlindAccState rho 66)
      (seg48BlindAccState rho 67) := by
  obtain ⟨r6215, r6726, r6727, r6728, r6729, r6730⟩ := seg48Blind_rows66 rho h
  unfold Seg48.relationRow6215 at r6215

  unfold Seg48.relationRow6726 at r6726

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6726

  unfold Seg48.relationRow6727 at r6727

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6727

  unfold Seg48.relationRow6728 at r6728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6728

  unfold Seg48.relationRow6729 at r6729

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6729

  unfold Seg48.relationRow6730 at r6730

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6730

  have hnextx : seg48BlindDeltaX66 rho =
      seg48BlindDeltaX65 rho + rho 39485 := by
    unfold seg48BlindDeltaX66 seg48BlindDeltaX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 65]

    ring

  have hnexty : seg48BlindDeltaY66 rho =
      seg48BlindDeltaY65 rho + rho 39486 := by
    unfold seg48BlindDeltaY66 seg48BlindDeltaY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 65]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 66
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX65 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY65 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX66 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY66 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung66_wide (rho 38906) (rho 38972) (seg48BlindDeltaX65 rho) (seg48BlindDeltaY65 rho) (rho 39482) (rho 39483) (rho 39484) (rho 39485) (rho 39486) hacc
  · unfold seg48BlindDeltaX65 seg48BlindDeltaY65
    linear_combination r6726
  · unfold seg48BlindDeltaX65 seg48BlindDeltaY65
    linear_combination r6727
  · unfold seg48BlindDeltaX65 seg48BlindDeltaY65
    linear_combination r6728
  · unfold seg48BlindDeltaX65
    linear_combination r6729
  · unfold seg48BlindDeltaY65
    linear_combination r6730
  · linear_combination r6215

theorem seg48Blind_rows67 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6216 rho ∧ Seg48.relationRow6731 rho ∧ Seg48.relationRow6732 rho ∧ Seg48.relationRow6733 rho ∧ Seg48.relationRow6734 rho ∧ Seg48.relationRow6735 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6731, r6732, r6733, r6734, r6735, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6216, r6731, r6732, r6733, r6734, r6735⟩

theorem seg48Blind_rung67 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38973 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 67)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      67 (Bool.toZMod bit) (seg48BlindAccState rho 67)
      (seg48BlindAccState rho 68) := by
  obtain ⟨r6216, r6731, r6732, r6733, r6734, r6735⟩ := seg48Blind_rows67 rho h
  unfold Seg48.relationRow6216 at r6216

  unfold Seg48.relationRow6731 at r6731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6731

  unfold Seg48.relationRow6732 at r6732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6732

  unfold Seg48.relationRow6733 at r6733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6733

  unfold Seg48.relationRow6734 at r6734

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6734

  unfold Seg48.relationRow6735 at r6735

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6735

  have hnextx : seg48BlindDeltaX67 rho =
      seg48BlindDeltaX66 rho + rho 39490 := by
    unfold seg48BlindDeltaX67 seg48BlindDeltaX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 66]

    ring

  have hnexty : seg48BlindDeltaY67 rho =
      seg48BlindDeltaY66 rho + rho 39491 := by
    unfold seg48BlindDeltaY67 seg48BlindDeltaY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 66]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 67
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX66 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY66 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX67 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY67 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung67_wide (rho 38906) (rho 38973) (seg48BlindDeltaX66 rho) (seg48BlindDeltaY66 rho) (rho 39487) (rho 39488) (rho 39489) (rho 39490) (rho 39491) hacc
  · unfold seg48BlindDeltaX66 seg48BlindDeltaY66
    linear_combination r6731
  · unfold seg48BlindDeltaX66 seg48BlindDeltaY66
    linear_combination r6732
  · unfold seg48BlindDeltaX66 seg48BlindDeltaY66
    linear_combination r6733
  · unfold seg48BlindDeltaX66
    linear_combination r6734
  · unfold seg48BlindDeltaY66
    linear_combination r6735
  · linear_combination r6216

theorem seg48Blind_rows68 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6217 rho ∧ Seg48.relationRow6736 rho ∧ Seg48.relationRow6737 rho ∧ Seg48.relationRow6738 rho ∧ Seg48.relationRow6739 rho ∧ Seg48.relationRow6740 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6217, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6736, r6737, r6738, r6739, r6740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6217, r6736, r6737, r6738, r6739, r6740⟩

theorem seg48Blind_rung68 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38974 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 68)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      68 (Bool.toZMod bit) (seg48BlindAccState rho 68)
      (seg48BlindAccState rho 69) := by
  obtain ⟨r6217, r6736, r6737, r6738, r6739, r6740⟩ := seg48Blind_rows68 rho h
  unfold Seg48.relationRow6217 at r6217

  unfold Seg48.relationRow6736 at r6736

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6736

  unfold Seg48.relationRow6737 at r6737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6737

  unfold Seg48.relationRow6738 at r6738

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6738

  unfold Seg48.relationRow6739 at r6739

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6739

  unfold Seg48.relationRow6740 at r6740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6740

  have hnextx : seg48BlindDeltaX68 rho =
      seg48BlindDeltaX67 rho + rho 39495 := by
    unfold seg48BlindDeltaX68 seg48BlindDeltaX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 67]

    ring

  have hnexty : seg48BlindDeltaY68 rho =
      seg48BlindDeltaY67 rho + rho 39496 := by
    unfold seg48BlindDeltaY68 seg48BlindDeltaY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 67]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 68
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX67 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY67 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX68 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY68 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung68_wide (rho 38906) (rho 38974) (seg48BlindDeltaX67 rho) (seg48BlindDeltaY67 rho) (rho 39492) (rho 39493) (rho 39494) (rho 39495) (rho 39496) hacc
  · unfold seg48BlindDeltaX67 seg48BlindDeltaY67
    linear_combination r6736
  · unfold seg48BlindDeltaX67 seg48BlindDeltaY67
    linear_combination r6737
  · unfold seg48BlindDeltaX67 seg48BlindDeltaY67
    linear_combination r6738
  · unfold seg48BlindDeltaX67
    linear_combination r6739
  · unfold seg48BlindDeltaY67
    linear_combination r6740
  · linear_combination r6217

theorem seg48Blind_rows69 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6218 rho ∧ Seg48.relationRow6741 rho ∧ Seg48.relationRow6742 rho ∧ Seg48.relationRow6743 rho ∧ Seg48.relationRow6744 rho ∧ Seg48.relationRow6745 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6218, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6741, r6742, r6743, r6744, r6745, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6218, r6741, r6742, r6743, r6744, r6745⟩

theorem seg48Blind_rung69 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38975 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 69)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      69 (Bool.toZMod bit) (seg48BlindAccState rho 69)
      (seg48BlindAccState rho 70) := by
  obtain ⟨r6218, r6741, r6742, r6743, r6744, r6745⟩ := seg48Blind_rows69 rho h
  unfold Seg48.relationRow6218 at r6218

  unfold Seg48.relationRow6741 at r6741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6741

  unfold Seg48.relationRow6742 at r6742

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6742

  unfold Seg48.relationRow6743 at r6743

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6743

  unfold Seg48.relationRow6744 at r6744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6744

  unfold Seg48.relationRow6745 at r6745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6745

  have hnextx : seg48BlindDeltaX69 rho =
      seg48BlindDeltaX68 rho + rho 39500 := by
    unfold seg48BlindDeltaX69 seg48BlindDeltaX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 68]

    ring

  have hnexty : seg48BlindDeltaY69 rho =
      seg48BlindDeltaY68 rho + rho 39501 := by
    unfold seg48BlindDeltaY69 seg48BlindDeltaY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 68]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 69
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX68 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY68 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX69 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY69 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung69_wide (rho 38906) (rho 38975) (seg48BlindDeltaX68 rho) (seg48BlindDeltaY68 rho) (rho 39497) (rho 39498) (rho 39499) (rho 39500) (rho 39501) hacc
  · unfold seg48BlindDeltaX68 seg48BlindDeltaY68
    linear_combination r6741
  · unfold seg48BlindDeltaX68 seg48BlindDeltaY68
    linear_combination r6742
  · unfold seg48BlindDeltaX68 seg48BlindDeltaY68
    linear_combination r6743
  · unfold seg48BlindDeltaX68
    linear_combination r6744
  · unfold seg48BlindDeltaY68
    linear_combination r6745
  · linear_combination r6218

theorem seg48Blind_rows70 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6219 rho ∧ Seg48.relationRow6746 rho ∧ Seg48.relationRow6747 rho ∧ Seg48.relationRow6748 rho ∧ Seg48.relationRow6749 rho ∧ Seg48.relationRow6750 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6219, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6746, r6747, r6748, r6749, r6750, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6219, r6746, r6747, r6748, r6749, r6750⟩

theorem seg48Blind_rung70 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38976 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 70)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      70 (Bool.toZMod bit) (seg48BlindAccState rho 70)
      (seg48BlindAccState rho 71) := by
  obtain ⟨r6219, r6746, r6747, r6748, r6749, r6750⟩ := seg48Blind_rows70 rho h
  unfold Seg48.relationRow6219 at r6219

  unfold Seg48.relationRow6746 at r6746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6746

  unfold Seg48.relationRow6747 at r6747

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6747

  unfold Seg48.relationRow6748 at r6748

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6748

  unfold Seg48.relationRow6749 at r6749

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6749

  unfold Seg48.relationRow6750 at r6750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6750

  have hnextx : seg48BlindDeltaX70 rho =
      seg48BlindDeltaX69 rho + rho 39505 := by
    unfold seg48BlindDeltaX70 seg48BlindDeltaX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 69]

    ring

  have hnexty : seg48BlindDeltaY70 rho =
      seg48BlindDeltaY69 rho + rho 39506 := by
    unfold seg48BlindDeltaY70 seg48BlindDeltaY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 69]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 70
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX69 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY69 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX70 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY70 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung70_wide (rho 38906) (rho 38976) (seg48BlindDeltaX69 rho) (seg48BlindDeltaY69 rho) (rho 39502) (rho 39503) (rho 39504) (rho 39505) (rho 39506) hacc
  · unfold seg48BlindDeltaX69 seg48BlindDeltaY69
    linear_combination r6746
  · unfold seg48BlindDeltaX69 seg48BlindDeltaY69
    linear_combination r6747
  · unfold seg48BlindDeltaX69 seg48BlindDeltaY69
    linear_combination r6748
  · unfold seg48BlindDeltaX69
    linear_combination r6749
  · unfold seg48BlindDeltaY69
    linear_combination r6750
  · linear_combination r6219

theorem seg48Blind_hstep_c6 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 61 ≤ i → i < 71 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc
  · exact seg48Blind_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc
  · exact seg48Blind_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc
  · exact seg48Blind_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc
  · exact seg48Blind_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc
  · exact seg48Blind_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc
  · exact seg48Blind_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc
  · exact seg48Blind_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc
  · exact seg48Blind_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc
  · exact seg48Blind_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

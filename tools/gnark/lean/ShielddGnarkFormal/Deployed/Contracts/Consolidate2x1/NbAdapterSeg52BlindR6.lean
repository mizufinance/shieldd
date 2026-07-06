import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6210 rho ∧ Seg52.relationRow6701 rho ∧ Seg52.relationRow6702 rho ∧ Seg52.relationRow6703 rho ∧ Seg52.relationRow6704 rho ∧ Seg52.relationRow6705 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6210, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6701, r6702, r6703, r6704, r6705, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6210, r6701, r6702, r6703, r6704, r6705⟩

theorem seg52Blind_rung61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50599 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 61)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      61 (Bool.toZMod bit) (seg52BlindAccState rho 61)
      (seg52BlindAccState rho 62) := by
  obtain ⟨r6210, r6701, r6702, r6703, r6704, r6705⟩ := seg52Blind_rows61 rho h
  unfold Seg52.relationRow6210 at r6210

  unfold Seg52.relationRow6701 at r6701

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6701

  unfold Seg52.relationRow6702 at r6702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6702

  unfold Seg52.relationRow6703 at r6703

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6703

  unfold Seg52.relationRow6704 at r6704

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6704

  unfold Seg52.relationRow6705 at r6705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6705

  have hnextx : seg52BlindDeltaX61 rho =
      seg52BlindDeltaX60 rho + rho 51092 := by
    unfold seg52BlindDeltaX61 seg52BlindDeltaX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 60]

    ring

  have hnexty : seg52BlindDeltaY61 rho =
      seg52BlindDeltaY60 rho + rho 51093 := by
    unfold seg52BlindDeltaY61 seg52BlindDeltaY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 60]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 61
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX60 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY60 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX61 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY61 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung61_wide (rho 50538) (rho 50599) (seg52BlindDeltaX60 rho) (seg52BlindDeltaY60 rho) (rho 51089) (rho 51090) (rho 51091) (rho 51092) (rho 51093) hacc
  · unfold seg52BlindDeltaX60 seg52BlindDeltaY60
    linear_combination r6701
  · unfold seg52BlindDeltaX60 seg52BlindDeltaY60
    linear_combination r6702
  · unfold seg52BlindDeltaX60 seg52BlindDeltaY60
    linear_combination r6703
  · unfold seg52BlindDeltaX60
    linear_combination r6704
  · unfold seg52BlindDeltaY60
    linear_combination r6705
  · linear_combination r6210

theorem seg52Blind_rows62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6211 rho ∧ Seg52.relationRow6706 rho ∧ Seg52.relationRow6707 rho ∧ Seg52.relationRow6708 rho ∧ Seg52.relationRow6709 rho ∧ Seg52.relationRow6710 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6706, r6707, r6708, r6709, r6710, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6211, r6706, r6707, r6708, r6709, r6710⟩

theorem seg52Blind_rung62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50600 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 62)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      62 (Bool.toZMod bit) (seg52BlindAccState rho 62)
      (seg52BlindAccState rho 63) := by
  obtain ⟨r6211, r6706, r6707, r6708, r6709, r6710⟩ := seg52Blind_rows62 rho h
  unfold Seg52.relationRow6211 at r6211

  unfold Seg52.relationRow6706 at r6706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6706

  unfold Seg52.relationRow6707 at r6707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6707

  unfold Seg52.relationRow6708 at r6708

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6708

  unfold Seg52.relationRow6709 at r6709

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6709

  unfold Seg52.relationRow6710 at r6710

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6710

  have hnextx : seg52BlindDeltaX62 rho =
      seg52BlindDeltaX61 rho + rho 51097 := by
    unfold seg52BlindDeltaX62 seg52BlindDeltaX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 61]

    ring

  have hnexty : seg52BlindDeltaY62 rho =
      seg52BlindDeltaY61 rho + rho 51098 := by
    unfold seg52BlindDeltaY62 seg52BlindDeltaY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 61]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 62
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX61 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY61 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX62 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY62 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung62_wide (rho 50538) (rho 50600) (seg52BlindDeltaX61 rho) (seg52BlindDeltaY61 rho) (rho 51094) (rho 51095) (rho 51096) (rho 51097) (rho 51098) hacc
  · unfold seg52BlindDeltaX61 seg52BlindDeltaY61
    linear_combination r6706
  · unfold seg52BlindDeltaX61 seg52BlindDeltaY61
    linear_combination r6707
  · unfold seg52BlindDeltaX61 seg52BlindDeltaY61
    linear_combination r6708
  · unfold seg52BlindDeltaX61
    linear_combination r6709
  · unfold seg52BlindDeltaY61
    linear_combination r6710
  · linear_combination r6211

theorem seg52Blind_rows63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6212 rho ∧ Seg52.relationRow6711 rho ∧ Seg52.relationRow6712 rho ∧ Seg52.relationRow6713 rho ∧ Seg52.relationRow6714 rho ∧ Seg52.relationRow6715 rho := by
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

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6212, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6711, r6712, r6713, r6714, r6715, _, _, _, _⟩

  exact ⟨r6212, r6711, r6712, r6713, r6714, r6715⟩

theorem seg52Blind_rung63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50601 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 63)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      63 (Bool.toZMod bit) (seg52BlindAccState rho 63)
      (seg52BlindAccState rho 64) := by
  obtain ⟨r6212, r6711, r6712, r6713, r6714, r6715⟩ := seg52Blind_rows63 rho h
  unfold Seg52.relationRow6212 at r6212

  unfold Seg52.relationRow6711 at r6711

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6711

  unfold Seg52.relationRow6712 at r6712

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6712

  unfold Seg52.relationRow6713 at r6713

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6713

  unfold Seg52.relationRow6714 at r6714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6714

  unfold Seg52.relationRow6715 at r6715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6715

  have hnextx : seg52BlindDeltaX63 rho =
      seg52BlindDeltaX62 rho + rho 51102 := by
    unfold seg52BlindDeltaX63 seg52BlindDeltaX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 62]

    ring

  have hnexty : seg52BlindDeltaY63 rho =
      seg52BlindDeltaY62 rho + rho 51103 := by
    unfold seg52BlindDeltaY63 seg52BlindDeltaY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 62]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 63
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX62 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY62 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX63 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY63 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung63_wide (rho 50538) (rho 50601) (seg52BlindDeltaX62 rho) (seg52BlindDeltaY62 rho) (rho 51099) (rho 51100) (rho 51101) (rho 51102) (rho 51103) hacc
  · unfold seg52BlindDeltaX62 seg52BlindDeltaY62
    linear_combination r6711
  · unfold seg52BlindDeltaX62 seg52BlindDeltaY62
    linear_combination r6712
  · unfold seg52BlindDeltaX62 seg52BlindDeltaY62
    linear_combination r6713
  · unfold seg52BlindDeltaX62
    linear_combination r6714
  · unfold seg52BlindDeltaY62
    linear_combination r6715
  · linear_combination r6212

theorem seg52Blind_rows64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6213 rho ∧ Seg52.relationRow6716 rho ∧ Seg52.relationRow6717 rho ∧ Seg52.relationRow6718 rho ∧ Seg52.relationRow6719 rho ∧ Seg52.relationRow6720 rho := by
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

    _, _, _, p83, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6213, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6716, r6717, r6718, r6719⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨r6720, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6213, r6716, r6717, r6718, r6719, r6720⟩

theorem seg52Blind_rung64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50602 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 64)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      64 (Bool.toZMod bit) (seg52BlindAccState rho 64)
      (seg52BlindAccState rho 65) := by
  obtain ⟨r6213, r6716, r6717, r6718, r6719, r6720⟩ := seg52Blind_rows64 rho h
  unfold Seg52.relationRow6213 at r6213

  unfold Seg52.relationRow6716 at r6716

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6716

  unfold Seg52.relationRow6717 at r6717

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6717

  unfold Seg52.relationRow6718 at r6718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6718

  unfold Seg52.relationRow6719 at r6719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6719

  unfold Seg52.relationRow6720 at r6720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6720

  have hnextx : seg52BlindDeltaX64 rho =
      seg52BlindDeltaX63 rho + rho 51107 := by
    unfold seg52BlindDeltaX64 seg52BlindDeltaX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 63]

    ring

  have hnexty : seg52BlindDeltaY64 rho =
      seg52BlindDeltaY63 rho + rho 51108 := by
    unfold seg52BlindDeltaY64 seg52BlindDeltaY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 63]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 64
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX63 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY63 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX64 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY64 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung64_wide (rho 50538) (rho 50602) (seg52BlindDeltaX63 rho) (seg52BlindDeltaY63 rho) (rho 51104) (rho 51105) (rho 51106) (rho 51107) (rho 51108) hacc
  · unfold seg52BlindDeltaX63 seg52BlindDeltaY63
    linear_combination r6716
  · unfold seg52BlindDeltaX63 seg52BlindDeltaY63
    linear_combination r6717
  · unfold seg52BlindDeltaX63 seg52BlindDeltaY63
    linear_combination r6718
  · unfold seg52BlindDeltaX63
    linear_combination r6719
  · unfold seg52BlindDeltaY63
    linear_combination r6720
  · linear_combination r6213

theorem seg52Blind_rows65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6214 rho ∧ Seg52.relationRow6721 rho ∧ Seg52.relationRow6722 rho ∧ Seg52.relationRow6723 rho ∧ Seg52.relationRow6724 rho ∧ Seg52.relationRow6725 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, r6721, r6722, r6723, r6724, r6725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6214, r6721, r6722, r6723, r6724, r6725⟩

theorem seg52Blind_rung65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50603 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 65)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      65 (Bool.toZMod bit) (seg52BlindAccState rho 65)
      (seg52BlindAccState rho 66) := by
  obtain ⟨r6214, r6721, r6722, r6723, r6724, r6725⟩ := seg52Blind_rows65 rho h
  unfold Seg52.relationRow6214 at r6214

  unfold Seg52.relationRow6721 at r6721

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6721

  unfold Seg52.relationRow6722 at r6722

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6722

  unfold Seg52.relationRow6723 at r6723

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6723

  unfold Seg52.relationRow6724 at r6724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6724

  unfold Seg52.relationRow6725 at r6725

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6725

  have hnextx : seg52BlindDeltaX65 rho =
      seg52BlindDeltaX64 rho + rho 51112 := by
    unfold seg52BlindDeltaX65 seg52BlindDeltaX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 64]

    ring

  have hnexty : seg52BlindDeltaY65 rho =
      seg52BlindDeltaY64 rho + rho 51113 := by
    unfold seg52BlindDeltaY65 seg52BlindDeltaY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 64]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 65
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX64 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY64 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX65 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY65 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung65_wide (rho 50538) (rho 50603) (seg52BlindDeltaX64 rho) (seg52BlindDeltaY64 rho) (rho 51109) (rho 51110) (rho 51111) (rho 51112) (rho 51113) hacc
  · unfold seg52BlindDeltaX64 seg52BlindDeltaY64
    linear_combination r6721
  · unfold seg52BlindDeltaX64 seg52BlindDeltaY64
    linear_combination r6722
  · unfold seg52BlindDeltaX64 seg52BlindDeltaY64
    linear_combination r6723
  · unfold seg52BlindDeltaX64
    linear_combination r6724
  · unfold seg52BlindDeltaY64
    linear_combination r6725
  · linear_combination r6214

theorem seg52Blind_rows66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6215 rho ∧ Seg52.relationRow6726 rho ∧ Seg52.relationRow6727 rho ∧ Seg52.relationRow6728 rho ∧ Seg52.relationRow6729 rho ∧ Seg52.relationRow6730 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6215, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, r6726, r6727, r6728, r6729, r6730, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6215, r6726, r6727, r6728, r6729, r6730⟩

theorem seg52Blind_rung66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50604 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 66)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      66 (Bool.toZMod bit) (seg52BlindAccState rho 66)
      (seg52BlindAccState rho 67) := by
  obtain ⟨r6215, r6726, r6727, r6728, r6729, r6730⟩ := seg52Blind_rows66 rho h
  unfold Seg52.relationRow6215 at r6215

  unfold Seg52.relationRow6726 at r6726

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6726

  unfold Seg52.relationRow6727 at r6727

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6727

  unfold Seg52.relationRow6728 at r6728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6728

  unfold Seg52.relationRow6729 at r6729

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6729

  unfold Seg52.relationRow6730 at r6730

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6730

  have hnextx : seg52BlindDeltaX66 rho =
      seg52BlindDeltaX65 rho + rho 51117 := by
    unfold seg52BlindDeltaX66 seg52BlindDeltaX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 65]

    ring

  have hnexty : seg52BlindDeltaY66 rho =
      seg52BlindDeltaY65 rho + rho 51118 := by
    unfold seg52BlindDeltaY66 seg52BlindDeltaY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 65]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 66
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX65 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY65 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX66 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY66 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung66_wide (rho 50538) (rho 50604) (seg52BlindDeltaX65 rho) (seg52BlindDeltaY65 rho) (rho 51114) (rho 51115) (rho 51116) (rho 51117) (rho 51118) hacc
  · unfold seg52BlindDeltaX65 seg52BlindDeltaY65
    linear_combination r6726
  · unfold seg52BlindDeltaX65 seg52BlindDeltaY65
    linear_combination r6727
  · unfold seg52BlindDeltaX65 seg52BlindDeltaY65
    linear_combination r6728
  · unfold seg52BlindDeltaX65
    linear_combination r6729
  · unfold seg52BlindDeltaY65
    linear_combination r6730
  · linear_combination r6215

theorem seg52Blind_rows67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6216 rho ∧ Seg52.relationRow6731 rho ∧ Seg52.relationRow6732 rho ∧ Seg52.relationRow6733 rho ∧ Seg52.relationRow6734 rho ∧ Seg52.relationRow6735 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6731, r6732, r6733, r6734, r6735, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6216, r6731, r6732, r6733, r6734, r6735⟩

theorem seg52Blind_rung67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50605 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 67)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      67 (Bool.toZMod bit) (seg52BlindAccState rho 67)
      (seg52BlindAccState rho 68) := by
  obtain ⟨r6216, r6731, r6732, r6733, r6734, r6735⟩ := seg52Blind_rows67 rho h
  unfold Seg52.relationRow6216 at r6216

  unfold Seg52.relationRow6731 at r6731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6731

  unfold Seg52.relationRow6732 at r6732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6732

  unfold Seg52.relationRow6733 at r6733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6733

  unfold Seg52.relationRow6734 at r6734

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6734

  unfold Seg52.relationRow6735 at r6735

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6735

  have hnextx : seg52BlindDeltaX67 rho =
      seg52BlindDeltaX66 rho + rho 51122 := by
    unfold seg52BlindDeltaX67 seg52BlindDeltaX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 66]

    ring

  have hnexty : seg52BlindDeltaY67 rho =
      seg52BlindDeltaY66 rho + rho 51123 := by
    unfold seg52BlindDeltaY67 seg52BlindDeltaY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 66]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 67
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX66 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY66 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX67 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY67 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung67_wide (rho 50538) (rho 50605) (seg52BlindDeltaX66 rho) (seg52BlindDeltaY66 rho) (rho 51119) (rho 51120) (rho 51121) (rho 51122) (rho 51123) hacc
  · unfold seg52BlindDeltaX66 seg52BlindDeltaY66
    linear_combination r6731
  · unfold seg52BlindDeltaX66 seg52BlindDeltaY66
    linear_combination r6732
  · unfold seg52BlindDeltaX66 seg52BlindDeltaY66
    linear_combination r6733
  · unfold seg52BlindDeltaX66
    linear_combination r6734
  · unfold seg52BlindDeltaY66
    linear_combination r6735
  · linear_combination r6216

theorem seg52Blind_rows68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6217 rho ∧ Seg52.relationRow6736 rho ∧ Seg52.relationRow6737 rho ∧ Seg52.relationRow6738 rho ∧ Seg52.relationRow6739 rho ∧ Seg52.relationRow6740 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6217, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6736, r6737, r6738, r6739, r6740, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6217, r6736, r6737, r6738, r6739, r6740⟩

theorem seg52Blind_rung68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50606 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 68)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      68 (Bool.toZMod bit) (seg52BlindAccState rho 68)
      (seg52BlindAccState rho 69) := by
  obtain ⟨r6217, r6736, r6737, r6738, r6739, r6740⟩ := seg52Blind_rows68 rho h
  unfold Seg52.relationRow6217 at r6217

  unfold Seg52.relationRow6736 at r6736

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6736

  unfold Seg52.relationRow6737 at r6737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6737

  unfold Seg52.relationRow6738 at r6738

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6738

  unfold Seg52.relationRow6739 at r6739

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6739

  unfold Seg52.relationRow6740 at r6740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6740

  have hnextx : seg52BlindDeltaX68 rho =
      seg52BlindDeltaX67 rho + rho 51127 := by
    unfold seg52BlindDeltaX68 seg52BlindDeltaX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 67]

    ring

  have hnexty : seg52BlindDeltaY68 rho =
      seg52BlindDeltaY67 rho + rho 51128 := by
    unfold seg52BlindDeltaY68 seg52BlindDeltaY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 67]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 68
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX67 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY67 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX68 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY68 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung68_wide (rho 50538) (rho 50606) (seg52BlindDeltaX67 rho) (seg52BlindDeltaY67 rho) (rho 51124) (rho 51125) (rho 51126) (rho 51127) (rho 51128) hacc
  · unfold seg52BlindDeltaX67 seg52BlindDeltaY67
    linear_combination r6736
  · unfold seg52BlindDeltaX67 seg52BlindDeltaY67
    linear_combination r6737
  · unfold seg52BlindDeltaX67 seg52BlindDeltaY67
    linear_combination r6738
  · unfold seg52BlindDeltaX67
    linear_combination r6739
  · unfold seg52BlindDeltaY67
    linear_combination r6740
  · linear_combination r6217

theorem seg52Blind_rows69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6218 rho ∧ Seg52.relationRow6741 rho ∧ Seg52.relationRow6742 rho ∧ Seg52.relationRow6743 rho ∧ Seg52.relationRow6744 rho ∧ Seg52.relationRow6745 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6218, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6741, r6742, r6743, r6744, r6745, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6218, r6741, r6742, r6743, r6744, r6745⟩

theorem seg52Blind_rung69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50607 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 69)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      69 (Bool.toZMod bit) (seg52BlindAccState rho 69)
      (seg52BlindAccState rho 70) := by
  obtain ⟨r6218, r6741, r6742, r6743, r6744, r6745⟩ := seg52Blind_rows69 rho h
  unfold Seg52.relationRow6218 at r6218

  unfold Seg52.relationRow6741 at r6741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6741

  unfold Seg52.relationRow6742 at r6742

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6742

  unfold Seg52.relationRow6743 at r6743

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6743

  unfold Seg52.relationRow6744 at r6744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6744

  unfold Seg52.relationRow6745 at r6745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6745

  have hnextx : seg52BlindDeltaX69 rho =
      seg52BlindDeltaX68 rho + rho 51132 := by
    unfold seg52BlindDeltaX69 seg52BlindDeltaX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 68]

    ring

  have hnexty : seg52BlindDeltaY69 rho =
      seg52BlindDeltaY68 rho + rho 51133 := by
    unfold seg52BlindDeltaY69 seg52BlindDeltaY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 68]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 69
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX68 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY68 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX69 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY69 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung69_wide (rho 50538) (rho 50607) (seg52BlindDeltaX68 rho) (seg52BlindDeltaY68 rho) (rho 51129) (rho 51130) (rho 51131) (rho 51132) (rho 51133) hacc
  · unfold seg52BlindDeltaX68 seg52BlindDeltaY68
    linear_combination r6741
  · unfold seg52BlindDeltaX68 seg52BlindDeltaY68
    linear_combination r6742
  · unfold seg52BlindDeltaX68 seg52BlindDeltaY68
    linear_combination r6743
  · unfold seg52BlindDeltaX68
    linear_combination r6744
  · unfold seg52BlindDeltaY68
    linear_combination r6745
  · linear_combination r6218

theorem seg52Blind_rows70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6219 rho ∧ Seg52.relationRow6746 rho ∧ Seg52.relationRow6747 rho ∧ Seg52.relationRow6748 rho ∧ Seg52.relationRow6749 rho ∧ Seg52.relationRow6750 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6219, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6746, r6747, r6748, r6749, r6750, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6219, r6746, r6747, r6748, r6749, r6750⟩

theorem seg52Blind_rung70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50608 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 70)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      70 (Bool.toZMod bit) (seg52BlindAccState rho 70)
      (seg52BlindAccState rho 71) := by
  obtain ⟨r6219, r6746, r6747, r6748, r6749, r6750⟩ := seg52Blind_rows70 rho h
  unfold Seg52.relationRow6219 at r6219

  unfold Seg52.relationRow6746 at r6746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6746

  unfold Seg52.relationRow6747 at r6747

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6747

  unfold Seg52.relationRow6748 at r6748

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6748

  unfold Seg52.relationRow6749 at r6749

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6749

  unfold Seg52.relationRow6750 at r6750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6750

  have hnextx : seg52BlindDeltaX70 rho =
      seg52BlindDeltaX69 rho + rho 51137 := by
    unfold seg52BlindDeltaX70 seg52BlindDeltaX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 69]

    ring

  have hnexty : seg52BlindDeltaY70 rho =
      seg52BlindDeltaY69 rho + rho 51138 := by
    unfold seg52BlindDeltaY70 seg52BlindDeltaY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 69]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 70
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX69 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY69 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX70 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY70 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung70_wide (rho 50538) (rho 50608) (seg52BlindDeltaX69 rho) (seg52BlindDeltaY69 rho) (rho 51134) (rho 51135) (rho 51136) (rho 51137) (rho 51138) hacc
  · unfold seg52BlindDeltaX69 seg52BlindDeltaY69
    linear_combination r6746
  · unfold seg52BlindDeltaX69 seg52BlindDeltaY69
    linear_combination r6747
  · unfold seg52BlindDeltaX69 seg52BlindDeltaY69
    linear_combination r6748
  · unfold seg52BlindDeltaX69
    linear_combination r6749
  · unfold seg52BlindDeltaY69
    linear_combination r6750
  · linear_combination r6219

theorem seg52Blind_hstep_c6 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 61 ≤ i → i < 71 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc
  · exact seg52Blind_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc
  · exact seg52Blind_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc
  · exact seg52Blind_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc
  · exact seg52Blind_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc
  · exact seg52Blind_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc
  · exact seg52Blind_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc
  · exact seg52Blind_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc
  · exact seg52Blind_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc
  · exact seg52Blind_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

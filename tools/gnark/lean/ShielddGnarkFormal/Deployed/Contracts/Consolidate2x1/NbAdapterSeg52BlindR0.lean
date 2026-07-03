import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6790 rho ∧ Seg52.relationRow7041 rho ∧ Seg52.relationRow7042 rho ∧ Seg52.relationRow7043 rho ∧ Seg52.relationRow7044 rho ∧ Seg52.relationRow7045 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6790, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, r7041, r7042, r7043, r7044, r7045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6790, r7041, r7042, r7043, r7044, r7045⟩

theorem seg52Blind_rung1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51179 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 1)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      1 (Bool.toZMod bit) (seg52BlindAccState rho 1)
      (seg52BlindAccState rho 2) := by
  obtain ⟨r6790, r7041, r7042, r7043, r7044, r7045⟩ := seg52Blind_rows1 rho h
  unfold Seg52.relationRow6790 at r6790

  unfold Seg52.relationRow7041 at r7041

  unfold Seg52.relationRow7042 at r7042

  unfold Seg52.relationRow7043 at r7043

  unfold Seg52.relationRow7044 at r7044

  unfold Seg52.relationRow7045 at r7045

  have hnextx : seg52BlindDeltaX1 rho =
      seg52BlindDeltaX0 rho + rho 51432 := by
    unfold seg52BlindDeltaX1 seg52BlindDeltaX0
    ring

  have hnexty : seg52BlindDeltaY1 rho =
      seg52BlindDeltaY0 rho + rho 51433 := by
    unfold seg52BlindDeltaY1 seg52BlindDeltaY0
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 1
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX1 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY1 rho : Seg52.F)⟩
  rw [← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung1 (rho 51178) (rho 51179) (rho 51429) (rho 51430) (rho 51431) (rho 51432) (rho 51433) hacc
  · linear_combination r7041
  · linear_combination r7042
  · linear_combination r7043
  · linear_combination r7044
  · linear_combination r7045
  · linear_combination r6790

theorem seg52Blind_rows2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6791 rho ∧ Seg52.relationRow7046 rho ∧ Seg52.relationRow7047 rho ∧ Seg52.relationRow7048 rho ∧ Seg52.relationRow7049 rho ∧ Seg52.relationRow7050 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6791, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, r7046, r7047, r7048, r7049, r7050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6791, r7046, r7047, r7048, r7049, r7050⟩

theorem seg52Blind_rung2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51180 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 2)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      2 (Bool.toZMod bit) (seg52BlindAccState rho 2)
      (seg52BlindAccState rho 3) := by
  obtain ⟨r6791, r7046, r7047, r7048, r7049, r7050⟩ := seg52Blind_rows2 rho h
  unfold Seg52.relationRow6791 at r6791

  unfold Seg52.relationRow7046 at r7046

  unfold Seg52.relationRow7047 at r7047

  unfold Seg52.relationRow7048 at r7048

  unfold Seg52.relationRow7049 at r7049

  unfold Seg52.relationRow7050 at r7050

  have hnextx : seg52BlindDeltaX2 rho =
      seg52BlindDeltaX1 rho + rho 51437 := by
    unfold seg52BlindDeltaX2 seg52BlindDeltaX1
    ring

  have hnexty : seg52BlindDeltaY2 rho =
      seg52BlindDeltaY1 rho + rho 51438 := by
    unfold seg52BlindDeltaY2 seg52BlindDeltaY1
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 2
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX1 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY1 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX2 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY2 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung2_wide (rho 51178) (rho 51180) (seg52BlindDeltaX1 rho) (seg52BlindDeltaY1 rho) (rho 51434) (rho 51435) (rho 51436) (rho 51437) (rho 51438) hacc
  · unfold seg52BlindDeltaX1 seg52BlindDeltaY1
    linear_combination r7046
  · unfold seg52BlindDeltaX1 seg52BlindDeltaY1
    linear_combination r7047
  · unfold seg52BlindDeltaX1 seg52BlindDeltaY1
    linear_combination r7048
  · unfold seg52BlindDeltaX1
    linear_combination r7049
  · unfold seg52BlindDeltaY1
    linear_combination r7050
  · linear_combination r6791

theorem seg52Blind_rows3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6792 rho ∧ Seg52.relationRow7051 rho ∧ Seg52.relationRow7052 rho ∧ Seg52.relationRow7053 rho ∧ Seg52.relationRow7054 rho ∧ Seg52.relationRow7055 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6792, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, r7051, r7052, r7053, r7054, r7055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6792, r7051, r7052, r7053, r7054, r7055⟩

theorem seg52Blind_rung3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51181 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 3)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      3 (Bool.toZMod bit) (seg52BlindAccState rho 3)
      (seg52BlindAccState rho 4) := by
  obtain ⟨r6792, r7051, r7052, r7053, r7054, r7055⟩ := seg52Blind_rows3 rho h
  unfold Seg52.relationRow6792 at r6792

  unfold Seg52.relationRow7051 at r7051

  unfold Seg52.relationRow7052 at r7052

  unfold Seg52.relationRow7053 at r7053

  unfold Seg52.relationRow7054 at r7054

  unfold Seg52.relationRow7055 at r7055

  have hnextx : seg52BlindDeltaX3 rho =
      seg52BlindDeltaX2 rho + rho 51442 := by
    unfold seg52BlindDeltaX3 seg52BlindDeltaX2
    ring

  have hnexty : seg52BlindDeltaY3 rho =
      seg52BlindDeltaY2 rho + rho 51443 := by
    unfold seg52BlindDeltaY3 seg52BlindDeltaY2
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 3
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX2 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY2 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX3 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY3 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung3_wide (rho 51178) (rho 51181) (seg52BlindDeltaX2 rho) (seg52BlindDeltaY2 rho) (rho 51439) (rho 51440) (rho 51441) (rho 51442) (rho 51443) hacc
  · unfold seg52BlindDeltaX2 seg52BlindDeltaY2
    linear_combination r7051
  · unfold seg52BlindDeltaX2 seg52BlindDeltaY2
    linear_combination r7052
  · unfold seg52BlindDeltaX2 seg52BlindDeltaY2
    linear_combination r7053
  · unfold seg52BlindDeltaX2
    linear_combination r7054
  · unfold seg52BlindDeltaY2
    linear_combination r7055
  · linear_combination r6792

theorem seg52Blind_rows4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6793 rho ∧ Seg52.relationRow7056 rho ∧ Seg52.relationRow7057 rho ∧ Seg52.relationRow7058 rho ∧ Seg52.relationRow7059 rho ∧ Seg52.relationRow7060 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6793, _, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7056, r7057, r7058, r7059, r7060, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6793, r7056, r7057, r7058, r7059, r7060⟩

theorem seg52Blind_rung4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51182 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 4)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      4 (Bool.toZMod bit) (seg52BlindAccState rho 4)
      (seg52BlindAccState rho 5) := by
  obtain ⟨r6793, r7056, r7057, r7058, r7059, r7060⟩ := seg52Blind_rows4 rho h
  unfold Seg52.relationRow6793 at r6793

  unfold Seg52.relationRow7056 at r7056

  unfold Seg52.relationRow7057 at r7057

  unfold Seg52.relationRow7058 at r7058

  unfold Seg52.relationRow7059 at r7059

  unfold Seg52.relationRow7060 at r7060

  have hnextx : seg52BlindDeltaX4 rho =
      seg52BlindDeltaX3 rho + rho 51447 := by
    unfold seg52BlindDeltaX4 seg52BlindDeltaX3
    ring

  have hnexty : seg52BlindDeltaY4 rho =
      seg52BlindDeltaY3 rho + rho 51448 := by
    unfold seg52BlindDeltaY4 seg52BlindDeltaY3
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 4
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX3 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY3 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX4 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY4 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung4_wide (rho 51178) (rho 51182) (seg52BlindDeltaX3 rho) (seg52BlindDeltaY3 rho) (rho 51444) (rho 51445) (rho 51446) (rho 51447) (rho 51448) hacc
  · unfold seg52BlindDeltaX3 seg52BlindDeltaY3
    linear_combination r7056
  · unfold seg52BlindDeltaX3 seg52BlindDeltaY3
    linear_combination r7057
  · unfold seg52BlindDeltaX3 seg52BlindDeltaY3
    linear_combination r7058
  · unfold seg52BlindDeltaX3
    linear_combination r7059
  · unfold seg52BlindDeltaY3
    linear_combination r7060
  · linear_combination r6793

theorem seg52Blind_rows5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6794 rho ∧ Seg52.relationRow7061 rho ∧ Seg52.relationRow7062 rho ∧ Seg52.relationRow7063 rho ∧ Seg52.relationRow7064 rho ∧ Seg52.relationRow7065 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6794, _, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7061, r7062, r7063, r7064, r7065, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6794, r7061, r7062, r7063, r7064, r7065⟩

theorem seg52Blind_rung5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51183 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 5)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      5 (Bool.toZMod bit) (seg52BlindAccState rho 5)
      (seg52BlindAccState rho 6) := by
  obtain ⟨r6794, r7061, r7062, r7063, r7064, r7065⟩ := seg52Blind_rows5 rho h
  unfold Seg52.relationRow6794 at r6794

  unfold Seg52.relationRow7061 at r7061

  unfold Seg52.relationRow7062 at r7062

  unfold Seg52.relationRow7063 at r7063

  unfold Seg52.relationRow7064 at r7064

  unfold Seg52.relationRow7065 at r7065

  have hnextx : seg52BlindDeltaX5 rho =
      seg52BlindDeltaX4 rho + rho 51452 := by
    unfold seg52BlindDeltaX5 seg52BlindDeltaX4
    ring

  have hnexty : seg52BlindDeltaY5 rho =
      seg52BlindDeltaY4 rho + rho 51453 := by
    unfold seg52BlindDeltaY5 seg52BlindDeltaY4
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 5
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX4 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY4 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX5 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY5 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung5_wide (rho 51178) (rho 51183) (seg52BlindDeltaX4 rho) (seg52BlindDeltaY4 rho) (rho 51449) (rho 51450) (rho 51451) (rho 51452) (rho 51453) hacc
  · unfold seg52BlindDeltaX4 seg52BlindDeltaY4
    linear_combination r7061
  · unfold seg52BlindDeltaX4 seg52BlindDeltaY4
    linear_combination r7062
  · unfold seg52BlindDeltaX4 seg52BlindDeltaY4
    linear_combination r7063
  · unfold seg52BlindDeltaX4
    linear_combination r7064
  · unfold seg52BlindDeltaY4
    linear_combination r7065
  · linear_combination r6794

theorem seg52Blind_rows6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6795 rho ∧ Seg52.relationRow7066 rho ∧ Seg52.relationRow7067 rho ∧ Seg52.relationRow7068 rho ∧ Seg52.relationRow7069 rho ∧ Seg52.relationRow7070 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6795, _, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7066, r7067, r7068, r7069, r7070, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6795, r7066, r7067, r7068, r7069, r7070⟩

theorem seg52Blind_rung6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51184 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 6)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      6 (Bool.toZMod bit) (seg52BlindAccState rho 6)
      (seg52BlindAccState rho 7) := by
  obtain ⟨r6795, r7066, r7067, r7068, r7069, r7070⟩ := seg52Blind_rows6 rho h
  unfold Seg52.relationRow6795 at r6795

  unfold Seg52.relationRow7066 at r7066

  unfold Seg52.relationRow7067 at r7067

  unfold Seg52.relationRow7068 at r7068

  unfold Seg52.relationRow7069 at r7069

  unfold Seg52.relationRow7070 at r7070

  have hnextx : seg52BlindDeltaX6 rho =
      seg52BlindDeltaX5 rho + rho 51457 := by
    unfold seg52BlindDeltaX6 seg52BlindDeltaX5
    ring

  have hnexty : seg52BlindDeltaY6 rho =
      seg52BlindDeltaY5 rho + rho 51458 := by
    unfold seg52BlindDeltaY6 seg52BlindDeltaY5
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 6
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX5 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY5 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX6 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY6 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung6_wide (rho 51178) (rho 51184) (seg52BlindDeltaX5 rho) (seg52BlindDeltaY5 rho) (rho 51454) (rho 51455) (rho 51456) (rho 51457) (rho 51458) hacc
  · unfold seg52BlindDeltaX5 seg52BlindDeltaY5
    linear_combination r7066
  · unfold seg52BlindDeltaX5 seg52BlindDeltaY5
    linear_combination r7067
  · unfold seg52BlindDeltaX5 seg52BlindDeltaY5
    linear_combination r7068
  · unfold seg52BlindDeltaX5
    linear_combination r7069
  · unfold seg52BlindDeltaY5
    linear_combination r7070
  · linear_combination r6795

theorem seg52Blind_rows7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6796 rho ∧ Seg52.relationRow7071 rho ∧ Seg52.relationRow7072 rho ∧ Seg52.relationRow7073 rho ∧ Seg52.relationRow7074 rho ∧ Seg52.relationRow7075 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6796, _, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7071, r7072, r7073, r7074, r7075, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6796, r7071, r7072, r7073, r7074, r7075⟩

theorem seg52Blind_rung7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51185 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 7)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      7 (Bool.toZMod bit) (seg52BlindAccState rho 7)
      (seg52BlindAccState rho 8) := by
  obtain ⟨r6796, r7071, r7072, r7073, r7074, r7075⟩ := seg52Blind_rows7 rho h
  unfold Seg52.relationRow6796 at r6796

  unfold Seg52.relationRow7071 at r7071

  unfold Seg52.relationRow7072 at r7072

  unfold Seg52.relationRow7073 at r7073

  unfold Seg52.relationRow7074 at r7074

  unfold Seg52.relationRow7075 at r7075

  have hnextx : seg52BlindDeltaX7 rho =
      seg52BlindDeltaX6 rho + rho 51462 := by
    unfold seg52BlindDeltaX7 seg52BlindDeltaX6
    ring

  have hnexty : seg52BlindDeltaY7 rho =
      seg52BlindDeltaY6 rho + rho 51463 := by
    unfold seg52BlindDeltaY7 seg52BlindDeltaY6
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 7
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX6 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY6 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX7 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY7 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung7_wide (rho 51178) (rho 51185) (seg52BlindDeltaX6 rho) (seg52BlindDeltaY6 rho) (rho 51459) (rho 51460) (rho 51461) (rho 51462) (rho 51463) hacc
  · unfold seg52BlindDeltaX6 seg52BlindDeltaY6
    linear_combination r7071
  · unfold seg52BlindDeltaX6 seg52BlindDeltaY6
    linear_combination r7072
  · unfold seg52BlindDeltaX6 seg52BlindDeltaY6
    linear_combination r7073
  · unfold seg52BlindDeltaX6
    linear_combination r7074
  · unfold seg52BlindDeltaY6
    linear_combination r7075
  · linear_combination r6796

theorem seg52Blind_rows8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6797 rho ∧ Seg52.relationRow7076 rho ∧ Seg52.relationRow7077 rho ∧ Seg52.relationRow7078 rho ∧ Seg52.relationRow7079 rho ∧ Seg52.relationRow7080 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6797, _, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7076, r7077, r7078, r7079, r7080, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6797, r7076, r7077, r7078, r7079, r7080⟩

theorem seg52Blind_rung8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51186 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 8)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      8 (Bool.toZMod bit) (seg52BlindAccState rho 8)
      (seg52BlindAccState rho 9) := by
  obtain ⟨r6797, r7076, r7077, r7078, r7079, r7080⟩ := seg52Blind_rows8 rho h
  unfold Seg52.relationRow6797 at r6797

  unfold Seg52.relationRow7076 at r7076

  unfold Seg52.relationRow7077 at r7077

  unfold Seg52.relationRow7078 at r7078

  unfold Seg52.relationRow7079 at r7079

  unfold Seg52.relationRow7080 at r7080

  have hnextx : seg52BlindDeltaX8 rho =
      seg52BlindDeltaX7 rho + rho 51467 := by
    unfold seg52BlindDeltaX8 seg52BlindDeltaX7
    ring

  have hnexty : seg52BlindDeltaY8 rho =
      seg52BlindDeltaY7 rho + rho 51468 := by
    unfold seg52BlindDeltaY8 seg52BlindDeltaY7
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 8
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX7 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY7 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX8 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY8 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung8_wide (rho 51178) (rho 51186) (seg52BlindDeltaX7 rho) (seg52BlindDeltaY7 rho) (rho 51464) (rho 51465) (rho 51466) (rho 51467) (rho 51468) hacc
  · unfold seg52BlindDeltaX7 seg52BlindDeltaY7
    linear_combination r7076
  · unfold seg52BlindDeltaX7 seg52BlindDeltaY7
    linear_combination r7077
  · unfold seg52BlindDeltaX7 seg52BlindDeltaY7
    linear_combination r7078
  · unfold seg52BlindDeltaX7
    linear_combination r7079
  · unfold seg52BlindDeltaY7
    linear_combination r7080
  · linear_combination r6797

theorem seg52Blind_rows9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6798 rho ∧ Seg52.relationRow7081 rho ∧ Seg52.relationRow7082 rho ∧ Seg52.relationRow7083 rho ∧ Seg52.relationRow7084 rho ∧ Seg52.relationRow7085 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6798, _⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7081, r7082, r7083, r7084, r7085, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6798, r7081, r7082, r7083, r7084, r7085⟩

theorem seg52Blind_rung9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51187 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 9)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      9 (Bool.toZMod bit) (seg52BlindAccState rho 9)
      (seg52BlindAccState rho 10) := by
  obtain ⟨r6798, r7081, r7082, r7083, r7084, r7085⟩ := seg52Blind_rows9 rho h
  unfold Seg52.relationRow6798 at r6798

  unfold Seg52.relationRow7081 at r7081

  unfold Seg52.relationRow7082 at r7082

  unfold Seg52.relationRow7083 at r7083

  unfold Seg52.relationRow7084 at r7084

  unfold Seg52.relationRow7085 at r7085

  have hnextx : seg52BlindDeltaX9 rho =
      seg52BlindDeltaX8 rho + rho 51472 := by
    unfold seg52BlindDeltaX9 seg52BlindDeltaX8
    ring

  have hnexty : seg52BlindDeltaY9 rho =
      seg52BlindDeltaY8 rho + rho 51473 := by
    unfold seg52BlindDeltaY9 seg52BlindDeltaY8
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 9
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX8 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY8 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX9 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY9 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung9_wide (rho 51178) (rho 51187) (seg52BlindDeltaX8 rho) (seg52BlindDeltaY8 rho) (rho 51469) (rho 51470) (rho 51471) (rho 51472) (rho 51473) hacc
  · unfold seg52BlindDeltaX8 seg52BlindDeltaY8
    linear_combination r7081
  · unfold seg52BlindDeltaX8 seg52BlindDeltaY8
    linear_combination r7082
  · unfold seg52BlindDeltaX8 seg52BlindDeltaY8
    linear_combination r7083
  · unfold seg52BlindDeltaX8
    linear_combination r7084
  · unfold seg52BlindDeltaY8
    linear_combination r7085
  · linear_combination r6798

theorem seg52Blind_rows10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6799 rho ∧ Seg52.relationRow7086 rho ∧ Seg52.relationRow7087 rho ∧ Seg52.relationRow7088 rho ∧ Seg52.relationRow7089 rho ∧ Seg52.relationRow7090 rho := by
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

    _, _, _, _, p84, _, _, _, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6799⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7086, r7087, r7088, r7089, r7090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6799, r7086, r7087, r7088, r7089, r7090⟩

theorem seg52Blind_rung10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51188 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 10)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      10 (Bool.toZMod bit) (seg52BlindAccState rho 10)
      (seg52BlindAccState rho 11) := by
  obtain ⟨r6799, r7086, r7087, r7088, r7089, r7090⟩ := seg52Blind_rows10 rho h
  unfold Seg52.relationRow6799 at r6799

  unfold Seg52.relationRow7086 at r7086

  unfold Seg52.relationRow7087 at r7087

  unfold Seg52.relationRow7088 at r7088

  unfold Seg52.relationRow7089 at r7089

  unfold Seg52.relationRow7090 at r7090

  have hnextx : seg52BlindDeltaX10 rho =
      seg52BlindDeltaX9 rho + rho 51477 := by
    unfold seg52BlindDeltaX10 seg52BlindDeltaX9
    ring

  have hnexty : seg52BlindDeltaY10 rho =
      seg52BlindDeltaY9 rho + rho 51478 := by
    unfold seg52BlindDeltaY10 seg52BlindDeltaY9
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 10
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX9 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY9 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX10 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY10 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung10_wide (rho 51178) (rho 51188) (seg52BlindDeltaX9 rho) (seg52BlindDeltaY9 rho) (rho 51474) (rho 51475) (rho 51476) (rho 51477) (rho 51478) hacc
  · unfold seg52BlindDeltaX9 seg52BlindDeltaY9
    linear_combination r7086
  · unfold seg52BlindDeltaX9 seg52BlindDeltaY9
    linear_combination r7087
  · unfold seg52BlindDeltaX9 seg52BlindDeltaY9
    linear_combination r7088
  · unfold seg52BlindDeltaX9
    linear_combination r7089
  · unfold seg52BlindDeltaY9
    linear_combination r7090
  · linear_combination r6799

theorem seg52Blind_hstep_c0 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 1 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc
  · exact seg52Blind_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc
  · exact seg52Blind_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc
  · exact seg52Blind_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc
  · exact seg52Blind_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc
  · exact seg52Blind_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc
  · exact seg52Blind_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc
  · exact seg52Blind_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc
  · exact seg52Blind_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc
  · exact seg52Blind_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

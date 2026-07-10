import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows11 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6160 rho ∧ Seg48.relationRow6451 rho ∧ Seg48.relationRow6452 rho ∧ Seg48.relationRow6453 rho ∧ Seg48.relationRow6454 rho ∧ Seg48.relationRow6455 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨r6160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6451, r6452, r6453, r6454, r6455, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6160, r6451, r6452, r6453, r6454, r6455⟩

theorem seg48Blind_rung11 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38917 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 11)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      11 (Bool.toZMod bit) (seg48BlindAccState rho 11)
      (seg48BlindAccState rho 12) := by
  obtain ⟨r6160, r6451, r6452, r6453, r6454, r6455⟩ := seg48Blind_rows11 rho h
  unfold Seg48.relationRow6160 at r6160

  unfold Seg48.relationRow6451 at r6451

  unfold Seg48.relationRow6452 at r6452

  unfold Seg48.relationRow6453 at r6453

  unfold Seg48.relationRow6454 at r6454

  unfold Seg48.relationRow6455 at r6455

  have hnextx : seg48BlindDeltaX11 rho =
      seg48BlindDeltaX10 rho + rho 39210 := by
    unfold seg48BlindDeltaX11 seg48BlindDeltaX10
    ring

  have hnexty : seg48BlindDeltaY11 rho =
      seg48BlindDeltaY10 rho + rho 39211 := by
    unfold seg48BlindDeltaY11 seg48BlindDeltaY10
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 11
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX10 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY10 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX11 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY11 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung11_wide (rho 38906) (rho 38917) (seg48BlindDeltaX10 rho) (seg48BlindDeltaY10 rho) (rho 39207) (rho 39208) (rho 39209) (rho 39210) (rho 39211) hacc
  · unfold seg48BlindDeltaX10 seg48BlindDeltaY10
    linear_combination r6451
  · unfold seg48BlindDeltaX10 seg48BlindDeltaY10
    linear_combination r6452
  · unfold seg48BlindDeltaX10 seg48BlindDeltaY10
    linear_combination r6453
  · unfold seg48BlindDeltaX10
    linear_combination r6454
  · unfold seg48BlindDeltaY10
    linear_combination r6455
  · linear_combination r6160

theorem seg48Blind_rows12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6161 rho ∧ Seg48.relationRow6456 rho ∧ Seg48.relationRow6457 rho ∧ Seg48.relationRow6458 rho ∧ Seg48.relationRow6459 rho ∧ Seg48.relationRow6460 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, r6161, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6456, r6457, r6458, r6459, r6460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6161, r6456, r6457, r6458, r6459, r6460⟩

theorem seg48Blind_rung12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38918 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 12)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      12 (Bool.toZMod bit) (seg48BlindAccState rho 12)
      (seg48BlindAccState rho 13) := by
  obtain ⟨r6161, r6456, r6457, r6458, r6459, r6460⟩ := seg48Blind_rows12 rho h
  unfold Seg48.relationRow6161 at r6161

  unfold Seg48.relationRow6456 at r6456

  unfold Seg48.relationRow6457 at r6457

  unfold Seg48.relationRow6458 at r6458

  unfold Seg48.relationRow6459 at r6459

  unfold Seg48.relationRow6460 at r6460

  have hnextx : seg48BlindDeltaX12 rho =
      seg48BlindDeltaX11 rho + rho 39215 := by
    unfold seg48BlindDeltaX12 seg48BlindDeltaX11
    ring

  have hnexty : seg48BlindDeltaY12 rho =
      seg48BlindDeltaY11 rho + rho 39216 := by
    unfold seg48BlindDeltaY12 seg48BlindDeltaY11
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 12
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX11 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY11 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX12 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY12 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung12_wide (rho 38906) (rho 38918) (seg48BlindDeltaX11 rho) (seg48BlindDeltaY11 rho) (rho 39212) (rho 39213) (rho 39214) (rho 39215) (rho 39216) hacc
  · unfold seg48BlindDeltaX11 seg48BlindDeltaY11
    linear_combination r6456
  · unfold seg48BlindDeltaX11 seg48BlindDeltaY11
    linear_combination r6457
  · unfold seg48BlindDeltaX11 seg48BlindDeltaY11
    linear_combination r6458
  · unfold seg48BlindDeltaX11
    linear_combination r6459
  · unfold seg48BlindDeltaY11
    linear_combination r6460
  · linear_combination r6161

theorem seg48Blind_rows13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6162 rho ∧ Seg48.relationRow6461 rho ∧ Seg48.relationRow6462 rho ∧ Seg48.relationRow6463 rho ∧ Seg48.relationRow6464 rho ∧ Seg48.relationRow6465 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, r6162, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6461, r6462, r6463, r6464, r6465, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6162, r6461, r6462, r6463, r6464, r6465⟩

theorem seg48Blind_rung13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38919 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 13)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      13 (Bool.toZMod bit) (seg48BlindAccState rho 13)
      (seg48BlindAccState rho 14) := by
  obtain ⟨r6162, r6461, r6462, r6463, r6464, r6465⟩ := seg48Blind_rows13 rho h
  unfold Seg48.relationRow6162 at r6162

  unfold Seg48.relationRow6461 at r6461

  unfold Seg48.relationRow6462 at r6462

  unfold Seg48.relationRow6463 at r6463

  unfold Seg48.relationRow6464 at r6464

  unfold Seg48.relationRow6465 at r6465

  have hnextx : seg48BlindDeltaX13 rho =
      seg48BlindDeltaX12 rho + rho 39220 := by
    unfold seg48BlindDeltaX13 seg48BlindDeltaX12
    ring

  have hnexty : seg48BlindDeltaY13 rho =
      seg48BlindDeltaY12 rho + rho 39221 := by
    unfold seg48BlindDeltaY13 seg48BlindDeltaY12
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 13
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX12 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY12 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX13 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY13 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung13_wide (rho 38906) (rho 38919) (seg48BlindDeltaX12 rho) (seg48BlindDeltaY12 rho) (rho 39217) (rho 39218) (rho 39219) (rho 39220) (rho 39221) hacc
  · unfold seg48BlindDeltaX12 seg48BlindDeltaY12
    linear_combination r6461
  · unfold seg48BlindDeltaX12 seg48BlindDeltaY12
    linear_combination r6462
  · unfold seg48BlindDeltaX12 seg48BlindDeltaY12
    linear_combination r6463
  · unfold seg48BlindDeltaX12
    linear_combination r6464
  · unfold seg48BlindDeltaY12
    linear_combination r6465
  · linear_combination r6162

theorem seg48Blind_rows14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6163 rho ∧ Seg48.relationRow6466 rho ∧ Seg48.relationRow6467 rho ∧ Seg48.relationRow6468 rho ∧ Seg48.relationRow6469 rho ∧ Seg48.relationRow6470 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, r6163, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6466, r6467, r6468, r6469, r6470, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6163, r6466, r6467, r6468, r6469, r6470⟩

theorem seg48Blind_rung14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38920 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 14)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      14 (Bool.toZMod bit) (seg48BlindAccState rho 14)
      (seg48BlindAccState rho 15) := by
  obtain ⟨r6163, r6466, r6467, r6468, r6469, r6470⟩ := seg48Blind_rows14 rho h
  unfold Seg48.relationRow6163 at r6163

  unfold Seg48.relationRow6466 at r6466

  unfold Seg48.relationRow6467 at r6467

  unfold Seg48.relationRow6468 at r6468

  unfold Seg48.relationRow6469 at r6469

  unfold Seg48.relationRow6470 at r6470

  have hnextx : seg48BlindDeltaX14 rho =
      seg48BlindDeltaX13 rho + rho 39225 := by
    unfold seg48BlindDeltaX14 seg48BlindDeltaX13
    ring

  have hnexty : seg48BlindDeltaY14 rho =
      seg48BlindDeltaY13 rho + rho 39226 := by
    unfold seg48BlindDeltaY14 seg48BlindDeltaY13
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 14
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX13 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY13 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX14 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY14 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung14_wide (rho 38906) (rho 38920) (seg48BlindDeltaX13 rho) (seg48BlindDeltaY13 rho) (rho 39222) (rho 39223) (rho 39224) (rho 39225) (rho 39226) hacc
  · unfold seg48BlindDeltaX13 seg48BlindDeltaY13
    linear_combination r6466
  · unfold seg48BlindDeltaX13 seg48BlindDeltaY13
    linear_combination r6467
  · unfold seg48BlindDeltaX13 seg48BlindDeltaY13
    linear_combination r6468
  · unfold seg48BlindDeltaX13
    linear_combination r6469
  · unfold seg48BlindDeltaY13
    linear_combination r6470
  · linear_combination r6163

theorem seg48Blind_rows15 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6164 rho ∧ Seg48.relationRow6471 rho ∧ Seg48.relationRow6472 rho ∧ Seg48.relationRow6473 rho ∧ Seg48.relationRow6474 rho ∧ Seg48.relationRow6475 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, r6164, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6471, r6472, r6473, r6474, r6475, _, _, _, _⟩

  exact ⟨r6164, r6471, r6472, r6473, r6474, r6475⟩

theorem seg48Blind_rung15 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38921 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 15)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      15 (Bool.toZMod bit) (seg48BlindAccState rho 15)
      (seg48BlindAccState rho 16) := by
  obtain ⟨r6164, r6471, r6472, r6473, r6474, r6475⟩ := seg48Blind_rows15 rho h
  unfold Seg48.relationRow6164 at r6164

  unfold Seg48.relationRow6471 at r6471

  unfold Seg48.relationRow6472 at r6472

  unfold Seg48.relationRow6473 at r6473

  unfold Seg48.relationRow6474 at r6474

  unfold Seg48.relationRow6475 at r6475

  have hnextx : seg48BlindDeltaX15 rho =
      seg48BlindDeltaX14 rho + rho 39230 := by
    unfold seg48BlindDeltaX15 seg48BlindDeltaX14
    ring

  have hnexty : seg48BlindDeltaY15 rho =
      seg48BlindDeltaY14 rho + rho 39231 := by
    unfold seg48BlindDeltaY15 seg48BlindDeltaY14
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 15
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX14 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY14 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX15 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY15 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung15_wide (rho 38906) (rho 38921) (seg48BlindDeltaX14 rho) (seg48BlindDeltaY14 rho) (rho 39227) (rho 39228) (rho 39229) (rho 39230) (rho 39231) hacc
  · unfold seg48BlindDeltaX14 seg48BlindDeltaY14
    linear_combination r6471
  · unfold seg48BlindDeltaX14 seg48BlindDeltaY14
    linear_combination r6472
  · unfold seg48BlindDeltaX14 seg48BlindDeltaY14
    linear_combination r6473
  · unfold seg48BlindDeltaX14
    linear_combination r6474
  · unfold seg48BlindDeltaY14
    linear_combination r6475
  · linear_combination r6164

theorem seg48Blind_rows16 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6165 rho ∧ Seg48.relationRow6476 rho ∧ Seg48.relationRow6477 rho ∧ Seg48.relationRow6478 rho ∧ Seg48.relationRow6479 rho ∧ Seg48.relationRow6480 rho := by
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

    p80, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, r6165, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6476, r6477, r6478, r6479⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨r6480, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6165, r6476, r6477, r6478, r6479, r6480⟩

theorem seg48Blind_rung16 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38922 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 16)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      16 (Bool.toZMod bit) (seg48BlindAccState rho 16)
      (seg48BlindAccState rho 17) := by
  obtain ⟨r6165, r6476, r6477, r6478, r6479, r6480⟩ := seg48Blind_rows16 rho h
  unfold Seg48.relationRow6165 at r6165

  unfold Seg48.relationRow6476 at r6476

  unfold Seg48.relationRow6477 at r6477

  unfold Seg48.relationRow6478 at r6478

  unfold Seg48.relationRow6479 at r6479

  unfold Seg48.relationRow6480 at r6480

  have hnextx : seg48BlindDeltaX16 rho =
      seg48BlindDeltaX15 rho + rho 39235 := by
    unfold seg48BlindDeltaX16 seg48BlindDeltaX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 39160 5]

    ring

  have hnexty : seg48BlindDeltaY16 rho =
      seg48BlindDeltaY15 rho + rho 39236 := by
    unfold seg48BlindDeltaY16 seg48BlindDeltaY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 39161 5]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 16
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX15 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY15 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX16 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY16 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung16_wide (rho 38906) (rho 38922) (seg48BlindDeltaX15 rho) (seg48BlindDeltaY15 rho) (rho 39232) (rho 39233) (rho 39234) (rho 39235) (rho 39236) hacc
  · unfold seg48BlindDeltaX15 seg48BlindDeltaY15
    linear_combination r6476
  · unfold seg48BlindDeltaX15 seg48BlindDeltaY15
    linear_combination r6477
  · unfold seg48BlindDeltaX15 seg48BlindDeltaY15
    linear_combination r6478
  · unfold seg48BlindDeltaX15
    linear_combination r6479
  · unfold seg48BlindDeltaY15
    linear_combination r6480
  · linear_combination r6165

theorem seg48Blind_rows17 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6166 rho ∧ Seg48.relationRow6481 rho ∧ Seg48.relationRow6482 rho ∧ Seg48.relationRow6483 rho ∧ Seg48.relationRow6484 rho ∧ Seg48.relationRow6485 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, r6166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, r6481, r6482, r6483, r6484, r6485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6166, r6481, r6482, r6483, r6484, r6485⟩

theorem seg48Blind_rung17 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38923 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 17)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      17 (Bool.toZMod bit) (seg48BlindAccState rho 17)
      (seg48BlindAccState rho 18) := by
  obtain ⟨r6166, r6481, r6482, r6483, r6484, r6485⟩ := seg48Blind_rows17 rho h
  unfold Seg48.relationRow6166 at r6166

  unfold Seg48.relationRow6481 at r6481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6481

  unfold Seg48.relationRow6482 at r6482

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6482

  unfold Seg48.relationRow6483 at r6483

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6483

  unfold Seg48.relationRow6484 at r6484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6484

  unfold Seg48.relationRow6485 at r6485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6485

  have hnextx : seg48BlindDeltaX17 rho =
      seg48BlindDeltaX16 rho + rho 39240 := by
    unfold seg48BlindDeltaX17 seg48BlindDeltaX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 16]

    ring

  have hnexty : seg48BlindDeltaY17 rho =
      seg48BlindDeltaY16 rho + rho 39241 := by
    unfold seg48BlindDeltaY17 seg48BlindDeltaY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 16]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 17
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX16 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY16 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX17 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY17 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung17_wide (rho 38906) (rho 38923) (seg48BlindDeltaX16 rho) (seg48BlindDeltaY16 rho) (rho 39237) (rho 39238) (rho 39239) (rho 39240) (rho 39241) hacc
  · unfold seg48BlindDeltaX16 seg48BlindDeltaY16
    linear_combination r6481
  · unfold seg48BlindDeltaX16 seg48BlindDeltaY16
    linear_combination r6482
  · unfold seg48BlindDeltaX16 seg48BlindDeltaY16
    linear_combination r6483
  · unfold seg48BlindDeltaX16
    linear_combination r6484
  · unfold seg48BlindDeltaY16
    linear_combination r6485
  · linear_combination r6166

theorem seg48Blind_rows18 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6167 rho ∧ Seg48.relationRow6486 rho ∧ Seg48.relationRow6487 rho ∧ Seg48.relationRow6488 rho ∧ Seg48.relationRow6489 rho ∧ Seg48.relationRow6490 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, r6167, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, r6486, r6487, r6488, r6489, r6490, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6167, r6486, r6487, r6488, r6489, r6490⟩

theorem seg48Blind_rung18 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38924 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 18)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      18 (Bool.toZMod bit) (seg48BlindAccState rho 18)
      (seg48BlindAccState rho 19) := by
  obtain ⟨r6167, r6486, r6487, r6488, r6489, r6490⟩ := seg48Blind_rows18 rho h
  unfold Seg48.relationRow6167 at r6167

  unfold Seg48.relationRow6486 at r6486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6486

  unfold Seg48.relationRow6487 at r6487

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6487

  unfold Seg48.relationRow6488 at r6488

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6488

  unfold Seg48.relationRow6489 at r6489

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6489

  unfold Seg48.relationRow6490 at r6490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6490

  have hnextx : seg48BlindDeltaX18 rho =
      seg48BlindDeltaX17 rho + rho 39245 := by
    unfold seg48BlindDeltaX18 seg48BlindDeltaX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 17]

    ring

  have hnexty : seg48BlindDeltaY18 rho =
      seg48BlindDeltaY17 rho + rho 39246 := by
    unfold seg48BlindDeltaY18 seg48BlindDeltaY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 17]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 18
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX17 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY17 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX18 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY18 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung18_wide (rho 38906) (rho 38924) (seg48BlindDeltaX17 rho) (seg48BlindDeltaY17 rho) (rho 39242) (rho 39243) (rho 39244) (rho 39245) (rho 39246) hacc
  · unfold seg48BlindDeltaX17 seg48BlindDeltaY17
    linear_combination r6486
  · unfold seg48BlindDeltaX17 seg48BlindDeltaY17
    linear_combination r6487
  · unfold seg48BlindDeltaX17 seg48BlindDeltaY17
    linear_combination r6488
  · unfold seg48BlindDeltaX17
    linear_combination r6489
  · unfold seg48BlindDeltaY17
    linear_combination r6490
  · linear_combination r6167

theorem seg48Blind_rows19 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6168 rho ∧ Seg48.relationRow6491 rho ∧ Seg48.relationRow6492 rho ∧ Seg48.relationRow6493 rho ∧ Seg48.relationRow6494 rho ∧ Seg48.relationRow6495 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, r6168, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6491, r6492, r6493, r6494, r6495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6168, r6491, r6492, r6493, r6494, r6495⟩

theorem seg48Blind_rung19 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38925 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 19)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      19 (Bool.toZMod bit) (seg48BlindAccState rho 19)
      (seg48BlindAccState rho 20) := by
  obtain ⟨r6168, r6491, r6492, r6493, r6494, r6495⟩ := seg48Blind_rows19 rho h
  unfold Seg48.relationRow6168 at r6168

  unfold Seg48.relationRow6491 at r6491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6491

  unfold Seg48.relationRow6492 at r6492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6492

  unfold Seg48.relationRow6493 at r6493

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6493

  unfold Seg48.relationRow6494 at r6494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6494

  unfold Seg48.relationRow6495 at r6495

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6495

  have hnextx : seg48BlindDeltaX19 rho =
      seg48BlindDeltaX18 rho + rho 39250 := by
    unfold seg48BlindDeltaX19 seg48BlindDeltaX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 18]

    ring

  have hnexty : seg48BlindDeltaY19 rho =
      seg48BlindDeltaY18 rho + rho 39251 := by
    unfold seg48BlindDeltaY19 seg48BlindDeltaY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 18]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 19
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX18 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY18 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX19 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY19 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung19_wide (rho 38906) (rho 38925) (seg48BlindDeltaX18 rho) (seg48BlindDeltaY18 rho) (rho 39247) (rho 39248) (rho 39249) (rho 39250) (rho 39251) hacc
  · unfold seg48BlindDeltaX18 seg48BlindDeltaY18
    linear_combination r6491
  · unfold seg48BlindDeltaX18 seg48BlindDeltaY18
    linear_combination r6492
  · unfold seg48BlindDeltaX18 seg48BlindDeltaY18
    linear_combination r6493
  · unfold seg48BlindDeltaX18
    linear_combination r6494
  · unfold seg48BlindDeltaY18
    linear_combination r6495
  · linear_combination r6168

theorem seg48Blind_rows20 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6169 rho ∧ Seg48.relationRow6496 rho ∧ Seg48.relationRow6497 rho ∧ Seg48.relationRow6498 rho ∧ Seg48.relationRow6499 rho ∧ Seg48.relationRow6500 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, r6169, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6496, r6497, r6498, r6499, r6500, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6169, r6496, r6497, r6498, r6499, r6500⟩

theorem seg48Blind_rung20 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38926 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 20)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      20 (Bool.toZMod bit) (seg48BlindAccState rho 20)
      (seg48BlindAccState rho 21) := by
  obtain ⟨r6169, r6496, r6497, r6498, r6499, r6500⟩ := seg48Blind_rows20 rho h
  unfold Seg48.relationRow6169 at r6169

  unfold Seg48.relationRow6496 at r6496

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6496

  unfold Seg48.relationRow6497 at r6497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6497

  unfold Seg48.relationRow6498 at r6498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6498

  unfold Seg48.relationRow6499 at r6499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6499

  unfold Seg48.relationRow6500 at r6500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6500

  have hnextx : seg48BlindDeltaX20 rho =
      seg48BlindDeltaX19 rho + rho 39255 := by
    unfold seg48BlindDeltaX20 seg48BlindDeltaX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39160 5 19]

    ring

  have hnexty : seg48BlindDeltaY20 rho =
      seg48BlindDeltaY19 rho + rho 39256 := by
    unfold seg48BlindDeltaY20 seg48BlindDeltaY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39161 5 19]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 20
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX19 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY19 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX20 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY20 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung20_wide (rho 38906) (rho 38926) (seg48BlindDeltaX19 rho) (seg48BlindDeltaY19 rho) (rho 39252) (rho 39253) (rho 39254) (rho 39255) (rho 39256) hacc
  · unfold seg48BlindDeltaX19 seg48BlindDeltaY19
    linear_combination r6496
  · unfold seg48BlindDeltaX19 seg48BlindDeltaY19
    linear_combination r6497
  · unfold seg48BlindDeltaX19 seg48BlindDeltaY19
    linear_combination r6498
  · unfold seg48BlindDeltaX19
    linear_combination r6499
  · unfold seg48BlindDeltaY19
    linear_combination r6500
  · linear_combination r6169

theorem seg48Blind_hstep_c1 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 21 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc
  · exact seg48Blind_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc
  · exact seg48Blind_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc
  · exact seg48Blind_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc
  · exact seg48Blind_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc
  · exact seg48Blind_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc
  · exact seg48Blind_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc
  · exact seg48Blind_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc
  · exact seg48Blind_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc
  · exact seg48Blind_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

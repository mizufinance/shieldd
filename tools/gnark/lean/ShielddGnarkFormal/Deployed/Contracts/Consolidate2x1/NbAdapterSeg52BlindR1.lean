import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6160 rho ∧ Seg52.relationRow6451 rho ∧ Seg52.relationRow6452 rho ∧ Seg52.relationRow6453 rho ∧ Seg52.relationRow6454 rho ∧ Seg52.relationRow6455 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨r6160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6451, r6452, r6453, r6454, r6455, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6160, r6451, r6452, r6453, r6454, r6455⟩

theorem seg52Blind_rung11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50549 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 11)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      11 (Bool.toZMod bit) (seg52BlindAccState rho 11)
      (seg52BlindAccState rho 12) := by
  obtain ⟨r6160, r6451, r6452, r6453, r6454, r6455⟩ := seg52Blind_rows11 rho h
  unfold Seg52.relationRow6160 at r6160

  unfold Seg52.relationRow6451 at r6451

  unfold Seg52.relationRow6452 at r6452

  unfold Seg52.relationRow6453 at r6453

  unfold Seg52.relationRow6454 at r6454

  unfold Seg52.relationRow6455 at r6455

  have hnextx : seg52BlindDeltaX11 rho =
      seg52BlindDeltaX10 rho + rho 50842 := by
    unfold seg52BlindDeltaX11 seg52BlindDeltaX10
    ring

  have hnexty : seg52BlindDeltaY11 rho =
      seg52BlindDeltaY10 rho + rho 50843 := by
    unfold seg52BlindDeltaY11 seg52BlindDeltaY10
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 11
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX10 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY10 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX11 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY11 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung11_wide (rho 50538) (rho 50549) (seg52BlindDeltaX10 rho) (seg52BlindDeltaY10 rho) (rho 50839) (rho 50840) (rho 50841) (rho 50842) (rho 50843) hacc
  · unfold seg52BlindDeltaX10 seg52BlindDeltaY10
    linear_combination r6451
  · unfold seg52BlindDeltaX10 seg52BlindDeltaY10
    linear_combination r6452
  · unfold seg52BlindDeltaX10 seg52BlindDeltaY10
    linear_combination r6453
  · unfold seg52BlindDeltaX10
    linear_combination r6454
  · unfold seg52BlindDeltaY10
    linear_combination r6455
  · linear_combination r6160

theorem seg52Blind_rows12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6161 rho ∧ Seg52.relationRow6456 rho ∧ Seg52.relationRow6457 rho ∧ Seg52.relationRow6458 rho ∧ Seg52.relationRow6459 rho ∧ Seg52.relationRow6460 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, r6161, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6456, r6457, r6458, r6459, r6460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6161, r6456, r6457, r6458, r6459, r6460⟩

theorem seg52Blind_rung12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50550 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 12)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      12 (Bool.toZMod bit) (seg52BlindAccState rho 12)
      (seg52BlindAccState rho 13) := by
  obtain ⟨r6161, r6456, r6457, r6458, r6459, r6460⟩ := seg52Blind_rows12 rho h
  unfold Seg52.relationRow6161 at r6161

  unfold Seg52.relationRow6456 at r6456

  unfold Seg52.relationRow6457 at r6457

  unfold Seg52.relationRow6458 at r6458

  unfold Seg52.relationRow6459 at r6459

  unfold Seg52.relationRow6460 at r6460

  have hnextx : seg52BlindDeltaX12 rho =
      seg52BlindDeltaX11 rho + rho 50847 := by
    unfold seg52BlindDeltaX12 seg52BlindDeltaX11
    ring

  have hnexty : seg52BlindDeltaY12 rho =
      seg52BlindDeltaY11 rho + rho 50848 := by
    unfold seg52BlindDeltaY12 seg52BlindDeltaY11
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 12
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX11 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY11 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX12 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY12 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung12_wide (rho 50538) (rho 50550) (seg52BlindDeltaX11 rho) (seg52BlindDeltaY11 rho) (rho 50844) (rho 50845) (rho 50846) (rho 50847) (rho 50848) hacc
  · unfold seg52BlindDeltaX11 seg52BlindDeltaY11
    linear_combination r6456
  · unfold seg52BlindDeltaX11 seg52BlindDeltaY11
    linear_combination r6457
  · unfold seg52BlindDeltaX11 seg52BlindDeltaY11
    linear_combination r6458
  · unfold seg52BlindDeltaX11
    linear_combination r6459
  · unfold seg52BlindDeltaY11
    linear_combination r6460
  · linear_combination r6161

theorem seg52Blind_rows13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6162 rho ∧ Seg52.relationRow6461 rho ∧ Seg52.relationRow6462 rho ∧ Seg52.relationRow6463 rho ∧ Seg52.relationRow6464 rho ∧ Seg52.relationRow6465 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, r6162, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6461, r6462, r6463, r6464, r6465, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6162, r6461, r6462, r6463, r6464, r6465⟩

theorem seg52Blind_rung13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50551 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 13)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      13 (Bool.toZMod bit) (seg52BlindAccState rho 13)
      (seg52BlindAccState rho 14) := by
  obtain ⟨r6162, r6461, r6462, r6463, r6464, r6465⟩ := seg52Blind_rows13 rho h
  unfold Seg52.relationRow6162 at r6162

  unfold Seg52.relationRow6461 at r6461

  unfold Seg52.relationRow6462 at r6462

  unfold Seg52.relationRow6463 at r6463

  unfold Seg52.relationRow6464 at r6464

  unfold Seg52.relationRow6465 at r6465

  have hnextx : seg52BlindDeltaX13 rho =
      seg52BlindDeltaX12 rho + rho 50852 := by
    unfold seg52BlindDeltaX13 seg52BlindDeltaX12
    ring

  have hnexty : seg52BlindDeltaY13 rho =
      seg52BlindDeltaY12 rho + rho 50853 := by
    unfold seg52BlindDeltaY13 seg52BlindDeltaY12
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 13
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX12 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY12 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX13 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY13 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung13_wide (rho 50538) (rho 50551) (seg52BlindDeltaX12 rho) (seg52BlindDeltaY12 rho) (rho 50849) (rho 50850) (rho 50851) (rho 50852) (rho 50853) hacc
  · unfold seg52BlindDeltaX12 seg52BlindDeltaY12
    linear_combination r6461
  · unfold seg52BlindDeltaX12 seg52BlindDeltaY12
    linear_combination r6462
  · unfold seg52BlindDeltaX12 seg52BlindDeltaY12
    linear_combination r6463
  · unfold seg52BlindDeltaX12
    linear_combination r6464
  · unfold seg52BlindDeltaY12
    linear_combination r6465
  · linear_combination r6162

theorem seg52Blind_rows14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6163 rho ∧ Seg52.relationRow6466 rho ∧ Seg52.relationRow6467 rho ∧ Seg52.relationRow6468 rho ∧ Seg52.relationRow6469 rho ∧ Seg52.relationRow6470 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, r6163, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6466, r6467, r6468, r6469, r6470, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6163, r6466, r6467, r6468, r6469, r6470⟩

theorem seg52Blind_rung14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50552 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 14)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      14 (Bool.toZMod bit) (seg52BlindAccState rho 14)
      (seg52BlindAccState rho 15) := by
  obtain ⟨r6163, r6466, r6467, r6468, r6469, r6470⟩ := seg52Blind_rows14 rho h
  unfold Seg52.relationRow6163 at r6163

  unfold Seg52.relationRow6466 at r6466

  unfold Seg52.relationRow6467 at r6467

  unfold Seg52.relationRow6468 at r6468

  unfold Seg52.relationRow6469 at r6469

  unfold Seg52.relationRow6470 at r6470

  have hnextx : seg52BlindDeltaX14 rho =
      seg52BlindDeltaX13 rho + rho 50857 := by
    unfold seg52BlindDeltaX14 seg52BlindDeltaX13
    ring

  have hnexty : seg52BlindDeltaY14 rho =
      seg52BlindDeltaY13 rho + rho 50858 := by
    unfold seg52BlindDeltaY14 seg52BlindDeltaY13
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 14
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX13 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY13 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX14 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY14 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung14_wide (rho 50538) (rho 50552) (seg52BlindDeltaX13 rho) (seg52BlindDeltaY13 rho) (rho 50854) (rho 50855) (rho 50856) (rho 50857) (rho 50858) hacc
  · unfold seg52BlindDeltaX13 seg52BlindDeltaY13
    linear_combination r6466
  · unfold seg52BlindDeltaX13 seg52BlindDeltaY13
    linear_combination r6467
  · unfold seg52BlindDeltaX13 seg52BlindDeltaY13
    linear_combination r6468
  · unfold seg52BlindDeltaX13
    linear_combination r6469
  · unfold seg52BlindDeltaY13
    linear_combination r6470
  · linear_combination r6163

theorem seg52Blind_rows15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6164 rho ∧ Seg52.relationRow6471 rho ∧ Seg52.relationRow6472 rho ∧ Seg52.relationRow6473 rho ∧ Seg52.relationRow6474 rho ∧ Seg52.relationRow6475 rho := by
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

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, r6164, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6471, r6472, r6473, r6474, r6475, _, _, _, _⟩

  exact ⟨r6164, r6471, r6472, r6473, r6474, r6475⟩

theorem seg52Blind_rung15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50553 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 15)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      15 (Bool.toZMod bit) (seg52BlindAccState rho 15)
      (seg52BlindAccState rho 16) := by
  obtain ⟨r6164, r6471, r6472, r6473, r6474, r6475⟩ := seg52Blind_rows15 rho h
  unfold Seg52.relationRow6164 at r6164

  unfold Seg52.relationRow6471 at r6471

  unfold Seg52.relationRow6472 at r6472

  unfold Seg52.relationRow6473 at r6473

  unfold Seg52.relationRow6474 at r6474

  unfold Seg52.relationRow6475 at r6475

  have hnextx : seg52BlindDeltaX15 rho =
      seg52BlindDeltaX14 rho + rho 50862 := by
    unfold seg52BlindDeltaX15 seg52BlindDeltaX14
    ring

  have hnexty : seg52BlindDeltaY15 rho =
      seg52BlindDeltaY14 rho + rho 50863 := by
    unfold seg52BlindDeltaY15 seg52BlindDeltaY14
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 15
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX14 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY14 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX15 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY15 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung15_wide (rho 50538) (rho 50553) (seg52BlindDeltaX14 rho) (seg52BlindDeltaY14 rho) (rho 50859) (rho 50860) (rho 50861) (rho 50862) (rho 50863) hacc
  · unfold seg52BlindDeltaX14 seg52BlindDeltaY14
    linear_combination r6471
  · unfold seg52BlindDeltaX14 seg52BlindDeltaY14
    linear_combination r6472
  · unfold seg52BlindDeltaX14 seg52BlindDeltaY14
    linear_combination r6473
  · unfold seg52BlindDeltaX14
    linear_combination r6474
  · unfold seg52BlindDeltaY14
    linear_combination r6475
  · linear_combination r6164

theorem seg52Blind_rows16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6165 rho ∧ Seg52.relationRow6476 rho ∧ Seg52.relationRow6477 rho ∧ Seg52.relationRow6478 rho ∧ Seg52.relationRow6479 rho ∧ Seg52.relationRow6480 rho := by
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

    p80, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, r6165, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6476, r6477, r6478, r6479⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨r6480, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6165, r6476, r6477, r6478, r6479, r6480⟩

theorem seg52Blind_rung16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50554 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 16)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      16 (Bool.toZMod bit) (seg52BlindAccState rho 16)
      (seg52BlindAccState rho 17) := by
  obtain ⟨r6165, r6476, r6477, r6478, r6479, r6480⟩ := seg52Blind_rows16 rho h
  unfold Seg52.relationRow6165 at r6165

  unfold Seg52.relationRow6476 at r6476

  unfold Seg52.relationRow6477 at r6477

  unfold Seg52.relationRow6478 at r6478

  unfold Seg52.relationRow6479 at r6479

  unfold Seg52.relationRow6480 at r6480

  have hnextx : seg52BlindDeltaX16 rho =
      seg52BlindDeltaX15 rho + rho 50867 := by
    unfold seg52BlindDeltaX16 seg52BlindDeltaX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 50792 5]

    ring

  have hnexty : seg52BlindDeltaY16 rho =
      seg52BlindDeltaY15 rho + rho 50868 := by
    unfold seg52BlindDeltaY16 seg52BlindDeltaY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 50793 5]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 16
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX15 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY15 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX16 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY16 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung16_wide (rho 50538) (rho 50554) (seg52BlindDeltaX15 rho) (seg52BlindDeltaY15 rho) (rho 50864) (rho 50865) (rho 50866) (rho 50867) (rho 50868) hacc
  · unfold seg52BlindDeltaX15 seg52BlindDeltaY15
    linear_combination r6476
  · unfold seg52BlindDeltaX15 seg52BlindDeltaY15
    linear_combination r6477
  · unfold seg52BlindDeltaX15 seg52BlindDeltaY15
    linear_combination r6478
  · unfold seg52BlindDeltaX15
    linear_combination r6479
  · unfold seg52BlindDeltaY15
    linear_combination r6480
  · linear_combination r6165

theorem seg52Blind_rows17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6166 rho ∧ Seg52.relationRow6481 rho ∧ Seg52.relationRow6482 rho ∧ Seg52.relationRow6483 rho ∧ Seg52.relationRow6484 rho ∧ Seg52.relationRow6485 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, r6166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, r6481, r6482, r6483, r6484, r6485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6166, r6481, r6482, r6483, r6484, r6485⟩

theorem seg52Blind_rung17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50555 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 17)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      17 (Bool.toZMod bit) (seg52BlindAccState rho 17)
      (seg52BlindAccState rho 18) := by
  obtain ⟨r6166, r6481, r6482, r6483, r6484, r6485⟩ := seg52Blind_rows17 rho h
  unfold Seg52.relationRow6166 at r6166

  unfold Seg52.relationRow6481 at r6481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6481

  unfold Seg52.relationRow6482 at r6482

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6482

  unfold Seg52.relationRow6483 at r6483

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6483

  unfold Seg52.relationRow6484 at r6484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6484

  unfold Seg52.relationRow6485 at r6485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6485

  have hnextx : seg52BlindDeltaX17 rho =
      seg52BlindDeltaX16 rho + rho 50872 := by
    unfold seg52BlindDeltaX17 seg52BlindDeltaX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 16]

    ring

  have hnexty : seg52BlindDeltaY17 rho =
      seg52BlindDeltaY16 rho + rho 50873 := by
    unfold seg52BlindDeltaY17 seg52BlindDeltaY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 16]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 17
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX16 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY16 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX17 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY17 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung17_wide (rho 50538) (rho 50555) (seg52BlindDeltaX16 rho) (seg52BlindDeltaY16 rho) (rho 50869) (rho 50870) (rho 50871) (rho 50872) (rho 50873) hacc
  · unfold seg52BlindDeltaX16 seg52BlindDeltaY16
    linear_combination r6481
  · unfold seg52BlindDeltaX16 seg52BlindDeltaY16
    linear_combination r6482
  · unfold seg52BlindDeltaX16 seg52BlindDeltaY16
    linear_combination r6483
  · unfold seg52BlindDeltaX16
    linear_combination r6484
  · unfold seg52BlindDeltaY16
    linear_combination r6485
  · linear_combination r6166

theorem seg52Blind_rows18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6167 rho ∧ Seg52.relationRow6486 rho ∧ Seg52.relationRow6487 rho ∧ Seg52.relationRow6488 rho ∧ Seg52.relationRow6489 rho ∧ Seg52.relationRow6490 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, r6167, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, r6486, r6487, r6488, r6489, r6490, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6167, r6486, r6487, r6488, r6489, r6490⟩

theorem seg52Blind_rung18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50556 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 18)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      18 (Bool.toZMod bit) (seg52BlindAccState rho 18)
      (seg52BlindAccState rho 19) := by
  obtain ⟨r6167, r6486, r6487, r6488, r6489, r6490⟩ := seg52Blind_rows18 rho h
  unfold Seg52.relationRow6167 at r6167

  unfold Seg52.relationRow6486 at r6486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6486

  unfold Seg52.relationRow6487 at r6487

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6487

  unfold Seg52.relationRow6488 at r6488

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6488

  unfold Seg52.relationRow6489 at r6489

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6489

  unfold Seg52.relationRow6490 at r6490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6490

  have hnextx : seg52BlindDeltaX18 rho =
      seg52BlindDeltaX17 rho + rho 50877 := by
    unfold seg52BlindDeltaX18 seg52BlindDeltaX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 17]

    ring

  have hnexty : seg52BlindDeltaY18 rho =
      seg52BlindDeltaY17 rho + rho 50878 := by
    unfold seg52BlindDeltaY18 seg52BlindDeltaY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 17]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 18
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX17 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY17 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX18 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY18 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung18_wide (rho 50538) (rho 50556) (seg52BlindDeltaX17 rho) (seg52BlindDeltaY17 rho) (rho 50874) (rho 50875) (rho 50876) (rho 50877) (rho 50878) hacc
  · unfold seg52BlindDeltaX17 seg52BlindDeltaY17
    linear_combination r6486
  · unfold seg52BlindDeltaX17 seg52BlindDeltaY17
    linear_combination r6487
  · unfold seg52BlindDeltaX17 seg52BlindDeltaY17
    linear_combination r6488
  · unfold seg52BlindDeltaX17
    linear_combination r6489
  · unfold seg52BlindDeltaY17
    linear_combination r6490
  · linear_combination r6167

theorem seg52Blind_rows19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6168 rho ∧ Seg52.relationRow6491 rho ∧ Seg52.relationRow6492 rho ∧ Seg52.relationRow6493 rho ∧ Seg52.relationRow6494 rho ∧ Seg52.relationRow6495 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, r6168, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6491, r6492, r6493, r6494, r6495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6168, r6491, r6492, r6493, r6494, r6495⟩

theorem seg52Blind_rung19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50557 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 19)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      19 (Bool.toZMod bit) (seg52BlindAccState rho 19)
      (seg52BlindAccState rho 20) := by
  obtain ⟨r6168, r6491, r6492, r6493, r6494, r6495⟩ := seg52Blind_rows19 rho h
  unfold Seg52.relationRow6168 at r6168

  unfold Seg52.relationRow6491 at r6491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6491

  unfold Seg52.relationRow6492 at r6492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6492

  unfold Seg52.relationRow6493 at r6493

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6493

  unfold Seg52.relationRow6494 at r6494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6494

  unfold Seg52.relationRow6495 at r6495

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6495

  have hnextx : seg52BlindDeltaX19 rho =
      seg52BlindDeltaX18 rho + rho 50882 := by
    unfold seg52BlindDeltaX19 seg52BlindDeltaX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 18]

    ring

  have hnexty : seg52BlindDeltaY19 rho =
      seg52BlindDeltaY18 rho + rho 50883 := by
    unfold seg52BlindDeltaY19 seg52BlindDeltaY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 18]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 19
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX18 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY18 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX19 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY19 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung19_wide (rho 50538) (rho 50557) (seg52BlindDeltaX18 rho) (seg52BlindDeltaY18 rho) (rho 50879) (rho 50880) (rho 50881) (rho 50882) (rho 50883) hacc
  · unfold seg52BlindDeltaX18 seg52BlindDeltaY18
    linear_combination r6491
  · unfold seg52BlindDeltaX18 seg52BlindDeltaY18
    linear_combination r6492
  · unfold seg52BlindDeltaX18 seg52BlindDeltaY18
    linear_combination r6493
  · unfold seg52BlindDeltaX18
    linear_combination r6494
  · unfold seg52BlindDeltaY18
    linear_combination r6495
  · linear_combination r6168

theorem seg52Blind_rows20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6169 rho ∧ Seg52.relationRow6496 rho ∧ Seg52.relationRow6497 rho ∧ Seg52.relationRow6498 rho ∧ Seg52.relationRow6499 rho ∧ Seg52.relationRow6500 rho := by
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

    _, p81, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, r6169, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6496, r6497, r6498, r6499, r6500, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6169, r6496, r6497, r6498, r6499, r6500⟩

theorem seg52Blind_rung20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50558 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 20)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      20 (Bool.toZMod bit) (seg52BlindAccState rho 20)
      (seg52BlindAccState rho 21) := by
  obtain ⟨r6169, r6496, r6497, r6498, r6499, r6500⟩ := seg52Blind_rows20 rho h
  unfold Seg52.relationRow6169 at r6169

  unfold Seg52.relationRow6496 at r6496

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6496

  unfold Seg52.relationRow6497 at r6497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6497

  unfold Seg52.relationRow6498 at r6498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6498

  unfold Seg52.relationRow6499 at r6499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6499

  unfold Seg52.relationRow6500 at r6500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6500

  have hnextx : seg52BlindDeltaX20 rho =
      seg52BlindDeltaX19 rho + rho 50887 := by
    unfold seg52BlindDeltaX20 seg52BlindDeltaX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50792 5 19]

    ring

  have hnexty : seg52BlindDeltaY20 rho =
      seg52BlindDeltaY19 rho + rho 50888 := by
    unfold seg52BlindDeltaY20 seg52BlindDeltaY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 50793 5 19]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 20
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX19 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY19 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX20 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY20 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung20_wide (rho 50538) (rho 50558) (seg52BlindDeltaX19 rho) (seg52BlindDeltaY19 rho) (rho 50884) (rho 50885) (rho 50886) (rho 50887) (rho 50888) hacc
  · unfold seg52BlindDeltaX19 seg52BlindDeltaY19
    linear_combination r6496
  · unfold seg52BlindDeltaX19 seg52BlindDeltaY19
    linear_combination r6497
  · unfold seg52BlindDeltaX19 seg52BlindDeltaY19
    linear_combination r6498
  · unfold seg52BlindDeltaX19
    linear_combination r6499
  · unfold seg52BlindDeltaY19
    linear_combination r6500
  · linear_combination r6169

theorem seg52Blind_hstep_c1 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 21 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc
  · exact seg52Blind_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc
  · exact seg52Blind_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc
  · exact seg52Blind_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc
  · exact seg52Blind_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc
  · exact seg52Blind_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc
  · exact seg52Blind_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc
  · exact seg52Blind_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc
  · exact seg52Blind_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc
  · exact seg52Blind_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

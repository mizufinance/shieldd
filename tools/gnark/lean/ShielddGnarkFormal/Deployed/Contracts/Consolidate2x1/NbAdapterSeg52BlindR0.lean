import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6150 rho ∧ Seg52.relationRow6401 rho ∧ Seg52.relationRow6402 rho ∧ Seg52.relationRow6403 rho ∧ Seg52.relationRow6404 rho ∧ Seg52.relationRow6405 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6150, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, r6401, r6402, r6403, r6404, r6405, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6150, r6401, r6402, r6403, r6404, r6405⟩

theorem seg52Blind_rung1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50539 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 1)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      1 (Bool.toZMod bit) (seg52BlindAccState rho 1)
      (seg52BlindAccState rho 2) := by
  obtain ⟨r6150, r6401, r6402, r6403, r6404, r6405⟩ := seg52Blind_rows1 rho h
  unfold Seg52.relationRow6150 at r6150

  unfold Seg52.relationRow6401 at r6401

  unfold Seg52.relationRow6402 at r6402

  unfold Seg52.relationRow6403 at r6403

  unfold Seg52.relationRow6404 at r6404

  unfold Seg52.relationRow6405 at r6405

  have hnextx : seg52BlindDeltaX1 rho =
      seg52BlindDeltaX0 rho + rho 50792 := by
    unfold seg52BlindDeltaX1 seg52BlindDeltaX0
    ring

  have hnexty : seg52BlindDeltaY1 rho =
      seg52BlindDeltaY0 rho + rho 50793 := by
    unfold seg52BlindDeltaY1 seg52BlindDeltaY0
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 1
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX1 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY1 rho : Seg52.F)⟩
  rw [← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung1 (rho 50538) (rho 50539) (rho 50789) (rho 50790) (rho 50791) (rho 50792) (rho 50793) hacc
  · linear_combination r6401
  · linear_combination r6402
  · linear_combination r6403
  · linear_combination r6404
  · linear_combination r6405
  · linear_combination r6150

theorem seg52Blind_rows2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6151 rho ∧ Seg52.relationRow6406 rho ∧ Seg52.relationRow6407 rho ∧ Seg52.relationRow6408 rho ∧ Seg52.relationRow6409 rho ∧ Seg52.relationRow6410 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6151, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, r6406, r6407, r6408, r6409, r6410, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6151, r6406, r6407, r6408, r6409, r6410⟩

theorem seg52Blind_rung2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50540 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 2)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      2 (Bool.toZMod bit) (seg52BlindAccState rho 2)
      (seg52BlindAccState rho 3) := by
  obtain ⟨r6151, r6406, r6407, r6408, r6409, r6410⟩ := seg52Blind_rows2 rho h
  unfold Seg52.relationRow6151 at r6151

  unfold Seg52.relationRow6406 at r6406

  unfold Seg52.relationRow6407 at r6407

  unfold Seg52.relationRow6408 at r6408

  unfold Seg52.relationRow6409 at r6409

  unfold Seg52.relationRow6410 at r6410

  have hnextx : seg52BlindDeltaX2 rho =
      seg52BlindDeltaX1 rho + rho 50797 := by
    unfold seg52BlindDeltaX2 seg52BlindDeltaX1
    ring

  have hnexty : seg52BlindDeltaY2 rho =
      seg52BlindDeltaY1 rho + rho 50798 := by
    unfold seg52BlindDeltaY2 seg52BlindDeltaY1
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 2
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX1 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY1 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX2 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY2 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung2_wide (rho 50538) (rho 50540) (seg52BlindDeltaX1 rho) (seg52BlindDeltaY1 rho) (rho 50794) (rho 50795) (rho 50796) (rho 50797) (rho 50798) hacc
  · unfold seg52BlindDeltaX1 seg52BlindDeltaY1
    linear_combination r6406
  · unfold seg52BlindDeltaX1 seg52BlindDeltaY1
    linear_combination r6407
  · unfold seg52BlindDeltaX1 seg52BlindDeltaY1
    linear_combination r6408
  · unfold seg52BlindDeltaX1
    linear_combination r6409
  · unfold seg52BlindDeltaY1
    linear_combination r6410
  · linear_combination r6151

theorem seg52Blind_rows3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6152 rho ∧ Seg52.relationRow6411 rho ∧ Seg52.relationRow6412 rho ∧ Seg52.relationRow6413 rho ∧ Seg52.relationRow6414 rho ∧ Seg52.relationRow6415 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6152, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6411, r6412, r6413, r6414, r6415, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6152, r6411, r6412, r6413, r6414, r6415⟩

theorem seg52Blind_rung3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50541 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 3)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      3 (Bool.toZMod bit) (seg52BlindAccState rho 3)
      (seg52BlindAccState rho 4) := by
  obtain ⟨r6152, r6411, r6412, r6413, r6414, r6415⟩ := seg52Blind_rows3 rho h
  unfold Seg52.relationRow6152 at r6152

  unfold Seg52.relationRow6411 at r6411

  unfold Seg52.relationRow6412 at r6412

  unfold Seg52.relationRow6413 at r6413

  unfold Seg52.relationRow6414 at r6414

  unfold Seg52.relationRow6415 at r6415

  have hnextx : seg52BlindDeltaX3 rho =
      seg52BlindDeltaX2 rho + rho 50802 := by
    unfold seg52BlindDeltaX3 seg52BlindDeltaX2
    ring

  have hnexty : seg52BlindDeltaY3 rho =
      seg52BlindDeltaY2 rho + rho 50803 := by
    unfold seg52BlindDeltaY3 seg52BlindDeltaY2
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 3
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX2 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY2 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX3 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY3 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung3_wide (rho 50538) (rho 50541) (seg52BlindDeltaX2 rho) (seg52BlindDeltaY2 rho) (rho 50799) (rho 50800) (rho 50801) (rho 50802) (rho 50803) hacc
  · unfold seg52BlindDeltaX2 seg52BlindDeltaY2
    linear_combination r6411
  · unfold seg52BlindDeltaX2 seg52BlindDeltaY2
    linear_combination r6412
  · unfold seg52BlindDeltaX2 seg52BlindDeltaY2
    linear_combination r6413
  · unfold seg52BlindDeltaX2
    linear_combination r6414
  · unfold seg52BlindDeltaY2
    linear_combination r6415
  · linear_combination r6152

theorem seg52Blind_rows4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6153 rho ∧ Seg52.relationRow6416 rho ∧ Seg52.relationRow6417 rho ∧ Seg52.relationRow6418 rho ∧ Seg52.relationRow6419 rho ∧ Seg52.relationRow6420 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6153, _, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6416, r6417, r6418, r6419, r6420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6153, r6416, r6417, r6418, r6419, r6420⟩

theorem seg52Blind_rung4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50542 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 4)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      4 (Bool.toZMod bit) (seg52BlindAccState rho 4)
      (seg52BlindAccState rho 5) := by
  obtain ⟨r6153, r6416, r6417, r6418, r6419, r6420⟩ := seg52Blind_rows4 rho h
  unfold Seg52.relationRow6153 at r6153

  unfold Seg52.relationRow6416 at r6416

  unfold Seg52.relationRow6417 at r6417

  unfold Seg52.relationRow6418 at r6418

  unfold Seg52.relationRow6419 at r6419

  unfold Seg52.relationRow6420 at r6420

  have hnextx : seg52BlindDeltaX4 rho =
      seg52BlindDeltaX3 rho + rho 50807 := by
    unfold seg52BlindDeltaX4 seg52BlindDeltaX3
    ring

  have hnexty : seg52BlindDeltaY4 rho =
      seg52BlindDeltaY3 rho + rho 50808 := by
    unfold seg52BlindDeltaY4 seg52BlindDeltaY3
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 4
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX3 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY3 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX4 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY4 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung4_wide (rho 50538) (rho 50542) (seg52BlindDeltaX3 rho) (seg52BlindDeltaY3 rho) (rho 50804) (rho 50805) (rho 50806) (rho 50807) (rho 50808) hacc
  · unfold seg52BlindDeltaX3 seg52BlindDeltaY3
    linear_combination r6416
  · unfold seg52BlindDeltaX3 seg52BlindDeltaY3
    linear_combination r6417
  · unfold seg52BlindDeltaX3 seg52BlindDeltaY3
    linear_combination r6418
  · unfold seg52BlindDeltaX3
    linear_combination r6419
  · unfold seg52BlindDeltaY3
    linear_combination r6420
  · linear_combination r6153

theorem seg52Blind_rows5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6154 rho ∧ Seg52.relationRow6421 rho ∧ Seg52.relationRow6422 rho ∧ Seg52.relationRow6423 rho ∧ Seg52.relationRow6424 rho ∧ Seg52.relationRow6425 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6154, _, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6421, r6422, r6423, r6424, r6425, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6154, r6421, r6422, r6423, r6424, r6425⟩

theorem seg52Blind_rung5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50543 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 5)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      5 (Bool.toZMod bit) (seg52BlindAccState rho 5)
      (seg52BlindAccState rho 6) := by
  obtain ⟨r6154, r6421, r6422, r6423, r6424, r6425⟩ := seg52Blind_rows5 rho h
  unfold Seg52.relationRow6154 at r6154

  unfold Seg52.relationRow6421 at r6421

  unfold Seg52.relationRow6422 at r6422

  unfold Seg52.relationRow6423 at r6423

  unfold Seg52.relationRow6424 at r6424

  unfold Seg52.relationRow6425 at r6425

  have hnextx : seg52BlindDeltaX5 rho =
      seg52BlindDeltaX4 rho + rho 50812 := by
    unfold seg52BlindDeltaX5 seg52BlindDeltaX4
    ring

  have hnexty : seg52BlindDeltaY5 rho =
      seg52BlindDeltaY4 rho + rho 50813 := by
    unfold seg52BlindDeltaY5 seg52BlindDeltaY4
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 5
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX4 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY4 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX5 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY5 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung5_wide (rho 50538) (rho 50543) (seg52BlindDeltaX4 rho) (seg52BlindDeltaY4 rho) (rho 50809) (rho 50810) (rho 50811) (rho 50812) (rho 50813) hacc
  · unfold seg52BlindDeltaX4 seg52BlindDeltaY4
    linear_combination r6421
  · unfold seg52BlindDeltaX4 seg52BlindDeltaY4
    linear_combination r6422
  · unfold seg52BlindDeltaX4 seg52BlindDeltaY4
    linear_combination r6423
  · unfold seg52BlindDeltaX4
    linear_combination r6424
  · unfold seg52BlindDeltaY4
    linear_combination r6425
  · linear_combination r6154

theorem seg52Blind_rows6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6155 rho ∧ Seg52.relationRow6426 rho ∧ Seg52.relationRow6427 rho ∧ Seg52.relationRow6428 rho ∧ Seg52.relationRow6429 rho ∧ Seg52.relationRow6430 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6155, _, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6426, r6427, r6428, r6429, r6430, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6155, r6426, r6427, r6428, r6429, r6430⟩

theorem seg52Blind_rung6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50544 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 6)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      6 (Bool.toZMod bit) (seg52BlindAccState rho 6)
      (seg52BlindAccState rho 7) := by
  obtain ⟨r6155, r6426, r6427, r6428, r6429, r6430⟩ := seg52Blind_rows6 rho h
  unfold Seg52.relationRow6155 at r6155

  unfold Seg52.relationRow6426 at r6426

  unfold Seg52.relationRow6427 at r6427

  unfold Seg52.relationRow6428 at r6428

  unfold Seg52.relationRow6429 at r6429

  unfold Seg52.relationRow6430 at r6430

  have hnextx : seg52BlindDeltaX6 rho =
      seg52BlindDeltaX5 rho + rho 50817 := by
    unfold seg52BlindDeltaX6 seg52BlindDeltaX5
    ring

  have hnexty : seg52BlindDeltaY6 rho =
      seg52BlindDeltaY5 rho + rho 50818 := by
    unfold seg52BlindDeltaY6 seg52BlindDeltaY5
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 6
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX5 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY5 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX6 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY6 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung6_wide (rho 50538) (rho 50544) (seg52BlindDeltaX5 rho) (seg52BlindDeltaY5 rho) (rho 50814) (rho 50815) (rho 50816) (rho 50817) (rho 50818) hacc
  · unfold seg52BlindDeltaX5 seg52BlindDeltaY5
    linear_combination r6426
  · unfold seg52BlindDeltaX5 seg52BlindDeltaY5
    linear_combination r6427
  · unfold seg52BlindDeltaX5 seg52BlindDeltaY5
    linear_combination r6428
  · unfold seg52BlindDeltaX5
    linear_combination r6429
  · unfold seg52BlindDeltaY5
    linear_combination r6430
  · linear_combination r6155

theorem seg52Blind_rows7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6156 rho ∧ Seg52.relationRow6431 rho ∧ Seg52.relationRow6432 rho ∧ Seg52.relationRow6433 rho ∧ Seg52.relationRow6434 rho ∧ Seg52.relationRow6435 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6156, _, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6431, r6432, r6433, r6434, r6435, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6156, r6431, r6432, r6433, r6434, r6435⟩

theorem seg52Blind_rung7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50545 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 7)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      7 (Bool.toZMod bit) (seg52BlindAccState rho 7)
      (seg52BlindAccState rho 8) := by
  obtain ⟨r6156, r6431, r6432, r6433, r6434, r6435⟩ := seg52Blind_rows7 rho h
  unfold Seg52.relationRow6156 at r6156

  unfold Seg52.relationRow6431 at r6431

  unfold Seg52.relationRow6432 at r6432

  unfold Seg52.relationRow6433 at r6433

  unfold Seg52.relationRow6434 at r6434

  unfold Seg52.relationRow6435 at r6435

  have hnextx : seg52BlindDeltaX7 rho =
      seg52BlindDeltaX6 rho + rho 50822 := by
    unfold seg52BlindDeltaX7 seg52BlindDeltaX6
    ring

  have hnexty : seg52BlindDeltaY7 rho =
      seg52BlindDeltaY6 rho + rho 50823 := by
    unfold seg52BlindDeltaY7 seg52BlindDeltaY6
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 7
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX6 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY6 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX7 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY7 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung7_wide (rho 50538) (rho 50545) (seg52BlindDeltaX6 rho) (seg52BlindDeltaY6 rho) (rho 50819) (rho 50820) (rho 50821) (rho 50822) (rho 50823) hacc
  · unfold seg52BlindDeltaX6 seg52BlindDeltaY6
    linear_combination r6431
  · unfold seg52BlindDeltaX6 seg52BlindDeltaY6
    linear_combination r6432
  · unfold seg52BlindDeltaX6 seg52BlindDeltaY6
    linear_combination r6433
  · unfold seg52BlindDeltaX6
    linear_combination r6434
  · unfold seg52BlindDeltaY6
    linear_combination r6435
  · linear_combination r6156

theorem seg52Blind_rows8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6157 rho ∧ Seg52.relationRow6436 rho ∧ Seg52.relationRow6437 rho ∧ Seg52.relationRow6438 rho ∧ Seg52.relationRow6439 rho ∧ Seg52.relationRow6440 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6157, _, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6436, r6437, r6438, r6439, r6440, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6157, r6436, r6437, r6438, r6439, r6440⟩

theorem seg52Blind_rung8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50546 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 8)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      8 (Bool.toZMod bit) (seg52BlindAccState rho 8)
      (seg52BlindAccState rho 9) := by
  obtain ⟨r6157, r6436, r6437, r6438, r6439, r6440⟩ := seg52Blind_rows8 rho h
  unfold Seg52.relationRow6157 at r6157

  unfold Seg52.relationRow6436 at r6436

  unfold Seg52.relationRow6437 at r6437

  unfold Seg52.relationRow6438 at r6438

  unfold Seg52.relationRow6439 at r6439

  unfold Seg52.relationRow6440 at r6440

  have hnextx : seg52BlindDeltaX8 rho =
      seg52BlindDeltaX7 rho + rho 50827 := by
    unfold seg52BlindDeltaX8 seg52BlindDeltaX7
    ring

  have hnexty : seg52BlindDeltaY8 rho =
      seg52BlindDeltaY7 rho + rho 50828 := by
    unfold seg52BlindDeltaY8 seg52BlindDeltaY7
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 8
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX7 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY7 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX8 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY8 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung8_wide (rho 50538) (rho 50546) (seg52BlindDeltaX7 rho) (seg52BlindDeltaY7 rho) (rho 50824) (rho 50825) (rho 50826) (rho 50827) (rho 50828) hacc
  · unfold seg52BlindDeltaX7 seg52BlindDeltaY7
    linear_combination r6436
  · unfold seg52BlindDeltaX7 seg52BlindDeltaY7
    linear_combination r6437
  · unfold seg52BlindDeltaX7 seg52BlindDeltaY7
    linear_combination r6438
  · unfold seg52BlindDeltaX7
    linear_combination r6439
  · unfold seg52BlindDeltaY7
    linear_combination r6440
  · linear_combination r6157

theorem seg52Blind_rows9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6158 rho ∧ Seg52.relationRow6441 rho ∧ Seg52.relationRow6442 rho ∧ Seg52.relationRow6443 rho ∧ Seg52.relationRow6444 rho ∧ Seg52.relationRow6445 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6158, _⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6441, r6442, r6443, r6444, r6445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6158, r6441, r6442, r6443, r6444, r6445⟩

theorem seg52Blind_rung9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50547 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 9)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      9 (Bool.toZMod bit) (seg52BlindAccState rho 9)
      (seg52BlindAccState rho 10) := by
  obtain ⟨r6158, r6441, r6442, r6443, r6444, r6445⟩ := seg52Blind_rows9 rho h
  unfold Seg52.relationRow6158 at r6158

  unfold Seg52.relationRow6441 at r6441

  unfold Seg52.relationRow6442 at r6442

  unfold Seg52.relationRow6443 at r6443

  unfold Seg52.relationRow6444 at r6444

  unfold Seg52.relationRow6445 at r6445

  have hnextx : seg52BlindDeltaX9 rho =
      seg52BlindDeltaX8 rho + rho 50832 := by
    unfold seg52BlindDeltaX9 seg52BlindDeltaX8
    ring

  have hnexty : seg52BlindDeltaY9 rho =
      seg52BlindDeltaY8 rho + rho 50833 := by
    unfold seg52BlindDeltaY9 seg52BlindDeltaY8
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 9
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX8 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY8 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX9 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY9 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung9_wide (rho 50538) (rho 50547) (seg52BlindDeltaX8 rho) (seg52BlindDeltaY8 rho) (rho 50829) (rho 50830) (rho 50831) (rho 50832) (rho 50833) hacc
  · unfold seg52BlindDeltaX8 seg52BlindDeltaY8
    linear_combination r6441
  · unfold seg52BlindDeltaX8 seg52BlindDeltaY8
    linear_combination r6442
  · unfold seg52BlindDeltaX8 seg52BlindDeltaY8
    linear_combination r6443
  · unfold seg52BlindDeltaX8
    linear_combination r6444
  · unfold seg52BlindDeltaY8
    linear_combination r6445
  · linear_combination r6158

theorem seg52Blind_rows10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6159 rho ∧ Seg52.relationRow6446 rho ∧ Seg52.relationRow6447 rho ∧ Seg52.relationRow6448 rho ∧ Seg52.relationRow6449 rho ∧ Seg52.relationRow6450 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6159⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6446, r6447, r6448, r6449, r6450, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6159, r6446, r6447, r6448, r6449, r6450⟩

theorem seg52Blind_rung10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 50548 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 10)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      10 (Bool.toZMod bit) (seg52BlindAccState rho 10)
      (seg52BlindAccState rho 11) := by
  obtain ⟨r6159, r6446, r6447, r6448, r6449, r6450⟩ := seg52Blind_rows10 rho h
  unfold Seg52.relationRow6159 at r6159

  unfold Seg52.relationRow6446 at r6446

  unfold Seg52.relationRow6447 at r6447

  unfold Seg52.relationRow6448 at r6448

  unfold Seg52.relationRow6449 at r6449

  unfold Seg52.relationRow6450 at r6450

  have hnextx : seg52BlindDeltaX10 rho =
      seg52BlindDeltaX9 rho + rho 50837 := by
    unfold seg52BlindDeltaX10 seg52BlindDeltaX9
    ring

  have hnexty : seg52BlindDeltaY10 rho =
      seg52BlindDeltaY9 rho + rho 50838 := by
    unfold seg52BlindDeltaY10 seg52BlindDeltaY9
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 10
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX9 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY9 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 50538 + seg52BlindDeltaX10 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 50538 + seg52BlindDeltaY10 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg52.rung10_wide (rho 50538) (rho 50548) (seg52BlindDeltaX9 rho) (seg52BlindDeltaY9 rho) (rho 50834) (rho 50835) (rho 50836) (rho 50837) (rho 50838) hacc
  · unfold seg52BlindDeltaX9 seg52BlindDeltaY9
    linear_combination r6446
  · unfold seg52BlindDeltaX9 seg52BlindDeltaY9
    linear_combination r6447
  · unfold seg52BlindDeltaX9 seg52BlindDeltaY9
    linear_combination r6448
  · unfold seg52BlindDeltaX9
    linear_combination r6449
  · unfold seg52BlindDeltaY9
    linear_combination r6450
  · linear_combination r6159

theorem seg52Blind_hstep_c0 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (50538 + i) = Bool.toZMod bits[i]!) :
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

import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6150 rho ∧ Seg48.relationRow6401 rho ∧ Seg48.relationRow6402 rho ∧ Seg48.relationRow6403 rho ∧ Seg48.relationRow6404 rho ∧ Seg48.relationRow6405 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6150, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, r6401, r6402, r6403, r6404, r6405, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6150, r6401, r6402, r6403, r6404, r6405⟩

theorem seg48Blind_rung1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38907 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 1)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      1 (Bool.toZMod bit) (seg48BlindAccState rho 1)
      (seg48BlindAccState rho 2) := by
  obtain ⟨r6150, r6401, r6402, r6403, r6404, r6405⟩ := seg48Blind_rows1 rho h
  unfold Seg48.relationRow6150 at r6150

  unfold Seg48.relationRow6401 at r6401

  unfold Seg48.relationRow6402 at r6402

  unfold Seg48.relationRow6403 at r6403

  unfold Seg48.relationRow6404 at r6404

  unfold Seg48.relationRow6405 at r6405

  have hnextx : seg48BlindDeltaX1 rho =
      seg48BlindDeltaX0 rho + rho 39160 := by
    unfold seg48BlindDeltaX1 seg48BlindDeltaX0
    ring

  have hnexty : seg48BlindDeltaY1 rho =
      seg48BlindDeltaY0 rho + rho 39161 := by
    unfold seg48BlindDeltaY1 seg48BlindDeltaY0
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 1
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX1 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY1 rho : Seg48.F)⟩
  rw [← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung1 (rho 38906) (rho 38907) (rho 39157) (rho 39158) (rho 39159) (rho 39160) (rho 39161) hacc
  · linear_combination r6401
  · linear_combination r6402
  · linear_combination r6403
  · linear_combination r6404
  · linear_combination r6405
  · linear_combination r6150

theorem seg48Blind_rows2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6151 rho ∧ Seg48.relationRow6406 rho ∧ Seg48.relationRow6407 rho ∧ Seg48.relationRow6408 rho ∧ Seg48.relationRow6409 rho ∧ Seg48.relationRow6410 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6151, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, r6406, r6407, r6408, r6409, r6410, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6151, r6406, r6407, r6408, r6409, r6410⟩

theorem seg48Blind_rung2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38908 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 2)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      2 (Bool.toZMod bit) (seg48BlindAccState rho 2)
      (seg48BlindAccState rho 3) := by
  obtain ⟨r6151, r6406, r6407, r6408, r6409, r6410⟩ := seg48Blind_rows2 rho h
  unfold Seg48.relationRow6151 at r6151

  unfold Seg48.relationRow6406 at r6406

  unfold Seg48.relationRow6407 at r6407

  unfold Seg48.relationRow6408 at r6408

  unfold Seg48.relationRow6409 at r6409

  unfold Seg48.relationRow6410 at r6410

  have hnextx : seg48BlindDeltaX2 rho =
      seg48BlindDeltaX1 rho + rho 39165 := by
    unfold seg48BlindDeltaX2 seg48BlindDeltaX1
    ring

  have hnexty : seg48BlindDeltaY2 rho =
      seg48BlindDeltaY1 rho + rho 39166 := by
    unfold seg48BlindDeltaY2 seg48BlindDeltaY1
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 2
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX1 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY1 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX2 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY2 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung2_wide (rho 38906) (rho 38908) (seg48BlindDeltaX1 rho) (seg48BlindDeltaY1 rho) (rho 39162) (rho 39163) (rho 39164) (rho 39165) (rho 39166) hacc
  · unfold seg48BlindDeltaX1 seg48BlindDeltaY1
    linear_combination r6406
  · unfold seg48BlindDeltaX1 seg48BlindDeltaY1
    linear_combination r6407
  · unfold seg48BlindDeltaX1 seg48BlindDeltaY1
    linear_combination r6408
  · unfold seg48BlindDeltaX1
    linear_combination r6409
  · unfold seg48BlindDeltaY1
    linear_combination r6410
  · linear_combination r6151

theorem seg48Blind_rows3 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6152 rho ∧ Seg48.relationRow6411 rho ∧ Seg48.relationRow6412 rho ∧ Seg48.relationRow6413 rho ∧ Seg48.relationRow6414 rho ∧ Seg48.relationRow6415 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6152, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6411, r6412, r6413, r6414, r6415, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6152, r6411, r6412, r6413, r6414, r6415⟩

theorem seg48Blind_rung3 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38909 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 3)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      3 (Bool.toZMod bit) (seg48BlindAccState rho 3)
      (seg48BlindAccState rho 4) := by
  obtain ⟨r6152, r6411, r6412, r6413, r6414, r6415⟩ := seg48Blind_rows3 rho h
  unfold Seg48.relationRow6152 at r6152

  unfold Seg48.relationRow6411 at r6411

  unfold Seg48.relationRow6412 at r6412

  unfold Seg48.relationRow6413 at r6413

  unfold Seg48.relationRow6414 at r6414

  unfold Seg48.relationRow6415 at r6415

  have hnextx : seg48BlindDeltaX3 rho =
      seg48BlindDeltaX2 rho + rho 39170 := by
    unfold seg48BlindDeltaX3 seg48BlindDeltaX2
    ring

  have hnexty : seg48BlindDeltaY3 rho =
      seg48BlindDeltaY2 rho + rho 39171 := by
    unfold seg48BlindDeltaY3 seg48BlindDeltaY2
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 3
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX2 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY2 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX3 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY3 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung3_wide (rho 38906) (rho 38909) (seg48BlindDeltaX2 rho) (seg48BlindDeltaY2 rho) (rho 39167) (rho 39168) (rho 39169) (rho 39170) (rho 39171) hacc
  · unfold seg48BlindDeltaX2 seg48BlindDeltaY2
    linear_combination r6411
  · unfold seg48BlindDeltaX2 seg48BlindDeltaY2
    linear_combination r6412
  · unfold seg48BlindDeltaX2 seg48BlindDeltaY2
    linear_combination r6413
  · unfold seg48BlindDeltaX2
    linear_combination r6414
  · unfold seg48BlindDeltaY2
    linear_combination r6415
  · linear_combination r6152

theorem seg48Blind_rows4 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6153 rho ∧ Seg48.relationRow6416 rho ∧ Seg48.relationRow6417 rho ∧ Seg48.relationRow6418 rho ∧ Seg48.relationRow6419 rho ∧ Seg48.relationRow6420 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6153, _, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6416, r6417, r6418, r6419, r6420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6153, r6416, r6417, r6418, r6419, r6420⟩

theorem seg48Blind_rung4 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38910 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 4)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      4 (Bool.toZMod bit) (seg48BlindAccState rho 4)
      (seg48BlindAccState rho 5) := by
  obtain ⟨r6153, r6416, r6417, r6418, r6419, r6420⟩ := seg48Blind_rows4 rho h
  unfold Seg48.relationRow6153 at r6153

  unfold Seg48.relationRow6416 at r6416

  unfold Seg48.relationRow6417 at r6417

  unfold Seg48.relationRow6418 at r6418

  unfold Seg48.relationRow6419 at r6419

  unfold Seg48.relationRow6420 at r6420

  have hnextx : seg48BlindDeltaX4 rho =
      seg48BlindDeltaX3 rho + rho 39175 := by
    unfold seg48BlindDeltaX4 seg48BlindDeltaX3
    ring

  have hnexty : seg48BlindDeltaY4 rho =
      seg48BlindDeltaY3 rho + rho 39176 := by
    unfold seg48BlindDeltaY4 seg48BlindDeltaY3
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 4
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX3 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY3 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX4 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY4 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung4_wide (rho 38906) (rho 38910) (seg48BlindDeltaX3 rho) (seg48BlindDeltaY3 rho) (rho 39172) (rho 39173) (rho 39174) (rho 39175) (rho 39176) hacc
  · unfold seg48BlindDeltaX3 seg48BlindDeltaY3
    linear_combination r6416
  · unfold seg48BlindDeltaX3 seg48BlindDeltaY3
    linear_combination r6417
  · unfold seg48BlindDeltaX3 seg48BlindDeltaY3
    linear_combination r6418
  · unfold seg48BlindDeltaX3
    linear_combination r6419
  · unfold seg48BlindDeltaY3
    linear_combination r6420
  · linear_combination r6153

theorem seg48Blind_rows5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6154 rho ∧ Seg48.relationRow6421 rho ∧ Seg48.relationRow6422 rho ∧ Seg48.relationRow6423 rho ∧ Seg48.relationRow6424 rho ∧ Seg48.relationRow6425 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6154, _, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6421, r6422, r6423, r6424, r6425, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6154, r6421, r6422, r6423, r6424, r6425⟩

theorem seg48Blind_rung5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38911 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 5)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      5 (Bool.toZMod bit) (seg48BlindAccState rho 5)
      (seg48BlindAccState rho 6) := by
  obtain ⟨r6154, r6421, r6422, r6423, r6424, r6425⟩ := seg48Blind_rows5 rho h
  unfold Seg48.relationRow6154 at r6154

  unfold Seg48.relationRow6421 at r6421

  unfold Seg48.relationRow6422 at r6422

  unfold Seg48.relationRow6423 at r6423

  unfold Seg48.relationRow6424 at r6424

  unfold Seg48.relationRow6425 at r6425

  have hnextx : seg48BlindDeltaX5 rho =
      seg48BlindDeltaX4 rho + rho 39180 := by
    unfold seg48BlindDeltaX5 seg48BlindDeltaX4
    ring

  have hnexty : seg48BlindDeltaY5 rho =
      seg48BlindDeltaY4 rho + rho 39181 := by
    unfold seg48BlindDeltaY5 seg48BlindDeltaY4
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 5
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX4 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY4 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX5 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY5 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung5_wide (rho 38906) (rho 38911) (seg48BlindDeltaX4 rho) (seg48BlindDeltaY4 rho) (rho 39177) (rho 39178) (rho 39179) (rho 39180) (rho 39181) hacc
  · unfold seg48BlindDeltaX4 seg48BlindDeltaY4
    linear_combination r6421
  · unfold seg48BlindDeltaX4 seg48BlindDeltaY4
    linear_combination r6422
  · unfold seg48BlindDeltaX4 seg48BlindDeltaY4
    linear_combination r6423
  · unfold seg48BlindDeltaX4
    linear_combination r6424
  · unfold seg48BlindDeltaY4
    linear_combination r6425
  · linear_combination r6154

theorem seg48Blind_rows6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6155 rho ∧ Seg48.relationRow6426 rho ∧ Seg48.relationRow6427 rho ∧ Seg48.relationRow6428 rho ∧ Seg48.relationRow6429 rho ∧ Seg48.relationRow6430 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6155, _, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6426, r6427, r6428, r6429, r6430, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6155, r6426, r6427, r6428, r6429, r6430⟩

theorem seg48Blind_rung6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38912 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 6)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      6 (Bool.toZMod bit) (seg48BlindAccState rho 6)
      (seg48BlindAccState rho 7) := by
  obtain ⟨r6155, r6426, r6427, r6428, r6429, r6430⟩ := seg48Blind_rows6 rho h
  unfold Seg48.relationRow6155 at r6155

  unfold Seg48.relationRow6426 at r6426

  unfold Seg48.relationRow6427 at r6427

  unfold Seg48.relationRow6428 at r6428

  unfold Seg48.relationRow6429 at r6429

  unfold Seg48.relationRow6430 at r6430

  have hnextx : seg48BlindDeltaX6 rho =
      seg48BlindDeltaX5 rho + rho 39185 := by
    unfold seg48BlindDeltaX6 seg48BlindDeltaX5
    ring

  have hnexty : seg48BlindDeltaY6 rho =
      seg48BlindDeltaY5 rho + rho 39186 := by
    unfold seg48BlindDeltaY6 seg48BlindDeltaY5
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 6
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX5 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY5 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX6 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY6 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung6_wide (rho 38906) (rho 38912) (seg48BlindDeltaX5 rho) (seg48BlindDeltaY5 rho) (rho 39182) (rho 39183) (rho 39184) (rho 39185) (rho 39186) hacc
  · unfold seg48BlindDeltaX5 seg48BlindDeltaY5
    linear_combination r6426
  · unfold seg48BlindDeltaX5 seg48BlindDeltaY5
    linear_combination r6427
  · unfold seg48BlindDeltaX5 seg48BlindDeltaY5
    linear_combination r6428
  · unfold seg48BlindDeltaX5
    linear_combination r6429
  · unfold seg48BlindDeltaY5
    linear_combination r6430
  · linear_combination r6155

theorem seg48Blind_rows7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6156 rho ∧ Seg48.relationRow6431 rho ∧ Seg48.relationRow6432 rho ∧ Seg48.relationRow6433 rho ∧ Seg48.relationRow6434 rho ∧ Seg48.relationRow6435 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6156, _, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6431, r6432, r6433, r6434, r6435, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6156, r6431, r6432, r6433, r6434, r6435⟩

theorem seg48Blind_rung7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38913 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 7)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      7 (Bool.toZMod bit) (seg48BlindAccState rho 7)
      (seg48BlindAccState rho 8) := by
  obtain ⟨r6156, r6431, r6432, r6433, r6434, r6435⟩ := seg48Blind_rows7 rho h
  unfold Seg48.relationRow6156 at r6156

  unfold Seg48.relationRow6431 at r6431

  unfold Seg48.relationRow6432 at r6432

  unfold Seg48.relationRow6433 at r6433

  unfold Seg48.relationRow6434 at r6434

  unfold Seg48.relationRow6435 at r6435

  have hnextx : seg48BlindDeltaX7 rho =
      seg48BlindDeltaX6 rho + rho 39190 := by
    unfold seg48BlindDeltaX7 seg48BlindDeltaX6
    ring

  have hnexty : seg48BlindDeltaY7 rho =
      seg48BlindDeltaY6 rho + rho 39191 := by
    unfold seg48BlindDeltaY7 seg48BlindDeltaY6
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 7
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX6 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY6 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX7 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY7 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung7_wide (rho 38906) (rho 38913) (seg48BlindDeltaX6 rho) (seg48BlindDeltaY6 rho) (rho 39187) (rho 39188) (rho 39189) (rho 39190) (rho 39191) hacc
  · unfold seg48BlindDeltaX6 seg48BlindDeltaY6
    linear_combination r6431
  · unfold seg48BlindDeltaX6 seg48BlindDeltaY6
    linear_combination r6432
  · unfold seg48BlindDeltaX6 seg48BlindDeltaY6
    linear_combination r6433
  · unfold seg48BlindDeltaX6
    linear_combination r6434
  · unfold seg48BlindDeltaY6
    linear_combination r6435
  · linear_combination r6156

theorem seg48Blind_rows8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6157 rho ∧ Seg48.relationRow6436 rho ∧ Seg48.relationRow6437 rho ∧ Seg48.relationRow6438 rho ∧ Seg48.relationRow6439 rho ∧ Seg48.relationRow6440 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6157, _, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6436, r6437, r6438, r6439, r6440, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6157, r6436, r6437, r6438, r6439, r6440⟩

theorem seg48Blind_rung8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38914 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 8)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      8 (Bool.toZMod bit) (seg48BlindAccState rho 8)
      (seg48BlindAccState rho 9) := by
  obtain ⟨r6157, r6436, r6437, r6438, r6439, r6440⟩ := seg48Blind_rows8 rho h
  unfold Seg48.relationRow6157 at r6157

  unfold Seg48.relationRow6436 at r6436

  unfold Seg48.relationRow6437 at r6437

  unfold Seg48.relationRow6438 at r6438

  unfold Seg48.relationRow6439 at r6439

  unfold Seg48.relationRow6440 at r6440

  have hnextx : seg48BlindDeltaX8 rho =
      seg48BlindDeltaX7 rho + rho 39195 := by
    unfold seg48BlindDeltaX8 seg48BlindDeltaX7
    ring

  have hnexty : seg48BlindDeltaY8 rho =
      seg48BlindDeltaY7 rho + rho 39196 := by
    unfold seg48BlindDeltaY8 seg48BlindDeltaY7
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 8
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX7 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY7 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX8 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY8 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung8_wide (rho 38906) (rho 38914) (seg48BlindDeltaX7 rho) (seg48BlindDeltaY7 rho) (rho 39192) (rho 39193) (rho 39194) (rho 39195) (rho 39196) hacc
  · unfold seg48BlindDeltaX7 seg48BlindDeltaY7
    linear_combination r6436
  · unfold seg48BlindDeltaX7 seg48BlindDeltaY7
    linear_combination r6437
  · unfold seg48BlindDeltaX7 seg48BlindDeltaY7
    linear_combination r6438
  · unfold seg48BlindDeltaX7
    linear_combination r6439
  · unfold seg48BlindDeltaY7
    linear_combination r6440
  · linear_combination r6157

theorem seg48Blind_rows9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6158 rho ∧ Seg48.relationRow6441 rho ∧ Seg48.relationRow6442 rho ∧ Seg48.relationRow6443 rho ∧ Seg48.relationRow6444 rho ∧ Seg48.relationRow6445 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6158, _⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6441, r6442, r6443, r6444, r6445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6158, r6441, r6442, r6443, r6444, r6445⟩

theorem seg48Blind_rung9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38915 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 9)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      9 (Bool.toZMod bit) (seg48BlindAccState rho 9)
      (seg48BlindAccState rho 10) := by
  obtain ⟨r6158, r6441, r6442, r6443, r6444, r6445⟩ := seg48Blind_rows9 rho h
  unfold Seg48.relationRow6158 at r6158

  unfold Seg48.relationRow6441 at r6441

  unfold Seg48.relationRow6442 at r6442

  unfold Seg48.relationRow6443 at r6443

  unfold Seg48.relationRow6444 at r6444

  unfold Seg48.relationRow6445 at r6445

  have hnextx : seg48BlindDeltaX9 rho =
      seg48BlindDeltaX8 rho + rho 39200 := by
    unfold seg48BlindDeltaX9 seg48BlindDeltaX8
    ring

  have hnexty : seg48BlindDeltaY9 rho =
      seg48BlindDeltaY8 rho + rho 39201 := by
    unfold seg48BlindDeltaY9 seg48BlindDeltaY8
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 9
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX8 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY8 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX9 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY9 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung9_wide (rho 38906) (rho 38915) (seg48BlindDeltaX8 rho) (seg48BlindDeltaY8 rho) (rho 39197) (rho 39198) (rho 39199) (rho 39200) (rho 39201) hacc
  · unfold seg48BlindDeltaX8 seg48BlindDeltaY8
    linear_combination r6441
  · unfold seg48BlindDeltaX8 seg48BlindDeltaY8
    linear_combination r6442
  · unfold seg48BlindDeltaX8 seg48BlindDeltaY8
    linear_combination r6443
  · unfold seg48BlindDeltaX8
    linear_combination r6444
  · unfold seg48BlindDeltaY8
    linear_combination r6445
  · linear_combination r6158

theorem seg48Blind_rows10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6159 rho ∧ Seg48.relationRow6446 rho ∧ Seg48.relationRow6447 rho ∧ Seg48.relationRow6448 rho ∧ Seg48.relationRow6449 rho ∧ Seg48.relationRow6450 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6159⟩

  unfold Seg48.relationPart80 at p80

  rcases p80 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6446, r6447, r6448, r6449, r6450, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6159, r6446, r6447, r6448, r6449, r6450⟩

theorem seg48Blind_rung10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 38916 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 10)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      10 (Bool.toZMod bit) (seg48BlindAccState rho 10)
      (seg48BlindAccState rho 11) := by
  obtain ⟨r6159, r6446, r6447, r6448, r6449, r6450⟩ := seg48Blind_rows10 rho h
  unfold Seg48.relationRow6159 at r6159

  unfold Seg48.relationRow6446 at r6446

  unfold Seg48.relationRow6447 at r6447

  unfold Seg48.relationRow6448 at r6448

  unfold Seg48.relationRow6449 at r6449

  unfold Seg48.relationRow6450 at r6450

  have hnextx : seg48BlindDeltaX10 rho =
      seg48BlindDeltaX9 rho + rho 39205 := by
    unfold seg48BlindDeltaX10 seg48BlindDeltaX9
    ring

  have hnexty : seg48BlindDeltaY10 rho =
      seg48BlindDeltaY9 rho + rho 39206 := by
    unfold seg48BlindDeltaY10 seg48BlindDeltaY9
    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 10
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX9 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY9 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX10 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY10 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  apply Shieldd.GnarkFormal.NbFixedGenSeg48.rung10_wide (rho 38906) (rho 38916) (seg48BlindDeltaX9 rho) (seg48BlindDeltaY9 rho) (rho 39202) (rho 39203) (rho 39204) (rho 39205) (rho 39206) hacc
  · unfold seg48BlindDeltaX9 seg48BlindDeltaY9
    linear_combination r6446
  · unfold seg48BlindDeltaX9 seg48BlindDeltaY9
    linear_combination r6447
  · unfold seg48BlindDeltaX9 seg48BlindDeltaY9
    linear_combination r6448
  · unfold seg48BlindDeltaX9
    linear_combination r6449
  · unfold seg48BlindDeltaY9
    linear_combination r6450
  · linear_combination r6159

theorem seg48Blind_hstep_c0 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 1 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc
  · exact seg48Blind_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc
  · exact seg48Blind_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc
  · exact seg48Blind_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc
  · exact seg48Blind_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc
  · exact seg48Blind_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc
  · exact seg48Blind_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc
  · exact seg48Blind_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc
  · exact seg48Blind_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc
  · exact seg48Blind_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

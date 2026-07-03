import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows211 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7000 rho ∧ Seg52.relationRow8274 rho ∧ Seg52.relationRow8275 rho ∧ Seg52.relationRow8276 rho ∧ Seg52.relationRow8277 rho ∧ Seg52.relationRow8278 rho ∧ Seg52.relationRow8279 rho ∧ Seg52.relationRow8280 rho ∧ Seg52.relationRow8281 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p103, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8274, r8275, r8276, r8277, r8278, r8279, r8280, r8281, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7000, r8274, r8275, r8276, r8277, r8278, r8279, r8280, r8281⟩

theorem seg52Blind_rung211 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51389 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 211)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      211 (Bool.toZMod bit) (seg52BlindAccState rho 211)
      (seg52BlindAccState rho 212) := by
  obtain ⟨r7000, r8274, r8275, r8276, r8277, r8278, r8279, r8280, r8281⟩ := seg52Blind_rows211 rho h
  unfold Seg52.relationRow7000 at r7000

  unfold Seg52.relationRow8274 at r8274

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8274

  unfold Seg52.relationRow8275 at r8275

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8275

  unfold Seg52.relationRow8276 at r8276

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8276

  unfold Seg52.relationRow8277 at r8277

  unfold Seg52.relationRow8278 at r8278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8278

  unfold Seg52.relationRow8279 at r8279

  unfold Seg52.relationRow8280 at r8280

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8280

  unfold Seg52.relationRow8281 at r8281

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8281

  have hnextx : seg52BlindDeltaX211 rho =
      seg52BlindDeltaX210 rho + rho 52668 := by
    unfold seg52BlindDeltaX211 seg52BlindDeltaX210
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 61]

    ring

  have hnexty : seg52BlindDeltaY211 rho =
      seg52BlindDeltaY210 rho + rho 52669 := by
    unfold seg52BlindDeltaY211 seg52BlindDeltaY210
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 61]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 211
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX210 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY210 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX211 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY211 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY210 rho) (rho 52669)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 211)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5327628337272062592313728388198953727348222447182547552187548765040713893608 : Seg52.F) (423728751917898826075663953917726187800063816483669137843282601518448122082 : Seg52.F)
    (5751357089189961418389392342116679915148286263666216690030831366559162015690 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4970835380288419513008239029437287106231989988900827406336487343702981714531 : Seg52.F) (3914855939400010267395769549785628516737672253666516413791924500803172494869 : Seg52.F)
    (7616254520482598805940572677297280819744719537678599802357995976373364873921 : Seg52.F) (106703423238430874894827281416370557814794399874792126340723427035637150383 : Seg52.F)
    (8020732997510471598173160984863820343575835518670394690091950854398961116959 : Seg52.F) (3116833412156307831935096550582592804027676887971516275747684690876695345433 : Seg52.F)
    (8337758326189939549353997657365175973561104935279271701594510028881772088658 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX210 rho) (seg52BlindDeltaY210 rho) (rho 51389)
    (rho 52662) (rho 52663) (rho 52664) (rho 52666)
    (rho 52665) (rho 52667) (rho 52668) (rho 52669) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 211)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L211]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX210 seg52BlindDeltaY210;
        first | linear_combination r8274 | linear_combination -r8274)
    (by unfold seg52BlindDeltaX210 seg52BlindDeltaY210;
        first | linear_combination r8275 | linear_combination -r8275)
    (by unfold seg52BlindDeltaX210 seg52BlindDeltaY210;
        first | linear_combination r8276 | linear_combination -r8276)
    (by first | linear_combination r8277 | linear_combination -r8277)
    (by unfold seg52BlindDeltaX210 seg52BlindDeltaY210;
        first | linear_combination r8278 | linear_combination -r8278)
    (by first | linear_combination r8279 | linear_combination -r8279)
    (by unfold seg52BlindDeltaX210; first | linear_combination r8280 | linear_combination -r8280)
    (by unfold seg52BlindDeltaY210; first | linear_combination r8281 | linear_combination -r8281)
    (by linear_combination r7000)

theorem seg52Blind_rows212 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7001 rho ∧ Seg52.relationRow8282 rho ∧ Seg52.relationRow8283 rho ∧ Seg52.relationRow8284 rho ∧ Seg52.relationRow8285 rho ∧ Seg52.relationRow8286 rho ∧ Seg52.relationRow8287 rho ∧ Seg52.relationRow8288 rho ∧ Seg52.relationRow8289 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p103, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7001, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8282, r8283, r8284, r8285, r8286, r8287, r8288, r8289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7001, r8282, r8283, r8284, r8285, r8286, r8287, r8288, r8289⟩

theorem seg52Blind_rung212 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51390 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 212)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      212 (Bool.toZMod bit) (seg52BlindAccState rho 212)
      (seg52BlindAccState rho 213) := by
  obtain ⟨r7001, r8282, r8283, r8284, r8285, r8286, r8287, r8288, r8289⟩ := seg52Blind_rows212 rho h
  unfold Seg52.relationRow7001 at r7001

  unfold Seg52.relationRow8282 at r8282

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8282

  unfold Seg52.relationRow8283 at r8283

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8283

  unfold Seg52.relationRow8284 at r8284

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8284

  unfold Seg52.relationRow8285 at r8285

  unfold Seg52.relationRow8286 at r8286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8286

  unfold Seg52.relationRow8287 at r8287

  unfold Seg52.relationRow8288 at r8288

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8288

  unfold Seg52.relationRow8289 at r8289

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8289

  have hnextx : seg52BlindDeltaX212 rho =
      seg52BlindDeltaX211 rho + rho 52676 := by
    unfold seg52BlindDeltaX212 seg52BlindDeltaX211
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 62]

    ring

  have hnexty : seg52BlindDeltaY212 rho =
      seg52BlindDeltaY211 rho + rho 52677 := by
    unfold seg52BlindDeltaY212 seg52BlindDeltaY211
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 62]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 212
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX211 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY211 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX212 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY212 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY211 rho) (rho 52677)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 212)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3739632739089117939069446857547051358477682486351816434724250294787084895236 : Seg52.F) (546013826735418873252016774866291171760155115758345587572787703661357804066 : Seg52.F)
    (4285646565824536812321463632413342530237837602110162022297037998448442699302 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2837729429168183365821813808664056269128234350919573610021128857067124470391 : Seg52.F) (3157723186260032143823963446973739579877072376899281825095772845969261506130 : Seg52.F)
    (4806844747205417157608727923015087857542443673724285003669831375590022914970 : Seg52.F) (3108375690447327390710528121845870197331695668627703896235363924960491118932 : Seg52.F)
    (7898447922692951550996808163915255359615744219395718240362445752256051434975 : Seg52.F) (4704829010339252485179378081234495172898216848802247393210983161130324343805 : Seg52.F)
    (5336086058981043033538296816935676334044203666526359931699869530956918120109 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX211 rho) (seg52BlindDeltaY211 rho) (rho 51390)
    (rho 52670) (rho 52671) (rho 52672) (rho 52674)
    (rho 52673) (rho 52675) (rho 52676) (rho 52677) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 212)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L212]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX211 seg52BlindDeltaY211;
        first | linear_combination r8282 | linear_combination -r8282)
    (by unfold seg52BlindDeltaX211 seg52BlindDeltaY211;
        first | linear_combination r8283 | linear_combination -r8283)
    (by unfold seg52BlindDeltaX211 seg52BlindDeltaY211;
        first | linear_combination r8284 | linear_combination -r8284)
    (by first | linear_combination r8285 | linear_combination -r8285)
    (by unfold seg52BlindDeltaX211 seg52BlindDeltaY211;
        first | linear_combination r8286 | linear_combination -r8286)
    (by first | linear_combination r8287 | linear_combination -r8287)
    (by unfold seg52BlindDeltaX211; first | linear_combination r8288 | linear_combination -r8288)
    (by unfold seg52BlindDeltaY211; first | linear_combination r8289 | linear_combination -r8289)
    (by linear_combination r7001)

theorem seg52Blind_rows213 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7002 rho ∧ Seg52.relationRow8290 rho ∧ Seg52.relationRow8291 rho ∧ Seg52.relationRow8292 rho ∧ Seg52.relationRow8293 rho ∧ Seg52.relationRow8294 rho ∧ Seg52.relationRow8295 rho ∧ Seg52.relationRow8296 rho ∧ Seg52.relationRow8297 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p103, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7002, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8290, r8291, r8292, r8293, r8294, r8295, r8296, r8297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7002, r8290, r8291, r8292, r8293, r8294, r8295, r8296, r8297⟩

theorem seg52Blind_rung213 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51391 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 213)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      213 (Bool.toZMod bit) (seg52BlindAccState rho 213)
      (seg52BlindAccState rho 214) := by
  obtain ⟨r7002, r8290, r8291, r8292, r8293, r8294, r8295, r8296, r8297⟩ := seg52Blind_rows213 rho h
  unfold Seg52.relationRow7002 at r7002

  unfold Seg52.relationRow8290 at r8290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8290

  unfold Seg52.relationRow8291 at r8291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8291

  unfold Seg52.relationRow8292 at r8292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8292

  unfold Seg52.relationRow8293 at r8293

  unfold Seg52.relationRow8294 at r8294

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8294

  unfold Seg52.relationRow8295 at r8295

  unfold Seg52.relationRow8296 at r8296

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8296

  unfold Seg52.relationRow8297 at r8297

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8297

  have hnextx : seg52BlindDeltaX213 rho =
      seg52BlindDeltaX212 rho + rho 52684 := by
    unfold seg52BlindDeltaX213 seg52BlindDeltaX212
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 63]

    ring

  have hnexty : seg52BlindDeltaY213 rho =
      seg52BlindDeltaY212 rho + rho 52685 := by
    unfold seg52BlindDeltaY213 seg52BlindDeltaY212
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 63]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 213
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX212 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY212 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX213 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY213 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY212 rho) (rho 52685)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 213)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3805711175492090543188314150909428653142552635908459800414467119734417207008 : Seg52.F) (8067958649013307470320091512271525822579748751729142409794742560868383015607 : Seg52.F)
    (3429208075077027589259580724399407944346402052483538382273976224685390983574 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2586469818924823454887685248736220462575497719111012568833522605742026276421 : Seg52.F) (1223079788514069685123698545792301459336818710372046044529245059208797479587 : Seg52.F)
    (615792064455068526792965686539625562780320821830408171915025156311598660413 : Seg52.F) (7011737632969012783782848228240377222908554683976343320660587351676789370908 : Seg52.F)
    (376503100415062953928733426510020708796150583424921418140490895049026223434 : Seg52.F) (4638750573936279881060510787872117878233346699245604027520766336182992032033 : Seg52.F)
    (1432724116459357640465976710541169308467344651177720507274646104240619868133 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX212 rho) (seg52BlindDeltaY212 rho) (rho 51391)
    (rho 52678) (rho 52679) (rho 52680) (rho 52682)
    (rho 52681) (rho 52683) (rho 52684) (rho 52685) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 213)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L213]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX212 seg52BlindDeltaY212;
        first | linear_combination r8290 | linear_combination -r8290)
    (by unfold seg52BlindDeltaX212 seg52BlindDeltaY212;
        first | linear_combination r8291 | linear_combination -r8291)
    (by unfold seg52BlindDeltaX212 seg52BlindDeltaY212;
        first | linear_combination r8292 | linear_combination -r8292)
    (by first | linear_combination r8293 | linear_combination -r8293)
    (by unfold seg52BlindDeltaX212 seg52BlindDeltaY212;
        first | linear_combination r8294 | linear_combination -r8294)
    (by first | linear_combination r8295 | linear_combination -r8295)
    (by unfold seg52BlindDeltaX212; first | linear_combination r8296 | linear_combination -r8296)
    (by unfold seg52BlindDeltaY212; first | linear_combination r8297 | linear_combination -r8297)
    (by linear_combination r7002)

theorem seg52Blind_rows214 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7003 rho ∧ Seg52.relationRow8298 rho ∧ Seg52.relationRow8299 rho ∧ Seg52.relationRow8300 rho ∧ Seg52.relationRow8301 rho ∧ Seg52.relationRow8302 rho ∧ Seg52.relationRow8303 rho ∧ Seg52.relationRow8304 rho ∧ Seg52.relationRow8305 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p103, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8298, r8299, r8300, r8301, r8302, r8303, r8304, r8305, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7003, r8298, r8299, r8300, r8301, r8302, r8303, r8304, r8305⟩

theorem seg52Blind_rung214 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51392 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 214)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      214 (Bool.toZMod bit) (seg52BlindAccState rho 214)
      (seg52BlindAccState rho 215) := by
  obtain ⟨r7003, r8298, r8299, r8300, r8301, r8302, r8303, r8304, r8305⟩ := seg52Blind_rows214 rho h
  unfold Seg52.relationRow7003 at r7003

  unfold Seg52.relationRow8298 at r8298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8298

  unfold Seg52.relationRow8299 at r8299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8299

  unfold Seg52.relationRow8300 at r8300

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8300

  unfold Seg52.relationRow8301 at r8301

  unfold Seg52.relationRow8302 at r8302

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8302

  unfold Seg52.relationRow8303 at r8303

  unfold Seg52.relationRow8304 at r8304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8304

  unfold Seg52.relationRow8305 at r8305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8305

  have hnextx : seg52BlindDeltaX214 rho =
      seg52BlindDeltaX213 rho + rho 52692 := by
    unfold seg52BlindDeltaX214 seg52BlindDeltaX213
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 64]

    ring

  have hnexty : seg52BlindDeltaY214 rho =
      seg52BlindDeltaY213 rho + rho 52693 := by
    unfold seg52BlindDeltaY214 seg52BlindDeltaY213
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 64]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 214
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX213 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY213 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX214 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY214 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY213 rho) (rho 52693)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 214)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3519700685927272317724189846155332880272853835850155692631351253276228456583 : Seg52.F) (8142715970354096772122928279920887795561330138433719071956176618866653324210 : Seg52.F)
    (3217954906852998665598293187294674144458284639129810936652294416225472541752 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (427870354883302746539286970356984492783584904477385604274508508746579111977 : Seg52.F) (7684909229183172772809243730529769896730912256138259583235399444557459599888 : Seg52.F)
    (5079759746100250841722809672260757649290299822485304154344672621301032296151 : Seg52.F) (5227656773640621061793563773732843114211940894211272237309210039093903113771 : Seg52.F)
    (301745779074273652125896658860658735814569196720344755979056837050755914831 : Seg52.F) (4924761063501098106524635092626213651103045499303908135303882202641180782458 : Seg52.F)
    (3216804975787749362455261165048703417163958440942791590626023416823506125270 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX213 rho) (seg52BlindDeltaY213 rho) (rho 51392)
    (rho 52686) (rho 52687) (rho 52688) (rho 52690)
    (rho 52689) (rho 52691) (rho 52692) (rho 52693) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 214)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L214]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX213 seg52BlindDeltaY213;
        first | linear_combination r8298 | linear_combination -r8298)
    (by unfold seg52BlindDeltaX213 seg52BlindDeltaY213;
        first | linear_combination r8299 | linear_combination -r8299)
    (by unfold seg52BlindDeltaX213 seg52BlindDeltaY213;
        first | linear_combination r8300 | linear_combination -r8300)
    (by first | linear_combination r8301 | linear_combination -r8301)
    (by unfold seg52BlindDeltaX213 seg52BlindDeltaY213;
        first | linear_combination r8302 | linear_combination -r8302)
    (by first | linear_combination r8303 | linear_combination -r8303)
    (by unfold seg52BlindDeltaX213; first | linear_combination r8304 | linear_combination -r8304)
    (by unfold seg52BlindDeltaY213; first | linear_combination r8305 | linear_combination -r8305)
    (by linear_combination r7003)

theorem seg52Blind_rows215 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7004 rho ∧ Seg52.relationRow8306 rho ∧ Seg52.relationRow8307 rho ∧ Seg52.relationRow8308 rho ∧ Seg52.relationRow8309 rho ∧ Seg52.relationRow8310 rho ∧ Seg52.relationRow8311 rho ∧ Seg52.relationRow8312 rho ∧ Seg52.relationRow8313 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p103, _, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7004, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8306, r8307, r8308, r8309, r8310, r8311, r8312, r8313, _, _, _, _, _, _⟩

  exact ⟨r7004, r8306, r8307, r8308, r8309, r8310, r8311, r8312, r8313⟩

theorem seg52Blind_rung215 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51393 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 215)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      215 (Bool.toZMod bit) (seg52BlindAccState rho 215)
      (seg52BlindAccState rho 216) := by
  obtain ⟨r7004, r8306, r8307, r8308, r8309, r8310, r8311, r8312, r8313⟩ := seg52Blind_rows215 rho h
  unfold Seg52.relationRow7004 at r7004

  unfold Seg52.relationRow8306 at r8306

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8306

  unfold Seg52.relationRow8307 at r8307

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8307

  unfold Seg52.relationRow8308 at r8308

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8308

  unfold Seg52.relationRow8309 at r8309

  unfold Seg52.relationRow8310 at r8310

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8310

  unfold Seg52.relationRow8311 at r8311

  unfold Seg52.relationRow8312 at r8312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8312

  unfold Seg52.relationRow8313 at r8313

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8313

  have hnextx : seg52BlindDeltaX215 rho =
      seg52BlindDeltaX214 rho + rho 52700 := by
    unfold seg52BlindDeltaX215 seg52BlindDeltaX214
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 65]

    ring

  have hnexty : seg52BlindDeltaY215 rho =
      seg52BlindDeltaY214 rho + rho 52701 := by
    unfold seg52BlindDeltaY215 seg52BlindDeltaY214
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 65]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 215
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX214 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY214 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX215 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY215 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY214 rho) (rho 52701)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 215)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (4735750495013647090858931166784620155856988229723922730242031471736714338788 : Seg52.F) (7284740675749725981783765161756827737285160485612667916806380741022276320498 : Seg52.F)
    (3576029421335002648393871389759901361766249380182526819113178756841581420245 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (934262429588865376316763202666333572876159624379441072857832507528287283612 : Seg52.F) (620727456495781485108528089440261790333141839184177284132127399822216471535 : Seg52.F)
    (3734213338409769056441767094129838517498634193117154240157192061073862909754 : Seg52.F) (7767970052041557968615273520727392938738540145605237087225935524923132604692 : Seg52.F)
    (1159721073678644442465059777024718794090738849541395911128852714895132918543 : Seg52.F) (3708711254414723333389893771996926375518911105430141097693201984180694900253 : Seg52.F)
    (676491697386812455633551418054153592637359189548826740709297930994276634349 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX214 rho) (seg52BlindDeltaY214 rho) (rho 51393)
    (rho 52694) (rho 52695) (rho 52696) (rho 52698)
    (rho 52697) (rho 52699) (rho 52700) (rho 52701) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 215)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L215]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX214 seg52BlindDeltaY214;
        first | linear_combination r8306 | linear_combination -r8306)
    (by unfold seg52BlindDeltaX214 seg52BlindDeltaY214;
        first | linear_combination r8307 | linear_combination -r8307)
    (by unfold seg52BlindDeltaX214 seg52BlindDeltaY214;
        first | linear_combination r8308 | linear_combination -r8308)
    (by first | linear_combination r8309 | linear_combination -r8309)
    (by unfold seg52BlindDeltaX214 seg52BlindDeltaY214;
        first | linear_combination r8310 | linear_combination -r8310)
    (by first | linear_combination r8311 | linear_combination -r8311)
    (by unfold seg52BlindDeltaX214; first | linear_combination r8312 | linear_combination -r8312)
    (by unfold seg52BlindDeltaY214; first | linear_combination r8313 | linear_combination -r8313)
    (by linear_combination r7004)

theorem seg52Blind_rows216 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7005 rho ∧ Seg52.relationRow8314 rho ∧ Seg52.relationRow8315 rho ∧ Seg52.relationRow8316 rho ∧ Seg52.relationRow8317 rho ∧ Seg52.relationRow8318 rho ∧ Seg52.relationRow8319 rho ∧ Seg52.relationRow8320 rho ∧ Seg52.relationRow8321 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p103, p104, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7005, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart103 at p103

  rcases p103 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8314, r8315, r8316, r8317, r8318, r8319⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨r8320, r8321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7005, r8314, r8315, r8316, r8317, r8318, r8319, r8320, r8321⟩

theorem seg52Blind_rung216 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51394 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 216)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      216 (Bool.toZMod bit) (seg52BlindAccState rho 216)
      (seg52BlindAccState rho 217) := by
  obtain ⟨r7005, r8314, r8315, r8316, r8317, r8318, r8319, r8320, r8321⟩ := seg52Blind_rows216 rho h
  unfold Seg52.relationRow7005 at r7005

  unfold Seg52.relationRow8314 at r8314

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8314

  unfold Seg52.relationRow8315 at r8315

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8315

  unfold Seg52.relationRow8316 at r8316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8316

  unfold Seg52.relationRow8317 at r8317

  unfold Seg52.relationRow8318 at r8318

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8318

  unfold Seg52.relationRow8319 at r8319

  unfold Seg52.relationRow8320 at r8320

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8320

  unfold Seg52.relationRow8321 at r8321

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8321

  have hnextx : seg52BlindDeltaX216 rho =
      seg52BlindDeltaX215 rho + rho 52708 := by
    unfold seg52BlindDeltaX216 seg52BlindDeltaX215
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 66]

    ring

  have hnexty : seg52BlindDeltaY216 rho =
      seg52BlindDeltaY215 rho + rho 52709 := by
    unfold seg52BlindDeltaY216 seg52BlindDeltaY215
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 66]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 216
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX215 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY215 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX216 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY216 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY215 rho) (rho 52709)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 216)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3047738114654836539128249014769471463629745053730036031414036362930762700064 : Seg52.F) (7952330047938001541879152429561922298987420548220593536579109485375099806312 : Seg52.F)
    (2555606413164467656758576505549847231241266266796565740057912392388453267335 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7939859446417171453261363811848930007939766996255547357685806689064639035948 : Seg52.F) (7127738503717230360852932479875059658704579220516546870335272875140449102586 : Seg52.F)
    (7512757180602627786528431155446133589129180852821377444625292664139428669253 : Seg52.F) (4524195004705693286831181982319228680518287867255560910689389147106496714049 : Seg52.F)
    (492131701490368882369672509219624232388478786933470291356123970542309432729 : Seg52.F) (5396723634773533885120575924012075067746154281424027796521197092986646538977 : Seg52.F)
    (3920266744722677137417642956462317850857611467898502917245844308810912524992 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX215 rho) (seg52BlindDeltaY215 rho) (rho 51394)
    (rho 52702) (rho 52703) (rho 52704) (rho 52706)
    (rho 52705) (rho 52707) (rho 52708) (rho 52709) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 216)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L216]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX215 seg52BlindDeltaY215;
        first | linear_combination r8314 | linear_combination -r8314)
    (by unfold seg52BlindDeltaX215 seg52BlindDeltaY215;
        first | linear_combination r8315 | linear_combination -r8315)
    (by unfold seg52BlindDeltaX215 seg52BlindDeltaY215;
        first | linear_combination r8316 | linear_combination -r8316)
    (by first | linear_combination r8317 | linear_combination -r8317)
    (by unfold seg52BlindDeltaX215 seg52BlindDeltaY215;
        first | linear_combination r8318 | linear_combination -r8318)
    (by first | linear_combination r8319 | linear_combination -r8319)
    (by unfold seg52BlindDeltaX215; first | linear_combination r8320 | linear_combination -r8320)
    (by unfold seg52BlindDeltaY215; first | linear_combination r8321 | linear_combination -r8321)
    (by linear_combination r7005)

theorem seg52Blind_rows217 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7006 rho ∧ Seg52.relationRow8322 rho ∧ Seg52.relationRow8323 rho ∧ Seg52.relationRow8324 rho ∧ Seg52.relationRow8325 rho ∧ Seg52.relationRow8326 rho ∧ Seg52.relationRow8327 rho ∧ Seg52.relationRow8328 rho ∧ Seg52.relationRow8329 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p104, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, r8322, r8323, r8324, r8325, r8326, r8327, r8328, r8329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7006, r8322, r8323, r8324, r8325, r8326, r8327, r8328, r8329⟩

theorem seg52Blind_rung217 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51395 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 217)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      217 (Bool.toZMod bit) (seg52BlindAccState rho 217)
      (seg52BlindAccState rho 218) := by
  obtain ⟨r7006, r8322, r8323, r8324, r8325, r8326, r8327, r8328, r8329⟩ := seg52Blind_rows217 rho h
  unfold Seg52.relationRow7006 at r7006

  unfold Seg52.relationRow8322 at r8322

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8322

  unfold Seg52.relationRow8323 at r8323

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8323

  unfold Seg52.relationRow8324 at r8324

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8324

  unfold Seg52.relationRow8325 at r8325

  unfold Seg52.relationRow8326 at r8326

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8326

  unfold Seg52.relationRow8327 at r8327

  unfold Seg52.relationRow8328 at r8328

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8328

  unfold Seg52.relationRow8329 at r8329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8329

  have hnextx : seg52BlindDeltaX217 rho =
      seg52BlindDeltaX216 rho + rho 52716 := by
    unfold seg52BlindDeltaX217 seg52BlindDeltaX216
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 67]

    ring

  have hnexty : seg52BlindDeltaY217 rho =
      seg52BlindDeltaY216 rho + rho 52717 := by
    unfold seg52BlindDeltaY217 seg52BlindDeltaY216
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 67]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 217
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX216 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY216 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX217 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY217 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY216 rho) (rho 52717)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 217)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (123700968181371724315822978796307772502168331021831444823168513337451326588 : Seg52.F) (7206181308414929907187684219568191539127362878550653399715080565873045393078 : Seg52.F)
    (7329882276596301631503507198364499311629531209572484844538249079210496719666 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (51342695164295900523335136679681816694770074347372122226540147389114240940 : Seg52.F) (3052786237553737179346172201258712579459016790553216720140345524598387402017 : Seg52.F)
    (787620717315931140572433265074708873411572253914448706453206476703224907592 : Seg52.F) (509105858426396779352460963956901544527715611503044149659633818620754686969 : Seg52.F)
    (1238280441013440517061140719213354992248536456603410428220152890044363845963 : Seg52.F) (8320760781246998699933001959985238758873731004132232383112064942579957912453 : Seg52.F)
    (7935355891001973644896363974824644986848183723651019678275599637296654552072 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX216 rho) (seg52BlindDeltaY216 rho) (rho 51395)
    (rho 52710) (rho 52711) (rho 52712) (rho 52714)
    (rho 52713) (rho 52715) (rho 52716) (rho 52717) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 217)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L217]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX216 seg52BlindDeltaY216;
        first | linear_combination r8322 | linear_combination -r8322)
    (by unfold seg52BlindDeltaX216 seg52BlindDeltaY216;
        first | linear_combination r8323 | linear_combination -r8323)
    (by unfold seg52BlindDeltaX216 seg52BlindDeltaY216;
        first | linear_combination r8324 | linear_combination -r8324)
    (by first | linear_combination r8325 | linear_combination -r8325)
    (by unfold seg52BlindDeltaX216 seg52BlindDeltaY216;
        first | linear_combination r8326 | linear_combination -r8326)
    (by first | linear_combination r8327 | linear_combination -r8327)
    (by unfold seg52BlindDeltaX216; first | linear_combination r8328 | linear_combination -r8328)
    (by unfold seg52BlindDeltaY216; first | linear_combination r8329 | linear_combination -r8329)
    (by linear_combination r7006)

theorem seg52Blind_rows218 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7007 rho ∧ Seg52.relationRow8330 rho ∧ Seg52.relationRow8331 rho ∧ Seg52.relationRow8332 rho ∧ Seg52.relationRow8333 rho ∧ Seg52.relationRow8334 rho ∧ Seg52.relationRow8335 rho ∧ Seg52.relationRow8336 rho ∧ Seg52.relationRow8337 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p104, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7007, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, _, _, _, _, _, _, _, _, r8330, r8331, r8332, r8333, r8334, r8335, r8336, r8337, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7007, r8330, r8331, r8332, r8333, r8334, r8335, r8336, r8337⟩

theorem seg52Blind_rung218 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51396 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 218)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      218 (Bool.toZMod bit) (seg52BlindAccState rho 218)
      (seg52BlindAccState rho 219) := by
  obtain ⟨r7007, r8330, r8331, r8332, r8333, r8334, r8335, r8336, r8337⟩ := seg52Blind_rows218 rho h
  unfold Seg52.relationRow7007 at r7007

  unfold Seg52.relationRow8330 at r8330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8330

  unfold Seg52.relationRow8331 at r8331

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8331

  unfold Seg52.relationRow8332 at r8332

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8332

  unfold Seg52.relationRow8333 at r8333

  unfold Seg52.relationRow8334 at r8334

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8334

  unfold Seg52.relationRow8335 at r8335

  unfold Seg52.relationRow8336 at r8336

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8336

  unfold Seg52.relationRow8337 at r8337

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8337

  have hnextx : seg52BlindDeltaX218 rho =
      seg52BlindDeltaX217 rho + rho 52724 := by
    unfold seg52BlindDeltaX218 seg52BlindDeltaX217
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 68]

    ring

  have hnexty : seg52BlindDeltaY218 rho =
      seg52BlindDeltaY217 rho + rho 52725 := by
    unfold seg52BlindDeltaY218 seg52BlindDeltaY217
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 68]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 218
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX217 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY217 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX218 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY218 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY217 rho) (rho 52725)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 218)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7071659467922580335893637713246431152080471891869532067682393264275824468096 : Seg52.F) (5233045319008618973604072593989384005314840804446403291325745460456179580293 : Seg52.F)
    (3860243037502828885248885368454268626019413361161871531072905268814594809348 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (997513795128485064103021042873973320450514824176857200320006560728416580401 : Seg52.F) (4207962523957544499197113572769958299790779559157759929722328148460317065066 : Seg52.F)
    (5694952463819340159490726989598648212507084910767974062043659083270491817450 : Seg52.F) (1615274810180987536218933776408218560898669733751828603964970398235418274936 : Seg52.F)
    (3211416430419751450644752344792162526061058530707660536609487995461229658748 : Seg52.F) (1372802281505790088355187225535115379295427443284531760252840191641584770945 : Seg52.F)
    (6829186939247382888029891162373327970477229601402235223970263057681990964105 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX217 rho) (seg52BlindDeltaY217 rho) (rho 51396)
    (rho 52718) (rho 52719) (rho 52720) (rho 52722)
    (rho 52721) (rho 52723) (rho 52724) (rho 52725) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 218)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L218]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX217 seg52BlindDeltaY217;
        first | linear_combination r8330 | linear_combination -r8330)
    (by unfold seg52BlindDeltaX217 seg52BlindDeltaY217;
        first | linear_combination r8331 | linear_combination -r8331)
    (by unfold seg52BlindDeltaX217 seg52BlindDeltaY217;
        first | linear_combination r8332 | linear_combination -r8332)
    (by first | linear_combination r8333 | linear_combination -r8333)
    (by unfold seg52BlindDeltaX217 seg52BlindDeltaY217;
        first | linear_combination r8334 | linear_combination -r8334)
    (by first | linear_combination r8335 | linear_combination -r8335)
    (by unfold seg52BlindDeltaX217; first | linear_combination r8336 | linear_combination -r8336)
    (by unfold seg52BlindDeltaY217; first | linear_combination r8337 | linear_combination -r8337)
    (by linear_combination r7007)

theorem seg52Blind_rows219 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7008 rho ∧ Seg52.relationRow8338 rho ∧ Seg52.relationRow8339 rho ∧ Seg52.relationRow8340 rho ∧ Seg52.relationRow8341 rho ∧ Seg52.relationRow8342 rho ∧ Seg52.relationRow8343 rho ∧ Seg52.relationRow8344 rho ∧ Seg52.relationRow8345 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p104, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7008, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8338, r8339, r8340, r8341, r8342, r8343, r8344, r8345, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7008, r8338, r8339, r8340, r8341, r8342, r8343, r8344, r8345⟩

theorem seg52Blind_rung219 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51397 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 219)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      219 (Bool.toZMod bit) (seg52BlindAccState rho 219)
      (seg52BlindAccState rho 220) := by
  obtain ⟨r7008, r8338, r8339, r8340, r8341, r8342, r8343, r8344, r8345⟩ := seg52Blind_rows219 rho h
  unfold Seg52.relationRow7008 at r7008

  unfold Seg52.relationRow8338 at r8338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8338

  unfold Seg52.relationRow8339 at r8339

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8339

  unfold Seg52.relationRow8340 at r8340

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8340

  unfold Seg52.relationRow8341 at r8341

  unfold Seg52.relationRow8342 at r8342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8342

  unfold Seg52.relationRow8343 at r8343

  unfold Seg52.relationRow8344 at r8344

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8344

  unfold Seg52.relationRow8345 at r8345

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8345

  have hnextx : seg52BlindDeltaX219 rho =
      seg52BlindDeltaX218 rho + rho 52732 := by
    unfold seg52BlindDeltaX219 seg52BlindDeltaX218
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 69]

    ring

  have hnexty : seg52BlindDeltaY219 rho =
      seg52BlindDeltaY218 rho + rho 52733 := by
    unfold seg52BlindDeltaY219 seg52BlindDeltaY218
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 69]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 219
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX218 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY218 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX219 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY219 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY218 rho) (rho 52733)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 219)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5196049551051558169273089982213715624228923171939443945976500797894583833713 : Seg52.F) (4033479743215698499531408291924518140753180809754544209620061389049019153181 : Seg52.F)
    (785067544838886244555673335356687233606204646539924327661328731026193747853 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8228461578915015317578888180979204971312384976318017379598812884182739062679 : Seg52.F) (5969432451953231280221404556913607896031692218874454843943230165830559924308 : Seg52.F)
    (4204416184951078491647837449034783675960136896610714187858881882252448178393 : Seg52.F) (843701834699381573709699416331279250488711802942569755498026994035694535678 : Seg52.F)
    (4410982006212671924717416646857028390622718525399519618315172066868390085860 : Seg52.F) (3248412198376812254975734956567830907146976163214619881958732658022825405328 : Seg52.F)
    (7600759914728988850539125522450267280887187532211494072437206461881714703363 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX218 rho) (seg52BlindDeltaY218 rho) (rho 51397)
    (rho 52726) (rho 52727) (rho 52728) (rho 52730)
    (rho 52729) (rho 52731) (rho 52732) (rho 52733) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 219)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L219]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX218 seg52BlindDeltaY218;
        first | linear_combination r8338 | linear_combination -r8338)
    (by unfold seg52BlindDeltaX218 seg52BlindDeltaY218;
        first | linear_combination r8339 | linear_combination -r8339)
    (by unfold seg52BlindDeltaX218 seg52BlindDeltaY218;
        first | linear_combination r8340 | linear_combination -r8340)
    (by first | linear_combination r8341 | linear_combination -r8341)
    (by unfold seg52BlindDeltaX218 seg52BlindDeltaY218;
        first | linear_combination r8342 | linear_combination -r8342)
    (by first | linear_combination r8343 | linear_combination -r8343)
    (by unfold seg52BlindDeltaX218; first | linear_combination r8344 | linear_combination -r8344)
    (by unfold seg52BlindDeltaY218; first | linear_combination r8345 | linear_combination -r8345)
    (by linear_combination r7008)

theorem seg52Blind_rows220 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7009 rho ∧ Seg52.relationRow8346 rho ∧ Seg52.relationRow8347 rho ∧ Seg52.relationRow8348 rho ∧ Seg52.relationRow8349 rho ∧ Seg52.relationRow8350 rho ∧ Seg52.relationRow8351 rho ∧ Seg52.relationRow8352 rho ∧ Seg52.relationRow8353 rho := by
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

    _, _, _, _, _, _, _, p87, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p104, _, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7009, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8346, r8347, r8348, r8349, r8350, r8351, r8352, r8353, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7009, r8346, r8347, r8348, r8349, r8350, r8351, r8352, r8353⟩

theorem seg52Blind_rung220 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51398 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 220)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      220 (Bool.toZMod bit) (seg52BlindAccState rho 220)
      (seg52BlindAccState rho 221) := by
  obtain ⟨r7009, r8346, r8347, r8348, r8349, r8350, r8351, r8352, r8353⟩ := seg52Blind_rows220 rho h
  unfold Seg52.relationRow7009 at r7009

  unfold Seg52.relationRow8346 at r8346

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8346

  unfold Seg52.relationRow8347 at r8347

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8347

  unfold Seg52.relationRow8348 at r8348

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8348

  unfold Seg52.relationRow8349 at r8349

  unfold Seg52.relationRow8350 at r8350

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8350

  unfold Seg52.relationRow8351 at r8351

  unfold Seg52.relationRow8352 at r8352

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8352

  unfold Seg52.relationRow8353 at r8353

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8353

  have hnextx : seg52BlindDeltaX220 rho =
      seg52BlindDeltaX219 rho + rho 52740 := by
    unfold seg52BlindDeltaX220 seg52BlindDeltaX219
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 70]

    ring

  have hnexty : seg52BlindDeltaY220 rho =
      seg52BlindDeltaY219 rho + rho 52741 := by
    unfold seg52BlindDeltaY220 seg52BlindDeltaY219
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 70]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 220
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX219 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY219 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX220 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY220 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY219 rho) (rho 52741)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 220)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5747457526016758175835998194484556719913156173541495496847991769269239392427 : Seg52.F) (5540089884816897048089479758379024224138607490431233157521031440054709433633 : Seg52.F)
    (2843085661405284799676653014082034412675864328818664826433789753406539587019 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8132816414244171841396146336788502467076645652554925731338504232889496465072 : Seg52.F) (7288377787750598665321219882333043328894517518308081570821341189087614339729 : Seg52.F)
    (1998872065006281131425930001775492856146442517740113555049321825775753763071 : Seg52.F) (2171795118466354350407889465909225852420134797436474354478276007172658621701 : Seg52.F)
    (2904371864611473376159345180402522307237291844722830670414202015862699805408 : Seg52.F) (2697004223411612248412826744296989811462743161612568331087241686648169846614 : Seg52.F)
    (6272666630962016073840935472872320678955764537717589473456957448744750617340 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX219 rho) (seg52BlindDeltaY219 rho) (rho 51398)
    (rho 52734) (rho 52735) (rho 52736) (rho 52738)
    (rho 52737) (rho 52739) (rho 52740) (rho 52741) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 220)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L220]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX219 seg52BlindDeltaY219;
        first | linear_combination r8346 | linear_combination -r8346)
    (by unfold seg52BlindDeltaX219 seg52BlindDeltaY219;
        first | linear_combination r8347 | linear_combination -r8347)
    (by unfold seg52BlindDeltaX219 seg52BlindDeltaY219;
        first | linear_combination r8348 | linear_combination -r8348)
    (by first | linear_combination r8349 | linear_combination -r8349)
    (by unfold seg52BlindDeltaX219 seg52BlindDeltaY219;
        first | linear_combination r8350 | linear_combination -r8350)
    (by first | linear_combination r8351 | linear_combination -r8351)
    (by unfold seg52BlindDeltaX219; first | linear_combination r8352 | linear_combination -r8352)
    (by unfold seg52BlindDeltaY219; first | linear_combination r8353 | linear_combination -r8353)
    (by linear_combination r7009)

theorem seg52Blind_hstep_c21 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 211 ≤ i → i < 221 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung211 rho h bits[211]! (hbitAt 211 (by omega)) hacc
  · exact seg52Blind_rung212 rho h bits[212]! (hbitAt 212 (by omega)) hacc
  · exact seg52Blind_rung213 rho h bits[213]! (hbitAt 213 (by omega)) hacc
  · exact seg52Blind_rung214 rho h bits[214]! (hbitAt 214 (by omega)) hacc
  · exact seg52Blind_rung215 rho h bits[215]! (hbitAt 215 (by omega)) hacc
  · exact seg52Blind_rung216 rho h bits[216]! (hbitAt 216 (by omega)) hacc
  · exact seg52Blind_rung217 rho h bits[217]! (hbitAt 217 (by omega)) hacc
  · exact seg52Blind_rung218 rho h bits[218]! (hbitAt 218 (by omega)) hacc
  · exact seg52Blind_rung219 rho h bits[219]! (hbitAt 219 (by omega)) hacc
  · exact seg52Blind_rung220 rho h bits[220]! (hbitAt 220 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

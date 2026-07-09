import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows201 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6350 rho ∧ Seg48.relationRow7554 rho ∧ Seg48.relationRow7555 rho ∧ Seg48.relationRow7556 rho ∧ Seg48.relationRow7557 rho ∧ Seg48.relationRow7558 rho ∧ Seg48.relationRow7559 rho ∧ Seg48.relationRow7560 rho ∧ Seg48.relationRow7561 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p94, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6350, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7554, r7555, r7556, r7557, r7558, r7559, r7560, r7561, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6350, r7554, r7555, r7556, r7557, r7558, r7559, r7560, r7561⟩

theorem seg48Blind_rung201 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39107 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 201)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      201 (Bool.toZMod bit) (seg48BlindAccState rho 201)
      (seg48BlindAccState rho 202) := by
  obtain ⟨r6350, r7554, r7555, r7556, r7557, r7558, r7559, r7560, r7561⟩ := seg48Blind_rows201 rho h
  unfold Seg48.relationRow6350 at r6350

  unfold Seg48.relationRow7554 at r7554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7554

  unfold Seg48.relationRow7555 at r7555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7555

  unfold Seg48.relationRow7556 at r7556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7556

  unfold Seg48.relationRow7557 at r7557

  unfold Seg48.relationRow7558 at r7558

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7558

  unfold Seg48.relationRow7559 at r7559

  unfold Seg48.relationRow7560 at r7560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7560

  unfold Seg48.relationRow7561 at r7561

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7561

  have hnextx : seg48BlindDeltaX201 rho =
      seg48BlindDeltaX200 rho + rho 40316 := by
    unfold seg48BlindDeltaX201 seg48BlindDeltaX200
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 51]

    ring

  have hnexty : seg48BlindDeltaY201 rho =
      seg48BlindDeltaY200 rho + rho 40317 := by
    unfold seg48BlindDeltaY201 seg48BlindDeltaY200
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 51]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 201
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX200 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY200 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX201 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY201 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY200 rho) (rho 40317)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 201)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (276116596555470026893685789675440525669836519435740554516571487869501568414 : Seg48.F) (1647989448199865835482932310711166803085998402448382390558968398347562219930 : Seg48.F)
    (1924106044755335862376618100386607328755834921884122945075539886217063788344 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4788152598484509111380621716104005142396465390819607224791025872631424613381 : Seg48.F) (5568233743258565406855880537247248386639754788323356025239016120687784694847 : Seg48.F)
    (7604009220590200803672988464630369465922061573662031730530357480128314349007 : Seg48.F) (2702977219678547987146810688369003902318391372049352287242320252204299777480 : Seg48.F)
    (6796472301228504588765892628070379728289900932705681437376265057569847019111 : Seg48.F) (8168345152872900397355139149106106005706062815718323273418661968047907670627 : Seg48.F)
    (5741484529749822437102014250412542629057507963104711540692913203713109461561 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX200 rho) (seg48BlindDeltaY200 rho) (rho 39107)
    (rho 40310) (rho 40311) (rho 40312) (rho 40314)
    (rho 40313) (rho 40315) (rho 40316) (rho 40317) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 201)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L201]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX200 seg48BlindDeltaY200;
        first | linear_combination r7554 | linear_combination -r7554)
    (by unfold seg48BlindDeltaX200 seg48BlindDeltaY200;
        first | linear_combination r7555 | linear_combination -r7555)
    (by unfold seg48BlindDeltaX200 seg48BlindDeltaY200;
        first | linear_combination r7556 | linear_combination -r7556)
    (by first | linear_combination r7557 | linear_combination -r7557)
    (by unfold seg48BlindDeltaX200 seg48BlindDeltaY200;
        first | linear_combination r7558 | linear_combination -r7558)
    (by first | linear_combination r7559 | linear_combination -r7559)
    (by unfold seg48BlindDeltaX200; first | linear_combination r7560 | linear_combination -r7560)
    (by unfold seg48BlindDeltaY200; first | linear_combination r7561 | linear_combination -r7561)
    (by linear_combination r6350)

theorem seg48Blind_rows202 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6351 rho ∧ Seg48.relationRow7562 rho ∧ Seg48.relationRow7563 rho ∧ Seg48.relationRow7564 rho ∧ Seg48.relationRow7565 rho ∧ Seg48.relationRow7566 rho ∧ Seg48.relationRow7567 rho ∧ Seg48.relationRow7568 rho ∧ Seg48.relationRow7569 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p94, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6351, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7562, r7563, r7564, r7565, r7566, r7567, r7568, r7569, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6351, r7562, r7563, r7564, r7565, r7566, r7567, r7568, r7569⟩

theorem seg48Blind_rung202 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39108 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 202)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      202 (Bool.toZMod bit) (seg48BlindAccState rho 202)
      (seg48BlindAccState rho 203) := by
  obtain ⟨r6351, r7562, r7563, r7564, r7565, r7566, r7567, r7568, r7569⟩ := seg48Blind_rows202 rho h
  unfold Seg48.relationRow6351 at r6351

  unfold Seg48.relationRow7562 at r7562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7562

  unfold Seg48.relationRow7563 at r7563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7563

  unfold Seg48.relationRow7564 at r7564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7564

  unfold Seg48.relationRow7565 at r7565

  unfold Seg48.relationRow7566 at r7566

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7566

  unfold Seg48.relationRow7567 at r7567

  unfold Seg48.relationRow7568 at r7568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7568

  unfold Seg48.relationRow7569 at r7569

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7569

  have hnextx : seg48BlindDeltaX202 rho =
      seg48BlindDeltaX201 rho + rho 40324 := by
    unfold seg48BlindDeltaX202 seg48BlindDeltaX201
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 52]

    ring

  have hnexty : seg48BlindDeltaY202 rho =
      seg48BlindDeltaY201 rho + rho 40325 := by
    unfold seg48BlindDeltaY202 seg48BlindDeltaY201
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 52]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 202
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX201 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY201 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX202 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY202 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY201 rho) (rho 40325)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 202)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3442098559885003232235426211529029457464196300341264270418824492764285244538 : Seg48.F) (3357587405240507661811027315542279488330867831057245657111704459278994939909 : Seg48.F)
    (6799685965125510894046453527071308945795064131398509927530528952043280184447 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (1472990168100766808274768776588950065096616103908472784243790925035217376848 : Seg48.F) (4101247221261016052067604421392065072123844859804398562413106244858019716921 : Seg48.F)
    (8244586507561696599760777546095843143132366719533414419000579313209516988736 : Seg48.F) (2124338250684215562669463738909416516637465792976779071560742119494102154647 : Seg48.F)
    (5086874344187862762437797623239267043045031504096818170823528996638414299132 : Seg48.F) (5002363189543367192013398727252517073911703034812799557516408963153123994503 : Seg48.F)
    (6320123498744154861579361199872130014738433542177284756374491336423307084394 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX201 rho) (seg48BlindDeltaY201 rho) (rho 39108)
    (rho 40318) (rho 40319) (rho 40320) (rho 40322)
    (rho 40321) (rho 40323) (rho 40324) (rho 40325) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 202)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L202]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX201 seg48BlindDeltaY201;
        first | linear_combination r7562 | linear_combination -r7562)
    (by unfold seg48BlindDeltaX201 seg48BlindDeltaY201;
        first | linear_combination r7563 | linear_combination -r7563)
    (by unfold seg48BlindDeltaX201 seg48BlindDeltaY201;
        first | linear_combination r7564 | linear_combination -r7564)
    (by first | linear_combination r7565 | linear_combination -r7565)
    (by unfold seg48BlindDeltaX201 seg48BlindDeltaY201;
        first | linear_combination r7566 | linear_combination -r7566)
    (by first | linear_combination r7567 | linear_combination -r7567)
    (by unfold seg48BlindDeltaX201; first | linear_combination r7568 | linear_combination -r7568)
    (by unfold seg48BlindDeltaY201; first | linear_combination r7569 | linear_combination -r7569)
    (by linear_combination r6351)

theorem seg48Blind_rows203 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6352 rho ∧ Seg48.relationRow7570 rho ∧ Seg48.relationRow7571 rho ∧ Seg48.relationRow7572 rho ∧ Seg48.relationRow7573 rho ∧ Seg48.relationRow7574 rho ∧ Seg48.relationRow7575 rho ∧ Seg48.relationRow7576 rho ∧ Seg48.relationRow7577 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p94, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6352, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7570, r7571, r7572, r7573, r7574, r7575, r7576, r7577, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6352, r7570, r7571, r7572, r7573, r7574, r7575, r7576, r7577⟩

theorem seg48Blind_rung203 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39109 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 203)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      203 (Bool.toZMod bit) (seg48BlindAccState rho 203)
      (seg48BlindAccState rho 204) := by
  obtain ⟨r6352, r7570, r7571, r7572, r7573, r7574, r7575, r7576, r7577⟩ := seg48Blind_rows203 rho h
  unfold Seg48.relationRow6352 at r6352

  unfold Seg48.relationRow7570 at r7570

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7570

  unfold Seg48.relationRow7571 at r7571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7571

  unfold Seg48.relationRow7572 at r7572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7572

  unfold Seg48.relationRow7573 at r7573

  unfold Seg48.relationRow7574 at r7574

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7574

  unfold Seg48.relationRow7575 at r7575

  unfold Seg48.relationRow7576 at r7576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7576

  unfold Seg48.relationRow7577 at r7577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7577

  have hnextx : seg48BlindDeltaX203 rho =
      seg48BlindDeltaX202 rho + rho 40332 := by
    unfold seg48BlindDeltaX203 seg48BlindDeltaX202
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 53]

    ring

  have hnexty : seg48BlindDeltaY203 rho =
      seg48BlindDeltaY202 rho + rho 40333 := by
    unfold seg48BlindDeltaY203 seg48BlindDeltaY202
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 53]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 203
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX202 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY202 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX203 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY203 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY202 rho) (rho 40333)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 203)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (6700955755614116460422023174888383745142951107591358562322706606517359625990 : Seg48.F) (6838724771047401226623639668549172794634004037794561182111799145169223029428 : Seg48.F)
    (5095218777233147262796837904656010008401055810231855916499272295769173416377 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4634094232405047917389638427388196843876424390529208030164184382239773207702 : Seg48.F) (6738134345351785891826393668637195759734714576430081917563349080497569352953 : Seg48.F)
    (7914361061998835072296676203602698436586194749795357566391867891878379072504 : Seg48.F) (7427422077621273656092863568508976673186311377046092062263730683766810370922 : Seg48.F)
    (1605736978380969197625185270232373736741895297359502645823434310748186209613 : Seg48.F) (1743505993814253963826801763893162786232948227562705265612526849400049613051 : Seg48.F)
    (1017039671807096768155961370272569858189587958107971765671502772150598868119 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX202 rho) (seg48BlindDeltaY202 rho) (rho 39109)
    (rho 40326) (rho 40327) (rho 40328) (rho 40330)
    (rho 40329) (rho 40331) (rho 40332) (rho 40333) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 203)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L203]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX202 seg48BlindDeltaY202;
        first | linear_combination r7570 | linear_combination -r7570)
    (by unfold seg48BlindDeltaX202 seg48BlindDeltaY202;
        first | linear_combination r7571 | linear_combination -r7571)
    (by unfold seg48BlindDeltaX202 seg48BlindDeltaY202;
        first | linear_combination r7572 | linear_combination -r7572)
    (by first | linear_combination r7573 | linear_combination -r7573)
    (by unfold seg48BlindDeltaX202 seg48BlindDeltaY202;
        first | linear_combination r7574 | linear_combination -r7574)
    (by first | linear_combination r7575 | linear_combination -r7575)
    (by unfold seg48BlindDeltaX202; first | linear_combination r7576 | linear_combination -r7576)
    (by unfold seg48BlindDeltaY202; first | linear_combination r7577 | linear_combination -r7577)
    (by linear_combination r6352)

theorem seg48Blind_rows204 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6353 rho ∧ Seg48.relationRow7578 rho ∧ Seg48.relationRow7579 rho ∧ Seg48.relationRow7580 rho ∧ Seg48.relationRow7581 rho ∧ Seg48.relationRow7582 rho ∧ Seg48.relationRow7583 rho ∧ Seg48.relationRow7584 rho ∧ Seg48.relationRow7585 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p94, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6353, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7578, r7579, r7580, r7581, r7582, r7583, r7584, r7585, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6353, r7578, r7579, r7580, r7581, r7582, r7583, r7584, r7585⟩

theorem seg48Blind_rung204 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39110 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 204)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      204 (Bool.toZMod bit) (seg48BlindAccState rho 204)
      (seg48BlindAccState rho 205) := by
  obtain ⟨r6353, r7578, r7579, r7580, r7581, r7582, r7583, r7584, r7585⟩ := seg48Blind_rows204 rho h
  unfold Seg48.relationRow6353 at r6353

  unfold Seg48.relationRow7578 at r7578

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7578

  unfold Seg48.relationRow7579 at r7579

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7579

  unfold Seg48.relationRow7580 at r7580

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7580

  unfold Seg48.relationRow7581 at r7581

  unfold Seg48.relationRow7582 at r7582

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7582

  unfold Seg48.relationRow7583 at r7583

  unfold Seg48.relationRow7584 at r7584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7584

  unfold Seg48.relationRow7585 at r7585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7585

  have hnextx : seg48BlindDeltaX204 rho =
      seg48BlindDeltaX203 rho + rho 40340 := by
    unfold seg48BlindDeltaX204 seg48BlindDeltaX203
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 54]

    ring

  have hnexty : seg48BlindDeltaY204 rho =
      seg48BlindDeltaY203 rho + rho 40341 := by
    unfold seg48BlindDeltaY204 seg48BlindDeltaY203
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 54]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 204
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX203 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY203 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX204 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY204 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY203 rho) (rho 40341)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 204)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (7785157229099352850933791713914015122664496508205396539435072476621716026728 : Seg48.F) (2123667417923591665504807628470197607067701419904927458101108123060944604824 : Seg48.F)
    (1464362897594574092189774403602666198356298592956260169600947143765251392511 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (6252801731037269485165717073273153637218394150851405520605446725800038741185 : Seg48.F) (564167192971765932790941774524313935462998939855634453737492982849320556999 : Seg48.F)
    (168003565122874189380771387783550189351077983037762698356310535685290194946 : Seg48.F) (5655273535768641454767475888479578046029778212712467408283685830934784950588 : Seg48.F)
    (6320794331504778758744017310311348924308197915249136369834125332856464634217 : Seg48.F) (659304520329017573315033224867531408711402826948667288500160979295693212313 : Seg48.F)
    (2789188213659728969481349050301968485346121122441596419651547624982624288453 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX203 rho) (seg48BlindDeltaY203 rho) (rho 39110)
    (rho 40334) (rho 40335) (rho 40336) (rho 40338)
    (rho 40337) (rho 40339) (rho 40340) (rho 40341) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 204)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L204]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX203 seg48BlindDeltaY203;
        first | linear_combination r7578 | linear_combination -r7578)
    (by unfold seg48BlindDeltaX203 seg48BlindDeltaY203;
        first | linear_combination r7579 | linear_combination -r7579)
    (by unfold seg48BlindDeltaX203 seg48BlindDeltaY203;
        first | linear_combination r7580 | linear_combination -r7580)
    (by first | linear_combination r7581 | linear_combination -r7581)
    (by unfold seg48BlindDeltaX203 seg48BlindDeltaY203;
        first | linear_combination r7582 | linear_combination -r7582)
    (by first | linear_combination r7583 | linear_combination -r7583)
    (by unfold seg48BlindDeltaX203; first | linear_combination r7584 | linear_combination -r7584)
    (by unfold seg48BlindDeltaY203; first | linear_combination r7585 | linear_combination -r7585)
    (by linear_combination r6353)

theorem seg48Blind_rows205 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6354 rho ∧ Seg48.relationRow7586 rho ∧ Seg48.relationRow7587 rho ∧ Seg48.relationRow7588 rho ∧ Seg48.relationRow7589 rho ∧ Seg48.relationRow7590 rho ∧ Seg48.relationRow7591 rho ∧ Seg48.relationRow7592 rho ∧ Seg48.relationRow7593 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p94, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6354, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7586, r7587, r7588, r7589, r7590, r7591, r7592, r7593, _, _, _, _, _, _⟩

  exact ⟨r6354, r7586, r7587, r7588, r7589, r7590, r7591, r7592, r7593⟩

theorem seg48Blind_rung205 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39111 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 205)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      205 (Bool.toZMod bit) (seg48BlindAccState rho 205)
      (seg48BlindAccState rho 206) := by
  obtain ⟨r6354, r7586, r7587, r7588, r7589, r7590, r7591, r7592, r7593⟩ := seg48Blind_rows205 rho h
  unfold Seg48.relationRow6354 at r6354

  unfold Seg48.relationRow7586 at r7586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7586

  unfold Seg48.relationRow7587 at r7587

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7587

  unfold Seg48.relationRow7588 at r7588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7588

  unfold Seg48.relationRow7589 at r7589

  unfold Seg48.relationRow7590 at r7590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7590

  unfold Seg48.relationRow7591 at r7591

  unfold Seg48.relationRow7592 at r7592

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7592

  unfold Seg48.relationRow7593 at r7593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7593

  have hnextx : seg48BlindDeltaX205 rho =
      seg48BlindDeltaX204 rho + rho 40348 := by
    unfold seg48BlindDeltaX205 seg48BlindDeltaX204
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 55]

    ring

  have hnexty : seg48BlindDeltaY205 rho =
      seg48BlindDeltaY204 rho + rho 40349 := by
    unfold seg48BlindDeltaY205 seg48BlindDeltaY204
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 55]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 205
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX204 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY204 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX205 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY205 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY204 rho) (rho 40349)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 205)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (4349899932341040547106419265074882586804667426292901073528921763015154987837 : Seg48.F) (1550459442274610183101427053273344116286768353828898011074360259869021567624 : Seg48.F)
    (5900359374615650730207846318348226703091435780121799084603282022884176555461 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (5706165928280148115562111853795796920078965241749530779523010486069437363390 : Seg48.F) (616102913848551635978132297652874516637591556857344240933436591412989788009 : Seg48.F)
    (977210916583284324617020890674464014886204391561145823617587034849873239524 : Seg48.F) (4739826480186208900146612582133455906891698630778036673217639225600037365819 : Seg48.F)
    (6894002307153760241147397885508202415089130981325165816860873196048387671417 : Seg48.F) (4094561817087329877142405673706663944571231908861162754406311692902254251204 : Seg48.F)
    (3704635269242161524102212356648090624484200704376027154717594230317371873222 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX204 rho) (seg48BlindDeltaY204 rho) (rho 39111)
    (rho 40342) (rho 40343) (rho 40344) (rho 40346)
    (rho 40345) (rho 40347) (rho 40348) (rho 40349) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 205)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L205]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX204 seg48BlindDeltaY204;
        first | linear_combination r7586 | linear_combination -r7586)
    (by unfold seg48BlindDeltaX204 seg48BlindDeltaY204;
        first | linear_combination r7587 | linear_combination -r7587)
    (by unfold seg48BlindDeltaX204 seg48BlindDeltaY204;
        first | linear_combination r7588 | linear_combination -r7588)
    (by first | linear_combination r7589 | linear_combination -r7589)
    (by unfold seg48BlindDeltaX204 seg48BlindDeltaY204;
        first | linear_combination r7590 | linear_combination -r7590)
    (by first | linear_combination r7591 | linear_combination -r7591)
    (by unfold seg48BlindDeltaX204; first | linear_combination r7592 | linear_combination -r7592)
    (by unfold seg48BlindDeltaY204; first | linear_combination r7593 | linear_combination -r7593)
    (by linear_combination r6354)

theorem seg48Blind_rows206 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6355 rho ∧ Seg48.relationRow7594 rho ∧ Seg48.relationRow7595 rho ∧ Seg48.relationRow7596 rho ∧ Seg48.relationRow7597 rho ∧ Seg48.relationRow7598 rho ∧ Seg48.relationRow7599 rho ∧ Seg48.relationRow7600 rho ∧ Seg48.relationRow7601 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p94, p95, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart94 at p94

  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7594, r7595, r7596, r7597, r7598, r7599⟩

  unfold Seg48.relationPart95 at p95

  rcases p95 with ⟨r7600, r7601, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6355, r7594, r7595, r7596, r7597, r7598, r7599, r7600, r7601⟩

theorem seg48Blind_rung206 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39112 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 206)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      206 (Bool.toZMod bit) (seg48BlindAccState rho 206)
      (seg48BlindAccState rho 207) := by
  obtain ⟨r6355, r7594, r7595, r7596, r7597, r7598, r7599, r7600, r7601⟩ := seg48Blind_rows206 rho h
  unfold Seg48.relationRow6355 at r6355

  unfold Seg48.relationRow7594 at r7594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7594

  unfold Seg48.relationRow7595 at r7595

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7595

  unfold Seg48.relationRow7596 at r7596

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7596

  unfold Seg48.relationRow7597 at r7597

  unfold Seg48.relationRow7598 at r7598

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7598

  unfold Seg48.relationRow7599 at r7599

  unfold Seg48.relationRow7600 at r7600

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7600

  unfold Seg48.relationRow7601 at r7601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7601

  have hnextx : seg48BlindDeltaX206 rho =
      seg48BlindDeltaX205 rho + rho 40356 := by
    unfold seg48BlindDeltaX206 seg48BlindDeltaX205
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 56]

    ring

  have hnexty : seg48BlindDeltaY206 rho =
      seg48BlindDeltaY205 rho + rho 40357 := by
    unfold seg48BlindDeltaY206 seg48BlindDeltaY205
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 56]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 206
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX205 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY205 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX206 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY206 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY205 rho) (rho 40357)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 206)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (5814734497876100950874880244756732844213278078093913461160889537202459134137 : Seg48.F) (1518727952420516170324658259653941833431169715409633421935880835940118166678 : Seg48.F)
    (7333462450296617121199538504410674677644447793503546883096770373142577300815 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (2734414322774210183680660656178512258450371263845909099464238811943764734975 : Seg48.F) (3768736213248914186182620569362351181411192762325831657998054681394022199389 : Seg48.F)
    (7107069545256102977963537795205312568728291822755782065779608297426492288692 : Seg48.F) (2283708988056460992505977641690719069233624143274289733651764904433425647055 : Seg48.F)
    (6925733797007854253924166679127604697944729619744430405999352619977291072363 : Seg48.F) (2629727251552269473373944694024813687162621257060150366774343918714950104904 : Seg48.F)
    (6160752761371909431742847297090827462142275191879774094283468551483983591986 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX205 rho) (seg48BlindDeltaY205 rho) (rho 39112)
    (rho 40350) (rho 40351) (rho 40352) (rho 40354)
    (rho 40353) (rho 40355) (rho 40356) (rho 40357) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 206)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L206]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX205 seg48BlindDeltaY205;
        first | linear_combination r7594 | linear_combination -r7594)
    (by unfold seg48BlindDeltaX205 seg48BlindDeltaY205;
        first | linear_combination r7595 | linear_combination -r7595)
    (by unfold seg48BlindDeltaX205 seg48BlindDeltaY205;
        first | linear_combination r7596 | linear_combination -r7596)
    (by first | linear_combination r7597 | linear_combination -r7597)
    (by unfold seg48BlindDeltaX205 seg48BlindDeltaY205;
        first | linear_combination r7598 | linear_combination -r7598)
    (by first | linear_combination r7599 | linear_combination -r7599)
    (by unfold seg48BlindDeltaX205; first | linear_combination r7600 | linear_combination -r7600)
    (by unfold seg48BlindDeltaY205; first | linear_combination r7601 | linear_combination -r7601)
    (by linear_combination r6355)

theorem seg48Blind_rows207 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6356 rho ∧ Seg48.relationRow7602 rho ∧ Seg48.relationRow7603 rho ∧ Seg48.relationRow7604 rho ∧ Seg48.relationRow7605 rho ∧ Seg48.relationRow7606 rho ∧ Seg48.relationRow7607 rho ∧ Seg48.relationRow7608 rho ∧ Seg48.relationRow7609 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p95, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6356, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart95 at p95

  rcases p95 with ⟨_, _, r7602, r7603, r7604, r7605, r7606, r7607, r7608, r7609, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6356, r7602, r7603, r7604, r7605, r7606, r7607, r7608, r7609⟩

theorem seg48Blind_rung207 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39113 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 207)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      207 (Bool.toZMod bit) (seg48BlindAccState rho 207)
      (seg48BlindAccState rho 208) := by
  obtain ⟨r6356, r7602, r7603, r7604, r7605, r7606, r7607, r7608, r7609⟩ := seg48Blind_rows207 rho h
  unfold Seg48.relationRow6356 at r6356

  unfold Seg48.relationRow7602 at r7602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7602

  unfold Seg48.relationRow7603 at r7603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7603

  unfold Seg48.relationRow7604 at r7604

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7604

  unfold Seg48.relationRow7605 at r7605

  unfold Seg48.relationRow7606 at r7606

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7606

  unfold Seg48.relationRow7607 at r7607

  unfold Seg48.relationRow7608 at r7608

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7608

  unfold Seg48.relationRow7609 at r7609

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7609

  have hnextx : seg48BlindDeltaX207 rho =
      seg48BlindDeltaX206 rho + rho 40364 := by
    unfold seg48BlindDeltaX207 seg48BlindDeltaX206
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 57]

    ring

  have hnexty : seg48BlindDeltaY207 rho =
      seg48BlindDeltaY206 rho + rho 40365 := by
    unfold seg48BlindDeltaY207 seg48BlindDeltaY206
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 57]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 207
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX206 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY206 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX207 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY207 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY206 rho) (rho 40365)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 207)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (2860763221263677585845844196821920280202197559885233758323698242911676232062 : Seg48.F) (7462524169654658252034494141149158068532244508063290757533304467224801922260 : Seg48.F)
    (1878825641489965413631513399189531817358542732794460687921769254219068915281 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (6017107302401917076093038803658832793635333333005021748974701642561348147031 : Seg48.F) (4085920262368901219011562727894792756133938710904331559532217036701010729637 : Seg48.F)
    (1500795255898127698254510651498941818485024357039572942008496360563777053149 : Seg48.F) (5194678040160705067222305854033969213620309679929153428027025196149211881187 : Seg48.F)
    (981937579773712172214330797632388462843654827090773070401928988692607316781 : Seg48.F) (5583698528164692838402980741959626251173701775268830069611535213005733006979 : Seg48.F)
    (3249783709267665357026519084747577317755589655224910399908208259768197357854 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX206 rho) (seg48BlindDeltaY206 rho) (rho 39113)
    (rho 40358) (rho 40359) (rho 40360) (rho 40362)
    (rho 40361) (rho 40363) (rho 40364) (rho 40365) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 207)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L207]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX206 seg48BlindDeltaY206;
        first | linear_combination r7602 | linear_combination -r7602)
    (by unfold seg48BlindDeltaX206 seg48BlindDeltaY206;
        first | linear_combination r7603 | linear_combination -r7603)
    (by unfold seg48BlindDeltaX206 seg48BlindDeltaY206;
        first | linear_combination r7604 | linear_combination -r7604)
    (by first | linear_combination r7605 | linear_combination -r7605)
    (by unfold seg48BlindDeltaX206 seg48BlindDeltaY206;
        first | linear_combination r7606 | linear_combination -r7606)
    (by first | linear_combination r7607 | linear_combination -r7607)
    (by unfold seg48BlindDeltaX206; first | linear_combination r7608 | linear_combination -r7608)
    (by unfold seg48BlindDeltaY206; first | linear_combination r7609 | linear_combination -r7609)
    (by linear_combination r6356)

theorem seg48Blind_rows208 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6357 rho ∧ Seg48.relationRow7610 rho ∧ Seg48.relationRow7611 rho ∧ Seg48.relationRow7612 rho ∧ Seg48.relationRow7613 rho ∧ Seg48.relationRow7614 rho ∧ Seg48.relationRow7615 rho ∧ Seg48.relationRow7616 rho ∧ Seg48.relationRow7617 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p95, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6357, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, r7610, r7611, r7612, r7613, r7614, r7615, r7616, r7617, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6357, r7610, r7611, r7612, r7613, r7614, r7615, r7616, r7617⟩

theorem seg48Blind_rung208 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39114 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 208)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      208 (Bool.toZMod bit) (seg48BlindAccState rho 208)
      (seg48BlindAccState rho 209) := by
  obtain ⟨r6357, r7610, r7611, r7612, r7613, r7614, r7615, r7616, r7617⟩ := seg48Blind_rows208 rho h
  unfold Seg48.relationRow6357 at r6357

  unfold Seg48.relationRow7610 at r7610

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7610

  unfold Seg48.relationRow7611 at r7611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7611

  unfold Seg48.relationRow7612 at r7612

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7612

  unfold Seg48.relationRow7613 at r7613

  unfold Seg48.relationRow7614 at r7614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7614

  unfold Seg48.relationRow7615 at r7615

  unfold Seg48.relationRow7616 at r7616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7616

  unfold Seg48.relationRow7617 at r7617

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7617

  have hnextx : seg48BlindDeltaX208 rho =
      seg48BlindDeltaX207 rho + rho 40372 := by
    unfold seg48BlindDeltaX208 seg48BlindDeltaX207
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 58]

    ring

  have hnexty : seg48BlindDeltaY208 rho =
      seg48BlindDeltaY207 rho + rho 40373 := by
    unfold seg48BlindDeltaY208 seg48BlindDeltaY207
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 58]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 208
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX207 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY207 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX208 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY208 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY207 rho) (rho 40373)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 208)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (7465113095028451185872799872536013607722630637219810378141917417312569802674 : Seg48.F) (8153835616969714359988073820290258638905941524545467486275692240649061086510 : Seg48.F)
    (7174486962569795121612048754044725715252672826611214036482376202044221650143 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (242475782950553990148664671100116111350985007453089951790268089730792064113 : Seg48.F) (4068257700137201981391246638348631810753138665802486623152103742596882974052 : Seg48.F)
    (2692737952833932520316010234032258108169355595324402587875864690555969585701 : Seg48.F) (3703171236264511442902973838646123361276754734237484192810578818768078694694 : Seg48.F)
    (290626132458656064260751118491287892469957810608596341659541215268348152531 : Seg48.F) (979348654399919238376025066245532923653268697934253449793316038604839436367 : Seg48.F)
    (4741290513163858981345851100135423170099144600916579635124654637149330544347 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX207 rho) (seg48BlindDeltaY207 rho) (rho 39114)
    (rho 40366) (rho 40367) (rho 40368) (rho 40370)
    (rho 40369) (rho 40371) (rho 40372) (rho 40373) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 208)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L208]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX207 seg48BlindDeltaY207;
        first | linear_combination r7610 | linear_combination -r7610)
    (by unfold seg48BlindDeltaX207 seg48BlindDeltaY207;
        first | linear_combination r7611 | linear_combination -r7611)
    (by unfold seg48BlindDeltaX207 seg48BlindDeltaY207;
        first | linear_combination r7612 | linear_combination -r7612)
    (by first | linear_combination r7613 | linear_combination -r7613)
    (by unfold seg48BlindDeltaX207 seg48BlindDeltaY207;
        first | linear_combination r7614 | linear_combination -r7614)
    (by first | linear_combination r7615 | linear_combination -r7615)
    (by unfold seg48BlindDeltaX207; first | linear_combination r7616 | linear_combination -r7616)
    (by unfold seg48BlindDeltaY207; first | linear_combination r7617 | linear_combination -r7617)
    (by linear_combination r6357)

theorem seg48Blind_rows209 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6358 rho ∧ Seg48.relationRow7618 rho ∧ Seg48.relationRow7619 rho ∧ Seg48.relationRow7620 rho ∧ Seg48.relationRow7621 rho ∧ Seg48.relationRow7622 rho ∧ Seg48.relationRow7623 rho ∧ Seg48.relationRow7624 rho ∧ Seg48.relationRow7625 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p95, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6358, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7618, r7619, r7620, r7621, r7622, r7623, r7624, r7625, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6358, r7618, r7619, r7620, r7621, r7622, r7623, r7624, r7625⟩

theorem seg48Blind_rung209 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39115 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 209)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      209 (Bool.toZMod bit) (seg48BlindAccState rho 209)
      (seg48BlindAccState rho 210) := by
  obtain ⟨r6358, r7618, r7619, r7620, r7621, r7622, r7623, r7624, r7625⟩ := seg48Blind_rows209 rho h
  unfold Seg48.relationRow6358 at r6358

  unfold Seg48.relationRow7618 at r7618

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7618

  unfold Seg48.relationRow7619 at r7619

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7619

  unfold Seg48.relationRow7620 at r7620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7620

  unfold Seg48.relationRow7621 at r7621

  unfold Seg48.relationRow7622 at r7622

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7622

  unfold Seg48.relationRow7623 at r7623

  unfold Seg48.relationRow7624 at r7624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7624

  unfold Seg48.relationRow7625 at r7625

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7625

  have hnextx : seg48BlindDeltaX209 rho =
      seg48BlindDeltaX208 rho + rho 40380 := by
    unfold seg48BlindDeltaX209 seg48BlindDeltaX208
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 59]

    ring

  have hnexty : seg48BlindDeltaY209 rho =
      seg48BlindDeltaY208 rho + rho 40381 := by
    unfold seg48BlindDeltaY209 seg48BlindDeltaY208
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 59]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 209
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX208 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY208 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX209 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY209 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY208 rho) (rho 40381)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 209)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (8030100344403790845996943823625781763957991048782322609484900374187528137681 : Seg48.F) (4829265910451333594512553487381529642303084944426558117612016650407467118045 : Seg48.F)
    (4414904505426754016260672372225764874885176658054816899161683568677586016685 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (5626874210683066344703416103870189711441465301563842461754122511592407790138 : Seg48.F) (1808281244680904552489492991420048991943923359052202397801231545156362684153 : Seg48.F)
    (2394394569641527098060815883352803663392756907676881861840041555934705680524 : Seg48.F) (2258025703545099012580609683747085116207892576639643554931393688409119222388 : Seg48.F)
    (3615195838977036829736271451400016889072814390727505710323216805509942120996 : Seg48.F) (414361405024579578251881115155764767417908286371741218450333081729881101360 : Seg48.F)
    (6186436045883271411668215255034461415168006758514420273003839767508290016653 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX208 rho) (seg48BlindDeltaY208 rho) (rho 39115)
    (rho 40374) (rho 40375) (rho 40376) (rho 40378)
    (rho 40377) (rho 40379) (rho 40380) (rho 40381) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 209)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L209]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX208 seg48BlindDeltaY208;
        first | linear_combination r7618 | linear_combination -r7618)
    (by unfold seg48BlindDeltaX208 seg48BlindDeltaY208;
        first | linear_combination r7619 | linear_combination -r7619)
    (by unfold seg48BlindDeltaX208 seg48BlindDeltaY208;
        first | linear_combination r7620 | linear_combination -r7620)
    (by first | linear_combination r7621 | linear_combination -r7621)
    (by unfold seg48BlindDeltaX208 seg48BlindDeltaY208;
        first | linear_combination r7622 | linear_combination -r7622)
    (by first | linear_combination r7623 | linear_combination -r7623)
    (by unfold seg48BlindDeltaX208; first | linear_combination r7624 | linear_combination -r7624)
    (by unfold seg48BlindDeltaY208; first | linear_combination r7625 | linear_combination -r7625)
    (by linear_combination r6358)

theorem seg48Blind_rows210 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6359 rho ∧ Seg48.relationRow7626 rho ∧ Seg48.relationRow7627 rho ∧ Seg48.relationRow7628 rho ∧ Seg48.relationRow7629 rho ∧ Seg48.relationRow7630 rho ∧ Seg48.relationRow7631 rho ∧ Seg48.relationRow7632 rho ∧ Seg48.relationRow7633 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p95, _, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6359, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart95 at p95

  rcases p95 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7626, r7627, r7628, r7629, r7630, r7631, r7632, r7633, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6359, r7626, r7627, r7628, r7629, r7630, r7631, r7632, r7633⟩

theorem seg48Blind_rung210 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39116 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 210)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      210 (Bool.toZMod bit) (seg48BlindAccState rho 210)
      (seg48BlindAccState rho 211) := by
  obtain ⟨r6359, r7626, r7627, r7628, r7629, r7630, r7631, r7632, r7633⟩ := seg48Blind_rows210 rho h
  unfold Seg48.relationRow6359 at r6359

  unfold Seg48.relationRow7626 at r7626

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7626

  unfold Seg48.relationRow7627 at r7627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7627

  unfold Seg48.relationRow7628 at r7628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7628

  unfold Seg48.relationRow7629 at r7629

  unfold Seg48.relationRow7630 at r7630

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7630

  unfold Seg48.relationRow7631 at r7631

  unfold Seg48.relationRow7632 at r7632

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7632

  unfold Seg48.relationRow7633 at r7633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7633

  have hnextx : seg48BlindDeltaX210 rho =
      seg48BlindDeltaX209 rho + rho 40388 := by
    unfold seg48BlindDeltaX210 seg48BlindDeltaX209
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 60]

    ring

  have hnexty : seg48BlindDeltaY210 rho =
      seg48BlindDeltaY209 rho + rho 40389 := by
    unfold seg48BlindDeltaY210 seg48BlindDeltaY209
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 60]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 210
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX209 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY209 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX210 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY210 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY209 rho) (rho 40389)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 210)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3782900478265775560931739200186194103556643599302583319935031983674800803617 : Seg48.F) (1153456347483115601279021059595869794902982791302576608046116169125695631023 : Seg48.F)
    (4936356825748891162210760259782063898459626390605159927981148152800496434640 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (5473384982003616673406746261125479475040486441609635798000763090753894835591 : Seg48.F) (5921283769484743309292289095720219236617528250280403079561652748954462198901 : Seg48.F)
    (2978822135553467932400026135049372739244910881062198026797986470482102973233 : Seg48.F) (4462266693966748656716864766843460750124038380526592012857316289874748242644 : Seg48.F)
    (7291005401945254822969803879185676736472916543851487219889117286791713608018 : Seg48.F) (4661561271162594863317085738595352427819255735851480508000201472242608435424 : Seg48.F)
    (3982195055461621767531960171938085781251860954627471815077917166042660996397 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX209 rho) (seg48BlindDeltaY209 rho) (rho 39116)
    (rho 40382) (rho 40383) (rho 40384) (rho 40386)
    (rho 40385) (rho 40387) (rho 40388) (rho 40389) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 210)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L210]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX209 seg48BlindDeltaY209;
        first | linear_combination r7626 | linear_combination -r7626)
    (by unfold seg48BlindDeltaX209 seg48BlindDeltaY209;
        first | linear_combination r7627 | linear_combination -r7627)
    (by unfold seg48BlindDeltaX209 seg48BlindDeltaY209;
        first | linear_combination r7628 | linear_combination -r7628)
    (by first | linear_combination r7629 | linear_combination -r7629)
    (by unfold seg48BlindDeltaX209 seg48BlindDeltaY209;
        first | linear_combination r7630 | linear_combination -r7630)
    (by first | linear_combination r7631 | linear_combination -r7631)
    (by unfold seg48BlindDeltaX209; first | linear_combination r7632 | linear_combination -r7632)
    (by unfold seg48BlindDeltaY209; first | linear_combination r7633 | linear_combination -r7633)
    (by linear_combination r6359)

theorem seg48Blind_hstep_c20 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 201 ≤ i → i < 211 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc
  · exact seg48Blind_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc
  · exact seg48Blind_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc
  · exact seg48Blind_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc
  · exact seg48Blind_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc
  · exact seg48Blind_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc
  · exact seg48Blind_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc
  · exact seg48Blind_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc
  · exact seg48Blind_rung209 rho h bits[209]! (hbitAt 209 (by omega)) hacc
  · exact seg48Blind_rung210 rho h bits[210]! (hbitAt 210 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

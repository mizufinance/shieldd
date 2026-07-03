import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Blind_rows221 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7010 rho ∧ Seg52.relationRow8354 rho ∧ Seg52.relationRow8355 rho ∧ Seg52.relationRow8356 rho ∧ Seg52.relationRow8357 rho ∧ Seg52.relationRow8358 rho ∧ Seg52.relationRow8359 rho ∧ Seg52.relationRow8360 rho ∧ Seg52.relationRow8361 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7010, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8354, r8355, r8356, r8357, r8358, r8359, r8360, r8361, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7010, r8354, r8355, r8356, r8357, r8358, r8359, r8360, r8361⟩

theorem seg52Blind_rung221 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51399 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 221)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      221 (Bool.toZMod bit) (seg52BlindAccState rho 221)
      (seg52BlindAccState rho 222) := by
  obtain ⟨r7010, r8354, r8355, r8356, r8357, r8358, r8359, r8360, r8361⟩ := seg52Blind_rows221 rho h
  unfold Seg52.relationRow7010 at r7010

  unfold Seg52.relationRow8354 at r8354

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8354

  unfold Seg52.relationRow8355 at r8355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8355

  unfold Seg52.relationRow8356 at r8356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8356

  unfold Seg52.relationRow8357 at r8357

  unfold Seg52.relationRow8358 at r8358

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8358

  unfold Seg52.relationRow8359 at r8359

  unfold Seg52.relationRow8360 at r8360

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8360

  unfold Seg52.relationRow8361 at r8361

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8361

  have hnextx : seg52BlindDeltaX221 rho =
      seg52BlindDeltaX220 rho + rho 52748 := by
    unfold seg52BlindDeltaX221 seg52BlindDeltaX220
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 71]

    ring

  have hnexty : seg52BlindDeltaY221 rho =
      seg52BlindDeltaY220 rho + rho 52749 := by
    unfold seg52BlindDeltaY221 seg52BlindDeltaY220
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 71]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 221
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX220 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY220 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX221 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY221 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY220 rho) (rho 52749)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 221)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (3582457232854017490679727548806619789199351417472999200107726731446390762695 : Seg52.F) (8356398933712813133618965600787090502994906481482673616451228079613955108354 : Seg52.F)
    (3494394417138460200049868210812163760818358563801608988623721355142936632008 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4185009705009278583157337959757827265049367783660213600747228776622166843885 : Seg52.F) (383082562966876509052088454560345866870394795901995490069381434441366547319 : Seg52.F)
    (7058699996902104145726176427107042444173523936118927654194633626935732919530 : Seg52.F) (6728986854277284273646630166159785858660288012003642140720191996229406231791 : Seg52.F)
    (88062815715557290629859337994456028380992853671390211484005376303454130687 : Seg52.F) (4862004516574352933569097389974926742176547917681064627827506724471018476346 : Seg52.F)
    (1715474895151086150602194772621760672715611323150421687215041459688003007250 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX220 rho) (seg52BlindDeltaY220 rho) (rho 51399)
    (rho 52742) (rho 52743) (rho 52744) (rho 52746)
    (rho 52745) (rho 52747) (rho 52748) (rho 52749) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 221)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L221]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX220 seg52BlindDeltaY220;
        first | linear_combination r8354 | linear_combination -r8354)
    (by unfold seg52BlindDeltaX220 seg52BlindDeltaY220;
        first | linear_combination r8355 | linear_combination -r8355)
    (by unfold seg52BlindDeltaX220 seg52BlindDeltaY220;
        first | linear_combination r8356 | linear_combination -r8356)
    (by first | linear_combination r8357 | linear_combination -r8357)
    (by unfold seg52BlindDeltaX220 seg52BlindDeltaY220;
        first | linear_combination r8358 | linear_combination -r8358)
    (by first | linear_combination r8359 | linear_combination -r8359)
    (by unfold seg52BlindDeltaX220; first | linear_combination r8360 | linear_combination -r8360)
    (by unfold seg52BlindDeltaY220; first | linear_combination r8361 | linear_combination -r8361)
    (by linear_combination r7010)

theorem seg52Blind_rows222 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7011 rho ∧ Seg52.relationRow8362 rho ∧ Seg52.relationRow8363 rho ∧ Seg52.relationRow8364 rho ∧ Seg52.relationRow8365 rho ∧ Seg52.relationRow8366 rho ∧ Seg52.relationRow8367 rho ∧ Seg52.relationRow8368 rho ∧ Seg52.relationRow8369 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8362, r8363, r8364, r8365, r8366, r8367, r8368, r8369, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7011, r8362, r8363, r8364, r8365, r8366, r8367, r8368, r8369⟩

theorem seg52Blind_rung222 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51400 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 222)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      222 (Bool.toZMod bit) (seg52BlindAccState rho 222)
      (seg52BlindAccState rho 223) := by
  obtain ⟨r7011, r8362, r8363, r8364, r8365, r8366, r8367, r8368, r8369⟩ := seg52Blind_rows222 rho h
  unfold Seg52.relationRow7011 at r7011

  unfold Seg52.relationRow8362 at r8362

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8362

  unfold Seg52.relationRow8363 at r8363

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8363

  unfold Seg52.relationRow8364 at r8364

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8364

  unfold Seg52.relationRow8365 at r8365

  unfold Seg52.relationRow8366 at r8366

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8366

  unfold Seg52.relationRow8367 at r8367

  unfold Seg52.relationRow8368 at r8368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8368

  unfold Seg52.relationRow8369 at r8369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8369

  have hnextx : seg52BlindDeltaX222 rho =
      seg52BlindDeltaX221 rho + rho 52756 := by
    unfold seg52BlindDeltaX222 seg52BlindDeltaX221
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 72]

    ring

  have hnexty : seg52BlindDeltaY222 rho =
      seg52BlindDeltaY221 rho + rho 52757 := by
    unfold seg52BlindDeltaY222 seg52BlindDeltaY221
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 72]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 222
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX221 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY221 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX222 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY222 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY221 rho) (rho 52757)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 222)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (587431020291212425077570287060209112092291997683260210283999568885891829628 : Seg52.F) (3186933932818472081082754308592615368266078739163828012042132765608240016162 : Seg52.F)
    (3774364953109684506160324595652824480358370736847088222326132334494131845790 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1041016696261873307340336047327981763298628938291660533116945156646556318662 : Seg52.F) (1950914135566194575319471229970379663738043476462169302070774594291170094184 : Seg52.F)
    (3892941673995227343189094966822599319633698296099933602780283735295161868150 : Seg52.F) (8206664081642874400187193726097639596885188106632599162464539278848572535457 : Seg52.F)
    (5257527816609898343166070630188931163109820595990235815893100690309169222879 : Seg52.F) (7857030729137157999171254651721337419283607337470803617651233887031517409413 : Seg52.F)
    (237797667785496024061631212683906934490711228521464665470694177068836703584 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX221 rho) (seg52BlindDeltaY221 rho) (rho 51400)
    (rho 52750) (rho 52751) (rho 52752) (rho 52754)
    (rho 52753) (rho 52755) (rho 52756) (rho 52757) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 222)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L222]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX221 seg52BlindDeltaY221;
        first | linear_combination r8362 | linear_combination -r8362)
    (by unfold seg52BlindDeltaX221 seg52BlindDeltaY221;
        first | linear_combination r8363 | linear_combination -r8363)
    (by unfold seg52BlindDeltaX221 seg52BlindDeltaY221;
        first | linear_combination r8364 | linear_combination -r8364)
    (by first | linear_combination r8365 | linear_combination -r8365)
    (by unfold seg52BlindDeltaX221 seg52BlindDeltaY221;
        first | linear_combination r8366 | linear_combination -r8366)
    (by first | linear_combination r8367 | linear_combination -r8367)
    (by unfold seg52BlindDeltaX221; first | linear_combination r8368 | linear_combination -r8368)
    (by unfold seg52BlindDeltaY221; first | linear_combination r8369 | linear_combination -r8369)
    (by linear_combination r7011)

theorem seg52Blind_rows223 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7012 rho ∧ Seg52.relationRow8370 rho ∧ Seg52.relationRow8371 rho ∧ Seg52.relationRow8372 rho ∧ Seg52.relationRow8373 rho ∧ Seg52.relationRow8374 rho ∧ Seg52.relationRow8375 rho ∧ Seg52.relationRow8376 rho ∧ Seg52.relationRow8377 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8370, r8371, r8372, r8373, r8374, r8375, r8376, r8377, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7012, r8370, r8371, r8372, r8373, r8374, r8375, r8376, r8377⟩

theorem seg52Blind_rung223 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51401 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 223)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      223 (Bool.toZMod bit) (seg52BlindAccState rho 223)
      (seg52BlindAccState rho 224) := by
  obtain ⟨r7012, r8370, r8371, r8372, r8373, r8374, r8375, r8376, r8377⟩ := seg52Blind_rows223 rho h
  unfold Seg52.relationRow7012 at r7012

  unfold Seg52.relationRow8370 at r8370

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8370

  unfold Seg52.relationRow8371 at r8371

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8371

  unfold Seg52.relationRow8372 at r8372

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8372

  unfold Seg52.relationRow8373 at r8373

  unfold Seg52.relationRow8374 at r8374

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8374

  unfold Seg52.relationRow8375 at r8375

  unfold Seg52.relationRow8376 at r8376

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8376

  unfold Seg52.relationRow8377 at r8377

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8377

  have hnextx : seg52BlindDeltaX223 rho =
      seg52BlindDeltaX222 rho + rho 52764 := by
    unfold seg52BlindDeltaX223 seg52BlindDeltaX222
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 73]

    ring

  have hnexty : seg52BlindDeltaY223 rho =
      seg52BlindDeltaY222 rho + rho 52765 := by
    unfold seg52BlindDeltaY223 seg52BlindDeltaY222
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 73]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 223
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX222 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY222 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX223 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY223 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY222 rho) (rho 52765)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 223)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6252774744021088771151931377995730287240547912466162259661321476502298112282 : Seg52.F) (772809274111116873408109393460791188669308610482743526629127229971911097569 : Seg52.F)
    (7025584018132205644560040771456521475909856522948905786290448706474209209851 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (3985374247453837473222794541343338310233095765846577436468927911938475780633 : Seg52.F) (7105142906426796296168390025664855125272204098034851028457940225008388755719 : Seg52.F)
    (6429624184377402250098413480349454538985920751972232079382271333906710152618 : Seg52.F) (1487172118229649689952765374861572725388206842740353873295223984256631187008 : Seg52.F)
    (7671652475317253550840715545320755342706590724671320301306106225945498141472 : Seg52.F) (2191687005407281653096893560785816244135351422687901568273911979415111126759 : Seg52.F)
    (6957289631198720734296059563919973805987692492413709954640009471660778052033 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX222 rho) (seg52BlindDeltaY222 rho) (rho 51401)
    (rho 52758) (rho 52759) (rho 52760) (rho 52762)
    (rho 52761) (rho 52763) (rho 52764) (rho 52765) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 223)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L223]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX222 seg52BlindDeltaY222;
        first | linear_combination r8370 | linear_combination -r8370)
    (by unfold seg52BlindDeltaX222 seg52BlindDeltaY222;
        first | linear_combination r8371 | linear_combination -r8371)
    (by unfold seg52BlindDeltaX222 seg52BlindDeltaY222;
        first | linear_combination r8372 | linear_combination -r8372)
    (by first | linear_combination r8373 | linear_combination -r8373)
    (by unfold seg52BlindDeltaX222 seg52BlindDeltaY222;
        first | linear_combination r8374 | linear_combination -r8374)
    (by first | linear_combination r8375 | linear_combination -r8375)
    (by unfold seg52BlindDeltaX222; first | linear_combination r8376 | linear_combination -r8376)
    (by unfold seg52BlindDeltaY222; first | linear_combination r8377 | linear_combination -r8377)
    (by linear_combination r7012)

theorem seg52Blind_rows224 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7013 rho ∧ Seg52.relationRow8378 rho ∧ Seg52.relationRow8379 rho ∧ Seg52.relationRow8380 rho ∧ Seg52.relationRow8381 rho ∧ Seg52.relationRow8382 rho ∧ Seg52.relationRow8383 rho ∧ Seg52.relationRow8384 rho ∧ Seg52.relationRow8385 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7013, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8378, r8379, r8380, r8381, r8382, r8383, r8384, r8385, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7013, r8378, r8379, r8380, r8381, r8382, r8383, r8384, r8385⟩

theorem seg52Blind_rung224 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51402 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 224)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      224 (Bool.toZMod bit) (seg52BlindAccState rho 224)
      (seg52BlindAccState rho 225) := by
  obtain ⟨r7013, r8378, r8379, r8380, r8381, r8382, r8383, r8384, r8385⟩ := seg52Blind_rows224 rho h
  unfold Seg52.relationRow7013 at r7013

  unfold Seg52.relationRow8378 at r8378

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8378

  unfold Seg52.relationRow8379 at r8379

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8379

  unfold Seg52.relationRow8380 at r8380

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8380

  unfold Seg52.relationRow8381 at r8381

  unfold Seg52.relationRow8382 at r8382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8382

  unfold Seg52.relationRow8383 at r8383

  unfold Seg52.relationRow8384 at r8384

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8384

  unfold Seg52.relationRow8385 at r8385

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8385

  have hnextx : seg52BlindDeltaX224 rho =
      seg52BlindDeltaX223 rho + rho 52772 := by
    unfold seg52BlindDeltaX224 seg52BlindDeltaX223
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 74]

    ring

  have hnexty : seg52BlindDeltaY224 rho =
      seg52BlindDeltaY223 rho + rho 52773 := by
    unfold seg52BlindDeltaY224 seg52BlindDeltaY223
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 74]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 224
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX223 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY223 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX224 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY224 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY223 rho) (rho 52773)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 224)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1150864079152338539263846845990030258145800544795680543046530314609120824927 : Seg52.F) (6971256099087244692275809914967681648836661854443374148096234117134425472605 : Seg52.F)
    (8122120178239583231539656760957711906982462399239054691142764431743546297532 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (8121534017638747712901180734970758415438419734352178356186262260998119810492 : Seg52.F) (4772544478899057561087517555422350775831763930266204989794514715128854340322 : Seg52.F)
    (1727421586306472614272207993773771346151534926016096070848824142586155885468 : Seg52.F) (3380996375578589786828362597009559611897641602946356887564983522646506006161 : Seg52.F)
    (1473205650341125731973015023813864882539237480710689679838999338782983766436 : Seg52.F) (7293597670276031884984978092791516273230098790358383284888703141308288414114 : Seg52.F)
    (5063465373849780637420462341771986919478257732207706940370249933270903232880 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX223 rho) (seg52BlindDeltaY223 rho) (rho 51402)
    (rho 52766) (rho 52767) (rho 52768) (rho 52770)
    (rho 52769) (rho 52771) (rho 52772) (rho 52773) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 224)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L224]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX223 seg52BlindDeltaY223;
        first | linear_combination r8378 | linear_combination -r8378)
    (by unfold seg52BlindDeltaX223 seg52BlindDeltaY223;
        first | linear_combination r8379 | linear_combination -r8379)
    (by unfold seg52BlindDeltaX223 seg52BlindDeltaY223;
        first | linear_combination r8380 | linear_combination -r8380)
    (by first | linear_combination r8381 | linear_combination -r8381)
    (by unfold seg52BlindDeltaX223 seg52BlindDeltaY223;
        first | linear_combination r8382 | linear_combination -r8382)
    (by first | linear_combination r8383 | linear_combination -r8383)
    (by unfold seg52BlindDeltaX223; first | linear_combination r8384 | linear_combination -r8384)
    (by unfold seg52BlindDeltaY223; first | linear_combination r8385 | linear_combination -r8385)
    (by linear_combination r7013)

theorem seg52Blind_rows225 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7014 rho ∧ Seg52.relationRow8386 rho ∧ Seg52.relationRow8387 rho ∧ Seg52.relationRow8388 rho ∧ Seg52.relationRow8389 rho ∧ Seg52.relationRow8390 rho ∧ Seg52.relationRow8391 rho ∧ Seg52.relationRow8392 rho ∧ Seg52.relationRow8393 rho := by
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

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7014, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8386, r8387, r8388, r8389, r8390, r8391, r8392, r8393, _, _, _, _, _, _⟩

  exact ⟨r7014, r8386, r8387, r8388, r8389, r8390, r8391, r8392, r8393⟩

theorem seg52Blind_rung225 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51403 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 225)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      225 (Bool.toZMod bit) (seg52BlindAccState rho 225)
      (seg52BlindAccState rho 226) := by
  obtain ⟨r7014, r8386, r8387, r8388, r8389, r8390, r8391, r8392, r8393⟩ := seg52Blind_rows225 rho h
  unfold Seg52.relationRow7014 at r7014

  unfold Seg52.relationRow8386 at r8386

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8386

  unfold Seg52.relationRow8387 at r8387

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8387

  unfold Seg52.relationRow8388 at r8388

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8388

  unfold Seg52.relationRow8389 at r8389

  unfold Seg52.relationRow8390 at r8390

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8390

  unfold Seg52.relationRow8391 at r8391

  unfold Seg52.relationRow8392 at r8392

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8392

  unfold Seg52.relationRow8393 at r8393

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8393

  have hnextx : seg52BlindDeltaX225 rho =
      seg52BlindDeltaX224 rho + rho 52780 := by
    unfold seg52BlindDeltaX225 seg52BlindDeltaX224
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 75]

    ring

  have hnexty : seg52BlindDeltaY225 rho =
      seg52BlindDeltaY224 rho + rho 52781 := by
    unfold seg52BlindDeltaY225 seg52BlindDeltaY224
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 75]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 225
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX224 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY224 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX225 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY225 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY224 rho) (rho 52781)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 225)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (2477411039352224260586883854216779246546796701215891281646540553915667872452 : Seg52.F) (2931874370928210846062542283899266086203817363132369643143240489346137578087 : Seg52.F)
    (5409285410280435106649426138116045332750614064348260924789781043261805450539 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (7396561173192761342171703816622081539789750781429800259604856513236740885859 : Seg52.F) (1421462245074834074587288782787002326083756887145579104072002412561438665897 : Seg52.F)
    (1527964148890742347591961995730542078352246799645079595788984596084193822120 : Seg52.F) (919069346133274648680457014640972352594596254071944761169385492814603032499 : Seg52.F)
    (5512587378500159578186282654882280445172081972021694184791992966571271660954 : Seg52.F) (5967050710076146163661941084564767284829102633938172546288692902001741366589 : Seg52.F)
    (7525392403295095775568367924140574178781303081082119066765847963102806206542 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX224 rho) (seg52BlindDeltaY224 rho) (rho 51403)
    (rho 52774) (rho 52775) (rho 52776) (rho 52778)
    (rho 52777) (rho 52779) (rho 52780) (rho 52781) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 225)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L225]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX224 seg52BlindDeltaY224;
        first | linear_combination r8386 | linear_combination -r8386)
    (by unfold seg52BlindDeltaX224 seg52BlindDeltaY224;
        first | linear_combination r8387 | linear_combination -r8387)
    (by unfold seg52BlindDeltaX224 seg52BlindDeltaY224;
        first | linear_combination r8388 | linear_combination -r8388)
    (by first | linear_combination r8389 | linear_combination -r8389)
    (by unfold seg52BlindDeltaX224 seg52BlindDeltaY224;
        first | linear_combination r8390 | linear_combination -r8390)
    (by first | linear_combination r8391 | linear_combination -r8391)
    (by unfold seg52BlindDeltaX224; first | linear_combination r8392 | linear_combination -r8392)
    (by unfold seg52BlindDeltaY224; first | linear_combination r8393 | linear_combination -r8393)
    (by linear_combination r7014)

theorem seg52Blind_rows226 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7015 rho ∧ Seg52.relationRow8394 rho ∧ Seg52.relationRow8395 rho ∧ Seg52.relationRow8396 rho ∧ Seg52.relationRow8397 rho ∧ Seg52.relationRow8398 rho ∧ Seg52.relationRow8399 rho ∧ Seg52.relationRow8400 rho ∧ Seg52.relationRow8401 rho := by
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

    _, _, _, _, p104, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7015, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart104 at p104

  rcases p104 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8394, r8395, r8396, r8397, r8398, r8399⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨r8400, r8401, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7015, r8394, r8395, r8396, r8397, r8398, r8399, r8400, r8401⟩

theorem seg52Blind_rung226 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51404 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 226)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      226 (Bool.toZMod bit) (seg52BlindAccState rho 226)
      (seg52BlindAccState rho 227) := by
  obtain ⟨r7015, r8394, r8395, r8396, r8397, r8398, r8399, r8400, r8401⟩ := seg52Blind_rows226 rho h
  unfold Seg52.relationRow7015 at r7015

  unfold Seg52.relationRow8394 at r8394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8394

  unfold Seg52.relationRow8395 at r8395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8395

  unfold Seg52.relationRow8396 at r8396

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8396

  unfold Seg52.relationRow8397 at r8397

  unfold Seg52.relationRow8398 at r8398

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8398

  unfold Seg52.relationRow8399 at r8399

  unfold Seg52.relationRow8400 at r8400

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8400

  unfold Seg52.relationRow8401 at r8401

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8401

  have hnextx : seg52BlindDeltaX226 rho =
      seg52BlindDeltaX225 rho + rho 52788 := by
    unfold seg52BlindDeltaX226 seg52BlindDeltaX225
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 76]

    ring

  have hnexty : seg52BlindDeltaY226 rho =
      seg52BlindDeltaY225 rho + rho 52789 := by
    unfold seg52BlindDeltaY226 seg52BlindDeltaY225
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 76]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 226
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX225 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY225 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX226 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY226 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY225 rho) (rho 52789)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 226)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (6644893773590675935356019136105454186295776267883026808891637538251579701530 : Seg52.F) (1358947139763598523979381175766945051572916828767179566627534868149475308058 : Seg52.F)
    (8003840913354274459335400311872399237868693096650206375519172406401055009588 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (1370899003643114756781611744109386553094662820774450405259377103704015469292 : Seg52.F) (8141275100190006914658353657066157249113390796072961797440698404213409452259 : Seg52.F)
    (6555184613843016807734723121542783358669618418595386565712857918117277017435 : Seg52.F) (5775208442131744476759876173776557979147560019705262464413809699231920785234 : Seg52.F)
    (7085514609664771900269443763014601479802982506386884261307698587767933930983 : Seg52.F) (1799567975837694488892805802676092345080123067271037019043595917665829537511 : Seg52.F)
    (2669253307296625947488948765004988552228339315448801363521423756685488453807 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX225 rho) (seg52BlindDeltaY225 rho) (rho 51404)
    (rho 52782) (rho 52783) (rho 52784) (rho 52786)
    (rho 52785) (rho 52787) (rho 52788) (rho 52789) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 226)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L226]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX225 seg52BlindDeltaY225;
        first | linear_combination r8394 | linear_combination -r8394)
    (by unfold seg52BlindDeltaX225 seg52BlindDeltaY225;
        first | linear_combination r8395 | linear_combination -r8395)
    (by unfold seg52BlindDeltaX225 seg52BlindDeltaY225;
        first | linear_combination r8396 | linear_combination -r8396)
    (by first | linear_combination r8397 | linear_combination -r8397)
    (by unfold seg52BlindDeltaX225 seg52BlindDeltaY225;
        first | linear_combination r8398 | linear_combination -r8398)
    (by first | linear_combination r8399 | linear_combination -r8399)
    (by unfold seg52BlindDeltaX225; first | linear_combination r8400 | linear_combination -r8400)
    (by unfold seg52BlindDeltaY225; first | linear_combination r8401 | linear_combination -r8401)
    (by linear_combination r7015)

theorem seg52Blind_rows227 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7016 rho ∧ Seg52.relationRow8402 rho ∧ Seg52.relationRow8403 rho ∧ Seg52.relationRow8404 rho ∧ Seg52.relationRow8405 rho ∧ Seg52.relationRow8406 rho ∧ Seg52.relationRow8407 rho ∧ Seg52.relationRow8408 rho ∧ Seg52.relationRow8409 rho := by
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

    _, _, _, _, _, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7016, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, r8402, r8403, r8404, r8405, r8406, r8407, r8408, r8409, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7016, r8402, r8403, r8404, r8405, r8406, r8407, r8408, r8409⟩

theorem seg52Blind_rung227 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51405 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 227)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      227 (Bool.toZMod bit) (seg52BlindAccState rho 227)
      (seg52BlindAccState rho 228) := by
  obtain ⟨r7016, r8402, r8403, r8404, r8405, r8406, r8407, r8408, r8409⟩ := seg52Blind_rows227 rho h
  unfold Seg52.relationRow7016 at r7016

  unfold Seg52.relationRow8402 at r8402

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8402

  unfold Seg52.relationRow8403 at r8403

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8403

  unfold Seg52.relationRow8404 at r8404

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8404

  unfold Seg52.relationRow8405 at r8405

  unfold Seg52.relationRow8406 at r8406

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8406

  unfold Seg52.relationRow8407 at r8407

  unfold Seg52.relationRow8408 at r8408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8408

  unfold Seg52.relationRow8409 at r8409

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8409

  have hnextx : seg52BlindDeltaX227 rho =
      seg52BlindDeltaX226 rho + rho 52796 := by
    unfold seg52BlindDeltaX227 seg52BlindDeltaX226
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 77]

    ring

  have hnexty : seg52BlindDeltaY227 rho =
      seg52BlindDeltaY226 rho + rho 52797 := by
    unfold seg52BlindDeltaY227 seg52BlindDeltaY226
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 77]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 227
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX226 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY226 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX227 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY227 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY226 rho) (rho 52797)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 227)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (5334004567915182446805514930710721924036148541606086840559039522898988352764 : Seg52.F) (1991033993335388628820338045395499282699371769765454452129987432965487389246 : Seg52.F)
    (7325038561250571075625852976106221206735520311371541292689026955864475742010 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (2456928273209305601077878727342202695161789831744454394805814375542024714974 : Seg52.F) (225960549042405015589554413610048305587383928935673200746613718328758695144 : Seg52.F)
    (2377565731515325974346402149423536618830307292694298078726633428379148686201 : Seg52.F) (6495049385092628867406352063107359223604318250857446602973354876338325305798 : Seg52.F)
    (6453427756092981795428486893386047248676527565388609375805246022951921849795 : Seg52.F) (3110457181513187977443310008070824607339750793547976987376193933018420886277 : Seg52.F)
    (1949412364335741556842472875674187307771581084296617224961878579579083933243 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX226 rho) (seg52BlindDeltaY226 rho) (rho 51405)
    (rho 52790) (rho 52791) (rho 52792) (rho 52794)
    (rho 52793) (rho 52795) (rho 52796) (rho 52797) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 227)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L227]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX226 seg52BlindDeltaY226;
        first | linear_combination r8402 | linear_combination -r8402)
    (by unfold seg52BlindDeltaX226 seg52BlindDeltaY226;
        first | linear_combination r8403 | linear_combination -r8403)
    (by unfold seg52BlindDeltaX226 seg52BlindDeltaY226;
        first | linear_combination r8404 | linear_combination -r8404)
    (by first | linear_combination r8405 | linear_combination -r8405)
    (by unfold seg52BlindDeltaX226 seg52BlindDeltaY226;
        first | linear_combination r8406 | linear_combination -r8406)
    (by first | linear_combination r8407 | linear_combination -r8407)
    (by unfold seg52BlindDeltaX226; first | linear_combination r8408 | linear_combination -r8408)
    (by unfold seg52BlindDeltaY226; first | linear_combination r8409 | linear_combination -r8409)
    (by linear_combination r7016)

theorem seg52Blind_rows228 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7017 rho ∧ Seg52.relationRow8410 rho ∧ Seg52.relationRow8411 rho ∧ Seg52.relationRow8412 rho ∧ Seg52.relationRow8413 rho ∧ Seg52.relationRow8414 rho ∧ Seg52.relationRow8415 rho ∧ Seg52.relationRow8416 rho ∧ Seg52.relationRow8417 rho := by
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

    _, _, _, _, _, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7017, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, _, _, _, _, _, _, _, _, r8410, r8411, r8412, r8413, r8414, r8415, r8416, r8417, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7017, r8410, r8411, r8412, r8413, r8414, r8415, r8416, r8417⟩

theorem seg52Blind_rung228 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51406 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 228)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      228 (Bool.toZMod bit) (seg52BlindAccState rho 228)
      (seg52BlindAccState rho 229) := by
  obtain ⟨r7017, r8410, r8411, r8412, r8413, r8414, r8415, r8416, r8417⟩ := seg52Blind_rows228 rho h
  unfold Seg52.relationRow7017 at r7017

  unfold Seg52.relationRow8410 at r8410

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8410

  unfold Seg52.relationRow8411 at r8411

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8411

  unfold Seg52.relationRow8412 at r8412

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8412

  unfold Seg52.relationRow8413 at r8413

  unfold Seg52.relationRow8414 at r8414

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8414

  unfold Seg52.relationRow8415 at r8415

  unfold Seg52.relationRow8416 at r8416

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8416

  unfold Seg52.relationRow8417 at r8417

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8417

  have hnextx : seg52BlindDeltaX228 rho =
      seg52BlindDeltaX227 rho + rho 52804 := by
    unfold seg52BlindDeltaX228 seg52BlindDeltaX227
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 78]

    ring

  have hnexty : seg52BlindDeltaY228 rho =
      seg52BlindDeltaY227 rho + rho 52805 := by
    unfold seg52BlindDeltaY228 seg52BlindDeltaY227
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 78]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 228
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX227 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY227 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX228 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY228 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY227 rho) (rho 52805)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 228)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (7217793937253800789741884765125212187620636552247818368741390785428178410341 : Seg52.F) (611552855140327603083208253242555566521751092399387731279429143038378337872 : Seg52.F)
    (7829346792394128392825093018367767754142387644647206100020819928466556748213 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (6608514003544936428128296391383222622263995074964421705274547728945744600374 : Seg52.F) (2494493880114136375937464094236986813929821556645170667056295195131356723997 : Seg52.F)
    (2070901315292787702406687565408067050291591758372033748537273467943474765058 : Seg52.F) (1599329139929239054501320484785808070818371908625462541568058585833275888966 : Seg52.F)
    (7832908894288042821165616685538990964854148242754676096655804312879030901169 : Seg52.F) (1226667812174569634506940173656334343755262782906245459193842670489230828700 : Seg52.F)
    (6845132609499131369747504453995738460557527426528601286367174870084133350075 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX227 rho) (seg52BlindDeltaY227 rho) (rho 51406)
    (rho 52798) (rho 52799) (rho 52800) (rho 52802)
    (rho 52801) (rho 52803) (rho 52804) (rho 52805) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 228)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L228]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX227 seg52BlindDeltaY227;
        first | linear_combination r8410 | linear_combination -r8410)
    (by unfold seg52BlindDeltaX227 seg52BlindDeltaY227;
        first | linear_combination r8411 | linear_combination -r8411)
    (by unfold seg52BlindDeltaX227 seg52BlindDeltaY227;
        first | linear_combination r8412 | linear_combination -r8412)
    (by first | linear_combination r8413 | linear_combination -r8413)
    (by unfold seg52BlindDeltaX227 seg52BlindDeltaY227;
        first | linear_combination r8414 | linear_combination -r8414)
    (by first | linear_combination r8415 | linear_combination -r8415)
    (by unfold seg52BlindDeltaX227; first | linear_combination r8416 | linear_combination -r8416)
    (by unfold seg52BlindDeltaY227; first | linear_combination r8417 | linear_combination -r8417)
    (by linear_combination r7017)

theorem seg52Blind_rows229 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7018 rho ∧ Seg52.relationRow8418 rho ∧ Seg52.relationRow8419 rho ∧ Seg52.relationRow8420 rho ∧ Seg52.relationRow8421 rho ∧ Seg52.relationRow8422 rho ∧ Seg52.relationRow8423 rho ∧ Seg52.relationRow8424 rho ∧ Seg52.relationRow8425 rho := by
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

    _, _, _, _, _, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7018, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8418, r8419, r8420, r8421, r8422, r8423, r8424, r8425, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7018, r8418, r8419, r8420, r8421, r8422, r8423, r8424, r8425⟩

theorem seg52Blind_rung229 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51407 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 229)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      229 (Bool.toZMod bit) (seg52BlindAccState rho 229)
      (seg52BlindAccState rho 230) := by
  obtain ⟨r7018, r8418, r8419, r8420, r8421, r8422, r8423, r8424, r8425⟩ := seg52Blind_rows229 rho h
  unfold Seg52.relationRow7018 at r7018

  unfold Seg52.relationRow8418 at r8418

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8418

  unfold Seg52.relationRow8419 at r8419

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8419

  unfold Seg52.relationRow8420 at r8420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8420

  unfold Seg52.relationRow8421 at r8421

  unfold Seg52.relationRow8422 at r8422

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8422

  unfold Seg52.relationRow8423 at r8423

  unfold Seg52.relationRow8424 at r8424

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8424

  unfold Seg52.relationRow8425 at r8425

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8425

  have hnextx : seg52BlindDeltaX229 rho =
      seg52BlindDeltaX228 rho + rho 52812 := by
    unfold seg52BlindDeltaX229 seg52BlindDeltaX228
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 79]

    ring

  have hnexty : seg52BlindDeltaY229 rho =
      seg52BlindDeltaY228 rho + rho 52813 := by
    unfold seg52BlindDeltaY229 seg52BlindDeltaY228
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 79]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 229
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX228 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY228 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX229 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY229 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY228 rho) (rho 52813)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 229)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1262916560049378410634649340024687678018494763055378467071091317309682769282 : Seg52.F) (4439089567212760500649554994617419808637872756754369376683914634620681888818 : Seg52.F)
    (5702006127262138911284204334642107486656367519809747843755005951930364658100 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (684324457497238755171635954129350070085453930296528200955383192234114522070 : Seg52.F) (6327656689886066240785449211006082544101674608080640733798216470321894989715 : Seg52.F)
    (3870954308191713971872500864422005677763758200325916030540011082079875431642 : Seg52.F) (1810151555994345118229717893349587519004634719777879465070827343583772775759 : Seg52.F)
    (4005372182215609923599269944164126722738026578399694451251318821296727350223 : Seg52.F) (7181545189378992013614175598756858853357404572098685360864142138607726469759 : Seg52.F)
    (6634310193434025306019107045431959012371264615376184362864406112333636463282 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX228 rho) (seg52BlindDeltaY228 rho) (rho 51407)
    (rho 52806) (rho 52807) (rho 52808) (rho 52810)
    (rho 52809) (rho 52811) (rho 52812) (rho 52813) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 229)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L229]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX228 seg52BlindDeltaY228;
        first | linear_combination r8418 | linear_combination -r8418)
    (by unfold seg52BlindDeltaX228 seg52BlindDeltaY228;
        first | linear_combination r8419 | linear_combination -r8419)
    (by unfold seg52BlindDeltaX228 seg52BlindDeltaY228;
        first | linear_combination r8420 | linear_combination -r8420)
    (by first | linear_combination r8421 | linear_combination -r8421)
    (by unfold seg52BlindDeltaX228 seg52BlindDeltaY228;
        first | linear_combination r8422 | linear_combination -r8422)
    (by first | linear_combination r8423 | linear_combination -r8423)
    (by unfold seg52BlindDeltaX228; first | linear_combination r8424 | linear_combination -r8424)
    (by unfold seg52BlindDeltaY228; first | linear_combination r8425 | linear_combination -r8425)
    (by linear_combination r7018)

theorem seg52Blind_rows230 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow7019 rho ∧ Seg52.relationRow8426 rho ∧ Seg52.relationRow8427 rho ∧ Seg52.relationRow8428 rho ∧ Seg52.relationRow8429 rho ∧ Seg52.relationRow8430 rho ∧ Seg52.relationRow8431 rho ∧ Seg52.relationRow8432 rho ∧ Seg52.relationRow8433 rho := by
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

    _, _, _, _, _, p105, _, _

  ⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7019, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationPart105 at p105

  rcases p105 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8426, r8427, r8428, r8429, r8430, r8431, r8432, r8433, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r7019, r8426, r8427, r8428, r8429, r8430, r8431, r8432, r8433⟩

theorem seg52Blind_rung230 (rho : Nat -> Seg52.F) (h : Seg52.relation rho)
    (bit : Bool) (hbitValue : rho 51408 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg52BlindAccState rho 230)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      230 (Bool.toZMod bit) (seg52BlindAccState rho 230)
      (seg52BlindAccState rho 231) := by
  obtain ⟨r7019, r8426, r8427, r8428, r8429, r8430, r8431, r8432, r8433⟩ := seg52Blind_rows230 rho h
  unfold Seg52.relationRow7019 at r7019

  unfold Seg52.relationRow8426 at r8426

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8426

  unfold Seg52.relationRow8427 at r8427

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8427

  unfold Seg52.relationRow8428 at r8428

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8428

  unfold Seg52.relationRow8429 at r8429

  unfold Seg52.relationRow8430 at r8430

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8430

  unfold Seg52.relationRow8431 at r8431

  unfold Seg52.relationRow8432 at r8432

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8432

  unfold Seg52.relationRow8433 at r8433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r8433

  have hnextx : seg52BlindDeltaX230 rho =
      seg52BlindDeltaX229 rho + rho 52820 := by
    unfold seg52BlindDeltaX230 seg52BlindDeltaX229
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52180 8 80]

    ring

  have hnexty : seg52BlindDeltaY230 rho =
      seg52BlindDeltaY229 rho + rho 52821 := by
    unfold seg52BlindDeltaY230 seg52BlindDeltaY229
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 52181 8 80]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 230
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX229 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY229 rho : Seg52.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) * rho 51178 + seg52BlindDeltaX230 rho : Seg52.F),
      ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178 + seg52BlindDeltaY230 rho : Seg52.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg52.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F) * rho 51178)
    (seg52BlindDeltaY229 rho) (rho 52821)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 230)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg52.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg52.F)
    (1754564508264316280080767253654471569266116149749282790523517573152094733235 : Seg52.F) (3255123647791336139979832684865989033507441408648469121457026773121774894719 : Seg52.F)
    (5009688156055652420060599938520460602773557558397751911980544346273869627954 : Seg52.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg52.F)
    (4375063643003305053442312238432707704433669407694920205066138913017602702375 : Seg52.F) (6827565584601986065097078658718696289843280211445254743478131538328482764782 : Seg52.F)
    (5611454971280825110232058586781909309252677113250095359038853620826121304010 : Seg52.F) (6438314879147747076871747575725727555874899418474158279920803968735411012147 : Seg52.F)
    (5189338101637034284268992253915557497868457926505594706478206682795634344322 : Seg52.F) (6689897241164054144168057685127074962109783185404781037411715882765314505806 : Seg52.F)
    (2006146870280623347377077363055818975500999916679905548014429487181998226894 : Seg52.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg52.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg52.F)
    (rho 51178) (seg52BlindDeltaX229 rho) (seg52BlindDeltaY229 rho) (rho 51408)
    (rho 52814) (rho 52815) (rho 52816) (rho 52818)
    (rho 52817) (rho 52819) (rho 52820) (rho 52821) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 230)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L230]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg52BlindDeltaX229 seg52BlindDeltaY229;
        first | linear_combination r8426 | linear_combination -r8426)
    (by unfold seg52BlindDeltaX229 seg52BlindDeltaY229;
        first | linear_combination r8427 | linear_combination -r8427)
    (by unfold seg52BlindDeltaX229 seg52BlindDeltaY229;
        first | linear_combination r8428 | linear_combination -r8428)
    (by first | linear_combination r8429 | linear_combination -r8429)
    (by unfold seg52BlindDeltaX229 seg52BlindDeltaY229;
        first | linear_combination r8430 | linear_combination -r8430)
    (by first | linear_combination r8431 | linear_combination -r8431)
    (by unfold seg52BlindDeltaX229; first | linear_combination r8432 | linear_combination -r8432)
    (by unfold seg52BlindDeltaY229; first | linear_combination r8433 | linear_combination -r8433)
    (by linear_combination r7019)

theorem seg52Blind_hstep_c22 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (51178 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 221 ≤ i → i < 231 →
      EdwardsBridge.onCurve (seg52BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg52BlindAccState rho i)
        (seg52BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg52Blind_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc
  · exact seg52Blind_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc
  · exact seg52Blind_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc
  · exact seg52Blind_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc
  · exact seg52Blind_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc
  · exact seg52Blind_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc
  · exact seg52Blind_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc
  · exact seg52Blind_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc
  · exact seg52Blind_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc
  · exact seg52Blind_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

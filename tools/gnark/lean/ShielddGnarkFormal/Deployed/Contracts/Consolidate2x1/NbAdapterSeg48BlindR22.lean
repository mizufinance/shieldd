import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Blind_rows221 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6370 rho ∧ Seg48.relationRow7714 rho ∧ Seg48.relationRow7715 rho ∧ Seg48.relationRow7716 rho ∧ Seg48.relationRow7717 rho ∧ Seg48.relationRow7718 rho ∧ Seg48.relationRow7719 rho ∧ Seg48.relationRow7720 rho ∧ Seg48.relationRow7721 rho := by
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

    _, _, _, _, _, _, p96, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6370, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7714, r7715, r7716, r7717, r7718, r7719, r7720, r7721, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6370, r7714, r7715, r7716, r7717, r7718, r7719, r7720, r7721⟩

theorem seg48Blind_rung221 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39127 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 221)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      221 (Bool.toZMod bit) (seg48BlindAccState rho 221)
      (seg48BlindAccState rho 222) := by
  obtain ⟨r6370, r7714, r7715, r7716, r7717, r7718, r7719, r7720, r7721⟩ := seg48Blind_rows221 rho h
  unfold Seg48.relationRow6370 at r6370

  unfold Seg48.relationRow7714 at r7714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7714

  unfold Seg48.relationRow7715 at r7715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7715

  unfold Seg48.relationRow7716 at r7716

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7716

  unfold Seg48.relationRow7717 at r7717

  unfold Seg48.relationRow7718 at r7718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7718

  unfold Seg48.relationRow7719 at r7719

  unfold Seg48.relationRow7720 at r7720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7720

  unfold Seg48.relationRow7721 at r7721

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7721

  have hnextx : seg48BlindDeltaX221 rho =
      seg48BlindDeltaX220 rho + rho 40476 := by
    unfold seg48BlindDeltaX221 seg48BlindDeltaX220
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 71]

    ring

  have hnexty : seg48BlindDeltaY221 rho =
      seg48BlindDeltaY220 rho + rho 40477 := by
    unfold seg48BlindDeltaY221 seg48BlindDeltaY220
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 71]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 221
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX220 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY220 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX221 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY221 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY220 rho) (rho 40477)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 221)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (3582457232854017490679727548806619789199351417472999200107726731446390762695 : Seg48.F) (8356398933712813133618965600787090502994906481482673616451228079613955108354 : Seg48.F)
    (3494394417138460200049868210812163760818358563801608988623721355142936632008 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4185009705009278583157337959757827265049367783660213600747228776622166843885 : Seg48.F) (383082562966876509052088454560345866870394795901995490069381434441366547319 : Seg48.F)
    (7058699996902104145726176427107042444173523936118927654194633626935732919530 : Seg48.F) (6728986854277284273646630166159785858660288012003642140720191996229406231791 : Seg48.F)
    (88062815715557290629859337994456028380992853671390211484005376303454130687 : Seg48.F) (4862004516574352933569097389974926742176547917681064627827506724471018476346 : Seg48.F)
    (1715474895151086150602194772621760672715611323150421687215041459688003007250 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX220 rho) (seg48BlindDeltaY220 rho) (rho 39127)
    (rho 40470) (rho 40471) (rho 40472) (rho 40474)
    (rho 40473) (rho 40475) (rho 40476) (rho 40477) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 221)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L221]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX220 seg48BlindDeltaY220;
        first | linear_combination r7714 | linear_combination -r7714)
    (by unfold seg48BlindDeltaX220 seg48BlindDeltaY220;
        first | linear_combination r7715 | linear_combination -r7715)
    (by unfold seg48BlindDeltaX220 seg48BlindDeltaY220;
        first | linear_combination r7716 | linear_combination -r7716)
    (by first | linear_combination r7717 | linear_combination -r7717)
    (by unfold seg48BlindDeltaX220 seg48BlindDeltaY220;
        first | linear_combination r7718 | linear_combination -r7718)
    (by first | linear_combination r7719 | linear_combination -r7719)
    (by unfold seg48BlindDeltaX220; first | linear_combination r7720 | linear_combination -r7720)
    (by unfold seg48BlindDeltaY220; first | linear_combination r7721 | linear_combination -r7721)
    (by linear_combination r6370)

theorem seg48Blind_rows222 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6371 rho ∧ Seg48.relationRow7722 rho ∧ Seg48.relationRow7723 rho ∧ Seg48.relationRow7724 rho ∧ Seg48.relationRow7725 rho ∧ Seg48.relationRow7726 rho ∧ Seg48.relationRow7727 rho ∧ Seg48.relationRow7728 rho ∧ Seg48.relationRow7729 rho := by
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

    _, _, _, _, _, _, p96, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6371, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7722, r7723, r7724, r7725, r7726, r7727, r7728, r7729, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6371, r7722, r7723, r7724, r7725, r7726, r7727, r7728, r7729⟩

theorem seg48Blind_rung222 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39128 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 222)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      222 (Bool.toZMod bit) (seg48BlindAccState rho 222)
      (seg48BlindAccState rho 223) := by
  obtain ⟨r6371, r7722, r7723, r7724, r7725, r7726, r7727, r7728, r7729⟩ := seg48Blind_rows222 rho h
  unfold Seg48.relationRow6371 at r6371

  unfold Seg48.relationRow7722 at r7722

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7722

  unfold Seg48.relationRow7723 at r7723

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7723

  unfold Seg48.relationRow7724 at r7724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7724

  unfold Seg48.relationRow7725 at r7725

  unfold Seg48.relationRow7726 at r7726

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7726

  unfold Seg48.relationRow7727 at r7727

  unfold Seg48.relationRow7728 at r7728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7728

  unfold Seg48.relationRow7729 at r7729

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7729

  have hnextx : seg48BlindDeltaX222 rho =
      seg48BlindDeltaX221 rho + rho 40484 := by
    unfold seg48BlindDeltaX222 seg48BlindDeltaX221
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 72]

    ring

  have hnexty : seg48BlindDeltaY222 rho =
      seg48BlindDeltaY221 rho + rho 40485 := by
    unfold seg48BlindDeltaY222 seg48BlindDeltaY221
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 72]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 222
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX221 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY221 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX222 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY222 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY221 rho) (rho 40485)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 222)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (587431020291212425077570287060209112092291997683260210283999568885891829628 : Seg48.F) (3186933932818472081082754308592615368266078739163828012042132765608240016162 : Seg48.F)
    (3774364953109684506160324595652824480358370736847088222326132334494131845790 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (1041016696261873307340336047327981763298628938291660533116945156646556318662 : Seg48.F) (1950914135566194575319471229970379663738043476462169302070774594291170094184 : Seg48.F)
    (3892941673995227343189094966822599319633698296099933602780283735295161868150 : Seg48.F) (8206664081642874400187193726097639596885188106632599162464539278848572535457 : Seg48.F)
    (5257527816609898343166070630188931163109820595990235815893100690309169222879 : Seg48.F) (7857030729137157999171254651721337419283607337470803617651233887031517409413 : Seg48.F)
    (237797667785496024061631212683906934490711228521464665470694177068836703584 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX221 rho) (seg48BlindDeltaY221 rho) (rho 39128)
    (rho 40478) (rho 40479) (rho 40480) (rho 40482)
    (rho 40481) (rho 40483) (rho 40484) (rho 40485) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 222)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L222]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX221 seg48BlindDeltaY221;
        first | linear_combination r7722 | linear_combination -r7722)
    (by unfold seg48BlindDeltaX221 seg48BlindDeltaY221;
        first | linear_combination r7723 | linear_combination -r7723)
    (by unfold seg48BlindDeltaX221 seg48BlindDeltaY221;
        first | linear_combination r7724 | linear_combination -r7724)
    (by first | linear_combination r7725 | linear_combination -r7725)
    (by unfold seg48BlindDeltaX221 seg48BlindDeltaY221;
        first | linear_combination r7726 | linear_combination -r7726)
    (by first | linear_combination r7727 | linear_combination -r7727)
    (by unfold seg48BlindDeltaX221; first | linear_combination r7728 | linear_combination -r7728)
    (by unfold seg48BlindDeltaY221; first | linear_combination r7729 | linear_combination -r7729)
    (by linear_combination r6371)

theorem seg48Blind_rows223 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6372 rho ∧ Seg48.relationRow7730 rho ∧ Seg48.relationRow7731 rho ∧ Seg48.relationRow7732 rho ∧ Seg48.relationRow7733 rho ∧ Seg48.relationRow7734 rho ∧ Seg48.relationRow7735 rho ∧ Seg48.relationRow7736 rho ∧ Seg48.relationRow7737 rho := by
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

    _, _, _, _, _, _, p96, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6372, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7730, r7731, r7732, r7733, r7734, r7735, r7736, r7737, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6372, r7730, r7731, r7732, r7733, r7734, r7735, r7736, r7737⟩

theorem seg48Blind_rung223 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39129 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 223)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      223 (Bool.toZMod bit) (seg48BlindAccState rho 223)
      (seg48BlindAccState rho 224) := by
  obtain ⟨r6372, r7730, r7731, r7732, r7733, r7734, r7735, r7736, r7737⟩ := seg48Blind_rows223 rho h
  unfold Seg48.relationRow6372 at r6372

  unfold Seg48.relationRow7730 at r7730

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7730

  unfold Seg48.relationRow7731 at r7731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7731

  unfold Seg48.relationRow7732 at r7732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7732

  unfold Seg48.relationRow7733 at r7733

  unfold Seg48.relationRow7734 at r7734

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7734

  unfold Seg48.relationRow7735 at r7735

  unfold Seg48.relationRow7736 at r7736

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7736

  unfold Seg48.relationRow7737 at r7737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7737

  have hnextx : seg48BlindDeltaX223 rho =
      seg48BlindDeltaX222 rho + rho 40492 := by
    unfold seg48BlindDeltaX223 seg48BlindDeltaX222
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 73]

    ring

  have hnexty : seg48BlindDeltaY223 rho =
      seg48BlindDeltaY222 rho + rho 40493 := by
    unfold seg48BlindDeltaY223 seg48BlindDeltaY222
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 73]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 223
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX222 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY222 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX223 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY223 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY222 rho) (rho 40493)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 223)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (6252774744021088771151931377995730287240547912466162259661321476502298112282 : Seg48.F) (772809274111116873408109393460791188669308610482743526629127229971911097569 : Seg48.F)
    (7025584018132205644560040771456521475909856522948905786290448706474209209851 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (3985374247453837473222794541343338310233095765846577436468927911938475780633 : Seg48.F) (7105142906426796296168390025664855125272204098034851028457940225008388755719 : Seg48.F)
    (6429624184377402250098413480349454538985920751972232079382271333906710152618 : Seg48.F) (1487172118229649689952765374861572725388206842740353873295223984256631187008 : Seg48.F)
    (7671652475317253550840715545320755342706590724671320301306106225945498141472 : Seg48.F) (2191687005407281653096893560785816244135351422687901568273911979415111126759 : Seg48.F)
    (6957289631198720734296059563919973805987692492413709954640009471660778052033 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX222 rho) (seg48BlindDeltaY222 rho) (rho 39129)
    (rho 40486) (rho 40487) (rho 40488) (rho 40490)
    (rho 40489) (rho 40491) (rho 40492) (rho 40493) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 223)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L223]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX222 seg48BlindDeltaY222;
        first | linear_combination r7730 | linear_combination -r7730)
    (by unfold seg48BlindDeltaX222 seg48BlindDeltaY222;
        first | linear_combination r7731 | linear_combination -r7731)
    (by unfold seg48BlindDeltaX222 seg48BlindDeltaY222;
        first | linear_combination r7732 | linear_combination -r7732)
    (by first | linear_combination r7733 | linear_combination -r7733)
    (by unfold seg48BlindDeltaX222 seg48BlindDeltaY222;
        first | linear_combination r7734 | linear_combination -r7734)
    (by first | linear_combination r7735 | linear_combination -r7735)
    (by unfold seg48BlindDeltaX222; first | linear_combination r7736 | linear_combination -r7736)
    (by unfold seg48BlindDeltaY222; first | linear_combination r7737 | linear_combination -r7737)
    (by linear_combination r6372)

theorem seg48Blind_rows224 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6373 rho ∧ Seg48.relationRow7738 rho ∧ Seg48.relationRow7739 rho ∧ Seg48.relationRow7740 rho ∧ Seg48.relationRow7741 rho ∧ Seg48.relationRow7742 rho ∧ Seg48.relationRow7743 rho ∧ Seg48.relationRow7744 rho ∧ Seg48.relationRow7745 rho := by
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

    _, _, _, _, _, _, p96, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6373, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7738, r7739, r7740, r7741, r7742, r7743, r7744, r7745, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6373, r7738, r7739, r7740, r7741, r7742, r7743, r7744, r7745⟩

theorem seg48Blind_rung224 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39130 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 224)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      224 (Bool.toZMod bit) (seg48BlindAccState rho 224)
      (seg48BlindAccState rho 225) := by
  obtain ⟨r6373, r7738, r7739, r7740, r7741, r7742, r7743, r7744, r7745⟩ := seg48Blind_rows224 rho h
  unfold Seg48.relationRow6373 at r6373

  unfold Seg48.relationRow7738 at r7738

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7738

  unfold Seg48.relationRow7739 at r7739

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7739

  unfold Seg48.relationRow7740 at r7740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7740

  unfold Seg48.relationRow7741 at r7741

  unfold Seg48.relationRow7742 at r7742

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7742

  unfold Seg48.relationRow7743 at r7743

  unfold Seg48.relationRow7744 at r7744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7744

  unfold Seg48.relationRow7745 at r7745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7745

  have hnextx : seg48BlindDeltaX224 rho =
      seg48BlindDeltaX223 rho + rho 40500 := by
    unfold seg48BlindDeltaX224 seg48BlindDeltaX223
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 74]

    ring

  have hnexty : seg48BlindDeltaY224 rho =
      seg48BlindDeltaY223 rho + rho 40501 := by
    unfold seg48BlindDeltaY224 seg48BlindDeltaY223
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 74]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 224
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX223 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY223 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX224 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY224 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY223 rho) (rho 40501)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 224)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (1150864079152338539263846845990030258145800544795680543046530314609120824927 : Seg48.F) (6971256099087244692275809914967681648836661854443374148096234117134425472605 : Seg48.F)
    (8122120178239583231539656760957711906982462399239054691142764431743546297532 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (8121534017638747712901180734970758415438419734352178356186262260998119810492 : Seg48.F) (4772544478899057561087517555422350775831763930266204989794514715128854340322 : Seg48.F)
    (1727421586306472614272207993773771346151534926016096070848824142586155885468 : Seg48.F) (3380996375578589786828362597009559611897641602946356887564983522646506006161 : Seg48.F)
    (1473205650341125731973015023813864882539237480710689679838999338782983766436 : Seg48.F) (7293597670276031884984978092791516273230098790358383284888703141308288414114 : Seg48.F)
    (5063465373849780637420462341771986919478257732207706940370249933270903232880 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX223 rho) (seg48BlindDeltaY223 rho) (rho 39130)
    (rho 40494) (rho 40495) (rho 40496) (rho 40498)
    (rho 40497) (rho 40499) (rho 40500) (rho 40501) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 224)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L224]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX223 seg48BlindDeltaY223;
        first | linear_combination r7738 | linear_combination -r7738)
    (by unfold seg48BlindDeltaX223 seg48BlindDeltaY223;
        first | linear_combination r7739 | linear_combination -r7739)
    (by unfold seg48BlindDeltaX223 seg48BlindDeltaY223;
        first | linear_combination r7740 | linear_combination -r7740)
    (by first | linear_combination r7741 | linear_combination -r7741)
    (by unfold seg48BlindDeltaX223 seg48BlindDeltaY223;
        first | linear_combination r7742 | linear_combination -r7742)
    (by first | linear_combination r7743 | linear_combination -r7743)
    (by unfold seg48BlindDeltaX223; first | linear_combination r7744 | linear_combination -r7744)
    (by unfold seg48BlindDeltaY223; first | linear_combination r7745 | linear_combination -r7745)
    (by linear_combination r6373)

theorem seg48Blind_rows225 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6374 rho ∧ Seg48.relationRow7746 rho ∧ Seg48.relationRow7747 rho ∧ Seg48.relationRow7748 rho ∧ Seg48.relationRow7749 rho ∧ Seg48.relationRow7750 rho ∧ Seg48.relationRow7751 rho ∧ Seg48.relationRow7752 rho ∧ Seg48.relationRow7753 rho := by
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

    _, _, _, _, _, _, p96, _, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6374, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7746, r7747, r7748, r7749, r7750, r7751, r7752, r7753, _, _, _, _, _, _⟩

  exact ⟨r6374, r7746, r7747, r7748, r7749, r7750, r7751, r7752, r7753⟩

theorem seg48Blind_rung225 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39131 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 225)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      225 (Bool.toZMod bit) (seg48BlindAccState rho 225)
      (seg48BlindAccState rho 226) := by
  obtain ⟨r6374, r7746, r7747, r7748, r7749, r7750, r7751, r7752, r7753⟩ := seg48Blind_rows225 rho h
  unfold Seg48.relationRow6374 at r6374

  unfold Seg48.relationRow7746 at r7746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7746

  unfold Seg48.relationRow7747 at r7747

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7747

  unfold Seg48.relationRow7748 at r7748

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7748

  unfold Seg48.relationRow7749 at r7749

  unfold Seg48.relationRow7750 at r7750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7750

  unfold Seg48.relationRow7751 at r7751

  unfold Seg48.relationRow7752 at r7752

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7752

  unfold Seg48.relationRow7753 at r7753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7753

  have hnextx : seg48BlindDeltaX225 rho =
      seg48BlindDeltaX224 rho + rho 40508 := by
    unfold seg48BlindDeltaX225 seg48BlindDeltaX224
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 75]

    ring

  have hnexty : seg48BlindDeltaY225 rho =
      seg48BlindDeltaY224 rho + rho 40509 := by
    unfold seg48BlindDeltaY225 seg48BlindDeltaY224
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 75]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 225
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX224 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY224 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX225 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY225 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY224 rho) (rho 40509)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 225)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (2477411039352224260586883854216779246546796701215891281646540553915667872452 : Seg48.F) (2931874370928210846062542283899266086203817363132369643143240489346137578087 : Seg48.F)
    (5409285410280435106649426138116045332750614064348260924789781043261805450539 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (7396561173192761342171703816622081539789750781429800259604856513236740885859 : Seg48.F) (1421462245074834074587288782787002326083756887145579104072002412561438665897 : Seg48.F)
    (1527964148890742347591961995730542078352246799645079595788984596084193822120 : Seg48.F) (919069346133274648680457014640972352594596254071944761169385492814603032499 : Seg48.F)
    (5512587378500159578186282654882280445172081972021694184791992966571271660954 : Seg48.F) (5967050710076146163661941084564767284829102633938172546288692902001741366589 : Seg48.F)
    (7525392403295095775568367924140574178781303081082119066765847963102806206542 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX224 rho) (seg48BlindDeltaY224 rho) (rho 39131)
    (rho 40502) (rho 40503) (rho 40504) (rho 40506)
    (rho 40505) (rho 40507) (rho 40508) (rho 40509) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 225)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L225]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX224 seg48BlindDeltaY224;
        first | linear_combination r7746 | linear_combination -r7746)
    (by unfold seg48BlindDeltaX224 seg48BlindDeltaY224;
        first | linear_combination r7747 | linear_combination -r7747)
    (by unfold seg48BlindDeltaX224 seg48BlindDeltaY224;
        first | linear_combination r7748 | linear_combination -r7748)
    (by first | linear_combination r7749 | linear_combination -r7749)
    (by unfold seg48BlindDeltaX224 seg48BlindDeltaY224;
        first | linear_combination r7750 | linear_combination -r7750)
    (by first | linear_combination r7751 | linear_combination -r7751)
    (by unfold seg48BlindDeltaX224; first | linear_combination r7752 | linear_combination -r7752)
    (by unfold seg48BlindDeltaY224; first | linear_combination r7753 | linear_combination -r7753)
    (by linear_combination r6374)

theorem seg48Blind_rows226 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6375 rho ∧ Seg48.relationRow7754 rho ∧ Seg48.relationRow7755 rho ∧ Seg48.relationRow7756 rho ∧ Seg48.relationRow7757 rho ∧ Seg48.relationRow7758 rho ∧ Seg48.relationRow7759 rho ∧ Seg48.relationRow7760 rho ∧ Seg48.relationRow7761 rho := by
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

    _, _, _, _, _, _, p96, p97, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6375, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart96 at p96

  rcases p96 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7754, r7755, r7756, r7757, r7758, r7759⟩

  unfold Seg48.relationPart97 at p97

  rcases p97 with ⟨r7760, r7761, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6375, r7754, r7755, r7756, r7757, r7758, r7759, r7760, r7761⟩

theorem seg48Blind_rung226 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39132 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 226)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      226 (Bool.toZMod bit) (seg48BlindAccState rho 226)
      (seg48BlindAccState rho 227) := by
  obtain ⟨r6375, r7754, r7755, r7756, r7757, r7758, r7759, r7760, r7761⟩ := seg48Blind_rows226 rho h
  unfold Seg48.relationRow6375 at r6375

  unfold Seg48.relationRow7754 at r7754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7754

  unfold Seg48.relationRow7755 at r7755

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7755

  unfold Seg48.relationRow7756 at r7756

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7756

  unfold Seg48.relationRow7757 at r7757

  unfold Seg48.relationRow7758 at r7758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7758

  unfold Seg48.relationRow7759 at r7759

  unfold Seg48.relationRow7760 at r7760

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7760

  unfold Seg48.relationRow7761 at r7761

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7761

  have hnextx : seg48BlindDeltaX226 rho =
      seg48BlindDeltaX225 rho + rho 40516 := by
    unfold seg48BlindDeltaX226 seg48BlindDeltaX225
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 76]

    ring

  have hnexty : seg48BlindDeltaY226 rho =
      seg48BlindDeltaY225 rho + rho 40517 := by
    unfold seg48BlindDeltaY226 seg48BlindDeltaY225
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 76]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 226
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX225 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY225 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX226 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY226 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY225 rho) (rho 40517)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 226)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (6644893773590675935356019136105454186295776267883026808891637538251579701530 : Seg48.F) (1358947139763598523979381175766945051572916828767179566627534868149475308058 : Seg48.F)
    (8003840913354274459335400311872399237868693096650206375519172406401055009588 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (1370899003643114756781611744109386553094662820774450405259377103704015469292 : Seg48.F) (8141275100190006914658353657066157249113390796072961797440698404213409452259 : Seg48.F)
    (6555184613843016807734723121542783358669618418595386565712857918117277017435 : Seg48.F) (5775208442131744476759876173776557979147560019705262464413809699231920785234 : Seg48.F)
    (7085514609664771900269443763014601479802982506386884261307698587767933930983 : Seg48.F) (1799567975837694488892805802676092345080123067271037019043595917665829537511 : Seg48.F)
    (2669253307296625947488948765004988552228339315448801363521423756685488453807 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX225 rho) (seg48BlindDeltaY225 rho) (rho 39132)
    (rho 40510) (rho 40511) (rho 40512) (rho 40514)
    (rho 40513) (rho 40515) (rho 40516) (rho 40517) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 226)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L226]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX225 seg48BlindDeltaY225;
        first | linear_combination r7754 | linear_combination -r7754)
    (by unfold seg48BlindDeltaX225 seg48BlindDeltaY225;
        first | linear_combination r7755 | linear_combination -r7755)
    (by unfold seg48BlindDeltaX225 seg48BlindDeltaY225;
        first | linear_combination r7756 | linear_combination -r7756)
    (by first | linear_combination r7757 | linear_combination -r7757)
    (by unfold seg48BlindDeltaX225 seg48BlindDeltaY225;
        first | linear_combination r7758 | linear_combination -r7758)
    (by first | linear_combination r7759 | linear_combination -r7759)
    (by unfold seg48BlindDeltaX225; first | linear_combination r7760 | linear_combination -r7760)
    (by unfold seg48BlindDeltaY225; first | linear_combination r7761 | linear_combination -r7761)
    (by linear_combination r6375)

theorem seg48Blind_rows227 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6376 rho ∧ Seg48.relationRow7762 rho ∧ Seg48.relationRow7763 rho ∧ Seg48.relationRow7764 rho ∧ Seg48.relationRow7765 rho ∧ Seg48.relationRow7766 rho ∧ Seg48.relationRow7767 rho ∧ Seg48.relationRow7768 rho ∧ Seg48.relationRow7769 rho := by
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

    _, _, _, _, _, _, _, p97, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart97 at p97

  rcases p97 with ⟨_, _, r7762, r7763, r7764, r7765, r7766, r7767, r7768, r7769, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6376, r7762, r7763, r7764, r7765, r7766, r7767, r7768, r7769⟩

theorem seg48Blind_rung227 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39133 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 227)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      227 (Bool.toZMod bit) (seg48BlindAccState rho 227)
      (seg48BlindAccState rho 228) := by
  obtain ⟨r6376, r7762, r7763, r7764, r7765, r7766, r7767, r7768, r7769⟩ := seg48Blind_rows227 rho h
  unfold Seg48.relationRow6376 at r6376

  unfold Seg48.relationRow7762 at r7762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7762

  unfold Seg48.relationRow7763 at r7763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7763

  unfold Seg48.relationRow7764 at r7764

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7764

  unfold Seg48.relationRow7765 at r7765

  unfold Seg48.relationRow7766 at r7766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7766

  unfold Seg48.relationRow7767 at r7767

  unfold Seg48.relationRow7768 at r7768

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7768

  unfold Seg48.relationRow7769 at r7769

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7769

  have hnextx : seg48BlindDeltaX227 rho =
      seg48BlindDeltaX226 rho + rho 40524 := by
    unfold seg48BlindDeltaX227 seg48BlindDeltaX226
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 77]

    ring

  have hnexty : seg48BlindDeltaY227 rho =
      seg48BlindDeltaY226 rho + rho 40525 := by
    unfold seg48BlindDeltaY227 seg48BlindDeltaY226
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 77]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 227
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX226 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY226 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX227 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY227 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY226 rho) (rho 40525)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 227)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (5334004567915182446805514930710721924036148541606086840559039522898988352764 : Seg48.F) (1991033993335388628820338045395499282699371769765454452129987432965487389246 : Seg48.F)
    (7325038561250571075625852976106221206735520311371541292689026955864475742010 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (2456928273209305601077878727342202695161789831744454394805814375542024714974 : Seg48.F) (225960549042405015589554413610048305587383928935673200746613718328758695144 : Seg48.F)
    (2377565731515325974346402149423536618830307292694298078726633428379148686201 : Seg48.F) (6495049385092628867406352063107359223604318250857446602973354876338325305798 : Seg48.F)
    (6453427756092981795428486893386047248676527565388609375805246022951921849795 : Seg48.F) (3110457181513187977443310008070824607339750793547976987376193933018420886277 : Seg48.F)
    (1949412364335741556842472875674187307771581084296617224961878579579083933243 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX226 rho) (seg48BlindDeltaY226 rho) (rho 39133)
    (rho 40518) (rho 40519) (rho 40520) (rho 40522)
    (rho 40521) (rho 40523) (rho 40524) (rho 40525) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 227)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L227]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX226 seg48BlindDeltaY226;
        first | linear_combination r7762 | linear_combination -r7762)
    (by unfold seg48BlindDeltaX226 seg48BlindDeltaY226;
        first | linear_combination r7763 | linear_combination -r7763)
    (by unfold seg48BlindDeltaX226 seg48BlindDeltaY226;
        first | linear_combination r7764 | linear_combination -r7764)
    (by first | linear_combination r7765 | linear_combination -r7765)
    (by unfold seg48BlindDeltaX226 seg48BlindDeltaY226;
        first | linear_combination r7766 | linear_combination -r7766)
    (by first | linear_combination r7767 | linear_combination -r7767)
    (by unfold seg48BlindDeltaX226; first | linear_combination r7768 | linear_combination -r7768)
    (by unfold seg48BlindDeltaY226; first | linear_combination r7769 | linear_combination -r7769)
    (by linear_combination r6376)

theorem seg48Blind_rows228 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6377 rho ∧ Seg48.relationRow7770 rho ∧ Seg48.relationRow7771 rho ∧ Seg48.relationRow7772 rho ∧ Seg48.relationRow7773 rho ∧ Seg48.relationRow7774 rho ∧ Seg48.relationRow7775 rho ∧ Seg48.relationRow7776 rho ∧ Seg48.relationRow7777 rho := by
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

    _, _, _, _, _, _, _, p97, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6377, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, r7770, r7771, r7772, r7773, r7774, r7775, r7776, r7777, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6377, r7770, r7771, r7772, r7773, r7774, r7775, r7776, r7777⟩

theorem seg48Blind_rung228 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39134 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 228)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      228 (Bool.toZMod bit) (seg48BlindAccState rho 228)
      (seg48BlindAccState rho 229) := by
  obtain ⟨r6377, r7770, r7771, r7772, r7773, r7774, r7775, r7776, r7777⟩ := seg48Blind_rows228 rho h
  unfold Seg48.relationRow6377 at r6377

  unfold Seg48.relationRow7770 at r7770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7770

  unfold Seg48.relationRow7771 at r7771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7771

  unfold Seg48.relationRow7772 at r7772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7772

  unfold Seg48.relationRow7773 at r7773

  unfold Seg48.relationRow7774 at r7774

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7774

  unfold Seg48.relationRow7775 at r7775

  unfold Seg48.relationRow7776 at r7776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7776

  unfold Seg48.relationRow7777 at r7777

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7777

  have hnextx : seg48BlindDeltaX228 rho =
      seg48BlindDeltaX227 rho + rho 40532 := by
    unfold seg48BlindDeltaX228 seg48BlindDeltaX227
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 78]

    ring

  have hnexty : seg48BlindDeltaY228 rho =
      seg48BlindDeltaY227 rho + rho 40533 := by
    unfold seg48BlindDeltaY228 seg48BlindDeltaY227
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 78]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 228
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX227 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY227 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX228 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY228 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY227 rho) (rho 40533)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 228)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (7217793937253800789741884765125212187620636552247818368741390785428178410341 : Seg48.F) (611552855140327603083208253242555566521751092399387731279429143038378337872 : Seg48.F)
    (7829346792394128392825093018367767754142387644647206100020819928466556748213 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (6608514003544936428128296391383222622263995074964421705274547728945744600374 : Seg48.F) (2494493880114136375937464094236986813929821556645170667056295195131356723997 : Seg48.F)
    (2070901315292787702406687565408067050291591758372033748537273467943474765058 : Seg48.F) (1599329139929239054501320484785808070818371908625462541568058585833275888966 : Seg48.F)
    (7832908894288042821165616685538990964854148242754676096655804312879030901169 : Seg48.F) (1226667812174569634506940173656334343755262782906245459193842670489230828700 : Seg48.F)
    (6845132609499131369747504453995738460557527426528601286367174870084133350075 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX227 rho) (seg48BlindDeltaY227 rho) (rho 39134)
    (rho 40526) (rho 40527) (rho 40528) (rho 40530)
    (rho 40529) (rho 40531) (rho 40532) (rho 40533) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 228)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L228]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX227 seg48BlindDeltaY227;
        first | linear_combination r7770 | linear_combination -r7770)
    (by unfold seg48BlindDeltaX227 seg48BlindDeltaY227;
        first | linear_combination r7771 | linear_combination -r7771)
    (by unfold seg48BlindDeltaX227 seg48BlindDeltaY227;
        first | linear_combination r7772 | linear_combination -r7772)
    (by first | linear_combination r7773 | linear_combination -r7773)
    (by unfold seg48BlindDeltaX227 seg48BlindDeltaY227;
        first | linear_combination r7774 | linear_combination -r7774)
    (by first | linear_combination r7775 | linear_combination -r7775)
    (by unfold seg48BlindDeltaX227; first | linear_combination r7776 | linear_combination -r7776)
    (by unfold seg48BlindDeltaY227; first | linear_combination r7777 | linear_combination -r7777)
    (by linear_combination r6377)

theorem seg48Blind_rows229 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6378 rho ∧ Seg48.relationRow7778 rho ∧ Seg48.relationRow7779 rho ∧ Seg48.relationRow7780 rho ∧ Seg48.relationRow7781 rho ∧ Seg48.relationRow7782 rho ∧ Seg48.relationRow7783 rho ∧ Seg48.relationRow7784 rho ∧ Seg48.relationRow7785 rho := by
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

    _, _, _, _, _, _, _, p97, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6378, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7778, r7779, r7780, r7781, r7782, r7783, r7784, r7785, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6378, r7778, r7779, r7780, r7781, r7782, r7783, r7784, r7785⟩

theorem seg48Blind_rung229 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39135 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 229)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      229 (Bool.toZMod bit) (seg48BlindAccState rho 229)
      (seg48BlindAccState rho 230) := by
  obtain ⟨r6378, r7778, r7779, r7780, r7781, r7782, r7783, r7784, r7785⟩ := seg48Blind_rows229 rho h
  unfold Seg48.relationRow6378 at r6378

  unfold Seg48.relationRow7778 at r7778

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7778

  unfold Seg48.relationRow7779 at r7779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7779

  unfold Seg48.relationRow7780 at r7780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7780

  unfold Seg48.relationRow7781 at r7781

  unfold Seg48.relationRow7782 at r7782

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7782

  unfold Seg48.relationRow7783 at r7783

  unfold Seg48.relationRow7784 at r7784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7784

  unfold Seg48.relationRow7785 at r7785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7785

  have hnextx : seg48BlindDeltaX229 rho =
      seg48BlindDeltaX228 rho + rho 40540 := by
    unfold seg48BlindDeltaX229 seg48BlindDeltaX228
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 79]

    ring

  have hnexty : seg48BlindDeltaY229 rho =
      seg48BlindDeltaY228 rho + rho 40541 := by
    unfold seg48BlindDeltaY229 seg48BlindDeltaY228
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 79]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 229
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX228 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY228 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX229 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY229 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY228 rho) (rho 40541)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 229)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (1262916560049378410634649340024687678018494763055378467071091317309682769282 : Seg48.F) (4439089567212760500649554994617419808637872756754369376683914634620681888818 : Seg48.F)
    (5702006127262138911284204334642107486656367519809747843755005951930364658100 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (684324457497238755171635954129350070085453930296528200955383192234114522070 : Seg48.F) (6327656689886066240785449211006082544101674608080640733798216470321894989715 : Seg48.F)
    (3870954308191713971872500864422005677763758200325916030540011082079875431642 : Seg48.F) (1810151555994345118229717893349587519004634719777879465070827343583772775759 : Seg48.F)
    (4005372182215609923599269944164126722738026578399694451251318821296727350223 : Seg48.F) (7181545189378992013614175598756858853357404572098685360864142138607726469759 : Seg48.F)
    (6634310193434025306019107045431959012371264615376184362864406112333636463282 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX228 rho) (seg48BlindDeltaY228 rho) (rho 39135)
    (rho 40534) (rho 40535) (rho 40536) (rho 40538)
    (rho 40537) (rho 40539) (rho 40540) (rho 40541) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 229)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L229]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX228 seg48BlindDeltaY228;
        first | linear_combination r7778 | linear_combination -r7778)
    (by unfold seg48BlindDeltaX228 seg48BlindDeltaY228;
        first | linear_combination r7779 | linear_combination -r7779)
    (by unfold seg48BlindDeltaX228 seg48BlindDeltaY228;
        first | linear_combination r7780 | linear_combination -r7780)
    (by first | linear_combination r7781 | linear_combination -r7781)
    (by unfold seg48BlindDeltaX228 seg48BlindDeltaY228;
        first | linear_combination r7782 | linear_combination -r7782)
    (by first | linear_combination r7783 | linear_combination -r7783)
    (by unfold seg48BlindDeltaX228; first | linear_combination r7784 | linear_combination -r7784)
    (by unfold seg48BlindDeltaY228; first | linear_combination r7785 | linear_combination -r7785)
    (by linear_combination r6378)

theorem seg48Blind_rows230 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6379 rho ∧ Seg48.relationRow7786 rho ∧ Seg48.relationRow7787 rho ∧ Seg48.relationRow7788 rho ∧ Seg48.relationRow7789 rho ∧ Seg48.relationRow7790 rho ∧ Seg48.relationRow7791 rho ∧ Seg48.relationRow7792 rho ∧ Seg48.relationRow7793 rho := by
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

    _, _, _, _, _, _, _, p97, _, _

  ⟩

  unfold Seg48.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6379, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg48.relationPart97 at p97

  rcases p97 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7786, r7787, r7788, r7789, r7790, r7791, r7792, r7793, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6379, r7786, r7787, r7788, r7789, r7790, r7791, r7792, r7793⟩

theorem seg48Blind_rung230 (rho : Nat -> Seg48.F) (h : Seg48.relation rho)
    (bit : Bool) (hbitValue : rho 39136 = Bool.toZMod bit)
    (hacc : EdwardsBridge.onCurve (seg48BlindAccState rho 230)) :
    Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel
      230 (Bool.toZMod bit) (seg48BlindAccState rho 230)
      (seg48BlindAccState rho 231) := by
  obtain ⟨r6379, r7786, r7787, r7788, r7789, r7790, r7791, r7792, r7793⟩ := seg48Blind_rows230 rho h
  unfold Seg48.relationRow6379 at r6379

  unfold Seg48.relationRow7786 at r7786

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7786

  unfold Seg48.relationRow7787 at r7787

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7787

  unfold Seg48.relationRow7788 at r7788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7788

  unfold Seg48.relationRow7789 at r7789

  unfold Seg48.relationRow7790 at r7790

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7790

  unfold Seg48.relationRow7791 at r7791

  unfold Seg48.relationRow7792 at r7792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7792

  unfold Seg48.relationRow7793 at r7793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r7793

  have hnextx : seg48BlindDeltaX230 rho =
      seg48BlindDeltaX229 rho + rho 40548 := by
    unfold seg48BlindDeltaX230 seg48BlindDeltaX229
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39908 8 80]

    ring

  have hnexty : seg48BlindDeltaY230 rho =
      seg48BlindDeltaY229 rho + rho 40549 := by
    unfold seg48BlindDeltaY230 seg48BlindDeltaY229
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 39909 8 80]

    ring

  change Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel 230
    (Bool.toZMod bit) ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX229 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY229 rho : Seg48.F)⟩
    ⟨((4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) * rho 38906 + seg48BlindDeltaX230 rho : Seg48.F),
      ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906 + seg48BlindDeltaY230 rho : Seg48.F)⟩
  rw [hnextx, hnexty, ← hbitValue]
  rw [← add_assoc ((1 : Seg48.F) + (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F) * rho 38906)
    (seg48BlindDeltaY229 rho) (rho 40549)]
  exact Shieldd.GnarkFormal.RvkFixedSplitRung.splitRung_stepRel
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb 230)
    (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg48.F) (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg48.F)
    (1754564508264316280080767253654471569266116149749282790523517573152094733235 : Seg48.F) (3255123647791336139979832684865989033507441408648469121457026773121774894719 : Seg48.F)
    (5009688156055652420060599938520460602773557558397751911980544346273869627954 : Seg48.F) (554556695789719013642702519139470527066643240247620509116776151269737032555 : Seg48.F)
    (4375063643003305053442312238432707704433669407694920205066138913017602702375 : Seg48.F) (6827565584601986065097078658718696289843280211445254743478131538328482764782 : Seg48.F)
    (5611454971280825110232058586781909309252677113250095359038853620826121304010 : Seg48.F) (6438314879147747076871747575725727555874899418474158279920803968735411012147 : Seg48.F)
    (5189338101637034284268992253915557497868457926505594706478206682795634344322 : Seg48.F) (6689897241164054144168057685127074962109783185404781037411715882765314505806 : Seg48.F)
    (2006146870280623347377077363055818975500999916679905548014429487181998226894 : Seg48.F) (3782780146720179662705280233507301717115018348286297112601203304873130087822 : Seg48.F) (4107124906918471747900842186134774287194237746620146206217253999774542118664 : Seg48.F)
    (rho 38906) (seg48BlindDeltaX229 rho) (seg48BlindDeltaY229 rho) (rho 39136)
    (rho 40542) (rho 40543) (rho 40544) (rho 40546)
    (rho 40545) (rho 40547) (rho 40548) (rho 40549) hacc
    (Shieldd.GnarkFormal.Deployed.NetBalance.Cb_onCurve 230)
    (by rw [Shieldd.GnarkFormal.NbFixedBaseLiteral.C_eq_L230]; rfl)
    (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide)
    (by unfold seg48BlindDeltaX229 seg48BlindDeltaY229;
        first | linear_combination r7786 | linear_combination -r7786)
    (by unfold seg48BlindDeltaX229 seg48BlindDeltaY229;
        first | linear_combination r7787 | linear_combination -r7787)
    (by unfold seg48BlindDeltaX229 seg48BlindDeltaY229;
        first | linear_combination r7788 | linear_combination -r7788)
    (by first | linear_combination r7789 | linear_combination -r7789)
    (by unfold seg48BlindDeltaX229 seg48BlindDeltaY229;
        first | linear_combination r7790 | linear_combination -r7790)
    (by first | linear_combination r7791 | linear_combination -r7791)
    (by unfold seg48BlindDeltaX229; first | linear_combination r7792 | linear_combination -r7792)
    (by unfold seg48BlindDeltaY229; first | linear_combination r7793 | linear_combination -r7793)
    (by linear_combination r6379)

theorem seg48Blind_hstep_c22 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (38906 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 221 ≤ i → i < 231 →
      EdwardsBridge.onCurve (seg48BlindAccState rho i) →
      Shieldd.GnarkFormal.Deployed.NetBalance.NbFixedStepRel i
        (Bool.toZMod bits[i]!) (seg48BlindAccState rho i)
        (seg48BlindAccState rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg48Blind_rung221 rho h bits[221]! (hbitAt 221 (by omega)) hacc
  · exact seg48Blind_rung222 rho h bits[222]! (hbitAt 222 (by omega)) hacc
  · exact seg48Blind_rung223 rho h bits[223]! (hbitAt 223 (by omega)) hacc
  · exact seg48Blind_rung224 rho h bits[224]! (hbitAt 224 (by omega)) hacc
  · exact seg48Blind_rung225 rho h bits[225]! (hbitAt 225 (by omega)) hacc
  · exact seg48Blind_rung226 rho h bits[226]! (hbitAt 226 (by omega)) hacc
  · exact seg48Blind_rung227 rho h bits[227]! (hbitAt 227 (by omega)) hacc
  · exact seg48Blind_rung228 rho h bits[228]! (hbitAt 228 (by omega)) hacc
  · exact seg48Blind_rung229 rho h bits[229]! (hbitAt 229 (by omega)) hacc
  · exact seg48Blind_rung230 rho h bits[230]! (hbitAt 230 (by omega)) hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
